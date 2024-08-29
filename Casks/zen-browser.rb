cask "zen-browser" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.0-a.32"
  sha256  arm:   "3b9ab978317a780f2f8f23976f95f190dafc258144cbfe9e45dba6589aad5faa",
          intel: "defde5572cb6310c57dbfb09f1e9bd00283498b538623545b797096b2b1bc7a7"

  url "https://github.com/zen-browser/desktop/releases/download/#{version}/zen.macos-#{arch}.dmg",
      verified: "github.com/zen-browser/desktop/"
  name "Zen Browser"
  desc "Experience tranquillity while browsing the web without people tracking you!"
  homepage "https://www.zen-browser.app/"

  livecheck do
    url :url
    regex(/(\d+(?:\.\d+)+-\w+\.\d+)/i)
    strategy :github_latest do |json, regex|
      match = json["tag_name"]&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  auto_updates true

  app "Zen Browser.app"

  zap trash: [
    "~/Library/Application Support/zen",
    "~/Library/Caches/Mozilla/updates/Applications/Zen Browser",
    "~/Library/Caches/zen",
    "~/Library/Preferences/org.mozilla.com.zen.browser.plist",
    "~/Library/Saved Application State/org.mozilla.com.zen.browser.savedState",
  ]
end
