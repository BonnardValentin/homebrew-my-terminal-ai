class AiPlugin < Formula
    desc "A simple AI-powered terminal plugin"
    homepage "https://github.com/BonnardValentin/homebrew-my-terminal-ai"
    url "https://github.com/BonnardValentin/homebrew-my-terminal-ai/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "c39e915f843d8ad5e6eb06036f539607def220a9fa960708eb4021ec96a3e772"
    license "MIT"
  
    depends_on "python@3.13" # Adjust version if needed
  
    def install
      bin.install "ai_plugin.py" => "ai-plugin"
    end
  
    test do
      output = shell_output("#{bin}/ai-plugin !!hello")
      assert_match "Hello, World!", output
    end
  end
  