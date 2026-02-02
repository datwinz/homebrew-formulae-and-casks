cask "docfetcher" do
  version "1.1.27"
  sha256 "081061af1925f782307a0f23e05277a7299a650575354cbd6b977ba2a8c550d6"

  url "https://altushost-swe.dl.sourceforge.net/project/docfetcher/docfetcher/#{version}/DocFetcher-#{version}-macOS-64bit-NonPortable.dmg"
  name "DocFetcher"
  desc "Open-source desktop search application which allows you to search the contents of files on your computer"
  homepage "https://docfetcher.sourceforge.io/"

  app "DocFetcher.app"

  zap trash: [
    "~/.docfetcher/",
    "~/Library/Preferences/net.java.openjdk.java.plist",
  ]

end
