unit ProjectClass;

interface

uses
     Dialogs,SysUtils,
     GameContent,MessageText,
     EC_Str;

const  empty='<<_E_m_p_t_y_>>';


type TtqmProject=class
   public

   SourceQM,TargetQM:TGame;
   SourcePointers,TargetPointers:APWS;
   SourceMessageTypes,TargetMessageTypes,EmptyPathes,TrackBarIndexList:AInt;
   SMessagesValue:integer;
   TMessagesValue:integer;
   TBMessagesValue:integer;
   CurrentMessageNumber:integer;


   constructor Create;
   procedure Clear;
   function IsSourceAndTargetCompatible:boolean;
   function GetSourceByNumber(number:integer):WideString;
   function GetTargetByNumber(number:integer):WideString;
   function GetNextNotEditedNumber(number:integer):integer;

   function NumberIsEmpty(number:integer):boolean;
   function FindTrackBarIndex(number:integer):integer;

   procedure SetTargetByNumber(number:integer; txt:WideString);
   procedure Save(var filename:string);
   procedure Load(var filename:string);

   procedure MSGSSave(var filename:string);
   procedure MSGSLoad(var filename:string);

   procedure MSGPathTextFix;

   procedure MSGSetEmptyPathes;

   procedure InitProjectData;
   procedure ExportSource(filename:string);
   procedure ExportTarget(filename:string);
   procedure MakeNewProject(sourcefilename:string);

end;

implementation



function TtqmProject.FindTrackBarIndex(number:integer):integer;
label done;
var i:integer;
    answer:integer;
begin
    answer:=-1;
    for i:=1 to TBMessagesValue do begin
        if number=TrackBarIndexList[i] then begin
            answer:=i;
            goto done;
        end;
    end;
done:
   // if answer=-1 then showMessage('FindTrackBarIndex error.)');
    FindTrackBarIndex:=answer;
end;

function TtqmProject.NumberIsEmpty(number:integer):boolean;
begin
 if EmptyPathes[number]=0 then
    NumberIsEmpty:=false
    else
    NumberIsEmpty:=true;

end;


procedure TtqmProject.MSGSetEmptyPathes;
var i,c,q,m:integer;

begin

    for i:=1 to  SMessagesValue do EmptyPathes[i]:=0;
    for i:=1 to  SMessagesValue do begin

//ѕровер€ем, если это текст вопроса перехода то
        for q:=1 to TargetQM.PathesValue do begin
          if ((@TargetQM.Pathes[q].StartPathMessage.Text)=(TargetPointers[i]))
             and
             (EmptyPathes[i]=0)

           then begin

           //»щем в переходах спорный переход дл€ него
                for c:=1 to TargetQM.PathesValue do begin

                  if (TargetQM.Pathes[c].FromLocation=TargetQM.Pathes[q].FromLocation)
                      and
                     (
                      trim(TargetQM.Pathes[c].StartPathMessage.Text)
                      =
                      trim(TargetQM.Pathes[q].StartPathMessage.Text)
                      )
                      then begin

                    //   tempstr:=' '+inttostr(q);
                    //   TargetQM.Pathes[c].StartPathMessage.Text:=empty+tempstr;

                        for m:=1 to SMessagesValue do begin

                         if ((@TargetQM.Pathes[c].StartPathMessage.Text)=(TargetPointers[m]))
                             and
                            ((@TargetQM.Pathes[c].StartPathMessage.Text)<>(TargetPointers[i]))
                              then
                          begin
                          EmptyPathes[m]:=q;
                       //   showmessage(' sw '+inttostr(q));
                          end;

                        end;


                      end;


                end;

           end;
        end;

   end;

   TBMessagesValue:=0;
   for i:=1 to SMessagesValue do begin

        if EmptyPathes[i]=0 then begin

          inc(TBMessagesValue);
          TrackBarIndexList[TBMessagesValue]:=i;

        end;

   end;

end;

procedure TtqmProject.MSGPathTextFix;
var i:integer;
    empty:WideString;
    source:WideString;
begin
      empty:='<<_E_m_p_t_y_>>';


      for i:=1 to TargetQM.PathesValue do begin

         source:=TargetQM.Pathes[i].StartPathMessage.Text;
         if StringSearchEC(source,empty) then

          TargetQM.Pathes[i].StartPathMessage.Text:=
           TargetQM.Pathes[strtoint(TrimEX(StringReplaceEC(source,empty,'')))].StartPathMessage.Text;
      end;
end;



