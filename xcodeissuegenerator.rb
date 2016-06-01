class Xcodeissuegenerator < Formula
  desc "Generate issues for Xcode"
  homepage "https://github.com/doubleencore/XcodeIssueGenerator"
  url "https://github.com/doubleencore/XcodeIssueGenerator/archive/v0.5.2.tar.gz"
  sha256 "d0fd08c19f3a064692f27e1b68cbd0e2be7caec116e8036184b758712e72fefd"

  head "https://github.com/doubleencore/XcodeIssueGenerator.git"

  depends_on :xcode => :build
  depends_on :macos => :yosemite

  def install
    xcodebuild "-target", "XcodeIssueGenerator", "-configuration", "Release", "SYMROOT=symroot", "OBJROOT=objroot"
    bin.install "symroot/Release/XcodeIssueGenerator"
  end
end