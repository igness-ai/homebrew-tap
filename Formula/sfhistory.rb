class Sfhistory < Formula
  desc "Salesforce Time Machine — git-native rollback for AI-driven development"
  homepage "https://github.com/igness-ai/sfhistory"
  version "0.1.2"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  on_macos do
    url "https://github.com/igness-ai/sfhistory/releases/download/v0.1.2/sfhistory-v0.1.2-aarch64-apple-darwin.tar.gz"
    sha256 "6d9bd728346db1c227e2c0e0033910620f5c88ebaa855d3177ced37502711508"
  end

  def install
    bin.install "sfhistory"
  end

  test do
    system "#{bin}/sfhistory", "--version"
  end
end
