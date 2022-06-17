cask "rberga06-fonts-runes" do
    version "1.0.0"
    url "https://github.com/RBerga06/files-homebrew-tap/master/Fonts/Runes.txt"
    name "A collection of runic Fonts"
    stage_only true
    depends_on cask: [
        "rberga06-font-runes-anglosaxon",
        "rberga06-font-runes-germanic",
        "rberga06-font-runes-dwarf",
    ]
end
