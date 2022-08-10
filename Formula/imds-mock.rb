# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ImdsMock < Formula
  desc "Mock the Amazon Instance Metadata Service (IMDS) for EC2"
  homepage "https://github.com/purpleclay/imds-mock"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/purpleclay/imds-mock/releases/download/v0.2.0/imds-mock_0.2.0_darwin-arm64.tar.gz"
      sha256 "a2a9084dbaf27f28699c5d1d4117b8e79c68e60b4042000fb177cb51bd15f6ce"

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
      url "https://github.com/purpleclay/imds-mock/releases/download/v0.2.0/imds-mock_0.2.0_darwin-x86_64.tar.gz"
      sha256 "16f15b3b593176a8569e5b1bfecbd2a91e8002c1960e00079efb4859b3a92244"

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
    if Hardware::CPU.intel?
      url "https://github.com/purpleclay/imds-mock/releases/download/v0.2.0/imds-mock_0.2.0_linux-x86_64.tar.gz"
      sha256 "eb8efa3395396be000d40c54a6b1a17ce0caa2d08bba6d555b0f1d026887624b"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/purpleclay/imds-mock/releases/download/v0.2.0/imds-mock_0.2.0_linux-arm64.tar.gz"
      sha256 "ed9b33845a88dfc390844af75720e357418324ae900dc3a639992719edc1911b"

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
