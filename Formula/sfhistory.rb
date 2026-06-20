class Sfhistory < Formula
  desc "Salesforce Time Machine — git-native rollback for AI-driven development"
  homepage "https://github.com/igness-ai/sfhistory"
  version "0.5.1"
  license :cannot_represent

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/igness-ai/sfhistory/releases/download/v0.5.1/sfhistory-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "b65dd2335968a6119870e5cb35ff3d0841539ee09c571c571ab4854ea9853eda"
    else
      url "https://github.com/igness-ai/sfhistory/releases/download/v0.5.1/sfhistory-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "3369c4b33ff180e5cb0c022f4ec5f6d143f7f462bfc164cfb90acac8b83a86e4"
    end
  end

  def install
    bin.install "sfhistory"
  end

  test do
    system "#{bin}/sfhistory", "--version"
  end
end
