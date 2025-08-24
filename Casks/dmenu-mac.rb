cask "dmenu-mac" do
  version "0.8.3"
  sha256 "7b5557db5266373f1c67f4381a9a65a56505a14ec45f05b324647fc178831922"

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
