require_relative "../lib/private_strategy"

cask "rberga06-font-runes-dwarf" do
  version "1.0.0"
  sha256 :no_check

  url "https://github.com/RBerga06/files-homebrew-tap/raw/master/Fonts/Dwarf%20Runes.zip"
  name "Dwarf Runes"
  homepage "https://github.com/RBerga06/files-homebrew-tap"

  font "DwarfRunes-jE3y.ttf"
  font "DwarfRunes1-z8eL.ttf"
  font "DwarfRunes2-51zv.ttf"
end
