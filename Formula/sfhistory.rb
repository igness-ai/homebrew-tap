class Sfhistory < Formula
  desc "Salesforce Time Machine — git-native rollback for AI-driven development"
  homepage "https://github.com/igness-ai/sfhistory"
  version "0.0.2"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  on_macos do
    url "https://github.com/igness-ai/sfhistory/releases/download/v0.0.2/sfhistory-v0.0.2-aarch64-apple-darwin.tar.gz"
    sha256 "190d1b5598706730af2e72fbc65c578e862e6fe9d22d752c08fd1478c855ddcc"
  end

  def install
    bin.install Dir["sfhistory-*/sfhistory"].first
  end

  test do
    system "#{bin}/sfhistory", "--version"
  end
end
