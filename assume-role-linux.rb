class AssumeRoleLinux < Formula
  desc "Easily assume AWS roles in your terminal on linux"
  homepage "https://github.com/remind101/assume-role"
  url "https://github.com/remind101/assume-role/releases/download/0.3.1/assume-role-linux"
  version "0.3.1"
  sha256 "fcd0b887868b2b4b576c7e0a15f15c29ef5732cd8a613b43c8288111cf9bd605"

  def install
    cp "assume-role-linux", "assume-role"
    bin.install "assume-role"
  end

  test do
  end
end