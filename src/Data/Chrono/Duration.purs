module Data.Chrono.Duration
( Duration(Duration)

, fromMilliseconds
, fromSeconds
, fromMinutes
, fromHours

, toMilliseconds
, toSeconds
, toMinutes
, toHours
) where

import Data.Monoid (class Monoid)
import Prelude

-- | A concrete duration.
-- |
-- | Representation: milliseconds.
newtype Duration = Duration Number

fromMilliseconds :: Number -> Duration
fromMilliseconds = Duration

fromSeconds :: Number -> Duration
fromSeconds = (_ * 1000.0) >>> fromMilliseconds

fromMinutes :: Number -> Duration
fromMinutes = (_ * 60.0) >>> fromSeconds

fromHours :: Number -> Duration
fromHours = (_ * 60.0) >>> fromMinutes

toMilliseconds :: Duration -> Number
toMilliseconds (Duration d) = d

toSeconds :: Duration -> Number
toSeconds = toMilliseconds >>> (_ / 1000.0)

toMinutes :: Duration -> Number
toMinutes = toSeconds >>> (_ / 60.0)

toHours :: Duration -> Number
toHours = toMinutes >>> (_ / 60.0)

instance eqDuration :: Eq Duration where
  eq (Duration a) (Duration b) = a == b

instance ordDuration :: Ord Duration where
  compare (Duration a) (Duration b) = a `compare` b

instance semigroupDuration :: Semigroup Duration where
  append (Duration a) (Duration b) = Duration (a + b)

instance monoidDuration :: Monoid Duration where
  mempty = Duration 0.0
