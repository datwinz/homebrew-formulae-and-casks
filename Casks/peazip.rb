cask "peazip" do
  arch arm: "aarch64", intel: "x86_64"

  version "10.7.0"
  sha256 arm:   "257ce2665821f1514d8802cbdca98001c15ace662732545690f1ebb44227f4f6",
         intel: "2857d3774d8e24c0d35f9c034cf127c333da01dbd63d180d25e89cb46cb21845"

  url "https://github.com/peazip/PeaZip/releases/download/#{version}/peazip-#{version}.DARWIN.#{arch}.dmg"
  name "PeaZip"
  desc "Cross-platform file and archive manager"
  homepage "https://github.com/peazip/PeaZip/"

  app "peazip.app"

  zap trash: [
    "~/.config/peazip",
    "~/Library/Saved Application State/com.company.peazip.savedState",
  ]
end
