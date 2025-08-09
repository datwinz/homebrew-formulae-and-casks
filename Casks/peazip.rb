cask "peazip" do
  arch arm: "aarch64", intel: "x86_64"

  version "10.6.0"
  sha256 arm:   "ed96ba770465d2c6718f7396803b22aa472c17c6346a1a9eb358edcf90239547",
         intel: "7ab22c71909e223b18d740d6882a46478dad9aaa5269e744283df7911ba7678a"

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
