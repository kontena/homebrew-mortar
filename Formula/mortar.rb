class Mortar < Formula
  desc "Kubernetes manifest shooter"
  homepage "https://github.com/kontena/mortar"
  head "https://github.com/kontena/mortar.git"

  depends_on "ruby"

  stable do
    url "https://github.com/kontena/mortar.git",
    :tag => "v0.1.0",
    :revision => "6fd4aa7367aa9dc629b8f6a6991081e94397aab6"

    resource "clamp" do
      url "https://rubygems.org/gems/clamp-1.3.0.gem"
      sha256 "1c466e93c14ed78078a428990f113b30f256189ec76f682f759e5aa2a181acfb"
    end

    resource "concurrent-ruby" do
      url "https://rubygems.org/gems/concurrent-ruby-1.0.5.gem"
      sha256 "8ee1206d0145a51f9ebdf735e4b5d6a957e085323b9db32e9b04f557dcd774a0"
    end

    resource "deep_merge" do
      url "https://rubygems.org/gems/deep_merge-1.2.1.gem"
      sha256 "4b57776cf10d241dfccaf8912d8152bf330fc5acd0e6bafc6c3df47f388b77e0"
    end

    resource "dry-configurable" do
      url "https://rubygems.org/gems/dry-configurable-0.7.0.gem"
      sha256 "660bbb40b1faba701bca17375c17cbef84310ac0bc2163a6e936394efb86bd98"
    end

    resource "dry-container" do
      url "https://rubygems.org/gems/dry-container-0.6.0.gem"
      sha256 "9672f9eec9fa116212f60a2645e59a56761418dbc87f5bf915b0e51629c0a93c"
    end

    resource "dry-core" do
      url "https://rubygems.org/gems/dry-core-0.4.7.gem"
      sha256 "92815b6e05aa0666cab39d1ae03b97653b0e17a9f5b96d5ffd218cf46e59ef8e"
    end

    resource "dry-equalizer" do
      url "https://rubygems.org/gems/dry-equalizer-0.2.1.gem"
      sha256 "41af1919475ff9ff0453efb2e05c9d33dcfc5f7bced1d41c1dce6a8273439e84"
    end

    resource "dry-inflector" do
      url "https://rubygems.org/gems/dry-inflector-0.1.2.gem"
      sha256 "121ffcf8c4d4b5daa421a2ae9507aa92ebf085ebf7b4be3fcba03bebd499d14a"
    end

    resource "dry-logic" do
      url "https://rubygems.org/gems/dry-logic-0.4.2.gem"
      sha256 "50720a497a07fc28ccca92b0d392ef793cfaca8c6c7fcdfb9b7c86df8610dfe4"
    end

    resource "dry-struct" do
      url "https://rubygems.org/gems/dry-struct-0.5.1.gem"
      sha256 "5a1bf93a057e7fd50e1db44069fe0baff75652aeb70be1171a7724d2cacb787d"
    end

    resource "dry-types" do
      url "https://rubygems.org/gems/dry-types-0.13.2.gem"
      sha256 "f24eb51982ea56edf9a7e224bf30a7f91ba72c8971bfe88163eea134a3995d68"
    end

    resource "excon" do
      url "https://rubygems.org/gems/excon-0.62.0.gem"
      sha256 "624dfbd6659dfdbefd213019d94598c4d47a713936819b6bb729303412e08996"
    end

    resource "hashdiff" do
      url "https://rubygems.org/gems/hashdiff-0.3.7.gem"
      sha256 "e94a08689f724a571556b78d5ca35214033d3961972d58c4611245c4b3a0457a"
    end

    resource "ice_nine" do
      url "https://rubygems.org/gems/ice_nine-0.11.2.gem"
      sha256 "5d506a7d2723d5592dc121b9928e4931742730131f22a1a37649df1c1e2e63db"
    end

    resource "k8s-client" do
      url "https://rubygems.org/gems/k8s-client-0.4.2.gem"
      sha256 "e9d90c1aec1998f94d5753170fcf151aa6985f4041c9e4a7b0f401a548a35622"
    end

    resource "recursive-open-struct" do
      url "https://rubygems.org/gems/recursive-open-struct-1.1.0.gem"
      sha256 "6c5029e9d7d8b2b295bce33089b4530992d534890b5c737ccfbc16575ff4cc71"
    end

    resource "rouge" do
      url "https://rubygems.org/gems/rouge-3.2.1.gem"
      sha256 "4e988e00c9f10250aaf794e61ff743d23356a38a8f1ed1448f3cd8ca857de940"
    end
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

    if build.head? || build.devel? # Should be removed once 0.2 is out
      bash_completion.install "opt/bash-completion.sh" => "mortar.bash"
      zsh_completion.install_symlink bash_completion/"mortar.bash" => "_mortar"
    end
  end

  test do
    assert_match "Options:", shell_output("#{bin}/mortar --help")
  end
end
