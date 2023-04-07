require_relative "../lib/private_strategy"

cask "rberga06-font-runes-dwarf" do
  version "1.0.0"
  sha256 "b9c32a266676be2f8814fb4c515b1fab0173f77ec538c72aa55c713ec5ccc85a"

  url "https://github.com/RBerga06/files-homebrew-tap/master/Fonts/Dwarf%20Runes.zip", using: GitHubPrivateRepositoryDownloadStrategy
  name "Dwarf Runes"

  font "DwarfRunes-jE3y.ttf"
  font "DwarfRunes1-z8eL.ttf"
  font "DwarfRunes2-51zv.ttf"
end
