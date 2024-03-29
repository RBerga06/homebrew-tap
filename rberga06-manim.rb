class Rberga06Manim < Formula
  include Language::Python::Virtualenv

  desc "Community maintained Python library for creating mathematical animations"
  homepage "https://www.manim.community/"
  url "https://files.pythonhosted.org/packages/2d/bc/71ac84b665f2d2f0d77f52bacb367224e04f7e5c24536beadcdc9147a0c2/manim-0.18.0-py3-none-any.whl"
  sha256 "56f598c66292d78ef11c56af54e06cf5203b8e227b76563f60177a2b4fa36719"
  license "MIT"
  head "https://github.com/ManimCommunity/manim.git", branch: "main"

  # Build/Test dependencies
  depends_on "python@3.12" => [:build, :test]
  # Runtime dependencies
  depends_on "ffmpeg"
  depends_on "numpy"
  depends_on "pango"
  depends_on "pillow"
  depends_on "pkg-config"
  depends_on "py3cairo"
  depends_on "pygments"
  depends_on "python-click"
  depends_on "python-networkx"
  depends_on "python-setuptools"
  depends_on "scipy"
  # Optional dependencies
  depends_on "jupyterlab" => :optional

  def pythons
    deps.map(&:to_formula).sort_by(&:version).filter { |f| f.name.start_with?("python@") }
  end

  def install
    pythons.each do |python|
      python_exe = python.opt_libexec/"bin"/"python"
      pip_args = std_pip_args(prefix: libexec) - ["--no-deps", "--no-binary=:all:"]
      system python_exe, "-m", "pip", "install", *pip_args, "manim-0.18.0-py3-none-any.whl"

      # Add manim libexec to $PYTHONPATH
      site_packages = Language::Python.site_packages(python_exe)
      pth_contents = "import site; site.addsitedir('#{libexec/site_packages}')\n"
      (prefix/site_packages/"homebrew-rberga06-manim.pth").write pth_contents

      # Install versioned symlinks
      pyversion = Language::Python.major_minor_version(python_exe)
      bin.install libexec/"bin"/"manim" => "manim-#{pyversion}"
      next if python != pythons.max_by(&:version)

      # Install unversioned symlink
      bin.install_symlink "manim-#{pyversion}" => "manim"
    end
  end

  test do
    pythons.each do |python|
      python_exe = python.opt_libexec/"bin"/"python"
      system python_exe, "-c", "import manim"
    end
  end
end
