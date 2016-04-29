module Data.Chrono.Instant
( Instant(Instant)
) where

import Prelude

-- | A moment in time on the universal non-relativistic timeline.
-- |
-- | Representation: milliseconds since Unix epoch.
newtype Instant = Instant Number

instance eqInstant :: Eq Instant where
  eq (Instant a) (Instant b) = a == b

instance ordInstant :: Ord Instant where
  compare (Instant a) (Instant b) = a `compare` b
