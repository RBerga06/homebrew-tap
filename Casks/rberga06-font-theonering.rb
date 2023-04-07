require_relative "../lib/private_strategy"

cask "rberga06-font-theonering" do
  version "1.0.0"
  sha256 :no_check

  url "https://github.com/RBerga06/files-homebrew-tap/master/Fonts/TheOneRing.zip", using: GitHubPrivateRepositoryDownloadStrategy
  name "The One Ring"
  homepage "https://github.com/RBerga06/files-homebrew-tap"

  font "Theonering.ttf"
end
