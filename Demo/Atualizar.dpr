program Atualizar;

uses
  Vcl.Forms,
  main in 'main.pas' {Form1},
  Enum in 'Enum.pas',
  uAtualizador in 'uAtualizador.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
