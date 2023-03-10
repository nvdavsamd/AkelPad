#ifndef _IWSCRIPT_H_
#define _IWSCRIPT_H_

// IWScript's VTable
#undef INTERFACE
#define INTERFACE IWScript
DECLARE_INTERFACE_ (INTERFACE, IDispatch)
{
  // IUnknown
  STDMETHOD_(HRESULT, WScript_QueryInterface)(THIS_ REFIID, void **) PURE;
  STDMETHOD_(ULONG, WScript_AddRef)(THIS) PURE;
  STDMETHOD_(ULONG, WScript_Release)(THIS) PURE;

  // IDispatch
  STDMETHOD_(HRESULT, WScript_GetTypeInfoCount)(THIS_ UINT *) PURE;
  STDMETHOD_(HRESULT, WScript_GetTypeInfo)(THIS_ UINT, LCID, ITypeInfo **) PURE;
  STDMETHOD_(HRESULT, WScript_GetIDsOfNames)(THIS_ REFIID, LPOLESTR *, UINT, LCID, DISPID *) PURE;
  STDMETHOD_(HRESULT, WScript_Invoke)(THIS_ DISPID, REFIID, LCID, WORD, DISPPARAMS *, VARIANT *, EXCEPINFO *, UINT *) PURE;

  // IWScript methods
  STDMETHOD_(HRESULT, WScript_Arguments)(THIS_ IDispatch **) PURE;
  STDMETHOD_(HRESULT, WScript_ScriptFullName)(THIS_ BSTR *) PURE;
  STDMETHOD_(HRESULT, WScript_ScriptName)(THIS_ BSTR *) PURE;
  STDMETHOD_(HRESULT, WScript_ScriptBaseName)(THIS_ BSTR *) PURE;
  STDMETHOD_(HRESULT, WScript_FullName)(THIS_ BSTR *) PURE;
  STDMETHOD_(HRESULT, WScript_Path)(THIS_ BSTR *) PURE;
  STDMETHOD_(HRESULT, WScript_Name)(THIS_ BSTR *) PURE;
  STDMETHOD_(HRESULT, WScript_Echo)(THIS_ BSTR) PURE;
  STDMETHOD_(HRESULT, WScript_Sleep)(THIS_ int) PURE;
  STDMETHOD_(HRESULT, WScript_Quit)(THIS_ int) PURE;
  STDMETHOD_(HRESULT, WScript_ConnectObject)(THIS_ IDispatch *, BSTR, VARIANT, int *) PURE;
  STDMETHOD_(HRESULT, WScript_DisconnectObject)(THIS_ IDispatch *) PURE;
};

//Defines
typedef struct {
  IWScriptVtbl *lpVtbl;
  DWORD dwCount;
  void *lpScriptThread;
} IRealWScript;

typedef struct _CONNECTITEM {
  struct _CONNECTITEM *next;
  struct _CONNECTITEM *prev;
  IConnectionPoint *objConnectionPoint;
  DWORD dwCookie;
} CONNECTITEM;

typedef struct {
  CONNECTITEM *first;
  CONNECTITEM *last;
  int nElements;
} CONNECTSTACK;

typedef struct {
  IDispatch *lpVtbl;
  DWORD dwCount;
  void *lpScriptThread;
  IDispatch *objConnectTo;
  BSTR wpPrefix;
  IConnectionPointContainer *objConnectionPointContainer;
  CONNECTSTACK hConnectStack;
  IID *piidConnect;
  IID iidConnect;
} IRealSink;

typedef struct _SINKITEM {
  struct _SINKITEM *next;
  struct _SINKITEM *prev;
  IRealSink objISink;
} SINKITEM;

typedef struct {
  SINKITEM *first;
  SINKITEM *last;
  int nElements;
} SINKSTACK;


//Global variables
extern ITypeInfo *g_WScriptTypeInfo;
extern const IWScriptVtbl MyIWScriptVtbl;
extern const IDispatchVtbl MyISinkVtbl;

//Functions prototypes
HRESULT STDMETHODCALLTYPE WScript_QueryInterface(IWScript *this, REFIID vTableGuid, void **ppv);
ULONG STDMETHODCALLTYPE WScript_AddRef(IWScript *this);
ULONG STDMETHODCALLTYPE WScript_Release(IWScript *this);

