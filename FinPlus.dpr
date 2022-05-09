program FinPlus;

uses
  System.StartUpCopy,
  FMX.Forms,
  formPrincipal in 'compilados\formPrincipal.pas' {frmPrincipal},
  formInicial in 'compilados\formInicial.pas' {Form1},
  formBalanco in 'compilados\formBalanco.pas' {frmBalanco};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmBalanco, frmBalanco);
  Application.Run;
end.