function TtqmProject.GetNextNotEditedNumber(number:integer):integer;
label done;
var c,i,answer:integer;
begin
       answer:=0;
       c:=0;
       i:=TrackBarIndexList[number];

       while (c<SMessagesValue) do begin

             inc(i);
             if i>SMessagesValue then i:=1;

             if (
                (GetSourceByNumber(i)=GetTargetByNumber(i))
                 or
                (GetTargetByNumber(i)=M.Par_Get('MessageDeletedMSG'))
                )
                and
                (not NumberIsEmpty(i))
             then begin
                answer:=i;
               // showmessage(inttostr(EmptyPathes[i]));
                goto done;
             end;

                inc(c);
       end;
done:
       GetNextNotEditedNumber:=FindTrackBarIndex(answer);
end;

procedure TtqmProject.MSGSSave(var filename:string);
var i,c,q,m:integer;
    f:file of byte;
    s,e,empty,se,tempstr:WideString;

    ff,fe:char;
begin
      assign(f,filename);
      rewrite(f);
      ff:=char($FF);
      fe:=char($FE);
      s:=#13#10+'<<<_S_t_a_r_t_>>>';
      e:=#13#10+'<<<_E_n_d_>>>'+#13#10;
      empty:='<<_E_m_p_t_y_>>';
      se:=' <<</S>>>'+#13#10;;

      BlockWrite(f,ff,sizeof(ff));
      BlockWrite(f,fe,sizeof(fe));

      for i:=1 to SMessagesValue do begin

      if not StringSearchEC(TargetPointers[i]^,empty) then begin

        for c:=1 to length(s) do
         BlockWrite(f,s[c],sizeof(s[c]));


//ѕровер€ем, если это текст вопроса перехода то
        for q:=1 to TargetQM.PathesValue do begin
          if (@TargetQM.Pathes[q].StartPathMessage.Text)=(TargetPointers[i])
           then begin
           //»щем в переходах спорный переход дл€ него
                for c:=q+1 to TargetQM.PathesValue do begin

                  if (TargetQM.Pathes[c].FromLocation=TargetQM.Pathes[q].FromLocation)
                      and
                     (
                      trim(TargetQM.Pathes[c].StartPathMessage.Text)
                      =
                      trim(TargetQM.Pathes[q].StartPathMessage.Text)
                      )
                      then begin

                       tempstr:=' '+inttostr(q);
                       TargetQM.Pathes[c].StartPathMessage.Text:=empty+tempstr;


                       tempstr:=' '+inttostr(c);
                       for m:=1 to length(tempstr) do
                        BlockWrite(f,tempstr[m],sizeof(tempstr[m]));

                      end;


                end;

           end;
        end;
//
       for c:=1 to length(se) do
        BlockWrite(f,se[c],sizeof(se[c]));

        for c:=1 to length(TargetPointers[i]^) do
         BlockWrite(f,TargetPointers[i]^[c],sizeof(WideChar));

        for c:=1 to length(e) do
         BlockWrite(f,e[c],sizeof(e[c]));

      end; // if not empty
     end;
      CloseFile(f);
         //
end;

procedure TtqmProject.MSGSLoad(var filename:string);
label next;

var i,c,q,pathnum:integer;
    f:file of byte;
    s,se,e,tws,empty,tempstr:WideString;
    tw:WideChar;
    ff,fe,t:char;
begin
      assign(f,filename);
      reset(f);
      ff:=char($FF);
      fe:=char($FE);
      s:='<<<_S_t_a_r_t_>>>';
      e:='<<<_E_n_d_>>>';
      empty:='<<_E_m_p_t_y_>>';
      se:=' <<</S>>>';

      for i:=1 to TargetQM.PathesValue do TargetQM.Pathes[i].StartPathMessage.text:='';

      BlockRead(f,t,sizeof(t));
      if t<>ff then begin
                        ShowMessage('Error. This is not a Unicode Text Document');
                        exit;
      end;

      BlockRead(f,t,sizeof(t));
      if t<>fe then begin
                        ShowMessage('Error. This is not a Unicode Text Document');
                        exit;
      end;


      for i:=1 to SMessagesValue do begin

        tws:='';

        for c:=1 to TargetQM.PathesValue do begin

          if
             (TargetPointers[i]=@TargetQM.Pathes[c].StartPathMessage.text)
              and
             (StringSearchEC(TargetQM.Pathes[c].StartPathMessage.text,empty))

          then goto next;
        end;


        while not StringSearchEC(tws,s) do
               begin

                 BlockRead(f,tw,sizeof(WideChar));
                 tws:=tws+tw;
               end;

