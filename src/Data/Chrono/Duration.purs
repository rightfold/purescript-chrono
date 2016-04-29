module Data.Chrono.Duration
( Duration
) where

import Data.Int53 (Int53)
import Data.Int53 as Int53
import Data.Monoid (class Monoid)
import Prelude

-- | A concrete duration.
newtype Duration = Duration Int53

instance eqDuration :: Eq Duration where
  eq (Duration a) (Duration b) = a == b

instance ordDuration :: Ord Duration where
  compare (Duration a) (Duration b) = a `compare` b

instance semigroupDuration :: Semigroup Duration where
  append (Duration a) (Duration b) = Duration (a + b)

instance monoidDuration :: Monoid Duration where
  mempty = Duration (Int53.fromInt 0)
