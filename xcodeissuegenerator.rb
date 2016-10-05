class Xcodeissuegenerator < Formula
  desc "Generate issues for Xcode"
  homepage "https://github.com/doubleencore/XcodeIssueGenerator"
  url "https://github.com/doubleencore/XcodeIssueGenerator/archive/v0.5.3.tar.gz"
  sha256 "1cedaf4384e50da73a83b02105b8b6f4aae6a035e7e9c448611b71bc030da981"

  head "https://github.com/doubleencore/XcodeIssueGenerator.git"

  depends_on :xcode => :build
  depends_on :macos => :yosemite

  def install
    xcodebuild "-target", "XcodeIssueGenerator", "-configuration", "Release", "SYMROOT=symroot", "OBJROOT=objroot"
    bin.install "symroot/Release/XcodeIssueGenerator"
  end
end
