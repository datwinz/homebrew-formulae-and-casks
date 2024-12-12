cask "glance" do
  version "1.3.1"
  sha256 "501e20fda4b34a15027b6e4fa9f393131bbd227461e67bbc393757e59d434acf"

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
      =================================================
      THIS APP IS SIGNED WITH A SELF-SIGNED CERTIFICATE
      =================================================
      You must start #{appdir}/Glance.app once manually to setup the QuickLook plugin.
    EOS
  end
end
