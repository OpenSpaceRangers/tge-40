unit GameContent;

interface

uses Dialogs, SysUtils, Math,
              ParameterClass,  
              LocationClass, PathClass, TextFieldClass,
              EC_BlockPar, MessageText;



const
      FileVersion_Older_than_3_8_5=1111111111;
      FileVersion_3_8_5=1111111112;
      FileVersion_3_9_0=1111111113;
      FileVersion_3_9_1=1111111114;
      FileVersion_3_9_2=1111111115;
      FileVersion_3_9_3=1111111116;
      FileVersion_3_9_4=1111111117;
      FileVersion_3_9_5=1111111118;
      FileVersion_3_9_6=1111111119;   //в названии редактора - 40alpha
      FileVersion_4_0_0=1111111120;
      FileVersion_4_0_1=1111111121;
      FileVersion_4_0_2=1111111122;

      FileVersion_Current=FileVersion_4_0_2;

      maxlocations=300;
      maxpathes=600;
      maxpathesfromonelocation=8;
      nowayparameterflag=100000;
      MinDistConst=15; // минимальное расстояние до объекта

      BXG1=30;
      BYG1=24;

      BXG2=22;
      BYG2=18;

      BXG3=15;
      BYG3=12;

      BXG4=10;
      BYG4=8;


Type PM=^TBlockParEC;
type TOwner=(Maloc,Peleng,People,Fei,Gaal,Kling,None);// владелец чего-либо раса, клинг, Нет
	 TOwnerSet = set of TOwner;// владелец чего-либо раса, клинг, Нет
     TStatus = (Trader,Pirate,Warrior); //Статус рейнджера
     TStatusSet = set of TStatus;

type TGame=class

        public
        M:PM;

        FileVersion:integer;
        //
        XScreenResolution:integer;
        YScreenResolution:integer;
        //

        BlockXgradient:integer;//=15;
        BlockYgradient:integer;//=12;

        NeedNotToReturn:boolean; // Нужно ли возвращаться на планету, дающую квест для полного прохождения
        Difficulty:integer;

        Race:integer; // Какой расе принадлежит квест
        // 0 -Малоки, 1 - Пеленги, 2 - Люди, 3 - Фэй, 4 - Гаальцы
        SRace:TOwnerSet; // Какой расе принадлежит квест (новая)

        TargetRace:integer; // Раса к которой летим
        // -1 - Незаселенная,0-малоки,1-пелегни,2-люди,3-фэяне,4-гаальцы
		STargetRace:TOwnerSet; // Раса к которой летим (новая)
        
        RangerStatus:integer; // Необходимый статус рейнджера
        // -1 - всем, 0-торговцам, 1-пиратам, 2-военным
        SRangerStatus:TStatusSet; // новое поле

        RangerRace:integer; // Необходимая раса рейнджера
        // -1 - любая, 0 - малок, 1 - пеленг, 2 - люди, 3 - фэй, 4 - гаал
        SRangerRace:TOwnerSet; // новое поле

        PlanetReaction:integer; // Отношение планеты после выполнения квеста
        // -1 - хуже, 0 - также, 1-лучше

        DefPathGoTimesValue:integer;//проходимость перехода по умолчанию

        Pars: array [1..maxparameters] of TParameter;

        QuestDescription:TTextField; // Описание задания
        QuestSuccessGovMessage:TTextField; //Текст правительства по выполнении задания
        QuestTargetName:TTextField; // Название артефакта
        ArtifactSize:integer;

     //Поля, используемые сугубо в редакторе

        RToStar:TTextField;
        RParsec:TTextField;
        RArtefact:TTextField;
        RToPlanet:TTextField;
        RDate:TTextField;
        RMoney:TTextField;
        RFromPLanet:TTextField;
        RFromStar:TTextField;
        RRanger:TTextField;

       WeWasHere,
         WrongPathes :array [1..maxlocations] of boolean;

        Locations: array [1..maxlocations] of TLocation; // Массив локаций
        Pathes: array [1..maxpathes] of TPath; // Массив переходов

        LocationsValue:integer;  // Количество локаций
        PathesValue:integer; // Количество переходов
        startlocation:integer;

        pathmatrix:array [1..maxlocations,1..maxlocations] of boolean;


        constructor Create(IM:PM);
        procedure Clear; // Очистить содержимое квеста

        procedure Save(var filename:string); overload; //Сохранить квест
        procedure Load(var filename:string); overload; //Загрузить квест

        procedure Save(f:PText);overload; //Сохранить квест
        procedure Load(f:PText);overload; //Загрузить квест

        procedure InitMessagePointers(var MessagesValue:integer;var MessageTypes:AInt;var MessagePointers:APWS);

        function AddLocation(var NewLocation:TLocation):integer; overload;
  //      function AddLocation( x,y :integer): boolean; overload;
          // Добавить локацию в квест
        procedure DeleteLocation(LocationNumber:integer);
          // Удалить локацию из квеста
        function AddPath(var NewPath:TPath):integer; overload;
 //       function AddPath(FromLocation,
 //                         ToLocation:integer):boolean; overload;
        // Добавить переход в квест


        procedure RecalculatePathCoords(Pathindex,DrawPathNumber:integer);
        procedure RecalculatePathes;

        function GetPathDistance(pathindex,mousex,mousey:integer):double;

        function CanAddStartLocation:boolean;


        function WeNearerToPathEnd(pathindex,x,y:integer):boolean;

        procedure DeletePath(PathNumber:integer);
          // Удалить переход из квеста

        function RaceToTOwnerSet(s:integer):TOwnerSet;
        function RaceToSRace(s:integer):TOwnerSet;
		function RangerRaceToTOwnerSet(s:integer):TOwnerSet;
        function RangerStatusToTStatusSet(s:integer):TStatusSet;

        function GetOutcomePathesValue(LocationIndex:integer):integer;

        function GetLocationIndex(LocationNumber:integer):integer;
          // Найти индекс локации в массиве по номеру локации
        function GetPathIndex(PathNumber:integer):integer;
          // Найти индекс перехода в массиве по номеру перехода

        function GetClosestLocation(x,y:integer):integer;
          // Найти ближайшую локацию к точке (x,y)
        function GetClosestPath(x,y:integer):integer;
          // Найти ближайший путь к точке (x,y)
        function IsCyclewith(FromNumber, ToNumber:integer):boolean;
          // Будет ли граф игровой карты циклическим при добавлении
          // в него ребра (FromNumber,ToNumber);

        function IsNoMeanCorrect:boolean;
        //Корректны ли построения из незначимых локаций и переходов

        //Позволяет ли конструкция из незначимых объектов запустить игру в квест
        function IsNoMeanCanPlay:boolean;

        procedure CopyDataFrom(var source:TGame);
          // Копируем все данные квеста  из source

        function HaveInComePathes(LocationNumber:integer):boolean;
        function HaveOutComePathes(LocationNumber:integer):boolean;

        function IsPathAlreadyHere(FromNumber, ToNumber:integer):boolean;
          // Проверить, есть ли переход между двумя локациями
        function GetPathIndexByStartandEndLocationNumbers(startnum,endnum:integer):integer;

        function GetOldPathStartMessage(startlocation,endlocation:integer):widestring;

        function CutStringIfNeed(txt:widestring;len:integer):widestring;

        procedure TraceForWrongPathes(Location:integer);
        procedure PrepareForWrongPathesTrace;
