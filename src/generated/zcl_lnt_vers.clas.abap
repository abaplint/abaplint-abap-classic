* TS: src/abap/2_statements/combi.ts:157:1 Vers
CLASS zcl_lnt_vers DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
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
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_vers IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_abap_release( i_release_7928 ).
    DATA(t2) = CAST zif_lnt_statement_runnable( i_runnable ).
    DATA(t3) = CAST zlnt_runtime_opti_4ba3bdccd169( i_also ).
    DATA(t4) = CAST zcl_lnt_abap_release( t1 ).
    me->release_3664 = t4.
    DATA(t5) = CAST zif_lnt_statement_runnable( t2 ).
    me->runnable = t5.
    DATA(t6) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
    me->also = t6.
  ENDMETHOD.
  METHOD list_keywords.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:169|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_r_f634 ).
    DATA t2 TYPE abap_bool.
    DATA(t3) = CONV abap_bool( zcl_lnt_combi=>is_open_abap( ) ).
    DATA(t4) = abap_true.
    t2 = xsdbool( t3 = t4 ).
    IF t2 = abap_true.
      DATA(t5) = VALUE abap_bool( ).
      DATA(t6) = CAST zlnt_runtime_opti_4ba3bdccd169( me->also ).
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
        DATA(t15) = CAST zif_lnt_statement_runnable( me->runnable ).
        DATA(t16) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
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
      DATA(t23) = CAST zcl_lnt_abap_release( me->release_3664 ).
      t18 = zcl_lnt_version_module=>release_at_least( i_running = t19 i_required = t23 ).
      IF t18 = abap_true.
        DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t25) = CAST zif_lnt_statement_runnable( me->runnable ).
        DATA(t26) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
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
    DATA(t31) = CAST zcl_lnt_abap_release( me->release_3664 ).
    t29 = zcl_lnt_version_module=>release_at_least( i_running = t30 i_required = t31 ).
    IF t29 = abap_true.
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t33) = CAST zif_lnt_statement_runnable( me->runnable ).
      DATA(t34) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
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
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:182|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD railroad.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:186|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD to_str.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:198|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD first.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t2) = CAST zif_lnt_statement_runnable( me->runnable ).
    t1 = t2->first( ).
    result = t1.

  ENDMETHOD.
  METHOD run_one.
    DATA(t1) = CAST zcl_lnt_st_result( i_x ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    t5 = t6.
    DATA(t7) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA(t8) = CAST zcl_lnt_st_result( t1 ).
    APPEND t8 TO t7->items.
    DATA(t9) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
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
      DATA(t16) = CAST zlnt_runtime_opti_4ba3bdccd169( me->also ).
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
        DATA(t25) = CAST zif_lnt_statement_runnable( me->runnable ).
        DATA(t26) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
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
        DATA(t33) = CAST zcl_lnt_abap_release( me->release_3664 ).
        t28 = zcl_lnt_version_module=>release_at_least( i_running = t29 i_required = t33 ).
        IF t28 = abap_true.
          DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t35) = CAST zif_lnt_statement_runnable( me->runnable ).
          DATA(t36) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
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
      DATA(t41) = CAST zcl_lnt_abap_release( me->release_3664 ).
      t39 = zcl_lnt_version_module=>release_at_least( i_running = t40 i_required = t41 ).
      IF t39 = abap_true.
        DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t43) = CAST zif_lnt_statement_runnable( me->runnable ).
        DATA(t44) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
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
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d63_66d91aad4aea9b.
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
