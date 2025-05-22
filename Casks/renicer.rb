cask "renicer" do
  version "1.0.1"
  sha256 "b6e32930fe11ed1c8de91b3ee2690494cf1da699b8bc72b200a0317b23c7851c"

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
    "~/Library/Preferences/fyne/com.example.renicer/",
    "~/Library/Saved Application State/com.example.renicer.savedState",
  ]
end
