# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class AwsCliUtils < Formula
  desc "aws-cli-utils"
  homepage "https://github.com/lamhaison/aws-cli-utils"
  url "https://github.com/lamhaison/aws-cli-utils/archive/refs/tags/v1.10.1.tar.gz"
  sha256 "8303280a9afd75b0379c9855125df1af091ea53374fd67046a735acc4880febf"
  license "Apache-2.0"

  depends_on "jq"
  depends_on "peco"
  depends_on "remind101/formulae/assume-role"

  def caveats
    <<~EOS
      Add these lines to ~/.bashrc or ~/.zshrc or ~/.bash_profile
      source "$(which aws-cli-utils.sh)" "#{HOMEBREW_CELLAR}/aws-cli-utils/$(brew info aws-cli-utils | head -1 | awk -F "stable " '{print $2}')" "${HOME}" "True"
    EOS
  end

  def install
    system "make", "install"
    cp "main.sh", "aws-cli-utils.sh"
    bin.install 'aws-cli-utils.sh'
    bin.install Dir["common"]
    bin.install Dir["services"]
    prefix.install "README.md"
    prefix.install "LICENSE"

  end



end
