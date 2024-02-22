# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nsv < Formula
  desc "A convention-based semantic versioning tool that leans on the power of conventional commits to make versioning your software a breeze!"
  homepage "https://github.com/purpleclay/nsv"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/purpleclay/nsv/releases/download/v0.7.0/nsv_0.7.0_darwin_x86_64.tar.gz"
      sha256 "32b88c75812b22f64e641fc754e68e167994533f8f4bc14cb7fbe0587fb11f5b"

      def install
        bin.install "nsv"

        bash_output = Utils.safe_popen_read(bin/"nsv", "completion", "bash")
        (bash_completion/"nsv").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"nsv", "completion", "zsh")
        (zsh_completion/"_nsv").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"nsv", "completion", "fish")
        (fish_completion/"nsv.fish").write fish_output

        man1.install "manpages/nsv.1.gz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/purpleclay/nsv/releases/download/v0.7.0/nsv_0.7.0_darwin_arm64.tar.gz"
      sha256 "8cc1b8222104f660f4bbef92fba96efa371fb468371fb68099a4be06a277a90d"

      def install
        bin.install "nsv"

        bash_output = Utils.safe_popen_read(bin/"nsv", "completion", "bash")
        (bash_completion/"nsv").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"nsv", "completion", "zsh")
        (zsh_completion/"_nsv").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"nsv", "completion", "fish")
        (fish_completion/"nsv.fish").write fish_output

        man1.install "manpages/nsv.1.gz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/purpleclay/nsv/releases/download/v0.7.0/nsv_0.7.0_linux_x86_64.tar.gz"
      sha256 "3f6fd1631fdd4fbda4e7afe4cef3c8a2af6d6d77265fe5136e866bce21099cf8"

      def install
        bin.install "nsv"

        bash_output = Utils.safe_popen_read(bin/"nsv", "completion", "bash")
        (bash_completion/"nsv").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"nsv", "completion", "zsh")
        (zsh_completion/"_nsv").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"nsv", "completion", "fish")
        (fish_completion/"nsv.fish").write fish_output

        man1.install "manpages/nsv.1.gz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/purpleclay/nsv/releases/download/v0.7.0/nsv_0.7.0_linux_arm64.tar.gz"
      sha256 "9b23650321dbf5a0ee811ebad5e214f3e51122c7ffab52a790ff91d1a501b4cb"

      def install
        bin.install "nsv"

        bash_output = Utils.safe_popen_read(bin/"nsv", "completion", "bash")
        (bash_completion/"nsv").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"nsv", "completion", "zsh")
        (zsh_completion/"_nsv").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"nsv", "completion", "fish")
        (fish_completion/"nsv.fish").write fish_output

        man1.install "manpages/nsv.1.gz"
      end
    end
  end

  test do
    installed_version = shell_output("#{bin}/nsv version --short 2>&1")
    assert_match "v#{version}", installed_version
  end
end
