unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls;

type
  TForm5 = class(TForm)
    ParCustomizePanel: TPanel;
    Shape6: TShape;
    Shape5: TShape;
    ParValueLabel: TLabel;
    Label20: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ParViewActionRG: TRadioGroup;
    ParDeltaTrackBar: TTrackBar;
    MinGateEdit: TEdit;
    MaxGateEdit: TEdit;
    RadioGroup1: TRadioGroup;
    ParNameEdit: TEdit;
    RadioGroup2: TRadioGroup;
    ShowIfZeroRadioGroup: TRadioGroup;
    ParGameNameEdit: TEdit;
    ParCriticalMessageMemo: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.DFM}

end.
