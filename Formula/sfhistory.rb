class Sfhistory < Formula
  desc "Salesforce Time Machine — git-native rollback for AI-driven development"
  homepage "https://github.com/igness-ai/sfhistory"
  version "0.0.4"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  on_macos do
    url "https://github.com/igness-ai/sfhistory/releases/download/v0.0.4/sfhistory-v0.0.4-aarch64-apple-darwin.tar.gz"
    sha256 "441705c0cef29ba142ee8628acec06a483368a26c56777f9ede789043dedaa14"
  end

  def install
    bin.install "sfhistory"
  end

  test do
    system "#{bin}/sfhistory", "--version"
  end
end