// —читываем список переходов, спорных данному, которые пометим как empty
        tws:='';
        while not StringSearchEC(tws,se)  do
               begin

                 BlockRead(f,tw,sizeof(WideChar));
                 tws:=tws+tw;
               end;
        tws:=trimEx(StringReplaceEC(tws,se,''));

        // «аполн€ем как empty
        c:=1;
        while c<=length(tws) do begin

         tempstr:='';
         while (tws[c]<>' ')and(c<=length(tws)) do begin
                                tempstr:=tempstr+tws[c];
                                inc(c);
         end;
         inc(c);
         tempstr:=trimEX(tempstr);

         for q:=1 to TargetQM.PathesValue do begin
          if (@TargetQM.Pathes[q].StartPathMessage.text)=TargetPointers[i] then pathnum:=q;
         end;
{         showmessage(tempstr);
         showmessage(inttostr(pathnum));
         showmessage(tws[c]);
 }

         TargetQM.Pathes[strtoint(tempstr)].StartPathMessage.text:=empty
                                                                   +' '
                                                                   +inttostr(pathnum);

        end;
//

        tws:='';
        while not StringSearchEC(tws,e)  do
               begin

                 BlockRead(f,tw,sizeof(WideChar));
                 tws:=tws+tw;
               end;

        TargetPointers[i]^:=trimEx(StringReplaceEC(tws,e,''));

next:
      end;

      CloseFile(f);
end;

procedure TtqmProject.MakeNewProject(sourcefilename:string);
begin
       SourceQM.Load(sourcefilename);
       TargetQM.CopyDataFrom(SourceQM);

       InitProjectData;
    //   for i:=1 to SMessagesValue do SetTargetByNumber(i,'');

//       if not IsSourceAndTargetCompatible then ShowMessage('Wow!');
       CurrentMessageNumber:=1;
end;

procedure TtqmProject.InitProjectData;
begin
        SourceQM.InitMessagePointers(SMessagesValue, SourceMessageTypes, SourcePointers);
        TargetQM.InitMessagePointers(TMessagesValue, TargetMessageTypes, TargetPointers);
        MSGSetEmptyPathes;

end;

procedure TtqmProject.ExportSource(filename:string);
begin
     SourceQM.Save(filename);
end;

procedure TtqmProject.ExportTarget(filename:string);
begin
     TargetQM.Save(filename);
end;

procedure TtqmProject.Load(var filename:string);
var f:file;
begin
        AssignFile(f,filename);
        reset(f,1);

        BlockRead(f,CurrentMessagenumber,sizeof(CurrentMessageNumber));
        BlockRead(f,SMessagesValue,sizeof(SMessagesValue));
        BlockRead(f,TMessagesValue,sizeof(TMessagesValue));

        SourceQM.Load(@f);
        TargetQM.Load(@f);

        InitProjectData;

        close(f);
end;

procedure TtqmProject.Save(var filename:string);
var f:file;
begin
        Assign(f,filename);
        rewrite(f,1);

        BlockWrite(f,CurrentMessageNumber,sizeof(CurrentMessageNumber));
        BlockWrite(f,SMessagesValue,sizeof(SMessagesValue));
        BlockWrite(f,TMessagesValue,sizeof(TMessagesValue));

        SourceQM.Save(@f);
        TargetQM.Save(@f);

        close(f);
end;

function TtqmProject.GetSourceByNumber(number:integer):WideString;
begin
    if number=0 then GetSourceByNumber:='' else
    GetSourceByNumber:=SourcePointers[number]^;
end;

function TtqmProject.GetTargetByNumber(number:integer):WideString;
begin
    if number=0 then GetTargetByNumber:='' else
    GetTargetByNumber:=TargetPointers[number]^;
end;

procedure TtqmProject.SetTargetByNumber(number:integer; txt:WideString);
var i:integer;
begin
    if number=0 then else begin
    TargetPointers[number]^:=txt;


     for i:=1 to SMessagesValue do begin

        if EmptyPathes[i]<>0 then begin


          TargetPointers[i]^:=TargetQM.Pathes[EmptyPathes[i]].StartPathMessage.Text;

        end;
     end;

    end;
end;


function TtqmProject.IsSourceAndTargetCompatible:boolean;
var i:integer;
    answer:boolean;
begin
     answer:=true;
     for i:=1 to SMessagesValue do

      if SourceMessageTypes[i]<>TargetMessageTypes[i] then
      begin
        answer:=false;
        break;
      end;

     if SMessagesValue<>TMessagesValue then answer:=false;

     IsSourceAndTargetCompatible:=answer;
end;

procedure TtqmProject.Clear;
begin
        CurrentMessagenumber:=0;
        SMessagesValue:=0;
        TMessagesValue:=0;
        SourceQM.Clear;
        TargetQM.Clear;
end;

constructor TtqmProject.Create;
begin
      SourceQM:=TGame.Create(@M);
      TargetQM:=TGame.Create(@M);
      Clear;
end;


end.