end;


implementation

function  TGame.RangerRaceToTOwnerSet(s:integer):TOwnerSet;
begin
     RangerRaceToTOwnerSet:=[];
    case s of
    	-1: RangerRaceToTOwnerSet:=[maloc,peleng,people,fei,gaal];
    	 0: RangerRaceToTOwnerSet:=[maloc];
    	 1: RangerRaceToTOwnerSet:=[peleng];
    	 2: RangerRaceToTOwnerSet:=[people];
    	 3: RangerRaceToTOwnerSet:=[fei];
    	 4: RangerRaceToTOwnerSet:=[gaal];
    end;

end;

function  TGame.RangerStatusToTStatusSet(s:integer):TStatusSet;
begin
      RangerStatusToTStatusSet:=[];
      case s of
      	-1: RangerStatusToTStatusSet:=[trader,pirate,warrior];
         0: RangerStatusToTStatusSet:=[trader];
         1: RangerStatusToTStatusSet:=[pirate];
         2: RangerStatusToTStatusSet:=[warrior];
      end;
end;


function TGame.RaceToTOwnerSet(s:integer):TOwnerSet;
begin
    RaceToTOwnerSet:=[];
    case s of
    	-1: RaceToTOwnerSet:=[none];
    	 0: RaceToTOwnerSet:=[maloc];
    	 1: RaceToTOwnerSet:=[peleng];
    	 2: RaceToTOwnerSet:=[people];
    	 3: RaceToTOwnerSet:=[fei];
    	 4: RaceToTOwnerSet:=[gaal];
    end;
end;
function TGame.RaceToSRace(s:integer):TOwnerSet;
begin
    RaceToSRace:=[];
    case s of
    	-1: RaceToSRace:=[none];
    	 0: RaceToSRace:=[maloc];
    	 1: RaceToSRace:=[peleng];
    	 2: RaceToSRace:=[people];
    	 3: RaceToSRace:=[fei];
    	 4: RaceToSRace:=[gaal];
    end;
end;

procedure TGame.InitMessagePointers(var MessagesValue:integer;var MessageTypes:AInt;var MessagePointers:APWS);
var i:integer;
begin

     MessagesValue:=0;

     if trim(QuestDescription.Text)<>'' then begin
        inc(MessagesValue);
        MessageTypes[MessagesValue]:=MissionGovMSGTYpe;
        MessagePointers[MessagesValue]:=@QuestDescription.Text;
     end;

     if trim(QuestSuccessGovMessage.Text)<>'' then begin
        inc(MessagesValue);
        MessageTypes[MessagesValue]:=SuccessGovMSGType;
        MessagePointers[MessagesValue]:=@QuestSuccessGovMessage.Text;
     end;

     if trim(RRanger.Text)<>'' then begin
        inc(MessagesValue);
        MessageTypes[MessagesValue]:=OutsideParMSGType;
        MessagePointers[MessagesValue]:=@RRanger.Text;
     end;
     if trim(RToPlanet.Text)<>'' then begin
        inc(MessagesValue);
        MessageTypes[MessagesValue]:=OutsideParMSGType;
        MessagePointers[MessagesValue]:=@RToPlanet.Text;
     end;
     if trim(RToStar.Text)<>'' then begin
        inc(MessagesValue);
        MessageTypes[MessagesValue]:=OutsideParMSGType;
        MessagePointers[MessagesValue]:=@RToStar.Text;
     end;
     if trim(RFromPlanet.Text)<>'' then begin
        inc(MessagesValue);
        MessageTypes[MessagesValue]:=OutsideParMSGType;
        MessagePointers[MessagesValue]:=@RFromPlanet.Text;
     end;
     if trim(RFromStar.Text)<>'' then begin
        inc(MessagesValue);
        MessageTypes[MessagesValue]:=OutsideParMSGType;
        MessagePointers[MessagesValue]:=@RFromStar.Text;
     end;

     for i:=1 to maxparameters do
     Pars[i].InitMessagePointers(MessagesValue,MessageTypes,MessagePointers);

     for i:=1 to LocationsValue do
     Locations[i].InitMessagePointers(MessagesValue,MessageTypes,MessagePointers);

     for i:=1 to PathesValue do
     Pathes[i].InitMessagePointers(MessagesValue,MessageTypes,MessagePointers);

end;

function TGame.CutStringIfNeed(txt:widestring;len:integer):widestring;
begin
        if len<length(txt) then begin
                            setlength(txt,len);
                            txt:=txt+'...';
        end;
        CutStringIfNeed:=txt;
end;


function TGame.GetOldPathStartMessage(startlocation,endlocation:integer):widestring;
var answer:integer;
    i:integer;
