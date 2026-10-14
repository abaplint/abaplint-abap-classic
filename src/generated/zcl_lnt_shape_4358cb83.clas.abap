* TS: src/objects/rename/_object_renamer.ts:5:63 shape.6c805788a32ccad3e79f6c40105842e26d63c9acba9d8c581115af7e554eb989
CLASS zcl_lnt_shape_4358cb83 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA range TYPE REF TO zcl_lnt_shape_9ead17bd.
    DATA snippet TYPE REF TO zcl_lnt_shape_d0b60cb0.
    DATA annotation_id TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_range TYPE REF TO zcl_lnt_shape_9ead17bd OPTIONAL i_snippet TYPE REF TO zcl_lnt_shape_d0b60cb0 OPTIONAL i_annotation_id TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_4358cb83 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_shape_9ead17bd( i_range ).
    DATA(t2) = CAST zcl_lnt_shape_d0b60cb0( i_snippet ).
    DATA(t3) = CAST zlnt_runtime_opti_4ba3bdccd169( i_annotation_id ).
    DATA t4 TYPE REF TO zcl_lnt_shape_9ead17bd.
    DATA(t5) = CAST zcl_lnt_shape_9ead17bd( t1 ).
    t4 = t5.
    me->range = t4.
    DATA t6 TYPE REF TO zcl_lnt_shape_d0b60cb0.
    DATA(t7) = CAST zcl_lnt_shape_d0b60cb0( t2 ).
    t6 = t7.
    me->snippet = t6.
    DATA(t8) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
    me->annotation_id = t8.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1738_a4ede2e8d353.
  ENDMETHOD.
ENDCLASS.
