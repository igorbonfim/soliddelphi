unit uExemploISP;

interface

{
  Principio da segregação de interfaces - Criar interface menores para evitar que as classes implementem métodos
  que não irão ser utilizados e utilize somente o que é relevante para elas.
}

type
  iFutebol = interface
    ['{9C0AD3DF-F9EB-4ED1-B919-621A0EC3726C}']
    procedure TreinarTime;
    procedure OrganizarTatica;
    procedure Jogam;
  end;

  iJogador = interface
    ['{3A7FE697-C8CF-4188-B384-D549DA1F9C72}']
    procedure Jogar;
  end;

  iComissaoTecnica = interface
    ['{3A1932F1-14EA-4BE2-91E9-454AFFC92FE9}']
    procedure TreinarTime(Tatica: String);
  end;

  TComissaoTecnica = class(TInterfacedObject, iFutebol)
    procedure TreinarTime;
    procedure OrganizarTatica;
    procedure Jogam;
  end;

  TTreinador = class(TInterfacedObject, iFutebol)
    procedure TreinarTime;
    procedure OrganizarTatica;
    procedure Jogam;
  end;

  TJogadores = class(TInterfacedObject, iFutebol)
    procedure TreinarTime;
    procedure OrganizarTatica;
    procedure Jogam;
  end;

implementation

{ TComissaoTecnica }

procedure TComissaoTecnica.Jogam;
begin

end;

procedure TComissaoTecnica.OrganizarTatica;
begin

end;

procedure TComissaoTecnica.TreinarTime;
begin

end;

{ TTreinador }

procedure TTreinador.Jogam;
begin

end;

procedure TTreinador.OrganizarTatica;
begin

end;

procedure TTreinador.TreinarTime;
begin

end;

{ TJogadores }

procedure TJogadores.Jogam;
begin

end;

procedure TJogadores.OrganizarTatica;
begin

end;

procedure TJogadores.TreinarTime;
begin

end;

end.
