[Setup]                          
AppId={{5A2BC38A-406C-4A5B-BF45-6991F9A05325}
AppName=PeaZip
AppVerName=PeaZip 8.7.0
AppVersion=8.7.0
AppPublisher=Giorgio Tani
AppPublisherURL=https://peazip.github.io
AppSupportURL=https://peazip.github.io
AppUpdatesURL=https://peazip.github.io
DefaultDirName={pf}\PeaZip
DisableDirPage=no
DefaultGroupName=PeaZip
DisableProgramGroupPage=yes
LicenseFile=C:\input\peazip-8.7.0.WINDOWS\res\share\copying\copying.txt
OutputDir=C:\output\
OutputBaseFilename=peazip-8.7.0.WINDOWS
SetupIconFile=C:\input\peazip-icon-green.ico
Compression=lzma2/max
SolidCompression=yes
ChangesAssociations=yes

[Languages]
Name: "default"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\input\peazip-8.7.0.WINDOWS\peazip.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\input\peazip-8.7.0.WINDOWS\pea.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\input\peazip-8.7.0.WINDOWS\dragdropfilesdll.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\input\peazip-8.7.0.WINDOWS\res\*"; DestDir: "{app}\res"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[INI]
Filename: "{app}\peazip.url"; Section: "InternetShortcut"; Key: "URL"; String: "https://peazip.github.io/"

[Icons]
Name: "{group}\PeaZip"; Filename: "{app}\peazip.exe"
; Name: "{group}\Reset PeaZip"; Filename: "{app}\peazip.exe"; Parameters: "-peazipreset"
Name: "{group}\{cm:ProgramOnTheWeb,PeaZip}"; Filename: "{app}\peazip.url"
Name: "{group}\{cm:UninstallProgram,PeaZip}"; Filename: "{uninstallexe}"
Name: "{userdesktop}\PeaZip"; Filename: "{app}\peazip.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\PeaZip"; Filename: "{app}\peazip.exe"; Tasks: quicklaunchicon
Name: "{group}\Add to archive"; Filename: "{app}\peazip.exe"; Parameters: "-add2archive";  IconFilename: "{app}\res\share\icons\peazip_seven.icl"; IconIndex: 2
Name: "{group}\Extract..."; Filename: "{app}\peazip.exe"; Parameters: "-ext2main";  IconFilename: "{app}\res\share\icons\peazip_seven.icl"; IconIndex: 4
Name: "{group}\Extract here (smart new folder)"; Filename: "{app}\peazip.exe"; Parameters: "-ext2folder";  IconFilename: "{app}\res\share\icons\peazip_seven.icl"; IconIndex: 4
Name: "{group}\Open as archive"; Filename: "{app}\peazip.exe"; Parameters: "-ext2openasarchive";
Name: "{group}\Configure PeaZip"; Filename: "{app}\res\bin\Configure PeaZip.exe";
Name: "{group}\PeaZip"; Filename: "{app}\peazip.exe";
Name: "{app}\Add to archive"; Filename: "{app}\peazip.exe"; Parameters: "-add2archive";  IconFilename: "{app}\res\share\icons\peazip_seven.icl"; IconIndex: 2
Name: "{app}\Extract..."; Filename: "{app}\peazip.exe"; Parameters: "-ext2main";  IconFilename: "{app}\res\share\icons\peazip_seven.icl"; IconIndex: 4
Name: "{app}\Extract here (smart new folder)"; Filename: "{app}\peazip.exe"; Parameters: "-ext2folder";  IconFilename: "{app}\res\share\icons\peazip_seven.icl"; IconIndex: 4
Name: "{app}\Open as archive"; Filename: "{app}\peazip.exe"; Parameters: "-ext2openasarchive";

[Run]
;Filename: "{app}\peazip.exe"; Description: "{cm:LaunchProgram,PeaZip}"; Flags: nowait postinstall skipifsilent
;temporarily deactivated since this works correctly (using current user's profile) only for Vista or more recent systems

[InstallDelete]
Type: filesandordirs; Name: "{app}\res\lang"

[UninstallDelete]
Type: files; Name: "{app}\peazip.url"

[CustomMessages]
Associations_Caption=Associations
Associations_Description=Set file associations
Associations_Labelfull1_Caption0=Read/write supported types
Associations_Labelread1_Caption0=Read supported types
Associations_cb7z_Caption0=7Z, XZ
Associations_cbbr_Caption0=Brotli
Associations_cbzst_Caption0=Zstandard
Associations_cbpaq8_Caption0=*PAQ
Associations_cbquad_Caption0=QUAD/BALZ/BCM
Associations_cbtar_Caption0=TAR, BZ2, GZ
Associations_cbzip_Caption0=ZIP, ZIPX
Associations_cbfullnone_Caption0=None of the above group (override selection)
Associations_cbarj_Caption0=ARJ
Associations_cbcab_Caption0=CAB
Associations_cblinux_Caption0=Linux (DEB, RPM, PET/PUP, SLP)
Associations_cbiso_Caption0=ISO, UDF
Associations_cblha_Caption0=LHA
Associations_cblzh_Caption0=LZH
Associations_cbrar_Caption0=RAR
Associations_cbcpio_Caption0=CPIO, Z
Associations_cbreadnone_Caption0=None of the above group (override selection)
Associations_cbace_Caption0=ACE
Associations_cbarc_Caption0=ARC, WRC
Associations_cbMac_Caption0=Mac (DMG/HFS)
context_Caption=Context menu
context_Description=Create application's entries in system's context menu
context_cbcontextext_Caption0=Extract...
context_cbcontextext2here_Caption0=Extract here
context_cbcontextsplit_Caption0=Split file
context_cbcontextconvert_Caption0=Convert
context_cbcontextnone_Caption0=No context menu entry (override selection)
context_cbcontextext2folder_Caption0=Extract here (in new folder)
context_cbcontextext2smart_Caption0=Extract here (smart new folder)
context_cbcontext7zs_Caption0=Add to 7Z
context_cbcontextzips_Caption0=Add to ZIP
context_cbcontexttest_Caption0=Test archive(s)
context_cbcontextwipe_Caption0=Secure delete
context_cbcontextadd2archive_Caption0=Add to archive
context_cbcontextadd2archiveseparate_Caption0=Add to separate archive(s)
context_cbcontextsfx_Caption0=Add to self extracting
context_CheckBox3f_Caption0=Add to 7Z, fastest
context_CheckBox3_Caption0=Add to 7Z, ultra
context_cbcontext7zsenc_Caption0=Encrypt (7Z)
context_CheckBox4_Caption0=Add to ZIP, fastest
context_cbcascaded_Caption0=Cascaded menu
context_cbcontextzipmail_Caption0=Zip and mail
context_cbcontextbrowse_Caption0=Browse path with PeaZip
context_cbcontextcrc_Caption0=CRC, hash and file tools
Links_Caption=SendTo
Links_Description=Create application's entries in SendTo menu
Links_cbfunext2here_Caption0=Extract here
Links_cbfun7z_Caption0=Add to 7Z
Links_cbfunzip_Caption0=Add to ZIP
Links_cbfunsfx_Caption0=Add to self extracting
Links_cbfunsplit_Caption0=Split file
Links_cbfunnone_Caption0=No SendTo menu entry (override selection)
Links_cbfunext2folder_Caption0=Extract here (smart new folder)
Links_cbfunext2newfolder_Caption0=Extract here (in new folder)
Links_cbfun7zs_Caption0=Add to separate 7Z
Links_cbfunzips_Caption0=Add to separate ZIP
Links_cbfunencrypt_Caption0=Encrypt (PEA)
Links_cbfuntest_Caption0=Test archive(s)
Links_cbfunzipmail_Caption0=Add to ZIP and mail
Links_cbfun7zmail_Caption0=Add to 7Z and mail
Links_cbfunwipe_Caption0=Secure delete
Links_cbfunext2to_Caption0=Extract...
Links_CheckBoxbrowsepath_Caption0=Browse path with PeaZip
Links_CheckBoxcommand_Caption0=Open command prompt here
Links_cbfunadd_Caption0=Add to archive
Links_cbfunconvert_Caption0=Convert
Links_cbfunopen_Caption0=Open as archive
install_Caption=Install PeaZip
install_Description=Installation options
install_Labelinstall1_Caption0=Default installation, context menu and SendTo menu entries
install_Labelinstall1_Caption2=Configure file associations
install_RadioButtoninstall1_Caption0=Standard installation
install_RadioButtoninstall2_Caption0=Custom installation
install_RadioButtoninstall3_Caption0=No system integration
install_RadioButtoninstall4_Caption0=Update only, keep current system integration
install_cbinstallcu_Caption0=Install for current user only
install_cbreset_Caption0=Reset current configuration
install_lupdate_Caption0=Check for updates
install_l1_Caption0=|
install_lhelp_Caption0=Help
install_l2_Caption0=|
install_lfaq_Caption0=FAQ
install_LabelAppLang_Caption0=Application language
 				
[Code]
var
  MyProgChecked: Boolean;
  MyProgCheckResult: Boolean;
  FinishedInstall: Boolean;
  Labelfull1: TLabel;
  Bevel1: TBevel;
  Labelread1: TLabel;
  Bevel2: TBevel;
  cb7z: TCheckBox;
  cbbr: TCheckBox;
  cbzst: TCheckBox;
  cbpaq8: TCheckBox;
  cbquad: TCheckBox;
  cbtar: TCheckBox;
  cbzip: TCheckBox;
  cbfullnone: TCheckBox;
  cbarj: TCheckBox;
  cbcab: TCheckBox;
  cblinux: TCheckBox;
  cbiso: TCheckBox;
  cblha: TCheckBox;
  cblzh: TCheckBox;
  cbrar: TCheckBox;
  cbcpio: TCheckBox;
  cbreadnone: TCheckBox;
	cbace: TCheckBox;
	cbarc: TCheckBox;
	cbMac: TCheckBox;
  Bevel1context: TBevel;
  cbcontextext: TCheckBox;
  cbcontextext2here: TCheckBox;
  cbcontextsplit: TCheckBox;
  cbcontextconvert: TCheckBox;
  cbcontextnone: TCheckBox;
  cbcontextext2folder: TCheckBox;
  cbcontextext2smart: TCheckBox;
  cbcontext7zs: TCheckBox;
  cbcontextzips: TCheckBox;
  cbcontexttest: TCheckBox;
  cbcontextwipe: TCheckBox;
  cbcontextadd2archive: TCheckBox;
  cbcontextadd2archiveseparate: TCheckBox;
  cbcontextsfx: TCheckBox;
  CheckBox3f: TCheckBox;
  CheckBox3: TCheckBox;
  cbcontext7zsenc: TCheckBox;
  CheckBox4: TCheckBox;
  cbcascaded: TCheckBox;
  cbcontextzipmail: TCheckBox;
  cbcontextbrowse: TCheckBox;
  cbcontextcrc: TCheckBox;
    Bevel1fun: TBevel;
    cbfunext2here: TCheckBox;
    cbfun7z: TCheckBox;
    cbfunzip: TCheckBox;
    cbfunsfx: TCheckBox;
    cbfunsplit: TCheckBox;
    cbfunnone: TCheckBox;
    cbfunext2folder: TCheckBox;
    cbfun7zs: TCheckBox;
    cbfunzips: TCheckBox;
    cbfunencrypt: TCheckBox;
    cbfuntest: TCheckBox;
    cbfunzipmail: TCheckBox;
    cbfun7zmail: TCheckBox;
    cbfunwipe: TCheckBox;
    cbfunext2to: TCheckBox;
    CheckBoxbrowsepath: TCheckBox;
    CheckBoxcommand: TCheckBox;
    cbfunadd: TCheckBox;
    cbfunopen: TCheckBox;
    cbfunconvert: TCheckBox;
    cbfunext2newfolder: TCheckBox;
  Labelinstall1: TLabel;
  RadioButtoninstall1: TRadioButton;
  RadioButtoninstall2: TRadioButton;
  RadioButtoninstall3: TRadioButton;
  RadioButtoninstall4: TRadioButton;
  LabelAppLang: TLabel;
  ComboBox1: TComboBox;
  cbinstallcu: TCheckbox;
  cbreset: TCheckbox;
  lupdate: TLabel;
  l1: TLabel;
  lhelp: TLabel;
  l2: TLabel;
  lfaq: TLabel;
  sLMCU:integer;

{ install_Activate }

procedure install_Activate(Page: TWizardPage);
begin
  // enter code here...
end;

{ install_ShouldSkipPage }

function install_ShouldSkipPage(Page: TWizardPage): Boolean;
begin
  Result := False;
end;

{ install_BackButtonClick }

function install_BackButtonClick(Page: TWizardPage): Boolean;
begin
  Result := True;
end;

{ install_NextkButtonClick }

function install_NextButtonClick(Page: TWizardPage): Boolean;
begin
  Result := True;
end;

{ install_CancelButtonClick }

procedure install_CancelButtonClick(Page: TWizardPage; var Cancel, Confirm: Boolean);
begin
  // enter code here...
end;

procedure install_lupdateClick(Sender: TObject);
var
  ErrorCode: Integer;
begin
   ShellExecAsOriginalUser('open', 'https://peazip.github.io/', '', '', SW_SHOW, ewNoWait, ErrorCode);
end;

procedure install_lhelpClick(Sender: TObject);
var
  ErrorCode: Integer;
begin
   ShellExecAsOriginalUser('open', 'https://peazip.github.io/peazip-help.html', '', '', SW_SHOW, ewNoWait, ErrorCode)
end;

procedure install_lfaqClick(Sender: TObject);
var
  ErrorCode: Integer;
begin
   ShellExecAsOriginalUser('open', 'https://peazip.github.io/peazip-help-faq.html', '', '', SW_SHOW, ewNoWait, ErrorCode)
end;

{ install_CreatePage }

function install_CreatePage(PreviousPageId: Integer): Integer;
var
  Page: TWizardPage; 
  i:integer; 
  l:string;
begin
  Page := CreateCustomPage(
    PreviousPageId,
    ExpandConstant('{cm:install_Caption}'),
	  ExpandConstant('{cm:install_Description}')
  );

{ Labelinstall1 }
  Labelinstall1 := TLabel.Create(Page);
  with Labelinstall1 do
  begin
    Parent := Page.Surface;
    Caption :=
      ExpandConstant('{cm:install_Labelinstall1_Caption0}') + #13 +
      ExpandConstant('{cm:install_Labelinstall1_Caption2}');
    Left := ScaleX(32);
    Top := ScaleY(26);
    Width := ScaleX(363);
    Height := ScaleY(64);
  end;

  { RadioButtoninstall1 }
  RadioButtoninstall1 := TRadioButton.Create(Page);
  with RadioButtoninstall1 do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:install_RadioButtoninstall1_Caption0}');
    Left := ScaleX(16);
    Top := ScaleY(0);
    Width := ScaleX(385);
    Height := ScaleY(25);
    Checked := True;
    TabOrder := 0;
    TabStop := True;
  end;

  { RadioButtoninstall2 }
  RadioButtoninstall2 := TRadioButton.Create(Page);
  with RadioButtoninstall2 do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:install_RadioButtoninstall2_Caption0}');
    Left := ScaleX(16);
    Top := ScaleY(60);
    Width := ScaleX(385);
    Height := ScaleY(25);
    TabOrder := 1;
    TabStop := True;
  end;

  { RadioButtoninstall3 }
  RadioButtoninstall3 := TRadioButton.Create(Page);
  with RadioButtoninstall3 do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:install_RadioButtoninstall3_Caption0}');
    Left := ScaleX(16);
    Top := ScaleY(80);
    Width := ScaleX(385);
    Height := ScaleY(25);
    TabOrder := 2;
    TabStop := True;
  end;

  { RadioButtoninstall4 }
  RadioButtoninstall4 := TRadioButton.Create(Page);
  with RadioButtoninstall4 do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:install_RadioButtoninstall4_Caption0}');
    Left := ScaleX(16);
    Top := ScaleY(100);
    Width := ScaleX(385);
    Height := ScaleY(25);
    TabOrder := 3;
    TabStop := True;
  end;

  { LabelAppLang }
  LabelAppLang := TLabel.Create(Page);
  with LabelAppLang do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:install_LabelAppLang_Caption0}');
    Left := ScaleX(16);
    Top := ScaleY(143);
    Width := ScaleX(99);
    Height := ScaleY(13);
  end;
  if (GetWindowsVersion < $06000000) then LabelAppLang.visible:=false;
  
  { ComboBox1 }
  ComboBox1 := TComboBox.Create(Page);
  with ComboBox1 do
  begin
    Parent := Page.Surface;
    Left := ScaleX(128);
    Top := ScaleY(140);
    Width := ScaleX(240);
    Height := ScaleY(21);
    TabOrder := 4;
    Style := csDropDownList;
    Text := 'EN - English';
    Items.Add('AR - Arabic');
    Items.Add('BG - Bulgarian');
    Items.Add('BY-CR - Belarusian (Cyrillic)');
    Items.Add('BY-LT - Belarusian (Latin)');
    Items.Add('CHS - Chinese Simplified');
    Items.Add('CHT - Chinese Traditional');
    Items.Add('CZ - Czech');
    Items.Add('DE-UML - German');
    Items.Add('DE-UML-ALT - German (alternative)');
    Items.Add('Default / Do not change current language');
    Items.Add('EN - English');
    Items.Add('EN-GB - British English');
    Items.Add('ES-ES - Spanish');
    Items.Add('ES-LA - Spanish (Latin-America)');
    Items.Add('EU - Basque');
    Items.Add('FI - Finnish');
    Items.Add('FR - French');
    Items.Add('GL - Galician');
    Items.Add('GR - Greek');
    Items.Add('HU - Hungarian');
    Items.Add('ID - Bahasa Indonesia');
    Items.Add('IT - Italian');
    Items.Add('JA - Japanese');
    Items.Add('KO - Korean');
    Items.Add('NL - Dutch');
    Items.Add('NO - Norwegian');
    Items.Add('PL - Polish');
    Items.Add('PT-BR - Portuguese (Brazil)');
    Items.Add('PT-PT - Portuguese (Portugal)');
    Items.Add('RO - Romanian');
    Items.Add('RU - Russian');
    Items.Add('SI - Sinhala');
    Items.Add('SK - Slovak');
    Items.Add('SL - Slovenian');
    Items.Add('SV - Swedish');
    Items.Add('TJ - Tajik');
    Items.Add('TR - Turkish');
    Items.Add('UK - Ukrainian');
    Items.Add('UZ - Uzbek');
    Items.Add('VN - Vietnamese');
    ItemIndex := 9;
  end;
  if (GetWindowsVersion < $06000000) then ComboBox1.visible:=false;

  try 
  l:=uppercase(paramstr(paramcount));
  if length(l)>0 then if l[1]='/' then l:=copy(l,2,length(l)-1);
  case l of
  'AR': i:=0;
  'BG': i:=1;
  'BY-CR','BY': i:=2;
  'BY-LT': i:=3;
  'CHS','CH': i:=4; 
  'CHT': i:=5;
  'CZ': i:=6;
  'DE-UML','DE': i:=7;
  'DEFAULT': i:=9;
  'EN': i:=10;
  'EN-GB': i:=11;
  'ES-ES','ES': i:=12;
  'ES-LA': i:=13;
  'EU': i:=14;
  'FI': i:=15;
  'FR': i:=16;
  'GL': i:=17;
  'GR': i:=18;
  'HU': i:=19;
  'ID': i:=20;
  'IT': i:=21;
  'JA': i:=22;
  'KO': i:=23;
  'NL': i:=24;
  'NO': i:=25;
  'PL': i:=26;
  'PT-BR': i:=27;
  'PT-PT','PT': i:=28;
  'RO': i:=29;
  'RU': i:=30;
  'SI': i:=31;
  'SK': i:=32;
  'SL': i:=33;
  'SV': i:=34;
  'TJ': i:=35;
  'TR': i:=36;
  'UK': i:=37;
  'UZ': i:=38;
  'VN': i:=39;
  else i:=9;
  end;
  if i>=0 then 
     combobox1.itemindex:=i;
  except
  end;

  { cbinstallcu }
  cbinstallcu := Tcheckbox.Create(Page);
  with cbinstallcu do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:install_cbinstallcu_Caption0}');
    Left := ScaleX(16);
    Top := ScaleY(170);
    Width := ScaleX(160);
    Height := ScaleY(25);
  end;

  { cbreset }
  cbreset := Tcheckbox.Create(Page);
  with cbreset do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:install_cbreset_Caption0}');
    Left := ScaleX(16);
    Top := ScaleY(203);
    Width := ScaleX(160);
    Height := ScaleY(25);
  end;  
  if (GetWindowsVersion < $06000000) then cbreset.visible:=false;

  { lupdate }
  lupdate := TLabel.Create(Page);
  with lupdate do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:install_lupdate_Caption0}');
    Left := ScaleX(220);
    Top := ScaleY(208);
    Width := ScaleX(88);
    Height := ScaleY(13);
    Cursor := crHand;
    Font.Color := 16711680;
    Font.Height := ScaleY(-11);
    Font.Name := 'Tahoma';
    Font.Style := [fsUnderline];
    OnClick := @install_lupdateClick;
  end;

  { l1 }
  l1 := TLabel.Create(Page);
  with l1 do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:install_l1_Caption0}');
    Left := ScaleX(316);
    Top := ScaleY(208);
    Width := ScaleX(4);
    Height := ScaleY(13);
    Font.Height := ScaleY(-11);
    Font.Name := 'Tahoma';
  end;

  { lhelp }
  lhelp := TLabel.Create(Page);
  with lhelp do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:install_lhelp_Caption0}');
    Left := ScaleX(328);
    Top := ScaleY(208);
    Width := ScaleX(21);
    Height := ScaleY(13);
    Cursor := crHand;
    Font.Color := 16711680;
    Font.Height := ScaleY(-11);
    Font.Name := 'Tahoma';
    Font.Style := [fsUnderline];
    OnClick := @install_lhelpClick;
  end;

  { l2 }
  l2 := TLabel.Create(Page);
  with l2 do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:install_l2_Caption0}');
    Left := ScaleX(357);
    Top := ScaleY(208);
    Width := ScaleX(4);
    Height := ScaleY(13);
    Font.Height := ScaleY(-11);
    Font.Name := 'Tahoma';
  end;

  { lfaq }
  lfaq := TLabel.Create(Page);
  with lfaq do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:install_lfaq_Caption0}');
    Left := ScaleX(369);
    Top := ScaleY(208);
    Width := ScaleX(21);
    Height := ScaleY(13);
    Cursor := crHand;
    Font.Color := 16711680;
    Font.Height := ScaleY(-11);
    Font.Name := 'Tahoma';
    Font.Style := [fsUnderline];
    OnClick := @install_lfaqClick;
  end;

  with Page do
  begin
    OnActivate := @install_Activate;
    OnShouldSkipPage := @install_ShouldSkipPage;
    OnBackButtonClick := @install_BackButtonClick;
    OnNextButtonClick := @install_NextButtonClick;
    OnCancelButtonClick := @install_CancelButtonClick;
  end;

  Result := Page.ID;
