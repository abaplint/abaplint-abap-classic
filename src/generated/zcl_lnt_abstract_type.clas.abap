* TS: src/abap/types/basic/_abstract_type.ts:10:1 AbstractType
CLASS zcl_lnt_abstract_type DEFINITION PUBLIC ABSTRACT CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_union_ea265422.
    INTERFACES zif_lnt_union_b6d4892d.
    DATA data_56cc TYPE REF TO zcl_lnt_abstract_type_data.
    METHODS constructor IMPORTING i_input_967e TYPE REF TO zcl_lnt_abstract_type_data OPTIONAL.
    METHODS get_abstract_type_data RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type_data.
    METHODS get_qualified_name RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_rtti_name RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_description RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_conversion_exit RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_ddic_name RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS to_text ABSTRACT IMPORTING i_level TYPE f RETURNING VALUE(result) TYPE string.
    METHODS to_abap ABSTRACT RETURNING VALUE(result) TYPE string.
    METHODS to_cds ABSTRACT RETURNING VALUE(result) TYPE string.
    METHODS is_generic ABSTRACT RETURNING VALUE(result) TYPE abap_bool.
    METHODS contains_void ABSTRACT RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_abstract_type IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_input_967e.
    DATA(t2) = t1.
    me->data_56cc = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `data`.
  ENDMETHOD.

  METHOD get_abstract_type_data.
    DATA(t1) = me->data_56cc.
    result = t1.

  ENDMETHOD.

  METHOD get_qualified_name.
    DATA t1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1.
    DATA t2 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t3) = me->data_56cc.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t4.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t2.
    IF t6 IS INITIAL.
      t5 = abap_true.
    ENDIF.
    IF t5 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t7.
      t4 = t7.
    ELSE.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t9 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA(t10) = t2.
      t9 = t10.
      t8 = t9->zlnt_view_read_sr_c978da49ae47( ).
      t4 = t8.
    ENDIF.
    t1 = t4.
    result = t1.

  ENDMETHOD.

  METHOD get_rtti_name.
    DATA t1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1.
    DATA t2 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t3) = me->data_56cc.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t4.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t2.
    IF t6 IS INITIAL.
      t5 = abap_true.
    ENDIF.
    IF t5 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t7.
      t4 = t7.
    ELSE.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t9 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA(t10) = t2.
      t9 = t10.
      t8 = t9->zlnt_view_read_sr_a5933bdf8829( ).
      t4 = t8.
    ENDIF.
    t1 = t4.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA t1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1.
    DATA t2 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t3) = me->data_56cc.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t4.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t2.
    IF t6 IS INITIAL.
      t5 = abap_true.
    ENDIF.
    IF t5 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t7.
      t4 = t7.
    ELSE.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t9 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA(t10) = t2.
      t9 = t10.
      t8 = t9->zlnt_view_read_sr_b2a3e27508db( ).
      t4 = t8.
    ENDIF.
    t1 = t4.
    result = t1.

  ENDMETHOD.

  METHOD get_conversion_exit.
    DATA t1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1.
    DATA t2 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t3) = me->data_56cc.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t4.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t2.
    IF t6 IS INITIAL.
      t5 = abap_true.
    ENDIF.
    IF t5 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t7.
      t4 = t7.
    ELSE.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t9 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA(t10) = t2.
      t9 = t10.
      t8 = t9->zlnt_view_read_sr_dfbdd4b4a00f( ).
      t4 = t8.
    ENDIF.
    t1 = t4.
    result = t1.

  ENDMETHOD.

  METHOD get_ddic_name.
    DATA t1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1.
    DATA t2 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t3) = me->data_56cc.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t4.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t2.
    IF t6 IS INITIAL.
      t5 = abap_true.
    ENDIF.
    IF t5 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t7.
      t4 = t7.
    ELSE.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t9 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA(t10) = t2.
      t9 = t10.
      t8 = t9->zlnt_view_read_sr_19ee0de30d00( ).
      t4 = t8.
    ENDIF.
    t1 = t4.
    result = t1.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1015_9f7859f16d8d.
  ENDMETHOD.

  METHOD zif_lnt_union_ea265422~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_b6d4892d~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
