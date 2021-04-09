# Tinystatus

tinystatus generate an html status page via shell script.

## Features

* Parallel checks
* HTTP, ping, port, dns checks
* HTTP expected status code (401, ...)
* Minimal dependencies (curl, nc, dig and coreutils)
* Easy configuration and customisation
* Incident history (manual)

## Demo

An example site is available [here](https://lab.bdro.fr/tinystatus/).

## Setup

To install tinystatus:

* Clone the repository and go to the created directory
* Edit the checks file `checks.csv`
* To add incidents or maintenance, edit `incidents.txt`
* Generate status page `./tinystatus > index.html`
* Serve the page with your favorite web server

## Configuration file

The syntax of `checks.csv` file is:
```
Command, Expected Code, Status Text, Host to check
```

Command can be:
* `http` - Check http status
* `ping` - Check ping status 
* `port` - Check open port status
* dns`  - Check dns status

There are also `http4`, `http6`, `ping4`, `ping6`, `port4`, `port6, dns4, dns6` for IPv4 or IPv6 only check.
Note: `port4` and `port6` require OpenBSD `nc` binary; dns4 and dns6 require Bind9 dig binary;
