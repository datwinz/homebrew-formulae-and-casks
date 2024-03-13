cask "glance-dt" do
  version "1.3.0"
  sha256 "a735f7d5df875ec9763183bc643a296df3a2c4e6c1fc1b0d16aaaf34bba99f70"

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
