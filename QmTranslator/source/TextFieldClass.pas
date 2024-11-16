unit TextFieldClass;

interface

uses  Classes,SysUtils;

Type PText=^file;

type TTextField=class

    public
    Text:WideString;

    procedure Save(f:PText);
    procedure Load(f:PText);
    procedure CopyDataFrom(var source:TTextField);
    procedure Clear;

end;


implementation

procedure TTextField.CopyDataFrom(var source:TTextField);
begin
        Text:=source.Text;
end;

procedure TTextField.Clear;
begin
        Text:='';
end;

procedure TTextField.Save(f:PText);
var c,t,l:integer;
    tempstr:widestring;
begin
      t:=1;
      BlockWrite(f^,t,sizeof(t));

      tempstr:=trim(Text);
      l:=length(tempstr);

      BlockWrite(f^,l,sizeof(l));

           for c:=1 to l do
                  BlockWrite(f^,tempstr[c],sizeof(tempstr[c]));


end;

procedure TTextField.Load(f:PText);
var
           tempstr:widestring;
           c,q,m,t:integer;
begin
       Text:='';
       BlockRead(f^,m,sizeof(m));
   for q:=1 to m do begin

     BlockRead(f^,t,sizeof(t));
     SetLength(tempstr,t);
     for c:=1 to t do BlockRead(f^,tempstr[c],sizeof(tempstr[c]));

     Text:=Text+#13#10+(trim(tempstr));
   end;
   Text:=trim(Text);
end;

end.
