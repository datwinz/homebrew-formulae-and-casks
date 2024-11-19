cask "glance" do
  version "1.3.1"
  sha256 "c8c5ebbfc2f160c5cdaee88f8fad5936b5940e779a6b5e8a5d0a33fee8ff6dcc"

  url "https://github.com/datwinz/glance/releases/download/v#{version}/Glance.zip"
  name "Glance"
  desc "Utility to provide quick look previews for files that aren't natively supported"
  homepage "https://github.com/datwinz/glance"

  depends_on macos: ">= :catalina"

  app "Glance.app"

  zap trash: [
    "~/Library/Application Scripts/dev.datwinz.Glance",
    "~/Library/Application Scripts/dev.datwinz.Glance.QLPlugin",
    "~/Library/Containers/dev.datwinz.Glance",
    "~/Library/Containers/dev.datwinz.Glance.QLPlugin",
    "~/Library/Group Containers/group.com.datwinz.glance",
  ]

  caveats do
    <<~EOS
      You must start #{appdir}/Glance.app once manually to setup the QuickLook plugin.
    EOS
  end
end
