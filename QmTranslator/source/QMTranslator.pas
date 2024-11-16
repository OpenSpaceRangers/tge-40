unit QMTranslator;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ImgList, ToolWin, StdCtrls,
  GameContent,ProjectClass,MessageText,
  EC_BlockPar, ExtCtrls, ScktComp;

type
  TForm1 = class(TForm)
    ToolBar1: TToolBar;
    NewProjectButton: TToolButton;
    LoadProjectButton: TToolButton;
    SaveProjectButton: TToolButton;
    ButtonsImageList: TImageList;
    SourceMemo: TMemo;
    TargetMemo: TMemo;
    MessagesListTrackBar: TTrackBar;
    MessageNumberLabel: TLabel;
    SourceOpenDialog: TOpenDialog;
    ToolButton1: TToolButton;
    ProjectOpenDialog: TOpenDialog;
    ExportSourceBtn: TToolButton;
    ToolButton3: TToolButton;
    ExportTargetBtn: TToolButton;
    CopyImage: TImage;
    ClearImage: TImage;
    StatusLabel: TLabel;
    BackImage: TImage;
    FindNotEditedImage: TImage;
    ForwardImage: TImage;
    QuickSaveProjectButton: TToolButton;
    TargetSaveDialog: TSaveDialog;
    ProjectSaveDialog: TSaveDialog;
    SourceSaveDialog: TSaveDialog;
    ToolButton2: TToolButton;
    LoadMsgsButton: TToolButton;
    SaveMsgsButton: TToolButton;
    LoadMsgsOpenDialog: TOpenDialog;
    SaveMsgsSaveDialog: TSaveDialog;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    FontDialog1: TFontDialog;
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NewProjectButtonClick(Sender: TObject);
    procedure LoadProjectButtonClick(Sender: TObject);
    procedure SaveProjectButtonClick(Sender: TObject);
    procedure ExportSourceBtnClick(Sender: TObject);
    procedure ExportTargetBtnClick(Sender: TObject);
    procedure CopyImageClick(Sender: TObject);
    procedure ClearImageClick(Sender: TObject);
    procedure TargetMemoChange(Sender: TObject);

    procedure ProcessEnabledControls;
    procedure PrepareFormForProject;

    procedure SourceMemoChange(Sender: TObject);
    procedure MessagesListTrackBarChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BackImageClick(Sender: TObject);
    procedure ForwardImageClick(Sender: TObject);
    procedure ForwardImageMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BackImageMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FindNotEditedImageMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure QuickSaveProjectButtonClick(Sender: TObject);
    procedure SaveMsgsButtonClick(Sender: TObject);
    procedure LoadMsgsButtonClick(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }

    Project:TtqmProject;

    TargetFileName,SourceFileName:string;



  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.FormResize(Sender: TObject);
var temp2,
    w,h:real;
