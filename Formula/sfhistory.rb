class Sfhistory < Formula
  desc "Salesforce Time Machine — git-native rollback for AI-driven development"
  homepage "https://github.com/igness-ai/sfhistory"
  version "0.3.0"
  license :cannot_represent

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/igness-ai/sfhistory/releases/download/v0.3.0/sfhistory-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "db12b896eb44d5f0de434bcbe0ef5ac7f5a5c597de5b6d673a95b2da124d189b"
    else
      url "https://github.com/igness-ai/sfhistory/releases/download/v0.3.0/sfhistory-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "f86be697d9d6677410bb792937a7ad3981bf9d9bf7c37b1aa9e1d1e544118d47"
    end
  end

  def install
    bin.install "sfhistory"
  end

  test do
    system "#{bin}/sfhistory", "--version"
  end
end
