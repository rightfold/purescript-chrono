module Data.Positive
( class IsNonPositive
, isNonPositive

, Positive
, toPositive
, fromPositive
) where

import Data.Maybe (Maybe(Just, Nothing))
import Prelude

class IsNonPositive a where
  isNonPositive :: a -> Boolean

instance intIsNonPositive :: IsNonPositive Int where
  isNonPositive = (_ <= 0)

newtype Positive a = Positive a

toPositive :: forall a. (IsNonPositive a) => a -> Maybe (Positive a)
toPositive n | isNonPositive n  = Nothing
             | otherwise = Just (Positive n)

fromPositive :: forall a. Positive a -> a
fromPositive (Positive n) = n

instance positiveIsNonPositive :: IsNonPositive (Positive a) where
  isNonPositive = const false
