[eval exp="f.nasake =0"]
*start

[title name="究極の1/2"]
[hidemenubutton]
[wait time=200]
[freeimage layer="base"]
[freeimage layer="1"]
[freeimage layer="2"]
[position frame="none" color="0x000000" opacity="128"]
[position left="0" top="300" width="640" height="300"]
[position margint="50" marginl="25" marginr="25" marginb="10"]
[position left="0" top="100" width="640" height="600"]
[position margint="50" marginl="25" marginr="25" marginb="10"]
[bg storage=Norm.jpg time=500]
「とあるゲーマーの日常」[l][r]

*RandDef
[eval exp="f.trial = 0"]

[position left="0" top="100" width="640" height="600"]
[position margint="50" marginl="25" marginr="25" marginb="10"]
1~2048の好きな数字を入力してね！[r]
この数字が大きいほど難しくなるよ[r]
1===32===2048[r]
簡単、中、クリア不可能[r]
1/2の確率でやりたい人は3000と入れてね[r]

[eval exp="f.input=0"]
[edit name="f.input" left="870" top="350" width="200" height="40" size="30" maxchars="4" initial="2048"]
 
[button graphic="config/arrow_next.png" target="*RandCh" x="940" y="440"]
[s]



*RandCh
[commit]
[cm]

[eval exp="f.User = parseInt(f.input,10)"]
[if exp="Number.isFinite(f.User) == false"]
数値以外が代入されています。[p]
[jump target = *RandDef]
[endif]
[if exp="f.User == 3000"]
1/2モード[p]
[elsif exp="f.User == 2890"]
チートモード[p]
[elsif exp="f.User > 2048"]
数値が大きすぎます。[p]
[jump target = *RandDef]
[endif]
[if exp="f.User < 0"]
数値が小さすぎます。[p]
[jump target = *RandDef]
[endif]

;[emb exp="typeof(f.input)"]
[eval exp="f.User = parseInt(f.input,10)"]
;[emb exp="typeof(f.User)"]
;[emb exp="f.User"]
; 数値計算をすべてここで定義しとく
[iscript]
f.a = Math.random();
f.K = Math.log(f.User)/Math.log(2);
if (f.User == 2890){
    f.fix = 0;
    f.last = 0;
}
else if(f.User == 3000){
    f.fix = 0.5;
    f.fix = 0.5;

}
else{
    f.fix = (f.K+5)/20;
    f.last = (f.K+8.5)/20;
}
f.l = 1-(f.K+5)/20
f.whole = (f.l)*(f.l)*(f.l)*(f.l)*(f.l)*(1-(f.K+8.5)/20);
[endscript]

[jump target = *start1]



*start1
;[position left="0" top="300" width="640" height="300"]
;[position margint="50" marginl="25" marginr="25" marginb="10"]


[bg storage=whiteimage.png time=500]



ある日曜日、あなたは夜遅くまでゲームを[r]
していた[l][r]

;[locate x=100 y=600]
[image name="Hero" storage="game_tetsuya_man.png" layer="1" x="700" y="154" width="600" height"600"]
[image name="time23" storage="11zi.png" layer="2" x="800" y="50" width="100" height"100"]
[layopt layer="1" visible="true"]
[layopt layer="2" visible="true"]
[bg storage=Norm.jpg time=500]

;[bg storage=game_tetsuya_man.png time=500][l]

一人モク中!!![l][r]

あーあーナイストライ[l][r]

この日は負け続けてランクが降格保護を[r]
受けていた。[l][r]

ふと時間を見ると23時になっていた。[p]
明日は学校かー早く寝なきゃな[r][l]
[r][l]
いや、3日後のランク終了時までにプラチナに上がらなきゃいけないんだ[r][l]
そうしないと、これまでの努力が無駄になってしまう[p]

寝るか、意地を張って[r]
次のゲームに行くかを選んでください。[l][r]
[font color="0x99FFFF" size="25" ]-次のゲームを選択した場合、[r]
[font color="0x99FFFF" size="25" ]寝不足で倒れる確率は[emb exp=f.fix]です[l][r]

[locate x=100 y=600]
[button graphic="sleep.jpg" target=*tag_sleep width=300 height=100][endlink][r]

