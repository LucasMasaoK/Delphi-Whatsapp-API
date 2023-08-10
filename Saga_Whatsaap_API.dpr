program Saga_Whatsaap_API;

uses
  Vcl.Forms,
  uPrincipal in 'Forms\uPrincipal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
