open Bchjs
open Promise

// create mnemonic
let mnemonic = /* bchjs.mnemonic->Mnemonic.generate(128) */ "upper live drama long foster clap monster test fringe ticket renew ticket"

// create seed buffer from mnemonic
bchjs.mnemonic
->Mnemonic.toSeed(mnemonic)
->then(seedBuffer => {
  // create rootnode HDNode from seed buffer
  let hdnode = bchjs.hdnode->Hdnode.fromSeed(seedBuffer)

  // Get child node
  let childHdnode = bchjs.hdnode->Hdnode.derivePath(hdnode, "m/44'/145'/0'")

  // Get address from child node and log it
  // Js.log(Hdnode.toCashAddress(hdnode)) // Error you can't use root node
  Js.log(bchjs.hdnode->Hdnode.toCashAddress(childHdnode, false))

  // Resolve then
  Promise.resolve()
})
->ignore

// Run main code
