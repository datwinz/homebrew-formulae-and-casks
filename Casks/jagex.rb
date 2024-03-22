cask "jagex" do
  version "0.33.0"
  sha256 "514bcc9a41efd2c8516caa7eb17fd68b8fd423716f8c246d4a1ef9fa9722825c"

  url "https://cdn.jagex.com/Jagex%20Launcher%20Installer.dmg"
  name "Jagex Launcher"
  desc "The new home for Jagex's PC games library."
  homepage "https://www.jagex.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true

  installer manual: "Jagex Launcher installer.app"

  uninstall delete: "/Applications/Jagex Launcher.app"

  zap trash: [
    "~/Jagex",
    "~/Library/Application Support/Jagex Launcher",
    "~/Library/Preferences/com.jagex.launcher.plist",
  ]

end
