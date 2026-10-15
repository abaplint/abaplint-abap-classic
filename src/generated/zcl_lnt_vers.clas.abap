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
    DATA(t1) = i_release_7928.
    DATA(t2) = i_runnable.
    DATA(t3) = i_also.
    DATA(t4) = t1.
    me->release_3664 = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `release`.
    DATA(t5) = t2.
    me->runnable = t5.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `runnable`.
    DATA(t6) = t3.
    me->also = t6.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `also`.
  ENDMETHOD.

  METHOD list_keywords.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t2) = me->runnable.
    t1 = t2->list_keywords( ).
    result = t1.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_r_f634.
    DATA t2 TYPE abap_bool.
    DATA(t3) = CONV abap_bool( zcl_lnt_combi=>is_open_abap( ) ).
    DATA(t4) = abap_true.
    t2 = xsdbool( t3 = t4 ).
    IF t2 = abap_true.
      DATA(t5) = VALUE abap_bool( ).
      DATA(t6) = me->also.
      DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t7.
      DATA(t8) = abap_true.
      IF t8 = abap_true.
        DATA(t9) = |OpenABAP|.
        DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t10->has = abap_true.
        t10->value = t9.
        t7 = t10.
      ELSE.
        DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t11.
        t7 = t11.
      ENDIF.
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
        DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t15) = me->runnable.
        DATA(t16) = t1.
        t14 = t15->run( i_r_f634 = t16 ).
        result = t14.
        RETURN.
      ENDIF.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t17.
      DATA(t18) = VALUE abap_bool( ).
      DATA t19 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t19.
      DATA t20 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t20.
      DATA t21 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t21.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t21 = zcl_lnt_version_module=>release_b8cd.
      DATA(t22) = |v702|.
      t20 = t21->get( p0 = t22 ).
      t19 = t20.
      DATA(t23) = me->release_3664.
      t18 = zcl_lnt_version_module=>release_at_least( i_running = t19 i_required = t23 ).
      IF t18 = abap_true.
        DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t25) = me->runnable.
        DATA(t26) = t1.
        t24 = t25->run( i_r_f634 = t26 ).
        t17 = t24.
      ELSE.
        DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t27.
        t17 = t27.
      ENDIF.
      result = t17.
      RETURN.
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t28.
    DATA t29 TYPE abap_bool.
    DATA(t30) = CAST zcl_lnt_abap_release( zcl_lnt_combi=>get_release( ) ).
    DATA(t31) = me->release_3664.
    t29 = zcl_lnt_version_module=>release_at_least( i_running = t30 i_required = t31 ).
    IF t29 = abap_true.
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t33) = me->runnable.
      DATA(t34) = t1.
      t32 = t33->run( i_r_f634 = t34 ).
      t28 = t32.
    ELSE.
      DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t35.
      t28 = t35.
    ENDIF.
    result = t28.

  ENDMETHOD.

  METHOD get_using.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t2) = me->runnable.
    t1 = t2->get_using( ).
    result = t1.

  ENDMETHOD.

  METHOD railroad.
    DATA(t1) = VALUE string( ).
    DATA(t2) = VALUE string( ).
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = me->release_3664.
    t4 = t5->zlnt_view_read_sr_82456ee3ad31( ).
    t3 = t4.
    DATA(t6) = VALUE string( ).
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS NOT BOUND.
      t7 = abap_true.
    ELSE.
      t7 = xsdbool( t8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t7 = abap_true.
      DATA(t9) = |Newest|.
      t6 = t9.
    ELSE.
      DATA t10 TYPE string.
      DATA(t11) = t3.
      t10 = t11->as_string( ).
      t6 = t10.
    ENDIF.
    t2 = t6.
    t1 = t2.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = me->also.
    IF t13 IS BOUND.
      IF t13->has = abap_true.
        t12 = xsdbool( strlen( t13->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t12 = abap_true.
      DATA t14 TYPE string.
      DATA(t15) = t1.
      DATA t16 TYPE string.
      DATA(t17) = | or |.
      DATA t18 TYPE string.
      DATA(t19) = me->also.
      t18 = t19->value.
      DATA(t20) = strlen( t17 ).
      t16 = |{ t17 }{ t18 }|.
      DATA(t21) = strlen( t15 ).
      t14 = |{ t15 }{ t16 }|.
      t1 = t14.
    ENDIF.
    DATA t22 TYPE string.
    DATA t23 TYPE string.
    DATA t24 TYPE string.
    DATA t25 TYPE string.
    DATA(t26) = |Railroad.Sequence(Railroad.Comment("|.
    DATA(t27) = t1.
    DATA(t28) = strlen( t26 ).
    t25 = |{ t26 }{ t27 }|.
    DATA(t29) = |", \{\}), |.
    DATA(t30) = strlen( t25 ).
    t24 = |{ t25 }{ t29 }|.
    DATA t31 TYPE string.
    DATA(t32) = me->runnable.
    t31 = t32->railroad( ).
    DATA(t33) = strlen( t24 ).
    t23 = |{ t24 }{ t31 }|.
    DATA(t34) = |)|.
    DATA(t35) = strlen( t23 ).
    t22 = |{ t23 }{ t34 }|.
    result = t22.

  ENDMETHOD.

  METHOD to_str.
    DATA t1 TYPE string.
    DATA t2 TYPE string.
    DATA(t3) = |Version(|.
    DATA t4 TYPE string.
    DATA(t5) = me->runnable.
    t4 = t5->to_str( ).
    DATA(t6) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t7) = |)|.
    DATA(t8) = strlen( t2 ).
    t1 = |{ t2 }{ t7 }|.
    result = t1.

  ENDMETHOD.

  METHOD first.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t2) = me->runnable.
    t1 = t2->first( ).
    result = t1.

  ENDMETHOD.

  METHOD run_one.
    DATA(t1) = i_x.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    t5 = t6.
    DATA(t7) = t5.
    DATA(t8) = t1.
    t7->load( ).
    APPEND t8 TO t7->items.
    t7->save( ).
    DATA(t9) = t5.
    t4 = t9.
    t3 = t4.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t10.
    DATA t11 TYPE abap_bool.
    DATA(t12) = CONV abap_bool( zcl_lnt_combi=>is_open_abap( ) ).
    DATA(t13) = abap_true.
    t11 = xsdbool( t12 = t13 ).
    IF t11 = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t14.
      DATA(t15) = VALUE abap_bool( ).
      DATA(t16) = me->also.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t17.
      DATA(t18) = abap_true.
      IF t18 = abap_true.
        DATA(t19) = |OpenABAP|.
        DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t20->has = abap_true.
        t20->value = t19.
        t17 = t20.
      ELSE.
        DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t21.
        t17 = t21.
      ENDIF.
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
        DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t25) = me->runnable.
        DATA(t26) = t3.
        t24 = t25->run( i_r_f634 = t26 ).
        t14 = t24.
      ELSE.
        DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t27.
        DATA(t28) = VALUE abap_bool( ).
        DATA t29 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t29.
        DATA t30 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t30.
        DATA t31 TYPE REF TO zlnt_runtime_map__201f3699a39e.
        CLEAR t31.
        IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
          zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
        ENDIF.
        t31 = zcl_lnt_version_module=>release_b8cd.
        DATA(t32) = |v702|.
        t30 = t31->get( p0 = t32 ).
        t29 = t30.
        DATA(t33) = me->release_3664.
        t28 = zcl_lnt_version_module=>release_at_least( i_running = t29 i_required = t33 ).
        IF t28 = abap_true.
          DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t35) = me->runnable.
          DATA(t36) = t3.
          t34 = t35->run( i_r_f634 = t36 ).
          t27 = t34.
        ELSE.
          DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t37.
          t27 = t37.
        ENDIF.
        t14 = t27.
      ENDIF.
      t10 = t14.
    ELSE.
      DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t38.
      DATA t39 TYPE abap_bool.
      DATA(t40) = CAST zcl_lnt_abap_release( zcl_lnt_combi=>get_release( ) ).
      DATA(t41) = me->release_3664.
      t39 = zcl_lnt_version_module=>release_at_least( i_running = t40 i_required = t41 ).
      IF t39 = abap_true.
        DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t43) = me->runnable.
        DATA(t44) = t3.
        t42 = t43->run( i_r_f634 = t44 ).
        t38 = t42.
      ELSE.
        DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t45.
        t38 = t45.
      ENDIF.
      t10 = t38.
    ENDIF.
    t2 = t10.
    result = t2.

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
