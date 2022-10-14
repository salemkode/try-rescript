module BaseInt: {
  type t
  let toInt: t => int
  let fromInt: int => t
} = {
  type t = int
  let toInt: t => int = x => x
  let fromInt: int => t = x => x
}

module Age = {
  include BaseInt
}

module Price = {
  include BaseInt
}

let getPrice = () => {
  Price.fromInt(200)
}

type token = {age: Age.t, price: Price.t}
let token = {
  age: getPrice(),
  price: Age.fromInt(10),
}

let age = Age.fromInt(10)
