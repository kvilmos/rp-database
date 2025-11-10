# Room Planner Adatbázis

Ez a repository tartalmazza a "Room Planner" alkalmazás adatbázisának beállításához és kezeléséhez szükséges fájlokat. A beállítást Docker és Flyway segítségével lehet elvégezni.

## Előfeltételek

Mielőtt elkezdenéd, győződj meg róla, hogy a következő eszközök telepítve vannak a gépeden:

- [Docker](https://www.docker.com/products/docker-desktop/)
- [Flyway (parancssori eszköz)](https://flywaydb.org/documentation/usage/commandline/)

## Telepítés és Futtatás

Kövesd az alábbi lépéseket az adatbázis elindításához és beállításához.

### 1. Adatbázis indítása

A projekt gyökerében add ki a következő parancsot egy terminálban. Ez elindítja a MariaDB adatbázis konténert a háttérben.

```bash
docker-compose up -d
```

A parancs a `docker-compose.yml` fájl alapján létrehoz egy `room-planner` nevű adatbázist. Az adatbázis a helyi gépen a `3306`-os porton lesz elérhető.

### 2. Adatbázis séma létrehozása (Migráció)

Miután az adatbázis konténer elindult, futtasd a Flyway migrációt. Ez a parancs lefuttatja az `sql` mappában található összes verziózott SQL szkriptet, és létrehozza a szükséges táblákat és sémákat.

```bash
flyway migrate
```

A Flyway a `flyway.conf` fájlban megadott adatokkal fog csatlakozni az adatbázishoz.

**Kész!** Az adatbázisod most már készen áll és a legfrissebb sémával rendelkezik.

---

## Hasznos parancsok

### Adatbázis konténer leállítása

Ha le szeretnéd állítani az adatbázis konténert, használd a következő parancsot:

```bash
docker-compose down
```

### Adatbázis séma törlése (Clean)

Ha teljesen törölni szeretnéd az adatbázisban lévő összes objektumot (táblákat, nézeteket stb.), a `clean` parancsot használhatod. **Figyelem: Ez a művelet adatvesztéssel jár!**

```bash
flyway clean
```

### Migrációs állapot ellenőrzése

Megnézheted, hogy mely migrációk futottak le sikeresen és melyek várakoznak.

```bash
flyway info
```
