type hashFunction = NodeJs.Buffer.t => NodeJs.Buffer.t
type randomBytes = int => NodeJs.Buffer.t
type crypto = {
  sha256: hashFunction,
  ripemd160: hashFunction,
  hash256: hashFunction,
  hash160: hashFunction,
  randomBytes: hashFunction,
}
type lbox = {"Crypto": crypto}
@module @new external openLbox: lbox = "lbox"

let sha256 = (buffer) => {
  openLbox["Crypto"].sha256(buffer)
}

let ripemd160 = (buffer) => {
  openLbox["Crypto"].ripemd160(buffer)
}

let hash256 = (buffer) => {
  openLbox["Crypto"].hash256(buffer)
}

let hash160 = (buffer) => {
  openLbox["Crypto"].hash160(buffer)
}

let randomBytes = (size) => {
  openLbox["Crypto"].randomBytes(size)
}