begin

     answer:=0;

     for i:=1 to PathesValue do begin

      if (Pathes[i].FromLocation=startlocation)
                and
         (Pathes[i].ToLocation=endlocation)
                and
         (answer<=i) then answer:=i;

     end;
    if answer=0 then GetOldPathStartMessage:=''
                else GetOldPathStartMessage:=trim(Pathes[answer].StartPathMessage.text)
end;

procedure TGame.Clear;
var i:integer;
begin
        FileVersion:=FileVersion_Current;
        Difficulty:=50;
		SRace:=[Maloc, Peleng, People, Fei, Gaal];
        STargetRace:=[None];
	 	SRangerRace:=[Maloc, Peleng, People, Fei, Gaal];
        SRangerStatus:=[Trader, Pirate, Warrior];
         NeedNotToReturn:=true;
        ArtifactSize:=1;
        Race:=0;
        XScreenResolution:=0;
        YScreenResolution:=0;
        DefPathGoTimesValue:=1;
        
        TargetRace:=-1;
        RangerStatus:=-1;
        RangerRace:=-1;
        PlanetReaction:=0;

        BlockXgradient:=BXG4;
        BlockYgradient:=BYG4;

        for i:=1 to maxparameters do Pars[i].Clear(i);

        QuestSuccessGovMessage.Text:=M.Par_Get('GameContentQuestSuccessGovMessage');

        QuestDescription.Text:=M.Par_Get('GameContentQuestDecription');

        QuestTargetName.Text:=M.Par_Get('GameContentQuestTargetName');


        RToStar.Text:=M.Par_Get('RToStar');
        RParsec.Text:=M.Par_Get('RParsec');
        RArtefact.Text:=M.Par_Get('RArtefact');
        RToPlanet.Text:=M.Par_Get('RToPlanet');
        RDate.Text:=M.Par_Get('RDate');
        RMoney.Text:=M.Par_Get('RMoney');
        RFromPLanet.Text:=M.Par_Get('RFromPLanet');
        RFromStar.Text:=M.Par_Get('RFromStar');
        RRanger.Text:=M.Par_Get('RRanger');


 
        LocationsValue:=0;
        PathesValue:=0;
        for i:=1 to maxlocations do Locations[i].Clear;
        for i:=1 to maxpathes do begin Pathes[i].Clear;
        end;
end;


procedure TGame.RecalculatePathes;
var i,c,a,b:integer;
    countmatrix:array [1..maxlocations,1..maxlocations] of integer;
begin
        for i:=1 to LocationsValue do
                for c:=1 to LocationsValue do countmatrix[i][c]:=0;

        for i:=1 to PathesValue do begin

         a:=GetLocationIndex(Pathes[i].FromLocation);
         b:=GetLocationIndex(Pathes[i].ToLocation);

         inc(countmatrix[a,b]);
         countmatrix[b,a]:=countmatrix[a,b]+1;
         RecalculatePathCoords(i,countmatrix[a,b]);
        end;
end;

procedure TGame.RecalculatePathCoords(PathIndex,DrawPathNumber:integer);
  var q,i,c:integer;
      ax,bx,ay,by:extended;
       l,a,m,w,z,x0,y0,x1,y1,r:extended;
       p:extended;
begin

     i:=GetLocationIndex(Pathes[PathIndex].FromLocation);
     c:=GetLocationIndex(Pathes[PathIndex].ToLocation);

     ax:=Locations[i].screenx;
     ay:=Locations[i].screeny;
     bx:=Locations[c].screenx;
     by:=Locations[c].screeny;


     p:=1/(maxpathcoords);
     if DrawPathNumber=1 then a:=0 else a:=15;

     for q:=0 to maxpathcoords do begin

      x0:=ax + q*(p)*(bx-ax);
      y0:=ay + q*(p)*(by-ay);

      r:=sqrt((ax-bx)*(ax-bx) + (ay-by)*(ay-by));
      l:=sqrt((ax-x0)*(ax-x0) + (ay-y0)*(ay-y0));
      if by<ay then w:=arccos((ax-bx)/r) else w:=pi+arccos((bx-ax)/r);


      if (DrawPathNumber mod 2 <> 0) then m:=w+pi/2 else m:=w-pi/2;

      z:=a*(DrawPathNumber div 2)*sin( (pi)*(1 - l/r) );

      x1:=z*cos(m)+ x0;
      y1:=z*sin(m)+ y0;

      Pathes[PathIndex].PathXCoords[q]:=trunc(x1);
      Pathes[PathIndex].PathYCoords[q]:=trunc(y1);

     end;

end;

procedure TGame.CopyDataFrom(var source:TGame);
var i:integer;
begin
        FileVersion:=source.FileVersion;

        NeedNotToReturn:=source.NeedNotToReturn;

        Race:=source.Race;
		SRace:=source.SRace;
        ArtifactSize:=source.ArtifactSize;
        Difficulty:=source.Difficulty;
        TargetRace:=source.TargetRace;
        STargetRace:=source.STargetRace;
		SRangerRace:=source.SRangerRace;
        SRangerStatus:=source.SRangerStatus;
        RangerStatus:=source.RangerStatus;
        RangerRace:=source.RangerRace;
        PlanetReaction:=source.PlanetReaction;

        QuestDescription.Clear;
        QuestDescription.Text:=source.QuestDescription.Text;

        QuestSuccessGovMessage.Clear;
        QuestSuccessGovMessage.Text:=source.QuestSuccessGovMessage.Text;

        XScreenResolution:=source.XScreenResolution;
        YScreenResolution:=source.YScreenResolution;

        BlockXgradient:=source.BlockXgradient;
        BlockYgradient:=source.BlockYgradient;

        QuestTargetName.Clear;
        QuestTargetName.Text:=source.QuestTargetName.Text;


        for i:=1 to maxparameters do Pars[i].CopyDataFrom(source.Pars[i]);


        RToStar.Text:=source.RToStar.Text;
        RParsec.Text:=source.RParsec.Text;
        RArtefact.Text:=source.RArtefact.Text;
        RToPlanet.Text:=source.RToPlanet.Text;
        RDate.Text:=source.RDate.Text;
        RMoney.Text:=source.RMoney.Text;
        RFromPLanet.Text:=source.RFromPLanet.Text;
        RFromStar.Text:=source.RFromStar.Text;
        RRanger.Text:=source.RRanger.Text;


        LocationsValue:=source.LocationsValue;
        PathesValue:=source.PathesValue;

        for i:=1 to maxlocations do
                Locations[i].CopyDataFrom(source.Locations[i]);
        for i:=1 to maxpathes do
                Pathes[i].CopyDataFrom(source.Pathes[i]);
