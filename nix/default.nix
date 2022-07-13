let
  pkgs = import <nixpkgs> { overlays = [ (import ./overlays.nix) ]; };
in
pkgs.stdenv.mkDerivation rec {
  name = "olive";
  version = "master-13072022";

  src = pkgs.fetchFromGitHub {
    owner = "olive-editor";
    repo = "olive";
    rev = "a6d1ec99a896c7f6b77cb0b12416a7ff95bc58f3";
    sha256="sha256-fVKhpAsycRNwhkqInnXpFC3IUZTvS/nVsV+iJHFUGPw=";
  };
  
  nativeBuildInputs = with pkgs; [
    cmake
    libsForQt5.qt5.wrapQtAppsHook
  ];

  buildInputs = with pkgs; [
    libGL
    ffmpeg-full
    qt5Full
    openimageio2
    opencolorio
    portaudio
    imath
    ilmbase
    openexr
    zlib
  ];

  meta = {
    description = "Professional open-source NLE video editor";
    homepage = "https://www.olivevideoeditor.org/";
    downloadPage = "https://www.olivevideoeditor.org/download.php";
  };
  
}
