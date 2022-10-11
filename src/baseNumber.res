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

type token = {age: Age.t, age2: Age.t}

let token = {
  age: Age.fromInt(10),
  age2: BaseInt.fromInt(10),
}
