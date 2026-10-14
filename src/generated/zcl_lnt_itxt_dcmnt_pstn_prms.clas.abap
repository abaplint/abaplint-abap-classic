* TS: src/lsp/_interfaces.ts:3:1 ITextDocumentPositionParams
CLASS zcl_lnt_itxt_dcmnt_pstn_prms DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA text_document TYPE REF TO zcl_lnt_shape_9e00b1e6.
    DATA position_7b94 TYPE REF TO zcl_lnt_shape_38f98ddf.
    METHODS constructor IMPORTING i_text_document TYPE REF TO zcl_lnt_shape_9e00b1e6 i_position_a3fd TYPE REF TO zcl_lnt_shape_38f98ddf.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_itxt_dcmnt_pstn_prms IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_shape_9e00b1e6( i_text_document ).
    DATA(t2) = CAST zcl_lnt_shape_38f98ddf( i_position_a3fd ).
    DATA(t3) = CAST zcl_lnt_shape_9e00b1e6( t1 ).
    me->text_document = t3.
    DATA(t4) = CAST zcl_lnt_shape_38f98ddf( t2 ).
    me->position_7b94 = t4.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1062_1146100580cf.
  ENDMETHOD.
ENDCLASS.
