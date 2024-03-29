# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ImdsMock < Formula
  desc "Easy mocking of the Amazon EC2 Instance Metadata Service (IMDS)"
  homepage "https://github.com/purpleclay/imds-mock"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/purpleclay/imds-mock/releases/download/v0.3.1/imds-mock_0.3.1_darwin-x86_64.tar.gz"
      sha256 "1d68103f0113c5e2ff008f6631ec6720165f8fbe86c7f36e94a3afa999d50399"

      def install
        bin.install "imds-mock"

        bash_output = Utils.safe_popen_read(bin/"imds-mock", "completion", "bash")
        (bash_completion/"imds-mock").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"imds-mock", "completion", "zsh")
        (zsh_completion/"_imds-mock").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"imds-mock", "completion", "fish")
        (fish_completion/"imds-mock.fish").write fish_output

        man1.install "manpages/imds-mock.1.gz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/purpleclay/imds-mock/releases/download/v0.3.1/imds-mock_0.3.1_darwin-arm64.tar.gz"
      sha256 "72dcdd1b2dcfd835ead9bd6d03e602a40003a6a45f1a9f06d5836b89b8ac139e"

      def install
        bin.install "imds-mock"

        bash_output = Utils.safe_popen_read(bin/"imds-mock", "completion", "bash")
        (bash_completion/"imds-mock").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"imds-mock", "completion", "zsh")
        (zsh_completion/"_imds-mock").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"imds-mock", "completion", "fish")
        (fish_completion/"imds-mock.fish").write fish_output

        man1.install "manpages/imds-mock.1.gz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/purpleclay/imds-mock/releases/download/v0.3.1/imds-mock_0.3.1_linux-arm64.tar.gz"
      sha256 "16a3018238b78a394ca85a9ead2b0f78ab8ab36fe850bc5e18778def4bbc6b37"

      def install
        bin.install "imds-mock"

        bash_output = Utils.safe_popen_read(bin/"imds-mock", "completion", "bash")
        (bash_completion/"imds-mock").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"imds-mock", "completion", "zsh")
        (zsh_completion/"_imds-mock").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"imds-mock", "completion", "fish")
        (fish_completion/"imds-mock.fish").write fish_output

        man1.install "manpages/imds-mock.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/purpleclay/imds-mock/releases/download/v0.3.1/imds-mock_0.3.1_linux-x86_64.tar.gz"
      sha256 "e15e9c3856d882012908f17404176bcc9ba634f00128d67cbd99ea77c4a7542d"

      def install
        bin.install "imds-mock"

        bash_output = Utils.safe_popen_read(bin/"imds-mock", "completion", "bash")
        (bash_completion/"imds-mock").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"imds-mock", "completion", "zsh")
        (zsh_completion/"_imds-mock").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"imds-mock", "completion", "fish")
        (fish_completion/"imds-mock.fish").write fish_output

        man1.install "manpages/imds-mock.1.gz"
      end
    end
  end

  test do
    installed_version = shell_output("#{bin}/imds-mock version --short 2>&1")
    assert_match "v#{version}", installed_version
  end
end
