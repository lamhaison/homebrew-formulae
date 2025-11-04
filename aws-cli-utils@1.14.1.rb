class AwsCliUtilsAT1141 < Formula
  desc "aws-cli-utils"
  homepage "https://github.com/lamhaison/aws-cli-utils"
  url "https://github.com/lamhaison/aws-cli-utils/archive/refs/tags/v1.14.1.tar.gz"
  sha256 "0c9f2a8175d2e5ef9b0a272117b509e87594039e6e5ea51e85c8914990d7afa5"
  license "Apache-2.0"

  depends_on "jq"
  depends_on "peco"

  def caveats
    <<~EOS
      Add these lines to ~/.bashrc or ~/.zshrc or ~/.bash_profile:
      source "$(which aws-cli-utils.sh)" "#{HOMEBREW_CELLAR}/aws-cli-utils@1.14/$(brew info aws-cli-utils@1.14 | head -1 | awk -F "stable " '{print $2}')/bin" "${HOME}" "True"
    EOS
  end

  def install
    system "make", "install"
    cp "main.sh", "aws-cli-utils.sh"
    bin.install "aws-cli-utils.sh"
    bin.install Dir["common"]
    bin.install Dir["services"]
    prefix.install "README.md", "LICENSE"
  end
end
