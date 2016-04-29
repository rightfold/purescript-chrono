module Data.Chrono.Gregorian
( Era(..)
, Year
, Month(..)
) where

import Data.NonZero (NonZero)

data Era = BeforeChrist | AnnoDomini

type Year = NonZero Int

data Month = January | February | March | April | May | June
           | July | August | September | October | November | December
