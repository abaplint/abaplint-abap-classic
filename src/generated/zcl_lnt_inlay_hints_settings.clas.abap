* TS: src/lsp/inlay_hints.ts:11:1 InlayHintsSettings
CLASS zcl_lnt_inlay_hints_settings DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA inferred_types TYPE abap_bool.
    METHODS constructor IMPORTING i_inferred_types TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_inlay_hints_settings IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_inferred_types.
    DATA(t2) = t1.
    me->inferred_types = t2.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1765_8a352a038d7a.
  ENDMETHOD.
ENDCLASS.
