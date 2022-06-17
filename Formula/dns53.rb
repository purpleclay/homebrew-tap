# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dns53 < Formula
  desc "Dynamic DNS within Amazon Route53. Expose your EC2 quickly, easily and privately"
  homepage "https://github.com/purpleclay/dns53"
  version "0.1.0-alpha.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/purpleclay/dns53/releases/download/v0.1.0-alpha.2/dns53_0.1.0-alpha.2_darwin-arm64.tar.gz"
      sha256 "b6c1507ed854ad13e2a507100ed6154793917d0d237562b277e0ea96baf7d5cd"

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
      url "https://github.com/purpleclay/dns53/releases/download/v0.1.0-alpha.2/dns53_0.1.0-alpha.2_darwin-x86_64.tar.gz"
      sha256 "d4fe203cc8917dac989411d47b1f2171e4da91e061e21e116d9612d801527680"

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
    if Hardware::CPU.intel?
      url "https://github.com/purpleclay/dns53/releases/download/v0.1.0-alpha.2/dns53_0.1.0-alpha.2_linux-x86_64.tar.gz"
      sha256 "d4397ab93d8f0fb7450a3cd31eb240403f8f6b1950ab027c94e39a3d226db36e"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/purpleclay/dns53/releases/download/v0.1.0-alpha.2/dns53_0.1.0-alpha.2_linux-arm64.tar.gz"
      sha256 "3a6787ac9f91991b4a5c7ab2f79d99b0a301330f3eda6af6adb7a0a5dd040be9"

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
