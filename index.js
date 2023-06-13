const { ChatClient } = require("@kararty/dank-twitch-irc");
let client = new ChatClient();
client.on("ready", () => console.log("Successfully connected to chat"));
client.on("close", (error) => {
  if (error != null) {
    console.error("Client closed due to error", error);
  }
});
client.on("PRIVMSG", (msg) => {
  console.log(`[#${msg.channelName}] ${msg.displayName}: ${msg.messageText}`);
});
// See below for more events
client.connect();
client.join("forsen");
