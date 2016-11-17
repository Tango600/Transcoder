unit uDCLMultiLang;

interface

uses
  SysUtils, Classes,
  uDCLConst;

type
  TLangIDName=record
    ID:Integer;
    LangNameISO639, ShortName:string;
  end;
  TLangID=LongWord;
  TLangName=String;

const
  LangIDsToName:Array[1..1] of TLangIDName=(
  (ID:1049; LangNameISO639:'RUS'; ShortName:'RU')
  );


function LangIDToString(LangID:TLangID):String;


implementation

function LangIDToString(LangID:TLangID):String;
var
  i:Integer;
begin
  Result:=IntToStr(LangID);
  For i:=1 to Length(LangIDsToName) do
  Begin
    If LangIDsToName[i].ID=LangID then
    Begin
      Result:=LangIDsToName[i].LangNameISO639;
      Break;
    End;
  End;
end;

end.
