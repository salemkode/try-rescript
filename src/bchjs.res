type addressModule
type hdnodeModule
type mnemonicModule
type cryptoModule
type bch = {
  @as("Address") address: addressModule,
  @as("HDNode") hdnode: hdnodeModule,
  @as("Mnemonic") mnemonic: mnemonicModule,
  @as("Crypto") crypto: cryptoModule,
}
@module @new external bchjs: unit => bch = "@psf/bch-js"
let bchjs = bchjs()

module Address = {
  @send external toCashAddress: (addressModule, string, bool) => string = "toCashAddress"
}

module Mnemonic = {
  @send external generate: (mnemonicModule, int) => string = "generate"
  @send external toSeed: (mnemonicModule, string) => Promise.t<Buffer.t> = "toSeed"
}

module Hdnode = {
  type hdnode
  type hdnodeChild
  @send external toCashAddress: (hdnodeModule, hdnodeChild, bool) => string = "toCashAddress"
  @send external fromSeed: (hdnodeModule, Buffer.t) => hdnode = "fromSeed"
  @send external derivePath: (hdnodeModule, hdnode, string) => hdnodeChild = "derivePath"
}

module Crypto = {
  @send external sha256: (cryptoModule, Buffer.t) => Buffer.t = "sha256"
  @send external ripemd160: (cryptoModule, Buffer.t) => Buffer.t = "ripemd160"
  @send external hash256: (cryptoModule, Buffer.t) => Buffer.t = "hash256"
  @send external hash160: (cryptoModule, Buffer.t) => Buffer.t = "hash160"
  @send external randomBytes: (cryptoModule, int) => Buffer.t = "randomBytes"
}

