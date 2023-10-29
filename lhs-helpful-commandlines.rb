# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class LhsHelpfulCommandlines < Formula
  desc "lhs helpful-commandlines for macos"
  homepage "https://github.com/lamhaison/helpful-commandlines"
  url "https://github.com/lamhaison/helpful-commandlines/archive/refs/tags/v1.5.0.tar.gz"
  sha256 "a7983a9eff6e823294aaf8ca8a73f1a096755dbeb90c060cc8ef43170c64e7e3"
  license "Apache-2.0"

  depends_on "jq"
  depends_on "peco"
  depends_on "gh"
  depends_on "glab"
  depends_on "tree"
  depends_on "curl"

  def caveats
    <<~EOS
      Add these lines to ~/.bashrc or ~/.zshrc or ~/.bash_profile
      source "$(which lhs-helpful-commandlines.sh)" "#{HOMEBREW_CELLAR}/lhs-helpful-commandlines/$(brew info lhs-helpful-commandlines | head -1 | awk -F "stable " '{print $2}')" "True" "True"
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
