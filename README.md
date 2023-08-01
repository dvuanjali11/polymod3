# AnjaliCircuit Deployment 
Contains the imlementation of the logic gates using circom and also demonstrates how to deploy it on Polygon Mumbai Testnet. It consists of three gates: `andGate1`, `notGate`, and `orGate`. The main circuit template is `AnjaliCircuit`, which connects these components to create the desired logic.

## Implementation

The main circuit is defined in the Anjalicircuit.circom file:

It takes two input signals, `a` and `b`.
It calculates the logical AND of `a` and `b` using the `AND` component and stores the result in signal `x`.
It computes the logical NOT of signal `b` using the `NOT` component and stores the result in signal `y`.
It calculates the logical OR of signals `x` and `y` using the `OR` component and stores the result in signal `Q`.

### Compiling and Executing
1. `npm i`
2. `npx hardhat circom` 
3. `npx hardhat run scripts/deploy.ts`
4. `npx hardhat run scripts/deploy.ts --network mumbai` (Deployed to Mumbai Network)
