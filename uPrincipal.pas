unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  // Exemplo Principio inversão de depedência
  iDispositivo = interface
    ['{21D375F9-F36C-4765-A5B6-346260C9E0B3}']
    procedure Ligar;
    procedure Desligar;
  end;

  TLampada = class(TInterfacedObject, iDispositivo)
    procedure Ligar;
    procedure Desligar;
  end;

  TVentilador = class(TInterfacedObject, iDispositivo)
    procedure Ligar;
    procedure Desligar;
  end;

  TBotao = class
    FDispositivo: iDispositivo;
    constructor Create(Dispositivo: iDispositivo);
    procedure Acionar;
  end;

  // Exemplo Principio aberto fechado
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
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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

{ TBotao }

procedure TBotao.Acionar;
begin
  FDispositivo.Ligar;
end;

constructor TBotao.Create(Dispositivo: iDispositivo);
begin
  FDispositivo := Dispositivo;
end;

{ TLampada }

procedure TLampada.Desligar;
begin
  // lâmpada desligada
end;

procedure TLampada.Ligar;
begin
  ShowMessage('Lâmpada ligada');
end;

{ TVentilador }

procedure TVentilador.Desligar;
begin

end;

procedure TVentilador.Ligar;
begin
  ShowMessage('Ventilador ligado');
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  TBotao.Create(TLampada.Create).Acionar;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  TBotao.Create(TVentilador.Create).Acionar;
end;

end.
