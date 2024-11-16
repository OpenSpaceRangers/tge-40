unit HelpStatusPanel;

interface

uses Classes,Controls,Windows,Forms,extctrls,Graphics,StdCtrls;

const maxstatuspanellabels=20;

type THelpStatusPanel=class(TPanel)

public
        ParentWidth:integer;
        ParentHeight:integer;
        
        TopPrint:integer;
        Border:integer;
        StdLabelWidth:integer;

        Labels:array [1..maxstatuspanellabels] of TLabel;

        ActiveLabelsValue:integer;

        constructor Create(AOwner: TComponent); override;
        procedure SetColor(newcolor:TColor);
        procedure SetPosition(x,y:integer);

        procedure Clear;
        procedure AddStroke (str:Widestring; lcolor:Tcolor);overload;
        procedure AddStroke (strl,strr:Widestring; lcolor:Tcolor);overload;
        procedure AddSeparator;
end;

implementation

constructor THelpStatusPanel.Create(AOwner: TComponent); 
var i:integer;
begin
      
       for i:=1 to maxstatuspanellabels do begin
       Labels[i]:=TLabel.Create(self);
       end;

       Clear;
end;

procedure THelpStatusPanel.SetPosition(x,y:integer);
begin
    if ((x+width+5)>ParentWidth) then left:=x-width -5 else left:=x+5;
    if ((y+height+5)>ParentHeight) then top:=y-height -5 else left:=y+5;
end;

procedure THelpStatusPanel.Clear;
var i:integer;
begin
      Visible:=false;
      StdLabelWidth:=210;
      Border:=3;
      topprint:=border;
      for i:=1 to maxstatuspanellabels do begin
                Labels[i].Visible:=false;
                Labels[i].transparent:=true;
                Labels[i].Caption:='';
                Labels[i].WordWrap:=false;
                Labels[i].Autosize:=false;
                Labels[i].Left:=border;
      end;
      ActiveLabelsValue:=0;

      Height:=topprint+border;
      Width:=225;
end;


procedure THelpStatusPanel.SetColor(newcolor:Tcolor);
begin
//
        Color:=newcolor;
end;

procedure THelpStatusPanel.AddStroke (strl,strr:Widestring; lcolor:Tcolor);
begin
        inc(ActiveLabelsValue);
        Labels[ActiveLabelsValue].top:=Topprint;
        Labels[ActiveLabelsValue].Alignment:=taleftjustify;
        Labels[ActiveLabelsValue].caption:=strl;
        Labels[ActiveLabelsValue].font.color:=lcolor;

        inc(ActiveLabelsValue);
        Labels[ActiveLabelsValue].top:=Topprint;
        Labels[ActiveLabelsValue].Alignment:=tarightjustify;
        Labels[ActiveLabelsValue].caption:=strr;
        Labels[ActiveLabelsValue].font.color:=lcolor;

        topprint:=topprint+Labels[ActiveLabelsValue].Height+border;
        height:=topprint;
end;

procedure THelpStatusPanel.AddStroke (str:Widestring; lcolor:Tcolor);
begin
        inc(ActiveLabelsValue);
        Labels[ActiveLabelsValue].top:=Topprint;
        Labels[ActiveLabelsValue].Alignment:=tacenter;
        Labels[ActiveLabelsValue].Autosize:=true;
        Labels[ActiveLabelsValue].wordwrap:=true;

        Labels[ActiveLabelsValue].caption:=str;

        Labels[ActiveLabelsValue].Autosize:=false;
        Labels[ActiveLabelsValue].wordwrap:=true;
        Labels[ActiveLabelsValue].width:=stdlabelwidth;

        Labels[ActiveLabelsValue].font.color:=lcolor;

        topprint:=topprint+Labels[ActiveLabelsValue].Height+border;
        Height:=topprint;
end;

procedure THelpStatusPanel.AddSeparator;
begin
 AddStroke('---------------------------------------------------------------------',
        clTeal);
end;

end.
