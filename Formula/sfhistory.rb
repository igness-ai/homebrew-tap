class Sfhistory < Formula
  desc "Salesforce Time Machine — git-native rollback for AI-driven development"
  homepage "https://github.com/igness-ai/sfhistory"
  version "0.0.1"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  on_macos do
    url "https://github.com/igness-ai/sfhistory/releases/download/v0.0.1/sfhistory-v0.0.1-aarch64-apple-darwin.tar.gz"
    sha256 "d6f7c3103e97f510c9b9621064be4dc80f7d25caf1f2ac9454f29ce6fa1de57e"
  end

  def install
    bin.install Dir["sfhistory-*/sfhistory"].first
  end

  test do
    system "#{bin}/sfhistory", "--version"
  end
end
