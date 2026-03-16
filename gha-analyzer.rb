class GhaAnalyzer < Formula
  desc "Deprecated: renamed to otel-analyzer"
  homepage "https://github.com/stefanpenner/otel-analyzer"
  version "0.2.0"
  license ""

  depends_on "stefanpenner/tap/otel-analyzer"

  def install
    # This formula is a redirect to otel-analyzer
    ohai "gha-analyzer has been renamed to otel-analyzer"
    ohai "Run: brew install stefanpenner/tap/otel-analyzer"
  end

  def caveats
    <<~EOS
      gha-analyzer has been renamed to otel-analyzer.
      Please use: brew install stefanpenner/tap/otel-analyzer
    EOS
  end
end
