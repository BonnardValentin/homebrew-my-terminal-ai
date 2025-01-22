class AiPlugin < Formula
    desc "A simple AI-powered terminal plugin"
    homepage "https://github.com/BonnardValentin/homebrew-my-terminal-ai"
    url "https://github.com/BonnardValentin/homebrew-my-terminal-ai/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "e9a34148222c6783400c4c91c32a46f802eb8280a8016bf9eb377a20618bc29b"
    license "MIT"
  
    depends_on "python@3.13" 
  
    def install
      bin.install "ai_plugin.py" => "ai-plugin"
    end
  
    test do
      output = shell_output("#{bin}/ai-plugin !!hello")
      assert_match "Hello, World!", output
    end
  end
  