end;

constructor TGame.Create(IM:PM);
var i:integer;
begin
        M:=@MessageText.M;

        QuestSuccessGovMessage:=TTextField.Create;
        QuestDescription:=TTextField.Create;
        QuestTargetName:=TTextField.Create;


         for i:=1 to maxparameters do Pars[i]:=TParameter.Create(i);

        RToStar:=TTextField.Create;
        RParsec:=TTextField.Create;
        RArtefact:=TTextField.Create;
        RToPlanet:=TTextField.Create;
        RDate:=TTextField.Create;
        RMoney:=TTextField.Create;
        RFromPLanet:=TTextField.Create;
        RFromStar:=TTextField.Create;
        RRanger:=TTextField.Create;

        for i:=1 to maxlocations do Locations[i]:= TLocation.Create(0,LocationClass.PM(M));
        for i:=1 to maxpathes do Pathes[i]:= TPath.Create(0,0,0,0,1,0,1,0,1,PathClass.PM(M));
        Clear;
end;



 procedure TGame.Save(f:PText);
var    i:integer;
begin
        BlockWrite(f^,FileVersion,sizeof(FileVersion));
        BlockWrite(f^,Race,sizeof(Race));
        BlockWrite(f^,SRace,sizeof(SRace));
        BlockWrite(f^,NeedNotToReturn,sizeof(NeedNotToReturn));
        BlockWrite(f^,TargetRace,sizeof(TargetRace)); //!!!
        BlockWrite(f^,STargetRace,sizeof(STargetRace)); //!!!
        BlockWrite(f^,RangerStatus,sizeof(RangerStatus)); //!!!
        BlockWrite(f^,SRangerStatus,sizeof(SRangerStatus)); //!!!
        BlockWrite(f^,RangerRace,sizeof(RangerRace)); //!!!!!
        BlockWrite(f^,SRangerRace,sizeof(SRangerRace)); //!!!!!
        BlockWrite(f^,PlanetReaction,sizeof(PlanetReaction)); //!!!
        BlockWrite(f^,XScreenResolution,sizeof(XScreenResolution));
        BlockWrite(f^,YScreenResolution,sizeof(YScreenResolution));
        BlockWrite(f^,BlockXgradient,sizeof(BlockXgradient)); //!!
        BlockWrite(f^,BlockYgradient,sizeof(BlockYgradient)); //!!
        BlockWrite(f^,ArtifactSize,sizeof(ArtifactSize));
        BlockWrite(f^,DefPathGoTimesValue,sizeof(DefPathGoTimesValue));
        BlockWrite(f^,Difficulty,sizeof(Difficulty));
        for i:=1 to maxparameters do Pars[i].Save_4_0_1(ParameterClass.PText(f));
        RToStar.Save(TextFieldClass.PText(f)); //!!
        RParsec.Save(TextFieldClass.PText(f)); //!!
        RArtefact.Save(TextFieldClass.PText(f)); //!!
        RToPlanet.Save(TextFieldClass.PText(f)); //!!
        RDate.Save(TextFieldClass.PText(f)); //!!
        RMoney.Save(TextFieldClass.PText(f)); //!!
        RFromPLanet.Save(TextFieldClass.PText(f)); //!!
        RFromStar.Save(TextFieldClass.PText(f)); //!!
        RRanger.Save(TextFieldClass.PText(f)); //!!
        BlockWrite(f^,LocationsValue,sizeof(LocationsValue));
        BlockWrite(f^,PathesValue,sizeof(PathesValue));
        QuestSuccessGovMessage.Save(TextFieldClass.PText(f)); //!! //!!!!
        QuestDescription.Save(TextFieldClass.PText(f)); //!!
        QuestTargetName.Save(TextFieldClass.PText(f)); //!!
        for i:=1 to LocationsValue do Locations[i].Save_v4_0_1(LocationClass.PText(f));
        for i:=1 to PathesValue do Pathes[i].Save_v4_0_2(PathClass.PText(f)); //!!
end;

procedure TGame.Save(var filename:string);
var f:file;
begin
        assign(f,filename);
        rewrite(f,1);
        Save(@f);
        close(f);
end;

