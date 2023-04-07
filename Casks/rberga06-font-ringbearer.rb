require_relative "../lib/private_strategy"

cask "rberga06-font-ringbearer" do
  version "1.0.0"
  sha256 :no_check

  url "https://github.com/RBerga06/files-homebrew-tap/master/Fonts/Ringbearer.zip", using: GitHubPrivateRepositoryDownloadStrategy
  name "Ringbearer"
  homepage "https://github.com/RBerga06/files-homebrew-tap"

  font "RINGM___.TTF"
end
