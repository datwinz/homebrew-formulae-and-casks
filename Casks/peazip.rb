cask "peazip" do
  arch arm: "aarch64", intel: "x86_64"

  version "10.3.0"
  sha256 arm:   "265999996ad1ecfaaacad2a2ac0805200e6957790fb1bd039f0b0b4b7e439b4e",
         intel: "8f634e9ca15dbf09ca470cc16039da11059f8bd369993e675fa57cfc79f23b0c"

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
