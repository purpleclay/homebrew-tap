# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nsv < Formula
  desc "A convention-based semantic versioning tool that leans on the power of conventional commits to make versioning your software a breeze!"
  homepage "https://github.com/purpleclay/nsv"
  version "0.11.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/purpleclay/nsv/releases/download/v0.11.1/nsv_0.11.1_darwin_x86_64.tar.gz"
      sha256 "28ce622c507dcb2ccce20239b7f24b673eb41a1b9960d3d37a542b2b5c6bf221"

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
      url "https://github.com/purpleclay/nsv/releases/download/v0.11.1/nsv_0.11.1_darwin_arm64.tar.gz"
      sha256 "28ba8adc8fbf803c9611306c5cb095b29d3eeab57319709f0f129789b0190b65"

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
        url "https://github.com/purpleclay/nsv/releases/download/v0.11.1/nsv_0.11.1_linux_x86_64.tar.gz"
        sha256 "f083b335e0c4afeec97d30833c1e2bef30057f62c065a0675e645ac2a81eb551"

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
        url "https://github.com/purpleclay/nsv/releases/download/v0.11.1/nsv_0.11.1_linux_arm64.tar.gz"
        sha256 "01fdfd9fcacd0b3dee641b33295685fd891771edade3318ee20020cd323e2984"

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
