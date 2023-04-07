require_relative "../lib/private_strategy"

cask "rberga06-font-aniron" do
  version "1.0.0"
  sha256 "02f50b8b2f2c735f362d04cb82e90bed1301b71701d8a35f05d5c93cd4e3c144"

  url "https://github.com/RBerga06/files-homebrew-tap/master/Fonts/Aniron.zip", using: GitHubPrivateRepositoryDownloadStrategy
  name "Aniron"
  homepage "https://github.com/RBerga06/files-homebrew-tap"

  font "anirb___.ttf"
  font "anirm___.ttf"
end
