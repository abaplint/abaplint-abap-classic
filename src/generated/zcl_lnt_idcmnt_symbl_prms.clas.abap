* TS: src/lsp/_interfaces.ts:20:1 IDocumentSymbolParams
CLASS zcl_lnt_idcmnt_symbl_prms DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA text_document TYPE REF TO zcl_lnt_shape_9e00b1e6.
    METHODS constructor IMPORTING i_text_document TYPE REF TO zcl_lnt_shape_9e00b1e6.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_idcmnt_symbl_prms IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_text_document.
    DATA(t2) = t1.
    me->text_document = t2.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1065_c808f34fb6c6.
  ENDMETHOD.
ENDCLASS.
