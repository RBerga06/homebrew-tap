require_relative "../lib/private_strategy"

cask "rberga06-font-theonering" do
    version "1.0.0"
    sha256 "d67d6b99370e1dd6071adb414040938b0087cf3615c4725f65ae8487c29167be"
  
    url "https://github.com/RBerga06/files-homebrew-tap/master/Fonts/TheOneRing.zip", :using => GitHubPrivateRepositoryDownloadStrategy
    name "The One Ring"
  
    font "Theonering.ttf"
end
