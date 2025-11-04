class AwsCliUtils < Formula
  desc "aws-cli-utils"
  homepage "https://github.com/lamhaison/aws-cli-utils"
  url "https://github.com/lamhaison/aws-cli-utils/archive/refs/tags/v1.14.0.tar.gz"
  sha256 "c8b3c62e853fd007604fcf4a5efd348d5181c9971c1943163e50620da0158ca7"
  license "Apache-2.0"

  depends_on "jq"
  depends_on "peco"

  def caveats
    <<~EOS
      Add these lines to ~/.bashrc or ~/.zshrc or ~/.bash_profile:
      source "$(which aws-cli-utils.sh)" "#{HOMEBREW_CELLAR}/aws-cli-utils/$(brew info aws-cli-utils | head -1 | awk -F "stable " '{print $2}')/bin" "${HOME}" "True"
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
