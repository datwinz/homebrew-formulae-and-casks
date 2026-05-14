cask "peazip" do
  arch arm: "aarch64", intel: "x86_64"

  version "11.1.0"
  sha256 arm:   "d339834e46e3f2d1c1db9774eca3c936f37405128add4f83151678d290ca54b1",
         intel: "ebca7bd5250826039cef0448ee861fdabbe6e353c0b195c9108adaa9c0b3e3ea"

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