HRESULT STDMETHODCALLTYPE WScript_GetTypeInfoCount(IWScript *this, UINT *pCount);
HRESULT STDMETHODCALLTYPE WScript_GetTypeInfo(IWScript *this, UINT itinfo, LCID lcid, ITypeInfo **pTypeInfo);
HRESULT STDMETHODCALLTYPE WScript_GetIDsOfNames(IWScript *this, REFIID riid, LPOLESTR *rgszNames, UINT cNames, LCID lcid, DISPID *rgdispid);
HRESULT STDMETHODCALLTYPE WScript_Invoke(IWScript *this, DISPID dispid, REFIID riid, LCID lcid, WORD wFlags, DISPPARAMS *params, VARIANT *result, EXCEPINFO *pexcepinfo, UINT *puArgErr);

HRESULT STDMETHODCALLTYPE WScript_Arguments(IWScript *this, IDispatch **objWArguments);
HRESULT STDMETHODCALLTYPE WScript_ScriptFullName(IWScript *this, BSTR *wpScriptFullName);
HRESULT STDMETHODCALLTYPE WScript_ScriptName(IWScript *this, BSTR *wpScriptName);
HRESULT STDMETHODCALLTYPE WScript_ScriptBaseName(IWScript *this, BSTR *wpScriptBaseName);
HRESULT STDMETHODCALLTYPE WScript_FullName(IWScript *this, BSTR *wpDllFullName);
HRESULT STDMETHODCALLTYPE WScript_Path(IWScript *this, BSTR *wpDllPath);
HRESULT STDMETHODCALLTYPE WScript_Name(IWScript *this, BSTR *wpDllName);
HRESULT STDMETHODCALLTYPE WScript_Echo(IWScript *this, BSTR wpText);
HRESULT STDMETHODCALLTYPE WScript_Sleep(IWScript *this, int nTime);
HRESULT STDMETHODCALLTYPE WScript_Quit(IWScript *this, int nErrorCode);
HRESULT STDMETHODCALLTYPE WScript_ConnectObject(IWScript *this, IDispatch *objConnectTo, BSTR wpPrefix, VARIANT vtIID, int *nCount);
HRESULT STDMETHODCALLTYPE WScript_DisconnectObject(IWScript *this, IDispatch *objConnectTo);

HRESULT STDMETHODCALLTYPE Sink_QueryInterface(IDispatch *this, REFIID vTableGuid, void **ppv);
ULONG STDMETHODCALLTYPE Sink_AddRef(IDispatch *this);
ULONG STDMETHODCALLTYPE Sink_Release(IDispatch *this);
HRESULT STDMETHODCALLTYPE Sink_GetTypeInfoCount(IDispatch *this, UINT *pCount);
HRESULT STDMETHODCALLTYPE Sink_GetTypeInfo(IDispatch *this, UINT itinfo, LCID lcid, ITypeInfo **pTypeInfo);
HRESULT STDMETHODCALLTYPE Sink_GetIDsOfNames(IDispatch *this, REFIID riid, LPOLESTR *rgszNames, UINT cNames, LCID lcid, DISPID *rgdispid);
HRESULT STDMETHODCALLTYPE Sink_Invoke(IDispatch *this, DISPID dispid, REFIID riid, LCID lcid, WORD wFlags, DISPPARAMS *params, VARIANT *result, EXCEPINFO *pexcepinfo, UINT *puArgErr);

SINKITEM* StackInsertSink(SINKSTACK *hStack);
SINKITEM* StackGetSink(SINKSTACK *hStack, IDispatch *objConnectTo);
void StackDeleteSink(SINKSTACK *hStack, SINKITEM *lpSinkItem);
void StackFreeSinks(SINKSTACK *hStack);
CONNECTITEM* StackInsertConnection(CONNECTSTACK *hStack);
void StackDeleteConnection(CONNECTSTACK *hStack, CONNECTITEM *lpConnectItem);
void StackFreeConnections(CONNECTSTACK *hStack);

#endif
