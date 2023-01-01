require_relative "../lib/private_strategy"

cask "rberga06-font-meslo-lgs-nf" do
    version "1.0.0"
    sha256 "94e8ac5e73ffe23da63e772ad416af9884483e26486948622dbde0d483a716cd"
  
    url "https://github.com/RBerga06/files-homebrew-tap/master/Fonts/MesloLGS%20NF.zip", :using => GitHubPrivateRepositoryDownloadStrategy
    name "MesloLGS Nerd Font (enhanced for powerlevel10k)"
    #homepage "https://github.com/ryanoasis/nerd-fonts"
  
    font "MesloLGS NF Bold Italic.ttf"
    font "MesloLGS NF Bold.ttf"
    font "MesloLGS NF Italic.ttf"
    font "MesloLGS NF Regular.ttf"
end
