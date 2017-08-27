unit Diapasao;

{$MODE Delphi}

interface

uses
  LCLIntf, LCLType, LMessages, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Windows;
type
  TMain = class(TForm)
    cb_notas: TComboBox;
    Label1: TLabel;
    cb_tempo: TComboBox;
    btn_tocar: TBitBtn;
    cb_frequencia: TComboBox;
    lbl_nota: TLabel;
    lbl_frequencia: TLabel;
    lbl_tempo: TLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    cb_tempo_nova_freq: TComboBox;
    edit_add_freq: TEdit;
    btn_gerar_freq: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure btn_tocarClick(Sender: TObject);
    procedure cb_notasChange(Sender: TObject);
    procedure btn_gerar_freqClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

{$R *.lfm}


procedure TMain.btn_tocarClick(Sender: TObject);
var item, tempo, item_frequencia : string;
var aux_tempo : Integer;
begin
   item := cb_notas.Items[cb_notas.IteMIndex];
   item_frequencia := cb_frequencia.Items[cb_frequencia.IteMIndex];
   tempo := cb_tempo.Items[cb_tempo.IteMIndex];
   aux_tempo := StrToInt(tempo);
   if(item = 'LÁ') and (item_frequencia = '27') then  //LÁ IMPLEMENTADO - SÓ FALTA ARRUMAR AS FREQUÊNCIAS
   begin
     windows.Beep(27, aux_tempo);
   end
   else if(item = 'LÁ') and (item_frequencia = '55') then
   begin
     windows.Beep(55, aux_tempo);
   end
   else if(item = 'LÁ') and (item_frequencia = '110') then
   begin
     windows.Beep(110, aux_tempo);
   end
   else if(item = 'LÁ') and (item_frequencia = '220') then
   begin
     windows.Beep(220, aux_tempo);
   end
   else if(item = 'LÁ') and (item_frequencia = '440') then
   begin
     windows.Beep(440, aux_tempo);
   end
   else if(item = 'LÁ') and (item_frequencia = '880') then
   begin
     windows.Beep(880, aux_tempo);
   end
   else if(item = 'LÁ') and (item_frequencia = '1760') then
   begin
     windows.Beep(1760, aux_tempo);
   end
   else if(item = 'LÁ') and (item_frequencia = '3520') then
   begin
     windows.Beep(3520, aux_tempo);
   end
   else if(item = 'LÁ') and (item_frequencia = '7040') then
   begin
     windows.Beep(7040, aux_tempo);
   end
   else if(item = 'LÁ') and (item_frequencia = '14080') then
   begin
     windows.Beep(14080, aux_tempo);
   end


   else if(item = 'LÁ # - SI b') and (item_frequencia = '29') then   //LÁ # - SI b IMPLEMENTADO - SÓ FALTA ARRUMAR AS FREQUÊNCIAS
   begin
     windows.Beep(29, aux_tempo);
   end
   else if(item = 'LÁ # - SI b') and (item_frequencia = '58') then
   begin
     windows.Beep(58, aux_tempo);
   end
   else if(item = 'LÁ # - SI b') and (item_frequencia = '116') then
   begin
     windows.Beep(116, aux_tempo);
   end
   else if(item = 'LÁ # - SI b') and (item_frequencia = '232') then
   begin
     windows.Beep(232, aux_tempo);
   end
   else if(item = 'LÁ # - SI b') and (item_frequencia = '464') then
   begin
     windows.Beep(464, aux_tempo);
   end
   else if(item = 'LÁ # - SI b') and (item_frequencia = '928') then
   begin
     windows.Beep(928, aux_tempo);
   end
   else if(item = 'LÁ # - SI b') and (item_frequencia = '1856') then
   begin
     windows.Beep(1856, aux_tempo);
   end
   else if(item = 'LÁ # - SI b') and (item_frequencia = '3712') then
   begin
     windows.Beep(3712, aux_tempo);
   end
   else if(item = 'LÁ # - SI b') and (item_frequencia = '7424') then
   begin
     windows.Beep(7424, aux_tempo);
   end
   else if(item = 'LÁ # - SI b') and (item_frequencia = '14848') then
   begin
     windows.Beep(14848, aux_tempo);
   end


   else if(item = 'SI') and (item_frequencia = '30') then  //SI IMPLEMENTADO - SÓ FALTA ARRUMAR AS FREQUÊNCIAS
   begin
     windows.Beep(30, aux_tempo);
   end
   else if(item = 'SI') and (item_frequencia = '61') then
   begin
     windows.Beep(61, aux_tempo);
   end
   else if(item = 'SI') and (item_frequencia = '122') then
   begin
     windows.Beep(122, aux_tempo);
   end
   else if(item = 'SI') and (item_frequencia = '244') then
   begin
     windows.Beep(244, aux_tempo);
   end
   else if(item = 'SI') and (item_frequencia = '488') then
   begin
     windows.Beep(488, aux_tempo);
   end
   else if(item = 'SI') and (item_frequencia = '976') then
   begin
     windows.Beep(976, aux_tempo);
   end
   else if(item = 'SI') and (item_frequencia = '1952') then
   begin
     windows.Beep(1952, aux_tempo);
   end
   else if(item = 'SI') and (item_frequencia = '3904') then
   begin
     windows.Beep(3904, aux_tempo);
   end
   else if(item = 'SI') and (item_frequencia = '7808') then
   begin
     windows.Beep(7808, aux_tempo);
   end
   else if(item = 'SI') and (item_frequencia = '15616') then
   begin
     windows.Beep(15616, aux_tempo);
   end



   else if(item = 'DÓ') and (item_frequencia = '32') then  //DÓ IMPLEMENTADO - SÓ FALTA ARRUMAR AS FREQUÊNCIAS
   begin
     windows.Beep(32, aux_tempo);
  end
  else if(item = 'DÓ') and (item_frequencia = '65') then
   begin
     windows.Beep(65, aux_tempo);
  end
  else if(item = 'DÓ') and (item_frequencia = '130') then
   begin
     windows.Beep(130, aux_tempo);
  end
  else if(item = 'DÓ') and (item_frequencia = '260') then
   begin
     windows.Beep(260, aux_tempo);
  end
  else if(item = 'DÓ') and (item_frequencia = '520') then
   begin
     windows.Beep(520, aux_tempo);
  end
  else if(item = 'DÓ') and (item_frequencia = '1040') then
   begin
     windows.Beep(1040, aux_tempo);
  end
  else if(item = 'DÓ') and (item_frequencia = '2080') then
   begin
     windows.Beep(2080, aux_tempo);
  end
  else if(item = 'DÓ') and (item_frequencia = '4160') then
   begin
     windows.Beep(4160, aux_tempo);
  end
  else if(item = 'DÓ') and (item_frequencia = '8320') then
   begin
     windows.Beep(8320, aux_tempo);
  end
  else if(item = 'DÓ') and (item_frequencia = '16640') then
   begin
     windows.Beep(16640, aux_tempo);
  end

   else if(item = 'DÓ # - RÉ b') and (item_frequencia = '34') then     //DÓ # - RÉ b IMPLEMENTADO - SÓ FALTA ARRUMAR AS FREQUÊNCIAS
   begin
     windows.Beep(34, aux_tempo);
   end
   else if(item = 'DÓ # - RÉ b') and (item_frequencia = '69') then
   begin
     windows.Beep(69, aux_tempo);
   end
   else if(item = 'DÓ # - RÉ b') and (item_frequencia = '138') then
   begin
     windows.Beep(138, aux_tempo);
   end
   else if(item = 'DÓ # - RÉ b') and (item_frequencia = '276') then
   begin
     windows.Beep(276, aux_tempo);
   end
   else if(item = 'DÓ # - RÉ b') and (item_frequencia = '552') then
   begin
     windows.Beep(552, aux_tempo);
   end
   else if(item = 'DÓ # - RÉ b') and (item_frequencia = '1104') then
   begin
     windows.Beep(1104, aux_tempo);
   end
   else if(item = 'DÓ # - RÉ b') and (item_frequencia = '2208') then
   begin
     windows.Beep(2208, aux_tempo);
   end
   else if(item = 'DÓ # - RÉ b') and (item_frequencia = '4416') then
   begin
     windows.Beep(4416, aux_tempo);
   end
   else if(item = 'DÓ # - RÉ b') and (item_frequencia = '8832') then
   begin
     windows.Beep(8832, aux_tempo);
   end
   else if(item = 'DÓ # - RÉ b') and (item_frequencia = '17664') then
   begin
     windows.Beep(17664, aux_tempo);
   end


   else if(item = 'RÉ') and (item_frequencia = '36') then //RÉ IMPLEMENTADO - SÓ FALTA ARRUMAR AS FREQUÊNCIAS
   begin
     windows.Beep(36, aux_tempo);
   end
   else if(item = 'RÉ') and (item_frequencia = '73') then
   begin
     windows.Beep(73, aux_tempo);
   end
   else if(item = 'RÉ') and (item_frequencia = '146') then
   begin
     windows.Beep(146, aux_tempo);
   end
   else if(item = 'RÉ') and (item_frequencia = '292') then
   begin
     windows.Beep(292, aux_tempo);
   end
   else if(item = 'RÉ') and (item_frequencia = '584') then
   begin
     windows.Beep(584, aux_tempo);
   end
   else if(item = 'RÉ') and (item_frequencia = '1168') then
   begin
     windows.Beep(1168, aux_tempo);
   end
   else if(item = 'RÉ') and (item_frequencia = '2336') then
   begin
     windows.Beep(2336, aux_tempo);
   end
   else if(item = 'RÉ') and (item_frequencia = '4672') then
   begin
     windows.Beep(4672, aux_tempo);
   end
   else if(item = 'RÉ') and (item_frequencia = '9344') then
   begin
     windows.Beep(9344, aux_tempo);
   end
   else if(item = 'RÉ') and (item_frequencia = '18688') then
   begin
     windows.Beep(18688, aux_tempo);
   end


   else if(item = 'RÉ # - MI b') and (item_frequencia = '38') then   //RÉ # - MI b IMPLEMENTADO - SÓ FALTA ARRUMAR AS FREQUÊNCIAS
   begin
     windows.Beep(38, aux_tempo);
   end
   else if(item = 'RÉ # - MI b') and (item_frequencia = '77') then
   begin
     windows.Beep(77, aux_tempo);
   end
   else if(item = 'RÉ # - MI b') and (item_frequencia = '154') then
   begin
     windows.Beep(154, aux_tempo);
   end
   else if(item = 'RÉ # - MI b') and (item_frequencia = '308') then
   begin
     windows.Beep(308, aux_tempo);
   end
   else if(item = 'RÉ # - MI b') and (item_frequencia = '616') then
   begin
     windows.Beep(616, aux_tempo);
   end
   else if(item = 'RÉ # - MI b') and (item_frequencia = '1232') then
   begin
     windows.Beep(1232, aux_tempo);
   end
   else if(item = 'RÉ # - MI b') and (item_frequencia = '2464') then
   begin
     windows.Beep(2464, aux_tempo);
   end
   else if(item = 'RÉ # - MI b') and (item_frequencia = '4928') then
   begin
     windows.Beep(4928, aux_tempo);
   end
   else if(item = 'RÉ # - MI b') and (item_frequencia = '9856') then
   begin
     windows.Beep(9856, aux_tempo);
   end
   else if(item = 'RÉ # - MI b') and (item_frequencia = '19712') then
   begin
     windows.Beep(19712, aux_tempo);
   end



   else if(item = 'MI') and (item_frequencia = '41') then //MI IMPLEMENTADO - SÓ FALTA ARRUMAR AS FREQUÊNCIAS
   begin
     windows.Beep(41, aux_tempo);
   end
   else if(item = 'MI') and (item_frequencia = '82') then
   begin
     windows.Beep(82, aux_tempo);
   end
   else if(item = 'MI') and (item_frequencia = '164') then
   begin
     windows.Beep(164, aux_tempo);
   end
   else if(item = 'MI') and (item_frequencia = '328') then
   begin
     windows.Beep(328, aux_tempo);
   end
   else if(item = 'MI') and (item_frequencia = '656') then
   begin
     windows.Beep(656, aux_tempo);
   end
   else if(item = 'MI') and (item_frequencia = '1312') then
   begin
     windows.Beep(1312, aux_tempo);
   end
   else if(item = 'MI') and (item_frequencia = '2624') then
   begin
     windows.Beep(2624, aux_tempo);
   end
   else if(item = 'MI') and (item_frequencia = '5248') then
   begin
     windows.Beep(5248, aux_tempo);
   end
   else if(item = 'MI') and (item_frequencia = '10496') then
   begin
     windows.Beep(10496, aux_tempo);
   end
   else if(item = 'MI') and (item_frequencia = '20992') then
   begin
     windows.Beep(20992, aux_tempo);
   end



   else if(item = 'FÁ') and (item_frequencia = '43') then  //FÁ IMPLEMENTADO - SÓ FALTA ARRUMAR AS FREQUÊNCIAS
   begin
     windows.Beep(43, aux_tempo);
   end
   else if(item = 'FÁ') and (item_frequencia = '87') then
   begin
     windows.Beep(87, aux_tempo);
   end
   else if(item = 'FÁ') and (item_frequencia = '174') then
   begin
     windows.Beep(174, aux_tempo);
   end
   else if(item = 'FÁ') and (item_frequencia = '348') then
   begin
     windows.Beep(348, aux_tempo);
   end
   else if(item = 'FÁ') and (item_frequencia = '696') then
   begin
     windows.Beep(696, aux_tempo);
   end
   else if(item = 'FÁ') and (item_frequencia = '1392') then
   begin
     windows.Beep(1392, aux_tempo);
   end
   else if(item = 'FÁ') and (item_frequencia = '2784') then
   begin
     windows.Beep(2784, aux_tempo);
   end
   else if(item = 'FÁ') and (item_frequencia = '5568') then
   begin
     windows.Beep(5568, aux_tempo);
   end
   else if(item = 'FÁ') and (item_frequencia = '11136') then
   begin
     windows.Beep(11136, aux_tempo);
   end
   else if(item = 'FÁ') and (item_frequencia = '22272') then
   begin
     windows.Beep(22272, aux_tempo);
   end



   else if(item = 'FÁ # - SOL b') and (item_frequencia = '46') then  //FÁ # - SOL b IMPLEMENTADO - SÓ FALTA ARRUMAR AS FREQUÊNCIAS
   begin
     windows.Beep(46, aux_tempo);
   end
   else if(item = 'FÁ # - SOL b') and (item_frequencia = '92') then
   begin
     windows.Beep(92, aux_tempo);
   end
   else if(item = 'FÁ # - SOL b') and (item_frequencia = '184') then
   begin
     windows.Beep(184, aux_tempo);
   end
   else if(item = 'FÁ # - SOL b') and (item_frequencia = '368') then
   begin
     windows.Beep(368, aux_tempo);
   end
   else if(item = 'FÁ # - SOL b') and (item_frequencia = '736') then
   begin
     windows.Beep(736, aux_tempo);
   end
   else if(item = 'FÁ # - SOL b') and (item_frequencia = '1472') then
   begin
     windows.Beep(1472, aux_tempo);
   end
   else if(item = 'FÁ # - SOL b') and (item_frequencia = '2944') then
   begin
     windows.Beep(2944, aux_tempo);
   end
   else if(item = 'FÁ # - SOL b') and (item_frequencia = '5888') then
   begin
     windows.Beep(5888, aux_tempo);
   end
   else if(item = 'FÁ # - SOL b') and (item_frequencia = '11776') then
   begin
     windows.Beep(11776, aux_tempo);
   end
   else if(item = 'FÁ # - SOL b') and (item_frequencia = '23552') then
   begin
     windows.Beep(23552, aux_tempo);
   end

   else if(item = 'SOL') and (item_frequencia = '48') then  //SOL IMPLEMENTADO - SÓ FALTA ARRUMAR AS FREQUÊNCIAS
   begin
     windows.Beep(48, aux_tempo);
   end
   else if(item = 'SOL') and (item_frequencia = '97') then
   begin
     windows.Beep(97, aux_tempo);
   end
   else if(item = 'SOL') and (item_frequencia = '194') then
   begin
     windows.Beep(194, aux_tempo);
   end
   else if(item = 'SOL') and (item_frequencia = '388') then
   begin
     windows.Beep(388, aux_tempo);
   end
   else if(item = 'SOL') and (item_frequencia = '776') then
   begin
     windows.Beep(776, aux_tempo);
   end
   else if(item = 'SOL') and (item_frequencia = '1552') then
   begin
     windows.Beep(1552, aux_tempo);
   end
   else if(item = 'SOL') and (item_frequencia = '3104') then
   begin
     windows.Beep(3104, aux_tempo);
   end
   else if(item = 'SOL') and (item_frequencia = '6208') then
   begin
     windows.Beep(6208, aux_tempo);
   end
   else if(item = 'SOL') and (item_frequencia = '12416') then
   begin
     windows.Beep(12416, aux_tempo);
   end
   else if(item = 'SOL') and (item_frequencia = '24832') then
   begin
     windows.Beep(24832, aux_tempo);
   end



   else if(item = 'SOL # - LÁ b') and (item_frequencia = '51') then  //SOL # - LÁ b IMPLEMENTADO - SÓ FALTA ARRUMAR AS FREQUÊNCIAS
   begin
     windows.Beep(51, aux_tempo);
   end
   else if(item = 'SOL # - LÁ b') and (item_frequencia = '103') then
   begin
     windows.Beep(103, aux_tempo);
   end
   else if(item = 'SOL # - LÁ b') and (item_frequencia = '206') then
   begin
     windows.Beep(206, aux_tempo);
   end
   else if(item = 'SOL # - LÁ b') and (item_frequencia = '412') then
   begin
     windows.Beep(412, aux_tempo);
   end
   else if(item = 'SOL # - LÁ b') and (item_frequencia = '824') then
   begin
     windows.Beep(824, aux_tempo);
   end
   else if(item = 'SOL # - LÁ b') and (item_frequencia = '880') then
   begin
     windows.Beep(880, aux_tempo);
   end
   else if(item = 'SOL # - LÁ b') and (item_frequencia = '1648') then
   begin
     windows.Beep(1648, aux_tempo);
   end
   else if(item = 'SOL # - LÁ b') and (item_frequencia = '3296') then
   begin
     windows.Beep(3296, aux_tempo);
   end
   else if(item = 'SOL # - LÁ b') and (item_frequencia = '6592') then
   begin
     windows.Beep(6592, aux_tempo);
   end
   else if(item = 'SOL # - LÁ b') and (item_frequencia = '13184') then
   begin
     windows.Beep(13184, aux_tempo);
   end
