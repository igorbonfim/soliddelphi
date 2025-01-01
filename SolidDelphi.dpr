program SolidDelphi;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form2},
  uExemploISP in 'uExemploISP.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
