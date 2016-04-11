
uses rcrt;

var
   snieg : array[1..50] of record x, y : integer; end;
   i : integer;

begin
  init3h;
  cursor(false);
  for i:= 1 to 50 do
  begin
    snieg[i].x:=random(80);
    snieg[i].y:=random(50);
  end;
  repeat
    for i:= 1 to 50 do
    begin
      snieg[i].y:=snieg[i].y+1;
      if snieg[i].y>50 then begin snieg[i].x:=random(80); snieg[i].y:=1; end;
      putchar(snieg[i].x,snieg[i].y,15,ord('*'));
    end;
    refresh;
    cls(0);
  until port[$60]=1;
  close3h;
end.