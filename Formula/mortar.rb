class Mortar < Formula
  desc "Kubernetes manifest shooter"
  homepage "https://github.com/kontena/mortar"
  head "https://github.com/kontena/mortar.git"

  depends_on "ruby"

  stable do
    url "https://github.com/kontena/mortar.git",
    :tag => "v0.3.0",
    :revision => "56614cbd499ae10a5e1bcf9396d989678600d6ec"

    resource "clamp" do
      url "https://rubygems.org/gems/clamp-1.3.0.gem"
      sha256 "1c466e93c14ed78078a428990f113b30f256189ec76f682f759e5aa2a181acfb"
    end

    resource "concurrent-ruby" do
      url "https://rubygems.org/gems/concurrent-ruby-1.1.3.gem"
      sha256 "6b4bf154eb36502635143198425c35fc3262b3c088d7df179704bb5beed409a3"
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
      url "https://rubygems.org/gems/dry-types-0.13.3.gem"
      sha256 "beb6548b40af545e7066a6f8ff0cc156614172cfd31fa0da482f2779c33bea0d"
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
      url "https://rubygems.org/gems/hashdiff-0.3.7.gem"
      sha256 "e94a08689f724a571556b78d5ca35214033d3961972d58c4611245c4b3a0457a"
    end

    resource "ice_nine" do
      url "https://rubygems.org/gems/ice_nine-0.11.2.gem"
      sha256 "5d506a7d2723d5592dc121b9928e4931742730131f22a1a37649df1c1e2e63db"
    end

    resource "jsonpath" do
      url "https://rubygems.org/gems/jsonpath-0.9.6.gem"
      sha256 "ed341783603cc77315e01fecacc166f5092b6f692ae3cbfadabc0179390d241a"
    end

    resource "k8s-client" do
      url "https://rubygems.org/gems/k8s-client-0.6.2.gem"
      sha256 "ccc5ca4d2b7a9c831c7d600856430cec0c3a7aed9e74f07a636265b121d34fbd"
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
      url "https://rubygems.org/gems/strings-0.1.4.gem"
      sha256 "cab79f5b836b850cc63ee38fddc1d3ccb627cf303646f0a706d82c270a2b35de"
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
      url "https://rubygems.org/gems/unicode-display_width-1.4.0.gem"
      sha256 "a72802fd6345c0da220e8088b27f1800924b74d222621a06477757769b5e8000"
    end

    resource "unicode_utils" do
      url "https://rubygems.org/gems/unicode_utils-1.4.0.gem"
      sha256 "b922d0cf2313b6b7136ada6645ce7154ffc86418ca07d53b058efe9eb72f2a40"
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
