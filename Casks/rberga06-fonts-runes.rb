require_relative "../lib/private_strategy"

cask "rberga06-fonts-runes" do
  version "1.0.0"
  sha256 "381673b565ec0cf209a5f28b8f1e6dc9db4b17e1df8ebb91a2842ec25bd2036f"

  url "https://github.com/RBerga06/files-homebrew-tap/master/empty.zip", using: GitHubPrivateRepositoryDownloadStrategy
  name "A collection of runic Fonts"
  homepage "https://github.com/RBerga06/files-homebrew-tap"

  depends_on cask: %w[
    rberga06-font-runes-anglosaxon
    rberga06-font-runes-germanic
    rberga06-font-runes-dwarf
  ]

  stage_only true
end
