require_relative "../lib/private_strategy"

cask "rberga06-font-ringbearer" do
    version "1.0.0"
    sha256 "496edc2b7a91504e7c07c13a20d56333b49e04a33f407f4d1828d2fdd7c5bffd"
  
    url "https://github.com/RBerga06/files-homebrew-tap/master/Fonts/Ringbearer.zip", :using => GitHubPrivateRepositoryDownloadStrategy
    name "Ringbearer"
  
    font "RINGM___.TTF"
end
