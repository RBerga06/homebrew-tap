require_relative "../lib/private_strategy"

cask "rberga06-fonts-lotr" do
    version "0.0.1"
    sha256 "21fe52553d0d4e59807d7d20ed25c5a2094de3673a626b93f98bc593aab93f05"

    url "https://github.com/RBerga06/files-homebrew-tap/master/Fonts/LOTR.zip", :using => GitHubPrivateRepositoryDownloadStrategy
    name "LOTR Fonts"
    homepage "https://www.1001fonts.com/lord-of-the-rings-fonts.html"

    font "LOTR/aniron/anirb___.ttf"
    font "LOTR/aniron/anirm___.ttf"
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
