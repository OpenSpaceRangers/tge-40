unit StatusPanel;

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

constructor TStatusPanel.Create(AOwner: TComponent);
var i:integer;
begin
       for i:=1 to maxstatuspanellabels do begin
       Labels[i]:=TLabel.Create(self);
       end;

       ClearStatusPanel;
end;

procedure TStatusPanel.SetPosition(x,y:integer);
begin

 // if  (x+StatusPanel.

end;

procedure TStatusPanel.Clear;
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
      Width:=325;
end;


procedure TStatusPanel.SetColor(newcolor:Tcolor);
begin
//
        Color:=newcolor;
end;

procedure TStatusPanel.AddStroke (strl,strr:Widestring; lcolor:Tcolor);
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

procedure TStatusPanel.AddStroke (str:Widestring; lcolor:Tcolor);
begin
        inc(ActiveLabelsValue);
        Labels[ActiveLabelsValue].top:=Topprint;
        Labels[ActiveLabelsValue].Alignment:=tacenter;
        Labels[ActiveLabelsValue].Autosize:=true;
        Labels[ActiveLabelsValue].wordwrap:=false;

        Labels[ActiveLabelsValue].caption:=str;

        Labels[ActiveLabelsValue].Autosize:=false;
        Labels[ActiveLabelsValue].wordwrap:=true;
        Labels[ActiveLabelsValue].width:=stdlabelwidth;

        Labels[ActiveLabelsValue].font.color:=lcolor;

        topprint:=topprint+Labels[ActiveLabelsValue].Height+border;
        Height:=topprint;
end;

end.
