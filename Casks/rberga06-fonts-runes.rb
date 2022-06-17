require_relative "../lib/private_strategy"

cask "rberga06-fonts-runes" do
    version "1.0.0"
    url "https://github.com/RBerga06/files-homebrew-tap/master/Fonts/Runes.txt", :using => GitHubPrivateRepositoryDownloadStrategy;
    name "A collection of runic Fonts"

    depends_on cask: [
        "rberga06-font-runes-anglosaxon",
        "rberga06-font-runes-germanic",
        "rberga06-font-runes-dwarf",
    ]

    stage_only true
end
