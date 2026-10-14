* TS: src/objects/_abap_object.ts:10:48 shape.fc3a321e718d809123e67fd9289d5e0eddc17a836257d12b254769c1408a4c4e
CLASS zcl_lnt_shape_a5d24328 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA entry TYPE string.
    DATA max_length TYPE int8.
    METHODS constructor IMPORTING i_entry TYPE string i_max_length TYPE int8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_a5d24328 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_entry.
    DATA(t2) = i_max_length.
    DATA(t3) = t1.
    me->entry = t3.
    DATA(t4) = t2.
    me->max_length = t4.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1724_0c5cc4c83046.
  ENDMETHOD.
ENDCLASS.
