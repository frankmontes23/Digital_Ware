unit Proyecto_DCOM_TLB;

// ************************************************************************ //
// WARNING
// -------
// The types declared in this file were generated from data read from a
// Type Library. If this type library is explicitly or indirectly (via
// another type library referring to this type library) re-imported, or the
// 'Refresh' command of the Type Library Editor activated while editing the
// Type Library, the contents of this file will be regenerated and all
// manual modifications will be lost.
// ************************************************************************ //

// $Rev: 52393 $
// File generated on 02/24/2022 5:07:01 PM from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Delphi KACTUS\Ejercicio_3\Proyecto_DCOM (1)
// LIBID: {A4843C42-1A02-428A-BF33-A70C24B30D60}
// LCID: 0
// Helpfile:
// HelpString:
// DepndLst:
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v1.0 Midas, (C:\Program Files (x86)\Embarcadero\Studio\20.0\bin64\midas.dll)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers.
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, Midas, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;



// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:
//   Type Libraries     : LIBID_xxxx
//   CoClasses          : CLASS_xxxx
//   DISPInterfaces     : DIID_xxxx
//   Non-DISP interfaces: IID_xxxx
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  Proyecto_DCOMMajorVersion = 1;
  Proyecto_DCOMMinorVersion = 0;

  LIBID_Proyecto_DCOM: TGUID = '{A4843C42-1A02-428A-BF33-A70C24B30D60}';

  IID_IServerDCOM: TGUID = '{5363B444-64EA-4D6E-AF41-2477247211E7}';
  CLASS_ServerDCOM: TGUID = '{87A16F6B-1C34-4068-ACD8-24B9EE21A014}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary
// *********************************************************************//
  IServerDCOM = interface;
  IServerDCOMDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library
// (NOTE: Here we map each CoClass to its Default Interface)
// *********************************************************************//
  ServerDCOM = IServerDCOM;


// *********************************************************************//
// Interface: IServerDCOM
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5363B444-64EA-4D6E-AF41-2477247211E7}
// *********************************************************************//
  IServerDCOM = interface(IAppServer)
    ['{5363B444-64EA-4D6E-AF41-2477247211E7}']
  end;

// *********************************************************************//
// DispIntf:  IServerDCOMDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5363B444-64EA-4D6E-AF41-2477247211E7}
// *********************************************************************//
  IServerDCOMDisp = dispinterface
    ['{5363B444-64EA-4D6E-AF41-2477247211E7}']
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: SYSINT;
                             out ErrorCount: SYSINT; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: SYSINT; out RecsOut: SYSINT;
                           Options: SYSINT; const CommandText: WideString; var Params: OleVariant;
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: SYSINT;
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString;
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// The Class CoServerDCOM provides a Create and CreateRemote method to
// create instances of the default interface IServerDCOM exposed by
// the CoClass ServerDCOM. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoServerDCOM = class
    class function Create: IServerDCOM;
    class function CreateRemote(const MachineName: string): IServerDCOM;
  end;

implementation

uses System.Win.ComObj;

class function CoServerDCOM.Create: IServerDCOM;
begin
  Result := CreateComObject(CLASS_ServerDCOM) as IServerDCOM;
end;

class function CoServerDCOM.CreateRemote(const MachineName: string): IServerDCOM;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ServerDCOM) as IServerDCOM;
end;

end.

