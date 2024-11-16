unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TNewProjectForm = class(TForm)
    SourceOpenDialog: TOpenDialog;
    Label1: TLabel;
    SourceQuestNameLabel: TLabel;
    ChooseSourceQouestNameBtn: TButton;
    TargetQuestNameLabel: TLabel;
    Label2: TLabel;
    ChooseTargetQouestNameBtn: TButton;
    ProjectNameLabel: TLabel;
    Label4: TLabel;
    ChooseProjectNameBtn: TButton;
    CanselBtn: TButton;
    OkBtn: TButton;
    TargetOpenDialog: TOpenDialog;
    ProjectOpenDialog: TOpenDialog;
    procedure FormShow(Sender: TObject);
    procedure CanselBtnClick(Sender: TObject);
    procedure ChooseSourceQouestNameBtnClick(Sender: TObject);
    procedure ChooseTargetQouestNameBtnClick(Sender: TObject);
    procedure ChooseProjectNameBtnClick(Sender: TObject);
    procedure OkBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    is_ok_pressed:boolean;
  end;

var
  NewProjectForm: TNewProjectForm;

implementation

{$R *.DFM}

procedure TNewProjectForm.FormShow(Sender: TObject);
begin
SourceQuestNameLabel.Caption:='...';
TargetQuestNameLabel.Caption:='...';
ProjectNameLabel.Caption:='...';
is_ok_pressed:=false;

end;

procedure TNewProjectForm.CanselBtnClick(Sender: TObject);
begin
is_ok_pressed:=false;
close;

end;

procedure TNewProjectForm.ChooseSourceQouestNameBtnClick(Sender: TObject);
begin
if SourceOpenDialog.Execute then
        SourceQuestNameLabel.Caption:=SourceOpenDialog.FileName;

end;

procedure TNewProjectForm.ChooseTargetQouestNameBtnClick(Sender: TObject);
begin
if TargetOpenDialog.Execute then
        TargetQuestNameLabel.Caption:=TargetOpenDialog.FileName;

end;

procedure TNewProjectForm.ChooseProjectNameBtnClick(Sender: TObject);
begin
if ProjectOpenDialog.Execute then
        ProjectNameLabel.Caption:=ProjectOpenDialog.FileName;
end;

procedure TNewProjectForm.OkBtnClick(Sender: TObject);
begin



if ProjectNameLabel.Caption<>'...' then begin
if TargetQuestNameLabel.Caption<>'...' then begin
if SourceQuestNameLabel.Caption<>'...' then begin
if FileExists(SourceQuestNameLabel.Caption) then begin
if TargetQuestNameLabel.Caption<>SourceQuestNameLabel.Caption then begin

     is_ok_pressed:=true;
     close;
end
else ShowMessage('Исходный квест и целевой совпадают!');
end
else ShowMessage('Исходный файл квеста не существует!');
end
else ShowMessage('Исходный файл квеста не выбран!');
end
else ShowMessage('Целевой файл квеста не выбран!');
end
else ShowMessage('Файл проекта не выбран!');


end;


end.
