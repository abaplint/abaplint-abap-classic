* TS: src/rules/newline_between_methods.ts.module module
CLASS zcl_lnt_nwln_btwn_mthds_mdl DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA newline_logic_namespace TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLASS-DATA zlnt_builtin_init_6bb15190b359 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_a4694f196248.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_nwln_btwn_mthds_mdl IMPLEMENTATION.
  METHOD zlnt_builtin_init_a4694f196248.
    IF zlnt_builtin_init_6bb15190b359 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_6bb15190b359 = abap_true.
    IF zcl_lnt_nwln_btwn_mthds_mdl=>zlnt_builtin_init_6bb15190b359 = abap_false.
      zcl_lnt_nwln_btwn_mthds_mdl=>zlnt_builtin_init_a4694f196248( ).
    ENDIF.
    DATA(t1) = NEW zlnt_runtime_map__a1006b231250( ).
    zcl_lnt_nwln_btwn_mthds_mdl=>newline_logic_namespace = t1.
    DATA t2 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t3.
    IF zcl_lnt_nwln_btwn_mthds_mdl=>zlnt_builtin_init_6bb15190b359 = abap_false.
      zcl_lnt_nwln_btwn_mthds_mdl=>zlnt_builtin_init_a4694f196248( ).
    ENDIF.
    t3 = zcl_lnt_nwln_btwn_mthds_mdl=>newline_logic_namespace.
    DATA(t4) = |Exact|.
    DATA(t5) = |exact|.
    t2 = t3->set( p0 = t4 p1 = t5 ).
    DATA t6 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t7.
    IF zcl_lnt_nwln_btwn_mthds_mdl=>zlnt_builtin_init_6bb15190b359 = abap_false.
      zcl_lnt_nwln_btwn_mthds_mdl=>zlnt_builtin_init_a4694f196248( ).
    ENDIF.
    t7 = zcl_lnt_nwln_btwn_mthds_mdl=>newline_logic_namespace.
    DATA(t8) = |Less|.
    DATA(t9) = |less|.
    t6 = t7->set( p0 = t8 p1 = t9 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1980_66dbc5bd68c6.
  ENDMETHOD.
ENDCLASS.
