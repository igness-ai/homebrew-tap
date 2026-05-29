class Sfhistory < Formula
  desc "Salesforce Time Machine — git-native rollback for AI-driven development"
  homepage "https://github.com/igness-ai/sfhistory"
  version "0.2.0"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  on_macos do
    url "https://github.com/igness-ai/sfhistory/releases/download/v0.2.0/sfhistory-v0.2.0-aarch64-apple-darwin.tar.gz"
    sha256 "bacc6376a81e38307efe8d1400b8c6c1182053aa207d13fb125e9608c34e3db3"
  end

  def install
    bin.install "sfhistory"
  end

  test do
    system "#{bin}/sfhistory", "--version"
  end
end
