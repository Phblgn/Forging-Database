unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, mySQLDbTables, ExtCtrls, DBCtrls,
  mySQLDirectQuery, DBTables, XLSReadWriteII;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Edit2: TEdit;
    Edit3: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Edit4: TEdit;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label5: TLabel;
    Edit5: TEdit;
    Button3: TButton;
    mySQLDatabase1: TmySQLDatabase;
    Button4: TButton;
    mySQLTable1: TmySQLTable;
    mySQLTable2: TmySQLTable;
    mySQLTable3: TmySQLTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    mySQLQuery1: TmySQLQuery;
    DBNavigator1: TDBNavigator;
    Timer1: TTimer;
    Label6: TLabel;
    Button5: TButton;
    XLSReadWriteII1: TXLSReadWriteII;
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure mySQLTable1AfterPost(DataSet: TDataSet);
    procedure mySQLTable2AfterPost(DataSet: TDataSet);
    procedure Button5Click(Sender: TObject);




  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  one,two,tre: string;
  fil:text;
  i:integer;

implementation

uses Unit2;

{$R *.dfm}



procedure TForm1.Button4Click(Sender: TObject);
//коннект
var
Colcc:integer;
begin
   mySQLDatabase1.host:='192.168.10.100';
   mySQLDatabase1.UserName:=Edit2.Text;
   mySQLDatabase1.UserPassword:=Edit3.Text;

   if fileexists('tbData.txt') then
   begin
    assignfile(fil, 'tbData.txt');
    {$I-}
     reset(fil);
    {$I+}
    if ioresult<>0 then
    begin
      messagedlg('Ошибка в открытии файла' , mterror, [mbok], 0);
      exit;
    end;
     readln(fil,one); readln(fil,two); read(fil,tre);
     closefile(fil);

     mySQLTable1.TableName:=one;
     mySQLTable2.TableName:=two;
     mySQLTable3.TableName:=tre;


   end;
   mySQLDatabase1.Connect;
   if mySQLDatabase1.Connected<>true then ShowMessage('Ошибка подключения')
   else
   begin

     button1.Enabled:=true;
     button1.Refresh;
     button2.Enabled:=true;
     button2.Refresh;
     button3.Enabled:=true;
     button3.Refresh;
     mySQLTable1.Active:=true;
     mySQLTable2.Active:=true;
     mySQLTable3.Active:=true;

     {
     button1.Enabled:=true;
     button2.Enabled:=true;
     button3.Enabled:=true;
     button1.Refresh;
     button2.Refresh;
     button3.Refresh;
     }

     MySQLQuery1.Close;
     MySQLQuery1.SQL.Clear;
     MySQLQuery1.SQL.Add('use paks;');
     MySQLQuery1.ExecSQL;

     if  mysqltable1.TableName<>'' then
     begin
     label6.Caption:='Открыта таблица:'+mysqltable1.TableName;

     for Colcc:=0 to DBGrid1.Columns.Count-1 do
     DBGrid1.Columns[ColCC].Width:=DBGrid1.Canvas.TextWidth(DBGrid1.Columns.Grid.Fields[ColCC].FieldName)+60;
     for Colcc:=0 to DBGrid2.Columns.Count-1 do
     DBGrid2.Columns[ColCC].Width:=DBGrid2.Canvas.TextWidth(DBGrid2.Columns.Grid.Fields[ColCC].FieldName)+60;
     for Colcc:=0 to DBGrid3.Columns.Count-1 do
     DBGrid3.Columns[ColCC].Width:=DBGrid3.Canvas.TextWidth(DBGrid3.Columns.Grid.Fields[ColCC].FieldName)+60;
     end;

   end;
end;


procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//закррытие формы(проги)

if mysqldatabase1.Connected=true then
begin
if mysqltable1.TableName<>'' then

