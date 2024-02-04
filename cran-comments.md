## Resubmission

This resubmission fixes reverse dependencies in himach and BeeBCD packages. It should passes revdep checks now.

## New maintainer

Hi,

I am one of the maintainers for the rnaturalearth packages
(https://github.com/ropensci/rnaturalearth). If you work in the spatial domain,
you're likely aware that certain spatial packages, such as raster, rgdal,
regos, etc., have been archived (see
https://geocompx.org/post/2023/rgdal-retirement/).

As a result, we migrated rnaturalearth to v1.0.0, which now utilizes modern
interfaces (sf and terra). Additionally, rnaturalearth relies on
rnaturealearthdata (https://github.com/ropensci/rnaturalearthdata), essentially
a data package. I've made all the necessary changes to rnaturalearthdata to
incorporate sf and terra.

The current challenge we face is that, as an author of the package, I am unable
to submit it to CRAN. Despite attempting to reach out to the creator through
GitHub and email months ago, I have not received any response. I don't believe
the person is acting in bad faith; rather, they seem to be less actively
involved in the library's development.

We've received several inquiries from users regarding the release date of
rnaturalearthdata v1.0.0 on CRAN
(https://github.com/ropensci/rnaturalearthdata/issues/11#issuecomment-1916449085).
At this point, I'm unsure of how to proceed. I have added myself as a "cre" in
the description file. Please let me know if this is the right approach or if I
can do anything else.

## revdepcheck results

We checked 18 reverse dependencies (13 from CRAN + 5 from Bioconductor), comparing R CMD check results across CRAN and dev versions of this package.

- We saw 0 new problems
- We failed to check 0 packages

## R CMD check results

- The package was tested on:

  - os: macos-latest with r: 'release'
  - os: windows-latest with r: 'release'
  - os: ubuntu-latest with r: 'devel'
  - os: ubuntu-latest with r: 'release'
  - os: ubuntu-latest with r: 'oldrel-1'

- The package was tested on rhub and on winbuilder.

- There were no notes.
