unit MessageText;

interface

uses EC_BlockPar;

const   maxtextpointers=2000;

        EditorParNameMSGType=1;
        GameParNameMSGType=2;
        StandartCriticalMSGType=3;
        OutsideParMSGType=4;
        SuccessGovMSGType=5;
        MissionGovMSGTYpe=6;
        LocationTextMSGType=7;
        PathQuestionMSGType=8;
        PathTextMSGType=9;
        CustomCriticalMSGTYpe=10;
        ParViewStringMSGType=11;


 Type PText=^file;
 type PWS=^WideString;
 type APWS=array [1..maxtextpointers] of PWS;
 type AInt=array [1..maxtextpointers] of integer;


 var   M:TBlockParEC;

implementation

end.
 