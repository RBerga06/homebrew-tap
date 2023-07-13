require_relative "../lib/private_strategy"

cask "rberga06-font-fanjofey" do
  version "1.0.0"
  sha256 :no_check

  url "https://github.com/RBerga06/files-homebrew-tap/master/Fonts/Fanjofey.zip"
  name "Fanjofey"
  homepage "https://github.com/RBerga06/files-homebrew-tap"

  font "fanjo-leoda.ttf"
  font "fanjofey.ttf"
end