[locate x=800 y=600]
[button graphic="Nextgame.jpg" target=*tag_run width=300 height=100][endlink][r]



[s]


;*===========================================
*tag_run
[layopt layer="1" visible="false"]
[layopt layer="2" visible="false"]
[cm]
[bg storage=whiteimage.png time=500]

;[iscript]
;f.a = Math.random()
;f.K = Math.log(f.User)/Mathlog(2)
;f.fix = f.K/20
;[endscript]　すべて上にもっていきました
[eval exp="f.trial = f.trial + 1"]

[if exp="f.a < f.fix"]
;飛ぶ前[p]
[jump target=*badend]
[endif]
; ランダム条件分岐
[bg storage=Norm.jpg time=500]
[freeimage layer="2"]
[image name="time12" storage="12zi.png" layer="2" x="800" y="50" width="100" height"100"]
[layopt layer="1" visible="true"]
[layopt layer="2" visible="true"]
1回目の確率突破おめでとう[p]
;[emb exp=f.a]デバッグ用[r]
;[emb exp=f.trial][r][l]

体は持ちこたえた[l][r]

最後ミッドだから解除行ける!!![l][r]

やった！GGEZ[l][r]

勝てるようになってきた[l][r]

でも時間は24時かぁ[p]

寝るか、この調子で次のゲームに行くか[r]
を選んでください。[l][r]
[font color="0x99FFFF" size="25" ]-次のゲームを選択した場合、[r]
[font color="0x99FFFF" size="25" ]寝不足で倒れる確率は[emb exp=f.fix]です[l][r]

[locate x=100 y=600]
[button graphic="sleep.jpg" target=*tag_sleep width=300 height=100][endlink][r]

[locate x=800 y=600]
[button graphic="Nextgame.jpg" target=*tag_trial2 width=300 height=100][endlink][r]

[s]

;====================================================
*tag_trial2
[layopt layer="1" visible="false"]
[layopt layer="2" visible="false"]
[cm]
[bg storage=whiteimage.png time=500]
[eval exp="f.trial = f.trial + 1"]
[iscript]
f.a = Math.random()
[endscript]
[if exp="f.a < f.fix"]
[cm]
[jump target=*badend]
[endif]

[bg storage=Norm.jpg time=500]
[freeimage layer="2"]
[image name="time1" storage="1zi.png" layer="2" x="800" y="50" width="100" height"100"]
[layopt layer="1" visible="true"]
[layopt layer="2" visible="true"]
2回目の確率突破おめでとう[p]
;[emb exp=f.a]デバッグ用[r]
;[emb exp=f.trial][r][l]
やっとキルレートが安定してきた。[r]

この調子で行ってみよう[r][l]

ちなみに時刻は1時。[r]
まだいけそうだ[p]

寝るか、この調子で次のゲームに行くか[r]
を選んでください。[l][r]
[font color="0x99FFFF" size="25" ]-次のゲームを選択した場合、[r]
[font color="0x99FFFF" size="25" ]寝不足で倒れる確率は[emb exp=f.fix]です[l][r]

[locate x=100 y=600]
[button graphic="sleep.jpg" target=*tag_sleep width=300 height=100][endlink][r]

[locate x=800 y=600]
[button graphic="Nextgame.jpg" target=*tag_trial3 width=300 height=100][endlink][r]
[s]
;=====================================================
*tag_trial3
[layopt layer="1" visible="false"]
[layopt layer="2" visible="false"]
[bg storage=whiteimage.png time=500]
[eval exp="f.trial = f.trial + 1"]
[iscript]
f.a = Math.random()
[endscript]
[if exp="f.a < f.fix"]
[cm]
[jump target=*badend]
[endif]
[cm]
[bg storage=Norm.jpg time=500]
[freeimage layer="2"]
[image name="time2" storage="2zi.png" layer="2" x="800" y="50" width="100" height"100"]
[layopt layer="1" visible="true"]
[layopt layer="2" visible="true"]
3回目の確率突破おめでとう[p]
;[emb exp=f.a]デバッグ用[r]
;[emb exp=f.trial][r][l]
味方運もいい。[r]

この調子で行ってみよう[r][l]

ちなみに時刻は2時。[r]
まだいけそうだ[p]

