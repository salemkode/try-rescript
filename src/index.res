// create mnemonic
let mnemonic = Mnemonic.generate(128)
// create seed buffer from mnemonic
let main = () => {
  let _ = Mnemonic.toSeed(mnemonic)->Promise.then(seedBuffer => {
    // create HDNode from seed buffer
    let hdNode = Hdnode.fromSeed(seedBuffer)
    // to cash address
    Js.log(Hdnode.toCashAddress(hdNode))
    // bitcoincash:qqrz6kqw6nvhwgwrt4g7fggepvewtkr7nukkeqf4rw
    Promise.resolve()
  })
}

main()