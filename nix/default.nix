{ lib, stdenv, nixpkgs, fetchurl }:
stdenv.mkDerivation (finalAttrs: {
  pname = "bibata-modern-classic-hyprcursor";
  version = "0.0.1";
  src = nixpkgs.fetchFromGitHub {
    owner = "bjsemrad";
    repo = "bibata-modern-classic-hyprcursor";
    rev = "993b44ef9b80643e18941c3ff1363bd3651dd5e5";
    sha256 = "sha256-73h+mQuKQ5++mdV1evcJCgWq7nsD0kH2HIUf7iK20sk=";
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
