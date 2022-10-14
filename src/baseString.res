module BaseString: {
  type t
  let toString: t => string
  let fromString: string => t
} = {
  type t = string
  let toString: t => string = x => x
  let fromString: string => t = x => x
}

module CashAddress = {
  include BaseString

  //
  let addressRegexp = Js.Re.fromString("^((bitcoincash:)?(q|p)[a-z0-9]{41})")
  let fromString: string => t = address => {
    if Js.Re.test_(addressRegexp, address) {
      // address
      BaseString.fromString(address)
    } else {
      raise(Invalid_argument(""))
    }
  }
}
type wallet = {address: CashAddress.t, address2: CashAddress.t}
let token = {
  address: BaseString.fromString("hggjgh"),
  address2: CashAddress.fromString("hggjgh"),
}

let converCashAdress = (address: CashAddress.t) => {
  // Code of convert
  CashAddress.toString(address)
}

Js.log(converCashAdress(BaseString.fromString("ldjhgusdgugfb")))