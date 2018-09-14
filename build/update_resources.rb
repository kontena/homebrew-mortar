#!/usr/bin/env ruby

require 'digest/sha2'

tag = ARGV.first.to_s
abort "Need the version tag as first argument" unless tag.match?(/^v\d+\.\d+\.\d+/)

gems = {}

Dir.chdir('..') if Dir.pwd.end_with?('build')

Dir['mortar/vendor/cache/*.gem'].sort_by { |f| File.basename(f) }.each do |gemfile|
  puts gemfile
  next if gemfile.end_with?('.')
  gem_name = gemfile[/.*\/(.+?)\-\d+\.\d+\..+?\.gem/, 1]
  gem_version = gemfile[/\-(\d+\.\d+\..+?)\.gem/, 1]
  sha = Digest::SHA2.new(256).hexdigest File.binread(gemfile)
  gems[gem_name] = { version: gem_version, sha: sha }
end

formula = File.read('Formula/mortar.rb')
revision = `cd mortar && git rev-list -n 1 #{tag}`.strip

new_formula = formula.gsub(/^  stable do$(.+?)^  end$/m) do |stable|
  out = "  stable do\n"

  out << '    url "https://github.com/kontena/mortar.git",' << "\n"
  out << '    :tag => "%s",' % tag
  out << "\n"
  out << '    :revision => "%s"' % revision
  out << "\n\n"

  gems.each do |gem_name, data|
    out << '    resource "%s" do' % gem_name
    out << "\n"

    url = 'https://rubygems.org/gems/%s-%s.gem' % [gem_name, data[:version]]
    out << '      url "%s"' % url
    out << "\n"

    out << '      sha256 "%s"' % data[:sha]
    out << "\n"
    out << "    end\n"

    unless gem_name == gems.keys.last
      out << "\n"
    end
  end
  out << "  end\n"
  out
end

puts new_formula
