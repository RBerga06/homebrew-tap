require_relative "../lib/private_strategy"

cask "rberga06-font-mediaeval-caps" do
    version "1.0.0"
    sha256 "fa567b435a1840098165bd308ce26d9c7ef90724873ebbeb78c856c58a801da8"
  
    url "https://github.com/RBerga06/files-homebrew-tap/master/Fonts/Mediaeval%20Caps.zip", :using => GitHubPrivateRepositoryDownloadStrategy
    name "Mediaeval Caps"
  
    font "MediaevalCaps.ttf"
end
