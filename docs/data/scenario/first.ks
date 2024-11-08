*start

[title name="究極の1/2"]
[hidemenubutton]
[wait time=200]
[freeimage layer="base"]

「走るか寝るかするメロス」[l][r]

[bg storage=whiteimage.png time=500]

メロスは激怒した。[l][r]

必ず、かの邪智暴虐の王を除かねばならぬと決意した。[l][r]

(中略)[l][r]

ああ、何もかも、ばかばかしい。私は、醜い裏切り者だ。どうとも、勝手にするがよい。やんぬる哉。[l][r]
メロスは...[l][r]
[locate x=100 y=400]
[button graphic="sleep.jpg" target=*tag_sleep width=300 height=100][endlink][r]


[link target=*tag_sleep] →寝る [endlink][r]
[link target=*tag_run] →走る [endlink][r]
[s]

*tag_sleep

[cm]

[bg storage=sleep.jpg time=500]

メロスは死んだように深く眠った。[l][r]
勇者は、ひどく赤面した。[r]

[bg storage=game_tetsuya_man.png time=500][l]

【 BAD END 】[l][cm]

[jump target=*start]

*tag_run

[bg storage=run.jpg time=500]

[cm]
メロスは黒い風のように走った。[l][r]
陽は、ゆらゆら地平線に没し、まさに最後の一片の残光も、消えようとした時、メロスは疾風の如く刑場に突入した。間に合った。[r]

【 GOOD END 】[l][cm]

[jump target=*start]
