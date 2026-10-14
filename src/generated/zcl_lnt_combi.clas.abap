* TS: src/abap/2_statements/combi.ts:1023:1 Combi
CLASS zcl_lnt_combi DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-DATA release_3664 TYPE REF TO zcl_lnt_abap_release.
    CLASS-DATA lang_ver TYPE string.
    CLASS-METHODS railroad IMPORTING i_runnable TYPE REF TO zif_lnt_statement_runnable i_complex TYPE REF TO zlnt_runtime_opti_7f2541396f43 RETURNING VALUE(result) TYPE string.
    CLASS-METHODS list_keywords IMPORTING i_runnable TYPE REF TO zif_lnt_statement_runnable RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLASS-METHODS run IMPORTING i_runnable TYPE REF TO zif_lnt_statement_runnable i_tokens TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_version_or_release TYPE REF TO zlnt_runtime_dyna_a429568d5be8 i_language_version_0e1d TYPE REF TO
    zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-METHODS get_release RETURNING VALUE(result) TYPE REF TO zcl_lnt_abap_release.
    CLASS-METHODS get_language_version RETURNING VALUE(result) TYPE string.
    CLASS-METHODS is_open_abap RETURNING VALUE(result) TYPE abap_bool.
    CLASS-DATA zlnt_builtin_init_eaa3c6c35789 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_6f0e2d68980a.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_combi IMPLEMENTATION.
  METHOD railroad.
    IF zcl_lnt_combi=>zlnt_builtin_init_eaa3c6c35789 = abap_false.
      zcl_lnt_combi=>zlnt_builtin_init_6f0e2d68980a( ).
    ENDIF.
    DATA(t1) = i_runnable.
    DATA(t2) = i_complex.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = t2.
    IF t4 IS INITIAL.
      t3 = abap_true.
    ELSEIF t4->has = abap_false.
      t3 = abap_true.
    ENDIF.
    IF t3 = abap_true.
      DATA t5 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t5.
      DATA(t6) = abap_true.
      IF t6 = abap_true.
        DATA(t7) = abap_false.
        DATA(t8) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t8->has = abap_true.
        t8->value = t7.
        t5 = t8.
      ELSE.
        DATA t9 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t9.
        t5 = t9.
      ENDIF.
      t2 = t5.
    ENDIF.
    DATA t10 TYPE string.
    DATA(t11) = |Railroad.Diagram(|.
    t10 = t11.
    DATA t12 TYPE abap_bool.
    DATA t13 TYPE abap_bool.
    DATA(t14) = t2.
    t13 = t14->value.
    DATA(t15) = abap_true.
    t12 = xsdbool( t13 = t15 ).
    IF t12 = abap_true.
      DATA(t16) = |Railroad.ComplexDiagram(|.
      t10 = t16.
    ENDIF.
    DATA t17 TYPE string.
    DATA t18 TYPE string.
    DATA t19 TYPE string.
    DATA t20 TYPE string.
    DATA(t21) = |Railroad.Diagram.INTERNAL_ALIGNMENT = 'left';|.
    DATA t22 TYPE c LENGTH 1.
    CLEAR t22.
    t22 = cl_abap_conv_in_ce=>uccpi( 10 ).
    CONCATENATE t21 t22 INTO t21 RESPECTING BLANKS.
    DATA(t23) = t10.
    DATA(t24) = strlen( t21 ).
    t20 = |{ t21 }{ t23 }|.
    DATA t25 TYPE string.
    DATA(t26) = t1.
    t25 = t26->railroad( ).
    DATA(t27) = strlen( t20 ).
    t19 = |{ t20 }{ t25 }|.
    DATA(t28) = |).toString();|.
    DATA(t29) = strlen( t19 ).
    t18 = |{ t19 }{ t28 }|.
    t17 = t18.
    DATA(t30) = t17.
    result = t30.

  ENDMETHOD.

  METHOD list_keywords.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    IF zcl_lnt_combi=>zlnt_builtin_init_eaa3c6c35789 = abap_false.
      zcl_lnt_combi=>zlnt_builtin_init_6f0e2d68980a( ).
    ENDIF.
    DATA(t1) = i_runnable.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t4) = t1.
    t3 = t4->list_keywords( ).
    t2 = t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t5.
    DATA t6 TYPE int8.
    DATA(t7) = CONV int8( -1 ).
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t9) = t2.
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t11.
    t10 = t11.
    DATA(t12) = t2.
    DATA(t13) = VALUE string( ).
    LOOP AT t12->items INTO t13.
      DATA t14 TYPE int8.
      DATA(t15) = t6.
      DATA(t16) = CONV int8( 1 ).
      t14 = t15 + t16.
      IF t14 < range_int8_bound_min OR t14 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t6 = t14.
      DATA t17 TYPE abap_bool.
      DATA t18 TYPE int8.
      DATA t19 TYPE i.
      DATA(t20) = t8.
      DATA(t21) = t13.
      t19 = t20->indexof( p0 = t21 ).
      t18 = t19.
      DATA(t22) = t6.
      t17 = xsdbool( t18 = t22 ).
      IF t17 = abap_true.
        DATA(t23) = t10.
        DATA(t24) = t13.
        APPEND t24 TO t23->items.
      ENDIF.
    ENDLOOP.
    DATA(t25) = t10.
    t5 = t25.
    t2 = t5.
    DATA(t26) = t2.
    result = t26.

  ENDMETHOD.

  METHOD run.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    IF zcl_lnt_combi=>zlnt_builtin_init_eaa3c6c35789 = abap_false.
      zcl_lnt_combi=>zlnt_builtin_init_6f0e2d68980a( ).
    ENDIF.
    DATA(t1) = i_runnable.
    DATA(t2) = i_tokens.
    DATA(t3) = i_version_or_release.
    DATA(t4) = i_language_version_0e1d.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t4.
    IF t6 IS INITIAL.
      t5 = abap_true.
    ELSEIF t6->has = abap_false.
      t5 = abap_true.
    ENDIF.
    IF t5 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t7.
      DATA(t8) = abap_true.
      IF t8 = abap_true.
        DATA(t9) = |Normal|.
        DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t10->has = abap_true.
        t10->value = t9.
        t7 = t10.
      ELSE.
        DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t11.
        t7 = t11.
      ENDIF.
      t4 = t7.
    ENDIF.
    IF zcl_lnt_combi=>zlnt_builtin_init_eaa3c6c35789 = abap_false.
      zcl_lnt_combi=>zlnt_builtin_init_6f0e2d68980a( ).
    ENDIF.
    DATA(t12) = VALUE string( ).
    DATA(t13) = t4.
    t12 = t13->value.
    zcl_lnt_combi=>lang_ver = t12.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = VALUE string( ).
    DATA(t16) = t3.
    IF t16 IS BOUND.
      t15 = t16->type_of( ).
    ELSE.
      t15 = `undefined`.
    ENDIF.
    DATA(t17) = |string|.
    t14 = xsdbool( t15 = t17 ).
    IF t14 = abap_true.
      IF zcl_lnt_combi=>zlnt_builtin_init_eaa3c6c35789 = abap_false.
        zcl_lnt_combi=>zlnt_builtin_init_6f0e2d68980a( ).
      ENDIF.
      DATA t18 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t18.
      DATA(t19) = VALUE string( ).
      DATA(t20) = t3.
      t19 = t20->as_string( ).
      t18 = zcl_lnt_version_module=>version_to_abap_release( i_v = t19 ).
      zcl_lnt_combi=>release_3664 = t18.
    ELSE.
      IF zcl_lnt_combi=>zlnt_builtin_init_eaa3c6c35789 = abap_false.
        zcl_lnt_combi=>zlnt_builtin_init_6f0e2d68980a( ).
      ENDIF.
      DATA t21 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t21.
      DATA(t22) = t3.
      DATA t23 TYPE REF TO object.
      CLEAR t23.
      t23 = t22->as_ref( ).
      t21 ?= t23.
      zcl_lnt_combi=>release_3664 = t21.
    ENDIF.
    DATA t24 TYPE REF TO zcl_lnt_st_result.
    CLEAR t24.
    DATA t25 TYPE REF TO zcl_lnt_st_result.
    CLEAR t25.
    DATA(t26) = t2.
    DATA(t27) = CONV int8( 0 ).
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t28.
    t25 = NEW zcl_lnt_st_result( i_tokens = t26 i_token_index = t27 i_nodes_5198 = t28 ).
    t24 = t25.
    DATA t29 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    CLEAR t29.
    TRY.
        DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t30.
        DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t31.
        DATA(t32) = t1.
        DATA(t33) = t24.
        t31 = t32->run_one( i_x = t33 ).
        t30 = t31.
        DATA(t34) = t30.
        DATA t35 TYPE REF TO zcl_lnt_st_result.
        CLEAR t35.
        DATA t36 TYPE REF TO object.
        CLEAR t36.
        LOOP AT t34->items INTO t36.
          t35 ?= t36.
          DATA(t37) = VALUE abap_bool( ).
          DATA(t38) = VALUE int8( ).
          DATA t39 TYPE REF TO zcl_lnt_st_result.
          CLEAR t39.
          DATA(t40) = t35.
          t39 = t40.
          DATA(t41) = VALUE int8( ).
          DATA(t42) = VALUE int8( ).
          DATA(t43) = VALUE i( ).
          DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t44.
          DATA(t45) = t39.
          t44 = t45->tokens.
          t43 = lines( t44->items ).
          t42 = t43.
          DATA(t46) = VALUE int8( ).
          DATA(t47) = VALUE i( ).
          DATA(t48) = t39.
          t47 = t48->token_index.
          t46 = t47.
          t41 = t42 - t46.
          IF t41 < range_int8_bound_min OR t41 > range_int8_bound_max.
            RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
          ENDIF.
          t38 = t41.
          DATA(t49) = CONV int8( 0 ).
          t37 = xsdbool( t38 = t49 ).
          IF t37 = abap_true.
            DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t50.
            DATA(t51) = abap_true.
            IF t51 = abap_true.
              DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t52.
              DATA(t53) = t35.
              t52 = t53->get_nodes( ).
              t50 = t52.
            ELSE.
              DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t54.
              t50 = t54.
            ENDIF.
            result = t50.
            RETURN.
          ENDIF.
        ENDLOOP.
      CATCH zlnt_exception_cl_30eec8e8805d INTO t29.
        DATA(t55) = t29->payload.
        DATA(t56) = VALUE abap_bool( ).
        DATA(t57) = t55.
        t56 = xsdbool( t57 IS BOUND AND t57 IS INSTANCE OF zcx_lnt_fail_combinator_error ).
        IF t56 = abap_true.
          DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t58.
          result = t58.
          RETURN.
        ENDIF.
        DATA t59 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t59.
        DATA(t60) = t55.
        t59 = NEW #( ).
        t59->payload = t60.
        RAISE EXCEPTION t59.
    ENDTRY.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t61.
    result = t61.

  ENDMETHOD.

  METHOD get_release.
    IF zcl_lnt_combi=>zlnt_builtin_init_eaa3c6c35789 = abap_false.
      zcl_lnt_combi=>zlnt_builtin_init_6f0e2d68980a( ).
    ENDIF.
    DATA t1 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1.
    IF zcl_lnt_combi=>zlnt_builtin_init_eaa3c6c35789 = abap_false.
      zcl_lnt_combi=>zlnt_builtin_init_6f0e2d68980a( ).
    ENDIF.
    t1 = zcl_lnt_combi=>release_3664.
    result = t1.

  ENDMETHOD.

  METHOD get_language_version.
    IF zcl_lnt_combi=>zlnt_builtin_init_eaa3c6c35789 = abap_false.
      zcl_lnt_combi=>zlnt_builtin_init_6f0e2d68980a( ).
    ENDIF.
    DATA(t1) = VALUE string( ).
    IF zcl_lnt_combi=>zlnt_builtin_init_eaa3c6c35789 = abap_false.
      zcl_lnt_combi=>zlnt_builtin_init_6f0e2d68980a( ).
    ENDIF.
    t1 = zcl_lnt_combi=>lang_ver.
    result = t1.

  ENDMETHOD.

  METHOD is_open_abap.
    IF zcl_lnt_combi=>zlnt_builtin_init_eaa3c6c35789 = abap_false.
      zcl_lnt_combi=>zlnt_builtin_init_6f0e2d68980a( ).
    ENDIF.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2.
    DATA(t3) = abap_true.
    IF t3 = abap_true.
      DATA t4 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t4.
      IF zcl_lnt_combi=>zlnt_builtin_init_eaa3c6c35789 = abap_false.
        zcl_lnt_combi=>zlnt_builtin_init_6f0e2d68980a( ).
      ENDIF.
      t4 = zcl_lnt_combi=>release_3664.
      t2 = t4.
    ELSE.
      DATA t5 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t5.
      t2 = t5.
    ENDIF.
    DATA t6 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t7.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t7 = zcl_lnt_version_module=>release_b8cd.
    DATA(t8) = |open-abap|.
    t6 = t7->get( p0 = t8 ).
    t1 = xsdbool( t2 = t6 ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_init_6f0e2d68980a.
    IF zlnt_builtin_init_eaa3c6c35789 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_eaa3c6c35789 = abap_true.
    IF zcl_lnt_combi=>zlnt_builtin_init_eaa3c6c35789 = abap_false.
      zcl_lnt_combi=>zlnt_builtin_init_6f0e2d68980a( ).
    ENDIF.
    DATA t1 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1.
    DATA t2 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3 = zcl_lnt_version_module=>release_b8cd.
    DATA(t4) = |v758|.
    t2 = t3->get( p0 = t4 ).
    t1 = t2.
    zcl_lnt_combi=>release_3664 = t1.
    IF zcl_lnt_combi=>zlnt_builtin_init_eaa3c6c35789 = abap_false.
      zcl_lnt_combi=>zlnt_builtin_init_6f0e2d68980a( ).
    ENDIF.
    DATA(t5) = |Normal|.
    zcl_lnt_combi=>lang_ver = t5.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d79_3c3f7183c10f7c.
  ENDMETHOD.
ENDCLASS.
