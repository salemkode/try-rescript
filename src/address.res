type crypto = {toCashAddress: (. string, bool) => string}
type bch = {"Address": crypto}
@module @new external bchjs: bch = "@psf/bch-js"

let toCashAddress = address => {
  bchjs["Address"].toCashAddress(. address, true)
}

let toCashAddressWithoutPrefix = address => {
  bchjs["Address"].toCashAddress(. address, false)
}
