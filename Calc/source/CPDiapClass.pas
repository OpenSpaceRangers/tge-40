unit CPDiapClass;

interface

uses SysUtils, Dialogs;

type TCPDiapazone=class
    low:array of int64;
    hi:array of int64;
    count:integer;
    constructor Create;
    procedure Clear;
	procedure Assign(str:string);
    procedure Add(l:int64;h:int64); overload;
    procedure Add(f:extended); overload;
    procedure Add(var other:TCPDiapazone); overload;
    procedure CopyDataFrom(var source:TCPDiapazone);
    function GetString:string;
    function Have(f:extended):boolean;
    function GetRandom:extended;
    function GetMaximum:int64;
    function GetMinimum:int64;
end;

implementation

function TCPDiapazone.GetMinimum:int64;
var f:int64;
	i:integer;
begin
	f:=low[0];
	for i:=0 to count-1 do begin
    	if low[i]<=f then f:=low[i];
    end;
    GetMinimum:=f;
end;

function TCPDiapazone.GetMaximum:int64;
var f:int64;
	i:integer;
begin
	f:=hi[0];
	for i:=0 to count-1 do begin
        if hi[i]>=f then f:=hi[i];
	end;
    GetMaximum:=f;
end;

function TCPDiapazone.GetRandom:extended;
var i,c:integer;
	f:extended;
    mh,ml:array of int64;
begin
	SetLength(mh,count);
	SetLength(ml,count);
    c:=0;
    for i:=0 to count-1 do begin
        ml[i]:=c;
        mh[i]:=ml[i]+(hi[i]-low[i]);
        c:=c+hi[i]-low[i]+1;
    end;
    c:=random(c); f:=0;
    for i:=0 to count do begin
        if (c>=ml[i])and(c<=mh[i]) then begin
        	f:=random(hi[i]-low[i]+1)+low[i];
            break;
        end;
    end;
    GetRandom:=f;
end;

function TCPDiapazone.Have(f:extended):boolean;
var i:integer;
	c:int64;
	answer:boolean;
begin
	c:=round(f);
//    showmessage(floattostr(c));

    answer:=false;
    for i:=0 to count-1 do begin
        if (low[i]<=c)and(hi[i]>=c) then begin
        	answer:=true;
            break;
        end;
//	    showmessage(floattostr(low[i])+'  '+floattostr(hi[i]));
    end;
    Have:=answer;
end;

function TCPDiapazone.GetString:string;
var i:integer;
	tstr:string;
begin
	tstr:='[';
    for i:=0 to count-1 do begin
    	if low[i]=hi[i] then begin
           tstr:=tstr+inttostr(low[i]);
        end else begin
           tstr:=tstr+inttostr(low[i])+'h'+inttostr(hi[i]);
        end;
        if i<count-1 then begin
			tstr:=tstr+';';
        end else begin
			tstr:=tstr+']';
        end;
    end;
    GetString:=tstr;
end;


procedure TCPDiapazone.CopyDataFrom(var source:TCPDiapazone);
var i:integer;
begin
    count:=source.count;
    SetLength(low,count);
    SetLength(hi,count);
    for i:=0 to count-1 do begin
        low[i]:=source.low[i];
        hi[i]:=source.hi[i];
    end;
end;

constructor TCPDiapazone.Create;
begin
    Clear;
end;

procedure TCPDiapazone.Clear;
begin
    count:=0;
    SetLength(low,count);
    SetLength(hi,count);
end;

procedure TCPDiapazone.Add(var other:TCPDiapazone);
var i:integer;
begin
	if other.count>0 then begin
        SetLength(low,count+other.count);
        SetLength(hi,count+other.count);
    	for i:=0 to other.count-1 do begin
            low[count+i]:=other.low[i];
            hi[count+i]:=other.hi[i];
        end;
        count:=count+other.count;
    end;
end;

procedure TCPDiapazone.Add(l:int64;h:int64);
var t:int64;
begin
	inc(count);
    SetLength(low,count);
    SetLength(hi,count);
    if l>h then begin
    	t:=l;
        l:=h;
        h:=t
    end;
    low[count-1]:=l;
    hi[count-1]:=h;
end;

procedure TCPDiapazone.Add(f:extended);
var c:int64;
	err:boolean;
begin
	c:=0;
    err:=false;
    try
    	c:=trunc(f);
    except
    	on EMathError do begin
			err:=true;
        end;
    end;
    if err then exit;
	inc(count);
    SetLength(low,count);
    SetLength(hi,count);
    low[count-1]:=c;
    hi[count-1]:=c;
end;

procedure TCPDiapazone.Assign(str:string);
var i,l:integer;
    c,slow,shi:int64;
	tstr:string;
    ecjump:boolean;
begin
	l:=length(str);
	i:=1;
    tstr:='';
    slow:=200000000;
    shi:=-200000000;
    ecjump:=false;
    while i<=l do begin
        if ((str[i]>='0')and(str[i]<='9'))or(str[i]='-') then begin
            tstr:=tstr+str[i];
            inc(i);
        end else begin
        	if (str[i]='h')or(str[i]=';')or(str[i]=']') then begin
                c:=0;
                 try
                	c:=strtoint(tstr);
                except
                	on EMathError do begin
                    	ecjump:=true;
                    end;
	               	on EConvertError do begin
                    	ecjump:=true;
                    end;
                end;
              //  showmessage(inttostr(c));
                if not ecjump then begin
           			if slow>c then slow:=c;
            		if shi<c then shi:=c;
                end;
				ecjump:=false;
                tstr:='';
               	if ((str[i]=';') or (str[i]=']')) then begin
                	Add(slow,shi);
					slow:=200000000;
					shi:=-200000000;
                    tstr:='';
                end;
            	inc(i);
            end else begin
            	inc(i);
            end;
        end;
    end;
end;

end.