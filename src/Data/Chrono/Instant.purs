module Data.Chrono.Instant
( Instant
) where

import Data.Int53 (Int53)
import Prelude

-- | A moment in time on the universal non-relativistic timeline.
newtype Instant = Instant Int53

instance eqInstant :: Eq Instant where
  eq (Instant a) (Instant b) = a == b

instance ordInstant :: Ord Instant where
  compare (Instant a) (Instant b) = a `compare` b
