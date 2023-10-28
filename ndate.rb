class Ndate < Formula
  desc "Date format to console"
  homepage "https://github.com/JonDotsoy/ndate/tree/v0.3.0#readme"
  url "https://github.com/JonDotsoy/ndate/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  license "MIT"

  depends_on "deno"

  def install
    system "deno", "compile", "--allow-env=TZ,LANG", "ndate.ts"
    bin.install "ndate" => "ndate"
  end

  test do
    system "false"
  end
end
