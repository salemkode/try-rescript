// ported from the fast-check getting started guide
// https://github.com/dubzzz/fast-check#getting-started
open Bchjs
open RescriptMocha.Mocha

open FastCheck
open Arbitrary
open Property.Sync

// Code under test
let contains = (text, pattern) => text->Js.String2.indexOf(pattern) >= 0

// Properties
describe("#Mnemonic", () => {
  describe("#generate", () => {
    let result = [
      (128, 12),
      (160, 15),
      (192, 18),
      (224, 21),
      (256, 24),
    ]

    Belt.Array.forEach(
      result,
      ((key, result)) => {
        it(
          "should generate a " ++ Js.Int.toString(key) ++ " word mnemonic",
          () => {
            let mnemonic = bchjs.mnemonic->Mnemonic.generate(key)

            RescriptMocha.Assert.equal(Js.String.split(" ", mnemonic)->Js.Array.length, result)
          },
        )
      },
    )
  })
})
