* TS: src/lsp/language_server.ts:54:37 shape.8f2511c8664503cd06e15fc8f469e20d084fc6e457788cd8ebf768db075ff018
CLASS zcl_lnt_shape_e77d6389 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA text_document TYPE REF TO zcl_lnt_shape_9e00b1e6.
    DATA options TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    METHODS constructor IMPORTING i_text_document TYPE REF TO zcl_lnt_shape_9e00b1e6 OPTIONAL i_options TYPE REF TO zlnt_runtime_map__abd6fd794ffb OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_e77d6389 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_text_document.
    DATA(t2) = i_options.
    DATA t3 TYPE REF TO zcl_lnt_shape_9e00b1e6.
    DATA(t4) = t1.
    t3 = t4.
    me->text_document = t3.
    DATA(t5) = t2.
    me->options = t5.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1769_b5baf18a4c69.
  ENDMETHOD.
ENDCLASS.
