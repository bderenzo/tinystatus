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
* Edit the checks file `checks.list`
* To add incidents or maintenance, edit `incidents.list`
* Generate status page `./tinystatus > index.html`
* Serve the page with your favorite web server

Checks.list Usage

Command | Code | Status Text | website, ip, etc. to check

Command list:
http4 - Check IPv4 website status
http6 - Check IPv6 website status
ping4 - Check IPv4 address
ping6 - Check IPv6 address
port4 - Check IPv4 status of port. Format name/ipv4 port
port6 - Check Ipv6 status of port. Format name/ipv6 port
