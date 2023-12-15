# rnaturalearthdata 1.0.0

## Breaking changes

This release introduces breaking changes by discontinuing support for the `sp` object in favor of `sf`. Although the `sp` object is still available on CRAN, it is no longer being actively developed (https://geocompx.org/post/2023/rgdal-retirement/). This is the main reason that prompted the decision to transition to `sf`.

Here is the list of affected objects that are now returned as Spatial Feature (`sf`):

| coastline110      | world coastlines from Natural Earth               |
| ----------------- | ------------------------------------------------- |
| coastline50       | world coastlines from Natural Earth               |
| countries110      | world country polygons from Natural Earth         |
| countries50       | world country polygons from Natural Earth         |
| map_units110      | world map_unit polygons from Natural Earth        |
| map_units50       | world map_unit polygons from Natural Earth        |
| sovereignty110    | world sovereignty polygons from Natural Earth     |
| sovereignty50     | world sovereignty polygons from Natural Earth     |
| states50          | state (admin level 1) polygons from Natural Earth |
| tiny_countries110 | tiny countries points from Natural Earth          |
| tiny_countries50  | tiny countries points from Natural Earth          |

If changing the return type to `sf` causes too many issues with your existing code, you can still convert it back to `sp`.

```
# option 1
sf::as_Spatial(x)


# option 2
as(x, "Spatial")
```

More information about the retirement of `rgdal`, `rgeos` and `maptools`: https://r-spatial.org/r/2022/04/12/evolution.html

# rnaturalearthdata 0.2.1 2023-03-06

- update data to [Natural Earth v5.1.2](https://github.com/nvkelso/natural-earth-vector/blob/master/CHANGELOG).

- add github action to automate data updates

# rnaturalearthdata 0.2.0

- update data to new version [Natural Earth v4.1](https://www.naturalearthdata.com/blog/miscellaneous/natural-earth-v4-1-0-release-notes/) released May 2018.

# rnaturalearthdata 0.1.0 CRAN

- Initial release
