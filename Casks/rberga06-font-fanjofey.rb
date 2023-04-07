require_relative "../lib/private_strategy"

cask "rberga06-font-fanjofey" do
  version "1.0.0"
  sha256 "6c33f143709b8a592d085443f581af294d57a6df0d06c28308300ba496177094"

  url "https://github.com/RBerga06/files-homebrew-tap/master/Fonts/Fanjofey.zip", using: GitHubPrivateRepositoryDownloadStrategy
  name "Fanjofey"
  homepage "https://github.com/RBerga06/files-homebrew-tap"

  font "fanjo-leoda.ttf"
  font "fanjofey.ttf"
end
