* TS: src/abap/2_statements/combi.ts:1023:1 Combi
CLASS zcl_lnt_combi DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
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
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
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
    DATA(t21) = |Railroad.Diagram.INTERNAL_ALIGNMENT = 'left';\n|.
    DATA(t22) = t10.
    DATA(t23) = strlen( t21 ).
    t20 = |{ t21 }{ t22 }|.
    DATA t24 TYPE string.
    DATA(t25) = t1.
    t24 = t25->railroad( ).
    DATA(t26) = strlen( t20 ).
    t19 = |{ t20 }{ t24 }|.
    DATA(t27) = |).toString();|.
    DATA(t28) = strlen( t19 ).
    t18 = |{ t19 }{ t27 }|.
    t17 = t18.
    DATA(t29) = t17.
    result = t29.

  ENDMETHOD.

  METHOD list_keywords.
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
    DATA t6 TYPE f.
    DATA(t7) = CONV f( -1 ).
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
    t12->dense( ).
    DATA(t14) = VALUE i( ).
    DO.
      t12->load( ).
      IF t14 >= lines( t12->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t12->items INDEX t14 + 1 INTO t13.
      IF t12->has( t14 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t14 = t14 + 1.
      DATA t15 TYPE f.
      DATA(t16) = t6.
      DATA(t17) = CONV f( 1 ).
      t15 = t16 + t17.
      t6 = t15.
      DATA t18 TYPE abap_bool.
      DATA t19 TYPE f.
      DATA t20 TYPE i.
      DATA(t21) = t8.
      DATA(t22) = t13.
      t20 = t21->indexof( p0 = t22 ).
      t19 = t20.
      DATA(t23) = t6.
      t18 = xsdbool( t19 = t23 ).
      IF t18 = abap_true.
        DATA(t24) = t10.
        DATA(t25) = t13.
        t24->load( ).
        APPEND t25 TO t24->items.
        t24->save( ).
      ENDIF.
    ENDDO.
    DATA(t26) = t10.
    t5 = t26.
    t2 = t5.
    DATA(t27) = t2.
    result = t27.

  ENDMETHOD.

  METHOD run.
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
      IF t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t16->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
        t15 = `function`.
      ENDIF.
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
      CLEAR t21.
      IF t22 IS BOUND.
        IF t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t21 ?= t22->oval.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
        IF t21 IS NOT BOUND.
          IF t22->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t23 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t23.
            IF t22->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
            ENDIF.
            TRY.
                t23 ?= t22->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
            ENDTRY.
            IF t23->structural( ) <> abap_true.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
            ENDIF.
          ENDIF.
          DATA(t24) = VALUE string( ).
          DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t25.
          DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t26.
          DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t27.
          DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t28.
          DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t29.
          DATA(t30) = VALUE f( ).
          t21 = NEW zcl_lnt_abap_release( view_source = t22 i_name = t24 i_abap = t25 i_kernel = t26 i_op = t27 i_cloud_47cd = t28 i_ce = t29 i_ordinal = t30 ).
        ENDIF.
      ENDIF.
      zcl_lnt_combi=>release_3664 = t21.
    ENDIF.
    DATA t31 TYPE REF TO zcl_lnt_st_result.
    CLEAR t31.
    DATA t32 TYPE REF TO zcl_lnt_st_result.
    CLEAR t32.
    DATA(t33) = t2.
    DATA(t34) = CONV f( 0 ).
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t35.
    t32 = NEW zcl_lnt_st_result( i_tokens = t33 i_token_index = t34 i_nodes_5198 = t35 ).
    t31 = t32.
    DATA t36 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    CLEAR t36.
    TRY.
        DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t37.
        DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t38.
        DATA(t39) = t1.
        DATA(t40) = t31.
        t38 = t39->run_one( i_x = t40 ).
        t37 = t38.
        DATA(t41) = t37.
        DATA t42 TYPE REF TO zcl_lnt_st_result.
        CLEAR t42.
        DATA t43 TYPE REF TO object.
        CLEAR t43.
        DATA(t44) = VALUE i( ).
        DO.
          t41->load( ).
          IF t44 >= lines( t41->items ).
            EXIT.
          ENDIF.
          CLEAR t43.
          READ TABLE t41->items INDEX t44 + 1 INTO t43.
          t44 = t44 + 1.
          DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t45.
          CLEAR t42.
          IF t43 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t45 ?= t43.
            DATA t46 TYPE REF TO object.
            CLEAR t46.
            t46 = t45->as_ref( ).
            t42 ?= t46.
          ELSE.
            t42 ?= t43.
          ENDIF.
          DATA(t47) = VALUE abap_bool( ).
          DATA(t48) = VALUE int8( ).
          DATA(t49) = VALUE f( ).
          DATA t50 TYPE REF TO zcl_lnt_st_result.
          CLEAR t50.
          DATA(t51) = t42.
          t50 = t51.
          DATA(t52) = VALUE f( ).
          DATA(t53) = VALUE int8( ).
          DATA(t54) = VALUE int8( ).
          DATA(t55) = VALUE i( ).
          DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t56.
          DATA(t57) = t50.
          t56 = t57->tokens.
          t56->load( ).
          t55 = lines( t56->items ).
          t54 = t55.
          DATA(t58) = VALUE int8( ).
          DATA(t59) = VALUE i( ).
          DATA(t60) = t50.
          t59 = t60->token_index.
          t58 = t59.
          t53 = t54 - t58.
          t52 = t53.
          t49 = t52.
          t48 = t49.
          DATA(t61) = CONV int8( 0 ).
          t47 = xsdbool( t48 = t61 ).
          IF t47 = abap_true.
            DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t62.
            DATA(t63) = abap_true.
            IF t63 = abap_true.
              DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t64.
              DATA(t65) = t42.
              t64 = t65->get_nodes( ).
              t62 = t64.
            ELSE.
              DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t66.
              t62 = t66.
            ENDIF.
            result = t62.
            RETURN.
          ENDIF.
        ENDDO.
      CATCH zlnt_exception_cl_30eec8e8805d INTO t36.
        DATA(t67) = t36->payload.
        DATA(t68) = VALUE abap_bool( ).
        DATA(t69) = t67.
        t68 = xsdbool( t69 IS BOUND AND t69 IS INSTANCE OF zcx_lnt_fail_combinator_error ).
        IF t68 = abap_true.
          DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t70.
          result = t70.
          RETURN.
        ENDIF.
        DATA t71 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t71.
        DATA(t72) = t67.
        t71 = NEW #( ).
        t71->payload = t72.
        CLEAR t71->source_value.
        IF t72 IS BOUND.
          DATA t73 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t73.
          DATA t74 TYPE REF TO object.
          CLEAR t74.
          CLEAR t73.
          t74 = t72.
          TRY.
              t71->source_value ?= t74.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t71->source_value IS NOT BOUND.
            TRY.
                t73 ?= t72.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t73 IS BOUND.
              t71->source_value = t73->source( ).
            ENDIF.
            IF t71->source_value IS NOT BOUND.
              CREATE OBJECT t71->source_value.
              t71->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t71->source_value->oval = t72.
            ENDIF.
          ENDIF.
        ENDIF.
        RAISE EXCEPTION t71.
    ENDTRY.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t75.
    result = t75.

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
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    CLEAR t9.
    IF t2 IS BOUND.
      CLEAR t9.
      IF t2 IS BOUND.
        DATA t11 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t11.
        DATA t12 TYPE REF TO object.
        CLEAR t12.
        CLEAR t11.
        t12 = t2.
        TRY.
            t9 ?= t12.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t9 IS NOT BOUND.
          TRY.
              t11 ?= t2.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t11 IS BOUND.
            t9 = t11->source( ).
          ENDIF.
          IF t9 IS NOT BOUND.
            CREATE OBJECT t9.
            t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t9->oval = t2.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    CLEAR t10.
    IF t6 IS BOUND.
      CLEAR t10.
      IF t6 IS BOUND.
        DATA t13 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t13.
        DATA t14 TYPE REF TO object.
        CLEAR t14.
        CLEAR t13.
        t14 = t6.
        TRY.
            t10 ?= t14.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t10 IS NOT BOUND.
          TRY.
              t13 ?= t6.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t13 IS BOUND.
            t10 = t13->source( ).
          ENDIF.
          IF t10 IS NOT BOUND.
            CREATE OBJECT t10.
            t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t10->oval = t6.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    IF t9 IS BOUND.
      t1 = t9->strict_equals( t10 ).
    ELSE.
      t1 = xsdbool( t10 IS NOT BOUND ).
    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d81_45b735890b6abd.
  ENDMETHOD.
ENDCLASS.
