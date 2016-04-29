module Data.Chrono.LocalTime
( LocalTime(LocalTime)
) where

import Prelude

-- | A time of day.
-- |
-- | Representation: number of milliseconds since 00:00 AM.
newtype LocalTime = LocalTime Number

instance eqLocalTime :: Eq LocalTime where
  eq (LocalTime a) (LocalTime b) = a == b

instance ordLocalTime :: Ord LocalTime where
  compare (LocalTime a) (LocalTime b) = a `compare` b
