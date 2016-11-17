unit uDCLConst;
{$I DefineType.pas}

interface

uses
  uStringParams
{$IFDEF FPC}
  LConvEncoding
{$ENDIF};

const
  Version='10.0.23.285';


  DefaultSourceEncoding='cp1251';
{$IFDEF DELPHI}
  EncodingUTF8='utf8';
  UTF8BOM=#$EF#$BB#$BF;
  UTF16LEBOM=#$FF#$FE;
  DefaultInterfaceEncoding='cp1251';
{$ENDIF}
{$IFDEF FPC}
  DefaultInterfaceEncoding=EncodingUTF8;
{$ENDIF}

  FloatDelimiterFrom=',';
  FloatDelimiterTo='.';

  StopSimbols=DefaultParamsSeparator+DefaultValuesSeparator+DefaultParamDelim+'( )[],=\/+-^<>.%:;&$#@*'#39#10#13;


Type
  TIsDigitType=(idString, idDigit, idFloatDigit, idHex, idColor, idDateTime, idUserLevel);

const
  DefaultLanguage='RUS';
  DefaultLanguageID=1049;


implementation


end.
