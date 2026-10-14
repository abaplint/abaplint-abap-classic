* TS: src/lsp/_interfaces.ts:24:1 ITextDocumentRange
CLASS zcl_lnt_itext_document_range DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA text_document TYPE REF TO zcl_lnt_shape_9e00b1e6.
    DATA start TYPE REF TO zcl_lnt_shape_38f98ddf.
    DATA end TYPE REF TO zcl_lnt_shape_38f98ddf.
    METHODS constructor IMPORTING i_text_document TYPE REF TO zcl_lnt_shape_9e00b1e6 i_start TYPE REF TO zcl_lnt_shape_38f98ddf i_end TYPE REF TO zcl_lnt_shape_38f98ddf.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_itext_document_range IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_shape_9e00b1e6( i_text_document ).
    DATA(t2) = CAST zcl_lnt_shape_38f98ddf( i_start ).
    DATA(t3) = CAST zcl_lnt_shape_38f98ddf( i_end ).
    DATA(t4) = CAST zcl_lnt_shape_9e00b1e6( t1 ).
    me->text_document = t4.
    DATA(t5) = CAST zcl_lnt_shape_38f98ddf( t2 ).
    me->start = t5.
    DATA(t6) = CAST zcl_lnt_shape_38f98ddf( t3 ).
    me->end = t6.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1066_3fb2b9a19997.
  ENDMETHOD.
ENDCLASS.
