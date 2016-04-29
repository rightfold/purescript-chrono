module Data.Chrono.Period
( Period
) where

-- | An abstract duration.
type Period =
  { milliseconds :: Int
  , seconds :: Int
  , minutes :: Int
  , hours :: Int
  , days :: Int
  , weeks :: Int
  , months :: Int
  , years :: Int
  }
