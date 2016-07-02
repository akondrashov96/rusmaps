[![Travis-CI Build Status](https://travis-ci.org/akondrashov96/rusmaps.svg?branch=master)](https://travis-ci.org/akondrashov96/rusmaps)

rusmaps v.0.5.0
===============

Пакет R `rusmaps` предназначен для визуализации экономических и статистических данных и содержит в себе наборы данных в формате .rda, представляющие из себя `SpatialPolygonDataFrame` и `SpatialPointDataFrame` с данными о границах регионов России разного административного уровня. Границы административных округов городов получены с помощью QGIS и данных OpenStreetMap. Для границ федеральных округов и субъектов Федерации использовались карты с
http://gis-lab.info/qa/osm-adm.html.

Чтобы установить пакет, нужно воспользоваться следующими командами:
```r
install.packages("devtools")
devtools::install_github("akondrashov96/rusmaps")
```

Далее, пакет можно подключить командой:
```r
library(rusmaps)
```

Чтобы просмотреть, какие регионы есть в пакете, можно вызвать объект rusmaps.dataframe.
```r
rusmaps.dataframe
```
В первом столбце будут указаны имена объектов `Spatial*DataFrame`

Ещё пример: если ввести:
```r
plot(Moscow)
```
Мы получим изображение границ административных округов Москвы. Также данные можно использовать с `ggplot2` и `ggmap`.

Планы:
- [ ] Добавить инструкцию для визуализации данных
- [ ] инструкция по добавлению
- [ ] может поместить в отдельный список все объекты?

### English translation:

rusmaps is an R package designed for visualisation of economic and statistical data on maps. The package includes several datasets, which are represented as SpatialPolygonDataFrame and SpatialPointDataFrame objects. These objects contain data of administrative boundaries of several Russian territories (namely, Federal Districts, Federal subjects, districts of cities with over 1mil population). Mapdata(c)OpenStreetMap.

To install the package:
```r
install.packages("devtools")
devtools::install_github("akondrashov96/rusmaps")
```

Add package as library:
```r
library(rusmaps)
```

Usage example:
```r
plot(Moscow)
```
