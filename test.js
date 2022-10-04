const { fromXPub } = require("./src/index.bs");
// 
let xpub =
  "xpub6DTNmB7gWa8RtQAfmy8wSDikM5mky4fhsnqQd9AqoCaLcekqNgRZW5JCSXwXkLDkABHTD1qx7kqrbGzT6xBGfAvCJSj2rwvKWP8eZBR2EVA";
// "bitcoincash:qptnmya5wkly7xf97wm5ak23yqdsz3l2cyj7k9vyyh";
fromXPub(xpub, "0/0").then(console.log);


// test net xpub 
let xpub2 =
"tpubDCrnMSKwDMAbxg82yqDt97peMvftCXk3EfBb9WgZh27mPbHGkysU3TW7qX5AwydmnVQfaGeNhUR6okQ3dS5AJTP9gEP7jk2Wcj6Xntc6gNh";
//bchtest:qq322ataqeas4n0pdn4gz2sdereh5ae43ylk4qdvus
fromXPub(xpub2, "0/4").then(console.log);
