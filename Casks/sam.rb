cask "sam" do
  version "0.1.0-beta"
  sha256 "b7acbcd0312a9f5e171316b9040955818b38cc6d88d8e8fc6cf257bc632a7d4e"

  url "https://github.com/avinaxhroy/SAM/releases/download/v#{version}/SAM_#{version}_aarch64.dmg"
  name "SAM"
  desc "Configurable study OS: planning, spaced repetition, and progress tracking"
  homepage "https://github.com/avinaxhroy/SAM"

  depends_on arch: :arm64

  app "SAM.app"

  # SAM is not notarized (no Apple Developer Program). Homebrew applies the
  # macOS quarantine flag at install, which makes Gatekeeper kill this ad-hoc
  # signed app on Apple Silicon with a misleading "damaged" error. Strip it so
  # `brew install` works with zero manual steps.
  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-d", "com.apple.quarantine", "{{appdir}}/SAM.app"],
        must_succeed: false
  end
end
