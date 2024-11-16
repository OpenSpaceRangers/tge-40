unit ValueListClass;

interface

uses SysUtils,Dialogs;

Type PText=^file;

type TValuesList=class(TObject)

       Negation:boolean;
       Values:array of integer;
       Count:integer;

       constructor Create;

       procedure Clear;
       procedure SetFromString(txt:string);
       function TestString(txt:string):boolean;
       function GetString:string;

       function DelDeniedSymbols(txt:string):string;

       procedure CopyDataFrom(var source:TValuesList);
       function  IsEqualWith(var source:TValuesList):boolean;

       procedure Save(fileout:ptext);
       procedure Load(filein:ptext);
end;

implementation


function TValuesList.DelDeniedSymbols(txt:string):string;
label done;
var i:integer;
    ttxt:string;
begin
       ttxt:='';
       if trim(txt)='' then goto done;

        for i:=1 to length(txt) do

          if (txt[i] in ['0'..'9'])
               or
             (txt[i]=',')
               or
             (txt[i]='-')
               or
             (txt[i]='+')

                then ttxt:=ttxt+txt[i];

        txt:=ttxt+' ';

        ttxt:='';

        if length(txt)>1 then  begin
        for i:=1 to length(txt)-1 do

          if ((txt[i]<>',') or (txt[i+1]<>','))
             and
             ((txt[i]<>'-') or (txt[i+1]<>'-'))
             and
             ((txt[i]<>'+') or (txt[i+1]<>'+'))
             {
             and
             ((txt[i]<>'+') or (txt[i+1]<>'+'))
             and
             ((txt[i]<>'+') or (txt[i+1]<>'+'))
              }
              then

             ttxt:=ttxt+txt[i];

        txt:=trim(ttxt);
        ttxt:='';

        end;

        for i:=1 to length(txt) do

          if not( (i=length(txt)) and ((txt[i]=',')or(txt[i]='-'))  )
            then ttxt:=ttxt+txt[i];

        txt:=ttxt;
        ttxt:='';

        if length(txt)>=1 then begin
         if txt[1]=',' then
           for i:=2 to length(txt) do ttxt:=ttxt+txt[i]
         else
          for i:=1 to length(txt) do ttxt:=ttxt+txt[i];
        end;

done:
//        ShowMessage(txt);
        DelDeniedSymbols:=ttxt;
end;

constructor TValuesList.Create;
begin
        clear;
end;

procedure TValuesList.Save(fileout:ptext);
var i:integer;
begin
        BlockWrite(fileout^,count,sizeof(count));
        BlockWrite(fileout^,Negation,sizeof(Negation));

        for i:=1 to count do
          BlockWrite(fileout^,values[i],sizeof(values[i]));
end;

procedure TValuesList.Load(filein:ptext);
var i:integer;
begin
        BlockRead(filein^,count,sizeof(count));
        BlockRead(filein^,Negation,sizeof(Negation));

        SetLength(values,count+2);
        for i:=1 to count do

          BlockRead(filein^,values[i],sizeof(values[i]));
end;

function  TValuesList.IsEqualWith(var source:TValuesList):boolean;
label done;
var i:integer;
    answer:boolean;
begin
        answer:=true;

        if count<>source.Count then begin answer:=false; goto done; end;
        if Negation<>source.Negation then begin answer:=false; goto done; end;

        for i:=1 to count do
          if values[i]<>source.Values[i] then begin answer:=false; goto done; end;

done:
        IsEqualWith:=answer;
end;

procedure TValuesList.CopyDataFrom(var source:TValuesList);
var i:integer;
begin
     count:=source.count;
     Negation:=source.Negation;

     SetLength(Values,count+2);

     for i:=1 to count do values[i]:=source.values[i];

end;

procedure TValuesList.Clear;
begin
        SetLength(values,1);
        Count:=0;
        Negation:=true;
end;


function TValuesList.TestString(txt:string):boolean;
label done;
var i:integer;
    ok:boolean;
begin
     ok:=true;
{
       txt:='1,2,3,4,+123,--2,0$$,,  ';
  }  //  showmessage(txt);


       txt:=DelDeniedSymbols(txt);
     //  showmessage(txt);

     for i:=1 to length(txt) do  begin

        if (txt[i]<>',')and(txt[i]<>'-')and(txt[i]<>'+')
             and
           (not(txt[i] in ['0'..'9'])) then ok:=false;

        if (txt[1]=',') or (txt[length(txt)]=',') then ok:=false;

        if ok=false then goto done;
     end;

     for i:=1 to length(txt)-1 do  begin
        if (txt[i]=',') and (txt[i+1]=',') then ok:=false;

        if ok=false then goto done;
     end;

     for i:=1 to length(txt)-1 do  begin
        if (
            (txt[i]='+')
             or
            (txt[i]='-')
           )
            and
          (not(txt[i+1] in ['0'..'9']))

             then ok:=false;

        if ok=false then goto done;
     end;

done:
     TestString:=ok;
end;

function TValuesList.GetString:string;
var i:integer;
    str:string;
begin
     str:='';

     for i:=1 to count do begin

       if i<>count then
          str:=str+inttostr(values[i])+','
       else
          str:=str+inttostr(values[i]);
     end;

     GetString:=str;
end;

procedure TValuesList.SetFromString(txt:string);
var  integers:array [1..100] of integer;
     i:integer;
     tstr:string;
begin
       i:=1;
       count:=0;
       tstr:='';
{
       txt:='1,2,3,4,+123,--2,0$$,,  ';
      showmessage(txt);
  }

       txt:=trim(DelDeniedSymbols(txt));
 //      showmessage(txt);
       if TestString(txt) then begin

        Clear;
        while(i<=length(txt)) do begin

          if txt[i]<>',' then tstr:=tstr+txt[i];

          if (i=length(txt)) or (txt[i+1]=',') then begin

               inc(count);
               integers[count]:=strtoint(tstr);
               tstr:='';
          end;

          inc(i);
        end;

        setlength(values,count+2);
        for i:=1 to count do values[i]:=integers[i];

       end else begin
           ShowMessage('Формат списка неправилен');
       end;

end;

end.

