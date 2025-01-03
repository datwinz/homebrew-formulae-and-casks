cask "dmenu-mac" do
  version "0.7.6"
  sha256 "cfe3f4655cb5e6274b17c8aa57e8da51d7ab81ff286672086adc22c422877234"

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
