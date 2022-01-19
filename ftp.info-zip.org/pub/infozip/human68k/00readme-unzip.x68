
			UnZip 5.40 human68k-1.0


━☆ 始めに ☆━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

　Info-ZIP グループによる UnZip と、サポートツールを移植しました.

　一部のルーチンをアセンブリ言語により記述することにより、高速化してあり
ます. また、decryption ルーチンを含んでいるので、暗号の掛かった書庫を展
開することが出来ます.

　著作権の扱いや配布規定はオリジナルに従います. 改変したものの配布には連
絡が必要とありますが、このバージョンは連絡済みです. 無保証、転載可です.


━☆ プログラムの説明 ☆━━━━━━━━━━━━━━━━━━━━━━━━

　bin ディレクトリにあるファイルは全機種用、bin030 ディレクトリにあるフ
ァイルは 68020 以降(要 FPU)の機種用の実行ファイルです.

　以下、簡単な説明. 詳細は doc ディレクトリのマニュアルを参照して下さい.

unzip.x
	　書庫を展開するツールです.

funzip.x
	　書庫に格納されているファイルのうち、最初のファイルだけを展開し、
	標準出力に書き出します.

unzipsfx.x
	　自己解凍書庫(SFX)を作成するための実行ファイルです. zip 自体に
	は SFX 作成する機能はついていないので、各自で処理する必要があり
	ます.

	　foo.zip を foo.x に変換する工程を以下に示します. なお、lzx は
	必ず ITA lzx を使用して下さい.

	lzx unzipsfx.x
	cat unzipsfx.x foo.zip > foo.x
	zip -A foo.x


━☆ 開発環境 ☆━━━━━━━━━━━━━━━━━━━━━━━━━━━━

gcc2 version 2.6.3 (68k, Human68k, Lv.3 Exp.16)  FSF / Charlie
HAS060 version 3.09+85+13[g2as]		Y.Nakamura / M.Kamada /
					立花えり子
HLK evolution version 3.01+12[g2lk]	SALT / 立花えり子
GNU Make version 3.77 human68k-1.0	FSF (自分で移植版)
GNU diffutils version 2.7 human68k-1.2	〃 (〃)
MicroEMACS j1.43 (rel.5c7-beta4)	Sharl 他

libgcc version x.xx patchlevel 6	FSF / Charlie / 立花えり子
LIBC version 1.1.32A			Project C Library Group
	+ ぱっち その１５		立花えり子
libttyi version 0.10			〃
libhmem ver1.10b			oo

(敬称略)


━☆ 連絡先 ☆━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

NAZO0352	どこかの謎のＢＢＳ(休止中)
MKSX0275	Mankai Special X680x0 user's Net
PANP0026	ぱにっくぱらだいす
SCOT0017	Network-SCoT

E-mail: eririn@ma.mailbank.ne.jp

立花えりりん(立花えり子)

[EOF]
