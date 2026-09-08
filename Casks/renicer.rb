cask "renicer" do
  version "1.0.2"
  sha256 "522322d493f0c4fa21b4320137909b7f98df223ab2810f66fe8e8bd7bbf74ef0"

  url "https://github.com/datwinz/renicer/releases/download/v#{version}/renicer.zip"
  name "Renicer"
  desc "App to show nice values of processes and renice them"
  homepage "https://github.com/datwinz/renicer"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "renicer.app"
  binary "#{appdir}/renicer.app/Contents/MacOS/renicer"

  zap trash: [
    "~/Library/Preferences/fyne/com.example.renicer/",
    "~/Library/Saved Application State/com.example.renicer.savedState",
  ]
end
