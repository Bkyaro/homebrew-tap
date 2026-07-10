class Whatthegit < Formula
  desc "Understand a Git repository before reading its code"
  homepage "https://github.com/Bkyaro/whatthegit"
  url "https://github.com/Bkyaro/whatthegit/releases/download/v0.1.0/whatthegit-0.1.0.tar.gz"
  sha256 "fa15ad3195198b186cae827d106675fa25af7f1d72168933cfdb44834022e0cc"
  license "MIT"

  def install
    bin.install "whatthegit"
    bin.install_symlink "whatthegit" => "wtg"
  end

  test do
    assert_match "whatthegit 0.1.0", shell_output("#{bin}/wtg --version")
  end
end