begin
        w:=Form1.Width;
        h:=Form1.Height;
        if w<480 then w:=480;
        if h<300 then h:=300;


        MessagesListTrackBar.Top:=round(h-60);
        MessagesListTrackBar.Width:=round(w-320);

        MessageNumberLabel.Top:=round(h-56);
        ClearImage.Top:=round(h-60);
        CopyImage.Top:=round(h-60);
        ForwardImage.Top:=round(h-60);
        BackImage.Top:=round(h-60);
        FindNotEditedImage.Top:=round(h-60);


        MessageNumberLabel.Left:=MessagesListTrackBar.Left+MessagesListTrackBar.width+12;
        ClearImage.Left:=round(w-CopyImage.Width-16);
        CopyImage.Left:=round(ClearImage.Left-ClearImage.Width-15);

        ForwardImage.Left:=round(CopyImage.Left-ForwardImage.Width-20);
        FindNotEditedImage.Left:=round(ForwardImage.Left-FindNotEditedImage.Width-5);
        BackImage.Left:=round(FindNotEditedImage.Left-BackImage.Width-5);

        temp2:=h-48-60;

        SourceMemo.Width:=round(w)-16-SourceMemo.Left;
        SourceMemo.Height:=round(temp2/2 - 20);

        StatusLabel.Width:=trunc(w-25);
        StatusLabel.Top:=SourceMemo.Height+SourceMemo.Top+4;

        TargetMemo.Top:=SourceMemo.Top+SourceMemo.Height+20;
        TargetMemo.Width:=round(w)-16-SourceMemo.Left;
        TargetMemo.Height:=round(temp2/2 - 20);

        Form1.Width:=round(w);
        Form1.Height:=round(h);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
        M:=TBlockParEC.Create;
        M.LoadFromFile('msg_cfg.txt');

        NewProjectButton.Hint:=M.Par_Get('NewProjectButtonHint');
        LoadProjectButton.Hint:=M.Par_Get('LoadProjectButtonHint');
        SaveProjectButton.Hint:=M.Par_Get('SaveProjectButtonHint');
        QuickSaveProjectButton.Hint:=M.Par_Get('QuickSaveProjectButtonHint');
        ExportSourceBtn.Hint:=M.Par_Get('ExportSourceBtnHint');
        ExportTargetBtn.Hint:=M.Par_Get('ExportTargetBtnHint');
        SourceMemo.Hint:=M.Par_Get('SourceMemoHint');
        TargetMemo.Hint:=M.Par_Get('TargetMemoHint');
        MessagesListTrackBar.Hint:=M.Par_Get('MessagesListTrackBarHint');
        StatusLabel.Hint:=M.Par_Get('StatusLabelHint');
        MessageNumberLabel.Hint:=M.Par_Get('MessageNumberLabelHint');
        CopyImage.Hint:=M.Par_Get('CopyImageHint');
        ClearImage.Hint:=M.Par_Get('ClearImageHint');
        SourceSaveDialog.Title:=M.Par_Get('SourceSaveDialogTitle');
        SourceOpenDialog.Title:=M.Par_Get('SourceOpenDialogTitle');
        TargetSaveDialog.Title:=M.Par_Get('TargetSaveDialogTitle');
        ProjectOpenDialog.Title:=M.Par_Get('ProjectOpenDialogTitle');
        ProjectSaveDialog.Title:=M.Par_Get('ProjectSaveDialogTitle');
        LoadMsgsOpenDialog.Title:=M.Par_Get('LoadMsgsOpenDialogTitle');
        SaveMsgsSaveDialog.Title:=M.Par_Get('SaveMsgsSaveDialogTitle');
        LoadMsgsButton.Hint:=M.Par_Get('LoadMsgsButtonHint');
        SaveMsgsButton.Hint:=M.Par_Get('SaveMsgsButtonHint');

        ForwardImage.Hint:=M.Par_Get('ForwardImageHint');
        BackImage.Hint:=M.Par_Get('BackImageHint');
        FindNotEditedImage.Hint:=M.Par_Get('FindNotEditedImageHint');

        Form1.Caption:=M.Par_Get('DefaultProgramTitle');

        Project:=TtqmProject.Create;

        SourceMemo.Text:='';
        TargetMemo.Text:='';

        TargetFileName:='';
        SourceFileName:='';

        QuickSaveProjectButton.Enabled:=false;
end;

procedure TForm1.ProcessEnabledControls;
var txt:string;
    temp,temp1:integer;
begin

if trim(SourceMemo.Text)=trim(TargetMemo.Text) then

        TargetMemo.Font.Color:=clDkGray
else
        TargetMemo.Font.Color:=clBlack;
        temp1:=0;

