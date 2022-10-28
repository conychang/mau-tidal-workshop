SuperDirt.start;

//////////// TDへの送信 ////////////
// 基本的にDay6でやったものと一緒です！
// とりあえずSuperDirtの受けるOSCメッセージをすべて特定のポートへ横流しする
(
var addr = NetAddr.new("127.0.0.1", 9000); // 相手のIPアドレスと送信するポート
o = OSCFunc({
	arg msg, time;
	var latency = time - Main.elapsedTime;
	addr.sendBundle(latency, msg);
	msg.postln; // どのようなメッセージが送られているかpost windowで確認
},'/dirt/play');
)

o.free;

// "sine"という名前のサウンドを鳴らすときに特定のポートへ音量の数値を送る
(
var addr = NetAddr.new("127.0.0.1", 9000); // 相手のIPアドレスと送信するポート
o = OSCFunc({
arg msg, time;
var gain = -1;
for (0, msg.size,
	{
	arg i;
	if (msg[i].asString == "sine")
		{
			for (0, msg.size,
				{
					arg i;
				if (msg[i].asString == "gain")
				{
					gain = msg[i+1].asFloat;
					gain.postln;
					addr.sendMsg("/touch", gain);
				}}
			)
        }
     }
);
},'/dirt/play');
)

//////////// TDからの受信 ////////////

thisProcess.openUDPPort(7400); // open port 7400 - 7400番のポートを開ける
thisProcess.openPorts; // list all open ports - 開いているポートのリストを表示

// 受信しているOSCメッセージをを確認する
o = OSCFunc({ arg msg, time, addr, recvPort; [msg, time, addr, recvPort].postln; }, '/pulse');
o.free;

// TDのCHOP"beat"のパルスが1.0になったときだけSuperCollider側で何かする
(
o = OSCFunc(

	{
		arg msg;
		var num1;
		num1 = msg[1];
		if (num1.asFloat == 1.0, {
			msg.postln; // msgの内容を出力
			(type: \dirt, dirt: ~dirt, s: \808, speed: 1.25, gain: 2).play; // サンプルを鳴らす
		})
	}
	, '/pulse'

);
)


// TDのCHOP"LFO"の値が小数点以下第3位まで丸めると0.999になったときだけSuperCollider側で何かする
(
o = OSCFunc(

	{
		arg msg;
		var num1;
		num1 = round(msg[1].asFloat, 0.001);
		if (num1 == 0.999, {
			msg.postln; // msgの内容を出力
			(type: \dirt, dirt: ~dirt, s: \808, speed: 0.75, gain: 2).play; // サンプルを鳴らす
		})
	}
	, '/chan1'

);
)

// SuperColliderだけを使うとこういうこともできます: TDのCHOP"LFO"の値をサインウェーブのピッチに変換
// まずサインウェーブを生成する
(
Ndef(\a, {
	arg freq = 0.1;
	SinOsc.ar([freq * 440, freq * 444], 0 , 0.06)
}
).play;
)
Ndef(\a).gui; // GUIを表示
Ndef(\a).clear; // 消す

// OSCでTDからLFOの値を受信してシンセへ代入する
(
o = OSCFunc(

	{
		arg msg;
		var freq = 0.1;
		freq = msg[1].asFloat.abs;
		Ndef(\a).set(\freq, freq);
	}
	, '/chan1'

);
)

o.free;

// TD (DATを使う) -> SuperCollider
// "/hey"というメッセージが来たら
(
o = OSCFunc(

	{
		arg msg;
		(type: \dirt, dirt: ~dirt, s: \808, speed: 1.25, gain: 2).play; // サンプルを鳴らす
	}
	, '/hey'

);
)

// "/hey"というメッセージが来たらメッセージ内の2番目に送られてくる数字をspeedに代入する
(
o = OSCFunc(

	{
		arg msg;
		(type: \dirt, dirt: ~dirt, s: \808, speed: msg[1].asFloat, gain: 2).play; // サンプルを鳴らす
	}
	, '/hey'

);
)