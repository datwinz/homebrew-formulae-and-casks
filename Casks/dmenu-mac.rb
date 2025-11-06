cask "dmenu-mac" do
  version "0.8.3"
  sha256 "28bec324144250016642ccc1cfe50d7b2575796f89a73aabc3693603db8216b7"

  url "https://github.com/datwinz/dmenu-mac/releases/download/v#{version}/dmenu-mac.zip"
  name "dmenu-mac"
  desc "Keyboard-only application launcher"
  homepage "https://github.com/datwinz/dmenu-mac"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "dmenu-mac.app"
  binary "#{appdir}/dmenu-mac.app/Contents/Resources/dmenu-mac"

  zap trash: [
    "~/Library/Application Scripts/com.onaips.dmenu-macos",
    "~/Library/Containers/com.onaips.dmenu-macos",
  ]
end
