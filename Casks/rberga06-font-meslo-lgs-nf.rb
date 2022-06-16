require_relative "../lib/private_strategy"

cask "rberga06-font-meslo-lgs-nf" do
    version "1.0.0"
    sha256 "ddfbb68c4872b78468fb82c1506b8e59e7a3ca4d38c8b067d1dbad313f571010"
  
    url "https://github.com/RBerga06/files-homebrew-tap/master/Fonts/MesloLGS%20NF.zip", :using => GitHubPrivateRepositoryDownloadStrategy
    name "MesloLGS Nerd Font (enhanced for powerlevel10k)"
    #homepage "https://github.com/ryanoasis/nerd-fonts"
  
    font "MesloLGS NF/MesloLGS NF Bold Italic.ttf"
    font "MesloLGS NF/MesloLGS NF Bold.ttf"
    font "MesloLGS NF/MesloLGS NF Italic.ttf"
    font "MesloLGS NF/MesloLGS NF Regular.ttf"
end
