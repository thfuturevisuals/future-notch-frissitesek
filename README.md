# Future Notch – kiadások

Itt vannak a Future Notch (a The Future Visuals notch-appja Macre) kész verziói és a frissítési csatorna.
A forráskód privát repóban van.

## Telepítés

A Terminálba másold be ezt az egy sort:

```
curl -fsSL https://raw.githubusercontent.com/thfuturevisuals/future-notch-frissitesek/main/install.sh | bash
```

Letölti a legújabb verziót, ellenőrzi, az Alkalmazások mappába teszi és elindítja. Utána a program magától
frissül.

- macOS 14 (Sonoma) vagy újabb, Apple Silicon (M-sorozatú) Mac.
- Ha a Boring Notch vagy a NotchNook is fut, abból lépj ki, mert ugyanazt a notchot használják.
- Első indításkor a funkciók maguktól kérik az engedélyeket (naptár, kamera, Bluetooth, Kisegítő lehetőségek a
  hangerő/fényerő kijelzőhöz). Amit nem engedélyezel, csak az a funkció nem működik.

## Fájlok

- `appcast.xml` – a frissítési csatorna (Sparkle)
- `latest.json`, `install.sh` – a telepítőhöz
- `FutureNotch-<verzió>-<build>.zip` – az aláírt alkalmazás (a legutóbbi három)
