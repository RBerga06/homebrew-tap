require_relative "../lib/private_strategy"

cask "rberga06-font-theonering" do
  version "1.0.0"
  sha256 "e441e8d07a48047db1b13a44917c86c5d277980bfa40098079cf1372d29f6e03"

  url "https://github.com/RBerga06/files-homebrew-tap/master/Fonts/TheOneRing.zip", using: GitHubPrivateRepositoryDownloadStrategy
  name "The One Ring"

  font "Theonering.ttf"
end
