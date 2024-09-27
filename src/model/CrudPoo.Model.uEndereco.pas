unit CrudPoo.Model.uEndereco;

interface

type
  TEndereco = class
  private
    FLogradouro: string;
    FId: Integer;
    FIdPessoa: Integer;
  public
    property Id: Integer read FId write FId;
    property Logradouro: string read FLogradouro write FLogradouro;
    property IdPessoa: Integer read FIdPessoa write FIdPessoa;
  end;

implementation

end.