try
one:=mysqltable1.tablename;
two:=mysqltable2.tablename;
tre:=mysqltable3.tablename;
assignfile(fil,'tbData.txt');
rewrite(fil);
writeln(fil,one); writeln(fil,two); writeln(fil,tre);
closefile(fil);

  form1.mysqlquery1.Close;
  form1.mysqlquery1.SQL.Clear;
  form1.mysqlquery1.SQL.Add('update '+form1.mysqltable3.TableName+' set E181=(select sum(E181) from '+form1.mysqltable1.TableName+') , E0585=(select sum(E0585) from '+form1.mysqltable1.TableName+') , E0758=(select sum(E0758) from '+form1.mysqltable1.TableName+') , E0757=(select sum(E0757) from '+form1.mysqltable1.TableName+') , E1409=(select sum(E1409) from '+form1.mysqltable1.TableName+') , K653=(select sum(K653) from '+form1.mysqltable1.TableName+'), K0682=(select sum(K0682) from '+form1.mysqltable1.TableName+'), K0781=(select sum(K0781) from '+form1.mysqltable1.TableName+'), K904=(select sum(K904) from '+form1.mysqltable1.TableName+'), K965=(select sum(K965) from '+form1.mysqltable1.TableName+'), T0432=(select sum(T0432) from '+form1.mysqltable1.TableName+')  where '+form1.mysqltable3.TableName+'.id=1;');
  form1.mysqlquery1.SQL.Add('update '+form1.mysqltable3.TableName+' set Ya1508=(select sum(Ya1508) from '+form1.mysqltable1.TableName+'), Ya0165=(select sum(Ya0165) from '+form1.mysqltable1.TableName+'), Ya0062=(select sum(Ya0062) from '+form1.mysqltable1.TableName+') , Ya0587=(select sum(Ya0587) from '+form1.mysqltable1.TableName+'), ya0725=(select sum(ya0725) from '+form1.mysqltable1.TableName+'), ya0726=(select sum(ya0726) from '+form1.mysqltable1.TableName+'), ya0728=(select sum(ya0728) from '+form1.mysqltable1.TableName+'), ya0730=(select sum(ya0730) from '+form1.mysqltable1.TableName+') where '+form1.mysqltable3.TableName+'.id=1;');
  form1.mysqlquery1.execsql;
  mysqlquery1.Close;
  mysqlquery1.SQL.Clear;
  mysqlquery1.SQL.Add('update '+mysqltable3.TableName+' set E181=((select E181 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select E181 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, E0585=((select E0585 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select E0585 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, E0758=((select E0758 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select E0758 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, E0757=((select E0757 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select E0757 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, E1409=((select E1409 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select E1409 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000 where '+mysqltable3.tablename+'.id=2;');
  mysqlquery1.SQL.Add('update '+mysqltable3.TableName+' set K653=((select K653 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select K653 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, K0682=((select K0682 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select K0682 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, K0781=((select K0781 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select K0781 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, K904=((select K904 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select K904 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, K965=((select K965 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select K965 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000 where '+mysqltable3.tablename+'.id=2;');
  mysqlquery1.SQL.Add('update '+mysqltable3.TableName+' set T0432=((select T0432 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select T0432 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, Ya1508=((select Ya1508 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select Ya1508 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, Ya0165=((select Ya0165 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select Ya0165 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, Ya0062=((select Ya0062 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select Ya0062 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, Ya0587=((select Ya0587 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select Ya0587 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000 where '+mysqltable3.tablename+'.id=2;');
  mysqlquery1.SQL.Add('update '+mysqltable3.TableName+' set ya0725=((select ya0725 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select ya0725 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, ya0726=((select ya0726 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select ya0726 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, ya0728=((select ya0728 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select ya0728 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, ya0730=((select ya0730 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select ya0730 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000 where '+mysqltable3.tablename+'.id=2;');
  mysqlquery1.execsql;
finally;
end;

mySQLTable1.Active:=false;
mySQLTable2.Active:=false;
mySQLTable3.Active:=false;
MySQLQuery1.Close;
MySQLQuery1.SQL.Clear;
mySQLDatabase1.Disconnect;
end;
end;



procedure TForm1.Button1Click(Sender: TObject);
//открытие табл
var Colcc:integer;
begin
edit4.Text:=trim(edit4.text);
if edit4.text<>'' then
begin
  mysqltable1.Active:=false;
  mysqltable2.Active:=false;
  mysqltable3.Active:=false;
  mysqltable1.TableName:=edit4.text;
  mysqltable2.TableName:='itgdata'+edit4.text;
  mysqltable3.TableName:='itgfunc'+edit4.text;
  mySQLTable1.Active:=true;
  mySQLTable2.Active:=true;
  mySQLTable3.Active:=true;
  label6.Caption:='Открыта таблица:'+mysqltable1.TableName;
  for Colcc:=0 to DBGrid1.Columns.Count-1 do
     DBGrid1.Columns[ColCC].Width:=DBGrid1.Canvas.TextWidth(DBGrid1.Columns.Grid.Fields[ColCC].FieldName)+60;
     for Colcc:=0 to DBGrid2.Columns.Count-1 do
     DBGrid2.Columns[ColCC].Width:=DBGrid2.Canvas.TextWidth(DBGrid2.Columns.Grid.Fields[ColCC].FieldName)+60;
     for Colcc:=0 to DBGrid3.Columns.Count-1 do
     DBGrid3.Columns[ColCC].Width:=DBGrid3.Canvas.TextWidth(DBGrid3.Columns.Grid.Fields[ColCC].FieldName)+60;
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
//показываем таблы
begin
  if form2.Visible=false then  form2.visible:=true
  else  form2.visible:=false;

  form2.mySQLQuery1.Close;
  form2.mySQLQuery1.SQL.Clear;
  form2.mySQLQuery1.SQL.Add('show tables');
  form2.mySQLQuery1.execsql;
  form2.mysqlquery1.Active:=true;
  form2.mySQLQuery1.filter:='Tables_in_paks<>''itg*''';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
