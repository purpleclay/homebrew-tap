# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nsv < Formula
  desc "A convention-based semantic versioning tool that leans on the power of conventional commits to make versioning your software a breeze!"
  homepage "https://github.com/purpleclay/nsv"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/purpleclay/nsv/releases/download/v0.2.1/nsv_0.2.1_darwin_arm64.tar.gz"
      sha256 "0ed19b32d21ba2c9229f2219682a54df07425a31fe2e943a2533e241ac3fbd3b"

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
    if Hardware::CPU.intel?
      url "https://github.com/purpleclay/nsv/releases/download/v0.2.1/nsv_0.2.1_darwin_x86_64.tar.gz"
      sha256 "a1a517fe8d68b1ecd19d92a922cb67be886c0130774813e6286487a4c45ba065"

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
      url "https://github.com/purpleclay/nsv/releases/download/v0.2.1/nsv_0.2.1_linux_x86_64.tar.gz"
      sha256 "4c1ee123ab778fa3733e83328d61282f47e28989434b837f6197c92aa369f5e7"

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
      url "https://github.com/purpleclay/nsv/releases/download/v0.2.1/nsv_0.2.1_linux_arm64.tar.gz"
      sha256 "a3e2d5b1de53338f1029e143280d5eac4360045044c41be7d7a36aa643123a39"

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
