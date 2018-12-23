var i : int;
var x : int;
var s : string;

for i in 1..10 do
	var j : int := 12;
	for j in 1..10 do
		x := j + (i * 10);
		s := s + "A";
	end for;
	print s + "\n";
	s := "";
end for;
