module Data.Chrono.LocalTime
( LocalTime
, localTime
) where

import Data.Maybe (Maybe(Just, Nothing))
import Prelude

-- | A time of day.
newtype LocalTime = LocalTime Int

-- TODO: what about leap seconds?
localTime :: Int -> Int -> Int -> Int -> Maybe LocalTime
localTime hour minute second millisecond =
  if (   hour >= 0 && hour < 24
      && minute >= 0 && minute < 60
      && second >= 0 && second < 60
      && millisecond >= 0 && millisecond < 1000)
    then Just $ LocalTime (hour * 3600000 + minute * 60000 + second * 1000 + millisecond)
    else Nothing

instance eqLocalTime :: Eq LocalTime where
  eq (LocalTime a) (LocalTime b) = a == b

instance ordLocalTime :: Ord LocalTime where
  compare (LocalTime a) (LocalTime b) = a `compare` b
