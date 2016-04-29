-- | The following symbols are used in these operators:
-- |
-- | <dl>
-- | <dt><code>+</code></td>
-- | <dd>Add</dd>
-- | <dt><code>-</code></td>
-- | <dd>Subtract</dd>
-- | <dt><code>*</code></td>
-- | <dd>Multiply</dd>
-- | <dt><code>/</code></td>
-- | <dd>Divide</dd>
-- | <dt><code>!</code></td>
-- | <dd><code>Instant</code></dd>
-- | <dt><code>~</code></td>
-- | <dd><code>Duration</code></dd>
-- | <dt><code>@</code></td>
-- | <dd><code>Int53</code> (typically a factor, not milliseconds)</dd>
-- | </dl>
module Data.Chrono.Arithmetic
( (!+~), instantAddDuration
, (!-~), instantSubDuration
, (!-!), instantSubInstant

, (~+!), durationAddInstant
, (~+~), durationAddDuration
, (~-~), durationSubDuration
, (~*@), durationMulInt53
, (~/@), durationDivInt53
, (~/~), durationDivDuration
) where

import Data.Chrono.Duration (Duration(Duration))
import Data.Chrono.Instant (Instant(Instant))
import Data.Int53 (Int53)
import Prelude

infixl 6 instantAddDuration as !+~
infixl 6 instantSubDuration as !-~
infixl 6 instantSubInstant as !-!

instantAddDuration :: Instant -> Duration -> Instant
instantAddDuration (Instant i) (Duration d) = Instant (i + d)

instantSubDuration :: Instant -> Duration -> Instant
instantSubDuration (Instant i) (Duration d) = Instant (i - d)

instantSubInstant :: Instant -> Instant -> Duration
instantSubInstant (Instant a) (Instant b) = Duration (a - b)

infixl 6 instantAddDuration as ~+!
infixl 6 instantAddDuration as ~+~
infixl 6 instantSubDuration as ~-~
infixl 7 durationMulInt53 as ~*@
infixl 7 durationDivInt53 as ~/@
infixl 7 durationDivDuration as ~/~

durationAddInstant :: Duration -> Instant -> Instant
durationAddInstant = flip instantAddDuration

durationAddDuration :: Duration -> Duration -> Duration
durationAddDuration (Duration a) (Duration b) = Duration (a + b)

durationSubDuration :: Duration -> Duration -> Duration
durationSubDuration (Duration a) (Duration b) = Duration (a - b)

durationMulInt53 :: Duration -> Int53 -> Duration
durationMulInt53 (Duration d) n = Duration (d * n)

durationDivInt53 :: Duration -> Int53 -> Duration
durationDivInt53 (Duration d) n = Duration (d / n)

durationDivDuration :: Duration -> Duration -> Int53
durationDivDuration (Duration a) (Duration b) = a / b
