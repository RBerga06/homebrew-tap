require_relative "../lib/private_strategy"

cask "rberga06-atlantis-minerva" do
    version "09.16.03.10"
    sha256 "cf061a905195ec7cf49700ead7be132abf12a0fa688fa41724249598c6452fc7"
    
    url "https://github.com/RBerga06/cern-atlantis-macapp/releases/download/v09.16.03.10/Atlantis-MINERVA.app.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    name "CERN Minerva (Atlantis) - macOS Wrapper application"
    desc "Mastercalss INvolving Event Recognition Visualized with Atlantis"
    homepage "http://www.cern.ch/atlas-minerva"

    app "Atlantis (MINERVA)"
    depends_on cask: "temurin8"
end
