# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dns53 < Formula
  desc "Dynamic DNS within Amazon Route53. Expose your EC2 quickly, easily and privately"
  homepage "https://github.com/purpleclay/dns53"
  version "0.1.0-alpha.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/purpleclay/dns53/releases/download/v0.1.0-alpha.1/dns53_0.1.0-alpha.1_darwin-arm64.tar.gz"
      sha256 "77fe3f128385ba25835210b102e51c38ed4cf5fdc7e7372efc837cff8187c384"

      def install
        bin.install "dns53"

        bash_output = Utils.safe_popen_read(bin/"dns53", "completion", "bash")
        (bash_completion/"dns53").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"dns53", "completion", "zsh")
        (zsh_completion/"_dns53").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"dns53", "completion", "fish")
        (fish_completion/"dns53.fish").write fish_output

        man1.install "manpages/dns53.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/purpleclay/dns53/releases/download/v0.1.0-alpha.1/dns53_0.1.0-alpha.1_darwin-x86_64.tar.gz"
      sha256 "eee553d6ae31df2915ae5ea44886e12dc736040c53e22a2712024cfac06c3a98"

      def install
        bin.install "dns53"

        bash_output = Utils.safe_popen_read(bin/"dns53", "completion", "bash")
        (bash_completion/"dns53").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"dns53", "completion", "zsh")
        (zsh_completion/"_dns53").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"dns53", "completion", "fish")
        (fish_completion/"dns53.fish").write fish_output

        man1.install "manpages/dns53.1.gz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/purpleclay/dns53/releases/download/v0.1.0-alpha.1/dns53_0.1.0-alpha.1_linux-arm64.tar.gz"
      sha256 "593fcdfd7701aef1be43d2f8e7d07e959552e5280b5a0fb7c3110ae376620ee5"

      def install
        bin.install "dns53"

        bash_output = Utils.safe_popen_read(bin/"dns53", "completion", "bash")
        (bash_completion/"dns53").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"dns53", "completion", "zsh")
        (zsh_completion/"_dns53").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"dns53", "completion", "fish")
        (fish_completion/"dns53.fish").write fish_output

        man1.install "manpages/dns53.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/purpleclay/dns53/releases/download/v0.1.0-alpha.1/dns53_0.1.0-alpha.1_linux-x86_64.tar.gz"
      sha256 "acb52caf28ab450afdb352752b6c5b372e63cffc8fbc751d9c52cba95eb8f668"

      def install
        bin.install "dns53"

        bash_output = Utils.safe_popen_read(bin/"dns53", "completion", "bash")
        (bash_completion/"dns53").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"dns53", "completion", "zsh")
        (zsh_completion/"_dns53").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"dns53", "completion", "fish")
        (fish_completion/"dns53.fish").write fish_output

        man1.install "manpages/dns53.1.gz"
      end
    end
  end

  test do
    installed_version = shell_output("#{bin}/dns53 version --short 2>&1")
    assert_match "v#{version}", installed_version
  end
end
