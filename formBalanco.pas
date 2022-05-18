unit formBalanco;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, FMX.Edit, FMX.Layouts,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.DateTimeCtrls;

type
  TfrmBalanco = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    V: TPanel;
    panelDespesas: TPanel;
    Rectangle1: TRectangle;
    Label1: TLabel;
    Rectangle2: TRectangle;
    Label2: TLabel;
    edtGanhoDeesc: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edtGanhoValor: TEdit;
    Label5: TLabel;
    edtGanhoLocal: TEdit;
    edtGanhoData: TDateEdit;
    Label6: TLabel;
    btnAdicionaGanho: TButton;
    edtDespesaDesc: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    edtDespesaValor: TEdit;
    Label9: TLabel;
    edtDespesaLocal: TEdit;
    edtDespesaData: TDateEdit;
    Label10: TLabel;
    Button1: TButton;
    cbObrigatorio: TCheckBox;
    Panel3: TPanel;
    Panel4: TPanel;
    Rectangle3: TRectangle;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Panel5: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Rectangle4: TRectangle;
    Layout1: TLayout;
    listBalanco: TListView;
    procedure FormShow(Sender: TObject);
  private
    procedure addLancamento(id_lancamento, descricao, data: String;
      valor: double);
  public
    { Public declarations }
  end;

var
  frmBalanco: TfrmBalanco;

implementation

{$R *.fmx}
{$R *.Surface.fmx MSWINDOWS}

  procedure TfrmBalanco.FormShow(Sender: TObject);
  begin
    addLancamento( '01', 'Compra de passagem', '15/04', -45 );
  end;

  procedure TfrmBalanco.addLancamento( id_lancamento, descricao, data : String; valor: double );
  begin
    ith listBalanco.Items.Add do
      begin
        Height := 80;
      end;
  end;

end.