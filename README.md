# authpal

_At least it's something!_

A simple Docker container that adds basic auth to anything.

## overview

Authpal is a super simple way to add a layer of basic authentication to any web application or service. It's designed to be quick to set up and easy to use. While it might not be the most robust security solution, it's a step up from no authentication at all!

This ever so slightly extends the default `nginx` container to install htpasswd and then stuffs all the configuring needed into a lengthy `CMD`.

## get going

Check out the [example docker-compose.yml](docker-compose.yml) to see how it's done.

## acknowledgements

This is a spiritual successor of [xsc/nginx-sidecar-basic-auth](https://codeberg.org/xsc/nginx-sidecar-basic-auth) which worked just fine for 5 years but also hasn't been updated in that time lol