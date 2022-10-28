(
// SuperColliderでは
// カッコで囲ったところが実行されます。
// カッコで囲われていないところで実行した場合は現在の行が実行されます。
// コードの改行は;セミコロンを使います。
".postln をつけると、ポストウィンドウに内容が反映される".postln;
// In SuperCollider, the
// the line enclosed in parentheses will be executed.
// If you execute anywhere that is not enclosed in parentheses, the current line will be executed.
// Use a ; semicolon to break the line of code.
".postln reflects the contents in the post window".postln;
)

// command(ctrl)+Dでヘルプが表示されます。command(ctrl)+D for help.

SuperDirt.start;

// OSCメッセージの確認
// Check OSC Messages
OSCFunc.trace(true, true); // Turn posting on
OSCFunc.trace(false); // Turn posting off


/////////////////////////////////////////////////////////////////////////////////////////


// OSCメッセージの送信
// Send OSC Messages

// とりあえずSuperDirtの受けるOSCメッセージをすべて特定のポートへ横流しする
(
var addr = NetAddr.new("127.0.0.1", 9000);
o = OSCFunc({
arg msg, time;
var latency = time - Main.elapsedTime;
addr.sendBundle(latency, msg)
},'/dirt/play');
)

o.free;

// "sine"という名前のサウンドを鳴らすときに特定のポートへメッセージを送る
(
var addr = NetAddr.new("127.0.0.1", 7400);
o = OSCFunc({
arg msg, time;
var latency = time - Main.elapsedTime;
var event = (), orbit;
	for (0, msg.size,
		{
		arg i;
		if (msg[i].asString == "sine")
			{
				"a selected file sounded.".postln;
				addr.sendMsg("/clap");
	        }
	     }
	);
},'/dirt/play');
)

o.free;


/////////////////////////////////////////////////////////////////////////////////////////


// OSCメッセージの受信
// Receive OSC Message

thisProcess.openUDPPort(7500); // open port 7400 - 7400番のポートを開ける
thisProcess.openPorts; // list all open ports - 開いているポートのリストを表示

// 受信できているか確認
// Check received message
o = OSCFunc({ arg msg, time, addr, recvPort; [msg, time, addr, recvPort].postln; }, '/text');
o.free;

().play;

// 例: /textの中身が"Good"だったら808のサンプルを鳴らす
(
o = OSCFunc(

	{
		arg msg;
		msg[1].postln;
		if (msg[1].asString == "Good", {
			(type: \dirt, dirt: ~dirt, s: \808, speed: -1, gain: 2).play;
			"gong".postln;
		})
	}
	, '/text'

);
)

// ちなみに、これはSuperColliderだけでSuperDirtのサンプルを鳴らすコードです。
(type: \dirt, dirt: ~dirt, s: \808, speed: -1, gain: 2).play;

// 例: /808を受信したら、808サンプルをOSCで指定した再生速度で鳴らす
(
o = OSCFunc(

	{
		arg msg;
		(type: \dirt, dirt: ~dirt, s: \808, speed: msg[1].asFloat,
		 gain: 2, n: [0,5,10].rand).play;
	}
	, '/808'

);
)

// 6010
(
o = OSCFunc(

	{
		arg msg;
		(type: \dirt, dirt: ~dirt, s: \808, speed: msg[1].asFloat,
		 gain: 2, n: [0,5,10].rand).play;
	}
	, '/808'

);
)

(
var a;
a = List[1, 2, 3, 4];
a.removeAt(3);
a;
)

(
var addr = NetAddr.new("127.0.0.1", 6010); // 送り先は自分のPCのTidalが使っているポート

o = OSCFunc({
	arg msg;
	if (msg.size == 2, { // OSCメッセージのサイズが2のときは
		addr.sendMsg(msg[1]); // メッセージの1番目だけ送る
	}, {
		if (msg.size == 3, { // OSCメッセージのサイズが3のときは
		addr.sendMsg(msg[1], msg[2]).postln; // メッセージの1, 2番目を送る
		})
	} )
},'/playback');
)

o.free;