cask "peazip" do
  arch arm: "aarch64", intel: "x86_64"

  version "10.4.0"
  sha256 arm:   "546686c6f592ffa65bcedd4b47e76487e9ec980301ca4d4f0d9cae02929ee6e0",
         intel: "0a7058c9cabc4be43809a55092c3f1f5fc3bc4bc2a3e7c275ed21a25a0c6d556"

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
