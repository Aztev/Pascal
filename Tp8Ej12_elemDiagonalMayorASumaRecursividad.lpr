program Tp8Ej12_elemDiagonalMayorASumaRecursividad;

const
   maxDatos=20;

type
   tmI=array[1..maxDatos,1..maxDatos] of integer;

var
   m:tmI;
   n:byte;

procedure lecturaArch(var m:tmI;n:byte);
var
   arch:text;
   i,j:byte;
begin
   assign(arch,'datos.txt');   reset(arch);
   for i:=1 to n do
      for j:=1 to n do
         read(arch,m[i,j]);
   close(arch);
end;

function cumple(iAct:byte):boolean;
var
   suma:integer;
   j:byte;
begin
   cumple:=true;
   if iAct>=1 then
      begin
      suma:=0;
      for j:=1 to n do
         suma:=suma+m[iAct,j];
      writeln(suma);
      if (suma-m[iAct,iAct])<(m[iAct,iAct]) then
         cumple:=cumple(iAct-1)
      else
         cumple:=false;
      end
end;

begin
   n:=5;
   lecturaArch(m,n);
   writeln('Elemeto diagonal mayor que suma del resto? ',cumple(n));
   readln()
end.

