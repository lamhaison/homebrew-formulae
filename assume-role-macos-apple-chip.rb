class AssumeRoleMacosAppleChip < Formula
  desc "Easily assume AWS roles in your terminal on MacOS Apple Chip(M1, M2)"
  homepage "https://github.com/lamhaison/assume-role"
  url "https://github.com/lamhaison/assume-role/releases/download/1.0.0/assume-role-macos-m1"
  version "1.0.0"
  sha256 "67492eb066ab37641ec518d85ded18c5ba7a633fe661031a560f851d60556b08"

  def install
    cp "assume-role-macos-m1", "assume-role"
    bin.install "assume-role"
  end

  test do
  end
end