寝るか、この調子で次のゲームに行くか[r]
を選んでください。[l][r]
[font color="0x99FFFF" size="25" ]-次のゲームを選択した場合、[r]
[font color="0x99FFFF" size="25" ]寝不足で倒れる確率は[emb exp=f.fix]です[l][r]

[locate x=100 y=600]
[button graphic="sleep.jpg" target=*tag_sleep width=300 height=100][endlink][r]

[locate x=800 y=600]
[button graphic="Nextgame.jpg" target=*tag_trial4 width=300 height=100][endlink][r]
[s]
;=========================================
*tag_trial4
[layopt layer="1" visible="false"]
[layopt layer="2" visible="false"]
[cm]
[bg storage=whiteimage.png time=500]
[eval exp="f.trial = f.trial + 1"]
[iscript]
f.a = Math.random()
[endscript]
[if exp="f.a < f.fix"]
[cm]
[jump target=*badend]
[endif]
[bg storage=Norm.jpg time=500]
[freeimage layer="2"]
[image name="time230" storage="230zi.png" layer="2" x="800" y="50" width="100" height"100"]
[layopt layer="1" visible="true"]
[layopt layer="2" visible="true"]
4回目の確率突破おめでとう[p]
;[emb exp=f.a]デバッグ用[r]
;[emb exp=f.trial][r][l]
やっているうちにランクはゴールドまで来た[r]

目標のプラチナには後一歩だ[r][l]

ちなみに時刻は2時30分。[r]
そろそろ明日の学校に響きそうだ[p]

寝るか、この調子で次のゲームに行くか[r]
を選んでください。[l][r]
[font color="0x99FFFF" size="25" ]-次のゲームを選択した場合、[r]
[font color="0x99FFFF" size="25" ]寝不足で倒れる確率は[emb exp=f.fix]です[l][r]

[locate x=100 y=600]
[button graphic="sleep.jpg" target=*tag_sleep1 width=300 height=100][endlink][r]

[locate x=800 y=600]
[button graphic="Nextgame.jpg" target=*tag_trial5 width=300 height=100][endlink][r]
[s]
;=========================================

*tag_trial5
[layopt layer="1" visible="false"]
[layopt layer="2" visible="false"]
[cm]
[bg storage=whiteimage.png time=500]
[eval exp="f.trial = f.trial + 1"]
[iscript]
f.a = Math.random()
[endscript]
[if exp="f.a < f.fix"]
[cm]
[jump target=*badend]
[endif]
[bg storage=Norm.jpg time=500]
[freeimage layer="2"]
[image name="time3" storage="3zi.png" layer="2" x="800" y="50" width="100" height"100"]
[layopt layer="1" visible="true"]
[layopt layer="2" visible="true"]
5回目の確率突破おめでとう[p]
;[emb exp=f.a]デバッグ用[r]
;[emb exp=f.trial][r][l]
あと一勝で目標のプラチナだ[r][l]


ちなみに時刻は3時。[r]
これ以上やったら体調を壊しそうだ[p]

寝るか、この調子で次のゲームに行くか[r]
を選んでください。[l][r]
[font color="0x99FFFF" size="25" ]-次のゲームを選択した場合、[r]
[font color="0x99FFFF" size="25" ]寝不足で倒れる確率は[r]
[r]
[r]
[r]
[font color="0xff2121" size="120" ][emb exp=f.last][r][l]
[font color="0x99FFFF" size="25" ]です[l][r]

[locate x=100 y=600]
[button graphic="sleep.jpg" target=*tag_sleep1 width=300 height=100][endlink][r]

[locate x=800 y=600]
[button graphic="Nextgame.jpg" target=*tag_last width=300 height=100][endlink][r]
[s]
;===================================
*tag_last
[layopt layer="1" visible="false"]
[layopt layer="2" visible="false"]
[cm]
[bg storage=whiteimage.png time=500]
[eval exp="f.trial = f.trial + 1"]
[iscript]
f.a = Math.random()
[endscript]
[if exp="f.a < f.last"]
[cm]
[jump target=*badend]
[endif]
[bg storage=Norm.jpg time=500]
おめでとう[r][l]
[cm]
[jump target=*tag_final]
;===========================
*tag_final
[freeimage layer="2" time="200"]
[image name="Hero1" storage="happy_schoolboy.png" layer="2" x="700" y="154" width="600" height"600"][r]
[layopt layer="2" visible="true"]

