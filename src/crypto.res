open NodeJs

type ripemd160 = NodeJs.Buffer.t => NodeJs.Buffer.t
type crypto = {ripemd160: ripemd160}
type lbox = {"Crypto": crypto}
@module @new external openLbox: lbox = "lbox"

let a = () => {
  openLbox["Crypto"].ripemd160(
    Buffer.fromStringWithEncoding(
      "0101010101010101",
      StringEncoding.hex,
    ),
  )
}
