-- | The following symbols are used in these operators:
-- |
-- | <dl>
-- | <dt><code>+</code></dt>
-- | <dd>Add</dd>
-- | <dt><code>-</code></dt>
-- | <dd>Subtract</dd>
-- | <dt><code>*</code></dt>
-- | <dd>Multiply</dd>
-- | <dt><code>/</code></dt>
-- | <dd>Divide</dd>
-- | <dt><code>!</code></dt>
-- | <dd><code>Instant</code></dd>
-- | <dt><code>~</code></dt>
-- | <dd><code>Duration</code></dd>
-- | <dt><code>@</code></dt>
-- | <dd><code>Number</code> (typically a factor, not milliseconds)</dd>
-- | </dl>
module Data.Chrono.Arithmetic
( (!+~), instantAddDuration
, (!-~), instantSubDuration
, (!-!), instantSubInstant

, (~+!), durationAddInstant
, (~+~), durationAddDuration
, (~-~), durationSubDuration
, (~*@), durationMulNumber
, (~/@), durationDivNumber
, (~/~), durationDivDuration
) where

import Data.Chrono.Duration (Duration(Duration))
import Data.Chrono.Instant (Instant(Instant))
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

infixl 6 durationAddInstant as ~+!
infixl 6 durationAddDuration as ~+~
infixl 6 durationSubDuration as ~-~
infixl 7 durationMulNumber as ~*@
infixl 7 durationDivNumber as ~/@
infixl 7 durationDivDuration as ~/~

durationAddInstant :: Duration -> Instant -> Instant
durationAddInstant = flip instantAddDuration

durationAddDuration :: Duration -> Duration -> Duration
durationAddDuration (Duration a) (Duration b) = Duration (a + b)

durationSubDuration :: Duration -> Duration -> Duration
durationSubDuration (Duration a) (Duration b) = Duration (a - b)

durationMulNumber :: Duration -> Number -> Duration
durationMulNumber (Duration d) n = Duration (d * n)

durationDivNumber :: Duration -> Number -> Duration
durationDivNumber (Duration d) n = Duration (d / n)

durationDivDuration :: Duration -> Duration -> Number
durationDivDuration (Duration a) (Duration b) = a / b
