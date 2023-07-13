require_relative "../lib/private_strategy"

cask "rberga06-font-runes-anglosaxon" do
  version "1.0.0"
  sha256 :no_check

  url "https://github.com/RBerga06/files-homebrew-tap/master/Fonts/AngloSaxon%20Runes.zip"
  name "Anglo-Saxon Runes font"
  homepage "https://github.com/RBerga06/files-homebrew-tap"

  font "AnglosaxonRunes-VGne.ttf"
  font "AnglosaxonRunes1-JRKK.ttf"
  font "AnglosaxonRunes2-GOYA.ttf"
end
