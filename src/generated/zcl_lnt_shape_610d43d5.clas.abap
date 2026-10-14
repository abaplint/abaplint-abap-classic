* TS: src/objects/rename/_object_renamer.ts:5:63 shape.8d7850873e6fd6712c888b1d9d1ad96c4277678b18735d21267b85effb9aa5d2
CLASS zcl_lnt_shape_610d43d5 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA kind TYPE string.
    DATA uri TYPE string.
    DATA options TYPE REF TO zcl_lnt_shape_f7fb0253.
    DATA annotation_id TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_kind TYPE string i_uri TYPE string i_options TYPE REF TO zcl_lnt_shape_f7fb0253 OPTIONAL i_annotation_id TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_610d43d5 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_kind.
    DATA(t2) = i_uri.
    DATA(t3) = i_options.
    DATA(t4) = i_annotation_id.
    DATA(t5) = t1.
    me->kind = t5.
    DATA(t6) = t2.
    me->uri = t6.
    DATA(t7) = t3.
    me->options = t7.
    DATA(t8) = t4.
    me->annotation_id = t8.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1732_665a9671267d.
  ENDMETHOD.
ENDCLASS.
