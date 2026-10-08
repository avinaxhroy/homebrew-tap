cask "sam" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0-beta"
  sha256 arm:   "d620a0de4129a0fc068b180643c96738c150ce2cf6d0abfa788ae5f6ee5171b7",
         intel: "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/avinaxhroy/SAM/releases/download/v#{version}/SAM_#{version}_#{arch}.dmg"
  name "SAM"
  desc "Configurable study OS: planning, spaced repetition, and progress tracking"
  homepage "https://github.com/avinaxhroy/SAM"

  app "SAM.app"
end
