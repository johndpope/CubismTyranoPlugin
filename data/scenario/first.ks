;ゲームに必要なライブラリ読み込み
[call target=*start storage="tyrano.ks"]


;live2dプラグインを読込
[call storage="live2d/live2d.ks"]
; Live2Dモデルの生成（ハル）
[live2d_new name="haru"]
; Live2Dモデルの生成（イプシロン）
[live2d_new name="Epsilon" left="100" glscale=1.3 width=460 height=460]


;メッセージレイヤは最初は非表示
[layopt layer="message0" visible=false]
; メッセージの表示
[position layer=message0 page=fore frame="button1.png" margint="30" marginl="30" margin="30" marginnb="30"]
[position width=600 height=200 top=280]


;タイトルの設定
[title name="Live2Dサンプル"]


; 背景とメッセージレイヤーを表示する
[layopt layer="message0" visible=true]
[bg storage=room.jpg time=300]


; Live2Dモデルの表示（ハル）
[live2d_show name="haru"]
[cm]
このゲームはLive2Dの動作サンプル集です[p]

Live2Dを使う事で今までにないアニメーションを[r]する事ができます[p]
このサンプルではLive2Dの使い方を紹介するね[p]


最初にちょっと移動してみるね[p]
[live2d_trans name="haru" left=200 top=0]
[wait time=1500]
[live2d_trans name="haru" left=0 top=-50]
[wait time=1500]
[live2d_trans name="haru" left=0 top=10]
[live2d_trans name="haru" left=0 top=0]
[wait time=1500]


あとは回転したり拡大縮小もできるよ[p]
[live2d_rotate name="haru" rotate=360]
[wait time=2000]
[live2d_scale name="haru" scaleX=0.5 scaleY=0.5]
[wait time=1000]
[live2d_scale name="haru" scaleX=1.0 scaleY=1.0]
[wait time=1500]


透明度を調整したり[r]
[live2d_opacity name="haru" opacity="0.5" time="100"]
[wait time=2000]
[live2d_opacity name="haru" opacity="1.0" time="100"]
[wait time=500]


キャラクターを揺らす事もできるよ♪[p]
[live2d_shake name="haru"]
[wait time=1500]


さらにモーションや音声の再生もできるよ[p]
[live2d_motion name="haru" filenm="8"]
[wait time=3500]
[live2d_motion name="haru" filenm="17"]
[wait time=3000]

友達を紹介するね。イプシロンちゃーんっ！[p]
[live2d_trans name="haru" left=-200 top=0]
[wait time=1000]

[live2d_show name="Epsilon"]
[live2d_trans name="Epsilon" left=100 top=-70]
はいはーい[p]
[wait time=1000]

ねっ、これでLiv2Dを使ったゲームも作れるね！[p]
[live2d_motion name="haru" filenm="3"]
[live2d_motion name="Epsilon" filenm="4"]
じゃあ、ゲーム開発を頑張ってね。[r]ばいばーい[p]
[live2d_delete name="haru"]
[live2d_delete name="Epsilon"]

