class Sfhistory < Formula
  desc "Salesforce Time Machine — git-native rollback for AI-driven development"
  homepage "https://github.com/igness-ai/sfhistory"
  version "0.1.0"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  on_macos do
    url "https://github.com/igness-ai/sfhistory/releases/download/v0.1.0/sfhistory-v0.1.0-aarch64-apple-darwin.tar.gz"
    sha256 "703bb4c760e08faf2047d5d90ba882528829ac231666bb349574330796e66d98"
  end

  def install
    bin.install "sfhistory"
  end

  test do
    system "#{bin}/sfhistory", "--version"
  end
end
