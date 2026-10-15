* TS: src/rules/cds_check_syntax.ts.module module
CLASS zcl_lnt_cds_chck_syntx_mdl DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA known_quan_data_elements TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLASS-DATA known_curr_data_elements TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLASS-DATA reserved_element_names TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CONSTANTS max_label_length TYPE f VALUE '40'.
    CLASS-DATA vw_entty_frbddn_annttns TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLASS-DATA zlnt_builtin_init_18d03cef5c95 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_70b92226996a.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_chck_syntx_mdl IMPLEMENTATION.
  METHOD zlnt_builtin_init_70b92226996a.
    IF zlnt_builtin_init_18d03cef5c95 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_18d03cef5c95 = abap_true.
    IF zcl_lnt_cds_chck_syntx_mdl=>zlnt_builtin_init_18d03cef5c95 = abap_false.
      zcl_lnt_cds_chck_syntx_mdl=>zlnt_builtin_init_70b92226996a( ).
    ENDIF.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = t2.
    DATA(t5) = |MENGE_D|.
    t4->load( ).
    APPEND t5 TO t4->items.
    t4->save( ).
    DATA(t6) = t2.
    t1 = t6.
    zcl_lnt_cds_chck_syntx_mdl=>known_quan_data_elements = t1.
    IF zcl_lnt_cds_chck_syntx_mdl=>zlnt_builtin_init_18d03cef5c95 = abap_false.
      zcl_lnt_cds_chck_syntx_mdl=>zlnt_builtin_init_70b92226996a( ).
    ENDIF.
    DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t9.
    t8 = t9.
    DATA(t10) = t8.
    DATA(t11) = |BWERT|.
    t10->load( ).
    APPEND t11 TO t10->items.
    t10->save( ).
    DATA(t12) = t8.
    DATA(t13) = |DZWERT|.
    t12->load( ).
    APPEND t13 TO t12->items.
    t12->save( ).
    DATA(t14) = t8.
    t7 = t14.
    zcl_lnt_cds_chck_syntx_mdl=>known_curr_data_elements = t7.
    IF zcl_lnt_cds_chck_syntx_mdl=>zlnt_builtin_init_18d03cef5c95 = abap_false.
      zcl_lnt_cds_chck_syntx_mdl=>zlnt_builtin_init_70b92226996a( ).
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t17.
    t16 = t17.
    DATA(t18) = t16.
    DATA(t19) = |BEGIN|.
    t18->load( ).
    APPEND t19 TO t18->items.
    t18->save( ).
    DATA(t20) = t16.
    DATA(t21) = |NUMBER|.
    t20->load( ).
    APPEND t21 TO t20->items.
    t20->save( ).
    DATA(t22) = t16.
    DATA(t23) = |POSITION|.
    t22->load( ).
    APPEND t23 TO t22->items.
    t22->save( ).
    DATA(t24) = t16.
    t15 = t24.
    zcl_lnt_cds_chck_syntx_mdl=>reserved_element_names = t15.
    IF zcl_lnt_cds_chck_syntx_mdl=>zlnt_builtin_init_18d03cef5c95 = abap_false.
      zcl_lnt_cds_chck_syntx_mdl=>zlnt_builtin_init_70b92226996a( ).
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t27.
    t26 = t27.
    DATA(t28) = t26.
    DATA(t29) = |Semantics.unitOfMeasure|.
    t28->load( ).
    APPEND t29 TO t28->items.
    t28->save( ).
    DATA(t30) = t26.
    DATA(t31) = |Semantics.currencyCode|.
    t30->load( ).
    APPEND t31 TO t30->items.
    t30->save( ).
    DATA(t32) = t26.
    t25 = t32.
    zcl_lnt_cds_chck_syntx_mdl=>vw_entty_frbddn_annttns = t25.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1954_d3f537771d05.
  ENDMETHOD.
ENDCLASS.
