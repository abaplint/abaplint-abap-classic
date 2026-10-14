* TS: src/objects/rename/_object_renamer.ts:5:63 shape.06a1d4f5c04f974480b81aea8a7f0d8f276c8fd0f4e203212758f1df69de797f
CLASS zcl_lnt_shape_736a242f DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA kind TYPE string.
    DATA old_uri TYPE string.
    DATA new_uri TYPE string.
    DATA options TYPE REF TO zcl_lnt_shape_f7fb0253.
    DATA annotation_id TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_kind TYPE string i_old_uri TYPE string i_new_uri TYPE string i_options TYPE REF TO zcl_lnt_shape_f7fb0253 OPTIONAL i_annotation_id TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_736a242f IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_kind.
    DATA(t2) = i_old_uri.
    DATA(t3) = i_new_uri.
    DATA(t4) = CAST zcl_lnt_shape_f7fb0253( i_options ).
    DATA(t5) = CAST zlnt_runtime_opti_4ba3bdccd169( i_annotation_id ).
    DATA(t6) = t1.
    me->kind = t6.
    DATA(t7) = t2.
    me->old_uri = t7.
    DATA(t8) = t3.
    me->new_uri = t8.
    DATA(t9) = CAST zcl_lnt_shape_f7fb0253( t4 ).
    me->options = t9.
    DATA(t10) = CAST zlnt_runtime_opti_4ba3bdccd169( t5 ).
    me->annotation_id = t10.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1735_d7e4f4e7d0f4.
  ENDMETHOD.
ENDCLASS.
