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
      DATA(t8) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t8->has = abap_true.
      t8->value = abap_false.
      t2 = t8.
    ENDIF.
    DATA t10 TYPE string.
    t10 = |Railroad.Diagram(|.
    IF xsdbool( t2->value = abap_true ) = abap_true.
      t10 = |Railroad.ComplexDiagram(|.
    ENDIF.
    DATA t19 TYPE string.
    DATA t20 TYPE string.
    DATA(t21) = |Railroad.Diagram.INTERNAL_ALIGNMENT = 'left';\n|.
    DATA(t23) = strlen( t21 ).
    t20 = |{ t21 }{ t10 }|.
    DATA t24 TYPE string.
    t24 = t1->railroad( ).
    DATA(t26) = strlen( t20 ).
    t19 = |{ t20 }{ t24 }|.
    DATA(t28) = strlen( t19 ).
    result = |{ t19 }{ |).toString();| }|.

  ENDMETHOD.

  METHOD list_keywords.
    IF zcl_lnt_combi=>zlnt_builtin_init_eaa3c6c35789 = abap_false.
      zcl_lnt_combi=>zlnt_builtin_init_6f0e2d68980a( ).
    ENDIF.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t2 = i_runnable->list_keywords( ).
    DATA t6 TYPE f.
    t6 = CONV f( -1 ).
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t8 = t2.
    DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t10.
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
      DATA(t17) = CONV f( 1 ).
      t6 = t6 + t17.
      DATA t19 TYPE f.
      t19 = t8->indexof( p0 = t13 ).
      IF xsdbool( t19 = t6 ) = abap_true.
        t10->load( ).
        APPEND t13 TO t10->items.
        t10->save( ).
      ENDIF.
    ENDDO.
    t2 = t10.
    result = t2.

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
      DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t10->has = abap_true.
      t10->value = |Normal|.
      t4 = t10.
    ENDIF.
    IF zcl_lnt_combi=>zlnt_builtin_init_eaa3c6c35789 = abap_false.
      zcl_lnt_combi=>zlnt_builtin_init_6f0e2d68980a( ).
    ENDIF.
    zcl_lnt_combi=>lang_ver = t4->value.
    DATA(t15) = VALUE string( ).
    IF t3 IS BOUND.
      t15 = t3->type_of( ).
      IF t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t3->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
        t15 = `function`.
      ENDIF.
    ELSE.
      t15 = `undefined`.
    ENDIF.
    IF xsdbool( t15 = |string| ) = abap_true.
      IF zcl_lnt_combi=>zlnt_builtin_init_eaa3c6c35789 = abap_false.
        zcl_lnt_combi=>zlnt_builtin_init_6f0e2d68980a( ).
      ENDIF.
      zcl_lnt_combi=>release_3664 = zcl_lnt_version_module=>version_to_abap_release( i_v = t3->as_string( ) ).
    ELSE.
      IF zcl_lnt_combi=>zlnt_builtin_init_eaa3c6c35789 = abap_false.
        zcl_lnt_combi=>zlnt_builtin_init_6f0e2d68980a( ).
      ENDIF.
      DATA t21 TYPE REF TO zcl_lnt_abap_release.
      IF t3 IS BOUND.
        IF t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t21 ?= t3->oval.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
        IF t21 IS NOT BOUND.
          IF t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t23 TYPE REF TO zlnt_view_storage_74017ca272ac.
            IF t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
            ENDIF.
            TRY.
                t23 ?= t3->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
            ENDTRY.
            IF t23->structural( ) <> abap_true.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
            ENDIF.
          ENDIF.
          DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t21 = NEW zcl_lnt_abap_release( view_source = t3 i_name = VALUE string( ) i_abap = t25 i_kernel = t26 i_op = t27 i_cloud_47cd = t28 i_ce = t29 i_ordinal = VALUE f( ) ).
        ENDIF.
      ENDIF.
      zcl_lnt_combi=>release_3664 = t21.
    ENDIF.
    DATA t32 TYPE REF TO zcl_lnt_st_result.
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t32 = NEW zcl_lnt_st_result( i_tokens = t2 i_token_index = CONV f( 0 ) i_nodes_5198 = t35 ).
    DATA t36 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    TRY.
        DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t37 = t1->run_one( i_x = t32 ).
        DATA t42 TYPE REF TO zcl_lnt_st_result.
        DATA t43 TYPE REF TO object.
        DATA(t44) = VALUE i( ).
        DO.
          t37->load( ).
          IF t44 >= lines( t37->items ).
            EXIT.
          ENDIF.
          CLEAR t43.
          READ TABLE t37->items INDEX t44 + 1 INTO t43.
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
          DATA(t48) = VALUE int8( ).
          DATA t50 TYPE REF TO zcl_lnt_st_result.
          CLEAR t50.
          t50 = t42.
          DATA(t52) = VALUE f( ).
          DATA(t53) = VALUE int8( ).
          DATA(t54) = VALUE int8( ).
          DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t56.
          t56 = t50->tokens.
          t56->load( ).
          t54 = lines( t56->items ).
          DATA(t58) = VALUE int8( ).
          t58 = t50->token_index.
          t53 = t54 - t58.
          t52 = t53.
          t48 = t52.
          IF xsdbool( t48 = CONV int8( 0 ) ) = abap_true.
            result = t42->get_nodes( ).
            RETURN.
          ENDIF.
        ENDDO.
      CATCH zlnt_exception_cl_30eec8e8805d INTO t36.
        DATA(t67) = t36->payload.
        IF xsdbool( t67 IS BOUND AND t67 IS INSTANCE OF zcx_lnt_fail_combinator_error ) = abap_true.
          CLEAR result.
          RETURN.
        ENDIF.
        DATA t71 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        t71 = NEW #( ).
        t71->payload = t67.
        CLEAR t71->source_value.
        IF t67 IS BOUND.
          DATA t73 TYPE REF TO zlnt_view_storage_74017ca272ac.
          DATA t74 TYPE REF TO object.
          t74 = t67.
          TRY.
              t71->source_value ?= t74.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t71->source_value IS NOT BOUND.
            TRY.
                t73 ?= t67.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t73 IS BOUND.
              t71->source_value = t73->source( ).
            ENDIF.
            IF t71->source_value IS NOT BOUND.
              CREATE OBJECT t71->source_value.
              t71->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t71->source_value->oval = t67.
            ENDIF.
          ENDIF.
        ENDIF.
        RAISE EXCEPTION t71.
    ENDTRY.
    CLEAR result.

  ENDMETHOD.

  METHOD get_release.
    IF zcl_lnt_combi=>zlnt_builtin_init_eaa3c6c35789 = abap_false.
      zcl_lnt_combi=>zlnt_builtin_init_6f0e2d68980a( ).
    ENDIF.
    IF zcl_lnt_combi=>zlnt_builtin_init_eaa3c6c35789 = abap_false.
      zcl_lnt_combi=>zlnt_builtin_init_6f0e2d68980a( ).
    ENDIF.
    result = zcl_lnt_combi=>release_3664.

  ENDMETHOD.

  METHOD get_language_version.
    IF zcl_lnt_combi=>zlnt_builtin_init_eaa3c6c35789 = abap_false.
      zcl_lnt_combi=>zlnt_builtin_init_6f0e2d68980a( ).
    ENDIF.
    IF zcl_lnt_combi=>zlnt_builtin_init_eaa3c6c35789 = abap_false.
      zcl_lnt_combi=>zlnt_builtin_init_6f0e2d68980a( ).
    ENDIF.
    result = zcl_lnt_combi=>lang_ver.

  ENDMETHOD.

  METHOD is_open_abap.
    IF zcl_lnt_combi=>zlnt_builtin_init_eaa3c6c35789 = abap_false.
      zcl_lnt_combi=>zlnt_builtin_init_6f0e2d68980a( ).
    ENDIF.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_combi=>zlnt_builtin_init_eaa3c6c35789 = abap_false.
      zcl_lnt_combi=>zlnt_builtin_init_6f0e2d68980a( ).
    ENDIF.
    t2 = zcl_lnt_combi=>release_3664.
    DATA t6 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t6 = zcl_lnt_version_module=>release_b8cd->get( p0 = |open-abap| ).
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2 IS BOUND.
      IF t2 IS BOUND.
        DATA t11 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t12 TYPE REF TO object.
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
    IF t6 IS BOUND.
      IF t6 IS BOUND.
        DATA t13 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t14 TYPE REF TO object.
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
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    zcl_lnt_combi=>release_3664 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    IF zcl_lnt_combi=>zlnt_builtin_init_eaa3c6c35789 = abap_false.
      zcl_lnt_combi=>zlnt_builtin_init_6f0e2d68980a( ).
    ENDIF.
    zcl_lnt_combi=>lang_ver = |Normal|.
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
