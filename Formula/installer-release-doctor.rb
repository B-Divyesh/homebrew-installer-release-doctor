class InstallerReleaseDoctor < Formula
  desc "Check installer artifacts before release channels reject them"
  homepage "https://installer-release-doctor.sociobot.in"
  version "0.1.3"
  license "MIT"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/B-Divyesh/sf-installer-release-doctor/releases/download/v0.1.3/release-doctor-v0.1.3-darwin-aarch64.tar.gz"
      sha256 "7baadecd3002570b83ced39b5c658d5c1c1203406e3dc86371b3134cd721f85d"
    else
      url "https://github.com/B-Divyesh/sf-installer-release-doctor/releases/download/v0.1.3/release-doctor-v0.1.3-darwin-x86_64.tar.gz"
      sha256 "141eb271cf3aa1b3efba98710f1b58ebe0dbe5fa63d84b252471aa1371aa5b1d"
    end
  end
  def install
    bin.install "release-doctor"
  end
  test do
    assert_match version.to_s, shell_output(bin/"release-doctor" + " --version")
  end
end
