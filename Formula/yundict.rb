# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Yundict < Formula
  desc "Yundict CLI"
  homepage "https://github.com/yundict/yundict-cli"
  version "0.1.1"

  on_macos do
    on_intel do
      url "https://github.com/yundict/yundict-cli/releases/download/v0.1.1/yundict_Darwin_x86_64.tar.gz"
      sha256 "998fbcf76aa14a91f43a63c7005de5a3ec25f641f0a4731b188a487579f22355"

      def install
        bin.install "yundict"
      end
    end
    on_arm do
      url "https://github.com/yundict/yundict-cli/releases/download/v0.1.1/yundict_Darwin_arm64.tar.gz"
      sha256 "b4dab8f5c0d2072313bae4df16b849cd98615d2f13b3733450ba33163e97ee37"

      def install
        bin.install "yundict"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yundict/yundict-cli/releases/download/v0.1.1/yundict_Linux_x86_64.tar.gz"
        sha256 "82e0ae838729000dc14b32690655407cb1c2b72786b1ab354537631cb7adc2dc"

        def install
          bin.install "yundict"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yundict/yundict-cli/releases/download/v0.1.1/yundict_Linux_arm64.tar.gz"
        sha256 "2bc20468f81e2045c249d7b44a8e5b2a987e502665052ccd85d98593b854cae1"

        def install
          bin.install "yundict"
        end
      end
    end
  end

  test do
    system "#{bin}/yundict version"
  end
end
