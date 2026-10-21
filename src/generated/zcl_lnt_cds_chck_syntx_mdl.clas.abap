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
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t2.
    t2->load( ).
    APPEND |MENGE_D| TO t2->items.
    t2->save( ).
    zcl_lnt_cds_chck_syntx_mdl=>known_quan_data_elements = t2.
    IF zcl_lnt_cds_chck_syntx_mdl=>zlnt_builtin_init_18d03cef5c95 = abap_false.
      zcl_lnt_cds_chck_syntx_mdl=>zlnt_builtin_init_70b92226996a( ).
    ENDIF.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t8.
    t8->load( ).
    APPEND |BWERT| TO t8->items.
    t8->save( ).
    t8->load( ).
    APPEND |DZWERT| TO t8->items.
    t8->save( ).
    zcl_lnt_cds_chck_syntx_mdl=>known_curr_data_elements = t8.
    IF zcl_lnt_cds_chck_syntx_mdl=>zlnt_builtin_init_18d03cef5c95 = abap_false.
      zcl_lnt_cds_chck_syntx_mdl=>zlnt_builtin_init_70b92226996a( ).
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t16.
    t16->load( ).
    APPEND |BEGIN| TO t16->items.
    t16->save( ).
    t16->load( ).
    APPEND |NUMBER| TO t16->items.
    t16->save( ).
    t16->load( ).
    APPEND |POSITION| TO t16->items.
    t16->save( ).
    zcl_lnt_cds_chck_syntx_mdl=>reserved_element_names = t16.
    IF zcl_lnt_cds_chck_syntx_mdl=>zlnt_builtin_init_18d03cef5c95 = abap_false.
      zcl_lnt_cds_chck_syntx_mdl=>zlnt_builtin_init_70b92226996a( ).
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t26.
    t26->load( ).
    APPEND |Semantics.unitOfMeasure| TO t26->items.
    t26->save( ).
    t26->load( ).
    APPEND |Semantics.currencyCode| TO t26->items.
    t26->save( ).
    zcl_lnt_cds_chck_syntx_mdl=>vw_entty_frbddn_annttns = t26.
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
