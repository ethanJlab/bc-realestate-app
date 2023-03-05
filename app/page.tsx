
import Image from 'next/image';

export default function Home() {
  let summary = ""/*"A smart contract is a computer program that can automatically enforce the terms of a contract between two parties. It is designed to be secure and transparent, and it can operate without the need for intermediaries such as banks or lawyers. Essentially, a smart contract is a set of rules that are coded into a blockchain, which is a distributed ledger technology that allows multiple parties to access and update the same information in a secure and decentralized way.
  Think of a smart contract as a digital version of a traditional contract that is programmed to execute itself automatically when certain conditions are met. For example, if two parties agree to a smart contract that states that one party will pay the other party a certain amount of money when a specific event occurs, such as the delivery of goods, the smart contract will automatically execute the payment once the event has been verified.
  Smart contracts have the potential to revolutionize the way we do business by making transactions faster, cheaper, and more secure. They are particularly useful in industries such as finance, insurance, and real estate, where complex transactions require a high level of trust and security."*/
  return (
      <div className = "w3-row">
        <div className ="w3-half w3-container">
          <h1 className = "w3-xxlarge w3-text-dark-grey w3-animate-opacity5">Welcome</h1>
          <h1 className ="w3-xxlarge w3-text-grey w3-animate-opacity5">To Real Estate</h1>
          <h1 className ="w3-jumbo w3-text-white w3-animate-opacity5">In Web3</h1>
        </div>
        <div className='w3-container'>
          <Image className = "w3-display-topmiddle w3-padding-64 w3-margin-right" src="/town-planing.png" alt="bc-realestate" width={500} height={500} />
          <a href = "https://testnet.avascan.info/"className ="w3-text-grey w3-display-middle w3-hover-opacity" target = "_blank">View Smart Contract</a>
          <p></p>
        </div>
        <div className="w3-display-topright w3-padding-64 w3-container w3-xlarge w3-text-grey w3-animate-opacity10">
          <p className="">We put real estate on the blockchain</p>
          <p>We decentralized the market</p>
          <p>We deliver the best of solutions</p>
          <p>Web3 means powerfull simplicity</p>
        </div>
        <div className = "w3-display-bottomleft ">
          <p className = "w3-text-grey w3-left">Powered by "The Avalanche Fuji Testnet"</p>
          <Image className = "w3-right" src="/Avalanche_logo.png" alt="Avalanche Logo" width={30} height={30} />
        </div>
      </div>    
    
    
    
  )
}