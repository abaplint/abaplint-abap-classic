* TS: src/ddic.ts:213:11 shape.7eba6d66fcb3247db6ab979ecd68d83d7fb9e202b068bb486fcd57c30d106f4f
CLASS zcl_lnt_shape_f2185cd1 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA type_cba0 TYPE REF TO zcl_lnt_abstract_type.
    DATA object_a393 TYPE REF TO zcl_lnt_ob_data_definition.
    METHODS constructor IMPORTING i_type_9913 TYPE REF TO zcl_lnt_abstract_type OPTIONAL i_object_19cd TYPE REF TO zcl_lnt_ob_data_definition OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_f2185cd1 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_abstract_type( i_type_9913 ).
    DATA(t2) = CAST zcl_lnt_ob_data_definition( i_object_19cd ).
    DATA t3 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t4) = CAST zcl_lnt_abstract_type( t1 ).
    t3 = t4.
    me->type_cba0 = t3.
    DATA t5 TYPE REF TO zcl_lnt_ob_data_definition.
    DATA(t6) = CAST zcl_lnt_ob_data_definition( t2 ).
    t5 = t6.
    me->object_a393 = t5.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1903_4f08c1dbbc83.
  ENDMETHOD.
ENDCLASS.
