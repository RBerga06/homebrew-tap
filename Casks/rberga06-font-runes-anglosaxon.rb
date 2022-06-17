require_relative "../lib/private_strategy"

cask "rberga06-font-runes-anglosaxon" do
    version "1.0.0"
    sha256 "61fb17ecf09ade9e6a160ad368c34f6fa204800119ce2c368a26135d931b10d2"
  
    url "https://github.com/RBerga06/files-homebrew-tap/master/Fonts/AngloSaxon%20Runes.zip", :using => GitHubPrivateRepositoryDownloadStrategy
    name "Anglo-Saxon Runes font"
  
    font "AnglosaxonRunes-VGne.ttf"
    font "AnglosaxonRunes1-JRKK.ttf"
    font "AnglosaxonRunes2-GOYA.ttf"
end
