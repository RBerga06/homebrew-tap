require_relative "../lib/private_strategy"

cask "rberga06-font-greifswalder-tengwar" do
    version "1.0.0"
    sha256 "5af0c5ed98bfe199a36ee3c6331a4eca96af8945dbcbfc07be2db756f6a3c519"
  
    url "https://github.com/RBerga06/files-homebrew-tap/master/Fonts/Greifswalder%20Tengwar.zip", :using => GitHubPrivateRepositoryDownloadStrategy
    name "Greifswalder Tengwar"
  
    font "Greifswalder Tengwar.ttf"
end
