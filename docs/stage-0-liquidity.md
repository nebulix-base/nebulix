Stage 0: Liquidity & Market Behavior
Stage 0 is an intentionally low-visibility phase focused on understanding real on-chain liquidity behavior under constrained conditions.

NBX liquidity was initialized with a small ETH amount to observe:

* Price discovery dynamics swap execution reliability

* Router behavior (MetaMask, Phantom, aggregators)

* Slippage and price impact at low depth


Uniswap v3 range mechanics

* No promotion, incentives, or growth efforts are active during this stage.

* Current Liquidity Design


Primary Pool:

Pair: NBX / WETH

AMM: Uniswap v3

Fee tier: 0.30%


Purpose: canonical market price and swap testing

Liquidity Size: intentionally minimal
This allows controlled observation of:

* Price impact vs swap size

* Boundary behavior in concentrated liquidity

* Fee accrual under sparse volume


Observations So Far

* Swaps execute successfully on major wallets with low slippage for small trade sizes.

* Price impact increases rapidly as trade size approaches pool depth, as expected.

* Narrow liquidity ranges can move out of range quickly in low-liquidity environments.

* Boundary hits in v3 pools correctly convert liquidity into a single asset without loss.

* These outcomes confirm expected Uniswap v3 mechanics and provide a baseline for future stages.

* Intentional Constraints

Stage 0 intentionally avoids:

* Liquidity mining

* Multiple active fee tiers

* Incentives or emissions

* Marketing or user onboarding

All activity during this phase is exploratory and reversible.

Transition to Future Stages

Later stages may introduce:

* Expanded liquidity ranges

* Additional fee tiers

* Protocol-level mechanics

* Companion contracts tied to epochs or snapshots

Stage transitions will be documented publicly as they occur.
