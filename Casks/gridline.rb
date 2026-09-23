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

  version "0.8.1"
  sha256 arm:   "0358103ea616a012b88b4051d481e99106795a1d037d1dc39bcb9a66d31b15ae",
         intel: "c46c46b43625a3ca92084bb6fb94e397b552315ec544d06d47db1ee73e5920dc"

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