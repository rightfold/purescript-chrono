module Test.Main
( main
) where

import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)
import Data.Chrono
import Data.Monoid (mempty)
import Prelude
import Test.Assert (ASSERT, assert)

main :: forall eff. Eff (assert :: ASSERT, console :: CONSOLE | eff) Unit
main = do
  group "Arithmetic" do
    assert $ Instant 1000.0 !+~ fromSeconds 2.0 == Instant 3000.0
    assert $ Instant 1000.0 !-~ fromSeconds 2.0 == Instant (-1000.0)
    assert $ Instant 1000.0 !-! Instant 2000.0 == fromSeconds (-1.0)
    assert $ fromSeconds 1.0 ~+! Instant 2000.0 == Instant 3000.0
    assert $ fromSeconds 1.0 ~+~ fromSeconds 2.0 == fromSeconds 3.0
    assert $ fromSeconds 1.0 ~-~ fromSeconds 2.0 == fromSeconds (-1.0)
    assert $ fromSeconds 1.0 ~*@ 2.0 == fromSeconds 2.0
    assert $ fromSeconds 1.0 ~/@ 2.0 == fromSeconds 0.5
    assert $ fromSeconds 1.0 ~/~ fromSeconds 2.0 == 0.5

  group "Duration" do
    assert $ fromMilliseconds 1.0 == Duration 1.0
    assert $ fromSeconds 1.0 == Duration 1000.0
    assert $ fromMinutes 1.0 == Duration 60000.0
    assert $ fromHours 1.0 == Duration 3600000.0
    assert $ toMilliseconds (fromMilliseconds 1.0) == 1.0
    assert $ toSeconds (fromSeconds 1.0) == 1.0
    assert $ toMinutes (fromMinutes 1.0) == 1.0
    assert $ toHours (fromHours 1.0) == 1.0
    assert $ fromSeconds 1.0 < fromSeconds 2.0
    assert $ fromSeconds 2.0 > fromSeconds 1.0
    assert $ fromSeconds 1.0 <= fromSeconds 1.0
    assert $ fromSeconds 1.0 >= fromSeconds 1.0
    assert $ fromSeconds 1.0 <> fromSeconds 2.0 == fromSeconds 3.0
    assert $ mempty == Duration 0.0

group :: forall eff. String -> Eff (console :: CONSOLE | eff) Unit -> Eff (console :: CONSOLE | eff) Unit
group title go = do
  log title
  go