procedure TGame.Load(f:PText);
var i:integer;
begin
        Clear;

        BlockRead(f^,FileVersion,sizeof(FileVersion));

        if FileVersion<=FileVersion_Older_than_3_8_5 then begin
        Race:=FileVersion;
        FileVersion:=FileVersion_Older_than_3_8_5;
        end else begin
         BlockRead(f^,Race,sizeof(Race));
        end;
        if FileVersion>=FileVersion_3_9_6 then begin
            BlockRead(f^,SRace,sizeof(SRace));
        end else begin
        	SRace:=RaceToSRace(Race);
        end;

        if FileVersion>=FileVersion_3_8_5 then begin
         BlockRead(f^,NeedNotToReturn,sizeof(NeedNotToReturn));
        end;

        BlockRead(f^,TargetRace,sizeof(TargetRace)); //!!!
        if FileVersion>=FileVersion_3_9_6 then begin
            BlockRead(f^,STargetRace,sizeof(STargetRace));
        end else begin
            STargetRace:=RaceToTOwnerSet(TargetRace);
        end;

        BlockRead(f^,RangerStatus,sizeof(RangerStatus)); //!!!
        if FileVersion>=FileVersion_4_0_0 then begin
            BlockRead(f^,SRangerStatus,sizeof(SRangerStatus));
        end else begin
            SRangerStatus:=RangerStatusToTStatusSet(RangerStatus);
        end;

        BlockRead(f^,RangerRace,sizeof(RangerRace)); //!!!!!
        if FileVersion>=FileVersion_4_0_0 then begin
            BlockRead(f^,SRangerRace,sizeof(SRangerRace));
        end else begin
            SRangerRace:=RangerRaceToTOwnerSet(RangerRace);
        end;

        BlockRead(f^,PlanetReaction,sizeof(PlanetReaction)); //!!!
        BlockRead(f^,XScreenResolution,sizeof(XScreenResolution));
        BlockRead(f^,YScreenResolution,sizeof(YScreenResolution));
        BlockRead(f^,BlockXgradient,sizeof(BlockXgradient)); //!!
        BlockRead(f^,BlockYgradient,sizeof(BlockYgradient)); //!!
        BlockRead(f^,ArtifactSize,sizeof(ArtifactSize));
        if FileVersion>=FileVersion_4_0_0 then
			BlockRead(f^,DefPathGoTimesValue,sizeof(DefPathGoTimesValue));
        if FileVersion>=FileVersion_4_0_1 then
			BlockRead(f^,Difficulty,sizeof(Difficulty));

        if FileVersion>=FileVersion_4_0_1 then
         for i:=1 to maxparameters do Pars[i].Load_4_0_1(ParameterClass.Ptext(f))
        else
        if FileVersion>=FileVersion_3_9_6 then begin
         for i:=1 to maxparameters do Pars[i].Load_3_9_6(ParameterClass.Ptext(f));
         if FileVersion_Current>=FileVersion_4_0_1 then begin
         	for i:=1 to maxparameters do Pars[i].AltDiapStartValues.Add(Pars[i].value);
         end;
        end else
        if FileVersion>=FileVersion_3_9_5 then
        	for i:=1 to 12 do Pars[i].Load_3_9_5(ParameterClass.PText(f))
        else
        if FileVersion>=FileVersion_3_9_2 then
			for i:=1 to 12 do Pars[i].Load_3_9_0(ParameterClass.PText(f))
        else
        if FileVersion>=FileVersion_3_9_0 then
			for i:=1 to 9 do Pars[i].Load_3_9_0(ParameterClass.PText(f))
        else
			for i:=1 to 9 do Pars[i].Load(ParameterClass.PText(f));

        RToStar.Load(TextFieldClass.PText(f)); //!!
        RParsec.Load(TextFieldClass.PText(f)); //!! //!!
        RArtefact.Load(TextFieldClass.PText(f)); //!!//!!
        RToPlanet.Load(TextFieldClass.PText(f)); //!! //!!
        RDate.Load(TextFieldClass.PText(f)); //!!
        RMoney.Load(TextFieldClass.PText(f)); //!!
        RFromPLanet.Load(TextFieldClass.PText(f)); //!!
        RFromStar.Load(TextFieldClass.PText(f)); //!!
        RRanger.Load(TextFieldClass.PText(f)); //!!
        BlockRead(f^,LocationsValue,sizeof(LocationsValue));
        BlockRead(f^,PathesValue,sizeof(PathesValue));
        QuestSuccessGovMessage.Load(TextFieldClass.PText(f)); //!!
        QuestDescription.Load(TextFieldClass.PText(f)); //!!
        QuestTargetName.Load(TextFieldClass.PText(f)); //!!
        if FileVersion>=FileVersion_4_0_1 then
             for i:=1 to LocationsValue do  Locations[i].Load_v4_0_1(LocationClass.PText(f),XScreenResolution,YScreenResolution)
        else
         if FileVersion>=FileVersion_3_9_6 then
             for i:=1 to LocationsValue do  Locations[i].Load_v3_9_6(LocationClass.PText(f),XScreenResolution,YScreenResolution)
        else
        if FileVersion>=FileVersion_3_9_4 then
             for i:=1 to LocationsValue do Locations[i].Load_v3_9_4(LocationClass.PText(f),800,600)
        else
        if FileVersion>=FileVersion_3_9_3 then
             for i:=1 to LocationsValue do Locations[i].Load_v3_9_3(LocationClass.PText(f))
        else
        if FileVersion>=FileVersion_3_9_2 then
             for i:=1 to LocationsValue do Locations[i].Load_v3_9_2(LocationClass.PText(f))
        else
        for i:=1 to LocationsValue do Locations[i].Load(LocationClass.PText(f)); //!!


        if FileVersion>=FileVersion_4_0_2 then
            for i:=1 to PathesValue do Pathes[i].Load_v4_0_2(PathClass.PText(f))
        else
        if FileVersion>=FileVersion_3_9_6 then
            for i:=1 to PathesValue do Pathes[i].Load_v3_9_6(PathClass.PText(f))
        else
        if FileVersion>=FileVersion_3_9_4 then begin
            for i:=1 to PathesValue do Pathes[i].Load_v3_9_4(PathClass.PText(f))
        end else
        if FileVersion>=FileVersion_3_9_3 then begin
            for i:=1 to PathesValue do Pathes[i].Load_v3_9_3(PathClass.PText(f))
        end
        else
        if FileVersion>=FileVersion_3_9_2 then
            for i:=1 to PathesValue do Pathes[i].Load_v3_9_2(PathClass.PText(f))
        else
        if FileVersion>=FileVersion_3_9_1 then
            for i:=1 to PathesValue do Pathes[i].Load_v3_9_1(PathClass.PText(f))
        else
        if FileVersion>=FileVersion_3_8_5 then
            for i:=1 to PathesValue do Pathes[i].Load_v3_8_5(PathClass.PText(f))
        else
        if FileVersion=FileVersion_Older_than_3_8_5 then
            for i:=1 to PathesValue do Pathes[i].Load(PathClass.PText(f));

        FileVersion:=FileVersion_Current;
end;

procedure TGame.Load(var filename:string);
var f:file;
begin
        assign(f,filename);
        reset(f,1);
        Load(@f);
        close(f);
end;


function TGame.GetOutcomePathesValue(LocationIndex:integer):integer;
var answer:integer;
    i:integer;
begin
     answer:=0;
     for i:=1 to PathesValue do
        if Pathes[i].FromLocation=Locations[LocationIndex].LocationNumber then
                inc(answer);
     GetOutcomePathesValue:=answer;
