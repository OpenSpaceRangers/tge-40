unit ThreadCalc;

interface

uses Windows,Classes,
     GI_SimpleImage,
     EC_Struct,EC_BlockPar,EC_Thread,
     aGalaxy;

type
TThreadCalc = class(TThreadEC)
    protected
    public
        FKind:integer; // Тип расчета
    public
        procedure Execute; override;
end;

procedure ThreadCalc_StartR1; // Запустить расчет №1(все звезды кроме нашей)
procedure ThreadCalc_StartR2; // Запустить расчет №2(наша звезда)
function ThreadCalc_TestRun:boolean; // Проверить на завершенность
procedure ThreadCalc_WaitEndCalc; // Ждать завершение расчета

implementation

uses Globals,aShip,aCalc,aRanger,aConst,fStarMap,GR_Main;

procedure ThreadCalc_StartR1;
begin
    GThreadCalc.FKind:=1;
    GThreadCalc.Run;
end;

procedure ThreadCalc_StartR2;
begin
    GThreadCalc.FKind:=2;
    GThreadCalc.Run;
end;

function ThreadCalc_TestRun:boolean;
begin
    Result:=GThreadCalc.IsRun;
end;

procedure ThreadCalc_WaitEndCalc;
begin
    if GThreadCalc.IsRun then GThreadCalc.WaitEnd;
end;

procedure TThreadCalc.Execute;
begin
    if FKind=1 then begin
//CTG.IStart('Calc 1');
        CP_State:=1;
        try
            CfgDebugLoad;
            Galaxy.NextDay;
        except
            SFT('ThreadCalc exception 1');
        end;
        CP_State:=2;
//CTG.IEnd('Calc 2');
    end else begin
//CTG.IStart('Calc 2');
        CP_State:=3;
        try
            CfgDebugLoad;
            GFilm.Clear;
//        GCurStar.NextDay(true{Player.FCurPlanet<>nil});
            GCurStar.NextDay(Player.InNormalSpace or
                             ((Player.FOrder=t_TakeOff) and (Player.FCurPlanet<>nil)) or
                             ((Player.InHyperSpace) and (Player.FOrderData<=1))
                             );
            Galaxy.ShipChangeStar;
            if GLogShip then Galaxy.MdbStat;
        except
            SFT('ThreadCalc exception 2');
        end;
        CP_State:=4;
//CTG.IEnd('Calc 2');
    end;
end;

end.
