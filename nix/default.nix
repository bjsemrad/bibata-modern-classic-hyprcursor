{ lib, stdenv, nixpkgs, fetchurl }:
stdenv.mkDerivation (finalAttrs: {
  pname = "bibata-modern-classic-hyprcursor";
  version = "0.0.1";
  src = nixpkgs.fetchFromGitHub {
    owner = "bjsemrad";
    repo = "bibata-modern-classic-hyprcursor";
    rev = "993b44ef9b80643e18941c3ff1363bd3651dd5e5";
    sha256 = "11s78fy4bmjhajjj0ldjv7yi9cim5ymp5mrlkricm5vgdxsj03y9";
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
