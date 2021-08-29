# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Statica < Formula
  desc "Simple CLI tool to deploy static websites to AWS S3 with Cloudflare DNS"
  homepage "https://github.com/vojtechmares/statica"
  version "0.3.1"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/vojtechmares/statica/releases/download/v0.3.1/statica_v0.3.1_darwin_amd64.tar.gz"
      sha256 "b1e6e17c22578e122479ac618fe5095529d264432fa9f4300857230ba08924b2"
    end
    if Hardware::CPU.arm?
      url "https://github.com/vojtechmares/statica/releases/download/v0.3.1/statica_v0.3.1_darwin_arm64.tar.gz"
      sha256 "17fd418305090cda81a0bd21c6d667d4d69c281572da2ca23fa55a82f8be9237"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/vojtechmares/statica/releases/download/v0.3.1/statica_v0.3.1_linux_amd64.tar.gz"
      sha256 "32bdb30fd5ea7477da10c386f942d33db66b206c5afdb7744c6c177b0d5bb51d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/vojtechmares/statica/releases/download/v0.3.1/statica_v0.3.1_linux_arm64.tar.gz"
      sha256 "c0f1d5704fc87c27213154a9d8941c7155d32ad6303be3cd4435bf24ddbcd8aa"
    end
  end

  def install
    bin.install "statica"
  end

  def caveats; <<~EOS
    How to use this binary: https://github.com/vojtechmares/statica#usage
  EOS
  end

  test do
    system "#{bin}/statica version"
  end
end
