class Sfhistory < Formula
  desc "Salesforce Time Machine — git-native rollback for AI-driven development"
  homepage "https://github.com/igness-ai/sfhistory"
  version "0.1.1"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  on_macos do
    url "https://github.com/igness-ai/sfhistory/releases/download/v0.1.1/sfhistory-v0.1.1-aarch64-apple-darwin.tar.gz"
    sha256 "dcd90e1a3f6e0433cff3c9b22b3b72fd8ce9f7602f98a123fd2d92b0facafcfa"
  end

  def install
    bin.install "sfhistory"
  end

  test do
    system "#{bin}/sfhistory", "--version"
  end
end