If MessagesListTrackBar.Position>0 then begin

        temp:=Project.SourceMessageTypes[Project.TrackBarIndexList[MessagesListTrackBar.Position]];
        temp1:=temp div 1000;
        temp:=temp mod 1000;
        case temp of

         EditorParNameMSGType: txt:=M.Par_Get('EditorParNameMSGType');
         GameParNameMSGType: txt:=M.Par_Get('GameParNameMSGType');
         ParViewStringMSGType: txt:=M.Par_Get('ParViewStringMSGType');
         StandartCriticalMSGType: txt:=M.Par_Get('StandartCriticalMSGType');
         OutsideParMSGType: txt:=M.Par_Get('OutsideParMSGType');
         SuccessGovMSGType: txt:=M.Par_Get('SuccessGovMSGType');
         MissionGovMSGType: txt:=M.Par_Get('MissionGovMSGType');
         LocationTextMSGType: txt:=M.Par_Get('LocationTextMSGType');
         PathQuestionMSGType: txt:=M.Par_Get('PathQuestionMSGType');
         PathTextMSGType: txt:=M.Par_Get('PathTextMSGType');
         CustomCriticalMSGType: txt:=M.Par_Get('CustomCriticalMSGType');
        end;

         if Project.EmptyPathes[Project.TrackBarIndexList[MessagesListTrackBar.Position]]<>0
           then begin
             TargetMemo.Enabled:=false;
             txt:=
             //' < ' + txt + ' > ' +
             M.Par_Get('EmptyPathLabelTitleAddon');
             CopyImage.Visible:=false;
             ClearImage.Visible:=false;
           end
           else begin
             TargetMemo.Enabled:=true;
             CopyImage.Visible:=true;
             ClearImage.Visible:=true;
           end;

end else txt:='';

        if (txt<>'') and (temp1>0) then txt:=txt + ' ( N '+inttostr(temp1) + ' )';
        StatusLabel.Caption:=txt;
end;

procedure Tform1.PrepareFormForProject;
begin
     MessagesListTrackBar.Max:=Project.TBMessagesValue;
     MessagesListTrackBar.Position:=Project.CurrentMessageNumber;
     ProcessEnabledControls;
end;

procedure TForm1.NewProjectButtonClick(Sender: TObject);
begin

if SourceOpenDialog.Execute then begin

   MessagesListTrackBar.Position:=0;
   QuickSaveProjectButton.Enabled:=false;
   Project.Clear;
   Project.MakeNewProject(SourceOpenDialog.FileName);
   PrepareFormForProject;
   MessagesListTrackBar.Position:=1;
   Form1.Caption:=M.Par_Get('NewProjectProgramTitle');

end;

end;

procedure TForm1.LoadProjectButtonClick(Sender: TObject);
var txt:string;
begin

if ProjectOpenDialog.Execute then begin

   Project.Clear;
   MessagesListTrackBar.Position:=0;
   txt:=ProjectOpenDialog.FileName;
   Project.Load(txt);
   Project.MSGSetEmptyPathes;
   PrepareFormForProject;


   ProjectSaveDialog.FileName:=ProjectOpenDialog.FileName;
   Form1.Caption:=trim(txt)+M.Par_Get('CommonProgramTitle');
   QuickSaveProjectButton.Enabled:=true;

end;

end;

procedure TForm1.SaveProjectButtonClick(Sender: TObject);
var txt:string;
begin

if ProjectSaveDialog.Execute then begin
   txt:=ProjectSaveDialog.FileName;
  // Project.MSGPathTextFix;
   Project.Save(txt);
   Form1.Caption:=trim(txt)+M.Par_Get('CommonProgramTitle');
   QuickSaveProjectButton.Enabled:=true;

end;


end;

procedure TForm1.ExportSourceBtnClick(Sender: TObject);
var txt:string;
begin

if SourceSaveDialog.Execute then begin
   txt:=SourceSaveDialog.FileName;
   Project.SourceQM.Save(txt);
end;

end;

procedure TForm1.ExportTargetBtnClick(Sender: TObject);
var txt:string;
begin

if TargetSaveDialog.Execute then begin
   txt:=TargetSaveDialog.FileName;
   Project.TargetQM.Save(txt);
end;

end;

procedure TForm1.CopyImageClick(Sender: TObject);
begin
TargetMemo.Text:=SourceMemo.Text;
end;

procedure TForm1.ClearImageClick(Sender: TObject);
begin
TargetMemo.Text:='';
Project.SetTargetByNumber(MessagesListTrackBar.Position,M.Par_Get('MessageDeletedMSG'));
end;