end;       				
				
				{ Associations_Activate }
				
				procedure Associations_Activate(Page: TWizardPage);
				begin
				  // enter code here...
				end;
				
				{ Associations_ShouldSkipPage }
				
				function Associations_ShouldSkipPage(Page: TWizardPage): Boolean;
				begin
				  if (radiobuttoninstall3.Checked = True) or (radiobuttoninstall4.Checked = True) then Result := True
          else Result := False;
				end;
				
				{ Associations_BackButtonClick }
				
				function Associations_BackButtonClick(Page: TWizardPage): Boolean;
				begin
				  Result := True;
				end;
				
				{ Associations_NextkButtonClick }
				
				function Associations_NextButtonClick(Page: TWizardPage): Boolean;
				begin
				  Result := True;
				end;
				
				{ Associations_CancelButtonClick }
				
				procedure Associations_CancelButtonClick(Page: TWizardPage; var Cancel, Confirm: Boolean);
				begin
				  // enter code here...
				end;
				
				{ Associations_CreatePage }
				
				function Associations_CreatePage(PreviousPageId: Integer): Integer;
				var
				  Page: TWizardPage;
				begin
				  Page := CreateCustomPage(
				    PreviousPageId,
				    ExpandConstant('{cm:Associations_Caption}'),
				    ExpandConstant('{cm:Associations_Description}')
				  );
				
{ Labelfull1 }
Labelfull1 := TLabel.Create(Page);
with Labelfull1 do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_Labelfull1_Caption0}');
  Left := ScaleX(0);
  Top := ScaleY(0);
  Width := ScaleX(163);
  Height := ScaleY(13);
  Font.Color := -16777208;
  Font.Height := ScaleY(-11);
  Font.Name := 'Tahoma';
  Font.Style := [fsBold];
  WordWrap := True;
end;

{ Bevel1 }
Bevel1 := TBevel.Create(Page);
with Bevel1 do
begin
  Parent := Page.Surface;
  Left := ScaleX(0);
  Top := ScaleY(20);
  Width := ScaleX(410);
  Height := ScaleY(52);
end;

{ Labelread1 }
Labelread1 := TLabel.Create(Page);
with Labelread1 do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_Labelread1_Caption0}');
  Left := ScaleX(0);
  Top := ScaleY(112);
  Width := ScaleX(128);
  Height := ScaleY(13);
  Font.Color := -16777208;
  Font.Height := ScaleY(-11);
  Font.Name := 'Tahoma';
  Font.Style := [fsBold];
  WordWrap := True;
end;

{ Bevel2 }
Bevel2 := TBevel.Create(Page);
with Bevel2 do
begin
  Parent := Page.Surface;
  Left := ScaleX(0);
  Top := ScaleY(132);
  Width := ScaleX(410);
  Height := ScaleY(78);
end;

{ cb7z }
cb7z := TCheckBox.Create(Page);
with cb7z do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cb7z_Caption0}');
  Left := ScaleX(6);
  Top := ScaleY(24);
  Width := ScaleX(81);
  Height := ScaleY(17);
  Checked := True;
  State := cbChecked;
  TabOrder := 2;
end;

{ cbarc }
cbarc := TCheckBox.Create(Page);
with cbarc do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cbarc_Caption0}');
  Left := ScaleX(110);
  Top := ScaleY(24);
  Width := ScaleX(73);
  Height := ScaleY(17);
  Checked := True;
  State := cbChecked;
  TabOrder := 3;
end;

{ cbbr }
cbbr := TCheckBox.Create(Page);
with cbbr do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cbbr_Caption0}');
  Left := ScaleX(214);
  Top := ScaleY(24);
  Width := ScaleX(73);
  Height := ScaleY(17);
  Checked := True;
  State := cbChecked;
  TabOrder := 4;
end;

{ cbpaq8 }
cbpaq8 := TCheckBox.Create(Page);
with cbpaq8 do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cbpaq8_Caption0}');
  Left := ScaleX(318);
  Top := ScaleY(24);
  Width := ScaleX(81);
  Height := ScaleY(17);
  Checked := True;
  State := cbChecked;
  TabOrder := 5;
end;

{ cbquad }
cbquad := TCheckBox.Create(Page);
with cbquad do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cbquad_Caption0}');
  Left := ScaleX(6);
  Top := ScaleY(48);
  Width := ScaleX(100);
  Height := ScaleY(17);
  Checked := True;
  State := cbChecked;
  TabOrder := 6;
end;

