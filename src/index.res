type instantiateBIP32
type decoded = {node: string, network: string}
type decodeHdPublicKeyResult =
  | String(string)
  | Object({node: string, network: string})
type deriveHD
type _deriveHdPublicNodeIdentifier
open Promise

@module("@bitauth/libauth")
external instantiateBIP32Crypto: unit => Promise.t<instantiateBIP32> = "instantiateBIP32Crypto"

@module("@bitauth/libauth")
external decodeHdPublicKey: (instantiateBIP32, string) => decoded =
  "decodeHdPublicKey"

@module("@bitauth/libauth")
external deriveHdPath: (instantiateBIP32, string, string) => deriveHD =
  "deriveHdPath"

@module("@bitauth/libauth")
external encodeCashAddress: (string, int, _deriveHdPublicNodeIdentifier) => string =
  "encodeCashAddress"

@module("@bitauth/libauth")
external deriveHdPublicNodeIdentifier: (instantiateBIP32, deriveHD) => _deriveHdPublicNodeIdentifier =
  "deriveHdPublicNodeIdentifier"

let isString: 'a => bool = %raw(`function(x) { return typeof decoded === "string" }`)
let raiseError: 'a => unit = %raw(`function(x) { return typeof decoded === "string" }`)
let fromXPub = (xpub: string, path: string) => {
  instantiateBIP32Crypto()->then(instantiateBIP32 => {
    let decoded = decodeHdPublicKey(instantiateBIP32, xpub)
    if isString(decoded) {
      raiseError(decoded)
    }

    //
    let deriveHD = deriveHdPath(instantiateBIP32, decoded.node, "M/" ++ path)
    if isString(deriveHD) {
      raiseError(deriveHD)
    }

    //
    resolve(encodeCashAddress(
        decoded.network == "testnet" ? "bchtest" : "bitcoincash",
        0,
        deriveHdPublicNodeIdentifier(instantiateBIP32, deriveHD)
    ))
  })
}
