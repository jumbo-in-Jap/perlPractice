#!/usr/bin/env perl
#use strict;# コレを使うと変数を宣言して使わないと行けなくなる
use Data::Dumper; # これがないとダンプできない

$suji = 10;
$moji = "test";
$renketsumoji = " is ";

print "This is $moji\n";
print "This is $suji\n";

# 文字連結表示
print "This".$renketsumoji."moji\n";
print "This${renketsumoji}moji\n";

# シングルクオートだと変数展開されない
# 文字列演算
#print $suji x $moji,"\n";
# 演算子は同じ部分が多い

# 配列
# push, pop, shift, reverse, sortが可能
@fruits = ("apple","nashi","banana");
print "$fruits[0]\n";
# 配列末尾
# $fruit[$#fruit]

# カウントはこう取る
$arrayCtn = $fruits;

# append
@fruits = (@fruits, "grape");

# リスト構造
# リストを配列に代入すれば配列になるし、リストをハッシュに代入すればハッシュになる
($list1, $list2, $list3) = ('sub', 'sta', 'fri');
# リストとは、スカラーの集合に順序を付けて並べたものです。
# 配列とは、リストを保持する変数のことです。
# リストはデータであり、配列は変数であるという違いがあります。

@week = ('Sun', 'Mon', 'Tue', 'Wed');
@week = qw(
	Sun	
	Mon		
	Tue		
	Wed
);
print Dumper @week;

# 多次元配列
# () リファレンスで配列、{}リファレンスでハッシュを意味する
# リファレンスとは上記二つで定義する事
@list = (
		['a', 'b', 'c'],	
		['d', 'e', 'f'],	
		['g', 'h', 'i'],		
);
push(@list, ['te','a']);	
foreach $tmp (@list) {
	print "@{$tmp}\n";			
}

# hashは普通
#キーのクォーテーションを省略した例-1
%fruit = (red => "apple", yellow => "banana", purple => "grape");
# キーのクォーテーションを省略した例-2
print "$fruit{red}\n";

# 多次元hashもできる
%hash = (	
	A => { a => 1, b => 2, c => 3 },
	B => { d => 4, e => 5, f => 6 },	
);		
print "$hash{A}{a}\n";

# foreach
foreach $i (3, 2, 1) {
		print "カウントダウン : $i \n";
}

# for文にはnewt, last, redoがある
for ($i = 0; $i < 10; $i++)
{ next;
	print "for $i";
} 

# 標準入出力
print "入力してくれ！！";my $line = <STDIN>; 
print $line;

# 正規表現
$word = 'apple';

if ($word =~ /a/) {
		print "含まれています。\n";
} else {
		print "含まれていません。\n";
}

# perlではメソッドではなくサブルーチン
# メソッドの呼び出しは&はなくてもいい
($total, $mean) = &answer(80, 55, 75);
print "合計点数は$total点で、平均点数は$mean点です。\n";

sub answer {
	 
	# ここで引数を@_で受け取る		
	($x, $y, $z) = @_;	
	$total = $x + $y + $z;
	$mean = $total / 3;
		
	# 配列で値を返す
	return ($total, $mean);	 					
}

# ローカルな変数宣言
sub foo 
{
	# 完全にローカルのため参照できない
	my $test1 = 20;
	# 上のスコープから参照できる
	local $test2 = 20;
}

