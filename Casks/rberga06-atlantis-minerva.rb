cask "atlantis-minerva" do
    version "09.16.03.10"
#    sha256 ""

    url "https://github.com/RBerga06/cern-atlantis-macapp/releases/download/v09.16.03.10/Atlantis-MINERVA.app.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    name "CERN Minerva (Atlantis) - macOS Wrapper application"
    desc "Mastercalss INvolving Event Recognition Visualized with Atlantis"
    homepage "http://www.cern.ch/atlas-minerva"

    app "Atlantis (MINERVA)"
    depends_on formula: "temurin8"
end
