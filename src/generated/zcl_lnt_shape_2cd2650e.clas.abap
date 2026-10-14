* TS: src/objects/table.ts:36:23 shape.f7aa97fbda430057b642ac91503dccf1694f11d268a45dd931a7d8e7843fba3d
CLASS zcl_lnt_shape_2cd2650e DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA table_category TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA data_class TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA delivery_class TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA size_category TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA enhancement_category TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA secondary_indexes TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA fields_464c TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_table_category TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_data_class TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_delivery_class TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL
    i_size_category TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_enhancement_category TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_secondary_indexes TYPE
    REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL i_fields_62af TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_2cd2650e IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_table_category ).
    DATA(t2) = CAST zlnt_runtime_opti_4ba3bdccd169( i_data_class ).
    DATA(t3) = CAST zlnt_runtime_opti_4ba3bdccd169( i_delivery_class ).
    DATA(t4) = CAST zlnt_runtime_opti_4ba3bdccd169( i_size_category ).
    DATA(t5) = CAST zlnt_runtime_opti_4ba3bdccd169( i_enhancement_category ).
    DATA(t6) = CAST zlnt_runtime_opti_4ba3bdccd169( i_description ).
    DATA(t7) = CAST zlnt_runtime_arra_c22708faf2e3( i_secondary_indexes ).
    DATA(t8) = CAST zlnt_runtime_arra_c22708faf2e3( i_fields_62af ).
    DATA(t9) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    me->table_category = t9.
    DATA(t10) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
    me->data_class = t10.
    DATA(t11) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
    me->delivery_class = t11.
    DATA(t12) = CAST zlnt_runtime_opti_4ba3bdccd169( t4 ).
    me->size_category = t12.
    DATA(t13) = CAST zlnt_runtime_opti_4ba3bdccd169( t5 ).
    me->enhancement_category = t13.
    DATA(t14) = CAST zlnt_runtime_opti_4ba3bdccd169( t6 ).
    me->description = t14.
    DATA(t15) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
    me->secondary_indexes = t15.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t8 ).
    t16 = t17.
    me->fields_464c = t16.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1804_91626cd8ed82.
  ENDMETHOD.
ENDCLASS.
