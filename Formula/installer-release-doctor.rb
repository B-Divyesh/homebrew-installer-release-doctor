class InstallerReleaseDoctor < Formula
  desc "Check installer artifacts before release channels reject them"
  homepage "https://installer-release-doctor.sociobot.in"
  version "0.1.1"
  license "MIT"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/B-Divyesh/sf-installer-release-doctor/releases/download/v0.1.1/release-doctor-v0.1.1-darwin-aarch64.tar.gz"
      sha256 "c52de2728ddd161a567f919826f00f5ed5e91a91f4138ca45aaba7b997949d96"
    else
      url "https://github.com/B-Divyesh/sf-installer-release-doctor/releases/download/v0.1.1/release-doctor-v0.1.1-darwin-x86_64.tar.gz"
      sha256 "c9ae54de1ac68c4cb40c8f3311f644e55e86d8a2ae9b3aa0291a5f4355291cad"
    end
  end
  def install
    bin.install "release-doctor"
  end
  test do
    assert_match version.to_s, shell_output(bin/"release-doctor" + " --version")
  end
end