end;


function TGame.WeNearerToPathEnd(pathindex,x,y:integer):boolean;
var answer:boolean;
    ax,ay,bx,by:extended;
begin

        answer:=true;

        ax:=Locations[GetLocationIndex(Pathes[Pathindex].FromLocation)].screenx;
        ay:=Locations[GetLocationIndex(Pathes[Pathindex].FromLocation)].screeny;
        bx:=Locations[GetLocationIndex(Pathes[Pathindex].ToLocation)].screenx;
        by:=Locations[GetLocationIndex(Pathes[Pathindex].ToLocation)].screeny;

        if  not (
                sqrt ( (ax-x)*(ax-x) + (ay-y)*(ay-y) )
                >
                sqrt ( (bx-x)*(bx-x) + (by-y)*(by-y) )
                 )
        then answer:=false;

        WeNearerToPathEnd:=answer;
    //
end;

function TGame.CanAddStartLocation:boolean;
var i,q:integer;
begin
  q:=0;
    for i:=1 to LocationsValue do
      if Locations[i].StartLocationFlag then inc(q);

    CanAddStartLocation:=q=0;
end;

{
function TGame.AddLocation( x,y :integer):boolean;
    var NewLocation:TLocation;
        NewLocationNumber,i:integer;
        temp:string;
        flag:boolean;
begin
     NewLocation:=TLocation.Create(0,LocationClass.PM(M));
     NewLocation.screenx:=x;
     NewLocation.screeny:=y;

     for i:=1 to maxparameters do
     NewLocation.DPars[i].CriticalMessageVisible:=true;

     if LocationsValue=0 then NewLocation.StartLocationFlag:=true;

     NewLocationNumber:=AddLocation(NewLocation);

     temp:=trim(NewLocation.LocationName.Text)+' ';
     Locations[GetLocationIndex(NewLocationNumber)].LocationName.text:=
                                               temp+inttostr(NewLocationNumber);
     Locations[GetLocationIndex(NewLocationNumber)].LocationDescription.text:=
                                               temp+inttostr(NewLocationNumber);

    for i:=1 to maxparameters do begin
       form1.ParRadioButtons[i].Visible:=Pars[i].Enabled;
       form1.ParRadioButtons[i].Caption:=trim(Pars[i].Name.Text);
       form1.ParDeltaLabels[i].Visible:=Pars[i].Enabled;
       form1.ParMaxes[i]:=Pars[i].max;
       form1.ParMins[i]:=Pars[i].min;
       if Pars[i].ParType=NoCriticalParType then flag:=false else flag:=true;
       NewLocation.DPars[i].CriticalMessageVisible:=flag;

      NewLocation.DPars[i].min:=Pars[i].min;
      NewLocation.DPars[i].max:=Pars[i].max;

    end;

     Form1.CanCheckStartLocation:=CanAddStartLocation;

     Form1.WeMakingANewLocation:=true;
     Form1.QuestLocationIndex:=GetLocationIndex(NewLocationNumber);

     Form1.ShowModal;
     if Form1.is_ok_pressed then begin
                                AddLocation:=true;
                                end
     else begin AddLocation:=false; DeleteLocation(NewLocationNumber); end;
     NewLocation.Destroy;
end;
}

function TGame.AddLocation(var NewLocation:TLocation):integer;
        var i, NewLocationNumber:integer;
begin
    if LocationsValue<maxlocations then begin

       NewLocationNumber:=0;
       for i:=1 to LocationsValue do
        if Locations[i].LocationNumber>NewLocationNumber
                           then NewLocationNumber:=Locations[i].LocationNumber;

       inc(NewLocationNumber);
       inc(LocationsValue);

       Locations[LocationsValue].CopyDataFrom(NewLocation);
       Locations[LocationsValue].LocationNumber:=NewLocationNumber;



       AddLocation:=NewLocationNumber;
    end else  begin
    	ShowMessage(M.Par_Get('GameContentTooManyLocationsError'));
    	AddLocation:=-1;
    end;
end;

procedure TGame.DeleteLocation(LocationNumber:integer);
var i, found_index:integer;
begin

      found_index:=0;
      for i:=1 to LocationsValue do  begin
        if Locations[i].LocationNumber=LocationNumber
               then found_index:=i;
      end;

    if found_index>0 then begin

      for i:=found_index to LocationsValue-1 do
                 Locations[i].CopyDataFrom(Locations[i+1]);
      dec(LocationsValue);
    end
      else ShowMessage('Cannot delete location - No Location with'
                        +
                       ' current LocationNumber found');
end;


