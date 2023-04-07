require_relative "../lib/private_strategy"

cask "rberga06-font-elfic-caslin" do
  version "1.0.0"
  sha256 "f60420c5b1cf25cbc85c65f17997987019e8856d237e9835a5d1431f736af54f"

  url "https://github.com/RBerga06/files-homebrew-tap/master/Fonts/Elfic%20Caslin.zip", using: GitHubPrivateRepositoryDownloadStrategy
  name "Elfic Caslin"

  font "Elfic Caslon.ttf"
end
