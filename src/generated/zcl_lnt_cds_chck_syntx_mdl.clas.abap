* TS: src/rules/cds_check_syntax.ts.module module
CLASS zcl_lnt_cds_chck_syntx_mdl DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-DATA known_quan_data_elements TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLASS-DATA known_curr_data_elements TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLASS-DATA reserved_element_names TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CONSTANTS max_label_length TYPE int8 VALUE 40.
    CLASS-DATA vw_entty_frbddn_annttns TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLASS-DATA zlnt_builtin_init_18d03cef5c95 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_70b92226996a.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
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
    DATA(t4) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t5) = |MENGE_D|.
    APPEND t5 TO t4->items.
    DATA(t6) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
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
    DATA(t10) = CAST zlnt_runtime_arra_8ecd6afe19e0( t8 ).
    DATA(t11) = |BWERT|.
    APPEND t11 TO t10->items.
    DATA(t12) = CAST zlnt_runtime_arra_8ecd6afe19e0( t8 ).
    DATA(t13) = |DZWERT|.
    APPEND t13 TO t12->items.
    DATA(t14) = CAST zlnt_runtime_arra_8ecd6afe19e0( t8 ).
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
    DATA(t18) = CAST zlnt_runtime_arra_8ecd6afe19e0( t16 ).
    DATA(t19) = |BEGIN|.
    APPEND t19 TO t18->items.
    DATA(t20) = CAST zlnt_runtime_arra_8ecd6afe19e0( t16 ).
    DATA(t21) = |NUMBER|.
    APPEND t21 TO t20->items.
    DATA(t22) = CAST zlnt_runtime_arra_8ecd6afe19e0( t16 ).
    DATA(t23) = |POSITION|.
    APPEND t23 TO t22->items.
    DATA(t24) = CAST zlnt_runtime_arra_8ecd6afe19e0( t16 ).
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
    DATA(t28) = CAST zlnt_runtime_arra_8ecd6afe19e0( t26 ).
    DATA(t29) = |Semantics.unitOfMeasure|.
    APPEND t29 TO t28->items.
    DATA(t30) = CAST zlnt_runtime_arra_8ecd6afe19e0( t26 ).
    DATA(t31) = |Semantics.currencyCode|.
    APPEND t31 TO t30->items.
    DATA(t32) = CAST zlnt_runtime_arra_8ecd6afe19e0( t26 ).
    t25 = t32.
    zcl_lnt_cds_chck_syntx_mdl=>vw_entty_frbddn_annttns = t25.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1859_f5d4762a7f09.
  ENDMETHOD.
ENDCLASS.
