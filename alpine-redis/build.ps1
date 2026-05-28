docker build `
  --add-host dimpt.site:10.100.240.25 `
  --provenance=false `
  -t dimpt.site:8180/platform/alpine-redis:6.2.22 `
  --push .