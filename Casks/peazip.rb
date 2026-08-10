cask "peazip" do
  arch arm: "aarch64", intel: "x86_64"

  version "11.2.0"
  sha256 arm:   "8e354e950935b4cfbd25da71a80d18ad125ab204483ad41dd8dbb097d8f32a8e",
         intel: "54c1df5c8384eb1fc1494b8c13df10b7474b191a7d989a5aa088a565cd96fa21"

  url "https://github.com/peazip/PeaZip/releases/download/#{version}/peazip-#{version}.DARWIN.#{arch}.dmg"
  name "PeaZip"
  desc "Cross-platform file and archive manager"
  homepage "https://github.com/peazip/PeaZip/"

  depends_on :macos

  app "peazip.app"

  zap trash: [
    "~/.config/peazip",
    "~/Library/Saved Application State/com.company.peazip.savedState",
  ]
end
