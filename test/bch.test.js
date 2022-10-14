// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Bchjs = require("../src/bchjs.js");
var Js_string = require("rescript/lib/js/js_string.js");
var Belt_Array = require("rescript/lib/js/belt_Array.js");
var Mocha$RescriptMocha = require("rescript-mocha/src/Mocha.js");
var Assert$RescriptMocha = require("rescript-mocha/src/Assert.js");

function contains(text, pattern) {
  return text.indexOf(pattern) >= 0;
}

Mocha$RescriptMocha.describe("#Mnemonic")(undefined, undefined, undefined, (function (param) {
        Mocha$RescriptMocha.describe("#generate")(undefined, undefined, undefined, (function (param) {
                var result = [
                  [
                    128,
                    12
                  ],
                  [
                    160,
                    15
                  ],
                  [
                    192,
                    18
                  ],
                  [
                    224,
                    21
                  ],
                  [
                    256,
                    24
                  ]
                ];
                Belt_Array.forEach(result, (function (param) {
                        var result = param[1];
                        var key = param[0];
                        Mocha$RescriptMocha.it("should generate a " + key.toString() + " word mnemonic")(undefined, undefined, undefined, (function (param) {
                                var mnemonic = Bchjs.bchjs.Mnemonic.generate(key);
                                Assert$RescriptMocha.equal(undefined, Js_string.split(" ", mnemonic).length, result);
                              }));
                      }));
              }));
      }));

exports.contains = contains;
/*  Not a pure module */