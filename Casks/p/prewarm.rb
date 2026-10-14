cask "prewarm" do
  version "1.0.0"
  sha256 "a6f3ecc96f459d71acf3dab56a2d9bb294cc3bb34ad7bcc8bdffa0d62266fea1"

  url "https://github.com/ethanproia/Prewarm/releases/download/v#{version}/Prewarm-#{version}-arm64.zip"
  name "Prewarm"
  desc "Keep a selected microphone ready between recordings"
  homepage "https://github.com/ethanproia/Prewarm"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Prewarm.app"

  uninstall quit: "com.ethan.Prewarm"

  zap trash: [
    "~/Library/Caches/com.ethan.Prewarm",
    "~/Library/Preferences/com.ethan.Prewarm.plist",
  ]
end
