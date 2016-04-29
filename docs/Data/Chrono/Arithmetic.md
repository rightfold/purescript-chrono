## Module Data.Chrono.Arithmetic

The following symbols are used in these operators:

<dl>
<dt><code>+</code></dt>
<dd>Add</dd>
<dt><code>-</code></dt>
<dd>Subtract</dd>
<dt><code>*</code></dt>
<dd>Multiply</dd>
<dt><code>/</code></dt>
<dd>Divide</dd>
<dt><code>!</code></dt>
<dd><code>Instant</code></dd>
<dt><code>~</code></dt>
<dd><code>Duration</code></dd>
<dt><code>@</code></dt>
<dd><code>Number</code> (typically a factor, not milliseconds)</dd>
</dl>

#### `(!+~)`

``` purescript
infixl 6 instantAddDuration as !+~
```

_left-associative / precedence 6_

#### `(!-~)`

``` purescript
infixl 6 instantSubDuration as !-~
```

_left-associative / precedence 6_

#### `(!-!)`

``` purescript
infixl 6 instantSubInstant as !-!
```

_left-associative / precedence 6_

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

#### `(~*@)`

``` purescript
infixl 7 durationMulNumber as ~*@
```

_left-associative / precedence 7_

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

#### `durationAddInstant`

``` purescript
durationAddInstant :: Duration -> Instant -> Instant
```

#### `durationAddDuration`

``` purescript
durationAddDuration :: Duration -> Duration -> Duration
```

#### `durationSubDuration`

``` purescript
durationSubDuration :: Duration -> Duration -> Duration
```

#### `durationMulNumber`

``` purescript
durationMulNumber :: Duration -> Number -> Duration
```

#### `durationDivNumber`

``` purescript
durationDivNumber :: Duration -> Number -> Duration
```

#### `durationDivDuration`

``` purescript
durationDivDuration :: Duration -> Duration -> Number
```


