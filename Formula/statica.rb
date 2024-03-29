# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Statica < Formula
  desc "Simple CLI tool to deploy static websites to AWS S3 with Cloudflare DNS"
  homepage "https://github.com/vojtechmares/statica"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/vojtechmares/statica/releases/download/v0.8.0/statica_v0.8.0_darwin_amd64.tar.gz"
      sha256 "f9beb48df4bf32d128772accc01bb378d87220b3941025d59ad81a87b69c4dff"

      def install
        bin.install "statica"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/vojtechmares/statica/releases/download/v0.8.0/statica_v0.8.0_darwin_arm64.tar.gz"
      sha256 "9b9e94b4741c7e55eb6cfd1b6bd1702a2bb9f4f6182ce38447dc8975b4212f5b"

      def install
        bin.install "statica"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/vojtechmares/statica/releases/download/v0.8.0/statica_v0.8.0_linux_arm64.tar.gz"
      sha256 "9ab1159ce516c4a759c886b3f3d4fb9dd96f35b72c06d0e6b9ab19ec12f3e9d3"

      def install
        bin.install "statica"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/vojtechmares/statica/releases/download/v0.8.0/statica_v0.8.0_linux_amd64.tar.gz"
      sha256 "ca6930d3a0efeccb2e4297306831b202da4875e3da4977fd25d0d17ecf980c8c"

      def install
        bin.install "statica"
      end
    end
  end

  def caveats; <<~EOS
    How to use this binary: https://github.com/vojtechmares/statica#usage
  EOS
  end

  test do
    system "#{bin}/statica version"
  end
end
