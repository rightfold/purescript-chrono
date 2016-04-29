module Data.NonZero
( class IsZero
, isZero

, NonZero
, toNonZero
, fromNonZero
) where

import Data.Maybe (Maybe(Just, Nothing))
import Prelude

class IsZero a where
  isZero :: a -> Boolean

instance isZeroInt :: IsZero Int where
  isZero = (_ == 0)

newtype NonZero a = NonZero a

toNonZero :: forall a. (IsZero a) => a -> Maybe (NonZero a)
toNonZero n | isZero n  = Nothing
            | otherwise = Just (NonZero n)

fromNonZero :: forall a. NonZero a -> a
fromNonZero (NonZero n) = n

instance isZeroNonZero :: IsZero (NonZero a) where
  isZero = const false