{function TGame.AddPath(FromLocation,
                          ToLocation:integer):boolean;
     var NewPath:TPath;
     temp,temp1:string;
     NewPathNumber,i:integer;
     flag:boolean;
begin
     AddPath:=false;
     NewPath:=TPath.Create(0,0,0,0,0,
                                 0,0,
                                 0,0,PathClass.PM(M));
 //  NewPath.Clear;
     NewPath.FromLocation:=FromLocation;
     NewPath.ToLocation:=ToLocation;
     for i:=1 to maxparameters do begin
      NewPath.DPars[i].CriticalMessageVisible:=true;
      NewPath.DPars[i].min:=Pars[i].GetDefaultMinGate;
      NewPath.DPars[i].max:=Pars[i].GetDefaultMaxGate;
     end;

     temp1:=GetOldPathStartMessage(FromLocation,ToLocation);

//temp1:=trim(NewPath.StartPathMessage.Text);
temp:='  ' + CutStringIfNeed(
             trim(Locations[GetLocationIndex(FromLocation)].LocationDescription.Text),100)
             +
             ' -> '
             +
             CutStringIfNeed(
             trim(Locations[GetLocationIndex(ToLocation)].LocationDescription.Text),100);

if temp1<>'' then NewPath.StartPathMessage.Text:=temp1
             else NewPath.StartPathMessage.Text:=temp;


     NewPathNumber:=AddPath(NewPath);

     Form3.QuestPathIndex:=GetPathIndex(NewPathNumber);
     Form3.WeMakingANewPath:=true;

     if newpathnumber=0 then begin NewPath.Destroy;
                                   exit;
     end;

//
    for i:=1 to maxparameters do begin
       form3.ParRadioButtons[i].Visible:=Pars[i].Enabled;
       form3.ParRadioButtons[i].Caption:=trim(Pars[i].Name.Text);
       form3.ParGateLabels[i].Visible:=Pars[i].Enabled;
       form3.ParDeltaLabels[i].Visible:=Pars[i].Enabled;
       form3.ParMaxes[i]:=Pars[i].GetDefaultMaxGate;
       form3.ParMins[i]:=Pars[i].GetDefaultMinGate;
       if Pars[i].ParType=NoCriticalParType then flag:=false else flag:=true;
       NewPath.DPars[i].CriticalMessageVisible:=flag;

      NewPath.DPars[i].min:=Pars[i].min;
      NewPath.DPars[i].max:=Pars[i].max;

    end;

     //Form3.FormPath.CopyDataFrom(NewPath);
     Form3.ShowModal;

     If Form3.is_ok_pressed then begin
        AddPath:=true
     end
     else begin DeletePath(NewPathNumber); AddPath:=false; end;

     NewPath.Destroy;
end;
}
function TGame.AddPath(var NewPath:TPath):integer;
  var i, NewPathNumber:integer;
      oldpathes:integer;
  begin
  NewPathNumber:=1;
  oldpathes:=0;
  for i:=1 to PathesValue do if Pathes[i].FromLocation = NewPath.FromLocation then inc(oldpathes);

    if (oldpathes<maxpathesfromonelocation)and(PathesValue<maxpathes) then begin

       for i:=1 to PathesValue do
        if Pathes[i].PathNumber>NewPathNumber
                           then NewPathNumber:=Pathes[i].PathNumber;
       inc(NewPathNumber);

       inc(PathesValue);

       Pathes[PathesValue].CopyDataFrom(NewPath);
       Pathes[PathesValue].PathNumber:=NewPathNumber;

    end
    else  begin
    NewPathNumber:=0;
    ShowMessage(M.Par_Get('GameContentTooManyPathesError'));

    end;

    AddPath:=NewPathNumber;
end;


procedure TGame.DeletePath(PathNumber:integer);
var i, found_index:integer;
begin
      found_index:=0;
      for i:=1 to PathesValue do
        if Pathes[i].PathNumber=PathNumber
               then found_index:=i;

      if found_index>0 then begin
        for i:=found_index to PathesValue-1 do
                                    Pathes[i].CopyDataFrom(Pathes[i+1]);
        dec(PathesValue);
      end
      else ShowMessage('Cannot delete Path - No Path with'
                        +
                       ' current PathNumber found');
end;

function TGame.GetLocationIndex(LocationNumber:integer):integer;
var i,found_index:integer;
begin
found_index:=0;

        for i:=1 to LocationsValue do
                if Locations[i].LocationNumber=LocationNumber then
                        found_index:=i;

            if found_index=0 then
                        ShowMessage('Cannot find Location by'+
                                      ' Location Number - error');

    GetLocationIndex:=found_index;
end;

function TGame.GetPathIndex(PathNumber:integer):integer;
var i,found_index:integer;
begin
found_index:=0;

        for i:=1 to PathesValue do
                if Pathes[i].PathNumber=PathNumber then
                        found_index:=i;

            if found_index=0 then
                        ShowMessage('Cannot find Path by'+
                                      ' Path Number - error');

    GetPathIndex:=found_index;
end;


function TGame.GetClosestLocation(x,y:integer):integer;
 var closest_location_index:integer;
     i:integer;
     closest_radius, current_radius:real;
begin
       closest_location_index:=-1;
       closest_radius:=1000000;
       for i:=1 to LocationsValue  do begin
           current_radius:=sqrt(sqr(Locations[i].screenx - x)
                                 +
                                sqr(Locations[i].screeny - y) );
           if current_radius<closest_radius then begin

                closest_radius:=current_radius;
                closest_location_index:=i;
           end;
       end;

       if closest_radius>MinDistConst then closest_location_index:=-1;

       GetClosestLocation:=closest_location_index;
end;

function TGame.GetPathDistance(pathindex,mousex,mousey:integer):double;
  label alldone;

  var  tx,ty,a,b:integer;
       x1,y1,x2,y2:integer;
       t_distance,distance:double;
       c:integer;
begin
       //TODO Make function working

       distance:=1000000;

if pathindex<=0 then goto alldone;

     a:=GetLocationIndex(pathes[Pathindex].Fromlocation);
     b:=GetLocationIndex(pathes[Pathindex].Tolocation);

     x1:=Locations[a].screenx;
     y1:=Locations[a].screeny;
     x2:=Locations[b].screenx;
     y2:=Locations[b].screeny;
 
     for c:=0 to maxpathcoords do begin

     tx:=Pathes[Pathindex].pathXCoords[c];
     ty:=Pathes[Pathindex].pathYCoords[c];

     t_distance:=sqrt(
                    (tx - mousex)*(tx  - mousex)
                     +
                    (ty - mousey)*(ty - mousey)
                    );

      if (t_distance<distance)
      and
       (
        (     sqrt(
                    (tx - x1)*(tx - x1)
                     +
                    (ty - y1)*(ty - y1)
                   )
              >10

        )
       and
        (     sqrt(
                    (tx - x2)*(tx - x2)
                     +
                    (ty - y2)*(ty - y2)
                   )
              >10

        )

       )      then distance:=t_distance;

     end;

 alldone:
     GetPathDistance:=distance;
end;


function TGame.GetClosestPath(x,y:integer):integer;
 var closest_path_index:integer;
     i:integer;
     closest_radius, current_radius:real;
begin
       closest_path_index:=-1;
       closest_radius:=1000000;
       for i:=1 to PathesValue  do begin

           current_radius:=GetPathDistance(i,x,y);
                            
           if current_radius<closest_radius then begin

                closest_radius:=current_radius;
                closest_path_index:=i;
           end;
       end;

       if closest_radius>MinDistConst then  closest_path_index:=-1;

       GetClosestPath:=closest_path_index;
