unit formBalanco;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, FMX.Edit, FMX.Layouts,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView;

type
  TfrmBalanco = class(TForm)
    Panel1: TPanel;
    Layout2: TLayout;
    RoundRect1: TRoundRect;
    Edit1: TEdit;
    Label2: TLabel;
    StyleBook1: TStyleBook;
    RREntrada: TRoundRect;
    Label3: TLabel;
    RRSaida: TRoundRect;
    Label4: TLabel;
    Rectangle1: TRectangle;
    Layout1: TLayout;
    Label1: TLabel;
    Label5: TLabel;
    Layout3: TLayout;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    listLancamento: TListView;
    Rectangle2: TRectangle;
    cbObrigatorio: TCheckBox;
    procedure RRSaidaMouseEnter(Sender: TObject);
    procedure RRSaidaMouseLeave(Sender: TObject);
    procedure RREntradaMouseLeave(Sender: TObject);
    procedure RREntradaMouseEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure AddLancamento(id_lancamento, descricao, categoria: String; dt: TDateTime; valor: double );
  public
    { Public declarations }
  end;

var
  frmBalanco: TfrmBalanco;

implementation

{$R *.fmx}
{$R *.Surface.fmx MSWINDOWS}

procedure TfrmBalanco.FormShow(Sender: TObject);
var index : integer;
begin
  AddLancamento( '01', 'Compra de passagem', 'Transporte', Date, -45 );
end;

procedure TfrmBalanco.RREntradaMouseEnter(Sender: TObject);
begin
   RREntrada.Fill.Color := TAlphaColorRec.Lightgreen;
end;

procedure TfrmBalanco.RREntradaMouseLeave(Sender: TObject);
begin
  RREntrada.Fill.Color := TAlphaColorRec.Null;
end;

procedure TfrmBalanco.RRSaidaMouseEnter(Sender: TObject);
begin
  RRSaida.Fill.Color := TAlphaColorRec.Mediumvioletred;
end;

procedure TfrmBalanco.RRSaidaMouseLeave(Sender: TObject);
begin
  RRSaida.Fill.Color := TAlphaColorRec.Null;
end;

procedure TfrmBalanco.AddLancamento(id_lancamento, descricao, categoria : String; dt: TDateTime; valor: double );
var txt : TListItemText;
begin
  with listLancamento.Items.Add do
  begin
    txt      :=  TListItemText(  Objects.FindDrawable( 'txtDescricao' ) );
    txt.Text := descricao;
    TListItemText( Objects.FindDrawable( 'txtObservacao' ) ).Text := categoria;
    TListItemText( Objects.FindDrawable( 'txtValor' ) ).Text      := FormatFloat( '#,##0.00', valor );
    TListItemText( Objects.FindDrawable( 'txtData' ) ).Text       := FormatDateTime('dd/mm', dt);
  end;

end;

end.
