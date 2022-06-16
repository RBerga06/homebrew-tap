require_relative "../lib/private_strategy"

cask "rberga06-fonts-lotr" do
    version "0.0.1"

    url "https://github.com/RBerga06/files-homebrew-tap/Fonts/LOTR.zip", :using => GitHubPrivateRepositoryDownloadStrategy
    name "LOTR Fonts"
    homepage "https://www.1001fonts.com/lord-of-the-rings-fonts.html"

    font "aniron/__anirb.ttf"
    font "aniron/__anirm.ttf"
    font "elfic-caslin/Elfic Caslon.ttf"
    font "elvish-ring-nfi/elvish ring nfi.ttf"
    font "fanjofey/fanjo-leoda.ttf"
    font "fanjofey/fanjofey.ttf"
    font "greifswalder-tengwar/Greifswalder Tengwar.ttf"
    font "mediaeval-caps/MediaevalCaps.ttf"
    font "midjungards/Midjungards.otf"
    font "morris-roman/MorrisRoman-Black.ttf"
    font "morris-roman/MorrisRomanAlternate-Black.ttf"
    font "ringbearer/RINGM___.TTF"
    font "rm-entrees/rm_entrees.ttf"
    font "tengwaroptime/TengwarOptime.ttf"
    font "tengwaroptime/TengwarOptimeDiagon.ttf"
end
