class Sfhistory < Formula
  desc "Salesforce Time Machine — git-native rollback for AI-driven development"
  homepage "https://github.com/igness-ai/sfhistory"
  version "0.5.0"
  license :cannot_represent

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/igness-ai/sfhistory/releases/download/v0.5.0/sfhistory-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "d434a29ac5047bd8e3688866e2d397f3103b82dc1b56c203eb445faf117f6b36"
    else
      url "https://github.com/igness-ai/sfhistory/releases/download/v0.5.0/sfhistory-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "ed5f14292b3ba074481ae7cf499223902e4e78cf5a6d95b0ab57703c15ebf884"
    end
  end

  def install
    bin.install "sfhistory"
  end

  test do
    system "#{bin}/sfhistory", "--version"
  end
end
