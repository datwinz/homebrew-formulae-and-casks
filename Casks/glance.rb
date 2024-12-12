cask "glance" do
  version "1.3.1"
  sha256 "d6eebd680184d6d3cab6a48a2b1f0ffc20a18ad03cfb66c6df9bb8a0dcfc92bb"

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
