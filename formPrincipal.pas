unit formPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, formBalanco, FMX.Edit,
  FMX.ListBox;

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
    cmbPeriodo: TComboBox;
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
  panelAcontece.AddObject( frmBalanco.Panel1 );
  btnBalanco.Enabled := False;
  lblNomes.Text      := 'Balanço';
  cmbPeriodo.Visible := True;
end;

end.
