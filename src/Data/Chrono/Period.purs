module Data.Chrono.Period
( Period
) where

-- | An abstract duration.
type Period =
  { milliseconds :: Number
  , seconds :: Number
  , minutes :: Number
  , hours :: Number
  , days :: Number
  , weeks :: Number
  , months :: Number
  , years :: Number
  }
