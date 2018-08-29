unit untIniFiles;

interface
uses
  ExtActns,
  DateUtils,
  Windows,
  Forms,
  Dialogs,
  Messages,
  Registry,
  Controls,

  ExtCtrls,
  StdCtrls,
  classes,
  SysUtils,
  IniFiles ;

procedure IniYaz(Baslik:string;Pr: string; Vl: string);
Function IniOku(Baslik:string;Pr: string):string;
 var
  iniFileName:string='System.ini';
  {variables here}

implementation

procedure IniYaz(Baslik:string;Pr: string; Vl: string);
Var
INIDosya : TIniFile;
begin
 INIDosya := TIniFile.Create(ExtractFilePath(Application.EXEName)+iniFileName);
 INIDosya.WriteString(Baslik,Pr,Vl);
 INIDosya.Free;
end;

Function IniOku(Baslik:string;Pr: string):string;
Var
INIDosya : TIniFile;
begin
 INIDosya := TIniFile.Create(ExtractFilePath(Application.EXEName)+iniFileName);
 Result:=INIDosya.ReadString(Baslik,Pr,'');
 INIDosya.Free;
end;



end.