{ cbtar }
cbtar := TCheckBox.Create(Page);
with cbtar do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cbtar_Caption0}');
  Left := ScaleX(110);
  Top := ScaleY(48);
  Width := ScaleX(73);
  Height := ScaleY(17);
  Checked := True;
  State := cbChecked;
  TabOrder := 7;
end;

{ cbzip }
cbzip := TCheckBox.Create(Page);
with cbzip do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cbzip_Caption0}');
  Left := ScaleX(214);
  Top := ScaleY(48);
  Width := ScaleX(81);
  Height := ScaleY(17);
  Checked := True;
  State := cbChecked;
  TabOrder := 8;
end;

{ cbzst }
cbzst := TCheckBox.Create(Page);
with cbzst do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cbzst_Caption0}');
  Left := ScaleX(318);
  Top := ScaleY(48);
  Width := ScaleX(81);
  Height := ScaleY(17);
  Checked := True;
  State := cbChecked;
  TabOrder := 9;
end;

{ cbfullnone }
cbfullnone := TCheckBox.Create(Page);
with cbfullnone do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cbfullnone_Caption0}');
  Left := ScaleX(0);
  Top := ScaleY(74);
  Width := ScaleX(321);
  Height := ScaleY(25);
  TabOrder := 0;
end;

{ cbarj }
cbarj := TCheckBox.Create(Page);
with cbarj do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cbarj_Caption0}');
  Left := ScaleX(110);
  Top := ScaleY(136);
  Width := ScaleX(81);
  Height := ScaleY(17);
  Checked := True;
  State := cbChecked;
  TabOrder := 11;
end;

{ cbcab }
cbcab := TCheckBox.Create(Page);
with cbcab do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cbcab_Caption0}');
  Left := ScaleX(214);
  Top := ScaleY(136);
  Width := ScaleX(73);
  Height := ScaleY(17);
  Checked := True;
  State := cbChecked;
  TabOrder := 12;
end;

{ cblinux }
cblinux := TCheckBox.Create(Page);
with cblinux do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cblinux_Caption0}');
  Left := ScaleX(6);
  Top := ScaleY(184);
  Width := ScaleX(200);
  Height := ScaleY(17);
  Checked := True;
  State := cbChecked;
  TabOrder := 18;
end;

{ cbiso }
cbiso := TCheckBox.Create(Page);
with cbiso do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cbiso_Caption0}');
  Left := ScaleX(6);
  Top := ScaleY(160);
  Width := ScaleX(81);
  Height := ScaleY(17);
  TabOrder := 14;
end;

{ cblha }
cblha := TCheckBox.Create(Page);
with cblha do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cblha_Caption0}');
  Left := ScaleX(110);
  Top := ScaleY(160);
  Width := ScaleX(73);
  Height := ScaleY(17);
  Checked := True;
  State := cbChecked;
  TabOrder := 15;
end;

{ cblzh }
cblzh := TCheckBox.Create(Page);
with cblzh do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cblzh_Caption0}');
  Left := ScaleX(214);
  Top := ScaleY(160);
  Width := ScaleX(73);
  Height := ScaleY(17);
  Checked := True;
  State := cbChecked;
  TabOrder := 16;
end;

{ cbrar }
cbrar := TCheckBox.Create(Page);
with cbrar do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cbrar_Caption0}');
  Left := ScaleX(318);
  Top := ScaleY(160);
  Width := ScaleX(81);
  Height := ScaleY(17);
  Checked := True;
  State := cbChecked;
  TabOrder := 17;
end;

{ cbcpio }
cbcpio := TCheckBox.Create(Page);
with cbcpio do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cbcpio_Caption0}');
  Left := ScaleX(318);
  Top := ScaleY(136);
  Width := ScaleX(73);
  Height := ScaleY(17);
  Checked := True;
  State := cbChecked;
  TabOrder := 13;
end;

{ cbreadnone }
cbreadnone := TCheckBox.Create(Page);
with cbreadnone do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cbreadnone_Caption0}');
  Left := ScaleX(0);
  Top := ScaleY(210);
  Width := ScaleX(329);
  Height := ScaleY(25);
  TabOrder := 1;
end;

{ cbace }
cbace := TCheckBox.Create(Page);
with cbace do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cbace_Caption0}');
  Left := ScaleX(6);
  Top := ScaleY(136);
  Width := ScaleX(81);
  Height := ScaleY(17);
  Checked := True;
  State := cbChecked;
  TabOrder := 10;
end;

{ cbMac }
cbMac := TCheckBox.Create(Page);
with cbMac do
begin
  Parent := Page.Surface;
  Caption := ExpandConstant('{cm:Associations_cbMac_Caption0}');
  Left := ScaleX(214);
  Top := ScaleY(184);
  Width := ScaleX(200);
  Height := ScaleY(17);
  Checked := True;
  State := cbChecked;
  TabOrder := 19;
end;
				
				  with Page do
				  begin
				    OnActivate := @Associations_Activate;
				    OnShouldSkipPage := @Associations_ShouldSkipPage;
				    OnBackButtonClick := @Associations_BackButtonClick;
				    OnNextButtonClick := @Associations_NextButtonClick;
				    OnCancelButtonClick := @Associations_CancelButtonClick;
				  end;
				
				  Result := Page.ID;
				end;
				
{ context_Activate }

procedure context_Activate(Page: TWizardPage);
begin
  // enter code here...
end;

{ context_ShouldSkipPage }

function context_ShouldSkipPage(Page: TWizardPage): Boolean;
begin
	if (radiobuttoninstall1.Checked = True) or (radiobuttoninstall3.Checked = True) or (radiobuttoninstall4.Checked = True) then Result := True
  else Result := False;
end;

{ context_BackButtonClick }

function context_BackButtonClick(Page: TWizardPage): Boolean;
begin
  Result := True;
end;

{ context_NextkButtonClick }

function context_NextButtonClick(Page: TWizardPage): Boolean;
begin
  Result := True;
end;

{ context_CancelButtonClick }

procedure context_CancelButtonClick(Page: TWizardPage; var Cancel, Confirm: Boolean);
begin
  // enter code here...
end;

{ context_CreatePage }

function context_CreatePage(PreviousPageId: Integer): Integer;
var
  Page: TWizardPage;
begin
  Page := CreateCustomPage(
    PreviousPageId,
    ExpandConstant('{cm:context_Caption}'),
    ExpandConstant('{cm:context_Description}')
  );

{ Bevel1context }
  Bevel1context := TBevel.Create(Page);
  with Bevel1context do
  begin
    Parent := Page.Surface;
    Left := ScaleX(8);
    Top := ScaleY(2);
    Width := ScaleX(396);
    Height := ScaleY(210);
  end;

  { cbcontextnone }
  cbcontextnone := TCheckBox.Create(Page);
  with cbcontextnone do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_cbcontextnone_Caption0}');
    Left := ScaleX(8);
    Top := ScaleY(214);
    Width := ScaleX(240);
    Height := ScaleY(17);
    TabOrder := 0;
  end;

  { cbcascaded }
  cbcascaded := TCheckBox.Create(Page);
  with cbcascaded do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_cbcascaded_Caption0}');
    Left := ScaleX(260);
    Top := ScaleY(214);
    Width := ScaleX(185);
    Height := ScaleY(17);
    Checked := True;
    State := cbChecked;
    TabOrder := 1;
  end;
  if (GetWindowsVersion <= $06000000) then cbcascaded.visible:=false;

  { cbcontextadd2archive }
  cbcontextadd2archive := TCheckBox.Create(Page);
  with cbcontextadd2archive do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_cbcontextadd2archive_Caption0}');
    Left := ScaleX(16);
    Top := ScaleY(8);
    Width := ScaleX(169);
    Height := ScaleY(17);
    Checked := True;
    State := cbChecked;
    TabOrder := 2;
  end;
  
  { cbcontextadd2archiveseparate }
  cbcontextadd2archiveseparate := TCheckBox.Create(Page);
  with cbcontextadd2archiveseparate do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_cbcontextadd2archiveseparate_Caption0}');
    Left := ScaleX(16);
    Top := ScaleY(28);
    Width := ScaleX(169);
    Height := ScaleY(17);
    TabOrder := 3;
  end;

  { cbcontextsfx }
  cbcontextsfx := TCheckBox.Create(Page);
  with cbcontextsfx do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_cbcontextsfx_Caption0}');
    Left := ScaleX(16);
    Top := ScaleY(48);
    Width := ScaleX(169);
    Height := ScaleY(17);
    TabOrder := 4;
  end;

  { cbcontext7zs }
  cbcontext7zs := TCheckBox.Create(Page);
  with cbcontext7zs do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_cbcontext7zs_Caption0}');
    Left := ScaleX(16);
    Top := ScaleY(68);
    Width := ScaleX(169);
    Height := ScaleY(17);
    Checked := True;
    State := cbChecked;
    TabOrder := 5;
  end;

  { CheckBox3f }
  CheckBox3f := TCheckBox.Create(Page);
  with CheckBox3f do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_CheckBox3f_Caption0}');
    Left := ScaleX(16);
    Top := ScaleY(88);
    Width := ScaleX(169);
    Height := ScaleY(17);
    TabOrder := 6;
  end;

  { CheckBox3 }
  CheckBox3 := TCheckBox.Create(Page);
  with CheckBox3 do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_CheckBox3_Caption0}');
    Left := ScaleX(16);
    Top := ScaleY(108);
    Width := ScaleX(169);
    Height := ScaleY(17);
    TabOrder := 7;
  end;
  
  { cbcontextzips }
  cbcontextzips := TCheckBox.Create(Page);
  with cbcontextzips do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_cbcontextzips_Caption0}');
    Left := ScaleX(16);
    Top := ScaleY(128);
    Width := ScaleX(169);
    Height := ScaleY(17);
    Checked := True;
    State := cbChecked;
    TabOrder := 8;
  end;
  
  { CheckBox4 }
  CheckBox4 := TCheckBox.Create(Page);
  with CheckBox4 do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_CheckBox4_Caption0}');
    Left := ScaleX(16);
    Top := ScaleY(148);
    Width := ScaleX(169);
    Height := ScaleY(17);
    TabOrder := 9;
  end;

  { cbcontext7zsenc }
  cbcontext7zsenc := TCheckBox.Create(Page);
  with cbcontext7zsenc do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_cbcontext7zsenc_Caption0}');
    Left := ScaleX(16);
    Top := ScaleY(168);
    Width := ScaleX(169);
    Height := ScaleY(17);
    Checked := True;
    State := cbChecked;
    TabOrder := 10;
  end;

  { cbcontextzipmail }
  cbcontextzipmail := TCheckBox.Create(Page);
  with cbcontextzipmail do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_cbcontextzipmail_Caption0}');
    Left := ScaleX(16);
    Top := ScaleY(188);
    Width := ScaleX(169);
    Height := ScaleY(17);
    TabOrder := 11;
  end;

  { cbcontextsplit }
  cbcontextsplit := TCheckBox.Create(Page);
  with cbcontextsplit do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_cbcontextsplit_Caption0}');
    Left := ScaleX(208);
    Top := ScaleY(8);
    Width := ScaleX(177);
    Height := ScaleY(17);
    TabOrder := 12;
  end;

  { cbcontextconvert }
  cbcontextconvert := TCheckBox.Create(Page);
  with cbcontextconvert do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_cbcontextconvert_Caption0}');
    Left := ScaleX(208);
    Top := ScaleY(28);
    Width := ScaleX(177);
    Height := ScaleY(17);
    Checked := True;
    State := cbChecked;
    TabOrder := 13;
  end;

  { cbcontextext }
  cbcontextext := TCheckBox.Create(Page);
  with cbcontextext do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_cbcontextext_Caption0}');
    Left := ScaleX(208);
    Top := ScaleY(48);
    Width := ScaleX(193);
    Height := ScaleY(17);
    Checked := True;
    State := cbChecked;
    TabOrder := 14;
  end;
  
  { cbcontextext2here }
  cbcontextext2here := TCheckBox.Create(Page);
  with cbcontextext2here do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_cbcontextext2here_Caption0}');
    Left := ScaleX(208);
    Top := ScaleY(68);
    Width := ScaleX(193);
    Height := ScaleY(17);
    Checked := True;
    State := cbChecked;
    TabOrder := 15;
  end;

  { cbcontextext2smart }
  cbcontextext2smart := TCheckBox.Create(Page);
  with cbcontextext2smart do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_cbcontextext2smart_Caption0}');
    Left := ScaleX(208);
    Top := ScaleY(88);
    Width := ScaleX(177);
    Height := ScaleY(17);
    Checked := True;
    State := cbChecked;
    TabOrder := 16;
  end;

  { cbcontextext2folder }
  cbcontextext2folder := TCheckBox.Create(Page);
  with cbcontextext2folder do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_cbcontextext2folder_Caption0}');
    Left := ScaleX(208);
    Top := ScaleY(108);
    Width := ScaleX(177);
    Height := ScaleY(17);
    Checked := True;
    State := cbChecked;
    TabOrder := 17;
  end;

  { cbcontexttest }
  cbcontexttest := TCheckBox.Create(Page);
  with cbcontexttest do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_cbcontexttest_Caption0}');
    Left := ScaleX(208);
    Top := ScaleY(128);
    Width := ScaleX(185);
    Height := ScaleY(17);
    TabOrder := 18;
  end;

  { cbcontextbrowse }
  cbcontextbrowse := TCheckBox.Create(Page);
  with cbcontextbrowse do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_cbcontextbrowse_Caption0}');
    Left := ScaleX(208);
    Top := ScaleY(148);
    Width := ScaleX(169);
    Height := ScaleY(17);
    Checked := True;
    State := cbChecked;
    TabOrder := 19;
  end;

  { cbcontextcrc }
  cbcontextcrc := TCheckBox.Create(Page);
  with cbcontextcrc do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_cbcontextcrc_Caption0}');
    Left := ScaleX(208);
    Top := ScaleY(168);
    Width := ScaleX(169);
    Height := ScaleY(17);
    Checked := True;
    State := cbChecked;
    TabOrder := 20;
  end;

  { cbcontextwipe }
  cbcontextwipe := TCheckBox.Create(Page);
  with cbcontextwipe do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:context_cbcontextwipe_Caption0}');
    Left := ScaleX(208);
    Top := ScaleY(188);
    Width := ScaleX(177);
    Height := ScaleY(17);
    TabOrder := 21;
  end;

  with Page do
  begin
    OnActivate := @context_Activate;
    OnShouldSkipPage := @context_ShouldSkipPage;
    OnBackButtonClick := @context_BackButtonClick;
    OnNextButtonClick := @context_NextButtonClick;
    OnCancelButtonClick := @context_CancelButtonClick;
  end;

  Result := Page.ID;
