require_relative "../lib/private_strategy"

cask "rberga06-font-runes-germanic" do
    version "1.0.0"
    sha256 "889519b661ffa862ffe83e9d6934fd43f787e6efd3693c7b5ca032a9c250dc03"
  
    url "https://github.com/RBerga06/files-homebrew-tap/master/Fonts/Germanic%20Runes.zip", :using => GitHubPrivateRepositoryDownloadStrategy
    name "Germanic Runes"
  
    font "GermanicRunes-6YG1.ttf"
    font "GermanicRunes1-ywxV.ttf"
    font "GermanicRunes2-9Yq2.ttf"
end