end;


procedure TGame.PrepareForWrongPathesTrace;
    var
        i,c:integer;
        x,y:integer;
begin
        //Инициализируем массивы флагов и матрицу инцидентности

        for i:=1 to PathesValue+1 do WrongPathes[i]:=false;

        for i:=1 to LocationsValue do begin

            WeWasHere[i]:=false;
            for c:=1 to LocationsValue do pathmatrix[i][c]:=false;
        end;

        for i:=1 to PathesValue do  begin
                x:=GetLocationIndex(pathes[i].ToLocation);
                y:=GetLocationIndex(pathes[i].FromLocation);

                pathmatrix[x][y]:=true;
        end;

        //Ищем стартовую локацию
    startlocation:=-1;
        for i:=1 to LocationsValue do
                if Locations[i].StartLocationFlag then startlocation:=i;

end;

function TGame.GetPathIndexByStartandEndLocationNumbers(startnum,endnum:integer):integer;
    var i:integer;
        pathfound:integer;
begin
        pathfound:=0;
        for i:=1 to PathesValue do

        if (Pathes[i].FromLocation=startnum)and(Pathes[i].ToLocation=endnum)
            then pathfound:=i;

        GetPathIndexByStartandEndLocationNumbers:=pathfound;
end;


procedure TGame.TraceForWrongPathes(Location:integer);
var i:integer;
begin
      WeWasHere[Location]:=true;

       for i:=1 to LocationsValue do   begin

          if (pathmatrix[i][Location]) and (not WeWasHere[i]) then begin

            WrongPathes[GetPathIndexByStartandEndLocationNumbers(
                                        Locations[Location].LocationNumber,
                                        Locations[i].LocationNumber)
                       ]:=false;

           TraceForWrongPathes(i);
         end;

          if (pathmatrix[i][Location]) and (WeWasHere[i]) then begin

            WrongPathes[GetPathIndexByStartandEndLocationNumbers(
                                        Locations[Location].LocationNumber,
                                        Locations[i].LocationNumber)
                       ]:=true;


         end;

       end;
   WeWasHere[Location]:=false;
end;


function TGame.IsCyclewith(FromNumber, ToNumber:integer):boolean;
label done;
var i,c,n:integer;
    a: array [1..maxlocations,1..maxlocations] of integer;
 

begin


     for i:=1 to maxlocations do for c:=1 to maxlocations do a[i,c]:=0;

     for i:=1 to PathesValue do begin
        a[
              GetLocationIndex(Pathes[i].FromLocation),
              GetLocationIndex(Pathes[i].ToLocation)
         ]:=1;
     end;
     a[ GetLocationIndex(FromNumber),GetLocationIndex(ToNumber) ]:=1;

     n:=0;
   //  for i:=1 to maxlocations do
     for c:=1 to maxlocations do n:=n+(a[c,c]+a[c,c]) div 2;

//////
      PrepareForWrongPathesTrace;

       if n=0 then IsCycleWith:=false else IsCycleWith:=true;

   
end;

function TGame.HaveInComePathes(LocationNumber:integer):boolean;
var i:integer;
begin
        HaveInComePathes:=false;

    for i:=1 to PathesValue do
        if Pathes[i].ToLocation=LocationNumber then begin

         HaveInComePathes:=true;
         break;
        end;
end;

function TGame.HaveOutComePathes(LocationNumber:integer):boolean;
var i:integer;
begin
        HaveOutComePathes:=false;

    for i:=1 to PathesValue do
        if Pathes[i].FromLocation=LocationNumber then begin

         HaveOutComePathes:=true;
         break;
        end;
end;

function TGame.IsPathAlreadyHere(FromNumber, ToNumber:integer):boolean;
var     yes_flag:boolean;
        i:integer;
begin
        yes_flag:=false;
        for i:=1 to PathesValue do

                if (Pathes[i].FromLocation=FromNumber)
                    and
                   (Pathes[i].ToLocation=ToNumber) then yes_flag:=true;
                   
        IsPathAlreadyHere:=yes_flag;
end;


function TGame.IsNoMeanCorrect:boolean;
label stop;

var flag:boolean;
   // i,c,n:integer;
begin
        flag:=true;

        //Из значимых локаций не должны выходить незначимые переходы
    {    for i:=1 to PathesValue do begin
         if not Pathes[i].NoMeanFlag
            and
             (Locations[GetLocationIndex(Pathes[i].FromLocation)].NoMeanFlag)

            then begin flag:=false; goto stop; end;
        end;


        //незначимые переходы можно создавать только выходящими из незначимых локаций
        for i:=1 to PathesValue do begin
         if Pathes[i].NoMeanFlag
            and
            not (Locations[GetLocationIndex(Pathes[i].FromLocation)].NoMeanFlag)

            then begin flag:=false; goto stop; end;
        end;

        //Из одной незначимой локации может выходить только один переход
        // и он должен быть незначимым
        for i:=1 to LocationsValue do begin
           n:=0;

           if Locations[i].NoMeanFlag then
                for c:=1 to PathesValue do

                 if Pathes[c].FromLocation=Locations[i].LocationNumber then begin

                    if not Pathes[c].NoMeanFlag  then begin flag:=false; goto stop; end;
                    inc(n);

                 end;

           if n>1 then begin flag:=false; goto stop; end;
        end;
//a   }
 stop:
        IsNoMeanCorrect:=flag;
end;


function TGame.IsNoMeanCanPlay:boolean;
label stop;
var //i,c,n:integer;
    flag:boolean;
begin
      flag:=true;

      {  for i:=1 to LocationsValue do begin
           n:=0;
              for c:=1 to PathesValue do

                 if Pathes[c].FromLocation=Locations[i].LocationNumber then begin

                    inc(n);

                 end;

           if (n=0) and (Locations[i].NoMeanFlag) and (not Locations[i].ClosedLocationFlag) then
                begin flag:=false; goto stop; end;
        end;
//a    }
stop:
       IsNoMeanCanPlay:=flag;
end;

end.