//creatim tablu
edit5.Text:=trim(edit5.text);
if edit5.Text<>'' then
begin
MySQLQuery1.Close;
MySQLQuery1.SQL.Clear;
MySQLQuery1.SQL.Add('create table '+edit5.text+'(id int auto_increment primary key, firm varchar(60), E181 int, E0585 int, E0758 int, E0757 int, E1409 int, K653 int, K0682 int,');
MySQLQuery1.SQL.Add(' K0781 int, K904 int, K965 int, T0432 int, Ya1508 int, Ya0165 int, Ya0062 int, Ya0587 int, ya0725 int, ya0726 int, ya0728 int, ya0730 int);');

MySQLQuery1.SQL.Add('create table itgdata'+edit5.Text+'(id int auto_increment primary key, FuncNames varchar(30), E181 int, E0585 int, E0758 int, E0757 int, E1409 int, K653 int, K0682 int,');
MySQLQuery1.SQL.Add(' K0781 int, K904 int, K965 int, T0432 int, Ya1508 int, Ya0165 int, Ya0062 int, Ya0587 int, ya0725 int, ya0726 int, ya0728 int, ya0730 int);' );

MySQLQuery1.SQL.Add('create table itgfunc'+edit5.text+'(id int auto_increment primary key, FuncNames varchar(30), E181 decimal(6,2), E0585 decimal(6,2), E0758 decimal(6,2), E0757 decimal(6,2), E1409 decimal(6,2),');
MySQLQuery1.SQL.Add(' K653 decimal(6,2), K0682 decimal(6,2), K0781 decimal(6,2), K904 decimal(6,2), K965 decimal(6,2), T0432 decimal(6,2), Ya1508 decimal(6,2), Ya0165 decimal(6,2),');
MySQLQuery1.SQL.Add(' Ya0062 decimal(6,2), Ya0587 decimal(6,2), ya0725 decimal(6,2), ya0726 decimal(6,2), ya0728 decimal(6,2), ya0730 decimal(6,2));');
MySQLQuery1.ExecSQL; 

MySQLQuery1.Close;
MySQLQuery1.SQL.Clear;
MySQLQuery1.SQL.Add('insert into itgdata'+edit5.text+'(FuncNames) values (''Открыть''); ');
MySQLQuery1.SQL.Add('insert into itgdata'+edit5.text+'(FuncNames) values (''Вес 1шт''); insert into itgdata'+edit5.text+'(FuncNames) values (''Поковка на складе'');');

MySQLQuery1.SQL.Add('insert into itgfunc'+edit5.text+' (FuncNames) values (''Итого''); insert into itgfunc'+edit5.text+'(FuncNames) values (''Вес итого,тн''); ');
MySQLQuery1.execsql;
end;

end;



procedure TForm1.Timer1Timer(Sender: TObject);
begin
 if mysqldatabase1.Connected=true then
 begin
  datasource1.DataSet.Refresh;
  datasource2.DataSet.Refresh;
  datasource3.DataSet.Refresh;
 end;
end;









procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then begin
    Key:=#0;
    SelectNext(ActiveControl,True,True);
  end;

    if key= #27 then
  begin
//закррытие формы(проги)

if mysqldatabase1.Connected=true then
begin
if mysqltable1.TableName<>'' then