procedure TForm1.TargetMemoChange(Sender: TObject);
var txt:WideString;
begin
txt:=trim(TargetMemo.Text);
if txt='' then txt:=M.Par_Get('MessageDeletedMSG');

Project.SetTargetByNumber(Project.TrackBarIndexList[MessagesListTrackBar.Position],txt);

ProcessEnabledControls;

end;

procedure TForm1.SourceMemoChange(Sender: TObject);
begin



ProcessEnabledControls;
end;

procedure TForm1.MessagesListTrackBarChange(Sender: TObject);
begin
MessageNumberLabel.Caption:=inttostr(MessagesListTrackBar.Position);
Project.CurrentMessageNumber:=Project.TrackBarIndexList[MessagesListTrackBar.Position];
TargetMemo.Text:=Project.GetTargetByNumber(Project.CurrentMessageNumber);
SourceMemo.Text:=Project.GetSourceByNumber(Project.CurrentMessageNumber);
ProcessEnabledControls;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
Form1.OnResize(self);
end;

procedure TForm1.BackImageClick(Sender: TObject);
begin
//MessagesListTrackBar.Position:=MessagesListTrackBar.Position-1;

end;

procedure TForm1.ForwardImageClick(Sender: TObject);
begin
//MessagesListTrackBar.Position:=MessagesListTrackBar.Position+1;
end;

procedure TForm1.ForwardImageMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var i:integer;
begin
        i:=MessagesListTrackBar.Position+1;

while (i<=MessagesListTrackBar.Max) and (Project.NumberIsEmpty(Project.TrackBarIndexList[i])) do begin
        inc(i);
end;

 if (not Project.NumberIsEmpty(Project.TrackBarIndexList[i]))and(i<=MessagesListTrackBar.Max) then
   MessagesListTrackBar.Position:=i;

end;

procedure TForm1.BackImageMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var i:integer;
begin
        i:=MessagesListTrackBar.Position-1;

while (i>=0) and (Project.NumberIsEmpty(Project.TrackBarIndexList[i])) do begin
        dec(i);
end;

 if (not Project.NumberIsEmpty(Project.TrackBarIndexList[i]))and(i>=0)  then
   MessagesListTrackBar.Position:=i;

end;

procedure TForm1.FindNotEditedImageMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var NewPosition:integer;
begin

      NewPosition:=Project.GetNextNotEditedNumber(MessagesListTrackBar.Position);
      if NewPosition>0 then MessagesListTrackBar.Position:=NewPosition;
      if NewPosition=0 then ShowMessage(M.Par_Get('CannotFindNotEditedMessage'));
end;

procedure TForm1.QuickSaveProjectButtonClick(Sender: TObject);
var txt:string;
begin
   txt:=ProjectSaveDialog.FileName;
//   Project.MSGPathTextFix;
   Project.Save(txt);
end;

procedure TForm1.SaveMsgsButtonClick(Sender: TObject);
var txt:string;
begin

if  SaveMsgsSaveDialog.Execute then begin
   txt:=SaveMsgsSaveDialog.FileName;
   LoadMsgsOpenDialog.FileName:=txt;
   Project.MSGPathTextFix;
   Project.MSGSetEmptyPathes;
   Project.MSGSSave(txt);
end;

end;

procedure TForm1.LoadMsgsButtonClick(Sender: TObject);
var txt:string;
begin
if  LoadMsgsOpenDialog.Execute then begin
   txt:=LoadMsgsOpenDialog.FileName;
   Project.MSGSLoad(txt);
   Project.MSGPathTextFix;
   Project.MSGSetEmptyPathes;

   TargetMemo.Text:=Project.GetTargetByNumber(Project.CurrentMessageNumber);
   SourceMemo.Text:=Project.GetSourceByNumber(Project.CurrentMessageNumber);
end;

end;

procedure TForm1.ToolButton7Click(Sender: TObject);
begin
  if FontDialog1.Execute then begin
        Form1.Font:=FontDialog1.Font;
	SourceMemo.Font:=FontDialog1.Font;
    	StatusLabel.Font:=FontDialog1.Font;
    	TargetMemo.Font:=FontDialog1.Font;
    end;
end;

end.