end;
    
{ Links_Activate }

procedure Links_Activate(Page: TWizardPage);
begin
  // enter code here...
end;

{ Links_ShouldSkipPage }

function Links_ShouldSkipPage(Page: TWizardPage): Boolean;
begin
if (radiobuttoninstall1.Checked = True) or (radiobuttoninstall3.Checked = True) or (radiobuttoninstall4.Checked = True) then Result := True
else Result := False;
end;

{ Links_BackButtonClick }

function Links_BackButtonClick(Page: TWizardPage): Boolean;
begin
  Result := True;
end;

{ Links_NextkButtonClick }

function Links_NextButtonClick(Page: TWizardPage): Boolean;
begin
  Result := True;
end;

{ Links_CancelButtonClick }

procedure Links_CancelButtonClick(Page: TWizardPage; var Cancel, Confirm: Boolean);
begin
  // enter code here...
end;

{ Links_CreatePage }

function Links_CreatePage(PreviousPageId: Integer): Integer;
var
  Page: TWizardPage;
begin
  Page := CreateCustomPage(
    PreviousPageId,
    ExpandConstant('{cm:Links_Caption}'),
    ExpandConstant('{cm:Links_Description}')
  );

    { Bevel1fun }
    Bevel1fun := TBevel.Create(Page);
    with Bevel1fun do
    begin
      Parent := Page.Surface;
      Left := ScaleX(8);
      Top := ScaleY(2);
      Width := ScaleX(396);
      Height := ScaleY(210);
    end;
    
    { cbfunext2here }
    cbfunext2here := TCheckBox.Create(Page);
    with cbfunext2here do
    begin
      Parent := Page.Surface;
      Left := ScaleX(208);
      Top := ScaleY(68);
      Width := ScaleX(177);
      Height := ScaleY(17);
      Caption := ExpandConstant('{cm:Links_cbfunext2here_Caption0}');
      Checked := True;
      ShowHint := True;
      State := cbChecked;
      TabOrder := 14;
    end;
    
    { cbfun7z }
    cbfun7z := TCheckBox.Create(Page);
    with cbfun7z do
    begin
      Parent := Page.Surface;
      Left := ScaleX(16);
      Top := ScaleY(28);
      Width := ScaleX(169);
      Height := ScaleY(17);
      Caption := ExpandConstant('{cm:Links_cbfun7z_Caption0}');
      ShowHint := True;
      TabOrder := 2;
    end;
    
    { cbfunzip }
    cbfunzip := TCheckBox.Create(Page);
    with cbfunzip do
    begin
      Parent := Page.Surface;
      Left := ScaleX(16);
      Top := ScaleY(88);
      Width := ScaleX(177);
      Height := ScaleY(17);
      Caption := ExpandConstant('{cm:Links_cbfunzip_Caption0}');
      ShowHint := True;
      TabOrder := 5;
    end;
    
    { cbfunsfx }
    cbfunsfx := TCheckBox.Create(Page);
    with cbfunsfx do
    begin
      Parent := Page.Surface;
      Left := ScaleX(16);
      Top := ScaleY(148);
      Width := ScaleX(177);
      Height := ScaleY(17);
      Caption := ExpandConstant('{cm:Links_cbfunsfx_Caption0}');
      ShowHint := True;
      TabOrder := 8;
    end;
    
    { cbfunsplit }
    cbfunsplit := TCheckBox.Create(Page);
    with cbfunsplit do
    begin
      Parent := Page.Surface;
      Left := ScaleX(208);
      Top := ScaleY(188);
      Width := ScaleX(177);
      Height := ScaleY(17);
      Caption := ExpandConstant('{cm:Links_cbfunsplit_Caption0}');
      ShowHint := True;
      TabOrder := 20;
    end;
    
    { cbfunnone }
    cbfunnone := TCheckBox.Create(Page);
    with cbfunnone do
    begin
      Parent := Page.Surface;
      Left := ScaleX(8);
      Top := ScaleY(210);
      Width := ScaleX(321);
      Height := ScaleY(25);
      Caption := ExpandConstant('{cm:Links_cbfunnone_Caption0}');
      TabOrder := 0;
    end;
    
    { cbfunext2folder }
    cbfunext2folder := TCheckBox.Create(Page);
    with cbfunext2folder do
    begin
      Parent := Page.Surface;
      Left := ScaleX(208);
      Top := ScaleY(88);
      Width := ScaleX(180);
      Height := ScaleY(17);
      Caption := ExpandConstant('{cm:Links_cbfunext2folder_Caption0}');
      Checked := True;
      ShowHint := True;
      State := cbChecked;
      TabOrder := 15;
    end;
    
    { cbfun7zs }
    cbfun7zs := TCheckBox.Create(Page);
    with cbfun7zs do
    begin
      Parent := Page.Surface;
      Left := ScaleX(16);
      Top := ScaleY(48);
      Width := ScaleX(161);
      Height := ScaleY(17);
      Caption := ExpandConstant('{cm:Links_cbfun7zs_Caption0}');
      ShowHint := True;
      TabOrder := 3;
    end;
    
    { cbfunzips }
    cbfunzips := TCheckBox.Create(Page);
    with cbfunzips do
    begin
      Parent := Page.Surface;
      Left := ScaleX(16);
      Top := ScaleY(108);
      Width := ScaleX(153);
      Height := ScaleY(17);
      Caption := ExpandConstant('{cm:Links_cbfunzips_Caption0}');
      ShowHint := True;
      TabOrder := 6;
    end;
    
    { cbfunencrypt }
    cbfunencrypt := TCheckBox.Create(Page);
    with cbfunencrypt do
    begin
      Parent := Page.Surface;
      Left := ScaleX(16);
      Top := ScaleY(168);
      Width := ScaleX(169);
      Height := ScaleY(17);
      Caption := ExpandConstant('{cm:Links_cbfunencrypt_Caption0}');
      ShowHint := True;
      TabOrder := 9;
    end;
    
    { cbfuntest }
    cbfuntest := TCheckBox.Create(Page);
    with cbfuntest do
    begin
      Parent := Page.Surface;
      Left := ScaleX(208);
      Top := ScaleY(148);
      Width := ScaleX(185);
      Height := ScaleY(17);
      Caption := ExpandConstant('{cm:Links_cbfuntest_Caption0}');
      Checked := True;
      ShowHint := True;
      State := cbChecked;
      TabOrder := 18;
    end;
    
    { cbfunzipmail }
    cbfunzipmail := TCheckBox.Create(Page);
    with cbfunzipmail do
    begin
      Parent := Page.Surface;
      Left := ScaleX(16);
      Top := ScaleY(128);
      Width := ScaleX(153);
      Height := ScaleY(17);
      Caption := ExpandConstant('{cm:Links_cbfunzipmail_Caption0}');
      ShowHint := True;
      TabOrder := 7;
    end;
    
    { cbfun7zmail }
    cbfun7zmail := TCheckBox.Create(Page);
    with cbfun7zmail do
    begin
      Parent := Page.Surface;
      Left := ScaleX(16);
      Top := ScaleY(68);
      Width := ScaleX(161);
      Height := ScaleY(17);
      Caption := ExpandConstant('{cm:Links_cbfun7zmail_Caption0}');
      ShowHint := True;
      TabOrder := 4;
    end;
    
    { cbfunwipe }
    cbfunwipe := TCheckBox.Create(Page);
    with cbfunwipe do
    begin
      Parent := Page.Surface;
      Left := ScaleX(208);
      Top := ScaleY(168);
      Width := ScaleX(169);
      Height := ScaleY(17);
      Caption := ExpandConstant('{cm:Links_cbfunwipe_Caption0}');
      ShowHint := True;
      TabOrder := 19;
    end;
    
    { cbfunext2to }
    cbfunext2to := TCheckBox.Create(Page);
    with cbfunext2to do
    begin
      Parent := Page.Surface;
      Left := ScaleX(208);
      Top := ScaleY(128);
      Width := ScaleX(177);
      Height := ScaleY(17);
      Caption := ExpandConstant('{cm:Links_cbfunext2to_Caption0}');
      Checked := True;
      ShowHint := True;
      State := cbChecked;
      TabOrder := 17;
    end;
    
    { CheckBoxbrowsepath }
    CheckBoxbrowsepath := TCheckBox.Create(Page);
    with CheckBoxbrowsepath do
    begin
      Parent := Page.Surface;
      Left := ScaleX(208);
      Top := ScaleY(28);
      Width := ScaleX(177);
      Height := ScaleY(17);
      Caption := ExpandConstant('{cm:Links_CheckBoxbrowsepath_Caption0}');
      Checked := True;
      ShowHint := True;
      State := cbChecked;
      TabOrder := 12;
    end;
    
    { CheckBoxcommand }
    CheckBoxcommand := TCheckBox.Create(Page);
    with CheckBoxcommand do
    begin
      Parent := Page.Surface;
      Left := ScaleX(208);
      Top := ScaleY(8);
      Width := ScaleX(177);
      Height := ScaleY(17);
      Caption := ExpandConstant('{cm:Links_CheckBoxcommand_Caption0}');
      ShowHint := True;
      TabOrder := 11;
    end;
    
    { cbfunadd }
    cbfunadd := TCheckBox.Create(Page);
    with cbfunadd do
    begin
      Parent := Page.Surface;
      Left := ScaleX(16);
      Top := ScaleY(8);
      Width := ScaleX(169);
      Height := ScaleY(17);
      Caption := ExpandConstant('{cm:Links_cbfunadd_Caption0}');
      Checked := True;
      ShowHint := True;
      State := cbChecked;
      TabOrder := 1;
    end;
    
    { cbfunopen }
    cbfunopen := TCheckBox.Create(Page);
    with cbfunopen do
    begin
      Parent := Page.Surface;
      Left := ScaleX(208);
      Top := ScaleY(48);
      Width := ScaleX(169);
      Height := ScaleY(17);
      Caption := ExpandConstant('{cm:Links_cbfunopen_Caption0}');
      Checked := True;
      ShowHint := True;
      State := cbChecked;
      TabOrder := 13;
    end;
    
    { cbfunconvert }
    cbfunconvert := TCheckBox.Create(Page);
    with cbfunconvert do
    begin
      Parent := Page.Surface;
      Left := ScaleX(16);
      Top := ScaleY(188);
      Width := ScaleX(177);
      Height := ScaleY(17);
      Caption := ExpandConstant('{cm:Links_cbfunconvert_Caption0}');
      ShowHint := True;
      TabOrder := 10;
    end;
    
    { cbfunext2newfolder }
    cbfunext2newfolder := TCheckBox.Create(Page);
    with cbfunext2newfolder do
    begin
      Parent := Page.Surface;
      Left := ScaleX(208);
      Top := ScaleY(108);
      Width := ScaleX(180);
      Height := ScaleY(17);
      Caption := ExpandConstant('{cm:Links_cbfunext2newfolder_Caption0}');
      Checked := True;
      ShowHint := True;
      State := cbChecked;
      TabOrder := 16;
    end;

  with Page do
  begin
    OnActivate := @Links_Activate;
    OnShouldSkipPage := @Links_ShouldSkipPage;
    OnBackButtonClick := @Links_BackButtonClick;
    OnNextButtonClick := @Links_NextButtonClick;
    OnCancelButtonClick := @Links_CancelButtonClick;
  end;

  Result := Page.ID;
end;
				
				{ InitializeWizard }
				
				procedure InitializeWizard();
				begin		
          Associations_CreatePage(wpSelectDir);//InfoBefore);
				  Links_CreatePage(wpSelectDir);
				  context_CreatePage(wpSelectDir);
				  install_CreatePage(wpInfoBefore);//(wpWelcome);
				end;

function shouldskippage(CurPageID: Integer): Boolean;
begin
if (radiobuttoninstall1.Checked = True) or (radiobuttoninstall4.Checked = True) then
   begin
   if curpageid=wpSelectDir then Result := True;
	 if curpageid=wpSelectTasks then Result := True;
	 end;
end;