try
one:=mysqltable1.tablename;
two:=mysqltable2.tablename;
tre:=mysqltable3.tablename;
assignfile(fil,'tbData.txt');
rewrite(fil);
writeln(fil,one); writeln(fil,two); writeln(fil,tre);
closefile(fil);

  form1.mysqlquery1.Close;
  form1.mysqlquery1.SQL.Clear;
  form1.mysqlquery1.SQL.Add('update '+form1.mysqltable3.TableName+' set E181=(select sum(E181) from '+form1.mysqltable1.TableName+') , E0585=(select sum(E0585) from '+form1.mysqltable1.TableName+') , E0758=(select sum(E0758) from '+form1.mysqltable1.TableName+') , E0757=(select sum(E0757) from '+form1.mysqltable1.TableName+') , E1409=(select sum(E1409) from '+form1.mysqltable1.TableName+') , K653=(select sum(K653) from '+form1.mysqltable1.TableName+'), K0682=(select sum(K0682) from '+form1.mysqltable1.TableName+'), K0781=(select sum(K0781) from '+form1.mysqltable1.TableName+'), K904=(select sum(K904) from '+form1.mysqltable1.TableName+'), K965=(select sum(K965) from '+form1.mysqltable1.TableName+'), T0432=(select sum(T0432) from '+form1.mysqltable1.TableName+')  where '+form1.mysqltable3.TableName+'.id=1;');
  form1.mysqlquery1.SQL.Add('update '+form1.mysqltable3.TableName+' set Ya1508=(select sum(Ya1508) from '+form1.mysqltable1.TableName+'), Ya0165=(select sum(Ya0165) from '+form1.mysqltable1.TableName+'), Ya0062=(select sum(Ya0062) from '+form1.mysqltable1.TableName+') , Ya0587=(select sum(Ya0587) from '+form1.mysqltable1.TableName+'), ya0725=(select sum(ya0725) from '+form1.mysqltable1.TableName+'), ya0726=(select sum(ya0726) from '+form1.mysqltable1.TableName+'), ya0728=(select sum(ya0728) from '+form1.mysqltable1.TableName+'), ya0730=(select sum(ya0730) from '+form1.mysqltable1.TableName+') where '+form1.mysqltable3.TableName+'.id=1;');
  form1.mysqlquery1.execsql;
  mysqlquery1.Close;
  mysqlquery1.SQL.Clear;
  mysqlquery1.SQL.Add('update '+mysqltable3.TableName+' set E181=((select E181 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select E181 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, E0585=((select E0585 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select E0585 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, E0758=((select E0758 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select E0758 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, E0757=((select E0757 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select E0757 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, E1409=((select E1409 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select E1409 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000 where '+mysqltable3.tablename+'.id=2;');
  mysqlquery1.SQL.Add('update '+mysqltable3.TableName+' set K653=((select K653 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select K653 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, K0682=((select K0682 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select K0682 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, K0781=((select K0781 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select K0781 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, K904=((select K904 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select K904 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, K965=((select K965 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select K965 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000 where '+mysqltable3.tablename+'.id=2;');
  mysqlquery1.SQL.Add('update '+mysqltable3.TableName+' set T0432=((select T0432 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select T0432 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, Ya1508=((select Ya1508 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select Ya1508 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, Ya0165=((select Ya0165 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select Ya0165 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, Ya0062=((select Ya0062 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select Ya0062 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, Ya0587=((select Ya0587 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select Ya0587 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000 where '+mysqltable3.tablename+'.id=2;');
  mysqlquery1.SQL.Add('update '+mysqltable3.TableName+' set ya0725=((select ya0725 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select ya0725 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, ya0726=((select ya0726 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select ya0726 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, ya0728=((select ya0728 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select ya0728 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, ya0730=((select ya0730 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select ya0730 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000 where '+mysqltable3.tablename+'.id=2;');
  mysqlquery1.execsql;
finally;
end;

mySQLTable1.Active:=false;
mySQLTable2.Active:=false;
mySQLTable3.Active:=false;
MySQLQuery1.Close;
MySQLQuery1.SQL.Clear;
mySQLDatabase1.Disconnect;
end;

form1.Close;
end;
end;

