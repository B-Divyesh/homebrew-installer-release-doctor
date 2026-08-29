class InstallerReleaseDoctor < Formula
  desc "Check installer artifacts before release channels reject them"
  homepage "https://installer-release-doctor.sociobot.in"
  version "0.1.2"
  license "MIT"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/B-Divyesh/sf-installer-release-doctor/releases/download/v0.1.2/release-doctor-v0.1.2-darwin-aarch64.tar.gz"
      sha256 "f1fe9addb085fe7a697274f7c0d5a04ad7a82d918da72fe7330712b55307d13b"
    else
      url "https://github.com/B-Divyesh/sf-installer-release-doctor/releases/download/v0.1.2/release-doctor-v0.1.2-darwin-x86_64.tar.gz"
      sha256 "bb294ae05c493e2de1ed423a1ffd8be3c05f3c692c66eacdc974e1d26ed01959"
    end
  end
  def install
    bin.install "release-doctor"
  end
  test do
    assert_match version.to_s, shell_output(bin/"release-doctor" + " --version")
  end
end
