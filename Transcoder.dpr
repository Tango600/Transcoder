program Transcoder;
{$IFDEF FPC}
{$MODE Delphi}
//{$CODEPAGE cp1251}
{$GOTO OFF}
{$ENDIF}

{$APPTYPE CONSOLE}

uses
  SysUtils, Classes, uDCLStringsRes, uStringParams;


var
  Path, S, tfn, sfn:string;
  T, TOut:Text;
  DecodeType:TTranscodeDataType;

begin
  If ParamCount>0 then
  Begin
    DecodeType:=tdtDOS;

    tfn:=ChangeFileExt(ExtractFileName(ParamStr(1)), '');
    sfn:=ChangeFileExt(ExtractFileName(ParamStr(2)), '');
    LoadTranscodeFile(DecodeType, ParamStr(1), 1049);
    AssignFile(T, ParamStr(2));
    ReSet(T);
    AssignFile(TOut, ExtractFilePath(ParamStr(2))+sfn+'_'+tfn+ExtractFileExt(ParamStr(2)));
    ReWrite(TOut);

    While not EOF(T) do
    begin
      ReadLn(T, S);
      S:=Transcode(DecodeType, S);
      WriteLn(TOut, S);
    end;
    CloseFile(TOut);
    CloseFile(T);
  End
  Else
  Begin
    WriteLn(ExtractFileName(ParamStr(0))+' TranscodeTable.ext SourceFile.txt');
    ReadLn;
  End;
end.