procedure clearlinks;
begin
deletefile(expandconstant('{sendto}')+'\Add to archive.lnk');
deletefile(expandconstant('{sendto}')+'\Convert.lnk');
deletefile(expandconstant('{sendto}')+'\Add to 7Z.lnk');
deletefile(expandconstant('{sendto}')+'\Add to 7Z and send by mail.lnk');
deletefile(expandconstant('{sendto}')+'\Add to separate 7Z.lnk');
deletefile(expandconstant('{sendto}')+'\Add to ZIP.lnk');
deletefile(expandconstant('{sendto}')+'\Add to ZIP and send by mail.lnk');
deletefile(expandconstant('{sendto}')+'\Add to separate ZIP.lnk');
deletefile(expandconstant('{sendto}')+'\Add to self-extracting archive.lnk');
deletefile(expandconstant('{sendto}')+'\Encrypt (PEA).lnk');
deletefile(expandconstant('{sendto}')+'\Split file.lnk');
deletefile(expandconstant('{sendto}')+'\Secure delete.lnk');
deletefile(expandconstant('{sendto}')+'\Extract here.lnk');
deletefile(expandconstant('{sendto}')+'\Extract....lnk');
deletefile(expandconstant('{sendto}')+'\Extract here (in new folder).lnk');
deletefile(expandconstant('{sendto}')+'\Extract here (smart new folder).lnk');
deletefile(expandconstant('{sendto}')+'\Open with PeaZip.lnk');
deletefile(expandconstant('{sendto}')+'\Test archive(s).lnk');
deletefile(expandconstant('{sendto}')+'\Open as archive.lnk');
deletefile(expandconstant('{sendto}')+'\Browse path with PeaZip.lnk');
deletefile(expandconstant('{sendto}')+'\Open command prompt here.lnk');
//legacy
deletefile(expandconstant('{sendto}')+'\Encrypt.lnk');
deletefile(expandconstant('{sendto}')+'\Add to .7Z.lnk');
deletefile(expandconstant('{sendto}')+'\Add to .7Z and send by mail.lnk');
deletefile(expandconstant('{sendto}')+'\Add to separate .7Z.lnk');
deletefile(expandconstant('{sendto}')+'\Add to .ZIP.lnk');
deletefile(expandconstant('{sendto}')+'\Add to .ZIP and send by mail.lnk');
deletefile(expandconstant('{sendto}')+'\Add to separate .ZIP.lnk');
deletefile(expandconstant('{sendto}')+'\Add to sfx and send by mail.lnk');
end;

procedure clearcontextlegacy;
begin
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\Directory\Background\shell\Browse path with PeaZip');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\Add to archive');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\Add to 7Z');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\Encrypt (7Z)');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\Add to 7Z, fastest');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\Add to 7Z, normal');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\Add to 7Z, ultra');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\Add to ZIP');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\Add to ZIP, fastest');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\Add to ZIP, normal');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\Add to ZIP, ultra');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\Zip and mail');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\Add to self-extracting archive');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\Add to separate archive(s)');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\Add to separate 7Z');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\Add to separate ZIP');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\Open as archive');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\Browse path with PeaZip');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\Split file');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\Convert');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\Secure delete');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\CRC, hash and file tools');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\Extract here (smart new folder)');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\Directory\shell\Add to archive');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\Directory\shell\Add to 7Z');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\Directory\shell\Encrypt (7Z)');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\Directory\shell\Add to 7Z, fastest');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\Directory\shell\Add to 7Z, normal');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\Directory\shell\Add to 7Z, ultra');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\Directory\shell\Add to ZIP');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\Directory\shell\Add to ZIP, fastest');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\Directory\shell\Add to ZIP, normal');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\Directory\shell\Add to ZIP, ultra');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\Directory\shell\Zip and mail');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\Directory\shell\Add to self-extracting archive');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\Directory\shell\Add to separate archive(s)');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\Directory\shell\Add to separate 7Z');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\Directory\shell\Add to separate ZIP');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\Directory\shell\Browse path with PeaZip');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\Directory\shell\Split file');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\Directory\shell\Convert');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\Directory\shell\Secure delete');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\Directory\shell\CRC, hash and file tools');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\Directory\shell\Extract...');
//local
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\Directory\Background\shell\Browse path with PeaZip');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\Add to archive');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\Add to 7Z');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\Encrypt (7Z)');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\Add to 7Z, fastest');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\Add to 7Z, normal');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\Add to 7Z, ultra');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\Add to ZIP');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\Add to ZIP, fastest');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\Add to ZIP, normal');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\Add to ZIP, ultra');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\Zip and mail');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\Add to self-extracting archive');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\Add to separate archive(s)');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\Add to separate 7Z');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\Add to separate ZIP');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\Open as archive');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\Browse path with PeaZip');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\Split file');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\Convert');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\Secure delete');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\CRC, hash and file tools');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\Extract...');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\Extract here');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\Extract here (smart new folder)');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\Extract here (in new folder)');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\Test archive(s)');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\Directory\shell\Add to archive');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\Directory\shell\Add to 7Z');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\Directory\shell\Encrypt (7Z)');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\Directory\shell\Add to 7Z, fastest');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\Directory\shell\Add to 7Z, normal');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\Directory\shell\Add to 7Z, ultra');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\Directory\shell\Add to ZIP');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\Directory\shell\Add to ZIP, fastest');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\Directory\shell\Add to ZIP, normal');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\Directory\shell\Add to ZIP, ultra');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\Directory\shell\Zip and mail');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\Directory\shell\Add to self-extracting archive');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\Directory\shell\Add to separate archive(s)');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\Directory\shell\Add to separate 7Z');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\Directory\shell\Add to separate ZIP');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\Directory\shell\Browse path with PeaZip');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\Directory\shell\Split file');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\Directory\shell\Convert');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\Directory\shell\Secure delete');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\Directory\shell\CRC, hash and file tools');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\Directory\shell\Extract...');
//legacy
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\Add to .7Z');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\Add to .7Z, fastest');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\Add to .7Z, normal');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\Add to .7Z, ultra');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\Add to .ZIP');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\Add to .ZIP, fastest');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\Add to .ZIP, normal');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\Add to .ZIP, ultra');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\Add to separate .7Z');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\Add to separate .ZIP');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\Directory\shell\Add to .7Z');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\Directory\shell\Add to .7Z, fastest');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\Directory\shell\Add to .7Z, normal');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\Directory\shell\Add to .7Z, ultra');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\Directory\shell\Add to .ZIP');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\Directory\shell\Add to .ZIP, fastest');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\Directory\shell\Add to .ZIP, normal');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\Directory\shell\Add to .ZIP, ultra');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\Directory\shell\Add to separate .7Z');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\Directory\shell\Add to separate .ZIP');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\Add to .7Z');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\Add to .7Z, fastest');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\Add to .7Z, normal');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\Add to .7Z, ultra');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\Add to .ZIP');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\Add to .ZIP, fastest');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\Add to .ZIP, normal');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\Add to .ZIP, ultra');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\Add to separate .7Z');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\Add to separate .ZIP');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\Directory\shell\Add to .7Z');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\Directory\shell\Add to .7Z, fastest');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\Directory\shell\Add to .7Z, normal');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\Directory\shell\Add to .7Z, ultra');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\Directory\shell\Add to .ZIP');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\Directory\shell\Add to .ZIP, fastest');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\Directory\shell\Add to .ZIP, normal');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\Directory\shell\Add to .ZIP, ultra');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\Directory\shell\Add to separate .7Z');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\Directory\shell\Add to separate .ZIP');
end;

procedure clearcontextseven;
var s3264:integer;
begin
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\Directory\Background\shell\Browse path with PeaZip');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\*\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\AllFileSystemObjects\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\Directory\Background\shell\Browse path with PeaZip');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\*\shell\PeaZip');
RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\AllFileSystemObjects\shell\PeaZip');
if IsWin64 then s3264:=HKLM64 else s3264:=HKLM32;
   RegDeleteKeyIncludingSubkeys(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate');
   RegDeleteKeyIncludingSubkeys(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatesingle');
   RegDeleteKeyIncludingSubkeys(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7z');
   RegDeleteKeyIncludingSubkeys(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7zencrypt');
   RegDeleteKeyIncludingSubkeys(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7zfastest');
   RegDeleteKeyIncludingSubkeys(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7znormal');
   RegDeleteKeyIncludingSubkeys(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7zultra');
   RegDeleteKeyIncludingSubkeys(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezip');
   RegDeleteKeyIncludingSubkeys(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipfastest');
   RegDeleteKeyIncludingSubkeys(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipnormal');
   RegDeleteKeyIncludingSubkeys(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipultra');
   RegDeleteKeyIncludingSubkeys(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipmail');
   RegDeleteKeyIncludingSubkeys(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatesfx');
   RegDeleteKeyIncludingSubkeys(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2browseasarchive');
   RegDeleteKeyIncludingSubkeys(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2browsepath');
   RegDeleteKeyIncludingSubkeys(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2split');
   RegDeleteKeyIncludingSubkeys(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2convert');
   RegDeleteKeyIncludingSubkeys(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2wipe');
   RegDeleteKeyIncludingSubkeys(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2here');
   RegDeleteKeyIncludingSubkeys(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2smart');
   RegDeleteKeyIncludingSubkeys(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2folder');
   RegDeleteKeyIncludingSubkeys(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2main');
   RegDeleteKeyIncludingSubkeys(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2a');
   RegDeleteKeyIncludingSubkeys(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2test');
   RegDeleteKeyIncludingSubkeys(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.analyze');
end;

procedure clearassociations;
begin
if RegKeyExists(HKLM, 'SOFTWARE\Classes\SOFTWARE\PeaZip') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\SOFTWARE\PeaZip');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\SOFTWARE\PeaZip_additional') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\SOFTWARE\PeaZip_additional');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.PEA') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.PEA');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.001') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.001');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.7Z') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.7Z');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.XZ') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.XZ');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.ARC') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.ARC');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.WRC') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.WRC');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.BR') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.BR');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.ZST') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.ZST');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.TZST') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.TZST');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.LPAQ1') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.LPAQ1');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.LPAQ5') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.LPAQ5');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.LPAQ8') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.LPAQ8');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.PAQ8F') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.PAQ8F');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.PAQ8JD') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.PAQ8JD');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.PAQ8L') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.PAQ8L');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.PAQ8O') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.PAQ8O');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.ZPAQ') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.ZPAQ');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.QUAD') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.QUAD');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.BALZ') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.BALZ');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.BCM') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.BCM');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.TAR') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.TAR');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.GZ') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.GZ');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.TGZ') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.TGZ');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.BZ') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.BZ');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.BZ2') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.BZ2');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.TBZ') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.TBZ');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.TBZ2') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.TBZ2');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.ZIP') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.ZIP');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.ZIPX') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.ZIPX');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.ACE') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.ACE');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.ARJ') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.ARJ');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.CAB') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.CAB');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.CPIO') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.CPIO');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.Z') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.Z');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.TZ') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.TZ');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.TAZ') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.TAZ');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.ISO') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.ISO');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.UDF') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.UDF');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.LHA') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.LHA');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.DEB') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.DEB');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.PET') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.PET');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.PUP') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.PUP');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.RPM') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.RPM');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.SLP') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.SLP');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.LZH') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.LZH');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.DMG') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.DMG');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.HFS') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.HFS');
if RegKeyExists(HKLM, 'SOFTWARE\Classes\PeaZip.RAR') then RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Classes\PeaZip.RAR');
//local
if RegKeyExists(HKCU, 'SOFTWARE\Classes\SOFTWARE\PeaZip') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\SOFTWARE\PeaZip');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\SOFTWARE\PeaZip_additional') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\SOFTWARE\PeaZip_additional');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.PEA') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.PEA');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.001') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.001');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.7Z') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.7Z');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.XZ') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.XZ');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.ARC') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.ARC');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.WRC') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.WRC');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.BR') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.BR');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.ZST') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.ZST');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.TZST') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.TZST');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.LPAQ1') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.LPAQ1');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.LPAQ5') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.LPAQ5');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.LPAQ8') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.LPAQ8');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.PAQ8F') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.PAQ8F');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.PAQ8JD') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.PAQ8JD');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.PAQ8L') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.PAQ8L');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.PAQ8O') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.PAQ8O');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.ZPAQ') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.ZPAQ');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.QUAD') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.QUAD');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.BALZ') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.BALZ');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.BCM') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.BCM');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.TAR') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.TAR');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.GZ') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.GZ');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.TGZ') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.TGZ');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.BZ') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.BZ');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.BZ2') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.BZ2');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.TBZ') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.TBZ');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.TBZ2') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.TBZ2');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.ZIP') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.ZIP');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.ZIPX') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.ZIPX');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.ACE') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.ACE');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.ARJ') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.ARJ');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.CAB') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.CAB');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.CPIO') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.CPIO');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.Z') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.Z');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.TZ') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.TZ');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.TAZ') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.TAZ');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.ISO') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.ISO');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.UDF') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.UDF');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.LHA') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.LHA');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.DEB') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.DEB');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.PET') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.PET');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.PUP') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.PUP');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.RPM') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.RPM');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.SLP') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.SLP');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.LZH') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.LZH');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.DMG') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.DMG');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.HFS') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.HFS');
if RegKeyExists(HKCU, 'SOFTWARE\Classes\PeaZip.RAR') then RegDeleteKeyIncludingSubkeys(HKCU, 'SOFTWARE\Classes\PeaZip.RAR');
end;

procedure contextseven;
var
  s,sfs,sall,smenuadd:ansistring;
  s3264:integer;