あなたは確率の神を打ち破り、見事に、[r]
[emb exp=f.whole]の確率を突破しました。[p]
; [font size="1000" "][p]
[ptext layer="2" x="0" y="150" color="0x0000FF text="CONGRATULATION" size="40" width="960" align="center"]
またの挑戦を待っておる[p]
[cm]
[layopt layer="2" visible="false"]
[bg storage=whiteimage.png time=500]
[jump target=*credit]
[s]
;============
*credit
ゲームをプレイしていただきありがとうございます。[p]
制作者;にゃー[r]
画像:いらすとや[r]
制作日;2024/11/17[p]
[if exp="f.User == 2048"]
まじで言ってる！？[r][l]
君は本当の確率の神に勝ったんだね[p]
宝くじ買ったら？[p]
[jump target=*credit]
[endif]

次回は難易度を上げて挑戦してみてね！[p]
[jump target=*start]
;==============================
*tag_sleep
[layopt layer="1" visible="false"]
[layopt layer="2" visible="false"]
[cm]
[bg storage=whiteimage.png time=500]
[freeimage layer="2" time="200"]
[image name="Hero1" storage="sleep_bed_young_man.png" layer="2" x="700" y="154" width="600" height"600"][r]
[layopt layer="2" visible="true"]
[bg storage=Norm.jpg time=500]

; [bg storage=sleep_bed_young_man.png time=500][l]

あなたはランクなど忘れ、[r]
健康に早寝をした。[l][r]
[r]
[r]
[r]


【 Healthy END 】[l][cm]

別パターンもあるぞ！[l]
試してみよう![l][cm]
[layopt layer="2" visible="false"]
[bg storage=whiteimage.png time=500]
[jump target=*start]
;==============================
*tag_sleep1
[freeimage layer="2" time="200"]
[image name="Hero1" storage="sleep_bed_young_man.png" layer="2" x="700" y="154" width="600" height"600"]
[layopt layer="1" visible="false"]
[layopt layer="2" visible="true"]
[bg storage=whiteimage.png time=500]
[bg storage=Norm.jpg time=500]
[cm]

; [bg storage=sleep_bed_young_man.png time=500][l]

あなたはその後、忙しくなってしまったため目標ランクには到達しなかったが、[r]
体は健康に保たれた[l][r]
[r]
[r]
[r]


【 Another Healthy END 】[l][cm]

別パターンもあるぞ！[l]
試してみよう![l][cm]
[layopt layer="2" visible="false"]
[bg storage=whiteimage.png time=500]
[jump target=*start]
;===========================================
*badend
;飛んだ後[p]
[freeimage layer="2" time="200"]
[image name="died" storage="heartattack.png" layer="2" x="700" y="154" width="600" height"600"]
[layopt layer="1" visible="false"]
[layopt layer="2" visible="true"]
[bg storage=whiteimage.png time=500]
[bg storage=Norm.jpg time=500]
[cm]
あなたは賭けに負け、倒れた。[p]
[if exp="f.trial == 1"]
一回目に確率に見放されるとは、、[r]
運がないのぉ[r][l]
[r]
[r]
神より[p]
[eval exp="f.nasake =f.nasake + 1"]
[if exp ="f.nasake == 3"]
不運なあなたへ[l]
[r]
タイトルで2890といれると[r]
なにか起こるかもしれぬぞ[r][l]
[eval exp="f.nasake = 0"]
[endif]
[endif]
[if exp="f.trial == 2"]
こっそり教えてやろう[r][l]
6回で真のエンディングが見れるぞ[r][l]
[endif]
[if exp="f.trial == 3"]
こっそり教えてやろう[r][l]
6回で真のエンディングが見れるぞ[r][l]
[endif]

[if exp="f.trial == 6"]
惜しい[r][l]
あと一歩だったな[r][l]
[endif]
またの挑戦を待っておる[l]
[cm]
[layopt layer="2" visible="false"]
[bg storage=whiteimage.png time=500]
[jump target=*start]
[s]