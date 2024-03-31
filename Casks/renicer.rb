cask "renicer" do
  version "1.0.0"
  sha256 "392cbf105c2fd474fdbcd4f3006fd11a13e943cf67cbba7780e60533b0dc47b7"

  url "https://github.com/datwinz/renicer/releases/download/v#{version}/renicer.zip"
  name "Renicer"
  desc "App to show nice values of processes and renice them"
  homepage "https://github.com/datwinz/renicer"

  app "renicer.app"

  zap trash: [
    "/Users/floor/Library/Saved Application State/com.example.renicer.savedState"
  ]
end
