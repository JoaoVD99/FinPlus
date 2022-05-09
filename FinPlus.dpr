program FinPlus;

uses
  System.StartUpCopy,
  FMX.Forms,
  formPrincipal in 'compilados\formPrincipal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