procedure TForm1.mySQLTable1AfterPost(DataSet: TDataSet);
begin
  form1.mysqlquery1.Close;
  form1.mysqlquery1.SQL.Clear;
  form1.mysqlquery1.SQL.Add('update '+form1.mysqltable3.TableName+' set E181=(select sum(E181) from '+form1.mysqltable1.TableName+') , E0585=(select sum(E0585) from '+form1.mysqltable1.TableName+') , E0758=(select sum(E0758) from '+form1.mysqltable1.TableName+') , E0757=(select sum(E0757) from '+form1.mysqltable1.TableName+') , E1409=(select sum(E1409) from '+form1.mysqltable1.TableName+') , K653=(select sum(K653) from '+form1.mysqltable1.TableName+'), K0682=(select sum(K0682) from '+form1.mysqltable1.TableName+'), K0781=(select sum(K0781) from '+form1.mysqltable1.TableName+'), K904=(select sum(K904) from '+form1.mysqltable1.TableName+'), K965=(select sum(K965) from '+form1.mysqltable1.TableName+'), T0432=(select sum(T0432) from '+form1.mysqltable1.TableName+')  where '+form1.mysqltable3.TableName+'.id=1;');
  form1.mysqlquery1.SQL.Add('update '+form1.mysqltable3.TableName+' set Ya1508=(select sum(Ya1508) from '+form1.mysqltable1.TableName+'), Ya0165=(select sum(Ya0165) from '+form1.mysqltable1.TableName+'), Ya0062=(select sum(Ya0062) from '+form1.mysqltable1.TableName+') , Ya0587=(select sum(Ya0587) from '+form1.mysqltable1.TableName+'), ya0725=(select sum(ya0725) from '+form1.mysqltable1.TableName+'), ya0726=(select sum(ya0726) from '+form1.mysqltable1.TableName+'), ya0728=(select sum(ya0728) from '+form1.mysqltable1.TableName+'), ya0730=(select sum(ya0730) from '+form1.mysqltable1.TableName+') where '+form1.mysqltable3.TableName+'.id=1;');
  form1.mysqlquery1.execsql;
  form1.DataSource3.DataSet.Refresh;
end;

procedure TForm1.mySQLTable2AfterPost(DataSet: TDataSet);
begin
  mysqlquery1.Close;
  mysqlquery1.SQL.Clear;
  mysqlquery1.SQL.Add('update '+mysqltable3.TableName+' set E181=((select E181 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select E181 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, E0585=((select E0585 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select E0585 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, E0758=((select E0758 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select E0758 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, E0757=((select E0757 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select E0757 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, E1409=((select E1409 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select E1409 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000 where '+mysqltable3.tablename+'.id=2;');
  mysqlquery1.SQL.Add('update '+mysqltable3.TableName+' set K653=((select K653 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select K653 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, K0682=((select K0682 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select K0682 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, K0781=((select K0781 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select K0781 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, K904=((select K904 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select K904 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, K965=((select K965 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select K965 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000 where '+mysqltable3.tablename+'.id=2;');
  mysqlquery1.SQL.Add('update '+mysqltable3.TableName+' set T0432=((select T0432 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select T0432 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, Ya1508=((select Ya1508 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select Ya1508 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, Ya0165=((select Ya0165 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select Ya0165 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, Ya0062=((select Ya0062 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select Ya0062 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, Ya0587=((select Ya0587 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select Ya0587 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000 where '+mysqltable3.tablename+'.id=2;');
  mysqlquery1.SQL.Add('update '+mysqltable3.TableName+' set ya0725=((select ya0725 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select ya0725 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, ya0726=((select ya0726 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select ya0726 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, ya0728=((select ya0728 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select ya0728 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000, ya0730=((select ya0730 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=1)*(select ya0730 from '+mysqltable2.tablename+' where '+mysqltable2.tablename+'.id=2))/1000 where '+mysqltable3.tablename+'.id=2;');
  mysqlquery1.execsql;
  form1.DataSource3.DataSet.Refresh;
end;



//Экспорт
procedure TForm1.Button5Click(Sender: TObject);
var a,b:integer;
begin
XLSReadWriteII1.Filename := ''+mysqltable1.tablename+'.xls';

//Заголовки полей
for a:=0 to dbgrid1.fieldcount-1 do
XLSReadWriteII1.sheets[0].AsString[a,0]:=dbgrid1.Columns.Items[a].FieldName;

//первая табла
mysqltable1.First;
for a:=1 to mysqltable1.recordcount do
begin
  for b:=0 to mysqltable1.fieldCount-1 do
    XLSReadWriteII1.sheets[0].AsString[b,a]:=mysqltable1.fields[b].AsString;
  mysqltable1.Next;
end;

//вторая табла
mysqltable2.First;
for a:=mysqltable1.recordcount+1 to mysqltable1.recordcount+mysqltable2.RecordCount do
begin
  for b:=0 to mysqltable2.fieldcount-1 do
  begin
    XLSReadWriteII1.sheets[0].AsString[b,a]:=mysqltable2.fields[b].AsString;
  end;
  mysqltable2.Next;
end;

//тэйбл намбер три
mysqltable3.First;
for a:=mysqltable1.recordcount+mysqltable2.recordcount+1 to mysqltable1.recordcount+mysqltable2.recordcount+mysqltable3.RecordCount do
begin
  for b:=0 to mysqltable3.fieldcount-1 do
  begin
    XLSReadWriteII1.sheets[0].AsString[b,a]:=mysqltable3.fields[b].AsString;
  end;
  mysqltable3.Next;
end;

XLSReadWriteII1.Write;
end;

end.

