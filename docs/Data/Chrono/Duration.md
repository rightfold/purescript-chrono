## Module Data.Chrono.Duration

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

#### `fromMilliseconds`

``` purescript
fromMilliseconds :: Number -> Duration
```

#### `fromSeconds`

``` purescript
fromSeconds :: Number -> Duration
```

#### `fromMinutes`

``` purescript
fromMinutes :: Number -> Duration
```

#### `fromHours`

``` purescript
fromHours :: Number -> Duration
```

#### `toMilliseconds`

``` purescript
toMilliseconds :: Duration -> Number
```

#### `toSeconds`

``` purescript
toSeconds :: Duration -> Number
```

#### `toMinutes`

``` purescript
toMinutes :: Duration -> Number
```

#### `toHours`

``` purescript
toHours :: Duration -> Number
```


