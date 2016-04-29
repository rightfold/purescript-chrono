module Test.Main
( main
) where

import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)
import Data.Chrono
import Prelude
import Test.Assert (ASSERT, assert)

main :: forall eff. Eff (assert :: ASSERT, console :: CONSOLE | eff) Unit
main = do
  group "arithmetic" do
    assert $ fromSeconds 1.0 ~+~ fromSeconds 2.0 == fromSeconds 3.0
    assert $ fromSeconds 1.0 ~-~ fromSeconds 2.0 == fromSeconds (-1.0)
    assert $ fromSeconds 1.0 ~*@ 2.0 == fromSeconds 2.0
    assert $ fromSeconds 1.0 ~/@ 2.0 == fromSeconds 0.5
    assert $ fromSeconds 1.0 ~/~ fromSeconds 2.0 == 0.5

group :: forall eff. String -> Eff (console :: CONSOLE | eff) Unit -> Eff (console :: CONSOLE | eff) Unit
group title go = do
  log title
  go
