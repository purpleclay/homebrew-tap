# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nsv < Formula
  desc "A convention-based semantic versioning tool that leans on the power of conventional commits to make versioning your software a breeze!"
  homepage "https://github.com/purpleclay/nsv"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/purpleclay/nsv/releases/download/v0.10.1/nsv_0.10.1_darwin_x86_64.tar.gz"
      sha256 "70baff74973bcf84fbba72237efffd9dd27c2db1fb2583c43711cdd408e50908"

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
      url "https://github.com/purpleclay/nsv/releases/download/v0.10.1/nsv_0.10.1_darwin_arm64.tar.gz"
      sha256 "127b0ecf29f25a391b5511b15dd4115597ce384827a20a29cfb653a032df036a"

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
        url "https://github.com/purpleclay/nsv/releases/download/v0.10.1/nsv_0.10.1_linux_x86_64.tar.gz"
        sha256 "2837b0b8e2655b147e61ce4ef3dc893b6f5248c415a04c348bf50a8c2e8e2b3a"

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
        url "https://github.com/purpleclay/nsv/releases/download/v0.10.1/nsv_0.10.1_linux_arm64.tar.gz"
        sha256 "5f752f33085fc4edfefbd37bbecc6ef9d93f529438b9bdbd3c1cf91dc71b5387"

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
