* TS: src/version.ts.module module
CLASS zcl_lnt_version_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA release_defs_raw TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-DATA release_list TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-DATA by_name TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLASS-DATA release_b8cd TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLASS-DATA by_deprecated TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLASS-DATA default_release TYPE REF TO zcl_lnt_abap_release.
    CLASS-DATA language_version_namespace TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLASS-DATA version_namespace TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLASS-METHODS release_at_least IMPORTING i_running TYPE REF TO zcl_lnt_abap_release i_required TYPE REF TO zcl_lnt_abap_release RETURNING VALUE(result) TYPE abap_bool.
    CLASS-METHODS version_to_abap_release IMPORTING i_v TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_abap_release.
    CLASS-METHODS get_previous_version IMPORTING i_v TYPE string RETURNING VALUE(result) TYPE string.
    CLASS-DATA zlnt_builtin_init_e6a1a7a56c5d TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_839fc4c13920.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_version_module IMPLEMENTATION.
  METHOD release_at_least.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    DATA(t2) = i_required.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE f.
    t4 = i_running->zlnt_view_read_sr_60d588ccf004( ).
    DATA t6 TYPE f.
    t6 = t2->zlnt_view_read_sr_60d588ccf004( ).
    t3 = xsdbool( t4 >= t6 ).
    result = t3.

  ENDMETHOD.

  METHOD version_to_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    DATA(t1) = i_v.
    DATA t2 TYPE REF TO zcl_lnt_abap_release.
    DATA t3 TYPE REF TO zcl_lnt_abap_release.
    DATA t4 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t4 = zcl_lnt_version_module=>by_deprecated.
    t3 = t4->get( p0 = t1 ).
    t2 = t3.
    DATA(t6) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t6 = xsdbool( t2 IS INITIAL ).
    IF t6 = abap_true.
      DATA t13 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t14 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t17) = VALUE string( ).
      DATA(t18) = |No ABAPRelease mapping for Version: |.
      DATA(t20) = strlen( t18 ).
      t17 = |{ t18 }{ t1 }|.
      DATA(t21) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t21->has = abap_true.
      t21->value = t17.
      t15 = t21.
      t14 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t15 ).
      t13 = NEW #( ).
      t13->payload = t14.
      CLEAR t13->source_value.
      DATA t23 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t24 TYPE REF TO object.
      t24 = t14.
      TRY.
          t13->source_value ?= t24.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t13->source_value IS NOT BOUND.
        TRY.
            t23 ?= t14.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t23 IS BOUND.
          t13->source_value = t23->source( ).
        ENDIF.
        IF t13->source_value IS NOT BOUND.
          CREATE OBJECT t13->source_value.
          t13->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t13->source_value->oval = t14.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t13.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD get_previous_version.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    DATA(t1) = i_v.
    DATA t2 TYPE abap_bool.
    DATA(t4) = |open-abap|.
    t2 = xsdbool( t1 = t4 ).
    IF t2 = abap_true.
      result = |v702|.
      RETURN.
    ENDIF.
    DATA t6 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t8 TYPE REF TO zlnt_runtime_map__a1006b231250.
    DATA t9 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t9 = zcl_lnt_version_module=>version_namespace.
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t11.
    t10 = t11.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t12 = t8->keys( ).
    DATA(t14) = VALUE string( ).
    t12->dense( ).
    DATA(t15) = VALUE i( ).
    DO.
      t12->load( ).
      IF t15 >= lines( t12->items ).
        EXIT.
      ENDIF.
      CLEAR t14.
      READ TABLE t12->items INDEX t15 + 1 INTO t14.
      IF t12->has( t15 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t15 = t15 + 1.
      DATA t17 TYPE string.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t18 = t8->get( p0 = t14 ).
      t17 = t18->value.
      t10->load( ).
      APPEND t17 TO t10->items.
      t10->save( ).
    ENDDO.
    t6 = t10.
    DATA t22 TYPE i.
    DATA t23 TYPE i.
    t23 = t6->indexof( p0 = t1 ).
    t22 = t23.
    DATA t26 TYPE abap_bool.
    DATA(t28) = 0.
    t26 = xsdbool( t22 < t28 ).
    IF t26 = abap_true.
      DATA t29 TYPE REF TO zlnt_exception_st_fa837731be5a.
      DATA t30 TYPE string.
      DATA(t31) = |Unknown version: |.
      DATA(t33) = strlen( t31 ).
      t30 = |{ t31 }{ t1 }|.
      t29 = NEW #( ).
      t29->payload = t30.
      CLEAR t29->source_value.
      CREATE OBJECT t29->source_value.
      t29->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t29->source_value->sval = t30.
      RAISE EXCEPTION t29.
    ENDIF.
    DATA t34 TYPE abap_bool.
    DATA(t36) = 0.
    t34 = xsdbool( t22 = t36 ).
    IF t34 = abap_true.
      DATA t37 TYPE REF TO zlnt_exception_st_fa837731be5a.
      DATA t38 TYPE string.
      DATA(t39) = |Nothing lower: |.
      DATA(t41) = strlen( t39 ).
      t38 = |{ t39 }{ t1 }|.
      t37 = NEW #( ).
      t37->payload = t38.
      CLEAR t37->source_value.
      CREATE OBJECT t37->source_value.
      t37->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t37->source_value->sval = t38.
      RAISE EXCEPTION t37.
    ENDIF.
    DATA(t42) = VALUE string( ).
    DATA t44 TYPE i.
    DATA(t46) = 1.
    t44 = t22 - t46.
    t44 = t44 + 1.
    IF t6->has( t44 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t6->load( ).
    CLEAR t42.
    READ TABLE t6->items INDEX t44 INTO t42.
    result = t42.

  ENDMETHOD.

  METHOD zlnt_builtin_init_839fc4c13920.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    IF zlnt_builtin_init_e6a1a7a56c5d = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_e6a1a7a56c5d = abap_true.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    zcl_lnt_version_module=>language_version_namespace = NEW zlnt_runtime_map__a1006b231250( ).
    DATA t2 TYPE REF TO zlnt_runtime_map__a1006b231250.
    DATA t3 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3 = zcl_lnt_version_module=>language_version_namespace.
    DATA(t4) = |Normal|.
    DATA(t5) = |Normal|.
    t2 = t3->set( p0 = t4 p1 = t5 ).
    DATA t6 TYPE REF TO zlnt_runtime_map__a1006b231250.
    DATA t7 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t7 = zcl_lnt_version_module=>language_version_namespace.
    DATA(t8) = |KeyUser|.
    DATA(t9) = |KeyUser|.
    t6 = t7->set( p0 = t8 p1 = t9 ).
    DATA t10 TYPE REF TO zlnt_runtime_map__a1006b231250.
    DATA t11 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t11 = zcl_lnt_version_module=>language_version_namespace.
    DATA(t12) = |Cloud|.
    DATA(t13) = |Cloud|.
    t10 = t11->set( p0 = t12 p1 = t13 ).
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    zcl_lnt_version_module=>version_namespace = NEW zlnt_runtime_map__a1006b231250( ).
    DATA t15 TYPE REF TO zlnt_runtime_map__a1006b231250.
    DATA t16 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t16 = zcl_lnt_version_module=>version_namespace.
    DATA(t17) = |OpenABAP|.
    DATA(t18) = |open-abap|.
    t15 = t16->set( p0 = t17 p1 = t18 ).
    DATA t19 TYPE REF TO zlnt_runtime_map__a1006b231250.
    DATA t20 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t20 = zcl_lnt_version_module=>version_namespace.
    DATA(t21) = |v700|.
    DATA(t22) = |v700|.
    t19 = t20->set( p0 = t21 p1 = t22 ).
    DATA t23 TYPE REF TO zlnt_runtime_map__a1006b231250.
    DATA t24 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t24 = zcl_lnt_version_module=>version_namespace.
    DATA(t25) = |v702|.
    DATA(t26) = |v702|.
    t23 = t24->set( p0 = t25 p1 = t26 ).
    DATA t27 TYPE REF TO zlnt_runtime_map__a1006b231250.
    DATA t28 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t28 = zcl_lnt_version_module=>version_namespace.
    DATA(t29) = |v740sp02|.
    DATA(t30) = |v740sp02|.
    t27 = t28->set( p0 = t29 p1 = t30 ).
    DATA t31 TYPE REF TO zlnt_runtime_map__a1006b231250.
    DATA t32 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t32 = zcl_lnt_version_module=>version_namespace.
    DATA(t33) = |v740sp05|.
    DATA(t34) = |v740sp05|.
    t31 = t32->set( p0 = t33 p1 = t34 ).
    DATA t35 TYPE REF TO zlnt_runtime_map__a1006b231250.
    DATA t36 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t36 = zcl_lnt_version_module=>version_namespace.
    DATA(t37) = |v740sp08|.
    DATA(t38) = |v740sp08|.
    t35 = t36->set( p0 = t37 p1 = t38 ).
    DATA t39 TYPE REF TO zlnt_runtime_map__a1006b231250.
    DATA t40 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t40 = zcl_lnt_version_module=>version_namespace.
    DATA(t41) = |v750|.
    DATA(t42) = |v750|.
    t39 = t40->set( p0 = t41 p1 = t42 ).
    DATA t43 TYPE REF TO zlnt_runtime_map__a1006b231250.
    DATA t44 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t44 = zcl_lnt_version_module=>version_namespace.
    DATA(t45) = |v751|.
    DATA(t46) = |v751|.
    t43 = t44->set( p0 = t45 p1 = t46 ).
    DATA t47 TYPE REF TO zlnt_runtime_map__a1006b231250.
    DATA t48 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t48 = zcl_lnt_version_module=>version_namespace.
    DATA(t49) = |v752|.
    DATA(t50) = |v752|.
    t47 = t48->set( p0 = t49 p1 = t50 ).
    DATA t51 TYPE REF TO zlnt_runtime_map__a1006b231250.
    DATA t52 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t52 = zcl_lnt_version_module=>version_namespace.
    DATA(t53) = |v753|.
    DATA(t54) = |v753|.
    t51 = t52->set( p0 = t53 p1 = t54 ).
    DATA t55 TYPE REF TO zlnt_runtime_map__a1006b231250.
    DATA t56 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t56 = zcl_lnt_version_module=>version_namespace.
    DATA(t57) = |v754|.
    DATA(t58) = |v754|.
    t55 = t56->set( p0 = t57 p1 = t58 ).
    DATA t59 TYPE REF TO zlnt_runtime_map__a1006b231250.
    DATA t60 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t60 = zcl_lnt_version_module=>version_namespace.
    DATA(t61) = |v755|.
    DATA(t62) = |v755|.
    t59 = t60->set( p0 = t61 p1 = t62 ).
    DATA t63 TYPE REF TO zlnt_runtime_map__a1006b231250.
    DATA t64 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t64 = zcl_lnt_version_module=>version_namespace.
    DATA(t65) = |v756|.
    DATA(t66) = |v756|.
    t63 = t64->set( p0 = t65 p1 = t66 ).
    DATA t67 TYPE REF TO zlnt_runtime_map__a1006b231250.
    DATA t68 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t68 = zcl_lnt_version_module=>version_namespace.
    DATA(t69) = |v757|.
    DATA(t70) = |v757|.
    t67 = t68->set( p0 = t69 p1 = t70 ).
    DATA t71 TYPE REF TO zlnt_runtime_map__a1006b231250.
    DATA t72 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t72 = zcl_lnt_version_module=>version_namespace.
    DATA(t73) = |v758|.
    DATA(t74) = |v758|.
    t71 = t72->set( p0 = t73 p1 = t74 ).
    DATA t75 TYPE REF TO zlnt_runtime_map__a1006b231250.
    DATA t76 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t76 = zcl_lnt_version_module=>version_namespace.
    DATA(t77) = |v816|.
    DATA(t78) = |v816|.
    t75 = t76->set( p0 = t77 p1 = t78 ).
    DATA t79 TYPE REF TO zlnt_runtime_map__a1006b231250.
    DATA t80 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t80 = zcl_lnt_version_module=>version_namespace.
    DATA(t81) = |Cloud|.
    DATA(t82) = |Cloud|.
    t79 = t80->set( p0 = t81 p1 = t82 ).
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t85.
    t84 = t85.
    DATA t87 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t88) = |v700|.
    DATA t89 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t94) = |700|.
    CREATE OBJECT t93.
    t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t93->sval = t94.
    t90 = t93.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t100) = 700.
    CREATE OBJECT t99.
    t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t99->nval = t100.
    t96 = t99.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t106) = 700.
    CREATE OBJECT t105.
    t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t105->nval = t106.
    t102 = t105.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t112) = 0.
    CREATE OBJECT t111.
    t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t108 = t111.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t118) = 0.
    CREATE OBJECT t117.
    t117->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t114 = t117.
    t89 = NEW zcl_lnt_shape_27cfcabc( i_abap = t90 i_kernel = t96 i_op = t102 i_cloud_47cd = t108 i_ce = t114 ).
    CREATE OBJECT t89->zlnt_view_ownkeys_b0e8086400eb.
    t89->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t120 ).
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t89->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t121 ).
    ENDIF.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t89->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t122 ).
    ENDIF.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t89->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t123 ).
    ENDIF.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t89->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t124 ).
    ENDIF.
    CREATE OBJECT t89->zlnt_json_ownkeys_70e5fd461788.
    t89->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t125) = |abap|.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = t125 p1 = t126 ).
    DATA(t127) = |kernel|.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t89->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = t127 p1 = t128 ).
    ENDIF.
    DATA(t129) = |op|.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t89->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = t129 p1 = t130 ).
    ENDIF.
    DATA(t131) = |cloud|.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t89->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = t131 p1 = t132 ).
    ENDIF.
    DATA(t133) = |ce|.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t89->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = t133 p1 = t134 ).
    ENDIF.
    t87 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t88 i_f1 = t89 ).
    t84->load( ).
    APPEND t87 TO t84->items.
    t84->save( ).
    DATA t136 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t137) = |v701|.
    DATA t138 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t143) = |701|.
    CREATE OBJECT t142.
    t142->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t142->sval = t143.
    t139 = t142.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t149) = 701.
    CREATE OBJECT t148.
    t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t148->nval = t149.
    t145 = t148.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t155) = 701.
    CREATE OBJECT t154.
    t154->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t154->nval = t155.
    t151 = t154.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t161) = 0.
    CREATE OBJECT t160.
    t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t157 = t160.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t167) = 0.
    CREATE OBJECT t166.
    t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t163 = t166.
    t138 = NEW zcl_lnt_shape_27cfcabc( i_abap = t139 i_kernel = t145 i_op = t151 i_cloud_47cd = t157 i_ce = t163 ).
    CREATE OBJECT t138->zlnt_view_ownkeys_b0e8086400eb.
    t138->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t138->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t169 ).
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t138->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t138->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t170 ).
    ENDIF.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t138->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t138->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t171 ).
    ENDIF.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t138->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t138->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t172 ).
    ENDIF.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t138->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t138->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t173 ).
    ENDIF.
    CREATE OBJECT t138->zlnt_json_ownkeys_70e5fd461788.
    t138->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t174) = |abap|.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t138->zlnt_json_ownkeys_70e5fd461788->put( p0 = t174 p1 = t175 ).
    DATA(t176) = |kernel|.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t138->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t138->zlnt_json_ownkeys_70e5fd461788->put( p0 = t176 p1 = t177 ).
    ENDIF.
    DATA(t178) = |op|.
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t138->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t138->zlnt_json_ownkeys_70e5fd461788->put( p0 = t178 p1 = t179 ).
    ENDIF.
    DATA(t180) = |cloud|.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t138->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t138->zlnt_json_ownkeys_70e5fd461788->put( p0 = t180 p1 = t181 ).
    ENDIF.
    DATA(t182) = |ce|.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t138->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t138->zlnt_json_ownkeys_70e5fd461788->put( p0 = t182 p1 = t183 ).
    ENDIF.
    t136 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t137 i_f1 = t138 ).
    t84->load( ).
    APPEND t136 TO t84->items.
    t84->save( ).
    DATA t185 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t186) = |v702|.
    DATA t187 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t192) = |702|.
    CREATE OBJECT t191.
    t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t191->sval = t192.
    t188 = t191.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t198) = 702.
    CREATE OBJECT t197.
    t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t197->nval = t198.
    t194 = t197.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t204) = 702.
    CREATE OBJECT t203.
    t203->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t203->nval = t204.
    t200 = t203.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t210) = 0.
    CREATE OBJECT t209.
    t209->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t206 = t209.
    DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t216) = 0.
    CREATE OBJECT t215.
    t215->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t212 = t215.
    t187 = NEW zcl_lnt_shape_27cfcabc( i_abap = t188 i_kernel = t194 i_op = t200 i_cloud_47cd = t206 i_ce = t212 ).
    CREATE OBJECT t187->zlnt_view_ownkeys_b0e8086400eb.
    t187->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t187->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t218 ).
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t187->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t187->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t219 ).
    ENDIF.
    DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t187->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t187->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t220 ).
    ENDIF.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t187->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t187->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t221 ).
    ENDIF.
    DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t187->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t187->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t222 ).
    ENDIF.
    CREATE OBJECT t187->zlnt_json_ownkeys_70e5fd461788.
    t187->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t223) = |abap|.
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t187->zlnt_json_ownkeys_70e5fd461788->put( p0 = t223 p1 = t224 ).
    DATA(t225) = |kernel|.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t187->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t187->zlnt_json_ownkeys_70e5fd461788->put( p0 = t225 p1 = t226 ).
    ENDIF.
    DATA(t227) = |op|.
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t187->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t187->zlnt_json_ownkeys_70e5fd461788->put( p0 = t227 p1 = t228 ).
    ENDIF.
    DATA(t229) = |cloud|.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t187->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t187->zlnt_json_ownkeys_70e5fd461788->put( p0 = t229 p1 = t230 ).
    ENDIF.
    DATA(t231) = |ce|.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t187->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t187->zlnt_json_ownkeys_70e5fd461788->put( p0 = t231 p1 = t232 ).
    ENDIF.
    t185 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t186 i_f1 = t187 ).
    t84->load( ).
    APPEND t185 TO t84->items.
    t84->save( ).
    DATA t234 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t235) = |open-abap|.
    DATA t236 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t241) = |open-abap|.
    CREATE OBJECT t240.
    t240->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t240->sval = t241.
    t237 = t240.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t247) = 0.
    CREATE OBJECT t246.
    t246->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t243 = t246.
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t253) = 0.
    CREATE OBJECT t252.
    t252->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t249 = t252.
    DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t259) = 0.
    CREATE OBJECT t258.
    t258->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t255 = t258.
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t265) = 0.
    CREATE OBJECT t264.
    t264->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t261 = t264.
    t236 = NEW zcl_lnt_shape_27cfcabc( i_abap = t237 i_kernel = t243 i_op = t249 i_cloud_47cd = t255 i_ce = t261 ).
    CREATE OBJECT t236->zlnt_view_ownkeys_b0e8086400eb.
    t236->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t236->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t267 ).
    DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t236->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t236->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t268 ).
    ENDIF.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t236->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t236->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t269 ).
    ENDIF.
    DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t236->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t236->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t270 ).
    ENDIF.
    DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t236->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t236->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t271 ).
    ENDIF.
    CREATE OBJECT t236->zlnt_json_ownkeys_70e5fd461788.
    t236->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t272) = |abap|.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t236->zlnt_json_ownkeys_70e5fd461788->put( p0 = t272 p1 = t273 ).
    DATA(t274) = |kernel|.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t236->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t236->zlnt_json_ownkeys_70e5fd461788->put( p0 = t274 p1 = t275 ).
    ENDIF.
    DATA(t276) = |op|.
    DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t236->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t236->zlnt_json_ownkeys_70e5fd461788->put( p0 = t276 p1 = t277 ).
    ENDIF.
    DATA(t278) = |cloud|.
    DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t236->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t236->zlnt_json_ownkeys_70e5fd461788->put( p0 = t278 p1 = t279 ).
    ENDIF.
    DATA(t280) = |ce|.
    DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t236->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t236->zlnt_json_ownkeys_70e5fd461788->put( p0 = t280 p1 = t281 ).
    ENDIF.
    t234 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t235 i_f1 = t236 ).
    t84->load( ).
    APPEND t234 TO t84->items.
    t84->save( ).
    DATA t283 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t284) = |v710|.
    DATA t285 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t290) = |710|.
    CREATE OBJECT t289.
    t289->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t289->sval = t290.
    t286 = t289.
    DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t296) = 710.
    CREATE OBJECT t295.
    t295->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t295->nval = t296.
    t292 = t295.
    DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t302) = 710.
    CREATE OBJECT t301.
    t301->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t301->nval = t302.
    t298 = t301.
    DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t308) = 0.
    CREATE OBJECT t307.
    t307->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t304 = t307.
    DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t314) = 0.
    CREATE OBJECT t313.
    t313->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t310 = t313.
    t285 = NEW zcl_lnt_shape_27cfcabc( i_abap = t286 i_kernel = t292 i_op = t298 i_cloud_47cd = t304 i_ce = t310 ).
    CREATE OBJECT t285->zlnt_view_ownkeys_b0e8086400eb.
    t285->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t285->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t316 ).
    DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t285->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t285->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t317 ).
    ENDIF.
    DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t285->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t285->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t318 ).
    ENDIF.
    DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t285->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t285->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t319 ).
    ENDIF.
    DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t285->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t285->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t320 ).
    ENDIF.
    CREATE OBJECT t285->zlnt_json_ownkeys_70e5fd461788.
    t285->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t321) = |abap|.
    DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t285->zlnt_json_ownkeys_70e5fd461788->put( p0 = t321 p1 = t322 ).
    DATA(t323) = |kernel|.
    DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t285->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t285->zlnt_json_ownkeys_70e5fd461788->put( p0 = t323 p1 = t324 ).
    ENDIF.
    DATA(t325) = |op|.
    DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t285->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t285->zlnt_json_ownkeys_70e5fd461788->put( p0 = t325 p1 = t326 ).
    ENDIF.
    DATA(t327) = |cloud|.
    DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t285->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t285->zlnt_json_ownkeys_70e5fd461788->put( p0 = t327 p1 = t328 ).
    ENDIF.
    DATA(t329) = |ce|.
    DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t285->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t285->zlnt_json_ownkeys_70e5fd461788->put( p0 = t329 p1 = t330 ).
    ENDIF.
    t283 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t284 i_f1 = t285 ).
    t84->load( ).
    APPEND t283 TO t84->items.
    t84->save( ).
    DATA t332 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t333) = |v711|.
    DATA t334 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t339) = |711|.
    CREATE OBJECT t338.
    t338->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t338->sval = t339.
    t335 = t338.
    DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t345) = 711.
    CREATE OBJECT t344.
    t344->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t344->nval = t345.
    t341 = t344.
    DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t351) = 711.
    CREATE OBJECT t350.
    t350->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t350->nval = t351.
    t347 = t350.
    DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t357) = 0.
    CREATE OBJECT t356.
    t356->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t353 = t356.
    DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t363) = 0.
    CREATE OBJECT t362.
    t362->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t359 = t362.
    t334 = NEW zcl_lnt_shape_27cfcabc( i_abap = t335 i_kernel = t341 i_op = t347 i_cloud_47cd = t353 i_ce = t359 ).
    CREATE OBJECT t334->zlnt_view_ownkeys_b0e8086400eb.
    t334->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t334->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t365 ).
    DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t334->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t334->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t366 ).
    ENDIF.
    DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t334->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t334->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t367 ).
    ENDIF.
    DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t334->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t334->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t368 ).
    ENDIF.
    DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t334->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t334->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t369 ).
    ENDIF.
    CREATE OBJECT t334->zlnt_json_ownkeys_70e5fd461788.
    t334->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t370) = |abap|.
    DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t334->zlnt_json_ownkeys_70e5fd461788->put( p0 = t370 p1 = t371 ).
    DATA(t372) = |kernel|.
    DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t334->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t334->zlnt_json_ownkeys_70e5fd461788->put( p0 = t372 p1 = t373 ).
    ENDIF.
    DATA(t374) = |op|.
    DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t334->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t334->zlnt_json_ownkeys_70e5fd461788->put( p0 = t374 p1 = t375 ).
    ENDIF.
    DATA(t376) = |cloud|.
    DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t334->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t334->zlnt_json_ownkeys_70e5fd461788->put( p0 = t376 p1 = t377 ).
    ENDIF.
    DATA(t378) = |ce|.
    DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t334->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t334->zlnt_json_ownkeys_70e5fd461788->put( p0 = t378 p1 = t379 ).
    ENDIF.
    t332 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t333 i_f1 = t334 ).
    t84->load( ).
    APPEND t332 TO t84->items.
    t84->save( ).
    DATA t381 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t382) = |v720|.
    DATA t383 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t384 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t388) = |720|.
    CREATE OBJECT t387.
    t387->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t387->sval = t388.
    t384 = t387.
    DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t394) = 720.
    CREATE OBJECT t393.
    t393->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t393->nval = t394.
    t390 = t393.
    DATA t396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t400) = 720.
    CREATE OBJECT t399.
    t399->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t399->nval = t400.
    t396 = t399.
    DATA t402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t406) = 0.
    CREATE OBJECT t405.
    t405->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t402 = t405.
    DATA t408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t412) = 0.
    CREATE OBJECT t411.
    t411->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t408 = t411.
    t383 = NEW zcl_lnt_shape_27cfcabc( i_abap = t384 i_kernel = t390 i_op = t396 i_cloud_47cd = t402 i_ce = t408 ).
    CREATE OBJECT t383->zlnt_view_ownkeys_b0e8086400eb.
    t383->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t383->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t414 ).
    DATA t415 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t383->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t383->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t415 ).
    ENDIF.
    DATA t416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t383->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t383->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t416 ).
    ENDIF.
    DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t383->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t383->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t417 ).
    ENDIF.
    DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t383->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t383->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t418 ).
    ENDIF.
    CREATE OBJECT t383->zlnt_json_ownkeys_70e5fd461788.
    t383->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t419) = |abap|.
    DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t383->zlnt_json_ownkeys_70e5fd461788->put( p0 = t419 p1 = t420 ).
    DATA(t421) = |kernel|.
    DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t383->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t383->zlnt_json_ownkeys_70e5fd461788->put( p0 = t421 p1 = t422 ).
    ENDIF.
    DATA(t423) = |op|.
    DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t383->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t383->zlnt_json_ownkeys_70e5fd461788->put( p0 = t423 p1 = t424 ).
    ENDIF.
    DATA(t425) = |cloud|.
    DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t383->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t383->zlnt_json_ownkeys_70e5fd461788->put( p0 = t425 p1 = t426 ).
    ENDIF.
    DATA(t427) = |ce|.
    DATA t428 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t383->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t383->zlnt_json_ownkeys_70e5fd461788->put( p0 = t427 p1 = t428 ).
    ENDIF.
    t381 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t382 i_f1 = t383 ).
    t84->load( ).
    APPEND t381 TO t84->items.
    t84->save( ).
    DATA t430 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t431) = |v722|.
    DATA t432 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t437) = |722|.
    CREATE OBJECT t436.
    t436->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t436->sval = t437.
    t433 = t436.
    DATA t439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t442 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t443) = 722.
    CREATE OBJECT t442.
    t442->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t442->nval = t443.
    t439 = t442.
    DATA t445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t448 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t449) = 722.
    CREATE OBJECT t448.
    t448->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t448->nval = t449.
    t445 = t448.
    DATA t451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t454 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t455) = 0.
    CREATE OBJECT t454.
    t454->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t451 = t454.
    DATA t457 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t460 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t461) = 0.
    CREATE OBJECT t460.
    t460->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t457 = t460.
    t432 = NEW zcl_lnt_shape_27cfcabc( i_abap = t433 i_kernel = t439 i_op = t445 i_cloud_47cd = t451 i_ce = t457 ).
    CREATE OBJECT t432->zlnt_view_ownkeys_b0e8086400eb.
    t432->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t463 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t432->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t463 ).
    DATA t464 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t432->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t432->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t464 ).
    ENDIF.
    DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t432->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t432->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t465 ).
    ENDIF.
    DATA t466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t432->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t432->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t466 ).
    ENDIF.
    DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t432->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t432->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t467 ).
    ENDIF.
    CREATE OBJECT t432->zlnt_json_ownkeys_70e5fd461788.
    t432->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t468) = |abap|.
    DATA t469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t432->zlnt_json_ownkeys_70e5fd461788->put( p0 = t468 p1 = t469 ).
    DATA(t470) = |kernel|.
    DATA t471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t432->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t432->zlnt_json_ownkeys_70e5fd461788->put( p0 = t470 p1 = t471 ).
    ENDIF.
    DATA(t472) = |op|.
    DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t432->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t432->zlnt_json_ownkeys_70e5fd461788->put( p0 = t472 p1 = t473 ).
    ENDIF.
    DATA(t474) = |cloud|.
    DATA t475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t432->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t432->zlnt_json_ownkeys_70e5fd461788->put( p0 = t474 p1 = t475 ).
    ENDIF.
    DATA(t476) = |ce|.
    DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t432->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t432->zlnt_json_ownkeys_70e5fd461788->put( p0 = t476 p1 = t477 ).
    ENDIF.
    t430 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t431 i_f1 = t432 ).
    t84->load( ).
    APPEND t430 TO t84->items.
    t84->save( ).
    DATA t479 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t480) = |v730|.
    DATA t481 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t482 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t485 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t486) = |730|.
    CREATE OBJECT t485.
    t485->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t485->sval = t486.
    t482 = t485.
    DATA t488 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t491 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t492) = 730.
    CREATE OBJECT t491.
    t491->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t491->nval = t492.
    t488 = t491.
    DATA t494 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t497 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t498) = 730.
    CREATE OBJECT t497.
    t497->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t497->nval = t498.
    t494 = t497.
    DATA t500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t503 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t504) = 0.
    CREATE OBJECT t503.
    t503->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t500 = t503.
    DATA t506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t509 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t510) = 0.
    CREATE OBJECT t509.
    t509->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t506 = t509.
    t481 = NEW zcl_lnt_shape_27cfcabc( i_abap = t482 i_kernel = t488 i_op = t494 i_cloud_47cd = t500 i_ce = t506 ).
    CREATE OBJECT t481->zlnt_view_ownkeys_b0e8086400eb.
    t481->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t512 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t481->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t512 ).
    DATA t513 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t481->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t481->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t513 ).
    ENDIF.
    DATA t514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t481->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t481->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t514 ).
    ENDIF.
    DATA t515 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t481->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t481->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t515 ).
    ENDIF.
    DATA t516 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t481->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t481->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t516 ).
    ENDIF.
    CREATE OBJECT t481->zlnt_json_ownkeys_70e5fd461788.
    t481->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t517) = |abap|.
    DATA t518 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t481->zlnt_json_ownkeys_70e5fd461788->put( p0 = t517 p1 = t518 ).
    DATA(t519) = |kernel|.
    DATA t520 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t481->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t481->zlnt_json_ownkeys_70e5fd461788->put( p0 = t519 p1 = t520 ).
    ENDIF.
    DATA(t521) = |op|.
    DATA t522 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t481->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t481->zlnt_json_ownkeys_70e5fd461788->put( p0 = t521 p1 = t522 ).
    ENDIF.
    DATA(t523) = |cloud|.
    DATA t524 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t481->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t481->zlnt_json_ownkeys_70e5fd461788->put( p0 = t523 p1 = t524 ).
    ENDIF.
    DATA(t525) = |ce|.
    DATA t526 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t481->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t481->zlnt_json_ownkeys_70e5fd461788->put( p0 = t525 p1 = t526 ).
    ENDIF.
    t479 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t480 i_f1 = t481 ).
    t84->load( ).
    APPEND t479 TO t84->items.
    t84->save( ).
    DATA t528 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t529) = |v731|.
    DATA t530 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t531 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t534 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t535) = |731|.
    CREATE OBJECT t534.
    t534->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t534->sval = t535.
    t531 = t534.
    DATA t537 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t540 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t541) = 731.
    CREATE OBJECT t540.
    t540->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t540->nval = t541.
    t537 = t540.
    DATA t543 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t546 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t547) = 731.
    CREATE OBJECT t546.
    t546->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t546->nval = t547.
    t543 = t546.
    DATA t549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t552 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t553) = 0.
    CREATE OBJECT t552.
    t552->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t549 = t552.
    DATA t555 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t558 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t559) = 0.
    CREATE OBJECT t558.
    t558->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t555 = t558.
    t530 = NEW zcl_lnt_shape_27cfcabc( i_abap = t531 i_kernel = t537 i_op = t543 i_cloud_47cd = t549 i_ce = t555 ).
    CREATE OBJECT t530->zlnt_view_ownkeys_b0e8086400eb.
    t530->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t530->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t561 ).
    DATA t562 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t530->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t530->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t562 ).
    ENDIF.
    DATA t563 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t530->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t530->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t563 ).
    ENDIF.
    DATA t564 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t530->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t530->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t564 ).
    ENDIF.
    DATA t565 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t530->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t530->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t565 ).
    ENDIF.
    CREATE OBJECT t530->zlnt_json_ownkeys_70e5fd461788.
    t530->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t566) = |abap|.
    DATA t567 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t530->zlnt_json_ownkeys_70e5fd461788->put( p0 = t566 p1 = t567 ).
    DATA(t568) = |kernel|.
    DATA t569 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t530->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t530->zlnt_json_ownkeys_70e5fd461788->put( p0 = t568 p1 = t569 ).
    ENDIF.
    DATA(t570) = |op|.
    DATA t571 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t530->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t530->zlnt_json_ownkeys_70e5fd461788->put( p0 = t570 p1 = t571 ).
    ENDIF.
    DATA(t572) = |cloud|.
    DATA t573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t530->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t530->zlnt_json_ownkeys_70e5fd461788->put( p0 = t572 p1 = t573 ).
    ENDIF.
    DATA(t574) = |ce|.
    DATA t575 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t530->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t530->zlnt_json_ownkeys_70e5fd461788->put( p0 = t574 p1 = t575 ).
    ENDIF.
    t528 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t529 i_f1 = t530 ).
    t84->load( ).
    APPEND t528 TO t84->items.
    t84->save( ).
    DATA t577 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t578) = |v740sp02|.
    DATA t579 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t580 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t583 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t584) = |740SP02|.
    CREATE OBJECT t583.
    t583->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t583->sval = t584.
    t580 = t583.
    DATA t586 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t589 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t590) = 740.
    CREATE OBJECT t589.
    t589->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t589->nval = t590.
    t586 = t589.
    DATA t592 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t595 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t596) = 740.
    CREATE OBJECT t595.
    t595->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t595->nval = t596.
    t592 = t595.
    DATA t598 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t601 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t602) = 0.
    CREATE OBJECT t601.
    t601->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t598 = t601.
    DATA t604 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t607 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t608) = 0.
    CREATE OBJECT t607.
    t607->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t604 = t607.
    t579 = NEW zcl_lnt_shape_27cfcabc( i_abap = t580 i_kernel = t586 i_op = t592 i_cloud_47cd = t598 i_ce = t604 ).
    CREATE OBJECT t579->zlnt_view_ownkeys_b0e8086400eb.
    t579->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t610 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t579->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t610 ).
    DATA t611 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t579->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t579->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t611 ).
    ENDIF.
    DATA t612 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t579->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t579->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t612 ).
    ENDIF.
    DATA t613 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t579->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t579->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t613 ).
    ENDIF.
    DATA t614 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t579->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t579->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t614 ).
    ENDIF.
    CREATE OBJECT t579->zlnt_json_ownkeys_70e5fd461788.
    t579->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t615) = |abap|.
    DATA t616 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t579->zlnt_json_ownkeys_70e5fd461788->put( p0 = t615 p1 = t616 ).
    DATA(t617) = |kernel|.
    DATA t618 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t579->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t579->zlnt_json_ownkeys_70e5fd461788->put( p0 = t617 p1 = t618 ).
    ENDIF.
    DATA(t619) = |op|.
    DATA t620 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t579->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t579->zlnt_json_ownkeys_70e5fd461788->put( p0 = t619 p1 = t620 ).
    ENDIF.
    DATA(t621) = |cloud|.
    DATA t622 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t579->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t579->zlnt_json_ownkeys_70e5fd461788->put( p0 = t621 p1 = t622 ).
    ENDIF.
    DATA(t623) = |ce|.
    DATA t624 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t579->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t579->zlnt_json_ownkeys_70e5fd461788->put( p0 = t623 p1 = t624 ).
    ENDIF.
    t577 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t578 i_f1 = t579 ).
    t84->load( ).
    APPEND t577 TO t84->items.
    t84->save( ).
    DATA t626 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t627) = |v740sp05|.
    DATA t628 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t629 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t632 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t633) = |740SP05|.
    CREATE OBJECT t632.
    t632->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t632->sval = t633.
    t629 = t632.
    DATA t635 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t638 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t639) = 741.
    CREATE OBJECT t638.
    t638->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t638->nval = t639.
    t635 = t638.
    DATA t641 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t644 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t645) = 740.
    CREATE OBJECT t644.
    t644->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t644->nval = t645.
    t641 = t644.
    DATA t647 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t650 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t651) = 0.
    CREATE OBJECT t650.
    t650->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t647 = t650.
    DATA t653 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t656 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t657) = 0.
    CREATE OBJECT t656.
    t656->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t653 = t656.
    t628 = NEW zcl_lnt_shape_27cfcabc( i_abap = t629 i_kernel = t635 i_op = t641 i_cloud_47cd = t647 i_ce = t653 ).
    CREATE OBJECT t628->zlnt_view_ownkeys_b0e8086400eb.
    t628->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t659 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t628->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t659 ).
    DATA t660 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t628->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t628->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t660 ).
    ENDIF.
    DATA t661 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t628->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t628->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t661 ).
    ENDIF.
    DATA t662 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t628->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t628->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t662 ).
    ENDIF.
    DATA t663 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t628->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t628->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t663 ).
    ENDIF.
    CREATE OBJECT t628->zlnt_json_ownkeys_70e5fd461788.
    t628->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t664) = |abap|.
    DATA t665 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t628->zlnt_json_ownkeys_70e5fd461788->put( p0 = t664 p1 = t665 ).
    DATA(t666) = |kernel|.
    DATA t667 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t628->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t628->zlnt_json_ownkeys_70e5fd461788->put( p0 = t666 p1 = t667 ).
    ENDIF.
    DATA(t668) = |op|.
    DATA t669 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t628->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t628->zlnt_json_ownkeys_70e5fd461788->put( p0 = t668 p1 = t669 ).
    ENDIF.
    DATA(t670) = |cloud|.
    DATA t671 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t628->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t628->zlnt_json_ownkeys_70e5fd461788->put( p0 = t670 p1 = t671 ).
    ENDIF.
    DATA(t672) = |ce|.
    DATA t673 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t628->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t628->zlnt_json_ownkeys_70e5fd461788->put( p0 = t672 p1 = t673 ).
    ENDIF.
    t626 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t627 i_f1 = t628 ).
    t84->load( ).
    APPEND t626 TO t84->items.
    t84->save( ).
    DATA t675 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t676) = |v740sp08|.
    DATA t677 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t678 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t681 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t682) = |740SP08|.
    CREATE OBJECT t681.
    t681->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t681->sval = t682.
    t678 = t681.
    DATA t684 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t687 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t688) = 742.
    CREATE OBJECT t687.
    t687->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t687->nval = t688.
    t684 = t687.
    DATA t690 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t693 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t694) = 740.
    CREATE OBJECT t693.
    t693->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t693->nval = t694.
    t690 = t693.
    DATA t696 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t699 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t700) = 0.
    CREATE OBJECT t699.
    t699->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t696 = t699.
    DATA t702 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t705 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t706) = 0.
    CREATE OBJECT t705.
    t705->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t702 = t705.
    t677 = NEW zcl_lnt_shape_27cfcabc( i_abap = t678 i_kernel = t684 i_op = t690 i_cloud_47cd = t696 i_ce = t702 ).
    CREATE OBJECT t677->zlnt_view_ownkeys_b0e8086400eb.
    t677->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t708 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t677->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t708 ).
    DATA t709 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t677->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t677->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t709 ).
    ENDIF.
    DATA t710 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t677->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t677->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t710 ).
    ENDIF.
    DATA t711 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t677->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t677->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t711 ).
    ENDIF.
    DATA t712 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t677->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t677->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t712 ).
    ENDIF.
    CREATE OBJECT t677->zlnt_json_ownkeys_70e5fd461788.
    t677->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t713) = |abap|.
    DATA t714 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t677->zlnt_json_ownkeys_70e5fd461788->put( p0 = t713 p1 = t714 ).
    DATA(t715) = |kernel|.
    DATA t716 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t677->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t677->zlnt_json_ownkeys_70e5fd461788->put( p0 = t715 p1 = t716 ).
    ENDIF.
    DATA(t717) = |op|.
    DATA t718 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t677->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t677->zlnt_json_ownkeys_70e5fd461788->put( p0 = t717 p1 = t718 ).
    ENDIF.
    DATA(t719) = |cloud|.
    DATA t720 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t677->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t677->zlnt_json_ownkeys_70e5fd461788->put( p0 = t719 p1 = t720 ).
    ENDIF.
    DATA(t721) = |ce|.
    DATA t722 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t677->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t677->zlnt_json_ownkeys_70e5fd461788->put( p0 = t721 p1 = t722 ).
    ENDIF.
    t675 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t676 i_f1 = t677 ).
    t84->load( ).
    APPEND t675 TO t84->items.
    t84->save( ).
    DATA t724 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t725) = |v760|.
    DATA t726 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t727 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t730 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t731) = |7.60|.
    CREATE OBJECT t730.
    t730->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t730->sval = t731.
    t727 = t730.
    DATA t733 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t736 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t737) = 743.
    CREATE OBJECT t736.
    t736->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t736->nval = t737.
    t733 = t736.
    DATA t739 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t742 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t743) = 750.
    CREATE OBJECT t742.
    t742->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t742->nval = t743.
    t739 = t742.
    DATA t745 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t748 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t749) = 760.
    CREATE OBJECT t748.
    t748->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t748->nval = t749.
    t745 = t748.
    DATA t751 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t754 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t755) = 0.
    CREATE OBJECT t754.
    t754->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t751 = t754.
    t726 = NEW zcl_lnt_shape_27cfcabc( i_abap = t727 i_kernel = t733 i_op = t739 i_cloud_47cd = t745 i_ce = t751 ).
    CREATE OBJECT t726->zlnt_view_ownkeys_b0e8086400eb.
    t726->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t757 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t726->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t757 ).
    DATA t758 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t726->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t726->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t758 ).
    ENDIF.
    DATA t759 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t726->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t726->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t759 ).
    ENDIF.
    DATA t760 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t726->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t726->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t760 ).
    ENDIF.
    DATA t761 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t726->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t726->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t761 ).
    ENDIF.
    CREATE OBJECT t726->zlnt_json_ownkeys_70e5fd461788.
    t726->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t762) = |abap|.
    DATA t763 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t726->zlnt_json_ownkeys_70e5fd461788->put( p0 = t762 p1 = t763 ).
    DATA(t764) = |kernel|.
    DATA t765 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t726->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t726->zlnt_json_ownkeys_70e5fd461788->put( p0 = t764 p1 = t765 ).
    ENDIF.
    DATA(t766) = |op|.
    DATA t767 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t726->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t726->zlnt_json_ownkeys_70e5fd461788->put( p0 = t766 p1 = t767 ).
    ENDIF.
    DATA(t768) = |cloud|.
    DATA t769 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t726->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t726->zlnt_json_ownkeys_70e5fd461788->put( p0 = t768 p1 = t769 ).
    ENDIF.
    DATA(t770) = |ce|.
    DATA t771 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t726->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t726->zlnt_json_ownkeys_70e5fd461788->put( p0 = t770 p1 = t771 ).
    ENDIF.
    t724 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t725 i_f1 = t726 ).
    t84->load( ).
    APPEND t724 TO t84->items.
    t84->save( ).
    DATA t773 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t774) = |v761|.
    DATA t775 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t776 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t779 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t780) = |7.61|.
    CREATE OBJECT t779.
    t779->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t779->sval = t780.
    t776 = t779.
    DATA t782 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t785 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t786) = 744.
    CREATE OBJECT t785.
    t785->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t785->nval = t786.
    t782 = t785.
    DATA t788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t791 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t792) = 750.
    CREATE OBJECT t791.
    t791->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t791->nval = t792.
    t788 = t791.
    DATA t794 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t797 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t798) = 761.
    CREATE OBJECT t797.
    t797->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t797->nval = t798.
    t794 = t797.
    DATA t800 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t803 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t804) = 0.
    CREATE OBJECT t803.
    t803->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t800 = t803.
    t775 = NEW zcl_lnt_shape_27cfcabc( i_abap = t776 i_kernel = t782 i_op = t788 i_cloud_47cd = t794 i_ce = t800 ).
    CREATE OBJECT t775->zlnt_view_ownkeys_b0e8086400eb.
    t775->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t806 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t775->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t806 ).
    DATA t807 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t775->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t775->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t807 ).
    ENDIF.
    DATA t808 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t775->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t775->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t808 ).
    ENDIF.
    DATA t809 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t775->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t775->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t809 ).
    ENDIF.
    DATA t810 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t775->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t775->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t810 ).
    ENDIF.
    CREATE OBJECT t775->zlnt_json_ownkeys_70e5fd461788.
    t775->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t811) = |abap|.
    DATA t812 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t775->zlnt_json_ownkeys_70e5fd461788->put( p0 = t811 p1 = t812 ).
    DATA(t813) = |kernel|.
    DATA t814 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t775->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t775->zlnt_json_ownkeys_70e5fd461788->put( p0 = t813 p1 = t814 ).
    ENDIF.
    DATA(t815) = |op|.
    DATA t816 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t775->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t775->zlnt_json_ownkeys_70e5fd461788->put( p0 = t815 p1 = t816 ).
    ENDIF.
    DATA(t817) = |cloud|.
    DATA t818 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t775->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t775->zlnt_json_ownkeys_70e5fd461788->put( p0 = t817 p1 = t818 ).
    ENDIF.
    DATA(t819) = |ce|.
    DATA t820 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t775->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t775->zlnt_json_ownkeys_70e5fd461788->put( p0 = t819 p1 = t820 ).
    ENDIF.
    t773 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t774 i_f1 = t775 ).
    t84->load( ).
    APPEND t773 TO t84->items.
    t84->save( ).
    DATA t822 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t823) = |v762|.
    DATA t824 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t825 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t828 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t829) = |7.62|.
    CREATE OBJECT t828.
    t828->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t828->sval = t829.
    t825 = t828.
    DATA t831 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t834 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t835) = 745.
    CREATE OBJECT t834.
    t834->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t834->nval = t835.
    t831 = t834.
    DATA t837 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t840 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t841) = 750.
    CREATE OBJECT t840.
    t840->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t840->nval = t841.
    t837 = t840.
    DATA t843 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t846 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t847) = 762.
    CREATE OBJECT t846.
    t846->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t846->nval = t847.
    t843 = t846.
    DATA t849 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t852 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t853) = 0.
    CREATE OBJECT t852.
    t852->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t849 = t852.
    t824 = NEW zcl_lnt_shape_27cfcabc( i_abap = t825 i_kernel = t831 i_op = t837 i_cloud_47cd = t843 i_ce = t849 ).
    CREATE OBJECT t824->zlnt_view_ownkeys_b0e8086400eb.
    t824->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t855 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t824->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t855 ).
    DATA t856 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t824->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t824->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t856 ).
    ENDIF.
    DATA t857 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t824->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t824->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t857 ).
    ENDIF.
    DATA t858 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t824->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t824->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t858 ).
    ENDIF.
    DATA t859 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t824->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t824->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t859 ).
    ENDIF.
    CREATE OBJECT t824->zlnt_json_ownkeys_70e5fd461788.
    t824->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t860) = |abap|.
    DATA t861 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t824->zlnt_json_ownkeys_70e5fd461788->put( p0 = t860 p1 = t861 ).
    DATA(t862) = |kernel|.
    DATA t863 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t824->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t824->zlnt_json_ownkeys_70e5fd461788->put( p0 = t862 p1 = t863 ).
    ENDIF.
    DATA(t864) = |op|.
    DATA t865 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t824->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t824->zlnt_json_ownkeys_70e5fd461788->put( p0 = t864 p1 = t865 ).
    ENDIF.
    DATA(t866) = |cloud|.
    DATA t867 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t824->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t824->zlnt_json_ownkeys_70e5fd461788->put( p0 = t866 p1 = t867 ).
    ENDIF.
    DATA(t868) = |ce|.
    DATA t869 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t824->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t824->zlnt_json_ownkeys_70e5fd461788->put( p0 = t868 p1 = t869 ).
    ENDIF.
    t822 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t823 i_f1 = t824 ).
    t84->load( ).
    APPEND t822 TO t84->items.
    t84->save( ).
    DATA t871 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t872) = |v763|.
    DATA t873 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t874 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t877 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t878) = |7.63|.
    CREATE OBJECT t877.
    t877->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t877->sval = t878.
    t874 = t877.
    DATA t880 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t883 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t884) = 746.
    CREATE OBJECT t883.
    t883->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t883->nval = t884.
    t880 = t883.
    DATA t886 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t889 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t890) = 751.
    CREATE OBJECT t889.
    t889->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t889->nval = t890.
    t886 = t889.
    DATA t892 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t895 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t896) = 763.
    CREATE OBJECT t895.
    t895->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t895->nval = t896.
    t892 = t895.
    DATA t898 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t901 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t902) = 0.
    CREATE OBJECT t901.
    t901->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t898 = t901.
    t873 = NEW zcl_lnt_shape_27cfcabc( i_abap = t874 i_kernel = t880 i_op = t886 i_cloud_47cd = t892 i_ce = t898 ).
    CREATE OBJECT t873->zlnt_view_ownkeys_b0e8086400eb.
    t873->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t904 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t873->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t904 ).
    DATA t905 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t873->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t873->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t905 ).
    ENDIF.
    DATA t906 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t873->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t873->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t906 ).
    ENDIF.
    DATA t907 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t873->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t873->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t907 ).
    ENDIF.
    DATA t908 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t873->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t873->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t908 ).
    ENDIF.
    CREATE OBJECT t873->zlnt_json_ownkeys_70e5fd461788.
    t873->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t909) = |abap|.
    DATA t910 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t873->zlnt_json_ownkeys_70e5fd461788->put( p0 = t909 p1 = t910 ).
    DATA(t911) = |kernel|.
    DATA t912 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t873->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t873->zlnt_json_ownkeys_70e5fd461788->put( p0 = t911 p1 = t912 ).
    ENDIF.
    DATA(t913) = |op|.
    DATA t914 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t873->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t873->zlnt_json_ownkeys_70e5fd461788->put( p0 = t913 p1 = t914 ).
    ENDIF.
    DATA(t915) = |cloud|.
    DATA t916 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t873->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t873->zlnt_json_ownkeys_70e5fd461788->put( p0 = t915 p1 = t916 ).
    ENDIF.
    DATA(t917) = |ce|.
    DATA t918 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t873->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t873->zlnt_json_ownkeys_70e5fd461788->put( p0 = t917 p1 = t918 ).
    ENDIF.
    t871 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t872 i_f1 = t873 ).
    t84->load( ).
    APPEND t871 TO t84->items.
    t84->save( ).
    DATA t920 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t921) = |v764|.
    DATA t922 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t923 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t926 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t927) = |7.64|.
    CREATE OBJECT t926.
    t926->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t926->sval = t927.
    t923 = t926.
    DATA t929 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t932 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t933) = 747.
    CREATE OBJECT t932.
    t932->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t932->nval = t933.
    t929 = t932.
    DATA t935 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t938 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t939) = 751.
    CREATE OBJECT t938.
    t938->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t938->nval = t939.
    t935 = t938.
    DATA t941 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t944 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t945) = 764.
    CREATE OBJECT t944.
    t944->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t944->nval = t945.
    t941 = t944.
    DATA t947 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t950 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t951) = 0.
    CREATE OBJECT t950.
    t950->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t947 = t950.
    t922 = NEW zcl_lnt_shape_27cfcabc( i_abap = t923 i_kernel = t929 i_op = t935 i_cloud_47cd = t941 i_ce = t947 ).
    CREATE OBJECT t922->zlnt_view_ownkeys_b0e8086400eb.
    t922->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t953 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t922->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t953 ).
    DATA t954 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t922->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t922->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t954 ).
    ENDIF.
    DATA t955 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t922->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t922->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t955 ).
    ENDIF.
    DATA t956 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t922->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t922->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t956 ).
    ENDIF.
    DATA t957 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t922->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t922->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t957 ).
    ENDIF.
    CREATE OBJECT t922->zlnt_json_ownkeys_70e5fd461788.
    t922->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t958) = |abap|.
    DATA t959 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t922->zlnt_json_ownkeys_70e5fd461788->put( p0 = t958 p1 = t959 ).
    DATA(t960) = |kernel|.
    DATA t961 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t922->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t922->zlnt_json_ownkeys_70e5fd461788->put( p0 = t960 p1 = t961 ).
    ENDIF.
    DATA(t962) = |op|.
    DATA t963 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t922->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t922->zlnt_json_ownkeys_70e5fd461788->put( p0 = t962 p1 = t963 ).
    ENDIF.
    DATA(t964) = |cloud|.
    DATA t965 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t922->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t922->zlnt_json_ownkeys_70e5fd461788->put( p0 = t964 p1 = t965 ).
    ENDIF.
    DATA(t966) = |ce|.
    DATA t967 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t922->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t922->zlnt_json_ownkeys_70e5fd461788->put( p0 = t966 p1 = t967 ).
    ENDIF.
    t920 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t921 i_f1 = t922 ).
    t84->load( ).
    APPEND t920 TO t84->items.
    t84->save( ).
    DATA t969 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t970) = |v765|.
    DATA t971 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t972 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t975 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t976) = |7.65|.
    CREATE OBJECT t975.
    t975->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t975->sval = t976.
    t972 = t975.
    DATA t978 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t981 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t982) = 748.
    CREATE OBJECT t981.
    t981->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t981->nval = t982.
    t978 = t981.
    DATA t984 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t987 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t988) = 751.
    CREATE OBJECT t987.
    t987->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t987->nval = t988.
    t984 = t987.
    DATA t990 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t993 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t994) = 765.
    CREATE OBJECT t993.
    t993->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t993->nval = t994.
    t990 = t993.
    DATA t996 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t999 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1000) = 0.
    CREATE OBJECT t999.
    t999->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t996 = t999.
    t971 = NEW zcl_lnt_shape_27cfcabc( i_abap = t972 i_kernel = t978 i_op = t984 i_cloud_47cd = t990 i_ce = t996 ).
    CREATE OBJECT t971->zlnt_view_ownkeys_b0e8086400eb.
    t971->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1002 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t971->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1002 ).
    DATA t1003 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t971->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t971->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1003 ).
    ENDIF.
    DATA t1004 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t971->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t971->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1004 ).
    ENDIF.
    DATA t1005 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t971->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t971->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1005 ).
    ENDIF.
    DATA t1006 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t971->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t971->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1006 ).
    ENDIF.
    CREATE OBJECT t971->zlnt_json_ownkeys_70e5fd461788.
    t971->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1007) = |abap|.
    DATA t1008 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t971->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1007 p1 = t1008 ).
    DATA(t1009) = |kernel|.
    DATA t1010 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t971->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t971->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1009 p1 = t1010 ).
    ENDIF.
    DATA(t1011) = |op|.
    DATA t1012 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t971->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t971->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1011 p1 = t1012 ).
    ENDIF.
    DATA(t1013) = |cloud|.
    DATA t1014 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t971->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t971->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1013 p1 = t1014 ).
    ENDIF.
    DATA(t1015) = |ce|.
    DATA t1016 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t971->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t971->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1015 p1 = t1016 ).
    ENDIF.
    t969 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t970 i_f1 = t971 ).
    t84->load( ).
    APPEND t969 TO t84->items.
    t84->save( ).
    DATA t1018 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t1019) = |v766|.
    DATA t1020 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t1021 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1024 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1025) = |7.66|.
    CREATE OBJECT t1024.
    t1024->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1024->sval = t1025.
    t1021 = t1024.
    DATA t1027 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1030 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1031) = 749.
    CREATE OBJECT t1030.
    t1030->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1030->nval = t1031.
    t1027 = t1030.
    DATA t1033 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1036 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1037) = 752.
    CREATE OBJECT t1036.
    t1036->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1036->nval = t1037.
    t1033 = t1036.
    DATA t1039 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1042 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1043) = 766.
    CREATE OBJECT t1042.
    t1042->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1042->nval = t1043.
    t1039 = t1042.
    DATA t1045 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1048 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1049) = 0.
    CREATE OBJECT t1048.
    t1048->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t1045 = t1048.
    t1020 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1021 i_kernel = t1027 i_op = t1033 i_cloud_47cd = t1039 i_ce = t1045 ).
    CREATE OBJECT t1020->zlnt_view_ownkeys_b0e8086400eb.
    t1020->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1051 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1020->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1051 ).
    DATA t1052 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1020->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1020->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1052 ).
    ENDIF.
    DATA t1053 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1020->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1020->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1053 ).
    ENDIF.
    DATA t1054 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1020->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1020->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1054 ).
    ENDIF.
    DATA t1055 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1020->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1020->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1055 ).
    ENDIF.
    CREATE OBJECT t1020->zlnt_json_ownkeys_70e5fd461788.
    t1020->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1056) = |abap|.
    DATA t1057 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1020->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1056 p1 = t1057 ).
    DATA(t1058) = |kernel|.
    DATA t1059 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1020->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1020->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1058 p1 = t1059 ).
    ENDIF.
    DATA(t1060) = |op|.
    DATA t1061 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1020->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1020->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1060 p1 = t1061 ).
    ENDIF.
    DATA(t1062) = |cloud|.
    DATA t1063 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1020->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1020->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1062 p1 = t1063 ).
    ENDIF.
    DATA(t1064) = |ce|.
    DATA t1065 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1020->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1020->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1064 p1 = t1065 ).
    ENDIF.
    t1018 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1019 i_f1 = t1020 ).
    t84->load( ).
    APPEND t1018 TO t84->items.
    t84->save( ).
    DATA t1067 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t1068) = |v767|.
    DATA t1069 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t1070 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1073 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1074) = |7.67|.
    CREATE OBJECT t1073.
    t1073->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1073->sval = t1074.
    t1070 = t1073.
    DATA t1076 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1079 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1080) = 750.
    CREATE OBJECT t1079.
    t1079->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1079->nval = t1080.
    t1076 = t1079.
    DATA t1082 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1085 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1086) = 752.
    CREATE OBJECT t1085.
    t1085->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1085->nval = t1086.
    t1082 = t1085.
    DATA t1088 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1091 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1092) = 767.
    CREATE OBJECT t1091.
    t1091->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1091->nval = t1092.
    t1088 = t1091.
    DATA t1094 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1097 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1098) = 1702.
    CREATE OBJECT t1097.
    t1097->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1097->nval = t1098.
    t1094 = t1097.
    t1069 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1070 i_kernel = t1076 i_op = t1082 i_cloud_47cd = t1088 i_ce = t1094 ).
    CREATE OBJECT t1069->zlnt_view_ownkeys_b0e8086400eb.
    t1069->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1069->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1100 ).
    DATA t1101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1069->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1069->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1101 ).
    ENDIF.
    DATA t1102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1069->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1069->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1102 ).
    ENDIF.
    DATA t1103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1069->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1069->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1103 ).
    ENDIF.
    DATA t1104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1069->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1069->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1104 ).
    ENDIF.
    CREATE OBJECT t1069->zlnt_json_ownkeys_70e5fd461788.
    t1069->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1105) = |abap|.
    DATA t1106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1069->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1105 p1 = t1106 ).
    DATA(t1107) = |kernel|.
    DATA t1108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1069->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1069->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1107 p1 = t1108 ).
    ENDIF.
    DATA(t1109) = |op|.
    DATA t1110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1069->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1069->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1109 p1 = t1110 ).
    ENDIF.
    DATA(t1111) = |cloud|.
    DATA t1112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1069->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1069->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1111 p1 = t1112 ).
    ENDIF.
    DATA(t1113) = |ce|.
    DATA t1114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1069->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1069->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1113 p1 = t1114 ).
    ENDIF.
    t1067 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1068 i_f1 = t1069 ).
    t84->load( ).
    APPEND t1067 TO t84->items.
    t84->save( ).
    DATA t1116 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t1117) = |v768|.
    DATA t1118 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t1119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1123) = |7.68|.
    CREATE OBJECT t1122.
    t1122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1122->sval = t1123.
    t1119 = t1122.
    DATA t1125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1129) = 751.
    CREATE OBJECT t1128.
    t1128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1128->nval = t1129.
    t1125 = t1128.
    DATA t1131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1135) = 752.
    CREATE OBJECT t1134.
    t1134->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1134->nval = t1135.
    t1131 = t1134.
    DATA t1137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1141) = 768.
    CREATE OBJECT t1140.
    t1140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1140->nval = t1141.
    t1137 = t1140.
    DATA t1143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1147) = 1705.
    CREATE OBJECT t1146.
    t1146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1146->nval = t1147.
    t1143 = t1146.
    t1118 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1119 i_kernel = t1125 i_op = t1131 i_cloud_47cd = t1137 i_ce = t1143 ).
    CREATE OBJECT t1118->zlnt_view_ownkeys_b0e8086400eb.
    t1118->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1149 ).
    DATA t1150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1150 ).
    ENDIF.
    DATA t1151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1151 ).
    ENDIF.
    DATA t1152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1152 ).
    ENDIF.
    DATA t1153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1153 ).
    ENDIF.
    CREATE OBJECT t1118->zlnt_json_ownkeys_70e5fd461788.
    t1118->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1154) = |abap|.
    DATA t1155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1118->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1154 p1 = t1155 ).
    DATA(t1156) = |kernel|.
    DATA t1157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1118->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1156 p1 = t1157 ).
    ENDIF.
    DATA(t1158) = |op|.
    DATA t1159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1118->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1158 p1 = t1159 ).
    ENDIF.
    DATA(t1160) = |cloud|.
    DATA t1161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1118->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1160 p1 = t1161 ).
    ENDIF.
    DATA(t1162) = |ce|.
    DATA t1163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1118->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1162 p1 = t1163 ).
    ENDIF.
    t1116 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1117 i_f1 = t1118 ).
    t84->load( ).
    APPEND t1116 TO t84->items.
    t84->save( ).
    DATA t1165 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t1166) = |v769|.
    DATA t1167 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t1168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1172) = |7.69|.
    CREATE OBJECT t1171.
    t1171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1171->sval = t1172.
    t1168 = t1171.
    DATA t1174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1178) = 752.
    CREATE OBJECT t1177.
    t1177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1177->nval = t1178.
    t1174 = t1177.
    DATA t1180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1184) = 752.
    CREATE OBJECT t1183.
    t1183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1183->nval = t1184.
    t1180 = t1183.
    DATA t1186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1190) = 769.
    CREATE OBJECT t1189.
    t1189->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1189->nval = t1190.
    t1186 = t1189.
    DATA t1192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1196) = 1708.
    CREATE OBJECT t1195.
    t1195->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1195->nval = t1196.
    t1192 = t1195.
    t1167 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1168 i_kernel = t1174 i_op = t1180 i_cloud_47cd = t1186 i_ce = t1192 ).
    CREATE OBJECT t1167->zlnt_view_ownkeys_b0e8086400eb.
    t1167->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1167->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1198 ).
    DATA t1199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1167->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1167->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1199 ).
    ENDIF.
    DATA t1200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1167->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1167->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1200 ).
    ENDIF.
    DATA t1201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1167->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1167->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1201 ).
    ENDIF.
    DATA t1202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1167->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1167->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1202 ).
    ENDIF.
    CREATE OBJECT t1167->zlnt_json_ownkeys_70e5fd461788.
    t1167->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1203) = |abap|.
    DATA t1204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1167->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1203 p1 = t1204 ).
    DATA(t1205) = |kernel|.
    DATA t1206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1167->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1167->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1205 p1 = t1206 ).
    ENDIF.
    DATA(t1207) = |op|.
    DATA t1208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1167->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1167->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1207 p1 = t1208 ).
    ENDIF.
    DATA(t1209) = |cloud|.
    DATA t1210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1167->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1167->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1209 p1 = t1210 ).
    ENDIF.
    DATA(t1211) = |ce|.
    DATA t1212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1167->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1167->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1211 p1 = t1212 ).
    ENDIF.
    t1165 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1166 i_f1 = t1167 ).
    t84->load( ).
    APPEND t1165 TO t84->items.
    t84->save( ).
    DATA t1214 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t1215) = |v770|.
    DATA t1216 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t1217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1221) = |7.70|.
    CREATE OBJECT t1220.
    t1220->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1220->sval = t1221.
    t1217 = t1220.
    DATA t1223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1227) = 753.
    CREATE OBJECT t1226.
    t1226->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1226->nval = t1227.
    t1223 = t1226.
    DATA t1229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1233) = 753.
    CREATE OBJECT t1232.
    t1232->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1232->nval = t1233.
    t1229 = t1232.
    DATA t1235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1239) = 770.
    CREATE OBJECT t1238.
    t1238->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1238->nval = t1239.
    t1235 = t1238.
    DATA t1241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1245) = 1711.
    CREATE OBJECT t1244.
    t1244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1244->nval = t1245.
    t1241 = t1244.
    t1216 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1217 i_kernel = t1223 i_op = t1229 i_cloud_47cd = t1235 i_ce = t1241 ).
    CREATE OBJECT t1216->zlnt_view_ownkeys_b0e8086400eb.
    t1216->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1216->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1247 ).
    DATA t1248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1216->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1216->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1248 ).
    ENDIF.
    DATA t1249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1216->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1216->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1249 ).
    ENDIF.
    DATA t1250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1216->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1216->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1250 ).
    ENDIF.
    DATA t1251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1216->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1216->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1251 ).
    ENDIF.
    CREATE OBJECT t1216->zlnt_json_ownkeys_70e5fd461788.
    t1216->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1252) = |abap|.
    DATA t1253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1216->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1252 p1 = t1253 ).
    DATA(t1254) = |kernel|.
    DATA t1255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1216->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1216->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1254 p1 = t1255 ).
    ENDIF.
    DATA(t1256) = |op|.
    DATA t1257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1216->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1216->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1256 p1 = t1257 ).
    ENDIF.
    DATA(t1258) = |cloud|.
    DATA t1259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1216->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1216->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1258 p1 = t1259 ).
    ENDIF.
    DATA(t1260) = |ce|.
    DATA t1261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1216->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1216->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1260 p1 = t1261 ).
    ENDIF.
    t1214 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1215 i_f1 = t1216 ).
    t84->load( ).
    APPEND t1214 TO t84->items.
    t84->save( ).
    DATA t1263 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t1264) = |v771|.
    DATA t1265 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t1266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1270) = |7.71|.
    CREATE OBJECT t1269.
    t1269->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1269->sval = t1270.
    t1266 = t1269.
    DATA t1272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1276) = 771.
    CREATE OBJECT t1275.
    t1275->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1275->nval = t1276.
    t1272 = t1275.
    DATA t1278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1282) = 753.
    CREATE OBJECT t1281.
    t1281->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1281->nval = t1282.
    t1278 = t1281.
    DATA t1284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1288) = 771.
    CREATE OBJECT t1287.
    t1287->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1287->nval = t1288.
    t1284 = t1287.
    DATA t1290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1294) = 1802.
    CREATE OBJECT t1293.
    t1293->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1293->nval = t1294.
    t1290 = t1293.
    t1265 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1266 i_kernel = t1272 i_op = t1278 i_cloud_47cd = t1284 i_ce = t1290 ).
    CREATE OBJECT t1265->zlnt_view_ownkeys_b0e8086400eb.
    t1265->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1265->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1296 ).
    DATA t1297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1265->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1265->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1297 ).
    ENDIF.
    DATA t1298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1265->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1265->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1298 ).
    ENDIF.
    DATA t1299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1265->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1265->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1299 ).
    ENDIF.
    DATA t1300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1265->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1265->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1300 ).
    ENDIF.
    CREATE OBJECT t1265->zlnt_json_ownkeys_70e5fd461788.
    t1265->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1301) = |abap|.
    DATA t1302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1265->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1301 p1 = t1302 ).
    DATA(t1303) = |kernel|.
    DATA t1304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1265->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1265->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1303 p1 = t1304 ).
    ENDIF.
    DATA(t1305) = |op|.
    DATA t1306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1265->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1265->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1305 p1 = t1306 ).
    ENDIF.
    DATA(t1307) = |cloud|.
    DATA t1308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1265->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1265->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1307 p1 = t1308 ).
    ENDIF.
    DATA(t1309) = |ce|.
    DATA t1310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1265->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1265->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1309 p1 = t1310 ).
    ENDIF.
    t1263 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1264 i_f1 = t1265 ).
    t84->load( ).
    APPEND t1263 TO t84->items.
    t84->save( ).
    DATA t1312 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t1313) = |v772|.
    DATA t1314 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t1315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1319) = |7.72|.
    CREATE OBJECT t1318.
    t1318->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1318->sval = t1319.
    t1315 = t1318.
    DATA t1321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1325) = 772.
    CREATE OBJECT t1324.
    t1324->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1324->nval = t1325.
    t1321 = t1324.
    DATA t1327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1331) = 753.
    CREATE OBJECT t1330.
    t1330->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1330->nval = t1331.
    t1327 = t1330.
    DATA t1333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1337) = 772.
    CREATE OBJECT t1336.
    t1336->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1336->nval = t1337.
    t1333 = t1336.
    DATA t1339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1343) = 1805.
    CREATE OBJECT t1342.
    t1342->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1342->nval = t1343.
    t1339 = t1342.
    t1314 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1315 i_kernel = t1321 i_op = t1327 i_cloud_47cd = t1333 i_ce = t1339 ).
    CREATE OBJECT t1314->zlnt_view_ownkeys_b0e8086400eb.
    t1314->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1314->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1345 ).
    DATA t1346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1314->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1314->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1346 ).
    ENDIF.
    DATA t1347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1314->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1314->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1347 ).
    ENDIF.
    DATA t1348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1314->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1314->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1348 ).
    ENDIF.
    DATA t1349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1314->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1314->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1349 ).
    ENDIF.
    CREATE OBJECT t1314->zlnt_json_ownkeys_70e5fd461788.
    t1314->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1350) = |abap|.
    DATA t1351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1314->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1350 p1 = t1351 ).
    DATA(t1352) = |kernel|.
    DATA t1353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1314->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1314->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1352 p1 = t1353 ).
    ENDIF.
    DATA(t1354) = |op|.
    DATA t1355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1314->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1314->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1354 p1 = t1355 ).
    ENDIF.
    DATA(t1356) = |cloud|.
    DATA t1357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1314->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1314->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1356 p1 = t1357 ).
    ENDIF.
    DATA(t1358) = |ce|.
    DATA t1359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1314->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1314->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1358 p1 = t1359 ).
    ENDIF.
    t1312 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1313 i_f1 = t1314 ).
    t84->load( ).
    APPEND t1312 TO t84->items.
    t84->save( ).
    DATA t1361 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t1362) = |v773|.
    DATA t1363 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t1364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1368) = |7.73|.
    CREATE OBJECT t1367.
    t1367->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1367->sval = t1368.
    t1364 = t1367.
    DATA t1370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1374) = 773.
    CREATE OBJECT t1373.
    t1373->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1373->nval = t1374.
    t1370 = t1373.
    DATA t1376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1380) = 753.
    CREATE OBJECT t1379.
    t1379->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1379->nval = t1380.
    t1376 = t1379.
    DATA t1382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1386) = 773.
    CREATE OBJECT t1385.
    t1385->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1385->nval = t1386.
    t1382 = t1385.
    DATA t1388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1392) = 1808.
    CREATE OBJECT t1391.
    t1391->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1391->nval = t1392.
    t1388 = t1391.
    t1363 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1364 i_kernel = t1370 i_op = t1376 i_cloud_47cd = t1382 i_ce = t1388 ).
    CREATE OBJECT t1363->zlnt_view_ownkeys_b0e8086400eb.
    t1363->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1394 ).
    DATA t1395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1363->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1395 ).
    ENDIF.
    DATA t1396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1363->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1396 ).
    ENDIF.
    DATA t1397 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1363->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1397 ).
    ENDIF.
    DATA t1398 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1363->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1398 ).
    ENDIF.
    CREATE OBJECT t1363->zlnt_json_ownkeys_70e5fd461788.
    t1363->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1399) = |abap|.
    DATA t1400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1363->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1399 p1 = t1400 ).
    DATA(t1401) = |kernel|.
    DATA t1402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1363->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1363->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1401 p1 = t1402 ).
    ENDIF.
    DATA(t1403) = |op|.
    DATA t1404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1363->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1363->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1403 p1 = t1404 ).
    ENDIF.
    DATA(t1405) = |cloud|.
    DATA t1406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1363->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1363->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1405 p1 = t1406 ).
    ENDIF.
    DATA(t1407) = |ce|.
    DATA t1408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1363->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1363->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1407 p1 = t1408 ).
    ENDIF.
    t1361 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1362 i_f1 = t1363 ).
    t84->load( ).
    APPEND t1361 TO t84->items.
    t84->save( ).
    DATA t1410 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t1411) = |v774|.
    DATA t1412 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t1413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1417) = |7.74|.
    CREATE OBJECT t1416.
    t1416->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1416->sval = t1417.
    t1413 = t1416.
    DATA t1419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1423) = 774.
    CREATE OBJECT t1422.
    t1422->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1422->nval = t1423.
    t1419 = t1422.
    DATA t1425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1428 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1429) = 754.
    CREATE OBJECT t1428.
    t1428->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1428->nval = t1429.
    t1425 = t1428.
    DATA t1431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1434 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1435) = 774.
    CREATE OBJECT t1434.
    t1434->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1434->nval = t1435.
    t1431 = t1434.
    DATA t1437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1441) = 1811.
    CREATE OBJECT t1440.
    t1440->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1440->nval = t1441.
    t1437 = t1440.
    t1412 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1413 i_kernel = t1419 i_op = t1425 i_cloud_47cd = t1431 i_ce = t1437 ).
    CREATE OBJECT t1412->zlnt_view_ownkeys_b0e8086400eb.
    t1412->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1443 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1412->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1443 ).
    DATA t1444 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1412->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1412->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1444 ).
    ENDIF.
    DATA t1445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1412->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1412->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1445 ).
    ENDIF.
    DATA t1446 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1412->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1412->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1446 ).
    ENDIF.
    DATA t1447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1412->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1412->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1447 ).
    ENDIF.
    CREATE OBJECT t1412->zlnt_json_ownkeys_70e5fd461788.
    t1412->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1448) = |abap|.
    DATA t1449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1412->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1448 p1 = t1449 ).
    DATA(t1450) = |kernel|.
    DATA t1451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1412->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1412->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1450 p1 = t1451 ).
    ENDIF.
    DATA(t1452) = |op|.
    DATA t1453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1412->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1412->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1452 p1 = t1453 ).
    ENDIF.
    DATA(t1454) = |cloud|.
    DATA t1455 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1412->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1412->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1454 p1 = t1455 ).
    ENDIF.
    DATA(t1456) = |ce|.
    DATA t1457 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1412->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1412->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1456 p1 = t1457 ).
    ENDIF.
    t1410 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1411 i_f1 = t1412 ).
    t84->load( ).
    APPEND t1410 TO t84->items.
    t84->save( ).
    DATA t1459 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t1460) = |v775|.
    DATA t1461 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t1462 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1466) = |7.75|.
    CREATE OBJECT t1465.
    t1465->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1465->sval = t1466.
    t1462 = t1465.
    DATA t1468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1472) = 775.
    CREATE OBJECT t1471.
    t1471->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1471->nval = t1472.
    t1468 = t1471.
    DATA t1474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1478) = 754.
    CREATE OBJECT t1477.
    t1477->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1477->nval = t1478.
    t1474 = t1477.
    DATA t1480 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1483 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1484) = 775.
    CREATE OBJECT t1483.
    t1483->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1483->nval = t1484.
    t1480 = t1483.
    DATA t1486 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1489 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1490) = 1902.
    CREATE OBJECT t1489.
    t1489->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1489->nval = t1490.
    t1486 = t1489.
    t1461 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1462 i_kernel = t1468 i_op = t1474 i_cloud_47cd = t1480 i_ce = t1486 ).
    CREATE OBJECT t1461->zlnt_view_ownkeys_b0e8086400eb.
    t1461->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1492 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1461->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1492 ).
    DATA t1493 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1461->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1461->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1493 ).
    ENDIF.
    DATA t1494 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1461->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1461->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1494 ).
    ENDIF.
    DATA t1495 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1461->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1461->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1495 ).
    ENDIF.
    DATA t1496 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1461->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1461->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1496 ).
    ENDIF.
    CREATE OBJECT t1461->zlnt_json_ownkeys_70e5fd461788.
    t1461->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1497) = |abap|.
    DATA t1498 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1461->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1497 p1 = t1498 ).
    DATA(t1499) = |kernel|.
    DATA t1500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1461->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1461->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1499 p1 = t1500 ).
    ENDIF.
    DATA(t1501) = |op|.
    DATA t1502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1461->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1461->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1501 p1 = t1502 ).
    ENDIF.
    DATA(t1503) = |cloud|.
    DATA t1504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1461->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1461->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1503 p1 = t1504 ).
    ENDIF.
    DATA(t1505) = |ce|.
    DATA t1506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1461->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1461->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1505 p1 = t1506 ).
    ENDIF.
    t1459 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1460 i_f1 = t1461 ).
    t84->load( ).
    APPEND t1459 TO t84->items.
    t84->save( ).
    DATA t1508 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t1509) = |v776|.
    DATA t1510 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t1511 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1515) = |7.76|.
    CREATE OBJECT t1514.
    t1514->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1514->sval = t1515.
    t1511 = t1514.
    DATA t1517 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1520 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1521) = 776.
    CREATE OBJECT t1520.
    t1520->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1520->nval = t1521.
    t1517 = t1520.
    DATA t1523 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1526 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1527) = 754.
    CREATE OBJECT t1526.
    t1526->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1526->nval = t1527.
    t1523 = t1526.
    DATA t1529 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1532 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1533) = 776.
    CREATE OBJECT t1532.
    t1532->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1532->nval = t1533.
    t1529 = t1532.
    DATA t1535 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1538 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1539) = 1905.
    CREATE OBJECT t1538.
    t1538->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1538->nval = t1539.
    t1535 = t1538.
    t1510 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1511 i_kernel = t1517 i_op = t1523 i_cloud_47cd = t1529 i_ce = t1535 ).
    CREATE OBJECT t1510->zlnt_view_ownkeys_b0e8086400eb.
    t1510->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1541 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1510->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1541 ).
    DATA t1542 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1510->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1510->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1542 ).
    ENDIF.
    DATA t1543 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1510->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1510->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1543 ).
    ENDIF.
    DATA t1544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1510->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1510->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1544 ).
    ENDIF.
    DATA t1545 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1510->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1510->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1545 ).
    ENDIF.
    CREATE OBJECT t1510->zlnt_json_ownkeys_70e5fd461788.
    t1510->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1546) = |abap|.
    DATA t1547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1510->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1546 p1 = t1547 ).
    DATA(t1548) = |kernel|.
    DATA t1549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1510->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1510->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1548 p1 = t1549 ).
    ENDIF.
    DATA(t1550) = |op|.
    DATA t1551 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1510->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1510->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1550 p1 = t1551 ).
    ENDIF.
    DATA(t1552) = |cloud|.
    DATA t1553 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1510->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1510->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1552 p1 = t1553 ).
    ENDIF.
    DATA(t1554) = |ce|.
    DATA t1555 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1510->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1510->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1554 p1 = t1555 ).
    ENDIF.
    t1508 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1509 i_f1 = t1510 ).
    t84->load( ).
    APPEND t1508 TO t84->items.
    t84->save( ).
    DATA t1557 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t1558) = |v777|.
    DATA t1559 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t1560 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1563 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1564) = |7.77|.
    CREATE OBJECT t1563.
    t1563->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1563->sval = t1564.
    t1560 = t1563.
    DATA t1566 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1569 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1570) = 777.
    CREATE OBJECT t1569.
    t1569->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1569->nval = t1570.
    t1566 = t1569.
    DATA t1572 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1575 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1576) = 754.
    CREATE OBJECT t1575.
    t1575->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1575->nval = t1576.
    t1572 = t1575.
    DATA t1578 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1581 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1582) = 777.
    CREATE OBJECT t1581.
    t1581->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1581->nval = t1582.
    t1578 = t1581.
    DATA t1584 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1587 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1588) = 1908.
    CREATE OBJECT t1587.
    t1587->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1587->nval = t1588.
    t1584 = t1587.
    t1559 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1560 i_kernel = t1566 i_op = t1572 i_cloud_47cd = t1578 i_ce = t1584 ).
    CREATE OBJECT t1559->zlnt_view_ownkeys_b0e8086400eb.
    t1559->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1590 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1559->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1590 ).
    DATA t1591 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1559->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1559->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1591 ).
    ENDIF.
    DATA t1592 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1559->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1559->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1592 ).
    ENDIF.
    DATA t1593 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1559->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1559->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1593 ).
    ENDIF.
    DATA t1594 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1559->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1559->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1594 ).
    ENDIF.
    CREATE OBJECT t1559->zlnt_json_ownkeys_70e5fd461788.
    t1559->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1595) = |abap|.
    DATA t1596 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1559->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1595 p1 = t1596 ).
    DATA(t1597) = |kernel|.
    DATA t1598 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1559->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1559->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1597 p1 = t1598 ).
    ENDIF.
    DATA(t1599) = |op|.
    DATA t1600 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1559->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1559->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1599 p1 = t1600 ).
    ENDIF.
    DATA(t1601) = |cloud|.
    DATA t1602 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1559->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1559->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1601 p1 = t1602 ).
    ENDIF.
    DATA(t1603) = |ce|.
    DATA t1604 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1559->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1559->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1603 p1 = t1604 ).
    ENDIF.
    t1557 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1558 i_f1 = t1559 ).
    t84->load( ).
    APPEND t1557 TO t84->items.
    t84->save( ).
    DATA t1606 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t1607) = |v778|.
    DATA t1608 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t1609 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1612 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1613) = |7.78|.
    CREATE OBJECT t1612.
    t1612->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1612->sval = t1613.
    t1609 = t1612.
    DATA t1615 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1618 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1619) = 778.
    CREATE OBJECT t1618.
    t1618->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1618->nval = t1619.
    t1615 = t1618.
    DATA t1621 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1624 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1625) = 755.
    CREATE OBJECT t1624.
    t1624->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1624->nval = t1625.
    t1621 = t1624.
    DATA t1627 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1630 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1631) = 778.
    CREATE OBJECT t1630.
    t1630->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1630->nval = t1631.
    t1627 = t1630.
    DATA t1633 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1636 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1637) = 1911.
    CREATE OBJECT t1636.
    t1636->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1636->nval = t1637.
    t1633 = t1636.
    t1608 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1609 i_kernel = t1615 i_op = t1621 i_cloud_47cd = t1627 i_ce = t1633 ).
    CREATE OBJECT t1608->zlnt_view_ownkeys_b0e8086400eb.
    t1608->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1639 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1608->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1639 ).
    DATA t1640 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1608->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1608->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1640 ).
    ENDIF.
    DATA t1641 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1608->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1608->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1641 ).
    ENDIF.
    DATA t1642 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1608->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1608->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1642 ).
    ENDIF.
    DATA t1643 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1608->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1608->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1643 ).
    ENDIF.
    CREATE OBJECT t1608->zlnt_json_ownkeys_70e5fd461788.
    t1608->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1644) = |abap|.
    DATA t1645 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1608->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1644 p1 = t1645 ).
    DATA(t1646) = |kernel|.
    DATA t1647 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1608->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1608->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1646 p1 = t1647 ).
    ENDIF.
    DATA(t1648) = |op|.
    DATA t1649 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1608->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1608->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1648 p1 = t1649 ).
    ENDIF.
    DATA(t1650) = |cloud|.
    DATA t1651 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1608->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1608->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1650 p1 = t1651 ).
    ENDIF.
    DATA(t1652) = |ce|.
    DATA t1653 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1608->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1608->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1652 p1 = t1653 ).
    ENDIF.
    t1606 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1607 i_f1 = t1608 ).
    t84->load( ).
    APPEND t1606 TO t84->items.
    t84->save( ).
    DATA t1655 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t1656) = |v779|.
    DATA t1657 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t1658 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1661 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1662) = |7.79|.
    CREATE OBJECT t1661.
    t1661->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1661->sval = t1662.
    t1658 = t1661.
    DATA t1664 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1667 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1668) = 779.
    CREATE OBJECT t1667.
    t1667->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1667->nval = t1668.
    t1664 = t1667.
    DATA t1670 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1673 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1674) = 755.
    CREATE OBJECT t1673.
    t1673->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1673->nval = t1674.
    t1670 = t1673.
    DATA t1676 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1679 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1680) = 779.
    CREATE OBJECT t1679.
    t1679->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1679->nval = t1680.
    t1676 = t1679.
    DATA t1682 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1685 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1686) = 2002.
    CREATE OBJECT t1685.
    t1685->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1685->nval = t1686.
    t1682 = t1685.
    t1657 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1658 i_kernel = t1664 i_op = t1670 i_cloud_47cd = t1676 i_ce = t1682 ).
    CREATE OBJECT t1657->zlnt_view_ownkeys_b0e8086400eb.
    t1657->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1688 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1657->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1688 ).
    DATA t1689 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1657->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1657->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1689 ).
    ENDIF.
    DATA t1690 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1657->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1657->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1690 ).
    ENDIF.
    DATA t1691 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1657->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1657->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1691 ).
    ENDIF.
    DATA t1692 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1657->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1657->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1692 ).
    ENDIF.
    CREATE OBJECT t1657->zlnt_json_ownkeys_70e5fd461788.
    t1657->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1693) = |abap|.
    DATA t1694 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1657->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1693 p1 = t1694 ).
    DATA(t1695) = |kernel|.
    DATA t1696 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1657->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1657->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1695 p1 = t1696 ).
    ENDIF.
    DATA(t1697) = |op|.
    DATA t1698 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1657->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1657->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1697 p1 = t1698 ).
    ENDIF.
    DATA(t1699) = |cloud|.
    DATA t1700 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1657->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1657->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1699 p1 = t1700 ).
    ENDIF.
    DATA(t1701) = |ce|.
    DATA t1702 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1657->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1657->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1701 p1 = t1702 ).
    ENDIF.
    t1655 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1656 i_f1 = t1657 ).
    t84->load( ).
    APPEND t1655 TO t84->items.
    t84->save( ).
    DATA t1704 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t1705) = |v780|.
    DATA t1706 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t1707 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1710 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1711) = |7.80|.
    CREATE OBJECT t1710.
    t1710->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1710->sval = t1711.
    t1707 = t1710.
    DATA t1713 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1716 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1717) = 780.
    CREATE OBJECT t1716.
    t1716->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1716->nval = t1717.
    t1713 = t1716.
    DATA t1719 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1722 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1723) = 755.
    CREATE OBJECT t1722.
    t1722->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1722->nval = t1723.
    t1719 = t1722.
    DATA t1725 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1728 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1729) = 780.
    CREATE OBJECT t1728.
    t1728->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1728->nval = t1729.
    t1725 = t1728.
    DATA t1731 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1734 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1735) = 2005.
    CREATE OBJECT t1734.
    t1734->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1734->nval = t1735.
    t1731 = t1734.
    t1706 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1707 i_kernel = t1713 i_op = t1719 i_cloud_47cd = t1725 i_ce = t1731 ).
    CREATE OBJECT t1706->zlnt_view_ownkeys_b0e8086400eb.
    t1706->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1737 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1706->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1737 ).
    DATA t1738 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1706->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1706->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1738 ).
    ENDIF.
    DATA t1739 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1706->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1706->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1739 ).
    ENDIF.
    DATA t1740 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1706->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1706->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1740 ).
    ENDIF.
    DATA t1741 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1706->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1706->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1741 ).
    ENDIF.
    CREATE OBJECT t1706->zlnt_json_ownkeys_70e5fd461788.
    t1706->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1742) = |abap|.
    DATA t1743 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1706->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1742 p1 = t1743 ).
    DATA(t1744) = |kernel|.
    DATA t1745 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1706->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1706->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1744 p1 = t1745 ).
    ENDIF.
    DATA(t1746) = |op|.
    DATA t1747 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1706->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1706->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1746 p1 = t1747 ).
    ENDIF.
    DATA(t1748) = |cloud|.
    DATA t1749 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1706->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1706->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1748 p1 = t1749 ).
    ENDIF.
    DATA(t1750) = |ce|.
    DATA t1751 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1706->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1706->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1750 p1 = t1751 ).
    ENDIF.
    t1704 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1705 i_f1 = t1706 ).
    t84->load( ).
    APPEND t1704 TO t84->items.
    t84->save( ).
    DATA t1753 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t1754) = |v781|.
    DATA t1755 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t1756 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1759 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1760) = |7.81|.
    CREATE OBJECT t1759.
    t1759->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1759->sval = t1760.
    t1756 = t1759.
    DATA t1762 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1765 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1766) = 781.
    CREATE OBJECT t1765.
    t1765->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1765->nval = t1766.
    t1762 = t1765.
    DATA t1768 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1771 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1772) = 755.
    CREATE OBJECT t1771.
    t1771->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1771->nval = t1772.
    t1768 = t1771.
    DATA t1774 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1777 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1778) = 781.
    CREATE OBJECT t1777.
    t1777->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1777->nval = t1778.
    t1774 = t1777.
    DATA t1780 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1783 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1784) = 2008.
    CREATE OBJECT t1783.
    t1783->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1783->nval = t1784.
    t1780 = t1783.
    t1755 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1756 i_kernel = t1762 i_op = t1768 i_cloud_47cd = t1774 i_ce = t1780 ).
    CREATE OBJECT t1755->zlnt_view_ownkeys_b0e8086400eb.
    t1755->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1786 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1755->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1786 ).
    DATA t1787 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1755->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1755->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1787 ).
    ENDIF.
    DATA t1788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1755->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1755->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1788 ).
    ENDIF.
    DATA t1789 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1755->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1755->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1789 ).
    ENDIF.
    DATA t1790 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1755->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1755->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1790 ).
    ENDIF.
    CREATE OBJECT t1755->zlnt_json_ownkeys_70e5fd461788.
    t1755->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1791) = |abap|.
    DATA t1792 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1755->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1791 p1 = t1792 ).
    DATA(t1793) = |kernel|.
    DATA t1794 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1755->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1755->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1793 p1 = t1794 ).
    ENDIF.
    DATA(t1795) = |op|.
    DATA t1796 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1755->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1755->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1795 p1 = t1796 ).
    ENDIF.
    DATA(t1797) = |cloud|.
    DATA t1798 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1755->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1755->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1797 p1 = t1798 ).
    ENDIF.
    DATA(t1799) = |ce|.
    DATA t1800 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1755->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1755->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1799 p1 = t1800 ).
    ENDIF.
    t1753 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1754 i_f1 = t1755 ).
    t84->load( ).
    APPEND t1753 TO t84->items.
    t84->save( ).
    DATA t1802 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t1803) = |v782|.
    DATA t1804 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t1805 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1808 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1809) = |7.82|.
    CREATE OBJECT t1808.
    t1808->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1808->sval = t1809.
    t1805 = t1808.
    DATA t1811 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1814 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1815) = 782.
    CREATE OBJECT t1814.
    t1814->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1814->nval = t1815.
    t1811 = t1814.
    DATA t1817 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1820 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1821) = 756.
    CREATE OBJECT t1820.
    t1820->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1820->nval = t1821.
    t1817 = t1820.
    DATA t1823 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1826 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1827) = 782.
    CREATE OBJECT t1826.
    t1826->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1826->nval = t1827.
    t1823 = t1826.
    DATA t1829 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1832 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1833) = 2011.
    CREATE OBJECT t1832.
    t1832->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1832->nval = t1833.
    t1829 = t1832.
    t1804 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1805 i_kernel = t1811 i_op = t1817 i_cloud_47cd = t1823 i_ce = t1829 ).
    CREATE OBJECT t1804->zlnt_view_ownkeys_b0e8086400eb.
    t1804->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1835 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1804->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1835 ).
    DATA t1836 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1804->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1804->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1836 ).
    ENDIF.
    DATA t1837 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1804->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1804->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1837 ).
    ENDIF.
    DATA t1838 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1804->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1804->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1838 ).
    ENDIF.
    DATA t1839 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1804->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1804->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1839 ).
    ENDIF.
    CREATE OBJECT t1804->zlnt_json_ownkeys_70e5fd461788.
    t1804->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1840) = |abap|.
    DATA t1841 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1804->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1840 p1 = t1841 ).
    DATA(t1842) = |kernel|.
    DATA t1843 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1804->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1804->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1842 p1 = t1843 ).
    ENDIF.
    DATA(t1844) = |op|.
    DATA t1845 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1804->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1804->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1844 p1 = t1845 ).
    ENDIF.
    DATA(t1846) = |cloud|.
    DATA t1847 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1804->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1804->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1846 p1 = t1847 ).
    ENDIF.
    DATA(t1848) = |ce|.
    DATA t1849 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1804->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1804->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1848 p1 = t1849 ).
    ENDIF.
    t1802 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1803 i_f1 = t1804 ).
    t84->load( ).
    APPEND t1802 TO t84->items.
    t84->save( ).
    DATA t1851 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t1852) = |v783|.
    DATA t1853 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t1854 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1857 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1858) = |7.83|.
    CREATE OBJECT t1857.
    t1857->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1857->sval = t1858.
    t1854 = t1857.
    DATA t1860 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1863 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1864) = 783.
    CREATE OBJECT t1863.
    t1863->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1863->nval = t1864.
    t1860 = t1863.
    DATA t1866 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1869 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1870) = 756.
    CREATE OBJECT t1869.
    t1869->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1869->nval = t1870.
    t1866 = t1869.
    DATA t1872 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1875 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1876) = 783.
    CREATE OBJECT t1875.
    t1875->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1875->nval = t1876.
    t1872 = t1875.
    DATA t1878 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1881 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1882) = 2102.
    CREATE OBJECT t1881.
    t1881->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1881->nval = t1882.
    t1878 = t1881.
    t1853 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1854 i_kernel = t1860 i_op = t1866 i_cloud_47cd = t1872 i_ce = t1878 ).
    CREATE OBJECT t1853->zlnt_view_ownkeys_b0e8086400eb.
    t1853->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1884 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1853->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1884 ).
    DATA t1885 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1853->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1853->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1885 ).
    ENDIF.
    DATA t1886 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1853->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1853->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1886 ).
    ENDIF.
    DATA t1887 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1853->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1853->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1887 ).
    ENDIF.
    DATA t1888 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1853->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1853->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1888 ).
    ENDIF.
    CREATE OBJECT t1853->zlnt_json_ownkeys_70e5fd461788.
    t1853->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1889) = |abap|.
    DATA t1890 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1853->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1889 p1 = t1890 ).
    DATA(t1891) = |kernel|.
    DATA t1892 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1853->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1853->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1891 p1 = t1892 ).
    ENDIF.
    DATA(t1893) = |op|.
    DATA t1894 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1853->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1853->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1893 p1 = t1894 ).
    ENDIF.
    DATA(t1895) = |cloud|.
    DATA t1896 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1853->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1853->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1895 p1 = t1896 ).
    ENDIF.
    DATA(t1897) = |ce|.
    DATA t1898 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1853->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1853->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1897 p1 = t1898 ).
    ENDIF.
    t1851 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1852 i_f1 = t1853 ).
    t84->load( ).
    APPEND t1851 TO t84->items.
    t84->save( ).
    DATA t1900 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t1901) = |v784|.
    DATA t1902 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t1903 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1906 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1907) = |7.84|.
    CREATE OBJECT t1906.
    t1906->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1906->sval = t1907.
    t1903 = t1906.
    DATA t1909 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1912 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1913) = 784.
    CREATE OBJECT t1912.
    t1912->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1912->nval = t1913.
    t1909 = t1912.
    DATA t1915 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1918 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1919) = 756.
    CREATE OBJECT t1918.
    t1918->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1918->nval = t1919.
    t1915 = t1918.
    DATA t1921 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1924 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1925) = 784.
    CREATE OBJECT t1924.
    t1924->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1924->nval = t1925.
    t1921 = t1924.
    DATA t1927 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1930 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1931) = 2105.
    CREATE OBJECT t1930.
    t1930->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1930->nval = t1931.
    t1927 = t1930.
    t1902 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1903 i_kernel = t1909 i_op = t1915 i_cloud_47cd = t1921 i_ce = t1927 ).
    CREATE OBJECT t1902->zlnt_view_ownkeys_b0e8086400eb.
    t1902->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1933 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1902->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1933 ).
    DATA t1934 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1902->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1902->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1934 ).
    ENDIF.
    DATA t1935 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1902->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1902->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1935 ).
    ENDIF.
    DATA t1936 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1902->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1902->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1936 ).
    ENDIF.
    DATA t1937 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1902->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1902->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1937 ).
    ENDIF.
    CREATE OBJECT t1902->zlnt_json_ownkeys_70e5fd461788.
    t1902->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1938) = |abap|.
    DATA t1939 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1902->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1938 p1 = t1939 ).
    DATA(t1940) = |kernel|.
    DATA t1941 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1902->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1902->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1940 p1 = t1941 ).
    ENDIF.
    DATA(t1942) = |op|.
    DATA t1943 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1902->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1902->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1942 p1 = t1943 ).
    ENDIF.
    DATA(t1944) = |cloud|.
    DATA t1945 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1902->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1902->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1944 p1 = t1945 ).
    ENDIF.
    DATA(t1946) = |ce|.
    DATA t1947 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1902->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1902->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1946 p1 = t1947 ).
    ENDIF.
    t1900 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1901 i_f1 = t1902 ).
    t84->load( ).
    APPEND t1900 TO t84->items.
    t84->save( ).
    DATA t1949 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t1950) = |v785|.
    DATA t1951 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t1952 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1955 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1956) = |7.85|.
    CREATE OBJECT t1955.
    t1955->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1955->sval = t1956.
    t1952 = t1955.
    DATA t1958 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1961 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1962) = 785.
    CREATE OBJECT t1961.
    t1961->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1961->nval = t1962.
    t1958 = t1961.
    DATA t1964 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1967 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1968) = 756.
    CREATE OBJECT t1967.
    t1967->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1967->nval = t1968.
    t1964 = t1967.
    DATA t1970 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1973 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1974) = 785.
    CREATE OBJECT t1973.
    t1973->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1973->nval = t1974.
    t1970 = t1973.
    DATA t1976 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1979 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1980) = 2108.
    CREATE OBJECT t1979.
    t1979->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t1979->nval = t1980.
    t1976 = t1979.
    t1951 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1952 i_kernel = t1958 i_op = t1964 i_cloud_47cd = t1970 i_ce = t1976 ).
    CREATE OBJECT t1951->zlnt_view_ownkeys_b0e8086400eb.
    t1951->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1982 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1951->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1982 ).
    DATA t1983 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1951->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1951->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1983 ).
    ENDIF.
    DATA t1984 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1951->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1951->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1984 ).
    ENDIF.
    DATA t1985 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1951->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1951->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1985 ).
    ENDIF.
    DATA t1986 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1951->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1951->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1986 ).
    ENDIF.
    CREATE OBJECT t1951->zlnt_json_ownkeys_70e5fd461788.
    t1951->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1987) = |abap|.
    DATA t1988 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1951->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1987 p1 = t1988 ).
    DATA(t1989) = |kernel|.
    DATA t1990 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1951->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1951->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1989 p1 = t1990 ).
    ENDIF.
    DATA(t1991) = |op|.
    DATA t1992 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1951->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1951->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1991 p1 = t1992 ).
    ENDIF.
    DATA(t1993) = |cloud|.
    DATA t1994 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1951->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1951->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1993 p1 = t1994 ).
    ENDIF.
    DATA(t1995) = |ce|.
    DATA t1996 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1951->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1951->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1995 p1 = t1996 ).
    ENDIF.
    t1949 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1950 i_f1 = t1951 ).
    t84->load( ).
    APPEND t1949 TO t84->items.
    t84->save( ).
    DATA t1998 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t1999) = |v786|.
    DATA t2000 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t2001 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2004 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2005) = |7.86|.
    CREATE OBJECT t2004.
    t2004->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t2004->sval = t2005.
    t2001 = t2004.
    DATA t2007 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2010 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2011) = 786.
    CREATE OBJECT t2010.
    t2010->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2010->nval = t2011.
    t2007 = t2010.
    DATA t2013 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2016 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2017) = 757.
    CREATE OBJECT t2016.
    t2016->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2016->nval = t2017.
    t2013 = t2016.
    DATA t2019 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2022 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2023) = 786.
    CREATE OBJECT t2022.
    t2022->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2022->nval = t2023.
    t2019 = t2022.
    DATA t2025 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2028 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2029) = 2111.
    CREATE OBJECT t2028.
    t2028->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2028->nval = t2029.
    t2025 = t2028.
    t2000 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2001 i_kernel = t2007 i_op = t2013 i_cloud_47cd = t2019 i_ce = t2025 ).
    CREATE OBJECT t2000->zlnt_view_ownkeys_b0e8086400eb.
    t2000->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2031 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2000->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2031 ).
    DATA t2032 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2000->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2000->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2032 ).
    ENDIF.
    DATA t2033 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2000->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2000->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2033 ).
    ENDIF.
    DATA t2034 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2000->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2000->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2034 ).
    ENDIF.
    DATA t2035 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2000->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2000->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2035 ).
    ENDIF.
    CREATE OBJECT t2000->zlnt_json_ownkeys_70e5fd461788.
    t2000->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2036) = |abap|.
    DATA t2037 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2000->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2036 p1 = t2037 ).
    DATA(t2038) = |kernel|.
    DATA t2039 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2000->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2000->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2038 p1 = t2039 ).
    ENDIF.
    DATA(t2040) = |op|.
    DATA t2041 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2000->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2000->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2040 p1 = t2041 ).
    ENDIF.
    DATA(t2042) = |cloud|.
    DATA t2043 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2000->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2000->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2042 p1 = t2043 ).
    ENDIF.
    DATA(t2044) = |ce|.
    DATA t2045 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2000->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2000->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2044 p1 = t2045 ).
    ENDIF.
    t1998 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1999 i_f1 = t2000 ).
    t84->load( ).
    APPEND t1998 TO t84->items.
    t84->save( ).
    DATA t2047 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t2048) = |v787|.
    DATA t2049 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t2050 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2053 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2054) = |7.87|.
    CREATE OBJECT t2053.
    t2053->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t2053->sval = t2054.
    t2050 = t2053.
    DATA t2056 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2059 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2060) = 787.
    CREATE OBJECT t2059.
    t2059->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2059->nval = t2060.
    t2056 = t2059.
    DATA t2062 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2065 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2066) = 757.
    CREATE OBJECT t2065.
    t2065->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2065->nval = t2066.
    t2062 = t2065.
    DATA t2068 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2071 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2072) = 787.
    CREATE OBJECT t2071.
    t2071->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2071->nval = t2072.
    t2068 = t2071.
    DATA t2074 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2077 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2078) = 2202.
    CREATE OBJECT t2077.
    t2077->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2077->nval = t2078.
    t2074 = t2077.
    t2049 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2050 i_kernel = t2056 i_op = t2062 i_cloud_47cd = t2068 i_ce = t2074 ).
    CREATE OBJECT t2049->zlnt_view_ownkeys_b0e8086400eb.
    t2049->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2080 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2049->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2080 ).
    DATA t2081 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2049->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2049->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2081 ).
    ENDIF.
    DATA t2082 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2049->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2049->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2082 ).
    ENDIF.
    DATA t2083 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2049->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2049->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2083 ).
    ENDIF.
    DATA t2084 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2049->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2049->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2084 ).
    ENDIF.
    CREATE OBJECT t2049->zlnt_json_ownkeys_70e5fd461788.
    t2049->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2085) = |abap|.
    DATA t2086 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2049->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2085 p1 = t2086 ).
    DATA(t2087) = |kernel|.
    DATA t2088 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2049->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2049->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2087 p1 = t2088 ).
    ENDIF.
    DATA(t2089) = |op|.
    DATA t2090 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2049->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2049->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2089 p1 = t2090 ).
    ENDIF.
    DATA(t2091) = |cloud|.
    DATA t2092 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2049->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2049->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2091 p1 = t2092 ).
    ENDIF.
    DATA(t2093) = |ce|.
    DATA t2094 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2049->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2049->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2093 p1 = t2094 ).
    ENDIF.
    t2047 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t2048 i_f1 = t2049 ).
    t84->load( ).
    APPEND t2047 TO t84->items.
    t84->save( ).
    DATA t2096 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t2097) = |v788|.
    DATA t2098 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t2099 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2103) = |7.88|.
    CREATE OBJECT t2102.
    t2102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t2102->sval = t2103.
    t2099 = t2102.
    DATA t2105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2109) = 788.
    CREATE OBJECT t2108.
    t2108->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2108->nval = t2109.
    t2105 = t2108.
    DATA t2111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2115) = 757.
    CREATE OBJECT t2114.
    t2114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2114->nval = t2115.
    t2111 = t2114.
    DATA t2117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2121) = 788.
    CREATE OBJECT t2120.
    t2120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2120->nval = t2121.
    t2117 = t2120.
    DATA t2123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2127) = 2205.
    CREATE OBJECT t2126.
    t2126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2126->nval = t2127.
    t2123 = t2126.
    t2098 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2099 i_kernel = t2105 i_op = t2111 i_cloud_47cd = t2117 i_ce = t2123 ).
    CREATE OBJECT t2098->zlnt_view_ownkeys_b0e8086400eb.
    t2098->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2098->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2129 ).
    DATA t2130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2098->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2098->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2130 ).
    ENDIF.
    DATA t2131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2098->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2098->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2131 ).
    ENDIF.
    DATA t2132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2098->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2098->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2132 ).
    ENDIF.
    DATA t2133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2098->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2098->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2133 ).
    ENDIF.
    CREATE OBJECT t2098->zlnt_json_ownkeys_70e5fd461788.
    t2098->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2134) = |abap|.
    DATA t2135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2098->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2134 p1 = t2135 ).
    DATA(t2136) = |kernel|.
    DATA t2137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2098->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2098->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2136 p1 = t2137 ).
    ENDIF.
    DATA(t2138) = |op|.
    DATA t2139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2098->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2098->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2138 p1 = t2139 ).
    ENDIF.
    DATA(t2140) = |cloud|.
    DATA t2141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2098->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2098->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2140 p1 = t2141 ).
    ENDIF.
    DATA(t2142) = |ce|.
    DATA t2143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2098->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2098->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2142 p1 = t2143 ).
    ENDIF.
    t2096 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t2097 i_f1 = t2098 ).
    t84->load( ).
    APPEND t2096 TO t84->items.
    t84->save( ).
    DATA t2145 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t2146) = |v789|.
    DATA t2147 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t2148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2152) = |7.89|.
    CREATE OBJECT t2151.
    t2151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t2151->sval = t2152.
    t2148 = t2151.
    DATA t2154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2158) = 789.
    CREATE OBJECT t2157.
    t2157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2157->nval = t2158.
    t2154 = t2157.
    DATA t2160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2164) = 757.
    CREATE OBJECT t2163.
    t2163->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2163->nval = t2164.
    t2160 = t2163.
    DATA t2166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2170) = 789.
    CREATE OBJECT t2169.
    t2169->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2169->nval = t2170.
    t2166 = t2169.
    DATA t2172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2176) = 2208.
    CREATE OBJECT t2175.
    t2175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2175->nval = t2176.
    t2172 = t2175.
    t2147 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2148 i_kernel = t2154 i_op = t2160 i_cloud_47cd = t2166 i_ce = t2172 ).
    CREATE OBJECT t2147->zlnt_view_ownkeys_b0e8086400eb.
    t2147->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2147->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2178 ).
    DATA t2179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2147->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2147->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2179 ).
    ENDIF.
    DATA t2180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2147->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2147->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2180 ).
    ENDIF.
    DATA t2181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2147->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2147->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2181 ).
    ENDIF.
    DATA t2182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2147->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2147->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2182 ).
    ENDIF.
    CREATE OBJECT t2147->zlnt_json_ownkeys_70e5fd461788.
    t2147->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2183) = |abap|.
    DATA t2184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2147->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2183 p1 = t2184 ).
    DATA(t2185) = |kernel|.
    DATA t2186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2147->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2147->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2185 p1 = t2186 ).
    ENDIF.
    DATA(t2187) = |op|.
    DATA t2188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2147->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2147->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2187 p1 = t2188 ).
    ENDIF.
    DATA(t2189) = |cloud|.
    DATA t2190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2147->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2147->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2189 p1 = t2190 ).
    ENDIF.
    DATA(t2191) = |ce|.
    DATA t2192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2147->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2147->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2191 p1 = t2192 ).
    ENDIF.
    t2145 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t2146 i_f1 = t2147 ).
    t84->load( ).
    APPEND t2145 TO t84->items.
    t84->save( ).
    DATA t2194 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t2195) = |v790|.
    DATA t2196 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t2197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2201) = |7.90|.
    CREATE OBJECT t2200.
    t2200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t2200->sval = t2201.
    t2197 = t2200.
    DATA t2203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2207) = 790.
    CREATE OBJECT t2206.
    t2206->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2206->nval = t2207.
    t2203 = t2206.
    DATA t2209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2213) = 758.
    CREATE OBJECT t2212.
    t2212->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2212->nval = t2213.
    t2209 = t2212.
    DATA t2215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2219) = 790.
    CREATE OBJECT t2218.
    t2218->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2218->nval = t2219.
    t2215 = t2218.
    DATA t2221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2225) = 2211.
    CREATE OBJECT t2224.
    t2224->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2224->nval = t2225.
    t2221 = t2224.
    t2196 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2197 i_kernel = t2203 i_op = t2209 i_cloud_47cd = t2215 i_ce = t2221 ).
    CREATE OBJECT t2196->zlnt_view_ownkeys_b0e8086400eb.
    t2196->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2227 ).
    DATA t2228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2228 ).
    ENDIF.
    DATA t2229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2229 ).
    ENDIF.
    DATA t2230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2230 ).
    ENDIF.
    DATA t2231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2231 ).
    ENDIF.
    CREATE OBJECT t2196->zlnt_json_ownkeys_70e5fd461788.
    t2196->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2232) = |abap|.
    DATA t2233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2232 p1 = t2233 ).
    DATA(t2234) = |kernel|.
    DATA t2235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2234 p1 = t2235 ).
    ENDIF.
    DATA(t2236) = |op|.
    DATA t2237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2236 p1 = t2237 ).
    ENDIF.
    DATA(t2238) = |cloud|.
    DATA t2239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2238 p1 = t2239 ).
    ENDIF.
    DATA(t2240) = |ce|.
    DATA t2241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2240 p1 = t2241 ).
    ENDIF.
    t2194 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t2195 i_f1 = t2196 ).
    t84->load( ).
    APPEND t2194 TO t84->items.
    t84->save( ).
    DATA t2243 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t2244) = |v791|.
    DATA t2245 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t2246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2250) = |7.91|.
    CREATE OBJECT t2249.
    t2249->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t2249->sval = t2250.
    t2246 = t2249.
    DATA t2252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2256) = 791.
    CREATE OBJECT t2255.
    t2255->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2255->nval = t2256.
    t2252 = t2255.
    DATA t2258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2262) = 758.
    CREATE OBJECT t2261.
    t2261->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2261->nval = t2262.
    t2258 = t2261.
    DATA t2264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2268) = 791.
    CREATE OBJECT t2267.
    t2267->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2267->nval = t2268.
    t2264 = t2267.
    DATA t2270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2274) = 2302.
    CREATE OBJECT t2273.
    t2273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2273->nval = t2274.
    t2270 = t2273.
    t2245 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2246 i_kernel = t2252 i_op = t2258 i_cloud_47cd = t2264 i_ce = t2270 ).
    CREATE OBJECT t2245->zlnt_view_ownkeys_b0e8086400eb.
    t2245->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2245->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2276 ).
    DATA t2277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2245->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2245->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2277 ).
    ENDIF.
    DATA t2278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2245->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2245->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2278 ).
    ENDIF.
    DATA t2279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2245->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2245->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2279 ).
    ENDIF.
    DATA t2280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2245->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2245->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2280 ).
    ENDIF.
    CREATE OBJECT t2245->zlnt_json_ownkeys_70e5fd461788.
    t2245->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2281) = |abap|.
    DATA t2282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2245->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2281 p1 = t2282 ).
    DATA(t2283) = |kernel|.
    DATA t2284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2245->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2245->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2283 p1 = t2284 ).
    ENDIF.
    DATA(t2285) = |op|.
    DATA t2286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2245->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2245->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2285 p1 = t2286 ).
    ENDIF.
    DATA(t2287) = |cloud|.
    DATA t2288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2245->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2245->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2287 p1 = t2288 ).
    ENDIF.
    DATA(t2289) = |ce|.
    DATA t2290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2245->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2245->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2289 p1 = t2290 ).
    ENDIF.
    t2243 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t2244 i_f1 = t2245 ).
    t84->load( ).
    APPEND t2243 TO t84->items.
    t84->save( ).
    DATA t2292 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t2293) = |v792|.
    DATA t2294 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t2295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2299) = |7.92|.
    CREATE OBJECT t2298.
    t2298->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t2298->sval = t2299.
    t2295 = t2298.
    DATA t2301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2305) = 792.
    CREATE OBJECT t2304.
    t2304->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2304->nval = t2305.
    t2301 = t2304.
    DATA t2307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2311) = 758.
    CREATE OBJECT t2310.
    t2310->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2310->nval = t2311.
    t2307 = t2310.
    DATA t2313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2317) = 792.
    CREATE OBJECT t2316.
    t2316->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2316->nval = t2317.
    t2313 = t2316.
    DATA t2319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2323) = 2305.
    CREATE OBJECT t2322.
    t2322->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2322->nval = t2323.
    t2319 = t2322.
    t2294 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2295 i_kernel = t2301 i_op = t2307 i_cloud_47cd = t2313 i_ce = t2319 ).
    CREATE OBJECT t2294->zlnt_view_ownkeys_b0e8086400eb.
    t2294->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2294->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2325 ).
    DATA t2326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2294->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2294->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2326 ).
    ENDIF.
    DATA t2327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2294->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2294->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2327 ).
    ENDIF.
    DATA t2328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2294->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2294->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2328 ).
    ENDIF.
    DATA t2329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2294->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2294->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2329 ).
    ENDIF.
    CREATE OBJECT t2294->zlnt_json_ownkeys_70e5fd461788.
    t2294->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2330) = |abap|.
    DATA t2331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2294->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2330 p1 = t2331 ).
    DATA(t2332) = |kernel|.
    DATA t2333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2294->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2294->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2332 p1 = t2333 ).
    ENDIF.
    DATA(t2334) = |op|.
    DATA t2335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2294->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2294->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2334 p1 = t2335 ).
    ENDIF.
    DATA(t2336) = |cloud|.
    DATA t2337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2294->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2294->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2336 p1 = t2337 ).
    ENDIF.
    DATA(t2338) = |ce|.
    DATA t2339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2294->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2294->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2338 p1 = t2339 ).
    ENDIF.
    t2292 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t2293 i_f1 = t2294 ).
    t84->load( ).
    APPEND t2292 TO t84->items.
    t84->save( ).
    DATA t2341 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t2342) = |v793|.
    DATA t2343 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t2344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2348) = |7.93|.
    CREATE OBJECT t2347.
    t2347->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t2347->sval = t2348.
    t2344 = t2347.
    DATA t2350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2354) = 793.
    CREATE OBJECT t2353.
    t2353->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2353->nval = t2354.
    t2350 = t2353.
    DATA t2356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2360) = 758.
    CREATE OBJECT t2359.
    t2359->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2359->nval = t2360.
    t2356 = t2359.
    DATA t2362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2366) = 793.
    CREATE OBJECT t2365.
    t2365->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2365->nval = t2366.
    t2362 = t2365.
    DATA t2368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2372) = 2308.
    CREATE OBJECT t2371.
    t2371->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2371->nval = t2372.
    t2368 = t2371.
    t2343 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2344 i_kernel = t2350 i_op = t2356 i_cloud_47cd = t2362 i_ce = t2368 ).
    CREATE OBJECT t2343->zlnt_view_ownkeys_b0e8086400eb.
    t2343->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2343->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2374 ).
    DATA t2375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2343->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2343->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2375 ).
    ENDIF.
    DATA t2376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2343->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2343->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2376 ).
    ENDIF.
    DATA t2377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2343->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2343->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2377 ).
    ENDIF.
    DATA t2378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2343->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2343->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2378 ).
    ENDIF.
    CREATE OBJECT t2343->zlnt_json_ownkeys_70e5fd461788.
    t2343->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2379) = |abap|.
    DATA t2380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2343->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2379 p1 = t2380 ).
    DATA(t2381) = |kernel|.
    DATA t2382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2343->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2343->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2381 p1 = t2382 ).
    ENDIF.
    DATA(t2383) = |op|.
    DATA t2384 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2343->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2343->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2383 p1 = t2384 ).
    ENDIF.
    DATA(t2385) = |cloud|.
    DATA t2386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2343->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2343->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2385 p1 = t2386 ).
    ENDIF.
    DATA(t2387) = |ce|.
    DATA t2388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2343->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2343->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2387 p1 = t2388 ).
    ENDIF.
    t2341 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t2342 i_f1 = t2343 ).
    t84->load( ).
    APPEND t2341 TO t84->items.
    t84->save( ).
    DATA t2390 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t2391) = |v794|.
    DATA t2392 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t2393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2397) = |7.94|.
    CREATE OBJECT t2396.
    t2396->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t2396->sval = t2397.
    t2393 = t2396.
    DATA t2399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2403) = 794.
    CREATE OBJECT t2402.
    t2402->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2402->nval = t2403.
    t2399 = t2402.
    DATA t2405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2409) = 816.
    CREATE OBJECT t2408.
    t2408->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2408->nval = t2409.
    t2405 = t2408.
    DATA t2411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2415) = 794.
    CREATE OBJECT t2414.
    t2414->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2414->nval = t2415.
    t2411 = t2414.
    DATA t2417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2421) = 2311.
    CREATE OBJECT t2420.
    t2420->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2420->nval = t2421.
    t2417 = t2420.
    t2392 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2393 i_kernel = t2399 i_op = t2405 i_cloud_47cd = t2411 i_ce = t2417 ).
    CREATE OBJECT t2392->zlnt_view_ownkeys_b0e8086400eb.
    t2392->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2392->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2423 ).
    DATA t2424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2392->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2392->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2424 ).
    ENDIF.
    DATA t2425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2392->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2392->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2425 ).
    ENDIF.
    DATA t2426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2392->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2392->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2426 ).
    ENDIF.
    DATA t2427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2392->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2392->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2427 ).
    ENDIF.
    CREATE OBJECT t2392->zlnt_json_ownkeys_70e5fd461788.
    t2392->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2428) = |abap|.
    DATA t2429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2392->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2428 p1 = t2429 ).
    DATA(t2430) = |kernel|.
    DATA t2431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2392->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2392->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2430 p1 = t2431 ).
    ENDIF.
    DATA(t2432) = |op|.
    DATA t2433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2392->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2392->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2432 p1 = t2433 ).
    ENDIF.
    DATA(t2434) = |cloud|.
    DATA t2435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2392->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2392->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2434 p1 = t2435 ).
    ENDIF.
    DATA(t2436) = |ce|.
    DATA t2437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2392->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2392->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2436 p1 = t2437 ).
    ENDIF.
    t2390 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t2391 i_f1 = t2392 ).
    t84->load( ).
    APPEND t2390 TO t84->items.
    t84->save( ).
    DATA t2439 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t2440) = |v795|.
    DATA t2441 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t2442 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2446) = |7.95|.
    CREATE OBJECT t2445.
    t2445->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t2445->sval = t2446.
    t2442 = t2445.
    DATA t2448 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2452) = 795.
    CREATE OBJECT t2451.
    t2451->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2451->nval = t2452.
    t2448 = t2451.
    DATA t2454 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2457 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2458) = 816.
    CREATE OBJECT t2457.
    t2457->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2457->nval = t2458.
    t2454 = t2457.
    DATA t2460 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2463 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2464) = 795.
    CREATE OBJECT t2463.
    t2463->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2463->nval = t2464.
    t2460 = t2463.
    DATA t2466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2470) = 2402.
    CREATE OBJECT t2469.
    t2469->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2469->nval = t2470.
    t2466 = t2469.
    t2441 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2442 i_kernel = t2448 i_op = t2454 i_cloud_47cd = t2460 i_ce = t2466 ).
    CREATE OBJECT t2441->zlnt_view_ownkeys_b0e8086400eb.
    t2441->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2472 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2441->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2472 ).
    DATA t2473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2441->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2441->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2473 ).
    ENDIF.
    DATA t2474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2441->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2441->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2474 ).
    ENDIF.
    DATA t2475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2441->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2441->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2475 ).
    ENDIF.
    DATA t2476 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2441->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2441->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2476 ).
    ENDIF.
    CREATE OBJECT t2441->zlnt_json_ownkeys_70e5fd461788.
    t2441->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2477) = |abap|.
    DATA t2478 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2441->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2477 p1 = t2478 ).
    DATA(t2479) = |kernel|.
    DATA t2480 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2441->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2441->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2479 p1 = t2480 ).
    ENDIF.
    DATA(t2481) = |op|.
    DATA t2482 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2441->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2441->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2481 p1 = t2482 ).
    ENDIF.
    DATA(t2483) = |cloud|.
    DATA t2484 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2441->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2441->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2483 p1 = t2484 ).
    ENDIF.
    DATA(t2485) = |ce|.
    DATA t2486 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2441->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2441->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2485 p1 = t2486 ).
    ENDIF.
    t2439 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t2440 i_f1 = t2441 ).
    t84->load( ).
    APPEND t2439 TO t84->items.
    t84->save( ).
    DATA t2488 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t2489) = |v796|.
    DATA t2490 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t2491 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2494 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2495) = |7.96|.
    CREATE OBJECT t2494.
    t2494->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t2494->sval = t2495.
    t2491 = t2494.
    DATA t2497 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2501) = 796.
    CREATE OBJECT t2500.
    t2500->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2500->nval = t2501.
    t2497 = t2500.
    DATA t2503 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2507) = 816.
    CREATE OBJECT t2506.
    t2506->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2506->nval = t2507.
    t2503 = t2506.
    DATA t2509 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2512 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2513) = 796.
    CREATE OBJECT t2512.
    t2512->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2512->nval = t2513.
    t2509 = t2512.
    DATA t2515 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2518 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2519) = 2405.
    CREATE OBJECT t2518.
    t2518->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2518->nval = t2519.
    t2515 = t2518.
    t2490 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2491 i_kernel = t2497 i_op = t2503 i_cloud_47cd = t2509 i_ce = t2515 ).
    CREATE OBJECT t2490->zlnt_view_ownkeys_b0e8086400eb.
    t2490->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2521 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2490->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2521 ).
    DATA t2522 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2490->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2490->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2522 ).
    ENDIF.
    DATA t2523 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2490->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2490->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2523 ).
    ENDIF.
    DATA t2524 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2490->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2490->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2524 ).
    ENDIF.
    DATA t2525 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2490->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2490->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2525 ).
    ENDIF.
    CREATE OBJECT t2490->zlnt_json_ownkeys_70e5fd461788.
    t2490->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2526) = |abap|.
    DATA t2527 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2490->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2526 p1 = t2527 ).
    DATA(t2528) = |kernel|.
    DATA t2529 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2490->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2490->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2528 p1 = t2529 ).
    ENDIF.
    DATA(t2530) = |op|.
    DATA t2531 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2490->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2490->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2530 p1 = t2531 ).
    ENDIF.
    DATA(t2532) = |cloud|.
    DATA t2533 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2490->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2490->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2532 p1 = t2533 ).
    ENDIF.
    DATA(t2534) = |ce|.
    DATA t2535 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2490->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2490->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2534 p1 = t2535 ).
    ENDIF.
    t2488 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t2489 i_f1 = t2490 ).
    t84->load( ).
    APPEND t2488 TO t84->items.
    t84->save( ).
    DATA t2537 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t2538) = |v912|.
    DATA t2539 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t2540 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2543 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2544) = |9.12|.
    CREATE OBJECT t2543.
    t2543->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t2543->sval = t2544.
    t2540 = t2543.
    DATA t2546 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2550) = 912.
    CREATE OBJECT t2549.
    t2549->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2549->nval = t2550.
    t2546 = t2549.
    DATA t2552 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2555 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2556) = 816.
    CREATE OBJECT t2555.
    t2555->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2555->nval = t2556.
    t2552 = t2555.
    DATA t2558 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2562) = 912.
    CREATE OBJECT t2561.
    t2561->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2561->nval = t2562.
    t2558 = t2561.
    DATA t2564 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2567 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2568) = 2408.
    CREATE OBJECT t2567.
    t2567->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2567->nval = t2568.
    t2564 = t2567.
    t2539 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2540 i_kernel = t2546 i_op = t2552 i_cloud_47cd = t2558 i_ce = t2564 ).
    CREATE OBJECT t2539->zlnt_view_ownkeys_b0e8086400eb.
    t2539->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2539->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2570 ).
    DATA t2571 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2539->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2539->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2571 ).
    ENDIF.
    DATA t2572 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2539->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2539->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2572 ).
    ENDIF.
    DATA t2573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2539->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2539->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2573 ).
    ENDIF.
    DATA t2574 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2539->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2539->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2574 ).
    ENDIF.
    CREATE OBJECT t2539->zlnt_json_ownkeys_70e5fd461788.
    t2539->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2575) = |abap|.
    DATA t2576 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2539->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2575 p1 = t2576 ).
    DATA(t2577) = |kernel|.
    DATA t2578 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2539->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2539->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2577 p1 = t2578 ).
    ENDIF.
    DATA(t2579) = |op|.
    DATA t2580 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2539->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2539->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2579 p1 = t2580 ).
    ENDIF.
    DATA(t2581) = |cloud|.
    DATA t2582 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2539->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2539->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2581 p1 = t2582 ).
    ENDIF.
    DATA(t2583) = |ce|.
    DATA t2584 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2539->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2539->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2583 p1 = t2584 ).
    ENDIF.
    t2537 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t2538 i_f1 = t2539 ).
    t84->load( ).
    APPEND t2537 TO t84->items.
    t84->save( ).
    DATA t2586 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t2587) = |v913|.
    DATA t2588 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t2589 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2592 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2593) = |9.13|.
    CREATE OBJECT t2592.
    t2592->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t2592->sval = t2593.
    t2589 = t2592.
    DATA t2595 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2598 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2599) = 913.
    CREATE OBJECT t2598.
    t2598->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2598->nval = t2599.
    t2595 = t2598.
    DATA t2601 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2604 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2605) = 816.
    CREATE OBJECT t2604.
    t2604->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2604->nval = t2605.
    t2601 = t2604.
    DATA t2607 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2610 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2611) = 913.
    CREATE OBJECT t2610.
    t2610->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2610->nval = t2611.
    t2607 = t2610.
    DATA t2613 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2616 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2617) = 2411.
    CREATE OBJECT t2616.
    t2616->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2616->nval = t2617.
    t2613 = t2616.
    t2588 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2589 i_kernel = t2595 i_op = t2601 i_cloud_47cd = t2607 i_ce = t2613 ).
    CREATE OBJECT t2588->zlnt_view_ownkeys_b0e8086400eb.
    t2588->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2619 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2588->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2619 ).
    DATA t2620 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2588->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2588->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2620 ).
    ENDIF.
    DATA t2621 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2588->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2588->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2621 ).
    ENDIF.
    DATA t2622 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2588->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2588->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2622 ).
    ENDIF.
    DATA t2623 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2588->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2588->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2623 ).
    ENDIF.
    CREATE OBJECT t2588->zlnt_json_ownkeys_70e5fd461788.
    t2588->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2624) = |abap|.
    DATA t2625 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2588->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2624 p1 = t2625 ).
    DATA(t2626) = |kernel|.
    DATA t2627 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2588->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2588->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2626 p1 = t2627 ).
    ENDIF.
    DATA(t2628) = |op|.
    DATA t2629 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2588->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2588->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2628 p1 = t2629 ).
    ENDIF.
    DATA(t2630) = |cloud|.
    DATA t2631 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2588->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2588->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2630 p1 = t2631 ).
    ENDIF.
    DATA(t2632) = |ce|.
    DATA t2633 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2588->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2588->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2632 p1 = t2633 ).
    ENDIF.
    t2586 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t2587 i_f1 = t2588 ).
    t84->load( ).
    APPEND t2586 TO t84->items.
    t84->save( ).
    DATA t2635 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t2636) = |v914|.
    DATA t2637 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t2638 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2641 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2642) = |9.14|.
    CREATE OBJECT t2641.
    t2641->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t2641->sval = t2642.
    t2638 = t2641.
    DATA t2644 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2647 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2648) = 914.
    CREATE OBJECT t2647.
    t2647->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2647->nval = t2648.
    t2644 = t2647.
    DATA t2650 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2653 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2654) = 816.
    CREATE OBJECT t2653.
    t2653->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2653->nval = t2654.
    t2650 = t2653.
    DATA t2656 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2659 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2660) = 914.
    CREATE OBJECT t2659.
    t2659->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2659->nval = t2660.
    t2656 = t2659.
    DATA t2662 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2665 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2666) = 2502.
    CREATE OBJECT t2665.
    t2665->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2665->nval = t2666.
    t2662 = t2665.
    t2637 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2638 i_kernel = t2644 i_op = t2650 i_cloud_47cd = t2656 i_ce = t2662 ).
    CREATE OBJECT t2637->zlnt_view_ownkeys_b0e8086400eb.
    t2637->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2668 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2637->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2668 ).
    DATA t2669 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2637->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2637->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2669 ).
    ENDIF.
    DATA t2670 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2637->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2637->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2670 ).
    ENDIF.
    DATA t2671 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2637->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2637->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2671 ).
    ENDIF.
    DATA t2672 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2637->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2637->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2672 ).
    ENDIF.
    CREATE OBJECT t2637->zlnt_json_ownkeys_70e5fd461788.
    t2637->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2673) = |abap|.
    DATA t2674 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2637->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2673 p1 = t2674 ).
    DATA(t2675) = |kernel|.
    DATA t2676 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2637->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2637->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2675 p1 = t2676 ).
    ENDIF.
    DATA(t2677) = |op|.
    DATA t2678 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2637->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2637->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2677 p1 = t2678 ).
    ENDIF.
    DATA(t2679) = |cloud|.
    DATA t2680 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2637->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2637->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2679 p1 = t2680 ).
    ENDIF.
    DATA(t2681) = |ce|.
    DATA t2682 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2637->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2637->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2681 p1 = t2682 ).
    ENDIF.
    t2635 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t2636 i_f1 = t2637 ).
    t84->load( ).
    APPEND t2635 TO t84->items.
    t84->save( ).
    DATA t2684 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t2685) = |v915|.
    DATA t2686 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t2687 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2690 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2691) = |9.15|.
    CREATE OBJECT t2690.
    t2690->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t2690->sval = t2691.
    t2687 = t2690.
    DATA t2693 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2696 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2697) = 915.
    CREATE OBJECT t2696.
    t2696->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2696->nval = t2697.
    t2693 = t2696.
    DATA t2699 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2702 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2703) = 816.
    CREATE OBJECT t2702.
    t2702->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2702->nval = t2703.
    t2699 = t2702.
    DATA t2705 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2708 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2709) = 915.
    CREATE OBJECT t2708.
    t2708->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2708->nval = t2709.
    t2705 = t2708.
    DATA t2711 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2714 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2715) = 2505.
    CREATE OBJECT t2714.
    t2714->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2714->nval = t2715.
    t2711 = t2714.
    t2686 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2687 i_kernel = t2693 i_op = t2699 i_cloud_47cd = t2705 i_ce = t2711 ).
    CREATE OBJECT t2686->zlnt_view_ownkeys_b0e8086400eb.
    t2686->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2717 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2686->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2717 ).
    DATA t2718 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2686->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2686->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2718 ).
    ENDIF.
    DATA t2719 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2686->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2686->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2719 ).
    ENDIF.
    DATA t2720 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2686->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2686->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2720 ).
    ENDIF.
    DATA t2721 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2686->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2686->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2721 ).
    ENDIF.
    CREATE OBJECT t2686->zlnt_json_ownkeys_70e5fd461788.
    t2686->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2722) = |abap|.
    DATA t2723 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2686->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2722 p1 = t2723 ).
    DATA(t2724) = |kernel|.
    DATA t2725 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2686->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2686->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2724 p1 = t2725 ).
    ENDIF.
    DATA(t2726) = |op|.
    DATA t2727 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2686->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2686->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2726 p1 = t2727 ).
    ENDIF.
    DATA(t2728) = |cloud|.
    DATA t2729 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2686->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2686->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2728 p1 = t2729 ).
    ENDIF.
    DATA(t2730) = |ce|.
    DATA t2731 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2686->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2686->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2730 p1 = t2731 ).
    ENDIF.
    t2684 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t2685 i_f1 = t2686 ).
    t84->load( ).
    APPEND t2684 TO t84->items.
    t84->save( ).
    DATA t2733 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t2734) = |v916|.
    DATA t2735 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t2736 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2739 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2740) = |9.16|.
    CREATE OBJECT t2739.
    t2739->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t2739->sval = t2740.
    t2736 = t2739.
    DATA t2742 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2745 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2746) = 916.
    CREATE OBJECT t2745.
    t2745->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2745->nval = t2746.
    t2742 = t2745.
    DATA t2748 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2751 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2752) = 816.
    CREATE OBJECT t2751.
    t2751->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2751->nval = t2752.
    t2748 = t2751.
    DATA t2754 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2757 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2758) = 916.
    CREATE OBJECT t2757.
    t2757->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2757->nval = t2758.
    t2754 = t2757.
    DATA t2760 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2763 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2764) = 2508.
    CREATE OBJECT t2763.
    t2763->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2763->nval = t2764.
    t2760 = t2763.
    t2735 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2736 i_kernel = t2742 i_op = t2748 i_cloud_47cd = t2754 i_ce = t2760 ).
    CREATE OBJECT t2735->zlnt_view_ownkeys_b0e8086400eb.
    t2735->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2766 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2735->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2766 ).
    DATA t2767 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2735->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2735->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2767 ).
    ENDIF.
    DATA t2768 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2735->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2735->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2768 ).
    ENDIF.
    DATA t2769 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2735->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2735->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2769 ).
    ENDIF.
    DATA t2770 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2735->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2735->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2770 ).
    ENDIF.
    CREATE OBJECT t2735->zlnt_json_ownkeys_70e5fd461788.
    t2735->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2771) = |abap|.
    DATA t2772 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2735->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2771 p1 = t2772 ).
    DATA(t2773) = |kernel|.
    DATA t2774 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2735->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2735->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2773 p1 = t2774 ).
    ENDIF.
    DATA(t2775) = |op|.
    DATA t2776 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2735->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2735->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2775 p1 = t2776 ).
    ENDIF.
    DATA(t2777) = |cloud|.
    DATA t2778 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2735->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2735->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2777 p1 = t2778 ).
    ENDIF.
    DATA(t2779) = |ce|.
    DATA t2780 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2735->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2735->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2779 p1 = t2780 ).
    ENDIF.
    t2733 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t2734 i_f1 = t2735 ).
    t84->load( ).
    APPEND t2733 TO t84->items.
    t84->save( ).
    DATA t2782 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t2783) = |v917|.
    DATA t2784 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t2785 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2789) = |9.17|.
    CREATE OBJECT t2788.
    t2788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t2788->sval = t2789.
    t2785 = t2788.
    DATA t2791 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2794 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2795) = 917.
    CREATE OBJECT t2794.
    t2794->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2794->nval = t2795.
    t2791 = t2794.
    DATA t2797 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2800 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2801) = 0.
    CREATE OBJECT t2800.
    t2800->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t2797 = t2800.
    DATA t2803 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2806 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2807) = 917.
    CREATE OBJECT t2806.
    t2806->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2806->nval = t2807.
    t2803 = t2806.
    DATA t2809 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2812 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2813) = 2511.
    CREATE OBJECT t2812.
    t2812->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2812->nval = t2813.
    t2809 = t2812.
    t2784 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2785 i_kernel = t2791 i_op = t2797 i_cloud_47cd = t2803 i_ce = t2809 ).
    CREATE OBJECT t2784->zlnt_view_ownkeys_b0e8086400eb.
    t2784->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2815 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2784->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2815 ).
    DATA t2816 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2784->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2784->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2816 ).
    ENDIF.
    DATA t2817 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2784->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2784->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2817 ).
    ENDIF.
    DATA t2818 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2784->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2784->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2818 ).
    ENDIF.
    DATA t2819 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2784->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2784->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2819 ).
    ENDIF.
    CREATE OBJECT t2784->zlnt_json_ownkeys_70e5fd461788.
    t2784->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2820) = |abap|.
    DATA t2821 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2784->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2820 p1 = t2821 ).
    DATA(t2822) = |kernel|.
    DATA t2823 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2784->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2784->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2822 p1 = t2823 ).
    ENDIF.
    DATA(t2824) = |op|.
    DATA t2825 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2784->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2784->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2824 p1 = t2825 ).
    ENDIF.
    DATA(t2826) = |cloud|.
    DATA t2827 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2784->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2784->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2826 p1 = t2827 ).
    ENDIF.
    DATA(t2828) = |ce|.
    DATA t2829 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2784->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2784->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2828 p1 = t2829 ).
    ENDIF.
    t2782 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t2783 i_f1 = t2784 ).
    t84->load( ).
    APPEND t2782 TO t84->items.
    t84->save( ).
    DATA t2831 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t2832) = |v918|.
    DATA t2833 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t2834 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2837 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2838) = |9.18|.
    CREATE OBJECT t2837.
    t2837->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t2837->sval = t2838.
    t2834 = t2837.
    DATA t2840 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2843 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2844) = 918.
    CREATE OBJECT t2843.
    t2843->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2843->nval = t2844.
    t2840 = t2843.
    DATA t2846 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2849 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2850) = 0.
    CREATE OBJECT t2849.
    t2849->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t2846 = t2849.
    DATA t2852 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2855 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2856) = 918.
    CREATE OBJECT t2855.
    t2855->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2855->nval = t2856.
    t2852 = t2855.
    DATA t2858 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2861 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2862) = 2602.
    CREATE OBJECT t2861.
    t2861->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t2861->nval = t2862.
    t2858 = t2861.
    t2833 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2834 i_kernel = t2840 i_op = t2846 i_cloud_47cd = t2852 i_ce = t2858 ).
    CREATE OBJECT t2833->zlnt_view_ownkeys_b0e8086400eb.
    t2833->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2864 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2833->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2864 ).
    DATA t2865 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2833->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2833->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2865 ).
    ENDIF.
    DATA t2866 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2833->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2833->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2866 ).
    ENDIF.
    DATA t2867 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2833->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2833->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2867 ).
    ENDIF.
    DATA t2868 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2833->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2833->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2868 ).
    ENDIF.
    CREATE OBJECT t2833->zlnt_json_ownkeys_70e5fd461788.
    t2833->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2869) = |abap|.
    DATA t2870 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2833->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2869 p1 = t2870 ).
    DATA(t2871) = |kernel|.
    DATA t2872 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2833->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2833->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2871 p1 = t2872 ).
    ENDIF.
    DATA(t2873) = |op|.
    DATA t2874 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2833->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2833->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2873 p1 = t2874 ).
    ENDIF.
    DATA(t2875) = |cloud|.
    DATA t2876 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2833->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2833->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2875 p1 = t2876 ).
    ENDIF.
    DATA(t2877) = |ce|.
    DATA t2878 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2833->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2833->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2877 p1 = t2878 ).
    ENDIF.
    t2831 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t2832 i_f1 = t2833 ).
    t84->load( ).
    APPEND t2831 TO t84->items.
    t84->save( ).
    DATA t2880 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA(t2881) = |Newest|.
    DATA t2882 TYPE REF TO zcl_lnt_shape_27cfcabc.
    DATA t2883 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2886 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2887) = 0.
    CREATE OBJECT t2886.
    t2886->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t2883 = t2886.
    DATA t2889 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2892 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2893) = 0.
    CREATE OBJECT t2892.
    t2892->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t2889 = t2892.
    DATA t2895 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2898 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2899) = 0.
    CREATE OBJECT t2898.
    t2898->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t2895 = t2898.
    DATA t2901 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2904 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2905) = 0.
    CREATE OBJECT t2904.
    t2904->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t2901 = t2904.
    DATA t2907 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t2910 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t2911) = 0.
    CREATE OBJECT t2910.
    t2910->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
    t2907 = t2910.
    t2882 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2883 i_kernel = t2889 i_op = t2895 i_cloud_47cd = t2901 i_ce = t2907 ).
    CREATE OBJECT t2882->zlnt_view_ownkeys_b0e8086400eb.
    t2882->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2913 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2882->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2913 ).
    DATA t2914 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2882->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2882->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2914 ).
    ENDIF.
    DATA t2915 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2882->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2882->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2915 ).
    ENDIF.
    DATA t2916 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2882->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2882->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2916 ).
    ENDIF.
    DATA t2917 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2882->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2882->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2917 ).
    ENDIF.
    CREATE OBJECT t2882->zlnt_json_ownkeys_70e5fd461788.
    t2882->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2918) = |abap|.
    DATA t2919 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2882->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2918 p1 = t2919 ).
    DATA(t2920) = |kernel|.
    DATA t2921 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2882->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2882->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2920 p1 = t2921 ).
    ENDIF.
    DATA(t2922) = |op|.
    DATA t2923 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2882->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2882->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2922 p1 = t2923 ).
    ENDIF.
    DATA(t2924) = |cloud|.
    DATA t2925 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2882->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2882->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2924 p1 = t2925 ).
    ENDIF.
    DATA(t2926) = |ce|.
    DATA t2927 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2882->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2882->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2926 p1 = t2927 ).
    ENDIF.
    t2880 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t2881 i_f1 = t2882 ).
    t84->load( ).
    APPEND t2880 TO t84->items.
    t84->save( ).
    zcl_lnt_version_module=>release_defs_raw = t84.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    DATA(t2930) = VALUE f( ).
    DATA(t2931) = CONV f( -1 ).
    t2930 = t2931.
    DATA t2932 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2933 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2933.
    t2932 = t2933.
    DATA t2934 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2934 = zcl_lnt_version_module=>release_defs_raw.
    DATA t2935 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA t2936 TYPE REF TO object.
    DATA(t2937) = VALUE i( ).
    DO.
      t2934->load( ).
      IF t2937 >= lines( t2934->items ).
        EXIT.
      ENDIF.
      CLEAR t2936.
      READ TABLE t2934->items INDEX t2937 + 1 INTO t2936.
      t2937 = t2937 + 1.
      DATA t2938 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2938.
      CLEAR t2935.
      IF t2936 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t2938 ?= t2936.
        DATA t2939 TYPE REF TO object.
        CLEAR t2939.
        t2939 = t2938->as_ref( ).
        t2935 ?= t2939.
      ELSE.
        t2935 ?= t2936.
      ENDIF.
      DATA(t2940) = VALUE f( ).
      DATA(t2942) = CONV f( 1 ).
      t2940 = t2930 + t2942.
      t2930 = t2940.
      DATA t2944 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2944.
      DATA(t2945) = VALUE string( ).
      DATA(t2946) = VALUE string( ).
      t2946 = t2935->f0.
      t2945 = t2946.
      DATA t2948 TYPE REF TO zcl_lnt_shape_27cfcabc.
      CLEAR t2948.
      DATA t2949 TYPE REF TO zcl_lnt_shape_27cfcabc.
      CLEAR t2949.
      t2949 = t2935->f1.
      t2948 = t2949.
      DATA t2952 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2952.
      DATA t2953 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2953.
      DATA(t2954) = |\{\}|.
      TRY.
          t2953 = zlnt_runtime_json_7c6b3012af76=>parse( t2954 ).
        CATCH zlnt_exception_js_ebcc2df7d5e4.
          DATA(t2955) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t2955->has = abap_true.
          t2955->value = `Invalid JSON`.
          DATA(t2956) = NEW zcx_lnt_builtin_4c6a1223( i_message_26cb = t2955 ).
          DATA(t2957) = NEW zlnt_exception_cl_30eec8e8805d( ).
          t2957->payload = t2956.
          DATA t2958 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2958.
          CLEAR t2958.
          DATA t2959 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t2959.
          DATA t2960 TYPE REF TO object.
          CLEAR t2960.
          CLEAR t2959.
          t2960 = t2956.
          TRY.
              t2958 ?= t2960.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t2958 IS NOT BOUND.
            TRY.
                t2959 ?= t2956.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t2959 IS BOUND.
              t2958 = t2959->source( ).
            ENDIF.
            IF t2958 IS NOT BOUND.
              CREATE OBJECT t2958.
              t2958->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t2958->oval = t2956.
            ENDIF.
          ENDIF.
          t2957->source_value = t2958.
          RAISE EXCEPTION t2957.
      ENDTRY.
      t2952 = t2953.
      DATA t2961 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2961.
      DATA t2962 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2962.
      CLEAR t2962.
      IF t2948 IS BOUND.
        DATA t2964 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t2964.
        DATA t2965 TYPE REF TO object.
        CLEAR t2965.
        CLEAR t2964.
        t2965 = t2948.
        TRY.
            t2962 ?= t2965.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t2962 IS NOT BOUND.
          TRY.
              t2964 ?= t2948.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t2964 IS BOUND.
            t2962 = t2964->source( ).
          ENDIF.
          IF t2962 IS NOT BOUND.
            CREATE OBJECT t2962.
            t2962->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t2962->oval = t2948.
          ENDIF.
        ENDIF.
      ENDIF.
      t2961 = t2962.
      DATA(t2966) = VALUE abap_bool( ).
      DATA(t2967) = VALUE abap_bool( ).
      IF t2961 IS NOT BOUND.
        t2967 = abap_true.
      ELSE.
        t2967 = xsdbool( t2961->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      t2966 = xsdbool( t2967 = abap_false ).
      IF t2966 = abap_true.
        DATA t2969 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t2969.
        t2969 = zlnt_runtime_ownk_4497b85e405d=>keys( t2961 ).
        DATA(t2971) = VALUE string( ).
        t2969->dense( ).
        DATA(t2972) = VALUE i( ).
        DO.
          t2969->load( ).
          IF t2972 >= lines( t2969->items ).
            EXIT.
          ENDIF.
          CLEAR t2971.
          READ TABLE t2969->items INDEX t2972 + 1 INTO t2971.
          IF t2969->has( t2972 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t2972 = t2972 + 1.
          DATA t2975 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2975.
          t2975 = t2961->get( p0 = t2971 ).
          t2952->put( p0 = t2971 p1 = t2975 ).
        ENDDO.
      ENDIF.
      DATA(t2979) = |name|.
      DATA t2980 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2980.
      CLEAR t2980.
      CREATE OBJECT t2980.
      t2980->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t2980->sval = t2945.
      t2952->put( p0 = t2979 p1 = t2980 ).
      DATA(t2983) = |ordinal|.
      DATA t2984 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2984.
      CLEAR t2984.
      CREATE OBJECT t2984.
      t2984->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2984->nval = t2930.
      t2952->put( p0 = t2983 p1 = t2984 ).
      DATA t2986 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2986.
      CLEAR t2986.
      IF t2952 IS BOUND.
        IF t2952->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t2986 ?= t2952->oval.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
        IF t2986 IS NOT BOUND.
          IF t2952->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t2988 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t2988.
            IF t2952->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
            ENDIF.
            TRY.
                t2988 ?= t2952->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
            ENDTRY.
            IF t2988->structural( ) <> abap_true.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
            ENDIF.
          ENDIF.
          DATA(t2989) = VALUE string( ).
          DATA t2990 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2990.
          DATA t2991 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2991.
          DATA t2992 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2992.
          DATA t2993 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2993.
          DATA t2994 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2994.
          DATA(t2995) = VALUE f( ).
          t2986 = NEW zcl_lnt_abap_release( view_source = t2952 i_name = t2989 i_abap = t2990 i_kernel = t2991 i_op = t2992 i_cloud_47cd = t2993 i_ce = t2994 i_ordinal = t2995 ).
        ENDIF.
      ENDIF.
      t2944 = t2986.
      t2932->load( ).
      APPEND t2944 TO t2932->items.
      t2932->save( ).
    ENDDO.
    zcl_lnt_version_module=>release_list = t2932.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    DATA t2998 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    t2998 = NEW zlnt_runtime_map__201f3699a39e( ).
    DATA t3000 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t3001) = VALUE f( ).
    DATA(t3002) = CONV f( -1 ).
    t3001 = t3002.
    DATA t3003 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3004 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3004.
    t3003 = t3004.
    DATA t3005 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3005 = zcl_lnt_version_module=>release_defs_raw.
    DATA t3006 TYPE REF TO zcl_lnt_tuple_53b925ee.
    DATA t3007 TYPE REF TO object.
    DATA(t3008) = VALUE i( ).
    DO.
      t3005->load( ).
      IF t3008 >= lines( t3005->items ).
        EXIT.
      ENDIF.
      CLEAR t3007.
      READ TABLE t3005->items INDEX t3008 + 1 INTO t3007.
      t3008 = t3008 + 1.
      DATA t3009 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t3009.
      CLEAR t3006.
      IF t3007 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t3009 ?= t3007.
        DATA t3010 TYPE REF TO object.
        CLEAR t3010.
        t3010 = t3009->as_ref( ).
        t3006 ?= t3010.
      ELSE.
        t3006 ?= t3007.
      ENDIF.
      DATA(t3011) = VALUE f( ).
      DATA(t3013) = CONV f( 1 ).
      t3011 = t3001 + t3013.
      t3001 = t3011.
      DATA t3015 TYPE REF TO zcl_lnt_tuple_23a05aeb.
      CLEAR t3015.
      DATA(t3016) = VALUE string( ).
      DATA(t3017) = VALUE string( ).
      t3017 = t3006->f0.
      t3016 = t3017.
      DATA t3019 TYPE REF TO zcl_lnt_tuple_23a05aeb.
      CLEAR t3019.
      DATA t3021 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t3021.
      DATA t3022 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t3022.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t3022 = zcl_lnt_version_module=>release_list.
      DATA(t3023) = VALUE i( ).
      IF t3001 > range_i32_upper.
        t3023 = range_i32_upper.
      ELSEIF t3001 < range_i32_lower.
        t3023 = range_i32_lower.
      ELSE.
        t3023 = trunc( t3001 ).
      ENDIF.
      t3023 = t3023 + 1.
      DATA t3025 TYPE REF TO object.
      CLEAR t3025.
      t3022->load( ).
      CLEAR t3025.
      READ TABLE t3022->items INDEX t3023 INTO t3025.
      DATA t3026 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t3026.
      CLEAR t3021.
      IF t3025 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t3026 ?= t3025.
        CLEAR t3021.
        IF t3026 IS BOUND.
          IF t3026->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                t3021 ?= t3026->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF t3021 IS NOT BOUND.
            IF t3026->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t3027 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t3027.
              IF t3026->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t3027 ?= t3026->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t3027->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA(t3028) = VALUE string( ).
            DATA t3029 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t3029.
            DATA t3030 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t3030.
            DATA t3031 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t3031.
            DATA t3032 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t3032.
            DATA t3033 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t3033.
            DATA(t3034) = VALUE f( ).
            t3021 = NEW zcl_lnt_abap_release( view_source = t3026 i_name = t3028 i_abap = t3029 i_kernel = t3030 i_op = t3031 i_cloud_47cd = t3032 i_ce = t3033 i_ordinal = t3034 ).
          ENDIF.
        ENDIF.
      ELSE.
        t3021 ?= t3025.
      ENDIF.
      t3019 = NEW zcl_lnt_tuple_23a05aeb( i_f0 = t3016 i_f1 = t3021 ).
      t3015 = t3019.
      t3003->load( ).
      APPEND t3015 TO t3003->items.
      t3003->save( ).
    ENDDO.
    t3000 = t3003.
    DATA t3036 TYPE REF TO zcl_lnt_tuple_23a05aeb.
    DATA t3037 TYPE REF TO object.
    DATA(t3038) = VALUE i( ).
    DO.
      t3000->load( ).
      IF t3038 >= lines( t3000->items ).
        EXIT.
      ENDIF.
      CLEAR t3037.
      READ TABLE t3000->items INDEX t3038 + 1 INTO t3037.
      t3038 = t3038 + 1.
      DATA t3039 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t3039.
      CLEAR t3036.
      IF t3037 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t3039 ?= t3037.
        DATA t3040 TYPE REF TO object.
        CLEAR t3040.
        t3040 = t3039->as_ref( ).
        t3036 ?= t3040.
      ELSE.
        t3036 ?= t3037.
      ENDIF.
      DATA t3041 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t3041.
      DATA(t3043) = VALUE string( ).
      t3043 = t3036->f0.
      DATA t3045 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t3045.
      t3045 = t3036->f1.
      t3041 = t2998->set( p0 = t3043 p1 = t3045 ).
    ENDDO.
    zcl_lnt_version_module=>by_name = t2998.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    DATA t3049 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    t3049 = NEW zlnt_runtime_map__201f3699a39e( ).
    DATA t3051 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    DATA t3052 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3052 = zcl_lnt_version_module=>by_name.
    t3051 = t3052.
    DATA t3053 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t3053 = t3051->keys( ).
    DATA(t3055) = VALUE string( ).
    t3053->dense( ).
    DATA(t3056) = VALUE i( ).
    DO.
      t3053->load( ).
      IF t3056 >= lines( t3053->items ).
        EXIT.
      ENDIF.
      CLEAR t3055.
      READ TABLE t3053->items INDEX t3056 + 1 INTO t3055.
      IF t3053->has( t3056 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t3056 = t3056 + 1.
      DATA t3057 TYPE REF TO zlnt_runtime_map__201f3699a39e.
      CLEAR t3057.
      DATA t3060 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t3060.
      DATA t3061 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t3061.
      t3061 = t3051->get( p0 = t3055 ).
      t3060 = t3061.
      t3057 = t3049->set( p0 = t3055 p1 = t3060 ).
    ENDDO.
    DATA t3064 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    DATA(t3066) = |v750|.
    DATA t3067 TYPE REF TO zcl_lnt_abap_release.
    DATA t3068 TYPE REF TO zcl_lnt_abap_release.
    DATA t3069 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3069 = zcl_lnt_version_module=>by_name.
    DATA(t3070) = |v762|.
    t3068 = t3069->get( p0 = t3070 ).
    t3067 = t3068.
    t3064 = t3049->set( p0 = t3066 p1 = t3067 ).
    DATA t3071 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    DATA(t3073) = |v751|.
    DATA t3074 TYPE REF TO zcl_lnt_abap_release.
    DATA t3075 TYPE REF TO zcl_lnt_abap_release.
    DATA t3076 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3076 = zcl_lnt_version_module=>by_name.
    DATA(t3077) = |v765|.
    t3075 = t3076->get( p0 = t3077 ).
    t3074 = t3075.
    t3071 = t3049->set( p0 = t3073 p1 = t3074 ).
    DATA t3078 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    DATA(t3080) = |v752|.
    DATA t3081 TYPE REF TO zcl_lnt_abap_release.
    DATA t3082 TYPE REF TO zcl_lnt_abap_release.
    DATA t3083 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3083 = zcl_lnt_version_module=>by_name.
    DATA(t3084) = |v769|.
    t3082 = t3083->get( p0 = t3084 ).
    t3081 = t3082.
    t3078 = t3049->set( p0 = t3080 p1 = t3081 ).
    DATA t3085 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    DATA(t3087) = |v753|.
    DATA t3088 TYPE REF TO zcl_lnt_abap_release.
    DATA t3089 TYPE REF TO zcl_lnt_abap_release.
    DATA t3090 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3090 = zcl_lnt_version_module=>by_name.
    DATA(t3091) = |v773|.
    t3089 = t3090->get( p0 = t3091 ).
    t3088 = t3089.
    t3085 = t3049->set( p0 = t3087 p1 = t3088 ).
    DATA t3092 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    DATA(t3094) = |v754|.
    DATA t3095 TYPE REF TO zcl_lnt_abap_release.
    DATA t3096 TYPE REF TO zcl_lnt_abap_release.
    DATA t3097 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3097 = zcl_lnt_version_module=>by_name.
    DATA(t3098) = |v777|.
    t3096 = t3097->get( p0 = t3098 ).
    t3095 = t3096.
    t3092 = t3049->set( p0 = t3094 p1 = t3095 ).
    DATA t3099 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    DATA(t3101) = |v755|.
    DATA t3102 TYPE REF TO zcl_lnt_abap_release.
    DATA t3103 TYPE REF TO zcl_lnt_abap_release.
    DATA t3104 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3104 = zcl_lnt_version_module=>by_name.
    DATA(t3105) = |v781|.
    t3103 = t3104->get( p0 = t3105 ).
    t3102 = t3103.
    t3099 = t3049->set( p0 = t3101 p1 = t3102 ).
    DATA t3106 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    DATA(t3108) = |v756|.
    DATA t3109 TYPE REF TO zcl_lnt_abap_release.
    DATA t3110 TYPE REF TO zcl_lnt_abap_release.
    DATA t3111 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3111 = zcl_lnt_version_module=>by_name.
    DATA(t3112) = |v785|.
    t3110 = t3111->get( p0 = t3112 ).
    t3109 = t3110.
    t3106 = t3049->set( p0 = t3108 p1 = t3109 ).
    DATA t3113 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    DATA(t3115) = |v757|.
    DATA t3116 TYPE REF TO zcl_lnt_abap_release.
    DATA t3117 TYPE REF TO zcl_lnt_abap_release.
    DATA t3118 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3118 = zcl_lnt_version_module=>by_name.
    DATA(t3119) = |v789|.
    t3117 = t3118->get( p0 = t3119 ).
    t3116 = t3117.
    t3113 = t3049->set( p0 = t3115 p1 = t3116 ).
    DATA t3120 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    DATA(t3122) = |v758|.
    DATA t3123 TYPE REF TO zcl_lnt_abap_release.
    DATA t3124 TYPE REF TO zcl_lnt_abap_release.
    DATA t3125 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3125 = zcl_lnt_version_module=>by_name.
    DATA(t3126) = |v793|.
    t3124 = t3125->get( p0 = t3126 ).
    t3123 = t3124.
    t3120 = t3049->set( p0 = t3122 p1 = t3123 ).
    DATA t3127 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    DATA(t3129) = |v816|.
    DATA t3130 TYPE REF TO zcl_lnt_abap_release.
    DATA t3131 TYPE REF TO zcl_lnt_abap_release.
    DATA t3132 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3132 = zcl_lnt_version_module=>by_name.
    DATA(t3133) = |v916|.
    t3131 = t3132->get( p0 = t3133 ).
    t3130 = t3131.
    t3127 = t3049->set( p0 = t3129 p1 = t3130 ).
    zcl_lnt_version_module=>release_b8cd = t3049.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    DATA t3136 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    t3136 = NEW zlnt_runtime_map__201f3699a39e( ).
    DATA t3138 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    DATA(t3140) = |v700|.
    DATA t3141 TYPE REF TO zcl_lnt_abap_release.
    DATA t3142 TYPE REF TO zcl_lnt_abap_release.
    DATA t3143 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3143 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3144) = |v700|.
    t3142 = t3143->get( p0 = t3144 ).
    t3141 = t3142.
    t3138 = t3136->set( p0 = t3140 p1 = t3141 ).
    DATA t3145 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    DATA(t3147) = |v702|.
    DATA t3148 TYPE REF TO zcl_lnt_abap_release.
    DATA t3149 TYPE REF TO zcl_lnt_abap_release.
    DATA t3150 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3150 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3151) = |v702|.
    t3149 = t3150->get( p0 = t3151 ).
    t3148 = t3149.
    t3145 = t3136->set( p0 = t3147 p1 = t3148 ).
    DATA t3152 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    DATA(t3154) = |v740sp02|.
    DATA t3155 TYPE REF TO zcl_lnt_abap_release.
    DATA t3156 TYPE REF TO zcl_lnt_abap_release.
    DATA t3157 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3157 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3158) = |v740sp02|.
    t3156 = t3157->get( p0 = t3158 ).
    t3155 = t3156.
    t3152 = t3136->set( p0 = t3154 p1 = t3155 ).
    DATA t3159 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    DATA(t3161) = |v740sp05|.
    DATA t3162 TYPE REF TO zcl_lnt_abap_release.
    DATA t3163 TYPE REF TO zcl_lnt_abap_release.
    DATA t3164 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3164 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3165) = |v740sp05|.
    t3163 = t3164->get( p0 = t3165 ).
    t3162 = t3163.
    t3159 = t3136->set( p0 = t3161 p1 = t3162 ).
    DATA t3166 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    DATA(t3168) = |v740sp08|.
    DATA t3169 TYPE REF TO zcl_lnt_abap_release.
    DATA t3170 TYPE REF TO zcl_lnt_abap_release.
    DATA t3171 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3171 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3172) = |v740sp08|.
    t3170 = t3171->get( p0 = t3172 ).
    t3169 = t3170.
    t3166 = t3136->set( p0 = t3168 p1 = t3169 ).
    DATA t3173 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    DATA(t3175) = |v750|.
    DATA t3176 TYPE REF TO zcl_lnt_abap_release.
    DATA t3177 TYPE REF TO zcl_lnt_abap_release.
    DATA t3178 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3178 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3179) = |v750|.
    t3177 = t3178->get( p0 = t3179 ).
    t3176 = t3177.
    t3173 = t3136->set( p0 = t3175 p1 = t3176 ).
    DATA t3180 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    DATA(t3182) = |v751|.
    DATA t3183 TYPE REF TO zcl_lnt_abap_release.
    DATA t3184 TYPE REF TO zcl_lnt_abap_release.
    DATA t3185 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3185 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3186) = |v751|.
    t3184 = t3185->get( p0 = t3186 ).
    t3183 = t3184.
    t3180 = t3136->set( p0 = t3182 p1 = t3183 ).
    DATA t3187 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    DATA(t3189) = |v752|.
    DATA t3190 TYPE REF TO zcl_lnt_abap_release.
    DATA t3191 TYPE REF TO zcl_lnt_abap_release.
    DATA t3192 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3192 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3193) = |v752|.
    t3191 = t3192->get( p0 = t3193 ).
    t3190 = t3191.
    t3187 = t3136->set( p0 = t3189 p1 = t3190 ).
    DATA t3194 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    DATA(t3196) = |v753|.
    DATA t3197 TYPE REF TO zcl_lnt_abap_release.
    DATA t3198 TYPE REF TO zcl_lnt_abap_release.
    DATA t3199 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3199 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3200) = |v753|.
    t3198 = t3199->get( p0 = t3200 ).
    t3197 = t3198.
    t3194 = t3136->set( p0 = t3196 p1 = t3197 ).
    DATA t3201 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    DATA(t3203) = |v754|.
    DATA t3204 TYPE REF TO zcl_lnt_abap_release.
    DATA t3205 TYPE REF TO zcl_lnt_abap_release.
    DATA t3206 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3206 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3207) = |v754|.
    t3205 = t3206->get( p0 = t3207 ).
    t3204 = t3205.
    t3201 = t3136->set( p0 = t3203 p1 = t3204 ).
    DATA t3208 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    DATA(t3210) = |v755|.
    DATA t3211 TYPE REF TO zcl_lnt_abap_release.
    DATA t3212 TYPE REF TO zcl_lnt_abap_release.
    DATA t3213 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3213 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3214) = |v755|.
    t3212 = t3213->get( p0 = t3214 ).
    t3211 = t3212.
    t3208 = t3136->set( p0 = t3210 p1 = t3211 ).
    DATA t3215 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    DATA(t3217) = |v756|.
    DATA t3218 TYPE REF TO zcl_lnt_abap_release.
    DATA t3219 TYPE REF TO zcl_lnt_abap_release.
    DATA t3220 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3220 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3221) = |v756|.
    t3219 = t3220->get( p0 = t3221 ).
    t3218 = t3219.
    t3215 = t3136->set( p0 = t3217 p1 = t3218 ).
    DATA t3222 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    DATA(t3224) = |v757|.
    DATA t3225 TYPE REF TO zcl_lnt_abap_release.
    DATA t3226 TYPE REF TO zcl_lnt_abap_release.
    DATA t3227 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3227 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3228) = |v757|.
    t3226 = t3227->get( p0 = t3228 ).
    t3225 = t3226.
    t3222 = t3136->set( p0 = t3224 p1 = t3225 ).
    DATA t3229 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    DATA(t3231) = |v758|.
    DATA t3232 TYPE REF TO zcl_lnt_abap_release.
    DATA t3233 TYPE REF TO zcl_lnt_abap_release.
    DATA t3234 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3234 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3235) = |v758|.
    t3233 = t3234->get( p0 = t3235 ).
    t3232 = t3233.
    t3229 = t3136->set( p0 = t3231 p1 = t3232 ).
    DATA t3236 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    DATA(t3238) = |v816|.
    DATA t3239 TYPE REF TO zcl_lnt_abap_release.
    DATA t3240 TYPE REF TO zcl_lnt_abap_release.
    DATA t3241 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3241 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3242) = |v816|.
    t3240 = t3241->get( p0 = t3242 ).
    t3239 = t3240.
    t3236 = t3136->set( p0 = t3238 p1 = t3239 ).
    DATA t3243 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    DATA(t3245) = |Cloud|.
    DATA t3246 TYPE REF TO zcl_lnt_abap_release.
    DATA t3247 TYPE REF TO zcl_lnt_abap_release.
    DATA t3248 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3248 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3249) = |Newest|.
    t3247 = t3248->get( p0 = t3249 ).
    t3246 = t3247.
    t3243 = t3136->set( p0 = t3245 p1 = t3246 ).
    DATA t3250 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    DATA(t3252) = |open-abap|.
    DATA t3253 TYPE REF TO zcl_lnt_abap_release.
    DATA t3254 TYPE REF TO zcl_lnt_abap_release.
    DATA t3255 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3255 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3256) = |open-abap|.
    t3254 = t3255->get( p0 = t3256 ).
    t3253 = t3254.
    t3250 = t3136->set( p0 = t3252 p1 = t3253 ).
    zcl_lnt_version_module=>by_deprecated = t3136.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    DATA t3259 TYPE REF TO zcl_lnt_abap_release.
    DATA t3260 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3260 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3261) = |Newest|.
    t3259 = t3260->get( p0 = t3261 ).
    zcl_lnt_version_module=>default_release = t3259.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1935_249c57ab3d6d.
  ENDMETHOD.
ENDCLASS.
