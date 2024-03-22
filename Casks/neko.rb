cask "neko" do
  version "1.1"
  sha256 "f42deaf56913ad258075a1309536054189e4fe38a237245fd90648f15502ace2"

  url "https://github.com/mdonoughe/neko-mac/releases/download/v#{version}/Neko-#{version}.dmg"
  name "猫"
  desc "Oneko in Cocoa (Neko for Mac OS X)"
  homepage "https://github.com/mdonoughe/neko-mac"

  zap trash: [
    "~/Library/Application Scripts/com.yourcompany.neko",
    "~/Library/Containers/com.yourcompany.neko",
  ]

  caveats do
    <<~EOS
    For neko to work on all desktop spaces, put neko in your dock.
    After that right-click it and assign it to all spaces.
    EOS
  end

end