begin
      s:='';
      sfs:='';
      sall:='';

      s:=s+'PeaZip.ext2browseasarchive; ';
      if cbcontextbrowse.state = cbChecked then s:=s+'PeaZip.ext2browsepath; '; 
      if cbcontextadd2archive.state = cbChecked then s:=s+'PeaZip.add2separate; ';       
      if cbcontextadd2archiveseparate.state = cbChecked then s:=s+'PeaZip.add2separatesingle; ';
      if cbcontextsfx.state = cbChecked then s:=s+'PeaZip.add2separatesfx; ';
      if cbcontext7zs.state = cbChecked then s:=s+'PeaZip.add2separate7z; ';
      if checkbox3f.state = cbChecked then s:=s+'PeaZip.add2separate7zfastest; ';
      if checkbox3.state = cbChecked then s:=s+'PeaZip.add2separate7zultra; ';
      if cbcontextzips.state = cbChecked then s:=s+'PeaZip.add2separatezip; ';
      if checkbox4.state = cbChecked then s:=s+'PeaZip.add2separatezipfastest; ';
      if cbcontext7zsenc.state = cbChecked then s:=s+'PeaZip.add2separate7zencrypt; ';
      if cbcontextzipmail.state = cbChecked then s:=s+'PeaZip.add2separatezipmail; ';
      if cbcontextsplit.state = cbChecked then s:=s+'PeaZip.add2split; ';      
      if cbcontextconvert.state = cbChecked then s:=s+'PeaZip.add2convert; ';
      
      if cbcontextadd2archive.state = cbChecked then smenuadd:='PeaZip.add2separate'
      else
         if cbcontextadd2archiveseparate.state = cbChecked then smenuadd:='PeaZip.add2separatesingle'
         else
            if cbcontextsfx.state = cbChecked then smenuadd:='PeaZip.add2separatesfx'
            else
               if cbcontext7zs.state = cbChecked then smenuadd:='PeaZip.add2separate7z'
               else
                  if checkbox3f.state = cbChecked then smenuadd:='PeaZip.add2separate7zfastest'
                  else
                     if checkbox3.state = cbChecked then smenuadd:='PeaZip.add2separate7zultra'
                     else
                        if cbcontextzips.state = cbChecked then smenuadd:='PeaZip.add2separatezip'
                        else
                           if checkbox4.state = cbChecked then smenuadd:='PeaZip.add2separatezipfastest'
                           else
                              if cbcontext7zsenc.state = cbChecked then smenuadd:='PeaZip.add2separate7zencrypt'
                              else
                                 if cbcontextzipmail.state = cbChecked then smenuadd:='PeaZip.add2separatezipmail'
                                 else
                                    if cbcontextsplit.state = cbChecked then smenuadd:='PeaZip.add2split'
                                    else
                                       if cbcontextconvert.state = cbChecked then smenuadd:='PeaZip.add2convert';   

      if cbcontextcrc.state = cbChecked then s:=s+'PeaZip.analyze; ';
      if cbcontextwipe.state = cbChecked then s:=s+'PeaZip.add2wipe; ';

      sfs:='PeaZip.ext2main; '+s; //AllFileSystemObjects

      if cbcontextext.state = cbChecked then sall:=sall+'PeaZip.ext2main; ';
      if cbcontextext2here.state = cbChecked then sall:=sall+'PeaZip.ext2here; ';
      if cbcontextext2smart.state = cbChecked then sall:=sall+'PeaZip.ext2smart; ';
      if cbcontextext2folder.state = cbChecked then sall:=sall+'PeaZip.ext2folder; ';
      if cbcontexttest.state = cbChecked then sall:=sall+'PeaZip.ext2test; ';

      sall:=sall+s; //*

      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\Background\shell\Browse path with PeaZip\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2browsepath" "%V"'));

      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\PeaZip', 'SubCommands', sall);
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\PeaZip', 'MultiSelectModel', 'player');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\PeaZip\command', '', ''); //workaround: in Windows 7 it is not needed a \command key for this type of entry, but some optimization/cleaning utilities (i.e. TuneUp) would otherwise delete all entries in \shell missing a \command key
      RegDeleteValue(sLMCU, 'SOFTWARE\Classes\*\shell\PeaZip\command', ''); //the key created for the workaround is emptied to default value, otherwise it may be detected as a defective link by some utilities

      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\AllFileSystemObjects\shell\PeaZip', 'SubCommands', sall);
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\AllFileSystemObjects\shell\PeaZip', 'MultiSelectModel', 'player');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\AllFileSystemObjects\shell\PeaZip', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\AllFileSystemObjects\shell\PeaZip\command', '', ''); //workaround: in Windows 7 it is not needed a \command key for this type of entry, but some optimization/cleaning utilities (i.e. TuneUp) would otherwise delete all entries in \shell missing a \command key
      RegDeleteValue(sLMCU, 'SOFTWARE\Classes\AllFileSystemObjects\shell\PeaZip\command', ''); //the key created for the workaround is emptied to default value, otherwise it may be detected as a defective link by some utilities     

      if IsWin64 then s3264:=HKLM64 else s3264:=HKLM32;

        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate', '', '&Add to archive');
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate', 'Icon', ExpandConstant('"{app}\res\share\icons\peazip_seven.icl",2'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi" "%1"'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatesingle', '', 'Add to separate archive(s)');
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatesingle', 'Icon', ExpandConstant('"{app}\res\share\icons\peazip_seven.icl",2'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatesingle\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multiseparate" "%1"'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7z', '', 'Add to &7Z');
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7z', 'Icon', ExpandConstant('"{app}\res\share\icons\peazip_seven.icl",10'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7z\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi7z" "%1"'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7zfastest', '', 'Add to 7Z, fastest');
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7zfastest', 'Icon', ExpandConstant('"{app}\res\share\icons\peazip_seven.icl",10'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7zfastest\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi7zfastest" "%1"'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7znormal', '', 'Add to 7Z, normal');
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7znormal', 'Icon', ExpandConstant('"{app}\res\share\icons\peazip_seven.icl",10'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7znormal\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi7znormal" "%1"'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7zfastest', '', 'Add to 7Z, fastest');
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7zfastest', 'Icon', ExpandConstant('"{app}\res\share\icons\peazip_seven.icl",10'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7zfastest\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi7zfastest" "%1"'));  
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7zultra', '', 'Add to 7Z, ultra');
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7zultra', 'Icon', ExpandConstant('"{app}\res\share\icons\peazip_seven.icl",10'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7zultra\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi7zultra" "%1"'));           
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezip', '', 'Add to &ZIP');
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezip', 'Icon', ExpandConstant('"{app}\res\share\icons\peazip_seven.icl",13'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezip\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multizip" "%1"'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipfastest', '', 'Add to ZIP, fastest');
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipfastest', 'Icon', ExpandConstant('"{app}\res\share\icons\peazip_seven.icl",13'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipfastest\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multizipfastest" "%1"'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipnormal', '', 'Add to ZIP, normal');
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipnormal', 'Icon', ExpandConstant('"{app}\res\share\icons\peazip_seven.icl",13'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipnormal\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multizipnormal" "%1"'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipultra', '', 'Add to ZIP, ultra');
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipultra', 'Icon', ExpandConstant('"{app}\res\share\icons\peazip_seven.icl",13'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipultra\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multizipultra" "%1"'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7zencrypt', '', 'Encrypt (7Z)');
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7zencrypt', 'Icon', ExpandConstant('"{app}\res\share\icons\peazip_seven.icl",0'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separate7zencrypt\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi7zencrypt" "%1"'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipmail', '', 'Zip and mail');
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipmail', 'Icon', ExpandConstant('"{app}\res\share\icons\peazip_seven.icl",3'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatezipmail\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multizipmail" "%1"')); 
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatesfx', '', 'Add to self-extracting archive');
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatesfx', 'Icon', ExpandConstant('"{app}\res\share\icons\peazip_seven.icl",11'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2separatesfx\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multisfx" "%1"'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2browseasarchive', '', '&Open as archive');
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2browseasarchive', 'Icon', ExpandConstant('"{app}\peazip.exe",0'));
        RegWriteDWordValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2browseasarchive', 'CommandFlags', 32);
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2browseasarchive\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2browseasarchive" "%1"'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2browsepath', '', '&Browse path with PeaZip');
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2browsepath', 'Icon', ExpandConstant('"{app}\res\share\icons\peazip_seven.icl",8'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2browsepath\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2browsepath" "%1"'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2split', '', 'Split file');
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2split', 'Icon', ExpandConstant('"{app}\res\share\icons\peazip_seven.icl",5'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2split\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multisplit" "%1"'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2convert', '', 'Convert');
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2convert', 'Icon', ExpandConstant('"{app}\res\share\icons\peazip_seven.icl",7'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2convert\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multiconvert" "%1"'));
        RegWriteDWordValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\'+smenuadd, 'CommandFlags', 32);
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2wipe', '', 'Secure delete');
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2wipe', 'Icon', ExpandConstant('"{app}\res\share\icons\peazip_seven.icl",6'));
        RegWriteDWordValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2wipe', 'CommandFlags', 32);
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.add2wipe\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2wipe" "%1"'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2here', '', 'Extract &here');
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2here', 'Icon', ExpandConstant('"{app}\res\share\icons\peazip_seven.icl",4'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multihere" "%1"'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2smart', '', 'Extract here (&smart new folder)');
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2smart', 'Icon', ExpandConstant('"{app}\res\share\icons\peazip_seven.icl",4'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2smart\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multismart" "%1"'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2folder', '', 'Extract here (in &new folder)');
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2folder', 'Icon', ExpandConstant('"{app}\res\share\icons\peazip_seven.icl",4'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2folder\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multifolder" "%1"'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2main', '', '&Extract...');
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2main', 'Icon', ExpandConstant('"{app}\res\share\icons\peazip_seven.icl",4'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2main\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2a', '', 'Extract archives');
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2a', 'Icon', ExpandConstant('"{app}\res\share\icons\peazip_seven.icl",4'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2a\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2test', '', 'Test archive(s)');
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2test', 'Icon', ExpandConstant('"{app}\res\share\icons\peazip_seven.icl",1'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.ext2test\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2test" "%1"'));
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.analyze', '', 'CRC, hash and file tools');
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.analyze', 'Icon', ExpandConstant('"{app}\res\share\icons\peazip_seven.icl",9'));
        RegWriteDWordValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.analyze', 'CommandFlags', 32);
        RegWriteStringValue(s3264, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\PeaZip.analyze\command', '', ExpandConstant('"{app}\PEA.EXE" "PEAUTILS" "12" "%1"'));         

end;

procedure contextlegacy;
begin

    if cbcontextadd2archive.state = cbChecked then
       begin
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Add to archive\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi" "%1"'));
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Add to archive', 'MultiSelectModel', 'player');
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Add to archive', '', '&Add to archive');
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\Add to archive\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi" "%1"'));
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\Add to archive', 'MultiSelectModel', 'player');
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\Add to archive', '', '&Add to archive');
       end;

    if cbcontext7zs.state = cbChecked then
       begin
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Add to 7Z\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi7z" "%1"'));
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Add to 7Z', 'MultiSelectModel', 'player');
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Add to 7Z', '', 'Add to &7Z');
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\Add to 7Z\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi7z" "%1"'));
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\Add to 7Z', 'MultiSelectModel', 'player');
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\Add to 7Z', '', 'Add to &7Z');
       end;
    if CheckBox3.state = cbChecked then
       begin
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Add to 7Z, fastest\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi7zfastest" "%1"'));
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Add to 7Z, fastest', 'MultiSelectModel', 'player');
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\Add to 7Z, fastest\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi7zfastest" "%1"'));
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\Add to 7Z, fastest', 'MultiSelectModel', 'player');
       end;
    if CheckBox3.state = cbChecked then
       begin
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Add to 7Z, ultra\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi7zultra" "%1"'));
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Add to 7Z, ultra', 'MultiSelectModel', 'player');
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\Add to 7Z, ultra\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi7zultra" "%1"'));
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\Add to 7Z, ultra', 'MultiSelectModel', 'player');
       end; 
    if cbcontextzips.state = cbChecked then
       begin
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Add to ZIP\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multizip" "%1"'));
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Add to ZIP', 'MultiSelectModel', 'player');
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Add to ZIP', '', 'Add to &ZIP');
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\Add to ZIP\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multizip" "%1"'));
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\Add to ZIP', 'MultiSelectModel', 'player');
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\Add to ZIP', '', 'Add to &ZIP');
       end;
    if CheckBox4.state = cbChecked then
       begin
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Add to ZIP, fastest\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multizipfastest" "%1"'));
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Add to ZIP, fastest', 'MultiSelectModel', 'player');
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\Add to ZIP, fastest\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multizipfastest" "%1"'));
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\Add to ZIP, fastest', 'MultiSelectModel', 'player');
       end;
    if cbcontext7zsenc.state = cbChecked then
       begin
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Encrypt (7Z)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi7zencrypt" "%1"'));
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Encrypt (7Z)', 'MultiSelectModel', 'player');
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\Encrypt (7Z)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multi7zencrypt" "%1"'));
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\Encrypt (7Z)', 'MultiSelectModel', 'player');
       end;
    if cbcontextzipmail.state = cbChecked then
       begin
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Zip and mail\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multizipmail" "%1"'));
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Zip and mail', 'MultiSelectModel', 'player');
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\Zip and mail\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multizipmail" "%1"'));
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\Zip and mail', 'MultiSelectModel', 'player');
       end;
    if cbcontextsfx.state = cbChecked then
       begin
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Add to self-extracting archive\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multisfx" "%1"'));
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Add to self-extracting archive', 'MultiSelectModel', 'player');
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\Add to self-extracting archive\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multisfx" "%1"'));
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\Add to self-extracting archive', 'MultiSelectModel', 'player');
       end;
    if cbcontextadd2archiveseparate.state = cbChecked then
       begin
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Add to separate archive(s)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multiseparate" "%1"'));
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Add to separate archive(s)', 'MultiSelectModel', 'player');
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\Add to separate archive(s)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multiseparate" "%1"'));
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\Add to separate archive(s)', 'MultiSelectModel', 'player');
       end;

       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Open as archive\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2openasarchive" "%1"'));
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Open as archive', 'MultiSelectModel', 'player');
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Open as archive', '', '&Open as archive');

    if cbcontextbrowse.state = cbChecked then
       begin
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\Background\shell\Browse path with PeaZip\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2browsepath" "%V"'));
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Browse path with PeaZip\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2browsepath" "%1"'));
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Browse path with PeaZip', 'MultiSelectModel', 'player');
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Browse path with PeaZip', '', '&Browse path with PeaZip');
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\Browse path with PeaZip\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2browsepath" "%1"'));
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\Browse path with PeaZip', 'MultiSelectModel', 'player');
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\Browse path with PeaZip', '', '&Browse path with PeaZip');
       end;
       
    if cbcontextcrc.state = cbChecked then
       begin
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\CRC, hash and file tools\command', '', ExpandConstant('"{app}\PEA.EXE" "PEAUTILS" "12" "%1"'));
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\CRC, hash and file tools', 'MultiSelectModel', 'single');
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\CRC, hash and file tools\command', '', ExpandConstant('"{app}\PEA.EXE" "PEAUTILS" "12" "%1"'));
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\CRC, hash and file tools', 'MultiSelectModel', 'single');
       end;

    if cbcontextsplit.state = cbChecked then
       begin
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Split file\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multisplit" "%1"'));
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Split file', 'MultiSelectModel', 'player');
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\Split file\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multisplit" "%1"'));
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\Split file', 'MultiSelectModel', 'player');
       end;
    if cbcontextconvert.state = cbChecked then
       begin
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Convert\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multiconvert" "%1"'));
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Convert', 'MultiSelectModel', 'player');
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\Convert\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2multiconvert" "%1"'));
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\Convert', 'MultiSelectModel', 'player');
       end;
    if cbcontextwipe.state = cbChecked then
       begin
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Secure delete\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2wipe" "%1"'));
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Secure delete', 'MultiSelectModel', 'player');
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\Secure delete\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-add2wipe" "%1"'));
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\Secure delete', 'MultiSelectModel', 'player');
       end;
    
    if cbcontextext2here.state = cbChecked then
       begin
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Extract...', 'MultiSelectModel', 'player');
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Extract...', '', '&Extract...');
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\Extract...\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multi" "%1"'));
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\Extract...', 'MultiSelectModel', 'player');
       RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\Directory\shell\Extract...', '', '&Extract...');
       end;

    if cbcontextext2here.state = cbChecked then
       begin
          RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Extract here\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multihere" "%1"'));
          RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Extract here', 'MultiSelectModel', 'player');
          RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Extract here', '', 'Extract &here');
       end;
    if cbcontextext2smart.state = cbChecked then
       begin
          RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Extract here (smart new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multismart" "%1"'));
          RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Extract here (smart new folder)', 'MultiSelectModel', 'player');
          RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Extract here (smart new folder)', '', 'Extract here (&smart new folder)');
       end;
    if cbcontextext2folder.state = cbChecked then
       begin
          RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Extract here (in new folder)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2multifolder" "%1"'));
          RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Extract here (in new folder)', 'MultiSelectModel', 'player');
          RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Extract here (in new folder)', '', 'Extract here (in &new folder)');
       end;
    if cbcontexttest.state = cbChecked then
       begin     
          RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Test archive(s)\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "-ext2test" "%1"'));
          RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\*\shell\Test archive(s)', 'MultiSelectModel', 'player');
       end;
end;

procedure dolinks;
begin
    //link to PeaZip -add2archive: add to generic archive
    if cbfunadd.state = cbChecked then
      begin
  CreateShellLink(
  ExpandConstant('{sendto}\Add to archive.lnk'),
  'PeaZip archiver, add to archive',
  ExpandConstant('{app}\peazip.exe'),
  '-add2archive',
  '',
  ExpandConstant('{app}\res\share\icons\peazip_seven.icl'),//icon filename
  2,//icon index
  SW_SHOWNORMAL);
      end;

    //link to PeaZip -add2convert: convert existing archives
    if cbfunconvert.state = cbChecked then
      begin
  CreateShellLink(
  ExpandConstant('{sendto}\Convert.lnk'),
  'PeaZip archiver, convert existing archive',
  ExpandConstant('{app}\peazip.exe'),
  '-add2convert',
  '',
  ExpandConstant('{app}\res\share\icons\peazip_seven.icl'),//icon filename
  7,//icon index
  SW_SHOWNORMAL);
      end;

    //link to PeaZip -ext2here: extract here
    if cbfunext2here.state = cbChecked then
      begin
      CreateShellLink(
      ExpandConstant('{sendto}\Extract here.lnk'),
      'PeaZip archiver, extract here',
      ExpandConstant('{app}\peazip.exe'),
      '-ext2here',
      '',
      ExpandConstant('{app}\res\share\icons\peazip_seven.icl'),//icon filename
      4,//icon index
      SW_SHOWNORMAL);
      end;

    //link to PeaZip -ext2folder: extract here to smart new folder
    if cbfunext2folder.state = cbChecked then
      begin
      CreateShellLink(
      ExpandConstant('{sendto}\Extract here (smart new folder).lnk'),
      'PeaZip archiver, extract here (smart new folder)',
      ExpandConstant('{app}\peazip.exe'),
      '-ext2folder',
      '',
      ExpandConstant('{app}\res\share\icons\peazip_seven.icl'),//icon filename
      4,//icon index
      SW_SHOWNORMAL);
      end;

    //link to PeaZip -ext2newfolder: extract here to new folder
    if cbfunext2newfolder.state = cbChecked then
      begin
      CreateShellLink(
      ExpandConstant('{sendto}\Extract here (in new folder).lnk'),
      'PeaZip archiver, extract here (in new folder)',
      ExpandConstant('{app}\peazip.exe'),
      '-ext2newfolder',
      '',
      ExpandConstant('{app}\res\share\icons\peazip_seven.icl'),//icon filename
      4,//icon index
      SW_SHOWNORMAL);
      end;

    //link to PeaZip -ext2main: extract with options
    if cbfunext2to.state = cbChecked then
      begin
      CreateShellLink(
      ExpandConstant('{sendto}\Extract....lnk'),
      'PeaZip archiver, extract into specified path',
      ExpandConstant('{app}\peazip.exe'),
      '-ext2main',
      '',
      ExpandConstant('{app}\res\share\icons\peazip_seven.icl'),//icon filename
      4,//icon index
      SW_SHOWNORMAL);
      end;

    //link to PeaZip -add27z: add to .7z archive
    if cbfun7z.state = cbChecked then
      begin
      CreateShellLink(
      ExpandConstant('{sendto}\Add to .7Z.lnk'),
      'PeaZip archiver, add to .7Z archive',
      ExpandConstant('{app}\peazip.exe'),
      '-add27z',
      '',
      ExpandConstant('{app}\res\share\icons\peazip_seven.icl'),//icon filename
      10,//icon index
      SW_SHOWNORMAL);
      end;

    //link to PeaZip -add27zmail: add to .7z archive and send by mail
    if cbfun7zmail.state = cbChecked then
      begin
      CreateShellLink(
      ExpandConstant('{sendto}\Add to .7Z and send by mail.lnk'),
      'PeaZip archiver, add to .7Z archive and send it by mail',
      ExpandConstant('{app}\peazip.exe'),
      '-add27zmail',
      '',
      ExpandConstant('{app}\res\share\icons\peazip_seven.icl'),//icon filename
      3,//icon index
      SW_SHOWNORMAL);
      end;

    //link to PeaZip -add2separate7z: add to separate .7z archives
    if cbfun7zs.state = cbChecked then
      begin
      CreateShellLink(
      ExpandConstant('{sendto}\Add to separate .7Z.lnk'),
      'PeaZip archiver, add to separate .7Z archives',
      ExpandConstant('{app}\peazip.exe'),
      '-add2separate7z',
      '',
      ExpandConstant('{app}\res\share\icons\peazip_seven.icl'),//icon filename
      10,//icon index
      SW_SHOWNORMAL);
      end;

    //link to PeaZip -add2zip: add to .zip archive
    if cbfunzip.state = cbChecked then
      begin
      CreateShellLink(
      ExpandConstant('{sendto}\Add to .ZIP.lnk'),
      'PeaZip archiver, add to .ZIP archive',
      ExpandConstant('{app}\peazip.exe'),
      '-add2zip',
      '',
      ExpandConstant('{app}\res\share\icons\peazip_seven.icl'),//icon filename
      13,//icon index
      SW_SHOWNORMAL);
      end;

    //link to PeaZip -add2zipmail: add to .zip archive and send by mail
    if cbfunzipmail.state = cbChecked then
      begin
      CreateShellLink(
      ExpandConstant('{sendto}\Add to .ZIP and send by mail.lnk'),
      'PeaZip archiver, add to .ZIP archive and send it by mail',
      ExpandConstant('{app}\peazip.exe'),
      '-add2zipmail',
      '',
      ExpandConstant('{app}\res\share\icons\peazip_seven.icl'),//icon filename
      3,//icon index
      SW_SHOWNORMAL);
      end;

    //link to PeaZip -add2separatezip: add to separate .zip archives
    if cbfunzips.state = cbChecked then
      begin
      CreateShellLink(
      ExpandConstant('{sendto}\Add to separate .ZIP.lnk'),
      'PeaZip archiver, add to separate .ZIP archives',
      ExpandConstant('{app}\peazip.exe'),
      '-add2separatezip',
      '',
      ExpandConstant('{app}\res\share\icons\peazip_seven.icl'),//icon filename
      13,//icon index
      SW_SHOWNORMAL);
      end;

    //link to PeaZip -add2sfx7z: add to sfx 7z archive
    if cbfunsfx.state = cbChecked then
      begin
      CreateShellLink(
      ExpandConstant('{sendto}\Add to self-extracting archive.lnk'),
      'PeaZip archiver, add to self extracting .7z archive',
      ExpandConstant('{app}\peazip.exe'),
      '-add2sfx7z',
      '',
      ExpandConstant('{app}\res\share\icons\peazip_seven.icl'),//icon filename
      11,//icon index
      SW_SHOWNORMAL);
      end;

    //link to PeaZip -add2crypt: add to encrypted .pea archive
    if cbfunencrypt.state = cbChecked then
      begin
      CreateShellLink(
      ExpandConstant('{sendto}\Encrypt (PEA).lnk'),
      'PeaZip archiver, add to encrypted .pea archive',
      ExpandConstant('{app}\peazip.exe'),
      '-add2crypt',
      '',
      ExpandConstant('{app}\res\share\icons\peazip_seven.icl'),//icon filename
      0,//icon index
      SW_SHOWNORMAL);
      end;

    //link to PeaZip -add2split: raw file split
    if cbfunsplit.state = cbChecked then
      begin
      CreateShellLink(
      ExpandConstant('{sendto}\Split file.lnk'),
      'PeaZip archiver, raw split single file',
      ExpandConstant('{app}\peazip.exe'),
      '-add2split',
      '',
      ExpandConstant('{app}\res\share\icons\peazip_seven.icl'),//icon filename
      5,//icon index
      SW_SHOWNORMAL);
      end;

    //link to PeaZip -add2wipe: Secure delete
    if cbfunwipe.state = cbChecked then
      begin
      CreateShellLink(
      ExpandConstant('{sendto}\Secure delete.lnk'),
      'PeaZip archiver, secure delete',
      ExpandConstant('{app}\peazip.exe'),
      '-add2wipe',
      '',
      ExpandConstant('{app}\res\share\icons\peazip_seven.icl'),//icon filename
      6,//icon index
      SW_SHOWNORMAL);
      end;

    //link to PeaZip -ext2test: test archive's content
    if cbfuntest.state = cbChecked then
      begin
      CreateShellLink(
      ExpandConstant('{sendto}\Test archive(s).lnk'),
      'PeaZip archiver, test archive(s)',
      ExpandConstant('{app}\peazip.exe'),
      '-ext2test',
      '',
      ExpandConstant('{app}\res\share\icons\peazip_seven.icl'),//icon filename
      1,//icon index
      SW_SHOWNORMAL);
      end;

    //link to PeaZip -ext2openasarchive
    if cbfunopen.state = cbChecked then
      begin
      CreateShellLink(
      ExpandConstant('{sendto}\Open as archive.lnk'),
      'PeaZip archiver, open as archive',
      ExpandConstant('{app}\peazip.exe'),
      '-ext2openasarchive',
      '',
      '',//ExpandConstant('{app}\res\share\icons\peazip_seven.icl'),//icon filename
      1,//icon index
      SW_SHOWNORMAL);
      end;

    //link to PeaZip -ext2browsepath: browse path
    if CheckBoxbrowsepath.state = cbChecked then
      begin
      CreateShellLink(
      ExpandConstant('{sendto}\Browse path with PeaZip.lnk'),
      'PeaZip archiver, browse path',
      ExpandConstant('{app}\peazip.exe'),
      '-ext2browsepath',
      '',
      ExpandConstant('{app}\res\share\icons\peazip_seven.icl'),//icon filename
      8,//icon index
      SW_SHOWNORMAL);
      end;

    //link to PeaZip -ext2commandprompt: open command prompt here
    if CheckBoxcommand.state = cbChecked then
      begin
      CreateShellLink(
      ExpandConstant('{sendto}\Open command prompt here.lnk'),
      'PeaZip archiver, open command prompt here',
      ExpandConstant('{app}\peazip.exe'),
      '-ext2commandprompt',
      '',
      '',//ExpandConstant('{app}\res\share\icons\peazip_seven.icl'),//icon filename
      1,//icon index
      SW_SHOWNORMAL);
      end;
end;

procedure doassociations;
begin

  RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.pea', '', 'PeaZip.PEA');
  RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.PEA', '', 'PEA archive');
  RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.PEA\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP.ICO,0'));
  RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.PEA\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));

  RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.001', '', 'PeaZip.001');
  RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.001', '', 'Split file');
  RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.001\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP_BLOCK.ICO,0'));
  RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.001\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));

  if cbfullnone.state = cbUnchecked then
    begin
    //declare that filetype associations were created
    RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\SOFTWARE\PeaZip', '', 'Created filetype associations');
    //7z/arc
    if cb7z.state = cbChecked then
      begin
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\SOFTWARE\PeaZip\7Z', '', 'Associated PeaZip with file type(s)');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.7z', '', 'PeaZip.7Z');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.7Z', '', '7Z archive');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.7Z\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP_7Z.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.7Z\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.xz', '', 'PeaZip.XZ');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.XZ', '', 'XZ compressed file');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.XZ\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.XZ\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      end;
    //arc/wrc
    if cbarc.state = cbChecked then
      begin
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\SOFTWARE\PeaZip\ARC', '', 'Associated PeaZip with file type(s)');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.arc', '', 'PeaZip.ARC');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.ARC', '', 'FreeARC archive');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.ARC\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.ARC\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.wrc', '', 'PeaZip.WRC');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.WRC', '', 'FreeARC archive');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.WRC\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.WRC\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      end;
    //Brotli
    if cbbr.state = cbChecked then
      begin
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\SOFTWARE\PeaZip\BR', '', 'Associated PeaZip with file type(s)');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.br', '', 'PeaZip.BR');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.BR', '', 'Brotli compressed file');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.BR\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.BR\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      end;
    //Zstandard
    if cbzst.state = cbChecked then
      begin
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\SOFTWARE\PeaZip\ZST', '', 'Associated PeaZip with file type(s)');
      //ZST
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.zst', '', 'PeaZip.ZST');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.ZST', '', 'Zstandard compressed file');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.ZST\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.ZST\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"')); 
      //TZST
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.tzst', '', 'PeaZip.TZST');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.TZST', '', 'Zstandard compressed TAR archive');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.TZST\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.TZST\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      end;
    //*PAQ group
    if cbpaq8.state = cbChecked then
      begin
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\SOFTWARE\PeaZip\PAQ', '', 'Associated PeaZip with file type(s)');
      //LPAQ1
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.lpaq1', '', 'PeaZip.LPAQ1');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.LPAQ1', '', 'LPAQ1 compressed file');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.LPAQ1\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.LPAQ1\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //LPAQ5
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.lpaq5', '', 'PeaZip.LPAQ5');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.LPAQ5', '', 'LPAQ5 compressed file');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.LPAQ5\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.LPAQ5\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //LPAQ8
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.lpaq8', '', 'PeaZip.LPAQ8');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.LPAQ8', '', 'LPAQ8 compressed file');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.LPAQ8\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.LPAQ8\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //PAQ8F
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.paq8f', '', 'PeaZip.PAQ8F');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.PAQ8F', '', 'PAQ8F archive');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.PAQ8F\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.PAQ8F\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //PAQ8JD
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.paq8jd', '', 'PeaZip.PAQ8JD');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.PAQ8JD', '', 'PAQ8JD archive');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.PAQ8JD\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.PAQ8JD\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //PAQ8L
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.paq8l', '', 'PeaZip.PAQ8L');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.PAQ8L', '', 'PAQ8L archive');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.PAQ8L\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.PAQ8L\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //PAQ8O
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.paq8o', '', 'PeaZip.PAQ8O');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.PAQ8O', '', 'PAQ8O archive');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.PAQ8O\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.PAQ8O\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //ZPAQ
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.zpaq', '', 'PeaZip.ZPAQ');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.ZPAQ', '', 'ZPAQ archive');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.ZPAQ\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.ZPAQ\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      end;
    if cbquad.state = cbChecked then
      begin
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\SOFTWARE\PeaZip\QUAD', '', 'Associated PeaZip with file type(s)');
      //QUAD
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.quad', '', 'PeaZip.QUAD');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.QUAD', '', 'QUAD compressed file');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.QUAD\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.QUAD\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //BALZ
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.balz', '', 'PeaZip.BALZ');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.BALZ', '', 'BALZ compressed file');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.BALZ\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.BALZ\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //BCM
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.bcm', '', 'PeaZip.BCM');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.BCM', '', 'BCM compressed file');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.BCM\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.BCM\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      end;
    //Tar
    if cbtar.state = cbChecked then
      begin
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\SOFTWARE\PeaZip\TAR', '', 'Associated PeaZip with file type(s)');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.tar', '', 'PeaZip.TAR');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.TAR', '', 'TAR archive');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.TAR\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.TAR\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\SOFTWARE\PeaZip\GZ', '', 'Associated PeaZip with file type(s)');
      //GZ
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.gz', '', 'PeaZip.GZ');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.GZ', '', 'GZip compressed file');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.GZ\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.GZ\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //TGZ
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.tgz', '', 'PeaZip.TGZ');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.TGZ', '', 'GZip compressed TAR archive');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.TGZ\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.TGZ\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\SOFTWARE\PeaZip\BZ2', '', 'Associated PeaZip with file type(s)');
      //BZ
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.bz', '', 'PeaZip.BZ');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.BZ', '', 'BZip2 compressed file');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.BZ\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.BZ\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //BZ2
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.bz2', '', 'PeaZip.BZ2');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.BZ2', '', 'BZip2 compressed file');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.BZ2\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.BZ2\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //TBZ
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.tbz', '', 'PeaZip.TBZ');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.TBZ', '', 'BZip2 compressed TAR archive');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.TBZ\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.TBZ\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //TBZ2
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.tbz2', '', 'PeaZip.TBZ2');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.TBZ2', '', 'BZip2 compressed TAR archive');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.TBZ2\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.TBZ2\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      end;
    //Zip
    if cbzip.state = cbChecked then
      begin
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\SOFTWARE\PeaZip\ZIP', '', 'Associated PeaZip with file type(s)');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.zip', '', 'PeaZip.ZIP');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.ZIP', '', 'ZIP archive');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.ZIP\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP_ZIP.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.ZIP\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\SOFTWARE\PeaZip\ZIPX', '', 'Associated PeaZip with file type(s)');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.zipx', '', 'PeaZip.ZIPX');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.ZIPX', '', 'ZIPX archive');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.ZIPX\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP_ZIP.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.ZIPX\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      end;
    end;
  if cbreadnone.state = cbUnchecked then
    begin //associate types with browse/extract only support
    //declare that additional filetype associations were created
    RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\SOFTWARE\PeaZip_additional', '', 'Created additional filetype associations');
    //ACE
    if cbace.state = cbChecked then
      begin
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\SOFTWARE\PeaZip_additional\ACE', '', 'Associated PeaZip with file type(s)');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.ACE', '', 'PeaZip.ACE');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.ACE', '', 'ACE archive');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.ACE\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.ACE\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      end;
    //ARJ
    if cbarj.state = cbChecked then
      begin
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\SOFTWARE\PeaZip_additional\ARJ', '', 'Associated PeaZip with file type(s)');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.ARJ', '', 'PeaZip.ARJ');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.ARJ', '', 'ARJ archive');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.ARJ\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.ARJ\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      end;
    //CAB
    if cbcab.state = cbChecked then
      begin
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\SOFTWARE\PeaZip_additional\CAB', '', 'Associated PeaZip with file type(s)');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.CAB', '', 'PeaZip.CAB');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.CAB', '', 'CAB archive');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.CAB\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.CAB\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      end;
    //CPIO
    if cbcpio.state = cbChecked then
      begin
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\SOFTWARE\PeaZip_additional\CPIO', '', 'Associated PeaZip with file type(s)');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.CPIO', '', 'PeaZip.CPIO');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.CPIO', '', 'CPIO archive');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.CPIO\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.CPIO\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //Z
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.Z', '', 'PeaZip.Z');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.Z', '', 'Z compressed file');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.Z\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.Z\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //TZ
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.tz', '', 'PeaZip.TZ');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.TZ', '', 'Z compressed TAR archive');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.TZ\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.TZ\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //TZ
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.taz', '', 'PeaZip.TAZ');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.TAZ', '', 'Z compressed TAR archive');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.TAZ\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.TAZ\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      end;
    //Disk images
    if cbiso.state = cbChecked then
      begin
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\SOFTWARE\PeaZip_additional\ISO', '', 'Associated PeaZip with file type(s)');
      //ISO
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.ISO', '', 'PeaZip.ISO');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.ISO', '', 'ISO disk image');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.ISO\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP_CD.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.ISO\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //UDF
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.UDF', '', 'PeaZip.UDF');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.UDF', '', 'UDF disk image');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.UDF\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP_CD.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.UDF\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      end;
    //LHA
    if cblha.state = cbChecked then
      begin
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\SOFTWARE\PeaZip_additional\LHA', '', 'Associated PeaZip with file type(s)');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.LHA', '', 'PeaZip.LHA');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.LHA', '', 'LHA archive');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.LHA\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.LHA\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      end;
    //Linux packages (DEB, RPM, PET/PUP)
    if cblinux.state = cbChecked then
      begin
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\SOFTWARE\PeaZip_additional\linux', '', 'Associated PeaZip with file type(s)');
      //DEB
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.DEB', '', 'PeaZip.DEB');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.DEB', '', 'DEB package');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.DEB\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP_PACKAGE.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.DEB\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //PET
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.PET', '', 'PeaZip.PET');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.PET', '', 'PET package (Puppy Linux)');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.PET\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP_PACKAGE.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.PET\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //PUP
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.PUP', '', 'PeaZip.PUP');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.PUP', '', 'PUP package (Puppy Linux)');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.PUP\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP_PACKAGE.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.PUP\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //RPM
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.RPM', '', 'PeaZip.RPM');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.RPM', '', 'RPM package');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.RPM\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP_PACKAGE.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.RPM\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //SLP
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.SLP', '', 'PeaZip.SLP');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.SLP', '', 'SLP package');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.SLP\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP_PACKAGE.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.SLP\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      end;
    //LZH
    if cblzh.state = cbChecked then
      begin
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\SOFTWARE\PeaZip_additional\LZH', '', 'Associated PeaZip with file type(s)');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.LZH', '', 'PeaZip.LZH');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.LZH', '', 'LZH archive');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.LZH\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.LZH\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      end;
    //Mac formats (DMG, HFS)
    if cbMac.state = cbChecked then
      begin
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\SOFTWARE\PeaZip_additional\mac', '', 'Associated PeaZip with file type(s)');
      //DMG
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.DMG', '', 'PeaZip.DMG');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.DMG', '', 'DMG package');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.DMG\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP_PACKAGE.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.DMG\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      //UDF
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.HFS', '', 'PeaZip.HFS');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.HFS', '', 'UDF package');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.HFS\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP_PACKAGE.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.HFS\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      end;
    //RAR
    if cbrar.state = cbChecked then
      begin
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\SOFTWARE\PeaZip_additional\RAR', '', 'Associated PeaZip with file type(s)');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\.RAR', '', 'PeaZip.RAR');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.RAR', '', 'RAR archive');
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.RAR\DefaultIcon', '', ExpandConstant('{app}\RES\SHARE\ICONS\PEAZIP_RAR.ICO,0'));
      RegWriteStringValue(sLMCU, 'SOFTWARE\Classes\PeaZip.RAR\shell\open\command', '', ExpandConstant('"{app}\PEAZIP.EXE" "%1"'));
      end;
    end;
