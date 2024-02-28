# Pacman_PCC

Tato hra je zjednodušenou verzí Pacmana, jak bylo požadováno v zadání. Hra funguje na 3 vláknech bez externích knihoven v Linuxové konzoli.


## Start
Spuštění hry probíhá v Linuxové konzoli (pokud obraz není rovný, nastavte velikost konzole na 80*24, protože v některých systémech je pro změnu velikosti konzole vyžadována administrátorská oprávnění, tuto možnost jsem nepřidával).

Při spuštění hry, které probíhá spuštěním spustitelného souboru

``
./pacman_pcc
``

v adresáři

``
/build
``
## Instrukce
Nejprve budete vyzváni k zadání počtu bodů, které je potřeba sesbírat,
a počtu nepřátel, poté se hra spustí.

Stejně jako v původní hře je potřeba posbírat všechny body a když se hráč dotkne nepřítele, hráč prohraje

Ovládání hry je pomocí kláves
- `w` nahoru
- `a` vlevo
- `s` dolů
- `d` doprava

Klávesa `q` slouží k ukončení hry.

## Testování

Ve hře je implementován algoritmus náhodné generace úrovní a umístění nepřátel.

- Pro rychlé testování všech variant hry mohu doporučit
nastavit minimální počet nepřátel a maximální počet bodů - pro výhru.

- Pro prohru naopak maximální počet nepřátel.
