* TS: src/objects/data_definition.ts:15:11 shape.7caff569122e6588e8b867a5e0823708654b34e9047b3ef84247ffdad970636a
CLASS zcl_lnt_shape_5383185c DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA key TYPE abap_bool.
    DATA name TYPE string.
    DATA name_in_source TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA prefix TYPE string.
    DATA annotations TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS constructor IMPORTING i_key TYPE abap_bool i_name TYPE string i_name_in_source TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_prefix TYPE string i_annotations TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_5383185c IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_key.
    DATA(t2) = i_name.
    DATA(t3) = CAST zlnt_runtime_opti_4ba3bdccd169( i_name_in_source ).
    DATA(t4) = i_prefix.
    DATA(t5) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_annotations ).
    DATA(t6) = t1.
    me->key = t6.
    DATA(t7) = t2.
    me->name = t7.
    DATA(t8) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
    me->name_in_source = t8.
    DATA(t9) = t4.
    me->prefix = t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t11) = CAST zlnt_runtime_arra_8ecd6afe19e0( t5 ).
    t10 = t11.
    me->annotations = t10.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1780_31ffcbf67e4f.
  ENDMETHOD.
ENDCLASS.
