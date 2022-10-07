type hdnode = {getAddress: unit => string}
type bch_HDNODE = {
  toCashAddress: (. hdnode) => string,
  fromSeed: (. Buffer.t) => hdnode,
}
type bch = {"HDNode": bch_HDNODE}
@module @new external bchjs: bch = "@psf/bch-js"

let toCashAddress = (a) => bchjs["HDNode"].toCashAddress(. a)

let fromSeed = bchjs["HDNode"].fromSeed
