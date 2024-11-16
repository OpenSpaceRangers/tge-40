Program TGE;

uses
  Forms,
  LocationEditForm {Form1},
  MainForm {Form2},
  PathEditForm in 'PathEditForm.pas' {Form3},
  MainPropertiesEdit in 'MainPropertiesEdit.pas' {Form4},
  PlayForm in 'PlayForm.pas' {Form6},
  TextFieldClass in 'TextFieldClass.pas',
  ColorOptionsForm in 'ColorOptionsForm.pas' {Form7},
  EC_BlockPar,
  MessageText,
  StatisticsForm in 'StatisticsForm.pas' {Form8},
  ParFailEditForm in 'ParFailEditForm.pas' {Form9},
  ParameterDeltaClass in 'ParameterDeltaClass.pas',
  Unit12 in 'Unit12.pas' {StatisticsCalculationStyleForm},
  ParViewStringClass in 'ParViewStringClass.pas',
  Unit5 in 'Unit5.pas' {Form5},
  ValueListClass in 'ValueListClass.pas',
  EC_Mem in 'EC_Mem.pas',
  CalcParseClass in 'CalcParseClass.pas',
  Unit10 in 'Unit10.pas' {Form10},
  Unit1 in 'Unit1.pas' {Frame1: TFrame},
  SearchForm in 'SearchForm.pas' {LPSearchForm};

{$R *.RES}

begin
  Application.Initialize;
  
  MessageText.M:=TBlockParEC.Create;
  MessageText.M.LoadFromFile('messages_cfg.txt');
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TStatisticsCalculationStyleForm, StatisticsCalculationStyleForm);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TLPSearchForm, LPSearchForm);
  LPSearchForm.Hide;
  Application.Run;
end.
