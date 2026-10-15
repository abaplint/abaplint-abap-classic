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
    DATA(t1) = i_node.
    DATA(t2) = i_type_9913.
    DATA(t3) = i_input_967e.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = VALUE abap_bool( ).
    DATA t7 TYPE abap_bool.
    DATA t8 TYPE abap_bool.
    DATA(t9) = t2.
    t8 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_void_type ).
    t7 = t8.
    IF t8 = abap_false.
      DATA t10 TYPE abap_bool.
      DATA(t11) = t2.
      t10 = xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_any_type ).
      t7 = t10.
    ENDIF.
    t6 = t7.
    IF t7 = abap_false.
      DATA t12 TYPE abap_bool.
      DATA(t13) = t2.
      t12 = xsdbool( t13 IS BOUND AND t13 IS INSTANCE OF zcl_lnt_data_type ).
      t6 = t12.
    ENDIF.
    t5 = t6.
    IF t6 = abap_false.
      DATA(t14) = VALUE abap_bool( ).
      DATA t15 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t16) = t2.
      t15 = t16.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      t17 = t18.
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = t15.
      IF t20 IS INITIAL.
        t19 = abap_true.
      ENDIF.
      t14 = t19.
      t5 = t14.
    ENDIF.
    t4 = t5.
    IF t5 = abap_false.
      DATA t21 TYPE abap_bool.
      DATA(t22) = t2.
      t21 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_unknown_type ).
      t4 = t21.
    ENDIF.
    IF t4 = abap_true.
      DATA(t23) = t2.
      result = t23.
      RETURN.
    ENDIF.
    DATA t24 TYPE abap_bool.
    DATA t25 TYPE abap_bool.
    DATA(t26) = t2.
    t25 = xsdbool( t26 IS BOUND AND t26 IS INSTANCE OF zcl_lnt_data_reference ).
    t24 = xsdbool( t25 = abap_false ).
    IF t24 = abap_true.
      DATA t27 TYPE string.
      DATA(t28) = |Not a data reference, cannot be dereferenced|.
      t27 = t28.
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t30) = t3.
      t29 = t30->issues.
      DATA t31 TYPE REF TO zcl_lnt_issue.
      DATA(t32) = t3.
      DATA t33 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t34) = t1.
      t33 = t34->get_first_token( ).
      DATA(t35) = t27.
      DATA t36 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t36.
      t31 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t32 i_token = t33 i_message_26cb = t35 i_fix = t36 ).
      t29->load( ).
      APPEND t31 TO t29->items.
      t29->save( ).
      DATA t37 TYPE REF TO zcl_lnt_void_type.
      CLEAR t37.
      DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t38.
      DATA(t39) = abap_true.
      IF t39 = abap_true.
        DATA(t40) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t41) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t41->has = abap_true.
        t41->value = t40.
        t38 = t41.
      ELSE.
        DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t42.
        t38 = t42.
      ENDIF.
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t43.
      t37 = zcl_lnt_void_type=>get_db65( i_voided = t38 i_qualified_name = t43 ).
      result = t37.
      RETURN.
    ENDIF.
    DATA t44 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t44.
    DATA(t45) = abap_true.
    IF t45 = abap_true.
      DATA t46 TYPE REF TO zcl_lnt_abstract_type.
      DATA t47 TYPE REF TO zcl_lnt_data_reference.
      DATA t48 TYPE REF TO zcl_lnt_data_reference.
      DATA(t49) = t2.
      t48 ?= t49.
      t47 = t48.
      DATA t50 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t51) = t47.
      t50 = t51->type_cba0.
      t46 = t50.
      t44 = t46.
    ELSE.
      DATA t52 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t52.
      t44 = t52.
    ENDIF.
    result = t44.

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
