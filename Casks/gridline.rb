# Homebrew Cask formula for Gridline.
#
# This file is the template; `scripts/render-cask.sh` substitutes the version
# and the per-arch SHA-256 checksums on each release and pushes the rendered
# file to the `AdrianBonpin/homebrew-gridline` tap as `Casks/gridline.rb`.
# End users then install with
#
#   brew install --cask AdrianBonpin/gridline/gridline
#
# or — after a one-time `brew tap AdrianBonpin/gridline` — with the short
#
#   brew install --cask gridline
#
# SIGNING: Gridline is Developer-ID signed + notarized, so macOS trusts it
# and no quarantine-stripping postflight is needed.

cask "gridline" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.2"
  sha256 arm:   "635b2d5a7dc108e3a57e8be24652c9ab94dbc7a9d281eb971ca12b71e5389acb",
         intel: "e2b0df34c65f3fb0b0ead9388da7b26e713cbee0c2448a287597bdb8c45d0eba"

  url "https://github.com/AdrianBonpin/gridline/releases/download/v#{version}/Gridline_#{version}_#{arch}.dmg"
  name "Gridline"
  desc "Open-source, cross-platform database GUI client for PostgreSQL"
  homepage "https://github.com/AdrianBonpin/gridline"

  depends_on macos: :monterey

  app "Gridline.app"

  zap trash: [
    "~/Library/Application Support/com.adrianbonpin.gridline",
    "~/Library/Caches/com.adrianbonpin.gridline",
    "~/Library/Preferences/com.adrianbonpin.gridline.plist",
    "~/Library/Saved Application State/com.adrianbonpin.gridline.savedState",
    "~/Library/WebKit/com.adrianbonpin.gridline",
  ]
end