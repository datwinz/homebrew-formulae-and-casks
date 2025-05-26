cask "dmenu-mac" do
  version "0.8.1"
  sha256 "16db6ab9a448a3165bfdad405d933c1dff109e9166a8b279ca026f7a9b0f640c"

  url "https://github.com/datwinz/dmenu-mac/releases/download/v#{version}/dmenu-mac.zip"
  name "dmenu-mac"
  desc "Keyboard-only application launcher"
  homepage "https://github.com/datwinz/dmenu-mac"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "dmenu-mac.app"
  binary "#{appdir}/dmenu-mac.app/Contents/Resources/dmenu-mac"

  zap trash: [
    "~/Library/Application Scripts/com.onaips.dmenu-macos",
    "~/Library/Containers/com.onaips.dmenu-macos",
  ]
end
