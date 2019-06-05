class Mortar < Formula
  desc "Kubernetes manifest shooter"
  homepage "https://github.com/kontena/mortar"
  head "https://github.com/kontena/mortar.git"

  depends_on "ruby"

  stable do
    url "https://github.com/kontena/mortar.git",
    :tag => "v0.4.0",
    :revision => "6e7101d874d717328c0e99a5b90c59dcc62e6a0d"

    resource "clamp" do
      url "https://rubygems.org/gems/clamp-1.3.0.gem"
      sha256 "1c466e93c14ed78078a428990f113b30f256189ec76f682f759e5aa2a181acfb"
    end

    resource "concurrent-ruby" do
      url "https://rubygems.org/gems/concurrent-ruby-1.1.5.gem"
      sha256 "5611d14d8699996b17f18e704f4257b73349efa2d9a75fee6566a0a387c807f4"
    end

    resource "deep_merge" do
      url "https://rubygems.org/gems/deep_merge-1.2.1.gem"
      sha256 "4b57776cf10d241dfccaf8912d8152bf330fc5acd0e6bafc6c3df47f388b77e0"
    end

    resource "dry-configurable" do
      url "https://rubygems.org/gems/dry-configurable-0.8.3.gem"
      sha256 "ea61ab71b293265c0b024094db97f3b0f24741f14019ab22ec7de44a00832215"
    end

    resource "dry-container" do
      url "https://rubygems.org/gems/dry-container-0.7.0.gem"
      sha256 "5a78bb4cb899792dc5f0f4342d1b8385733f5d18037870773fcde29485bfc59a"
    end

    resource "dry-core" do
      url "https://rubygems.org/gems/dry-core-0.4.7.gem"
      sha256 "92815b6e05aa0666cab39d1ae03b97653b0e17a9f5b96d5ffd218cf46e59ef8e"
    end

    resource "dry-equalizer" do
      url "https://rubygems.org/gems/dry-equalizer-0.2.2.gem"
      sha256 "beba0376a1490b0db378db249334fa95c809b67ae6e41e4036a42d647611fb77"
    end

    resource "dry-inflector" do
      url "https://rubygems.org/gems/dry-inflector-0.1.2.gem"
      sha256 "121ffcf8c4d4b5daa421a2ae9507aa92ebf085ebf7b4be3fcba03bebd499d14a"
    end

    resource "dry-logic" do
      url "https://rubygems.org/gems/dry-logic-0.6.1.gem"
      sha256 "d17c56a85d938aa083322fb0ff4d87b5400fd24b0b463b275c124fe7d064213a"
    end

    resource "dry-struct" do
      url "https://rubygems.org/gems/dry-struct-0.5.1.gem"
      sha256 "5a1bf93a057e7fd50e1db44069fe0baff75652aeb70be1171a7724d2cacb787d"
    end

    resource "dry-types" do
      url "https://rubygems.org/gems/dry-types-0.13.4.gem"
      sha256 "ebf60964d7fe59b0f959c09dc6088d40464d2f39372861f241e76774c1ed34c4"
    end

    resource "equatable" do
      url "https://rubygems.org/gems/equatable-0.5.0.gem"
      sha256 "fdc8669f9bdc993be5cb6c08ec86343a7e87756e33c68ff5f63dfaa9e44f55ea"
    end

    resource "excon" do
      url "https://rubygems.org/gems/excon-0.62.0.gem"
      sha256 "624dfbd6659dfdbefd213019d94598c4d47a713936819b6bb729303412e08996"
    end

    resource "hashdiff" do
      url "https://rubygems.org/gems/hashdiff-0.3.9.gem"
      sha256 "9d788399acc8e0a9937c9647f1c099f1c44e42e92718cd3f486c44eb542251e2"
    end

    resource "ice_nine" do
      url "https://rubygems.org/gems/ice_nine-0.11.2.gem"
      sha256 "5d506a7d2723d5592dc121b9928e4931742730131f22a1a37649df1c1e2e63db"
    end

    resource "jsonpath" do
      url "https://rubygems.org/gems/jsonpath-0.9.9.gem"
      sha256 "f79db515b3d0987d27c2e7038114e0cdacc18e1bc647014a636ce97fe82a35fe"
    end

    resource "k8s-client" do
      url "https://rubygems.org/gems/k8s-client-0.10.1.gem"
      sha256 "b5683502ad22e2bb762586dc9444024319ec58cb028378993cc8bd12a4264ea6"
    end

    resource "multi_json" do
      url "https://rubygems.org/gems/multi_json-1.13.1.gem"
      sha256 "db8613c039b9501e6b2fb85efe4feabb02f55c3365bae52bba35381b89c780e6"
    end

    resource "necromancer" do
      url "https://rubygems.org/gems/necromancer-0.4.0.gem"
      sha256 "7fab7bc465a634365d354341a0f7a57a6928b7b06777442c3b377fb36783366d"
    end

    resource "pastel" do
      url "https://rubygems.org/gems/pastel-0.7.2.gem"
      sha256 "e1d21dd8fb965e5052d1b16164a777fc450c6e187bf199f833a9de3f5303c3f9"
    end

    resource "recursive-open-struct" do
      url "https://rubygems.org/gems/recursive-open-struct-1.1.0.gem"
      sha256 "6c5029e9d7d8b2b295bce33089b4530992d534890b5c737ccfbc16575ff4cc71"
    end

    resource "rouge" do
      url "https://rubygems.org/gems/rouge-3.3.0.gem"
      sha256 "140fb42bd45cde9c11bd5ea2fee3d1e6d10204d7aa33ac37eadf73a445d42fb6"
    end

    resource "strings" do
      url "https://rubygems.org/gems/strings-0.1.5.gem"
      sha256 "f12880759c16a6b7f048ebaa2577fdc74490e753f67d508610624628653e47b2"
    end

    resource "strings-ansi" do
      url "https://rubygems.org/gems/strings-ansi-0.1.0.gem"
      sha256 "3ef265ac7eb13eceeb9d1f475dff8d2f85f7ee6a0345b5de554a756523ffa6cb"
    end

    resource "to_regexp" do
      url "https://rubygems.org/gems/to_regexp-0.2.1.gem"
      sha256 "3b458ccd12e850816ca54b38fc592422a9bf412bb2d604ba23d4506ca15beae5"
    end

    resource "tty-color" do
      url "https://rubygems.org/gems/tty-color-0.4.3.gem"
      sha256 "731d0dd02da9c63aca126001153440df8971fee9163532064c46e6d58deae57f"
    end

    resource "tty-screen" do
      url "https://rubygems.org/gems/tty-screen-0.6.5.gem"
      sha256 "816b3482054c5ff781b1232852c8f3a88bf5dac099a56ee9621ed506fd93f72b"
    end

    resource "tty-table" do
      url "https://rubygems.org/gems/tty-table-0.10.0.gem"
      sha256 "8f7dc9bfc3ffbea453bb9c302ad34adc8411b2ce5fab4bce5faeded283cc7916"
    end

    resource "unicode-display_width" do
      url "https://rubygems.org/gems/unicode-display_width-1.6.0.gem"
      sha256 "5cfcc08491f3978e8506b5527d9e871beeffe2b5dacc62df78fb86a9a28d6e22"
    end

    resource "unicode_utils" do
      url "https://rubygems.org/gems/unicode_utils-1.4.0.gem"
      sha256 "b922d0cf2313b6b7136ada6645ce7154ffc86418ca07d53b058efe9eb72f2a40"
    end

    resource "yajl-ruby" do
      url "https://rubygems.org/gems/yajl-ruby-1.4.1.gem"
      sha256 "6e32e6e681c2861e99e7389ebcca70d56cb9357b223f09fb0857e2444ee1609b"
    end

    resource "yaml-safe_load_stream" do
      url "https://rubygems.org/gems/yaml-safe_load_stream-0.1.1.gem"
      sha256 "9aee579fc316d1712e3ee01b9ed2676eff2683d9ce58bcc2ade8790c2c414bc6"
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

    bash_completion.install "opt/bash-completion.sh" => "mortar.bash"
    zsh_completion.install_symlink bash_completion/"mortar.bash" => "_mortar"
  end

  test do
    assert_match "Options:", shell_output("#{bin}/mortar --help")
  end
end