end;



procedure TMain.cb_notasChange(Sender: TObject);
begin
  if(cb_notas.Items[cb_notas.IteMIndex] = 'LÁ') then
  begin
    cb_frequencia.Items.Clear;
    cb_frequencia.Text := '';
    cb_frequencia.Items.Add('27');
    cb_frequencia.Items.Add('55');
    cb_frequencia.Items.Add('110');
    cb_frequencia.Items.Add('220');
    cb_frequencia.Items.Add('440');
    cb_frequencia.Items.Add('880');
    cb_frequencia.Items.Add('1760');
    cb_frequencia.Items.Add('3520');
    cb_frequencia.Items.Add('7040');
    cb_frequencia.Items.Add('14080');
  end;
  if(cb_notas.Items[cb_notas.IteMIndex] = 'LÁ # - SI b') then
  begin
    cb_frequencia.Items.Clear;
    cb_frequencia.Text := '';
    cb_frequencia.Items.Add('29');
    cb_frequencia.Items.Add('58');
    cb_frequencia.Items.Add('116');
    cb_frequencia.Items.Add('232');
    cb_frequencia.Items.Add('464');
    cb_frequencia.Items.Add('928');
    cb_frequencia.Items.Add('1856');
    cb_frequencia.Items.Add('3712');
    cb_frequencia.Items.Add('7424');
    cb_frequencia.Items.Add('14848');
  end;
  if(cb_notas.Items[cb_notas.IteMIndex] = 'SI') then
  begin
    cb_frequencia.Items.Clear;
    cb_frequencia.Text := '';
    cb_frequencia.Items.Add('30');
    cb_frequencia.Items.Add('61');
    cb_frequencia.Items.Add('122');
    cb_frequencia.Items.Add('244');
    cb_frequencia.Items.Add('488');
    cb_frequencia.Items.Add('976');
    cb_frequencia.Items.Add('1952');
    cb_frequencia.Items.Add('3904');
    cb_frequencia.Items.Add('7808');
    cb_frequencia.Items.Add('15616');
  end;
  if(cb_notas.Items[cb_notas.IteMIndex] = 'DÓ') then
  begin
    cb_frequencia.Items.Clear;
    cb_frequencia.Text := '';
    cb_frequencia.Items.Add('32');
    cb_frequencia.Items.Add('65');
    cb_frequencia.Items.Add('130');
    cb_frequencia.Items.Add('260');
    cb_frequencia.Items.Add('520');
    cb_frequencia.Items.Add('1040');
    cb_frequencia.Items.Add('2080');
    cb_frequencia.Items.Add('4160');
    cb_frequencia.Items.Add('8320');
    cb_frequencia.Items.Add('16640');
  end;
  if(cb_notas.Items[cb_notas.IteMIndex] = 'DÓ # - RÉ b') then
  begin
    cb_frequencia.Items.Clear;
    cb_frequencia.Text := '';
    cb_frequencia.Items.Add('34');
    cb_frequencia.Items.Add('69');
    cb_frequencia.Items.Add('138');
    cb_frequencia.Items.Add('276');
    cb_frequencia.Items.Add('552');
    cb_frequencia.Items.Add('1104');
    cb_frequencia.Items.Add('2208');
    cb_frequencia.Items.Add('4416');
    cb_frequencia.Items.Add('8832');
    cb_frequencia.Items.Add('17664');
  end;
  if(cb_notas.Items[cb_notas.IteMIndex] = 'RÉ') then            //comecar aqui again
  begin
    cb_frequencia.Items.Clear;
    cb_frequencia.Text := '';
    cb_frequencia.Items.Add('36');
    cb_frequencia.Items.Add('73');
    cb_frequencia.Items.Add('146');
    cb_frequencia.Items.Add('292');
    cb_frequencia.Items.Add('584');
    cb_frequencia.Items.Add('1168');
    cb_frequencia.Items.Add('2336');
    cb_frequencia.Items.Add('4672');
    cb_frequencia.Items.Add('9344');
    cb_frequencia.Items.Add('18688');
  end;
  if(cb_notas.Items[cb_notas.IteMIndex] = 'RÉ # - MI b') then
  begin
    cb_frequencia.Items.Clear;
    cb_frequencia.Text := '';
    cb_frequencia.Items.Add('38');
    cb_frequencia.Items.Add('77');
    cb_frequencia.Items.Add('154');
    cb_frequencia.Items.Add('308');
    cb_frequencia.Items.Add('616');
    cb_frequencia.Items.Add('1232');
    cb_frequencia.Items.Add('2464');
    cb_frequencia.Items.Add('4928');
    cb_frequencia.Items.Add('9856');
    cb_frequencia.Items.Add('19712');
  end;
  if(cb_notas.Items[cb_notas.IteMIndex] = 'MI') then
  begin
    cb_frequencia.Items.Clear;
    cb_frequencia.Text := '';
    cb_frequencia.Items.Add('41');
    cb_frequencia.Items.Add('82');
    cb_frequencia.Items.Add('164');
    cb_frequencia.Items.Add('328');
    cb_frequencia.Items.Add('656');
    cb_frequencia.Items.Add('1312');
    cb_frequencia.Items.Add('2624');
    cb_frequencia.Items.Add('5248');
    cb_frequencia.Items.Add('10496');
    cb_frequencia.Items.Add('20992');
  end;
  if(cb_notas.Items[cb_notas.IteMIndex] = 'FÁ') then
  begin
    cb_frequencia.Items.Clear;
    cb_frequencia.Text := '';
    cb_frequencia.Items.Add('43');
    cb_frequencia.Items.Add('87');
    cb_frequencia.Items.Add('174');
    cb_frequencia.Items.Add('348');
    cb_frequencia.Items.Add('696');
    cb_frequencia.Items.Add('1392');
    cb_frequencia.Items.Add('2784');
    cb_frequencia.Items.Add('5568');
    cb_frequencia.Items.Add('11136');
    cb_frequencia.Items.Add('22272');
  end;
  if(cb_notas.Items[cb_notas.IteMIndex] = 'FÁ # - SOL b') then
  begin
    cb_frequencia.Items.Clear;
    cb_frequencia.Text := '';
    cb_frequencia.Items.Add('46');
    cb_frequencia.Items.Add('92');
    cb_frequencia.Items.Add('184');
    cb_frequencia.Items.Add('368');
    cb_frequencia.Items.Add('736');
    cb_frequencia.Items.Add('1472');
    cb_frequencia.Items.Add('2944');
    cb_frequencia.Items.Add('5888');
    cb_frequencia.Items.Add('11776');
    cb_frequencia.Items.Add('23552');
  end;
  if(cb_notas.Items[cb_notas.IteMIndex] = 'SOL') then
  begin
    cb_frequencia.Items.Clear;
    cb_frequencia.Text := '';
    cb_frequencia.Items.Add('48');
    cb_frequencia.Items.Add('97');
    cb_frequencia.Items.Add('194');
    cb_frequencia.Items.Add('388');
    cb_frequencia.Items.Add('776');
    cb_frequencia.Items.Add('1552');
    cb_frequencia.Items.Add('3104');
    cb_frequencia.Items.Add('6208');
    cb_frequencia.Items.Add('12416');
    cb_frequencia.Items.Add('24832');
  end;
  if(cb_notas.Items[cb_notas.IteMIndex] = 'SOL # - LÁ b') then
  begin
    cb_frequencia.Items.Clear;
    cb_frequencia.Text := '';
    cb_frequencia.Items.Add('51');
    cb_frequencia.Items.Add('103');
    cb_frequencia.Items.Add('206');
    cb_frequencia.Items.Add('412');
    cb_frequencia.Items.Add('824');
    cb_frequencia.Items.Add('880');
    cb_frequencia.Items.Add('1648');
    cb_frequencia.Items.Add('3296');
    cb_frequencia.Items.Add('6592');
    cb_frequencia.Items.Add('13184');
  end;
end;
procedure TMain.btn_gerar_freqClick(Sender: TObject);
var add_freq, tempo_add_freq : String;
var aux_add_freq, aux_tempo_add_freq : Integer;
begin
  add_freq := edit_add_freq.Text;
  tempo_add_freq := cb_tempo_nova_freq.Items[cb_tempo_nova_freq.IteMIndex];
  aux_add_freq := StrToInt(add_freq);
  aux_tempo_add_freq := StrToInt(tempo_add_freq);
  windows.Beep(aux_add_freq, aux_tempo_add_freq);
end;



procedure TMain.FormCreate(Sender: TObject);
var default_nota, default_frequencia, default_tempo : string;
begin
end;

end.
