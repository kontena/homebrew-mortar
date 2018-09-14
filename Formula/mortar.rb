class Mortar < Formula
  desc "Kubernetes manifest shooter"
  homepage "https://github.com/kontena/mortar"
  head "https://github.com/kontena/mortar.git"

  depends_on "ruby"

  stable do
  end

  def install
    ENV["GEM_HOME"] = libexec

    system "gem", "build", "--norc", "kontena-mortar.gemspec"

    if build.head? || build.devel?
      system "gem", "install", Dir["kontena-mortar-*.gem"].first,
             "--no-document", "--norc", "--install-dir", libexec
    else
      resources.each do |r|
        r.verify_download_integrity(r.fetch)
        system "gem", "install", r.cached_download, "--ignore-dependencies",
               "--no-document", "--norc", "--install-dir", libexec
      end

      system "gem", "install", "--ignore-dependencies", "--norc",
             "--no-document", "kontena-mortar-#{version}.gem"
    end

    bin.env_script_all_files(libexec/"bin", :GEM_HOME => ENV["GEM_HOME"])

    env = { :GEM_PATH => libexec }

    (bin/"mortar").write_env_script(libexec/"bin/mortar", env)

    bash_completion.install "opt/bash-completion.bash" => "kontena"
    zsh_completion.install "opt/bash-completion.bash" => "_kontena"
  end

  test do
    assert_match "Options:", shell_output("#{bin}/mortar fire --help")
  end
end
