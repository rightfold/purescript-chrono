## Module Data.Chrono

`Data.Chrono` implements a versatile time library.

`Data.Chrono` has some limitations:

 - Only the Gregorian calendar is supported.
 - Relativity is not considered.


### Re-exported from Data.Chrono.Arithmetic:

#### `durationAddDuration`

``` purescript
durationAddDuration :: Duration -> Duration -> Duration
```

#### `durationAddInstant`

``` purescript
durationAddInstant :: Duration -> Instant -> Instant
```

#### `durationDivDuration`

``` purescript
durationDivDuration :: Duration -> Duration -> Number
```

#### `durationDivNumber`

``` purescript
durationDivNumber :: Duration -> Number -> Duration
```

#### `durationMulNumber`

``` purescript
durationMulNumber :: Duration -> Number -> Duration
```

#### `durationSubDuration`

``` purescript
durationSubDuration :: Duration -> Duration -> Duration
```

#### `instantAddDuration`

``` purescript
instantAddDuration :: Instant -> Duration -> Instant
```

#### `instantSubDuration`

``` purescript
instantSubDuration :: Instant -> Duration -> Instant
```

#### `instantSubInstant`

``` purescript
instantSubInstant :: Instant -> Instant -> Duration
```

#### `(!+~)`

``` purescript
infixl 6 instantAddDuration as !+~
```

_left-associative / precedence 6_

#### `(!-!)`

``` purescript
infixl 6 instantSubInstant as !-!
```

_left-associative / precedence 6_

#### `(!-~)`

``` purescript
infixl 6 instantSubDuration as !-~
```

_left-associative / precedence 6_

#### `(~*@)`

``` purescript
infixl 7 durationMulNumber as ~*@
```

_left-associative / precedence 7_

#### `(~+!)`

``` purescript
infixl 6 instantAddDuration as ~+!
```

_left-associative / precedence 6_

#### `(~+~)`

``` purescript
infixl 6 instantAddDuration as ~+~
```

_left-associative / precedence 6_

#### `(~-~)`

``` purescript
infixl 6 instantSubDuration as ~-~
```

_left-associative / precedence 6_

#### `(~/@)`

``` purescript
infixl 7 durationDivNumber as ~/@
```

_left-associative / precedence 7_

#### `(~/~)`

``` purescript
infixl 7 durationDivDuration as ~/~
```

_left-associative / precedence 7_

### Re-exported from Data.Chrono.Clock:

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

### Re-exported from Data.Chrono.Duration:

#### `Duration`

``` purescript
newtype Duration
  = Duration Number
```

A concrete duration.

Representation: milliseconds.

##### Instances
``` purescript
Eq Duration
Ord Duration
Semigroup Duration
Monoid Duration
```

#### `fromHours`

``` purescript
fromHours :: Number -> Duration
```

#### `fromMilliseconds`

``` purescript
fromMilliseconds :: Number -> Duration
```

#### `fromMinutes`

``` purescript
fromMinutes :: Number -> Duration
```

#### `fromSeconds`

``` purescript
fromSeconds :: Number -> Duration
```

#### `toHours`

``` purescript
toHours :: Duration -> Number
```

#### `toMilliseconds`

``` purescript
toMilliseconds :: Duration -> Number
```

#### `toMinutes`

``` purescript
toMinutes :: Duration -> Number
```

#### `toSeconds`

``` purescript
toSeconds :: Duration -> Number
```

### Re-exported from Data.Chrono.Gregorian:

#### `Era`

``` purescript
data Era
  = BeforeChrist
  | AnnoDomini
```

#### `Month`

``` purescript
data Month
  = January
  | February
  | March
  | April
  | May
  | June
  | July
  | August
  | September
  | October
  | November
  | December
```

#### `Year`

``` purescript
type Year = NonZero Int
```

### Re-exported from Data.Chrono.Instant:

#### `Instant`

``` purescript
newtype Instant
  = Instant Number
```

A moment in time on the universal non-relativistic timeline.

Representation: milliseconds since Unix epoch.

##### Instances
``` purescript
Eq Instant
Ord Instant
```

### Re-exported from Data.Chrono.LocalDate:

#### `LocalDate`

``` purescript
newtype LocalDate
```

#### `localDate`

``` purescript
localDate :: Era -> Year -> Month -> Int -> Maybe LocalDate
```

#### `localDateDay`

``` purescript
localDateDay :: LocalDate -> Int
```

#### `localDateEra`

``` purescript
localDateEra :: LocalDate -> Era
```

#### `localDateMonth`

``` purescript
localDateMonth :: LocalDate -> Month
```

#### `localDateYear`

``` purescript
localDateYear :: LocalDate -> Year
```

### Re-exported from Data.Chrono.LocalTime:

#### `LocalTime`

``` purescript
newtype LocalTime
  = LocalTime Number
```

A time of day.

Representation: number of milliseconds since 00:00 AM.

##### Instances
``` purescript
Eq LocalTime
Ord LocalTime
```

### Re-exported from Data.Chrono.Period:

#### `Period`

``` purescript
type Period = { milliseconds :: Number, seconds :: Number, minutes :: Number, hours :: Number, days :: Number, weeks :: Number, months :: Number, years :: Number }
```

An abstract duration.

