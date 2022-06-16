require_relative "../lib/private_strategy"

cask "rberga06-fonts-lotr" do
    version "0.0.1"
    sha256 "98853cc608adce80c63b1da414d0d404671fcad488b8bb0196bc65a93003f26f"

    url "https://github.com/RBerga06/files-homebrew-tap/master/Fonts/LOTR.zip", :using => GitHubPrivateRepositoryDownloadStrategy
    name "LOTR Fonts"
    homepage "https://www.1001fonts.com/lord-of-the-rings-fonts.html"

    font "LOTR/aniron/__anirb.ttf"
    font "LOTR/aniron/__anirm.ttf"
    font "LOTR/elfic-caslin/Elfic Caslon.ttf"
    font "LOTR/elvish-ring-nfi/elvish ring nfi.ttf"
    font "LOTR/fanjofey/fanjo-leoda.ttf"
    font "LOTR/fanjofey/fanjofey.ttf"
    font "LOTR/greifswalder-tengwar/Greifswalder Tengwar.ttf"
    font "LOTR/mediaeval-caps/MediaevalCaps.ttf"
    font "LOTR/midjungards/Midjungards.otf"
    font "LOTR/morris-roman/MorrisRoman-Black.ttf"
    font "LOTR/morris-roman/MorrisRomanAlternate-Black.ttf"
    font "LOTR/ringbearer/RINGM___.TTF"
    font "LOTR/rm-entrees/rm_entrees.ttf"
    font "LOTR/tengwaroptime/TengwarOptime.ttf"
    font "LOTR/tengwaroptime/TengwarOptimeDiagon.ttf"
end
