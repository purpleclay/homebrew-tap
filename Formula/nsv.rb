# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nsv < Formula
  desc "A convention-based semantic versioning tool that leans on the power of conventional commits to make versioning your software a breeze!"
  homepage "https://github.com/purpleclay/nsv"
  version "0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/purpleclay/nsv/releases/download/v0.12.0/nsv_0.12.0_darwin_x86_64.tar.gz"
      sha256 "c8ba89af890ff1e2801f1e0fdee4f8b179b2fb821c8ff127ced27e19b5639458"

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
      url "https://github.com/purpleclay/nsv/releases/download/v0.12.0/nsv_0.12.0_darwin_arm64.tar.gz"
      sha256 "56ec2699e546b9d3dbf0bb93955282ea1de55e32c31f6211d8accb159daf7d47"

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
      if Hardware::CPU.is_64_bit?
        url "https://github.com/purpleclay/nsv/releases/download/v0.12.0/nsv_0.12.0_linux_x86_64.tar.gz"
        sha256 "f2052023985244d5426db5aba9367ce23cebe9e2f5763119d08b7d7d9022a097"

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
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/purpleclay/nsv/releases/download/v0.12.0/nsv_0.12.0_linux_arm64.tar.gz"
        sha256 "9b94d666f3decb21f90ec4b1d1d95471da121879d11318862132e8eab0d91dc9"

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
