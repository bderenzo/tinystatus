# Tinystatus

tinystatus generate an html status page via shell script.

## Features

* Parallel checks
* HTTP, ping, port checks
* HTTP expected status code (401, ...)
* Minimal dependencies (curl, nc and coreutils)
* Easy configuration and customisation
* Incident history (manual)

## Demo

An example site is available [here](https://lab.bdro.fr/tinystatus/).

## Setup

To install tinystatus:

* Clone the repository and go to the created directory
* Edit the checks file `checks.csv`
* To add incidents or maintenance, edit `incidents.list`
* Generate status page `./tinystatus > index.html`
* Serve the page with your favorite web server

