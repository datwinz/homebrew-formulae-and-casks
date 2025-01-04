cask "dmenu-mac" do
  version "0.7.7"
  sha256 "b538c1236595b6c54b83da18f6fba1c36ea23edf9ecd31fd79c33894ee102e1c"

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
