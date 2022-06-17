require_relative "../lib/private_strategy"

cask "rberga06-fonts-runes" do
    version "1.0.0"
    sha256 "381673b565ec0cf209a5f28b8f1e6dc9db4b17e1df8ebb91a2842ec25bd2036f"

    url "https://github.com/RBerga06/files-homebrew-tap/master/empty.zip", :using => GitHubPrivateRepositoryDownloadStrategy;
    name "A collection of LOTR-inspired fonts"

    depends_on cask: [
        "rberga06-fonts-runes",
        "rberga06-font-ringbearer",
        "rberga06-font-aniron",
        "rberga06-font-theonering",
        "rberga06-font-elfic-caslin",
        "rberga06-font-elvish-ring-nfi",
    ]

    stage_only true
end
