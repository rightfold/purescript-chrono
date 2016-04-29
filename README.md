# purescript-chrono

A library for dealing with time.

## Concepts

| Concept               | Example                      | Operations                                                                 |
|-----------------------|------------------------------|----------------------------------------------------------------------------|
| Local date            | 23-12-1994 AD                | Convert to global datetime given time and time zone                        |
| Local time            | 13:37                        | Convert to global datetime given date and time zone                        |
| Local datetime        | 23-12-1994 AD 13:37          | Convert to global datetime given time zone                                 |
| Global datetime       | 23-12-1994 AD 13:37 UTC      | Convert to instant given leap second table                                 |
| Instant               | 8504354 s since epoch        | Convert to global datetime given time zone and leap second table           |
| Timezone              | UTC                          |                                                                            |
| Duration              | 99432 seconds                | Add to or subtract from eachother or instant                               |
| Period                | 2 months, 4 days             | Can be added to local and global datetime                                  |

Not all of these concepts have been implemented yet.

## Limitations

This library has some limitations:

 - Only the Gregorian calendar is supported.
 - Relativity is not considered.
