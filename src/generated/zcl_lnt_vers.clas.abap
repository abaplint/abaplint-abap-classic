* TS: src/abap/2_statements/combi.ts:157:1 Vers
CLASS zcl_lnt_vers DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_runnable.
    INTERFACES zif_lnt_union_daf022d4.
    DATA release_3664 TYPE REF TO zcl_lnt_abap_release.
    DATA runnable TYPE REF TO zif_lnt_statement_runnable.
    DATA also TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_release_7928 TYPE REF TO zcl_lnt_abap_release i_runnable TYPE REF TO zif_lnt_statement_runnable i_also TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    METHODS list_keywords RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS run IMPORTING i_r_f634 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_using RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS railroad RETURNING VALUE(result) TYPE string.
    METHODS to_str RETURNING VALUE(result) TYPE string.
    METHODS first RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS run_one IMPORTING i_x TYPE REF TO zcl_lnt_st_result RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_vers IMPLEMENTATION.
  METHOD constructor.
    DATA(t2) = i_runnable.
    DATA(t3) = i_also.
    me->release_3664 = i_release_7928.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `release`.
    me->runnable = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `runnable`.
    me->also = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `also`.
  ENDMETHOD.

  METHOD list_keywords.
    result = me->runnable->list_keywords( ).

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_r_f634.
    DATA(t3) = CONV abap_bool( zcl_lnt_combi=>is_open_abap( ) ).
    IF xsdbool( t3 = abap_true ) = abap_true.
      DATA(t5) = VALUE abap_bool( ).
      DATA(t6) = me->also.
      DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t10->has = abap_true.
      t10->value = |OpenABAP|.
      t7 = t10.
      DATA(t12) = VALUE abap_bool( ).
      DATA(t13) = VALUE abap_bool( ).
      IF t6 IS BOUND.
        t12 = t6->has.
      ENDIF.
      IF t7 IS BOUND.
        t13 = t7->has.
      ENDIF.
      IF t12 = t13.
        IF t12 = abap_false.
          t5 = abap_true.
        ELSEIF t6->value = t7->value.
          t5 = abap_true.
        ENDIF.
      ENDIF.
      IF t5 = abap_true.
        result = me->runnable->run( i_r_f634 = t1 ).
        RETURN.
      ENDIF.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t19 TYPE REF TO zcl_lnt_abap_release.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t19 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v702| ).
      DATA(t23) = me->release_3664.
      IF zcl_lnt_version_module=>release_at_least( i_running = t19 i_required = t23 ) = abap_true.
        t17 = me->runnable->run( i_r_f634 = t1 ).
      ELSE.
        CREATE OBJECT t17.
      ENDIF.
      result = t17.
      RETURN.
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t30) = CAST zcl_lnt_abap_release( zcl_lnt_combi=>get_release( ) ).
    DATA(t31) = me->release_3664.
    IF zcl_lnt_version_module=>release_at_least( i_running = t30 i_required = t31 ) = abap_true.
      t28 = me->runnable->run( i_r_f634 = t1 ).
    ELSE.
      CREATE OBJECT t28.
    ENDIF.
    result = t28.

  ENDMETHOD.

  METHOD get_using.
    result = me->runnable->get_using( ).

  ENDMETHOD.

  METHOD railroad.
    DATA(t1) = VALUE string( ).
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3 = me->release_3664->zlnt_view_read_sr_82456ee3ad31( ).
    DATA(t6) = VALUE string( ).
    DATA(t7) = VALUE abap_bool( ).
    IF t3 IS NOT BOUND.
      t7 = abap_true.
    ELSE.
      t7 = xsdbool( t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t7 = abap_true.
      t6 = |Newest|.
    ELSE.
      t6 = t3->as_string( ).
    ENDIF.
    t1 = t6.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = me->also.
    IF t13 IS BOUND.
      IF t13->has = abap_true.
        t12 = xsdbool( strlen( t13->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t12 = abap_true.
      DATA(t15) = t1.
      DATA t16 TYPE string.
      DATA(t17) = | or |.
      DATA t18 TYPE string.
      t18 = me->also->value.
      DATA(t20) = strlen( t17 ).
      t16 = |{ t17 }{ t18 }|.
      DATA(t21) = strlen( t15 ).
      t1 = |{ t15 }{ t16 }|.
    ENDIF.
    DATA t23 TYPE string.
    DATA t24 TYPE string.
    DATA t25 TYPE string.
    DATA(t26) = |Railroad.Sequence(Railroad.Comment("|.
    DATA(t28) = strlen( t26 ).
    t25 = |{ t26 }{ t1 }|.
    DATA(t30) = strlen( t25 ).
    t24 = |{ t25 }{ |", \{\}), | }|.
    DATA t31 TYPE string.
    t31 = me->runnable->railroad( ).
    DATA(t33) = strlen( t24 ).
    t23 = |{ t24 }{ t31 }|.
    DATA(t35) = strlen( t23 ).
    result = |{ t23 }{ |)| }|.

  ENDMETHOD.

  METHOD to_str.
    DATA t2 TYPE string.
    DATA(t3) = |Version(|.
    DATA t4 TYPE string.
    t4 = me->runnable->to_str( ).
    DATA(t6) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t8) = strlen( t2 ).
    result = |{ t2 }{ |)| }|.

  ENDMETHOD.

  METHOD first.
    result = me->runnable->first( ).

  ENDMETHOD.

  METHOD run_one.
    DATA(t1) = i_x.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t5->load( ).
    APPEND t1 TO t5->items.
    t5->save( ).
    t3 = t5.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t12) = CONV abap_bool( zcl_lnt_combi=>is_open_abap( ) ).
    IF xsdbool( t12 = abap_true ) = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t15) = VALUE abap_bool( ).
      DATA(t16) = me->also.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t20->has = abap_true.
      t20->value = |OpenABAP|.
      t17 = t20.
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = VALUE abap_bool( ).
      IF t16 IS BOUND.
        t22 = t16->has.
      ENDIF.
      IF t17 IS BOUND.
        t23 = t17->has.
      ENDIF.
      IF t22 = t23.
        IF t22 = abap_false.
          t15 = abap_true.
        ELSEIF t16->value = t17->value.
          t15 = abap_true.
        ENDIF.
      ENDIF.
      IF t15 = abap_true.
        t14 = me->runnable->run( i_r_f634 = t3 ).
      ELSE.
        DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t29 TYPE REF TO zcl_lnt_abap_release.
        IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
          zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
        ENDIF.
        t29 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v702| ).
        DATA(t33) = me->release_3664.
        IF zcl_lnt_version_module=>release_at_least( i_running = t29 i_required = t33 ) = abap_true.
          t27 = me->runnable->run( i_r_f634 = t3 ).
        ELSE.
          CREATE OBJECT t27.
        ENDIF.
        t14 = t27.
      ENDIF.
      t10 = t14.
    ELSE.
      DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t40) = CAST zcl_lnt_abap_release( zcl_lnt_combi=>get_release( ) ).
      DATA(t41) = me->release_3664.
      IF zcl_lnt_version_module=>release_at_least( i_running = t40 i_required = t41 ) = abap_true.
        t38 = me->runnable->run( i_r_f634 = t3 ).
      ELSE.
        CREATE OBJECT t38.
      ENDIF.
      t10 = t38.
    ENDIF.
    result = t10.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d64_ac3530979ec5e5.
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~run.
    result = me->run( i_r_f634 = i_r_f634 ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~railroad.
    result = me->railroad( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~to_str.
    result = me->to_str( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~get_using.
    result = me->get_using( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~list_keywords.
    result = me->list_keywords( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~first.
    result = me->first( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~run_one.
    result = me->run_one( i_x = i_x ).
  ENDMETHOD.

  METHOD zif_lnt_union_daf022d4~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
