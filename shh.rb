class Shh < Formula
  desc "Encrypted .env files with age + sops, keys in macOS Keychain"
  homepage "https://github.com/stefanpenner/shh"
  url "https://github.com/stefanpenner/shh.git",
    tag:      "v0.1.0",
    revision: "072ca2fe32e349ccba2dde41a9d8e04db925a617"
  license "MIT"
  head "https://github.com/stefanpenner/shh.git", branch: "main"

  depends_on "go" => :build
  depends_on "age"
  depends_on "sops"

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "-o", bin/"shh", "."
  end

  test do
    assert_match "Usage: shh", shell_output("#{bin}/shh help")
  end
end
