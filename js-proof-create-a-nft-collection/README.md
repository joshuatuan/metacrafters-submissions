# Project Title

Create a NFT Collection

## Description

This project is a simple example of creating and managing a custom NFT (Non-Fungible Token) collection in JavaScript.

## Getting Started

### Executing program

You can run this project using an online JavaScript compiler like [PlayCode](https://playcode.io/javascript) or set up your local development environment with Visual Studio Code and Node.js.

#### Online Compiler (PlayCode)

1. Visit [PlayCode](https://playcode.io/javascript).

2. You'll be provided with a preset script.js file. You can either create a new file or delete the preset code.

3. Copy and paste the provided JavaScript code below into the editor.

4. The PlayCode compiler will automatically run your code. You can interact with the functions provided.

#### Local Development Environment

1. Install [Visual Studio Code](https://code.visualstudio.com/) and [Node.js](https://nodejs.org/).

2. Open your project folder in Visual Studio Code.

3. Create a JavaScript file (e.g., nft-collection.js) and paste the provided code.

4. Open the integrated terminal in Visual Studio Code.

5. Navigate to your project folder and run the script using Node.js:
```
node nft-collection.js
```

## Source Code

```
// create a variable to hold your NFT's
const NFTs = [];

// this function will take in some values as parameters, create an
// NFT object using the parameters passed to it for its metadata, 
// and store it in the variable above.
function mintNFT (_name, _eyecolor, _shirt_type, _bling) {
    const NFT = {
        "name": _name,
        "eyecolor": _eyecolor,
        "shirt_type": _shirt_type,
        "bling": _bling
    };
    NFTs.push(NFT);
    console.log("Minted: " + _name);

}

// create a "loop" that will go through an "array" of NFT's
// and print their metadata with console.log()
function listNFTs () {
    for (let i=0; i <NFTs.length; i++){
        console.log("\n");
        console.log("NFT ID: " + i + 1);
        console.log("Name: " + NFTs[i].name);
        console.log("Eyecolor: " + NFTs[i].eyecolor); 
        console.log("Shirt Type: " + NFTs[i].shirt_type);
        console.log("Bling: " + NFTs[i].bling + "\n");  
    }
}

// print the total number of NFTs we have minted to the console
function getTotalSupply() {
    console.log("Total Supply: " + NFTs.length);
}

// call your functions below this line
mintNFT("Bobe", "Bluae", "Hoodie", "Bust downy rolly");
listNFTs();
getTotalSupply();


```


## Author

Joshua Miguel Tuan

## License

This project is licensed under the MIT License - see the LICENSE file for details
