## Module Data.Chrono.Clock

#### `Clock`

``` purescript
type Clock m = m Instant
```

#### `SYSTEM_CLOCK`

``` purescript
data SYSTEM_CLOCK :: !
```

The effect of reading the system time.

#### `systemClock`

``` purescript
systemClock :: Clock (Eff (systemClock :: SYSTEM_CLOCK))
```