end;

function NextButtonClick(CurPageID: Integer): Boolean;
var
  ResultCode: Integer;
  ErrorCode: Integer;
begin

if CurPageID = wpReady then
  begin

  if cbinstallcu.Checked = False then sLMCU:=HKLM
  else sLMCU:=HKCU;

  if (radiobuttoninstall4.Checked = False) then //only for installers
    begin
    clearcontextlegacy;
    clearcontextseven;
    clearlinks;
    clearassociations;
    BringToFrontAndRestore();

  if (radiobuttoninstall3.Checked = False) then
    begin
    //context menu
    if cbcontextnone.state = cbUnchecked then
       if (GetWindowsVersion >= $06010000) then 
          if cbcascaded.state = cbChecked then contextseven
          else contextlegacy
       else contextlegacy;
    //sendto menu
    if cbfunnone.state = cbUnchecked then dolinks;
    //associations
    doassociations;
  end;

  end;

  try
  if cbreset.checked=true then 
     if (GetWindowsVersion >= $06000000) then ShellExecAsOriginalUser('', ExpandConstant('{app}\peazip.exe'), '-peaziptotalreset', '', SW_SHOW, ewWaitUntilTerminated, ErrorCode);
  except end;

  BringToFrontAndRestore();
  end;
Result := True;
end;

