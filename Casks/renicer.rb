cask "renicer" do
  version "1.0.0"
  sha256 "392cbf105c2fd474fdbcd4f3006fd11a13e943cf67cbba7780e60533b0dc47b7"

  url "https://github.com/datwinz/renicer/releases/download/v#{version}/renicer.zip"
  name "Renicer"
  desc "App to show nice values of processes and renice them"
  homepage "https://github.com/datwinz/renicer"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "renicer.app"
  binary "#{appdir}/renicer.app/Contents/MacOS/renicer"

  zap trash: [
    "~/Library/Saved Application State/com.example.renicer.savedState",
    "~/Library/Preferences/fyne/com.example.renicer/",
  ]
end
