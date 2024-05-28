import { Abi, Address, getAddress } from 'viem'

import { crowdFundingAbi } from '../../abis/CrowdFunding'
import { localhost } from 'viem/chains'

export type ContractABIPair = {
	ADDRESS: Address
	ABI: Abi
}

// TODO: Add in contract deployments and their ABIs for each network supported
type ContractDeployments = {
	CROWD_FUNDING: ContractABIPair
}

const LOCALHOST: ContractDeployments = {
	// SimpleNFT: https://sepolia.etherscan.io/address/0x1cfD246a218b35e359584979dDBeAD1f567d9C88
	CROWD_FUNDING: {
		ADDRESS: getAddress('0x1b4BCd7f9c3855113755f142d47288f6817f9747', localhost.id),
		ABI: crowdFundingAbi,
	},
}

const CONTRACTS = {
	LOCALHOST,
}

export default CONTRACTS
