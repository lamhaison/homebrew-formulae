# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class LhsHelpfulCommandlinesLinux < Formula
  desc "lhs helpful-commandlines for linux"
  homepage "https://github.com/lamhaison/helpful-commandlines"
  url "https://github.com/lamhaison/helpful-commandlines/archive/refs/tags/v1.4.0.tar.gz"
  sha256 "91bf7eafd839c9c770deab5226e6655a2b097d0dd2d3666a6221fed0c253ad86"
  license "Apache-2.0"

  depends_on "jq"
  depends_on "peco"
  depends_on "gh"
  depends_on "glab"

  def caveats
    <<~EOS
      Add these lines to ~/.bashrc or ~/.zshrc or ~/.bash_profile
      source "$(which lhs-helpful-commandlines.sh)" "#{HOMEBREW_CELLAR}/lhs-helpful-commandlines-linux/$(brew info lhs-helpful-commandlines-linux | head -1 | awk -F "stable " '{print $2}')" "${HOME}" "False"
    EOS
  end

  def install
    cp "main.sh", "lhs-helpful-commandlines.sh"
    bin.install 'lhs-helpful-commandlines.sh'
    bin.install Dir["common"]
    bin.install Dir["services"]
    prefix.install "README.md"
    # prefix.install "LICENSE"

  end



end
