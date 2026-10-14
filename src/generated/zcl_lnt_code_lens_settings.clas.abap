* TS: src/lsp/code_lens.ts:12:1 CodeLensSettings
CLASS zcl_lnt_code_lens_settings DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA message_text TYPE abap_bool.
    DATA dynamic_exceptions TYPE abap_bool.
    METHODS constructor IMPORTING i_message_text TYPE abap_bool i_dynamic_exceptions TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_code_lens_settings IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_message_text.
    DATA(t2) = i_dynamic_exceptions.
    DATA(t3) = t1.
    me->message_text = t3.
    DATA(t4) = t2.
    me->dynamic_exceptions = t4.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1762_18d600c2ed84.
  ENDMETHOD.
ENDCLASS.
