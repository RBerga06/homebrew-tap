require_relative "../lib/private_strategy"

cask "rberga06-atlantis" do
    version "09.16.06.07"
    sha256 "9e45c7d9fbf372d89ac44dfab85ba3c642a8cef02e75224d23412d1e882c79e1"

    url "https://github.com/RBerga06/cern-atlantis-macapp/releases/download/v#{version}/Atlantis.app.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    name "CERN Atlantis - macOS Wrapper application"
    desc "An official event display for the ATLAS experiment at CERN's Large Hadron Collider."
#    homepage "http://www.cern.ch/atlantis"
    homepage "https://github.com/RBerga06/cern-atlantis-macapp"

    app "Atlantis.app"
    depends_on cask: "temurin8"
end
