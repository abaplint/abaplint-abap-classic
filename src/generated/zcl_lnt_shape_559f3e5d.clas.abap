* TS: src/objects/rename/_object_renamer.ts:5:63 shape.29a61a5647d0e45935db48b53037095192d6d10d269e2e6512b30c7638389ff7
CLASS zcl_lnt_shape_559f3e5d DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA annotation_id TYPE string.
    DATA range TYPE REF TO zcl_lnt_shape_9ead17bd.
    DATA new_text TYPE string.
    METHODS constructor IMPORTING i_annotation_id TYPE string i_range TYPE REF TO zcl_lnt_shape_9ead17bd OPTIONAL i_new_text TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_559f3e5d IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_annotation_id.
    DATA(t2) = i_range.
    DATA(t3) = i_new_text.
    DATA(t4) = t1.
    me->annotation_id = t4.
    DATA t5 TYPE REF TO zcl_lnt_shape_9ead17bd.
    DATA(t6) = t2.
    t5 = t6.
    me->range = t5.
    DATA(t7) = t3.
    me->new_text = t7.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1737_6cc23fb84df6.
  ENDMETHOD.
ENDCLASS.
