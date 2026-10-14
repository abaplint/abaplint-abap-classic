* TS: src/lsp/_interfaces.ts:8:1 IRenameParams
CLASS zcl_lnt_irename_params DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA text_document TYPE REF TO zcl_lnt_shape_9e00b1e6.
    DATA position_7b94 TYPE REF TO zcl_lnt_shape_38f98ddf.
    DATA new_name TYPE string.
    METHODS constructor IMPORTING i_text_document TYPE REF TO zcl_lnt_shape_9e00b1e6 i_position_a3fd TYPE REF TO zcl_lnt_shape_38f98ddf i_new_name TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_irename_params IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_shape_9e00b1e6( i_text_document ).
    DATA(t2) = CAST zcl_lnt_shape_38f98ddf( i_position_a3fd ).
    DATA(t3) = i_new_name.
    DATA(t4) = CAST zcl_lnt_shape_9e00b1e6( t1 ).
    me->text_document = t4.
    DATA(t5) = CAST zcl_lnt_shape_38f98ddf( t2 ).
    me->position_7b94 = t5.
    DATA(t6) = t3.
    me->new_name = t6.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1063_f4e3a2ea6cf6.
  ENDMETHOD.
ENDCLASS.
