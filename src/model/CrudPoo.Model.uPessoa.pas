unit CrudPoo.Model.uPessoa;

interface

uses
  System.Generics.Collections,
  CrudPoo.Model.uEndereco;

type
  TPessoa = class
  private
    FId: Integer;
    FNome: string;
    FEndereco: TList<TEndereco>;
  public
    constructor Create;
    destructor Destroy; override;

    property Id: Integer
      read FId
      write FId;

    property Nome: string
      read FNome
      write FNome;

    property Endereco: TList<TEndereco>
      read FEndereco
      write FEndereco;
  end;

implementation

{ TPessoa }

constructor TPessoa.Create;
begin
  FEndereco := TList<TEndereco>.Create;
end;

destructor TPessoa.Destroy;
begin
  FEndereco.Free;
  inherited;
end;

end.
