unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,
  CalcParseClass;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    p13: TLabel;
    p14: TLabel;
    p15: TLabel;
    p16: TLabel;
    p12: TLabel;
    p11: TLabel;
    p10: TLabel;
    p9: TLabel;
    p1: TLabel;
    p2: TLabel;
    p3: TLabel;
    p4: TLabel;
    p5: TLabel;
    p6: TLabel;
    p7: TLabel;
    p8: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label48: TLabel;
    p24: TLabel;
    p17: TLabel;
    p18: TLabel;
    p19: TLabel;
    p20: TLabel;
    p21: TLabel;
    p22: TLabel;
    p23: TLabel;
    Edit1: TEdit;
    Label65: TLabel;
    Label67: TLabel;
    ParenthLabel: TLabel;
    Label70: TLabel;
    ParLabel: TLabel;
    Label72: TLabel;
    NumLabel: TLabel;
    Label74: TLabel;
    OutputEdit: TEdit;
    Label75: TLabel;
    CerrLabel: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DiapLabel: TLabel;
    PrepEdit: TEdit;
    Label19: TLabel;
    PrepEdit1: TEdit;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label17Click(Sender: TObject);
    procedure Label20Click(Sender: TObject);
    procedure Label21Click(Sender: TObject);
    procedure Label22Click(Sender: TObject);
    procedure Label23Click(Sender: TObject);
    procedure Label24Click(Sender: TObject);
    procedure Label25Click(Sender: TObject);
    procedure Label26Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    param: TParValues;
    parlabels: array [1..maxparameters] of TLabel;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
ShowMessage(floattostr(0.00001));
end;

procedure TForm1.Edit1Change(Sender: TObject);
label done;
var parse:TCalcParse;
begin
	PrepEdit.Text:='';
	PrepEdit1.Text:='';
	OutputEdit.Text:='';
	CerrLabel.Caption:='Undefined';
    DiapLabel.Caption:='Undefined';
	ParLabel.Caption:='Undefined';
	ParenthLabel.Caption:='Undefined';
	NumLabel.Caption:='Undefined';

    parse:=TCalcParse.Create();
	parse.Clear;
	parse.internal_str:=Edit1.Text;

    parse.AssignAndPreprocess(Edit1.Text,1);


    if parse.parentheses_error then ParenthLabel.Caption:='Fault' else ParenthLabel.Caption:='Success';
    if parse.parameters_error then ParLabel.Caption:='Fault' else ParLabel.Caption:='Success';
    if parse.num_error then NumLabel.Caption:='Fault' else NumLabel.Caption:='Success';
	if parse.diapazone_error then DiapLabel.Caption:='Fault' else DiapLabel.Caption:='Success';

    if not parse.default_expression then begin
		PrepEdit.Text:=parse.internal_str;
    	PrepEdit1.Text:=parse.ConvertToExternal(parse.internal_str);
    end;

    parse.Parse(param);
    if parse.calc_error then CerrLabel.Caption:='Fault' else CerrLabel.Caption:='Success';
    if not parse.error then begin
	    OutputEdit.Text:=inttostr(parse.answer);
    end;
    done:
end;

procedure TForm1.FormCreate(Sender: TObject);
var i:integer;
begin
parlabels[1]:=p1;
parlabels[2]:=p2;
parlabels[3]:=p3;
parlabels[4]:=p4;
parlabels[5]:=p5;
parlabels[6]:=p6;
parlabels[7]:=p7;
parlabels[8]:=p8;
parlabels[9]:=p9;
parlabels[10]:=p10;
parlabels[11]:=p11;
parlabels[12]:=p12;
parlabels[13]:=p13;
parlabels[14]:=p14;
parlabels[15]:=p15;
parlabels[16]:=p16;
parlabels[17]:=p17;
parlabels[18]:=p18;
parlabels[19]:=p19;
parlabels[20]:=p20;
parlabels[21]:=p21;
parlabels[22]:=p22;
parlabels[23]:=p23;
parlabels[24]:=p24;

for i:=1 to 10 do param[i]:=i;
for i:=11 to 19 do param[i]:=i*5;
for i:=20 to 24 do param[i]:=i*10;

for i:=1 to 24 do parlabels[i].Caption:=inttostr(param[i]);

end;

procedure TForm1.Label17Click(Sender: TObject);
begin
Edit1.Text:='';
Edit1.text:=Label17.caption;
end;

procedure TForm1.Label20Click(Sender: TObject);
begin
Edit1.Text:='';
Edit1.Text:=Label20.Caption;
end;

procedure TForm1.Label21Click(Sender: TObject);
begin
Edit1.Text:='';
Edit1.Text:=Label21.Caption;
end;

procedure TForm1.Label22Click(Sender: TObject);
begin
Edit1.Text:='';
Edit1.Text:=Label22.Caption;
end;

procedure TForm1.Label23Click(Sender: TObject);
begin
Edit1.Text:='';
Edit1.Text:=Label23.Caption;
end;

procedure TForm1.Label24Click(Sender: TObject);
begin
Edit1.Text:='';
Edit1.Text:=Label24.Caption;
end;

procedure TForm1.Label25Click(Sender: TObject);
begin
Edit1.Text:='';
Edit1.Text:=Label25.Caption;
end;

procedure TForm1.Label26Click(Sender: TObject);
begin
Edit1.Text:='';
Edit1.Text:=Label26.Caption;
end;

end.
