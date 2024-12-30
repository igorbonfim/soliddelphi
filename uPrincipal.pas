unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type

  iArquivo = interface
    ['{8B6348F6-4F50-4629-A116-32A3C3F24F1B}']
    procedure GerarArquivo;
  end;

  TArquivoTXT = class(TInterfacedObject, iArquivo)
    procedure GerarArquivo;
  end;

  TArquivoWord = class(TArquivoTXT)
    procedure GerarArquivo;
  end;

  TArquivoPDF = class(TArquivoTXT)
    procedure GerarArquivo;
  end;

  TArquivoXML = class(TArquivoTXT)
    procedure GerarArquivo;
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
  Arquivo: iArquivo;
begin
  Arquivo := TArquivoWord.Create;
  Arquivo.GerarArquivo;
end;

{ TArquivoTXT }

procedure TArquivoTXT.GerarArquivo;
begin
  // gerando arquivo TXT...
end;

end.
