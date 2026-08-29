class InstallerReleaseDoctor < Formula
  desc "Check installer artifacts before release channels reject them"
  homepage "https://installer-release-doctor.sociobot.in"
  version "0.1.4"
  license "MIT"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/B-Divyesh/sf-installer-release-doctor/releases/download/v0.1.4/release-doctor-v0.1.4-darwin-aarch64.tar.gz"
      sha256 "1088bde4abe544a06c4e510eaa57700977aface07b0808f982b5120b241dedb5"
    else
      url "https://github.com/B-Divyesh/sf-installer-release-doctor/releases/download/v0.1.4/release-doctor-v0.1.4-darwin-x86_64.tar.gz"
      sha256 "5af2314ee0154973e500c4fee5863e1486596b0fa185e0d64fd6a521bcf3e390"
    end
  end
  def install
    bin.install "release-doctor"
  end
  test do
    assert_match version.to_s, shell_output(bin/"release-doctor" + " --version")
  end
end
