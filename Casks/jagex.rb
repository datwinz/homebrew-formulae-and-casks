cask "jagex" do
  version "1.0.0"
  sha256 "fff5b5f4727fc5307f756c8bfa8b0831910cbefc960888d9bc94dabbddc3db56"

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
