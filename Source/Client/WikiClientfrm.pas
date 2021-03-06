unit WikiClientfrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WebClientfrm, ActnList, Menus, AppEvnts, OleCtrls, SHDocVw,
  ComCtrls, StdCtrls, Buttons, ExtCtrls;

type
  TWikiClientDlg = class(TWebClientDlg)
  private
    { Private declarations }
  public
    { Public declarations }
    procedure initBase; override;
  end;

var
  WikiClientDlg: TWikiClientDlg;

implementation

uses ClinetSystemUnits;

{$R *.dfm}

{ TWikiClientDlg }

procedure TWikiClientDlg.initBase;
const
  glSQL = 'select ZVALUE from TB_SYSPARAMS where ZNAME=''wiki''';
begin
  HomeURL := ClientSystem.fDbOpr.ReadVariant(glSQL);
  inherited;
end;

end.
