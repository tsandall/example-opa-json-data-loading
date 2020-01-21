package system

import data.entitlements

main = allow

# By default 'allow' is false.
default allow = false

# 'allow' is true if...
allow = true {
    some e
    e = entitlements[input.app][_]   # some entitlement 'e' for 'input.app', and...
    e.action = input.action          # action matches, and...
    e.resource = input.resource      # resource matches, and...
    e.subject = input.subject        # subject matches.
}