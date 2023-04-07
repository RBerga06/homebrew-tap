require_relative "../lib/private_strategy"

cask "rberga06-font-mediaeval-caps" do
  version "1.0.0"
  sha256 :no_check

  url "https://github.com/RBerga06/files-homebrew-tap/master/Fonts/Mediaeval%20Caps.zip", using: GitHubPrivateRepositoryDownloadStrategy
  name "Mediaeval Caps"
  homepage "https://github.com/RBerga06/files-homebrew-tap"

  font "MediaevalCaps.ttf"
end
