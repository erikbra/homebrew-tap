# typed: false
# frozen_string_literal: true

class Grate < Formula
    version "1.4.0"

    desc "grate - the SQL scripts migration runner"
    homepage "https://erikbra.github.io/grate/"
    license "MIT"

    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/erikbra/grate/releases/download/#{version}/grate-osx-osx.13-arm64-self-contained-#{version}.zip"
        sha256 "091b03b0d2a7c6b0146eeca6f05ffdc2cf337d5c67cf79557b2ce47554f6975c"
  
        def install
          bin.install "grate"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/erikbra/grate/releases/download/#{version}/grate-osx-x64-self-contained-#{version}.zip"
        sha256 "091b03b0d2a7c6b0146eeca6f05ffdc2cf337d5c67cf79557b2ce47554f6975c"
  
        def install
          bin.install "grate"
        end
      end
    end
  
    test do
      system "#{bin}/grate"
    end
  end