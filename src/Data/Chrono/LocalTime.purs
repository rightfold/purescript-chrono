module Data.Chrono.LocalTime
( LocalTime(LocalTime)
) where

import Data.Int53 (Int53)
import Prelude

-- | A time of day.
-- |
-- | Representation: number of milliseconds since 00:00 AM.
newtype LocalTime = LocalTime Int53

instance eqLocalTime :: Eq LocalTime where
  eq (LocalTime a) (LocalTime b) = a == b

instance ordLocalTime :: Ord LocalTime where
  compare (LocalTime a) (LocalTime b) = a `compare` b
