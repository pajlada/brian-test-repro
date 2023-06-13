import { Socket } from "net";
import { TLSSocket } from "tls";

const port = 6697;
const host = "irc.chat.twitch.tv";

const backingSocket = new Socket();
const stream = new TLSSocket(backingSocket);

backingSocket.connect(port, host);

stream.connect(port, host);
