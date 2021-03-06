unit formPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, formBalanco;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    panelBotoes: TRectangle;
    panelTopo: TRectangle;
    Rectangle1: TRectangle;
    btnInicial: TButton;
    btnBalanco: TButton;
    btnInvestimentos: TButton;
    panelAcontece: TPanel;
    lblNomes: TLabel;
    procedure btnBalancoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

procedure TfrmPrincipal.btnBalancoClick(Sender: TObject);
begin
  frmBalanco := TfrmBalanco.Create(self);
  frmBalanco.Show;
  panelAcontece.AddObject( frmBalanco.Panel1 );
  btnBalanco.Enabled := False;
  lblNomes.Text := 'Balan?o'
end;

end.
