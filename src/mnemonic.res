type hdnode
type bch_mnemonic = {
  generate: int => string,
  toSeed: string => Promise.t<Buffer.t>,
}
type bch = {"Mnemonic": bch_mnemonic}
@module @new external bchjs: bch = "@psf/bch-js"

let generate = bchjs["Mnemonic"].generate
let toSeed = bchjs["Mnemonic"].toSeed
