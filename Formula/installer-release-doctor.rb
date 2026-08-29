class InstallerReleaseDoctor < Formula
  desc "Check installer artifacts before release channels reject them"
  homepage "https://installer-release-doctor.sociobot.in"
  version "0.1.2"
  license "MIT"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/B-Divyesh/sf-installer-release-doctor/releases/download/v0.1.2/release-doctor-v0.1.2-darwin-aarch64.tar.gz"
      sha256 "4b959e00c3ef5614ce0de6cf1a673cfb123f8ec5a5450e3f4d290490eecfd4b9"
    else
      url "https://github.com/B-Divyesh/sf-installer-release-doctor/releases/download/v0.1.2/release-doctor-v0.1.2-darwin-x86_64.tar.gz"
      sha256 "3286275a877d93e95e8bfc68aca6e6cfb388221fb94500bb2172e187381f35bb"
    end
  end
  def install
    bin.install "release-doctor"
  end
  test do
    assert_match version.to_s, shell_output(bin/"release-doctor" + " --version")
  end
end
