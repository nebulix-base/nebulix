<p align="center">
  <img src="assets/logo.svg" alt="Nebulix logo" width="160">
</p>

# Nebulix (NBX)

Nebulix is an experimental, Base-native on-chain ecosystem built around the NBX token, Orbit cycles, Points, and a guarded claim interface.

> **Status: Stage 0 — experimental, low-liquidity testing.** Claim v0.5 is built and wired to the existing Base contracts for validation, but this is not an announcement that public claims are live. See [STAGE_0.md](STAGE_0.md) for the current operating scope.

## Current milestone — Claim v0.5

Nebulix Claim v0.5 expands the project beyond the token itself with a production-oriented interface for the already-deployed Base contracts.

The interface currently:

- reads live NBX, Orbit, and Points state from Base;
- validates the deployed Points → Orbit and Points → NBX wiring;
- reads live token metadata and decimals;
- displays balances and values safely from raw on-chain units;
- tracks progress through the 90-epoch Orbit cycle;
- simulates `claim()` from the connected wallet before enabling a transaction;
- tracks submitted transactions and receipts with BaseScan links; and
- refreshes live state every 30 seconds.

The Claim button remains disabled unless the deployed NebbyPoints `claim()` succeeds in an `eth_call` simulation from the connected wallet. A submitted claim targets the deployed NebbyPoints contract using selector `0x4e71d92d` with `value: 0x0`.

No replacement Points contract is included or deployed by this build.

## Base architecture

| Component | Role | Deployment |
|---|---|---|
| NBX | Fixed-supply ERC-20 ecosystem token | [`0x6dc3...b97de`](https://basescan.org/address/0x6dc3a79c8be0b38f6bbd44e6f5e34419529b97de) |
| NebbyFactory | Deployed factory component | [`0x61Ae...00216`](https://basescan.org/address/0x61Ae84aD89Cda618AcF97a7D97DD2a9cEDe00216) |
| NebbyOrbit | Orbit and epoch state | [`0xee9c...cd98`](https://basescan.org/address/0xee9c12cef429b882eed9311eee41512b0a69cd98) |
| NebbyPoints | Points state and `claim()` entry point | [`0x104E...B14f`](https://basescan.org/address/0x104EcF76f42E0d6B3b5Cca81e667D98cE09cB14f) |

Live contract state is authoritative.

## NBX v2

Nebulix v1 was an early mechanics test and has been fully burned. NBX v2 is the current Base-native token implementation.

- **Name:** Nebulix
- **Symbol:** NBX
- **Network:** Base
- **Standard:** ERC-20 (OpenZeppelin)
- **Supply:** Fixed
- **Transfer taxes:** None
- **Minting:** None
- **Rebasing:** None

Trading uses standard Uniswap v3 pool fees; the current pool fee is 0.30%.

## Chain status

| Network | Status | Scope |
|---|---|---|
| Base | **Active · Genesis** | Deployed contracts and current development |
| Solana | Dormant | Adapter reserved for future work |
| Robinhood Chain | Dormant | Adapter reserved for future work |

“Dormant” means the adapter path is reserved only. It does not indicate an active deployment, bridge, liquidity movement, or live multichain support.

## Stage 0

Stage 0 focuses on observing real on-chain behavior before any later development phase is considered. Liquidity is intentionally small and owner-provided for testing swaps, price impact, and Uniswap v3 range behavior.

Stage 0 is:

- not a launch;
- not a token sale;
- not a promotion phase; and
- not a promise of future value or financial return.

There has been no ICO, IEO, private sale, seed round, or token distribution event.

## Links

- [Nebulix website](https://nebby-orbit-site.vercel.app)
- [NBX on BaseScan](https://basescan.org/address/0x6dc3a79c8be0b38f6bbd44e6f5e34419529b97de)
- [Stage 0 status](STAGE_0.md)

## Disclaimer

Nebulix is experimental software. Nothing in this repository is financial advice, an offer to sell, or a guarantee of functionality, availability, value, or return. Interact only after independently reviewing the contracts and understanding the risks of on-chain transactions.
