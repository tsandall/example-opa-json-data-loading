# 💻 Example: OPA command-line JSON data loading

This repository contains a small example that shows how to load external JSON
data into OPA via the command-line.

## Example

```bash
opa run -s -b . --set=decision_logs.console=true --log-format=json-pretty
```

Inside another terminal:

```bash
# Response is 'true' (allowed).
curl http://localhost:8181 -X POST -d @input.json

# Response is 'false' (denied).
curl http://localhost:8181 -X POST -d @denied.json
```

You can also evaluate the same policy on the command-line:

```bash
opa eval -f pretty -b . -i input.json 'data.system.main = x'
opa eval -f pretty -b . -i denied.json 'data.system.main = x'
```