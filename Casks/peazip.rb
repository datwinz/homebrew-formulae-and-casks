cask "peazip" do
  arch arm: "aarch64", intel: "x86_64"

  version "11.0.0"
  sha256 arm:   "a9fc877533dcbb00a4e85a8c05579c3fc54f6391d540d58d7863f84f3c6170e4",
         intel: "c333a29a546c6aa831a2c6bc9947105790e8fa4a874c2b4fb795a6b940c1fffe"

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
