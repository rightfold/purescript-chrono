module Data.Chrono.Period
( Period
) where

import Data.Int53 (Int53)

-- | An abstract duration.
type Period =
  { milliseconds :: Int53
  , seconds :: Int53
  , minutes :: Int53
  , hours :: Int53
  , days :: Int53
  , weeks :: Int53
  , months :: Int53
  , years :: Int53
  }
