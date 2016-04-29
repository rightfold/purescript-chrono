module Data.Chrono.Duration
( Duration(Duration)

, milliseconds
, seconds
, minutes
, hours
) where

import Data.Monoid (class Monoid)
import Prelude

-- | A concrete duration.
-- |
-- | Representation: milliseconds.
newtype Duration = Duration Number

milliseconds :: Duration -> Number
milliseconds (Duration d) = d

seconds :: Duration -> Number
seconds = milliseconds >>> (_ / 1000.0)

minutes :: Duration -> Number
minutes = seconds >>> (_ / 60.0)

hours :: Duration -> Number
hours = minutes >>> (_ / 60.0)

instance eqDuration :: Eq Duration where
  eq (Duration a) (Duration b) = a == b

instance ordDuration :: Ord Duration where
  compare (Duration a) (Duration b) = a `compare` b

instance semigroupDuration :: Semigroup Duration where
  append (Duration a) (Duration b) = Duration (a + b)

instance monoidDuration :: Monoid Duration where
  mempty = Duration 0.0