procedure dolanguage;
var
  ErrorCode: Integer;
  slang:string;
begin    
case combobox1.itemindex of
 0: slang:='ar.txt';
 1: slang:='bg.txt';
 2: slang:='by-cr.txt';
 3: slang:='by-lt.txt';
 4: slang:='chs.txt';
 5: slang:='cht.txt';
 6: slang:='cz.txt';
 7: slang:='de-uml.txt';
 8: slang:='de-uml-alt.txt';
 9: slang:='*nochange';//do not change
 10: slang:='en.txt';
 11: slang:='en-gb.txt';
 12: slang:='es-es.txt';
 13: slang:='es-la.txt';
 14: slang:='eu.txt';
 15: slang:='fi.txt';
 16: slang:='fr.txt';
 17: slang:='gl.txt';
 18: slang:='gr.txt';
 19: slang:='hu.txt';
 20: slang:='id.txt';
 21: slang:='it.txt';
 22: slang:='ja.txt';
 23: slang:='ko.txt';
 24: slang:='nl.txt';
 25: slang:='no.txt';
 26: slang:='pl.txt';
 27: slang:='pt-br.txt';
 28: slang:='pt-pt.txt';
 29: slang:='ro.txt';
 30: slang:='ru.txt';
 31: slang:='si.txt';
 32: slang:='sk.txt';
 33: slang:='sl.txt';
 34: slang:='sv.txt';
 35: slang:='tj.txt';
 36: slang:='tr.txt';
 37: slang:='uk.txt';
 38: slang:='uz.txt';
 39: slang:='vn.txt';
 else slang:='';
end;
if slang<>'' then
   if (GetWindowsVersion >= $06000000) then ShellExec('', ExpandConstant('{app}\peazip.exe'), '-peaziplanguage '+slang, '', SW_SHOW, ewWaitUntilTerminated, ErrorCode);
end;

procedure CurStepChanged(CurStep: TSetupStep);
begin
if CurStep=ssPostInstall then 
   begin
   dolanguage;
   end;
end;

procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
if CurUninstallStep = usDone then
  begin
  clearlinks; //delete links
  clearcontextlegacy;
  clearcontextseven; //delete context menu items
  clearassociations; //don't delete classes root values, as recommended by guidelines for managing file associations
  BringToFrontAndRestore();
  end;
end;