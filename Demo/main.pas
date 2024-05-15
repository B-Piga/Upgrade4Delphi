unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, uAtualizador, Enum,
  FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Stan.Intf, FireDAC.Comp.UI;

type
  TForm1 = class(TForm)
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.SpeedButton1Click(Sender: TObject);
var
  Atualizar : TAtualizador;
  Resultado : String;
begin
  Atualizar := TAtualizador.Create(False, True, True, False, fpFirebird);
  Atualizar.DadosFTP('delivery@forca.bvxtecnologia.com.br',
                     '@BVX221912',
                     'ftp.bvxtecnologia.com.br',
                     21);
  Atualizar.DadosDB('D:\Sistemas\Atualizar\BANCOTESTE.FDB',
                    'SYSDBA',
                    'masterkey',
                    'localhost',
                    '3050');
  Atualizar.Execute;
  Atualizar.Destroy;
end;

end.
