require_relative "../lib/private_strategy"

cask "rberga06-font-greifswalder-tengwar" do
  version "1.0.0"
  sha256 :no_check

  url "https://github.com/RBerga06/files-homebrew-tap/master/Fonts/Greifswalder%20Tengwar.zip"
  name "Greifswalder Tengwar"
  homepage "https://github.com/RBerga06/files-homebrew-tap"

  font "Greifswalder Tengwar.ttf"
end
