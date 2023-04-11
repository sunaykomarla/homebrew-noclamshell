class Noclamshell < Formula
  desc "Sleep despite annoying clamshell mode"
  homepage "https://github.com/pirj/noclamshell"
  url "https://github.com/pirj/noclamshell.git", tag: "1.3", revision: "df2b07dddd47a259d6306dfbb012f9f31b3df761"
  head "https://github.com/pirj/noclamshell.git", branch: "master"

  def install
    bin.install "noclamshell"
  end

  service do
    run opt_bin/"noclamshell"
    keep_alive true
    run_type :interval
    interval 1
  end

  test do
    system bin/"noclamshell"
  end
end
