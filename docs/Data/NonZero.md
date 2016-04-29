## Module Data.NonZero

#### `IsZero`

``` purescript
class IsZero a where
  isZero :: a -> Boolean
```

##### Instances
``` purescript
IsZero Int
IsZero (NonZero a)
```

#### `NonZero`

``` purescript
newtype NonZero a
```

##### Instances
``` purescript
IsZero (NonZero a)
```

#### `toNonZero`

``` purescript
toNonZero :: forall a. (IsZero a) => a -> Maybe (NonZero a)
```

#### `fromNonZero`

``` purescript
fromNonZero :: forall a. NonZero a -> a
```


