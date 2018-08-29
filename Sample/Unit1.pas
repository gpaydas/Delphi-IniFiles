unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DateTimePicker1: TDateTimePicker;
    CheckBox1: TCheckBox;
    Label4: TLabel;
    ComboBox1: TComboBox;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
  uses untIniFiles;
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
baslik:string;
begin
 baslik:='Deger';
 untIniFiles.iniFileName:='Ayar.ini';
 IniYaz(baslik,'string',Edit1.Text);
 IniYaz(baslik,'date',DateTimeToStr(DateTimePicker1.DateTime));
 IniYaz(baslik,'bit',CheckBox1.Checked.ToString());
 IniYaz(baslik,'integer',ComboBox1.ItemIndex.ToString());

 Memo1.Clear;
 Memo1.Lines.Add(IniOku(baslik,'string'));
 Memo1.Lines.Add(IniOku(baslik,'date'));
 Memo1.Lines.Add(IniOku(baslik,'bit'));
 Memo1.Lines.Add(IniOku(baslik,'integer'));


end;

procedure TForm1.FormShow(Sender: TObject);
var
baslik:string;
begin
 baslik:='Deger';
 untIniFiles.iniFileName:='Ayar.ini';

 Edit1.Text:=IniOku(baslik,'string');
 DateTimePicker1.Date:=StrToDateDef(IniOku(baslik,'date'),Now);
 CheckBox1.Checked:=StrToBoolDef(IniOku(baslik,'bit'),False);
 ComboBox1.ItemIndex:=StrToIntDef(IniOku(baslik,'integer'),0);

 Memo1.Clear;
 Memo1.Lines.Add(IniOku(baslik,'string'));
 Memo1.Lines.Add(IniOku(baslik,'date'));
 Memo1.Lines.Add(IniOku(baslik,'bit'));
 Memo1.Lines.Add(IniOku(baslik,'integer'));
end;

end.
