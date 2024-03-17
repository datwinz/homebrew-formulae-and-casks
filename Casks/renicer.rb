cask "renicer" do
  version "0.1.0"
  sha256 "6b23a55306fa5a4d64d65734ba4a119d92c1b06364f3bf5b7e6eda9bd6610052"

  url "https://github.com/datwinz/renicer/releases/download/#{version}/renicer.zip"
  name "Renicer"
  desc "App to show nice values of processes and renice them"
  homepage "https://github.com/datwinz/renicer"

  app "renicer.app"

  zap trash: [
    "/Users/floor/Library/Saved Application State/com.example.renicer.savedState"
  ]
end
