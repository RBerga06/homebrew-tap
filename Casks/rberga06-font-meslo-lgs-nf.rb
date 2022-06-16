require_relative "../lib/private_strategy"

cask "rberga06-font-meslo-lgs-nf" do
    version "1.0.0"
    #sha256 "f0630f93b2f8c27b0cda8c4a2bae2b7a67bdd70786500e109f38c3a9b145f523"
  
    url "https://github.com/RBerga06/files-homebrew-tap/master/Fonts/MesloLGS%20NF.zip", :using => GitHubPrivateRepositoryDownloadStrategy
    name "MesloLGS Nerd Font (enhanced for powerlevel10k)"
    #homepage "https://github.com/ryanoasis/nerd-fonts"
  
    font "MesloLGS NF/MesloLGS NF Bold Italic.ttf"
    font "MesloLGS NF/MesloLGS NF Bold.ttf"
    font "MesloLGS NF/MesloLGS NF Italic.ttf"
    font "MesloLGS NF/MesloLGS NF Regular.ttf"
end
