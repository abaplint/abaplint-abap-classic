* TS: src/abap/5_syntax/expressions/dereference.ts:6:1 Dereference
CLASS zcl_lnt_sy_dereference DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zif_lnt_node i_type_9913 TYPE REF TO zcl_lnt_abstract_type i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_dereference IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t2) = i_type_9913.
    DATA(t3) = i_input_967e.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = VALUE abap_bool( ).
    DATA t7 TYPE abap_bool.
    DATA t8 TYPE abap_bool.
    t8 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_void_type ).
    t7 = t8.
    IF t8 = abap_false.
      DATA t10 TYPE abap_bool.
      t10 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_any_type ).
      t7 = t10.
    ENDIF.
    t6 = t7.
    IF t7 = abap_false.
      DATA t12 TYPE abap_bool.
      t12 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_data_type ).
      t6 = t12.
    ENDIF.
    t5 = t6.
    IF t6 = abap_false.
      DATA(t14) = VALUE abap_bool( ).
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t14 = xsdbool( t2 IS INITIAL ).
      t5 = t14.
    ENDIF.
    t4 = t5.
    IF t5 = abap_false.
      DATA t21 TYPE abap_bool.
      t21 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_unknown_type ).
      t4 = t21.
    ENDIF.
    IF t4 = abap_true.
      result = t2.
      RETURN.
    ENDIF.
    DATA t24 TYPE abap_bool.
    DATA t25 TYPE abap_bool.
    t25 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_data_reference ).
    t24 = xsdbool( t25 = abap_false ).
    IF t24 = abap_true.
      DATA(t28) = |Not a data reference, cannot be dereferenced|.
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t29 = t3->issues.
      DATA t31 TYPE REF TO zcl_lnt_issue.
      DATA t33 TYPE REF TO zcl_lnt_abstract_token.
      t33 = i_node->get_first_token( ).
      DATA t36 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t31 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t3 i_token = t33 i_message_26cb = t28 i_fix = t36 ).
      t29->load( ).
      APPEND t31 TO t29->items.
      t29->save( ).
      DATA t37 TYPE REF TO zcl_lnt_void_type.
      DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t40) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
      DATA(t41) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t41->has = abap_true.
      t41->value = t40.
      t38 = t41.
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t37 = zcl_lnt_void_type=>get_db65( i_voided = t38 i_qualified_name = t43 ).
      result = t37.
      RETURN.
    ENDIF.
    DATA t48 TYPE REF TO zcl_lnt_data_reference.
    t48 ?= t2.
    DATA t50 TYPE REF TO zcl_lnt_abstract_type.
    t50 = t48->type_cba0.
    result = t50.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d800_a614a7e91d19.
  ENDMETHOD.
ENDCLASS.
