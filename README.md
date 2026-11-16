# Future Notch – kiadások

Itt vannak a Future Notch (a The Future Visuals notch-appja Macre) kész verziói és a frissítési csatorna.
A forráskód privát repóban van.

## Telepítés

**Telepítővel:** töltsd le a [FutureNotch-Telepito.pkg](https://github.com/thfuturevisuals/future-notch-frissitesek/raw/main/FutureNotch-Telepito.pkg)
fájlt, és nyisd meg dupla kattintással. Az első megnyitáskor a macOS figyelmeztet, mert a csomag a cég saját
aláírásával készül, nem az Apple-ével. Ilyenkor kattints a Kész gombra, menj a **Rendszerbeállítások → Adatvédelem
és biztonság** oldalra, és ott alul válaszd a **Megnyitás mindenképp** lehetőséget. Ezt csak egyszer kell.

**Vagy a Terminállal** (itt nincs figyelmeztetés), másold be ezt az egy sort:

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
