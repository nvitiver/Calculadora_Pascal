unit trabalho;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    BtnConversaoDB: TButton; //Botão Decimal > Binário
    BtnConversaoBD: TButton; //Botão inário > Decimal
    BtnSoma: TButton;        //Botão Soma binários
    BtnCalculadora: TButton;        //Botão Calculadora Lógica
    BtnVoltar: TButton;
    BtnCalcular: TButton;
    TextoUm: TEdit;
    TextoDois: TEdit;
    LabelSubTitulo: TLabel;
    LabelSubTitulo2: TLabel;
    LabelTitulo: TLabel;
    procedure BtnCalculadoraClick(Sender: TObject);
    procedure BtnConversaoDBClick(Sender: TObject);
    procedure BtnConversaoBDClick(Sender: TObject);
    procedure BtnSomaClick(Sender: TObject);
    procedure BtnVoltarClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  a : integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure someBotoes();
begin
  //Partes que mostram
  Form1.LabelTitulo.Visible := true;
  Form1.LabelSubTitulo.Visible := true;
  Form1.BtnCalcular.Visible := true;
  Form1.TextoUm.Visible := true;

  //Partes que escondem
  Form1.BtnConversaoBD.Visible := false;
  Form1.BtnConversaoDB.Visible := false;
  Form1.BtnSoma.Visible := false;
  Form1.BtnCalculadora.Visible := false;

  //Tamanho tela
  Form1.Width := 450;
  Form1.Height := 250;


end;



//Botão Conversão Decimal para Binário
procedure TForm1.BtnConversaoDBClick(Sender: TObject);
begin
  //Chama função dos botões do menu
  someBotoes;

  //Exibições na tela
  LabelTitulo.Caption := 'Conversão: Decimal > Binário';
  LabelSubTitulo.Caption := 'Digite o numero em decimal entre 0 e 255:';

end;


//Botão Conversão Binário para Decimal
procedure TForm1.BtnConversaoBDClick(Sender: TObject);
begin
  //Chama função dos botões do menu
  someBotoes;

  //Exibições na tela
  LabelTitulo.Caption := 'Conversão: Binário > Decimal';
  LabelSubTitulo.Caption := 'Digite o numero em binario:';
end;

//Botão Soma de Binários
procedure TForm1.BtnSomaClick(Sender: TObject);
begin
  //Chama função dos botões do menu
  someBotoes;

  //Exibições na tela
  LabelTitulo.Caption := 'Soma de Binários';
  LabelSubTitulo.Caption := 'Digite o primeiro binario:';
  LabelSubTitulo2.Caption := 'Digite o segundo binario:';
  TextoDois.Visible := true;
  LabelSubTitulo2.Visible := true;

end;

//Botão Calculadora Lógica
procedure TForm1.BtnCalculadoraClick(Sender: TObject);
begin
  //Chama função dos botões do menu
  someBotoes;

  //Exibições na tela
  LabelTitulo.Caption := 'Calculadora Lógica';
  LabelSubTitulo.Caption := 'Digite o primeiro binario:';
  LabelSubTitulo2.Caption := 'Digite o segundo binario:';
  TextoDois.Visible := true;
  LabelSubTitulo2.Visible := true;
end;

//Botão Voltar
procedure TForm1.BtnVoltarClick(Sender: TObject);
begin
  //Partes que mostram
  BtnConversaoBD.Visible := true;
  BtnConversaoDB.Visible := true;
  BtnSoma.Visible := true;
  BtnCalculadora.Visible := true;

  //Parte que escondem
  LabelSubTitulo.Visible := false;
  LabelTitulo.Visible := false;
  BtnCalcular.Visible := false;
  Form1.TextoUm.Visible := false;
  Form1.TextoDois.Visible := false;

  //Tamanho da tela
  Form1.Width := 225;
  Form1.Height := 170;
end;

end.

