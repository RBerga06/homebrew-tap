cask "rberga06-fonts-lotr" do
  version "1.0.0"
  sha256 :no_check

  url "https://github.com/RBerga06/files-homebrew-tap/raw/master/empty.zip"
  name "A collection of LOTR-inspired fonts"
  homepage "https://github.com/RBerga06/files-homebrew-tap"

  depends_on cask: %w[
    rberga06-fonts-runes
    rberga06-font-ringbearer
    rberga06-font-aniron
    rberga06-font-theonering
    rberga06-font-elfic-caslin
    rberga06-font-elvish-ring-nfi
    rberga06-font-fanjofey
    rberga06-font-greifswalder-tengwar
    rberga06-font-mediaeval-caps
  ]

  stage_only true
end
