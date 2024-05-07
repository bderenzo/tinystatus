# Help

## Adding new services

Edit `checks.csv`.

## When incidents happen

To add incidents and maintenance, edit `incidents.txt`.

e.g)

```
2021/02/01 08:00 - Site unavailable. Resolved after 5 minutes of downtime.
2021/01/01 09:00 - User may have problem with API. Incident resolved after 1 hour.
```

## CI

On Github Action

1. clone this repo
2. run `tinystatus` command
3. commit code to `publish` branch (force push).
