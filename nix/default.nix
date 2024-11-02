{ lib, stdenv, nixpkgs, fetchurl }:
stdenv.mkDerivation (finalAttrs: {
  pname = "bibata-modern-classic-hyprcursor";
  version = "0.0.1";
  src = nixpkgs.fetchFromGitHub {
    owner = "bjsemrad";
    repo = "bibata-modern-classic-hyprcursor";
    rev = "d2c0e6802f0ed1e7c638bb27b5aa8587b578d083";
    sha256 = "sha256-ArUX5qlqAXUqcRqHz4QxXy3KgkfasTPA/Qwf6D2kV0U=";
  };

  installPhase = ''
    runHook preInstall

    mkdir -p $out/share/icons/bibata-modern-classic-hyprcursor
    cp -R . $out/share/icons/bibata-modern-classic-hyprcursor/
    
    runHook postInstall
  '';

  meta = with lib; {
    description = "Bibata Modern Classic Cursors";
    downloadPage = "https://github.com/bjsemrad/bibata-modern-classic-hyprcursor/releases";
    homepage = "https://github.com/bjsemrad/bibata-modern-classic-hyprcursor";
    license = licenses.gpl3;
    maintainers = with maintainers; [ bjsemrad ];
  };
})
