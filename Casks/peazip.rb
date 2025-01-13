cask "peazip" do
  arch arm: "aarch64", intel: "x86_64"
  version "10.2.0"
  sha256 arm: "79a1947f88cf98c958f508247fa38ebf2e0b08a4a42e653f4aad465f63c5c82d",
         intel: "66835755439a952631f6b3271d31a264402e0d77245f9a3fd21a118be2d8d3ac"

  url "https://github.com/peazip/PeaZip/releases/download/#{version}/peazip-#{version}.DARWIN.#{arch}.dmg"
  name "PeaZip"
  desc "Cross-platform file and archive manager."
  homepage "https://github.com/peazip/PeaZip/"

  app "peazip.app"

  zap trash: [
    "~/Library/Saved Application State/com.company.peazip.savedState",
    "~/.config/peazip",
  ]
end
