# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nsv < Formula
  desc "A convention-based semantic versioning tool that leans on the power of conventional commits to make versioning your software a breeze!"
  homepage "https://github.com/purpleclay/nsv"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/purpleclay/nsv/releases/download/v0.9.0/nsv_0.9.0_darwin_x86_64.tar.gz"
      sha256 "afc0cbc92e0b1f6b035d208239797fbb196674e99ea74d93fb2ce4ffb0f8052c"

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
    on_arm do
      url "https://github.com/purpleclay/nsv/releases/download/v0.9.0/nsv_0.9.0_darwin_arm64.tar.gz"
      sha256 "7274a73ed98980d7a1a8894d99bdb4e21ee9a2b8ca9eca90b9af5811bf57ef19"

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
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/purpleclay/nsv/releases/download/v0.9.0/nsv_0.9.0_linux_x86_64.tar.gz"
        sha256 "f39461dd6ccee83d1f01ee3dbe775e9cc37a6fa0c05546d4dc649612e6778bdb"

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
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/purpleclay/nsv/releases/download/v0.9.0/nsv_0.9.0_linux_arm64.tar.gz"
        sha256 "59d22311665745c3190a52317b5993b26f21a698f37d9020f708e32ce8017fc5"

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
  end

  test do
    installed_version = shell_output("#{bin}/nsv version --short 2>&1")
    assert_match "v#{version}", installed_version
  end
end
