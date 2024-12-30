unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type

  TArquivo = class
    procedure GerarArquivo; virtual; abstract;
  end;

  TArquivoWord = class(TArquivo)
    procedure GerarArquivo; override;
  end;

  TArquivoPDF = class(TArquivo)
    procedure GerarArquivo; override;
  end;

  TArquivoXML = class(TArquivo)
    procedure GerarArquivo; override;
  end;

  TArquivoTXT = class(TArquivo)
    procedure GerarArquivo; override;
  end;

  TForm2 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

{ TArquivoWord }

procedure TArquivoWord.GerarArquivo;
begin
  // gerando arquivo Word...
end;

{ TArquivoPDF }

procedure TArquivoPDF.GerarArquivo;
begin
  // gerando arquivo PDF...
end;

{ TArquivoXML }

procedure TArquivoXML.GerarArquivo;
begin
  // gerando arquivo XML...
end;

procedure TForm2.Button1Click(Sender: TObject);
var
  Arquivo: TArquivoWord;
begin
  Arquivo := TArquivoWord.Create;
  try
    Arquivo.GerarArquivo;
  finally
    Arquivo.Free;
  end;
end;

{ TArquivoTXT }

procedure TArquivoTXT.GerarArquivo;
begin
  // gerando arquivo TXT...
end;

end.
