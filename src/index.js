// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Bchjs = require("./bchjs.js");

var mnemonic = "upper live drama long foster clap monster test fringe ticket renew ticket";

Bchjs.bchjs.Mnemonic.toSeed(mnemonic).then(function (seedBuffer) {
      var hdnode = Bchjs.bchjs.HDNode.fromSeed(seedBuffer);
      var childHdnode = Bchjs.bchjs.HDNode.derivePath(hdnode, "m/44'/145'/0'");
      console.log(Bchjs.bchjs.HDNode.toCashAddress(childHdnode, false));
      return Promise.resolve(undefined);
    });

exports.mnemonic = mnemonic;
/*  Not a pure module */
