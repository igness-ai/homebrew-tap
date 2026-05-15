class Sfhistory < Formula
  desc "Salesforce Time Machine — git-native rollback for AI-driven development"
  homepage "https://github.com/igness-ai/sfhistory"
  version "0.0.3"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  on_macos do
    url "https://github.com/igness-ai/sfhistory/releases/download/v0.0.3/sfhistory-v0.0.3-aarch64-apple-darwin.tar.gz"
    sha256 "08797e1d42189a1f140f4fe4e051600156743684f2cb3e2ce9c5b48292980dba"
  end

  def install
    bin.install Dir["sfhistory-*/sfhistory"].first
  end

  test do
    system "#{bin}/sfhistory", "--version"
  end
end
