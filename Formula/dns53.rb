# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dns53 < Formula
  desc "Dynamic DNS within Amazon Route53. Expose your EC2 quickly, easily and privately"
  homepage "https://github.com/purpleclay/dns53"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/purpleclay/dns53/releases/download/v0.4.0/dns53_0.4.0_darwin-x86_64.tar.gz"
      sha256 "437e87e96236f7161c1e317d2d27bf6e41e40422f839fb1e6a3f80b17020a70b"

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
    if Hardware::CPU.arm?
      url "https://github.com/purpleclay/dns53/releases/download/v0.4.0/dns53_0.4.0_darwin-arm64.tar.gz"
      sha256 "af0e72f618c7d996baceb8e85801606c2968af605a5c722809444360d517b56d"

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
      url "https://github.com/purpleclay/dns53/releases/download/v0.4.0/dns53_0.4.0_linux-arm64.tar.gz"
      sha256 "36229f167057dd6568ce459f5d8b33d63eb37368bb8b85c56d4d77b37a2303a3"

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
      url "https://github.com/purpleclay/dns53/releases/download/v0.4.0/dns53_0.4.0_linux-x86_64.tar.gz"
      sha256 "ef75b234991bd1ac291b5bb8b0edf08a5c5fee606193f804d7885101f9898ede"

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
