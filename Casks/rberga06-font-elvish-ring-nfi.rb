require_relative "../lib/private_strategy"

cask "rberga06-font-elvish-ring-nfi" do
  version "1.0.0"
  sha256 "140dbaa2c4630efcbb89513f275f4c3a9b0202a499c78248c2d8de5028198d95"

  url "https://github.com/RBerga06/files-homebrew-tap/master/Fonts/Elvish%20Ring%20NFI.zip", using: GitHubPrivateRepositoryDownloadStrategy
  name "Elvish Ring NFI"
  homepage "https://github.com/RBerga06/files-homebrew-tap"

  font "elvish ring nfi.ttf"
end
