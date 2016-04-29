## Module Data.Positive

#### `IsNonPositive`

``` purescript
class IsNonPositive a where
  isNonPositive :: a -> Boolean
```

##### Instances
``` purescript
IsNonPositive Int
IsNonPositive (Positive a)
```

#### `Positive`

``` purescript
newtype Positive a
```

##### Instances
``` purescript
IsNonPositive (Positive a)
```

#### `toPositive`

``` purescript
toPositive :: forall a. (IsNonPositive a) => a -> Maybe (Positive a)
```

#### `fromPositive`

``` purescript
fromPositive :: forall a. Positive a -> a
```


