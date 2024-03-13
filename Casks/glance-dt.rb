cask "glance-dt" do
  version "1.3.1"
  sha256 "36b88a21a8c892c4d0767ecb8655037d03db6f32d72ff917314ad7b1bfda8abd"

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
