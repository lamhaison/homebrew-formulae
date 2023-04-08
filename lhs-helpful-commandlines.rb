# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class LhsHelpfulCommandlines < Formula
  desc ""
  homepage "https://github.com/lamhaison/helpful-commandlines"
  url "https://github.com/lamhaison/helpful-commandlines/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "c87ebda0ac2da5acf0d84b2c00b58df9d498cdf38134b7f5ee21b511e5527305"
  license "Apache-2.0"

  depends_on "jq"
  depends_on "peco"
  depends_on "gh"
  depends_on "glab"

  def caveats
    <<~EOS
      Add these lines to ~/.bashrc or ~/.zshrc or ~/.bash_profile
      source "$(which lhs-helpful-commandlines.sh)" "#{HOMEBREW_CELLAR}/lhs-helpful-commandlines/$(brew info lhs-helpful-commandlines | head -1 | awk -F "stable " '{print $2}')" "${HOME}" "True"
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
