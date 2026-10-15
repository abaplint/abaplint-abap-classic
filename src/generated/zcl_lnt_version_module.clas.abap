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
    DATA(t1) = i_running.
    DATA(t2) = i_required.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE f.
    DATA(t5) = t1.
    t4 = t5->zlnt_view_read_sr_60d588ccf004( ).
    DATA t6 TYPE f.
    DATA(t7) = t2.
    t6 = t7->zlnt_view_read_sr_60d588ccf004( ).
    t3 = xsdbool( t4 >= t6 ).
    result = t3.

  ENDMETHOD.

  METHOD version_to_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    DATA(t1) = i_v.
    DATA t2 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t4.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t4 = zcl_lnt_version_module=>by_deprecated.
    DATA(t5) = t1.
    t3 = t4->get( p0 = t5 ).
    t2 = t3.
    DATA(t6) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t7.
    DATA(t8) = t2.
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    t9 = t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = t7.
    IF t12 IS INITIAL.
      t11 = abap_true.
    ENDIF.
    t6 = t11.
    IF t6 = abap_true.
      DATA t13 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t13.
      DATA t14 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t14.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t15.
      DATA(t16) = abap_true.
      IF t16 = abap_true.
        DATA(t17) = VALUE string( ).
        DATA(t18) = |No ABAPRelease mapping for Version: |.
        DATA(t19) = t1.
        DATA(t20) = strlen( t18 ).
        t17 = |{ t18 }{ t19 }|.
        DATA(t21) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t21->has = abap_true.
        t21->value = t17.
        t15 = t21.
      ELSE.
        DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t22.
        t15 = t22.
      ENDIF.
      t14 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t15 ).
      t13 = NEW #( ).
      t13->payload = t14.
      CLEAR t13->source_value.
      IF t14 IS BOUND.
        DATA t23 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t23.
        DATA t24 TYPE REF TO object.
        CLEAR t24.
        CLEAR t23.
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
      ENDIF.
      RAISE EXCEPTION t13.
    ENDIF.
    DATA t25 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t25.
    DATA(t26) = t2.
    t25 = t26.
    result = t25.

  ENDMETHOD.

  METHOD get_previous_version.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    DATA(t1) = i_v.
    DATA t2 TYPE abap_bool.
    DATA(t3) = t1.
    DATA(t4) = |open-abap|.
    t2 = xsdbool( t3 = t4 ).
    IF t2 = abap_true.
      DATA(t5) = |v702|.
      result = t5.
      RETURN.
    ENDIF.
    DATA t6 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t9.
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
    DATA(t13) = t8.
    t12 = t13->keys( ).
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
      DATA(t16) = t10.
      DATA t17 TYPE string.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t19) = t8.
      DATA(t20) = t14.
      t18 = t19->get( p0 = t20 ).
      t17 = t18->value.
      t16->load( ).
      APPEND t17 TO t16->items.
      t16->save( ).
    ENDDO.
    DATA(t21) = t10.
    t7 = t21.
    t6 = t7.
    DATA t22 TYPE i.
    DATA t23 TYPE i.
    DATA(t24) = t6.
    DATA(t25) = t1.
    t23 = t24->indexof( p0 = t25 ).
    t22 = t23.
    DATA t26 TYPE abap_bool.
    DATA(t27) = t22.
    DATA(t28) = 0.
    t26 = xsdbool( t27 < t28 ).
    IF t26 = abap_true.
      DATA t29 TYPE REF TO zlnt_exception_st_fa837731be5a.
      DATA t30 TYPE string.
      DATA(t31) = |Unknown version: |.
      DATA(t32) = t1.
      DATA(t33) = strlen( t31 ).
      t30 = |{ t31 }{ t32 }|.
      t29 = NEW #( ).
      t29->payload = t30.
      CLEAR t29->source_value.
      CREATE OBJECT t29->source_value.
      t29->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t29->source_value->sval = t30.
      RAISE EXCEPTION t29.
    ENDIF.
    DATA t34 TYPE abap_bool.
    DATA(t35) = t22.
    DATA(t36) = 0.
    t34 = xsdbool( t35 = t36 ).
    IF t34 = abap_true.
      DATA t37 TYPE REF TO zlnt_exception_st_fa837731be5a.
      DATA t38 TYPE string.
      DATA(t39) = |Nothing lower: |.
      DATA(t40) = t1.
      DATA(t41) = strlen( t39 ).
      t38 = |{ t39 }{ t40 }|.
      t37 = NEW #( ).
      t37->payload = t38.
      CLEAR t37->source_value.
      CREATE OBJECT t37->source_value.
      t37->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t37->source_value->sval = t38.
      RAISE EXCEPTION t37.
    ENDIF.
    DATA(t42) = VALUE string( ).
    DATA(t43) = t6.
    DATA t44 TYPE i.
    DATA(t45) = t22.
    DATA(t46) = 1.
    t44 = t45 - t46.
    t44 = t44 + 1.
    IF t43->has( t44 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t43->load( ).
    CLEAR t42.
    READ TABLE t43->items INDEX t44 INTO t42.
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
    DATA(t1) = NEW zlnt_runtime_map__a1006b231250( ).
    zcl_lnt_version_module=>language_version_namespace = t1.
    DATA t2 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t3.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3 = zcl_lnt_version_module=>language_version_namespace.
    DATA(t4) = |Normal|.
    DATA(t5) = |Normal|.
    t2 = t3->set( p0 = t4 p1 = t5 ).
    DATA t6 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t7.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t7 = zcl_lnt_version_module=>language_version_namespace.
    DATA(t8) = |KeyUser|.
    DATA(t9) = |KeyUser|.
    t6 = t7->set( p0 = t8 p1 = t9 ).
    DATA t10 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t11.
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
    DATA(t14) = NEW zlnt_runtime_map__a1006b231250( ).
    zcl_lnt_version_module=>version_namespace = t14.
    DATA t15 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t16.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t16 = zcl_lnt_version_module=>version_namespace.
    DATA(t17) = |OpenABAP|.
    DATA(t18) = |open-abap|.
    t15 = t16->set( p0 = t17 p1 = t18 ).
    DATA t19 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t20.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t20 = zcl_lnt_version_module=>version_namespace.
    DATA(t21) = |v700|.
    DATA(t22) = |v700|.
    t19 = t20->set( p0 = t21 p1 = t22 ).
    DATA t23 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t24.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t24 = zcl_lnt_version_module=>version_namespace.
    DATA(t25) = |v702|.
    DATA(t26) = |v702|.
    t23 = t24->set( p0 = t25 p1 = t26 ).
    DATA t27 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t28.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t28 = zcl_lnt_version_module=>version_namespace.
    DATA(t29) = |v740sp02|.
    DATA(t30) = |v740sp02|.
    t27 = t28->set( p0 = t29 p1 = t30 ).
    DATA t31 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t32.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t32 = zcl_lnt_version_module=>version_namespace.
    DATA(t33) = |v740sp05|.
    DATA(t34) = |v740sp05|.
    t31 = t32->set( p0 = t33 p1 = t34 ).
    DATA t35 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t36.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t36 = zcl_lnt_version_module=>version_namespace.
    DATA(t37) = |v740sp08|.
    DATA(t38) = |v740sp08|.
    t35 = t36->set( p0 = t37 p1 = t38 ).
    DATA t39 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t40.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t40 = zcl_lnt_version_module=>version_namespace.
    DATA(t41) = |v750|.
    DATA(t42) = |v750|.
    t39 = t40->set( p0 = t41 p1 = t42 ).
    DATA t43 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t44.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t44 = zcl_lnt_version_module=>version_namespace.
    DATA(t45) = |v751|.
    DATA(t46) = |v751|.
    t43 = t44->set( p0 = t45 p1 = t46 ).
    DATA t47 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t48.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t48 = zcl_lnt_version_module=>version_namespace.
    DATA(t49) = |v752|.
    DATA(t50) = |v752|.
    t47 = t48->set( p0 = t49 p1 = t50 ).
    DATA t51 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t51.
    DATA t52 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t52.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t52 = zcl_lnt_version_module=>version_namespace.
    DATA(t53) = |v753|.
    DATA(t54) = |v753|.
    t51 = t52->set( p0 = t53 p1 = t54 ).
    DATA t55 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t55.
    DATA t56 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t56.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t56 = zcl_lnt_version_module=>version_namespace.
    DATA(t57) = |v754|.
    DATA(t58) = |v754|.
    t55 = t56->set( p0 = t57 p1 = t58 ).
    DATA t59 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t60.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t60 = zcl_lnt_version_module=>version_namespace.
    DATA(t61) = |v755|.
    DATA(t62) = |v755|.
    t59 = t60->set( p0 = t61 p1 = t62 ).
    DATA t63 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t64.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t64 = zcl_lnt_version_module=>version_namespace.
    DATA(t65) = |v756|.
    DATA(t66) = |v756|.
    t63 = t64->set( p0 = t65 p1 = t66 ).
    DATA t67 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t67.
    DATA t68 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t68.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t68 = zcl_lnt_version_module=>version_namespace.
    DATA(t69) = |v757|.
    DATA(t70) = |v757|.
    t67 = t68->set( p0 = t69 p1 = t70 ).
    DATA t71 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t72.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t72 = zcl_lnt_version_module=>version_namespace.
    DATA(t73) = |v758|.
    DATA(t74) = |v758|.
    t71 = t72->set( p0 = t73 p1 = t74 ).
    DATA t75 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t76.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t76 = zcl_lnt_version_module=>version_namespace.
    DATA(t77) = |v816|.
    DATA(t78) = |v816|.
    t75 = t76->set( p0 = t77 p1 = t78 ).
    DATA t79 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t79.
    DATA t80 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t80.
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
    DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t83.
    DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t84.
    DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t85.
    CREATE OBJECT t85.
    t84 = t85.
    DATA(t86) = t84.
    DATA t87 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t87.
    DATA(t88) = |v700|.
    DATA t89 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t89.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA(t92) = abap_true.
    IF t92 = abap_true.
      DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t93.
      DATA(t94) = |700|.
      CLEAR t93.
      CREATE OBJECT t93.
      t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t93->sval = t94.
      t91 = t93.
    ELSE.
      DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t95.
      t91 = t95.
    ENDIF.
    t90 = t91.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t96.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    DATA(t98) = abap_true.
    IF t98 = abap_true.
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t99.
      DATA(t100) = 700.
      CLEAR t99.
      CREATE OBJECT t99.
      t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t99->nval = t100.
      t97 = t99.
    ELSE.
      DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t101.
      t97 = t101.
    ENDIF.
    t96 = t97.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA(t104) = abap_true.
    IF t104 = abap_true.
      DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t105.
      DATA(t106) = 700.
      CLEAR t105.
      CREATE OBJECT t105.
      t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t105->nval = t106.
      t103 = t105.
    ELSE.
      DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t107.
      t103 = t107.
    ENDIF.
    t102 = t103.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t108.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA(t110) = abap_true.
    IF t110 = abap_true.
      DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t111.
      DATA(t112) = 0.
      CREATE OBJECT t111.
      t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t109 = t111.
    ELSE.
      DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t113.
      t109 = t113.
    ENDIF.
    t108 = t109.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA(t116) = abap_true.
    IF t116 = abap_true.
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t117.
      DATA(t118) = 0.
      CREATE OBJECT t117.
      t117->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t115 = t117.
    ELSE.
      DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t119.
      t115 = t119.
    ENDIF.
    t114 = t115.
    t89 = NEW zcl_lnt_shape_27cfcabc( i_abap = t90 i_kernel = t96 i_op = t102 i_cloud_47cd = t108 i_ce = t114 ).
    CREATE OBJECT t89->zlnt_view_ownkeys_b0e8086400eb.
    t89->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t120.
    IF t89->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t120 ).
    ENDIF.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t121.
    IF t89->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t121 ).
    ENDIF.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t122.
    IF t89->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t122 ).
    ENDIF.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t123.
    IF t89->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t123 ).
    ENDIF.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t124.
    IF t89->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t124 ).
    ENDIF.
    CREATE OBJECT t89->zlnt_json_ownkeys_70e5fd461788.
    t89->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t125) = |abap|.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t126.
    IF t89->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = t125 p1 = t126 ).
    ENDIF.
    DATA(t127) = |kernel|.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    IF t89->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = t127 p1 = t128 ).
    ENDIF.
    DATA(t129) = |op|.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t130.
    IF t89->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = t129 p1 = t130 ).
    ENDIF.
    DATA(t131) = |cloud|.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    IF t89->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = t131 p1 = t132 ).
    ENDIF.
    DATA(t133) = |ce|.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t134.
    IF t89->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = t133 p1 = t134 ).
    ENDIF.
    t87 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t88 i_f1 = t89 ).
    t86->load( ).
    APPEND t87 TO t86->items.
    t86->save( ).
    DATA(t135) = t84.
    DATA t136 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t136.
    DATA(t137) = |v701|.
    DATA t138 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t138.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t139.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t140.
    DATA(t141) = abap_true.
    IF t141 = abap_true.
      DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t142.
      DATA(t143) = |701|.
      CLEAR t142.
      CREATE OBJECT t142.
      t142->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t142->sval = t143.
      t140 = t142.
    ELSE.
      DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t144.
      t140 = t144.
    ENDIF.
    t139 = t140.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t145.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA(t147) = abap_true.
    IF t147 = abap_true.
      DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t148.
      DATA(t149) = 701.
      CLEAR t148.
      CREATE OBJECT t148.
      t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t148->nval = t149.
      t146 = t148.
    ELSE.
      DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t150.
      t146 = t150.
    ENDIF.
    t145 = t146.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t151.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t152.
    DATA(t153) = abap_true.
    IF t153 = abap_true.
      DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t154.
      DATA(t155) = 701.
      CLEAR t154.
      CREATE OBJECT t154.
      t154->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t154->nval = t155.
      t152 = t154.
    ELSE.
      DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t156.
      t152 = t156.
    ENDIF.
    t151 = t152.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t157.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t158.
    DATA(t159) = abap_true.
    IF t159 = abap_true.
      DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t160.
      DATA(t161) = 0.
      CREATE OBJECT t160.
      t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t158 = t160.
    ELSE.
      DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t162.
      t158 = t162.
    ENDIF.
    t157 = t158.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t163.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t164.
    DATA(t165) = abap_true.
    IF t165 = abap_true.
      DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t166.
      DATA(t167) = 0.
      CREATE OBJECT t166.
      t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t164 = t166.
    ELSE.
      DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t168.
      t164 = t168.
    ENDIF.
    t163 = t164.
    t138 = NEW zcl_lnt_shape_27cfcabc( i_abap = t139 i_kernel = t145 i_op = t151 i_cloud_47cd = t157 i_ce = t163 ).
    CREATE OBJECT t138->zlnt_view_ownkeys_b0e8086400eb.
    t138->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t169.
    IF t138->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t138->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t169 ).
    ENDIF.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t170.
    IF t138->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t138->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t170 ).
    ENDIF.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t171.
    IF t138->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t138->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t171 ).
    ENDIF.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t172.
    IF t138->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t138->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t172 ).
    ENDIF.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t173.
    IF t138->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t138->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t173 ).
    ENDIF.
    CREATE OBJECT t138->zlnt_json_ownkeys_70e5fd461788.
    t138->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t174) = |abap|.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t175.
    IF t138->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t138->zlnt_json_ownkeys_70e5fd461788->put( p0 = t174 p1 = t175 ).
    ENDIF.
    DATA(t176) = |kernel|.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t177.
    IF t138->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t138->zlnt_json_ownkeys_70e5fd461788->put( p0 = t176 p1 = t177 ).
    ENDIF.
    DATA(t178) = |op|.
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t179.
    IF t138->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t138->zlnt_json_ownkeys_70e5fd461788->put( p0 = t178 p1 = t179 ).
    ENDIF.
    DATA(t180) = |cloud|.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t181.
    IF t138->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t138->zlnt_json_ownkeys_70e5fd461788->put( p0 = t180 p1 = t181 ).
    ENDIF.
    DATA(t182) = |ce|.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t183.
    IF t138->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t138->zlnt_json_ownkeys_70e5fd461788->put( p0 = t182 p1 = t183 ).
    ENDIF.
    t136 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t137 i_f1 = t138 ).
    t135->load( ).
    APPEND t136 TO t135->items.
    t135->save( ).
    DATA(t184) = t84.
    DATA t185 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t185.
    DATA(t186) = |v702|.
    DATA t187 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t187.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t188.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t189.
    DATA(t190) = abap_true.
    IF t190 = abap_true.
      DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t191.
      DATA(t192) = |702|.
      CLEAR t191.
      CREATE OBJECT t191.
      t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t191->sval = t192.
      t189 = t191.
    ELSE.
      DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t193.
      t189 = t193.
    ENDIF.
    t188 = t189.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t194.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t195.
    DATA(t196) = abap_true.
    IF t196 = abap_true.
      DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t197.
      DATA(t198) = 702.
      CLEAR t197.
      CREATE OBJECT t197.
      t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t197->nval = t198.
      t195 = t197.
    ELSE.
      DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t199.
      t195 = t199.
    ENDIF.
    t194 = t195.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t200.
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t201.
    DATA(t202) = abap_true.
    IF t202 = abap_true.
      DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t203.
      DATA(t204) = 702.
      CLEAR t203.
      CREATE OBJECT t203.
      t203->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t203->nval = t204.
      t201 = t203.
    ELSE.
      DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t205.
      t201 = t205.
    ENDIF.
    t200 = t201.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t206.
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t207.
    DATA(t208) = abap_true.
    IF t208 = abap_true.
      DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t209.
      DATA(t210) = 0.
      CREATE OBJECT t209.
      t209->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t207 = t209.
    ELSE.
      DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t211.
      t207 = t211.
    ENDIF.
    t206 = t207.
    DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t212.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t213.
    DATA(t214) = abap_true.
    IF t214 = abap_true.
      DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t215.
      DATA(t216) = 0.
      CREATE OBJECT t215.
      t215->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t213 = t215.
    ELSE.
      DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t217.
      t213 = t217.
    ENDIF.
    t212 = t213.
    t187 = NEW zcl_lnt_shape_27cfcabc( i_abap = t188 i_kernel = t194 i_op = t200 i_cloud_47cd = t206 i_ce = t212 ).
    CREATE OBJECT t187->zlnt_view_ownkeys_b0e8086400eb.
    t187->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t218.
    IF t187->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t187->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t218 ).
    ENDIF.
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t219.
    IF t187->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t187->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t219 ).
    ENDIF.
    DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t220.
    IF t187->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t187->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t220 ).
    ENDIF.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t221.
    IF t187->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t187->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t221 ).
    ENDIF.
    DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t222.
    IF t187->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t187->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t222 ).
    ENDIF.
    CREATE OBJECT t187->zlnt_json_ownkeys_70e5fd461788.
    t187->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t223) = |abap|.
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t224.
    IF t187->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t187->zlnt_json_ownkeys_70e5fd461788->put( p0 = t223 p1 = t224 ).
    ENDIF.
    DATA(t225) = |kernel|.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t226.
    IF t187->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t187->zlnt_json_ownkeys_70e5fd461788->put( p0 = t225 p1 = t226 ).
    ENDIF.
    DATA(t227) = |op|.
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t228.
    IF t187->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t187->zlnt_json_ownkeys_70e5fd461788->put( p0 = t227 p1 = t228 ).
    ENDIF.
    DATA(t229) = |cloud|.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t230.
    IF t187->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t187->zlnt_json_ownkeys_70e5fd461788->put( p0 = t229 p1 = t230 ).
    ENDIF.
    DATA(t231) = |ce|.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t232.
    IF t187->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t187->zlnt_json_ownkeys_70e5fd461788->put( p0 = t231 p1 = t232 ).
    ENDIF.
    t185 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t186 i_f1 = t187 ).
    t184->load( ).
    APPEND t185 TO t184->items.
    t184->save( ).
    DATA(t233) = t84.
    DATA t234 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t234.
    DATA(t235) = |open-abap|.
    DATA t236 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t236.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t237.
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t238.
    DATA(t239) = abap_true.
    IF t239 = abap_true.
      DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t240.
      DATA(t241) = |open-abap|.
      CLEAR t240.
      CREATE OBJECT t240.
      t240->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t240->sval = t241.
      t238 = t240.
    ELSE.
      DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t242.
      t238 = t242.
    ENDIF.
    t237 = t238.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t243.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t244.
    DATA(t245) = abap_true.
    IF t245 = abap_true.
      DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t246.
      DATA(t247) = 0.
      CREATE OBJECT t246.
      t246->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t244 = t246.
    ELSE.
      DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t248.
      t244 = t248.
    ENDIF.
    t243 = t244.
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t249.
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t250.
    DATA(t251) = abap_true.
    IF t251 = abap_true.
      DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t252.
      DATA(t253) = 0.
      CREATE OBJECT t252.
      t252->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t250 = t252.
    ELSE.
      DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t254.
      t250 = t254.
    ENDIF.
    t249 = t250.
    DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t255.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t256.
    DATA(t257) = abap_true.
    IF t257 = abap_true.
      DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t258.
      DATA(t259) = 0.
      CREATE OBJECT t258.
      t258->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t256 = t258.
    ELSE.
      DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t260.
      t256 = t260.
    ENDIF.
    t255 = t256.
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t261.
    DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t262.
    DATA(t263) = abap_true.
    IF t263 = abap_true.
      DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t264.
      DATA(t265) = 0.
      CREATE OBJECT t264.
      t264->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t262 = t264.
    ELSE.
      DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t266.
      t262 = t266.
    ENDIF.
    t261 = t262.
    t236 = NEW zcl_lnt_shape_27cfcabc( i_abap = t237 i_kernel = t243 i_op = t249 i_cloud_47cd = t255 i_ce = t261 ).
    CREATE OBJECT t236->zlnt_view_ownkeys_b0e8086400eb.
    t236->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t267.
    IF t236->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t236->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t267 ).
    ENDIF.
    DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t268.
    IF t236->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t236->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t268 ).
    ENDIF.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t269.
    IF t236->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t236->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t269 ).
    ENDIF.
    DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t270.
    IF t236->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t236->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t270 ).
    ENDIF.
    DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t271.
    IF t236->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t236->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t271 ).
    ENDIF.
    CREATE OBJECT t236->zlnt_json_ownkeys_70e5fd461788.
    t236->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t272) = |abap|.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t273.
    IF t236->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t236->zlnt_json_ownkeys_70e5fd461788->put( p0 = t272 p1 = t273 ).
    ENDIF.
    DATA(t274) = |kernel|.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t275.
    IF t236->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t236->zlnt_json_ownkeys_70e5fd461788->put( p0 = t274 p1 = t275 ).
    ENDIF.
    DATA(t276) = |op|.
    DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t277.
    IF t236->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t236->zlnt_json_ownkeys_70e5fd461788->put( p0 = t276 p1 = t277 ).
    ENDIF.
    DATA(t278) = |cloud|.
    DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t279.
    IF t236->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t236->zlnt_json_ownkeys_70e5fd461788->put( p0 = t278 p1 = t279 ).
    ENDIF.
    DATA(t280) = |ce|.
    DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t281.
    IF t236->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t236->zlnt_json_ownkeys_70e5fd461788->put( p0 = t280 p1 = t281 ).
    ENDIF.
    t234 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t235 i_f1 = t236 ).
    t233->load( ).
    APPEND t234 TO t233->items.
    t233->save( ).
    DATA(t282) = t84.
    DATA t283 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t283.
    DATA(t284) = |v710|.
    DATA t285 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t285.
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t286.
    DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t287.
    DATA(t288) = abap_true.
    IF t288 = abap_true.
      DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t289.
      DATA(t290) = |710|.
      CLEAR t289.
      CREATE OBJECT t289.
      t289->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t289->sval = t290.
      t287 = t289.
    ELSE.
      DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t291.
      t287 = t291.
    ENDIF.
    t286 = t287.
    DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t292.
    DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t293.
    DATA(t294) = abap_true.
    IF t294 = abap_true.
      DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t295.
      DATA(t296) = 710.
      CLEAR t295.
      CREATE OBJECT t295.
      t295->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t295->nval = t296.
      t293 = t295.
    ELSE.
      DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t297.
      t293 = t297.
    ENDIF.
    t292 = t293.
    DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t298.
    DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t299.
    DATA(t300) = abap_true.
    IF t300 = abap_true.
      DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t301.
      DATA(t302) = 710.
      CLEAR t301.
      CREATE OBJECT t301.
      t301->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t301->nval = t302.
      t299 = t301.
    ELSE.
      DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t303.
      t299 = t303.
    ENDIF.
    t298 = t299.
    DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t304.
    DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t305.
    DATA(t306) = abap_true.
    IF t306 = abap_true.
      DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t307.
      DATA(t308) = 0.
      CREATE OBJECT t307.
      t307->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t305 = t307.
    ELSE.
      DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t309.
      t305 = t309.
    ENDIF.
    t304 = t305.
    DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t310.
    DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t311.
    DATA(t312) = abap_true.
    IF t312 = abap_true.
      DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t313.
      DATA(t314) = 0.
      CREATE OBJECT t313.
      t313->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t311 = t313.
    ELSE.
      DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t315.
      t311 = t315.
    ENDIF.
    t310 = t311.
    t285 = NEW zcl_lnt_shape_27cfcabc( i_abap = t286 i_kernel = t292 i_op = t298 i_cloud_47cd = t304 i_ce = t310 ).
    CREATE OBJECT t285->zlnt_view_ownkeys_b0e8086400eb.
    t285->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t316.
    IF t285->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t285->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t316 ).
    ENDIF.
    DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t317.
    IF t285->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t285->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t317 ).
    ENDIF.
    DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t318.
    IF t285->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t285->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t318 ).
    ENDIF.
    DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t319.
    IF t285->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t285->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t319 ).
    ENDIF.
    DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t320.
    IF t285->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t285->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t320 ).
    ENDIF.
    CREATE OBJECT t285->zlnt_json_ownkeys_70e5fd461788.
    t285->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t321) = |abap|.
    DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t322.
    IF t285->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t285->zlnt_json_ownkeys_70e5fd461788->put( p0 = t321 p1 = t322 ).
    ENDIF.
    DATA(t323) = |kernel|.
    DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t324.
    IF t285->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t285->zlnt_json_ownkeys_70e5fd461788->put( p0 = t323 p1 = t324 ).
    ENDIF.
    DATA(t325) = |op|.
    DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t326.
    IF t285->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t285->zlnt_json_ownkeys_70e5fd461788->put( p0 = t325 p1 = t326 ).
    ENDIF.
    DATA(t327) = |cloud|.
    DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t328.
    IF t285->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t285->zlnt_json_ownkeys_70e5fd461788->put( p0 = t327 p1 = t328 ).
    ENDIF.
    DATA(t329) = |ce|.
    DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t330.
    IF t285->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t285->zlnt_json_ownkeys_70e5fd461788->put( p0 = t329 p1 = t330 ).
    ENDIF.
    t283 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t284 i_f1 = t285 ).
    t282->load( ).
    APPEND t283 TO t282->items.
    t282->save( ).
    DATA(t331) = t84.
    DATA t332 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t332.
    DATA(t333) = |v711|.
    DATA t334 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t334.
    DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t335.
    DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t336.
    DATA(t337) = abap_true.
    IF t337 = abap_true.
      DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t338.
      DATA(t339) = |711|.
      CLEAR t338.
      CREATE OBJECT t338.
      t338->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t338->sval = t339.
      t336 = t338.
    ELSE.
      DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t340.
      t336 = t340.
    ENDIF.
    t335 = t336.
    DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t341.
    DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t342.
    DATA(t343) = abap_true.
    IF t343 = abap_true.
      DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t344.
      DATA(t345) = 711.
      CLEAR t344.
      CREATE OBJECT t344.
      t344->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t344->nval = t345.
      t342 = t344.
    ELSE.
      DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t346.
      t342 = t346.
    ENDIF.
    t341 = t342.
    DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t347.
    DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t348.
    DATA(t349) = abap_true.
    IF t349 = abap_true.
      DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t350.
      DATA(t351) = 711.
      CLEAR t350.
      CREATE OBJECT t350.
      t350->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t350->nval = t351.
      t348 = t350.
    ELSE.
      DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t352.
      t348 = t352.
    ENDIF.
    t347 = t348.
    DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t353.
    DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t354.
    DATA(t355) = abap_true.
    IF t355 = abap_true.
      DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t356.
      DATA(t357) = 0.
      CREATE OBJECT t356.
      t356->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t354 = t356.
    ELSE.
      DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t358.
      t354 = t358.
    ENDIF.
    t353 = t354.
    DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t359.
    DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t360.
    DATA(t361) = abap_true.
    IF t361 = abap_true.
      DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t362.
      DATA(t363) = 0.
      CREATE OBJECT t362.
      t362->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t360 = t362.
    ELSE.
      DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t364.
      t360 = t364.
    ENDIF.
    t359 = t360.
    t334 = NEW zcl_lnt_shape_27cfcabc( i_abap = t335 i_kernel = t341 i_op = t347 i_cloud_47cd = t353 i_ce = t359 ).
    CREATE OBJECT t334->zlnt_view_ownkeys_b0e8086400eb.
    t334->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t365.
    IF t334->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t334->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t365 ).
    ENDIF.
    DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t366.
    IF t334->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t334->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t366 ).
    ENDIF.
    DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t367.
    IF t334->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t334->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t367 ).
    ENDIF.
    DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t368.
    IF t334->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t334->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t368 ).
    ENDIF.
    DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t369.
    IF t334->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t334->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t369 ).
    ENDIF.
    CREATE OBJECT t334->zlnt_json_ownkeys_70e5fd461788.
    t334->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t370) = |abap|.
    DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t371.
    IF t334->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t334->zlnt_json_ownkeys_70e5fd461788->put( p0 = t370 p1 = t371 ).
    ENDIF.
    DATA(t372) = |kernel|.
    DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t373.
    IF t334->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t334->zlnt_json_ownkeys_70e5fd461788->put( p0 = t372 p1 = t373 ).
    ENDIF.
    DATA(t374) = |op|.
    DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t375.
    IF t334->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t334->zlnt_json_ownkeys_70e5fd461788->put( p0 = t374 p1 = t375 ).
    ENDIF.
    DATA(t376) = |cloud|.
    DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t377.
    IF t334->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t334->zlnt_json_ownkeys_70e5fd461788->put( p0 = t376 p1 = t377 ).
    ENDIF.
    DATA(t378) = |ce|.
    DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t379.
    IF t334->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t334->zlnt_json_ownkeys_70e5fd461788->put( p0 = t378 p1 = t379 ).
    ENDIF.
    t332 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t333 i_f1 = t334 ).
    t331->load( ).
    APPEND t332 TO t331->items.
    t331->save( ).
    DATA(t380) = t84.
    DATA t381 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t381.
    DATA(t382) = |v720|.
    DATA t383 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t383.
    DATA t384 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t384.
    DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t385.
    DATA(t386) = abap_true.
    IF t386 = abap_true.
      DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t387.
      DATA(t388) = |720|.
      CLEAR t387.
      CREATE OBJECT t387.
      t387->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t387->sval = t388.
      t385 = t387.
    ELSE.
      DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t389.
      t385 = t389.
    ENDIF.
    t384 = t385.
    DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t390.
    DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t391.
    DATA(t392) = abap_true.
    IF t392 = abap_true.
      DATA t393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t393.
      DATA(t394) = 720.
      CLEAR t393.
      CREATE OBJECT t393.
      t393->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t393->nval = t394.
      t391 = t393.
    ELSE.
      DATA t395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t395.
      t391 = t395.
    ENDIF.
    t390 = t391.
    DATA t396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t396.
    DATA t397 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t397.
    DATA(t398) = abap_true.
    IF t398 = abap_true.
      DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t399.
      DATA(t400) = 720.
      CLEAR t399.
      CREATE OBJECT t399.
      t399->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t399->nval = t400.
      t397 = t399.
    ELSE.
      DATA t401 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t401.
      t397 = t401.
    ENDIF.
    t396 = t397.
    DATA t402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t402.
    DATA t403 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t403.
    DATA(t404) = abap_true.
    IF t404 = abap_true.
      DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t405.
      DATA(t406) = 0.
      CREATE OBJECT t405.
      t405->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t403 = t405.
    ELSE.
      DATA t407 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t407.
      t403 = t407.
    ENDIF.
    t402 = t403.
    DATA t408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t408.
    DATA t409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t409.
    DATA(t410) = abap_true.
    IF t410 = abap_true.
      DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t411.
      DATA(t412) = 0.
      CREATE OBJECT t411.
      t411->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t409 = t411.
    ELSE.
      DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t413.
      t409 = t413.
    ENDIF.
    t408 = t409.
    t383 = NEW zcl_lnt_shape_27cfcabc( i_abap = t384 i_kernel = t390 i_op = t396 i_cloud_47cd = t402 i_ce = t408 ).
    CREATE OBJECT t383->zlnt_view_ownkeys_b0e8086400eb.
    t383->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t414.
    IF t383->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t383->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t414 ).
    ENDIF.
    DATA t415 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t415.
    IF t383->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t383->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t415 ).
    ENDIF.
    DATA t416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t416.
    IF t383->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t383->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t416 ).
    ENDIF.
    DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t417.
    IF t383->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t383->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t417 ).
    ENDIF.
    DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t418.
    IF t383->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t383->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t418 ).
    ENDIF.
    CREATE OBJECT t383->zlnt_json_ownkeys_70e5fd461788.
    t383->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t419) = |abap|.
    DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t420.
    IF t383->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t383->zlnt_json_ownkeys_70e5fd461788->put( p0 = t419 p1 = t420 ).
    ENDIF.
    DATA(t421) = |kernel|.
    DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t422.
    IF t383->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t383->zlnt_json_ownkeys_70e5fd461788->put( p0 = t421 p1 = t422 ).
    ENDIF.
    DATA(t423) = |op|.
    DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t424.
    IF t383->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t383->zlnt_json_ownkeys_70e5fd461788->put( p0 = t423 p1 = t424 ).
    ENDIF.
    DATA(t425) = |cloud|.
    DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t426.
    IF t383->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t383->zlnt_json_ownkeys_70e5fd461788->put( p0 = t425 p1 = t426 ).
    ENDIF.
    DATA(t427) = |ce|.
    DATA t428 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t428.
    IF t383->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t383->zlnt_json_ownkeys_70e5fd461788->put( p0 = t427 p1 = t428 ).
    ENDIF.
    t381 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t382 i_f1 = t383 ).
    t380->load( ).
    APPEND t381 TO t380->items.
    t380->save( ).
    DATA(t429) = t84.
    DATA t430 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t430.
    DATA(t431) = |v722|.
    DATA t432 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t432.
    DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t433.
    DATA t434 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t434.
    DATA(t435) = abap_true.
    IF t435 = abap_true.
      DATA t436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t436.
      DATA(t437) = |722|.
      CLEAR t436.
      CREATE OBJECT t436.
      t436->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t436->sval = t437.
      t434 = t436.
    ELSE.
      DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t438.
      t434 = t438.
    ENDIF.
    t433 = t434.
    DATA t439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t439.
    DATA t440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t440.
    DATA(t441) = abap_true.
    IF t441 = abap_true.
      DATA t442 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t442.
      DATA(t443) = 722.
      CLEAR t442.
      CREATE OBJECT t442.
      t442->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t442->nval = t443.
      t440 = t442.
    ELSE.
      DATA t444 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t444.
      t440 = t444.
    ENDIF.
    t439 = t440.
    DATA t445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t445.
    DATA t446 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t446.
    DATA(t447) = abap_true.
    IF t447 = abap_true.
      DATA t448 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t448.
      DATA(t449) = 722.
      CLEAR t448.
      CREATE OBJECT t448.
      t448->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t448->nval = t449.
      t446 = t448.
    ELSE.
      DATA t450 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t450.
      t446 = t450.
    ENDIF.
    t445 = t446.
    DATA t451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t451.
    DATA t452 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t452.
    DATA(t453) = abap_true.
    IF t453 = abap_true.
      DATA t454 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t454.
      DATA(t455) = 0.
      CREATE OBJECT t454.
      t454->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t452 = t454.
    ELSE.
      DATA t456 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t456.
      t452 = t456.
    ENDIF.
    t451 = t452.
    DATA t457 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t457.
    DATA t458 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t458.
    DATA(t459) = abap_true.
    IF t459 = abap_true.
      DATA t460 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t460.
      DATA(t461) = 0.
      CREATE OBJECT t460.
      t460->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t458 = t460.
    ELSE.
      DATA t462 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t462.
      t458 = t462.
    ENDIF.
    t457 = t458.
    t432 = NEW zcl_lnt_shape_27cfcabc( i_abap = t433 i_kernel = t439 i_op = t445 i_cloud_47cd = t451 i_ce = t457 ).
    CREATE OBJECT t432->zlnt_view_ownkeys_b0e8086400eb.
    t432->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t463 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t463.
    IF t432->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t432->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t463 ).
    ENDIF.
    DATA t464 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t464.
    IF t432->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t432->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t464 ).
    ENDIF.
    DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t465.
    IF t432->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t432->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t465 ).
    ENDIF.
    DATA t466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t466.
    IF t432->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t432->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t466 ).
    ENDIF.
    DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t467.
    IF t432->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t432->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t467 ).
    ENDIF.
    CREATE OBJECT t432->zlnt_json_ownkeys_70e5fd461788.
    t432->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t468) = |abap|.
    DATA t469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t469.
    IF t432->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t432->zlnt_json_ownkeys_70e5fd461788->put( p0 = t468 p1 = t469 ).
    ENDIF.
    DATA(t470) = |kernel|.
    DATA t471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t471.
    IF t432->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t432->zlnt_json_ownkeys_70e5fd461788->put( p0 = t470 p1 = t471 ).
    ENDIF.
    DATA(t472) = |op|.
    DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t473.
    IF t432->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t432->zlnt_json_ownkeys_70e5fd461788->put( p0 = t472 p1 = t473 ).
    ENDIF.
    DATA(t474) = |cloud|.
    DATA t475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t475.
    IF t432->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t432->zlnt_json_ownkeys_70e5fd461788->put( p0 = t474 p1 = t475 ).
    ENDIF.
    DATA(t476) = |ce|.
    DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t477.
    IF t432->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t432->zlnt_json_ownkeys_70e5fd461788->put( p0 = t476 p1 = t477 ).
    ENDIF.
    t430 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t431 i_f1 = t432 ).
    t429->load( ).
    APPEND t430 TO t429->items.
    t429->save( ).
    DATA(t478) = t84.
    DATA t479 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t479.
    DATA(t480) = |v730|.
    DATA t481 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t481.
    DATA t482 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t482.
    DATA t483 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t483.
    DATA(t484) = abap_true.
    IF t484 = abap_true.
      DATA t485 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t485.
      DATA(t486) = |730|.
      CLEAR t485.
      CREATE OBJECT t485.
      t485->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t485->sval = t486.
      t483 = t485.
    ELSE.
      DATA t487 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t487.
      t483 = t487.
    ENDIF.
    t482 = t483.
    DATA t488 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t488.
    DATA t489 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t489.
    DATA(t490) = abap_true.
    IF t490 = abap_true.
      DATA t491 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t491.
      DATA(t492) = 730.
      CLEAR t491.
      CREATE OBJECT t491.
      t491->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t491->nval = t492.
      t489 = t491.
    ELSE.
      DATA t493 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t493.
      t489 = t493.
    ENDIF.
    t488 = t489.
    DATA t494 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t494.
    DATA t495 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t495.
    DATA(t496) = abap_true.
    IF t496 = abap_true.
      DATA t497 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t497.
      DATA(t498) = 730.
      CLEAR t497.
      CREATE OBJECT t497.
      t497->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t497->nval = t498.
      t495 = t497.
    ELSE.
      DATA t499 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t499.
      t495 = t499.
    ENDIF.
    t494 = t495.
    DATA t500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t500.
    DATA t501 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t501.
    DATA(t502) = abap_true.
    IF t502 = abap_true.
      DATA t503 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t503.
      DATA(t504) = 0.
      CREATE OBJECT t503.
      t503->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t501 = t503.
    ELSE.
      DATA t505 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t505.
      t501 = t505.
    ENDIF.
    t500 = t501.
    DATA t506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t506.
    DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t507.
    DATA(t508) = abap_true.
    IF t508 = abap_true.
      DATA t509 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t509.
      DATA(t510) = 0.
      CREATE OBJECT t509.
      t509->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t507 = t509.
    ELSE.
      DATA t511 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t511.
      t507 = t511.
    ENDIF.
    t506 = t507.
    t481 = NEW zcl_lnt_shape_27cfcabc( i_abap = t482 i_kernel = t488 i_op = t494 i_cloud_47cd = t500 i_ce = t506 ).
    CREATE OBJECT t481->zlnt_view_ownkeys_b0e8086400eb.
    t481->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t512 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t512.
    IF t481->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t481->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t512 ).
    ENDIF.
    DATA t513 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t513.
    IF t481->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t481->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t513 ).
    ENDIF.
    DATA t514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t514.
    IF t481->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t481->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t514 ).
    ENDIF.
    DATA t515 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t515.
    IF t481->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t481->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t515 ).
    ENDIF.
    DATA t516 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t516.
    IF t481->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t481->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t516 ).
    ENDIF.
    CREATE OBJECT t481->zlnt_json_ownkeys_70e5fd461788.
    t481->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t517) = |abap|.
    DATA t518 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t518.
    IF t481->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t481->zlnt_json_ownkeys_70e5fd461788->put( p0 = t517 p1 = t518 ).
    ENDIF.
    DATA(t519) = |kernel|.
    DATA t520 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t520.
    IF t481->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t481->zlnt_json_ownkeys_70e5fd461788->put( p0 = t519 p1 = t520 ).
    ENDIF.
    DATA(t521) = |op|.
    DATA t522 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t522.
    IF t481->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t481->zlnt_json_ownkeys_70e5fd461788->put( p0 = t521 p1 = t522 ).
    ENDIF.
    DATA(t523) = |cloud|.
    DATA t524 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t524.
    IF t481->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t481->zlnt_json_ownkeys_70e5fd461788->put( p0 = t523 p1 = t524 ).
    ENDIF.
    DATA(t525) = |ce|.
    DATA t526 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t526.
    IF t481->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t481->zlnt_json_ownkeys_70e5fd461788->put( p0 = t525 p1 = t526 ).
    ENDIF.
    t479 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t480 i_f1 = t481 ).
    t478->load( ).
    APPEND t479 TO t478->items.
    t478->save( ).
    DATA(t527) = t84.
    DATA t528 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t528.
    DATA(t529) = |v731|.
    DATA t530 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t530.
    DATA t531 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t531.
    DATA t532 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t532.
    DATA(t533) = abap_true.
    IF t533 = abap_true.
      DATA t534 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t534.
      DATA(t535) = |731|.
      CLEAR t534.
      CREATE OBJECT t534.
      t534->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t534->sval = t535.
      t532 = t534.
    ELSE.
      DATA t536 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t536.
      t532 = t536.
    ENDIF.
    t531 = t532.
    DATA t537 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t537.
    DATA t538 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t538.
    DATA(t539) = abap_true.
    IF t539 = abap_true.
      DATA t540 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t540.
      DATA(t541) = 731.
      CLEAR t540.
      CREATE OBJECT t540.
      t540->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t540->nval = t541.
      t538 = t540.
    ELSE.
      DATA t542 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t542.
      t538 = t542.
    ENDIF.
    t537 = t538.
    DATA t543 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t543.
    DATA t544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t544.
    DATA(t545) = abap_true.
    IF t545 = abap_true.
      DATA t546 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t546.
      DATA(t547) = 731.
      CLEAR t546.
      CREATE OBJECT t546.
      t546->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t546->nval = t547.
      t544 = t546.
    ELSE.
      DATA t548 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t548.
      t544 = t548.
    ENDIF.
    t543 = t544.
    DATA t549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t549.
    DATA t550 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t550.
    DATA(t551) = abap_true.
    IF t551 = abap_true.
      DATA t552 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t552.
      DATA(t553) = 0.
      CREATE OBJECT t552.
      t552->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t550 = t552.
    ELSE.
      DATA t554 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t554.
      t550 = t554.
    ENDIF.
    t549 = t550.
    DATA t555 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t555.
    DATA t556 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t556.
    DATA(t557) = abap_true.
    IF t557 = abap_true.
      DATA t558 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t558.
      DATA(t559) = 0.
      CREATE OBJECT t558.
      t558->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t556 = t558.
    ELSE.
      DATA t560 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t560.
      t556 = t560.
    ENDIF.
    t555 = t556.
    t530 = NEW zcl_lnt_shape_27cfcabc( i_abap = t531 i_kernel = t537 i_op = t543 i_cloud_47cd = t549 i_ce = t555 ).
    CREATE OBJECT t530->zlnt_view_ownkeys_b0e8086400eb.
    t530->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t561.
    IF t530->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t530->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t561 ).
    ENDIF.
    DATA t562 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t562.
    IF t530->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t530->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t562 ).
    ENDIF.
    DATA t563 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t563.
    IF t530->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t530->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t563 ).
    ENDIF.
    DATA t564 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t564.
    IF t530->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t530->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t564 ).
    ENDIF.
    DATA t565 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t565.
    IF t530->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t530->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t565 ).
    ENDIF.
    CREATE OBJECT t530->zlnt_json_ownkeys_70e5fd461788.
    t530->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t566) = |abap|.
    DATA t567 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t567.
    IF t530->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t530->zlnt_json_ownkeys_70e5fd461788->put( p0 = t566 p1 = t567 ).
    ENDIF.
    DATA(t568) = |kernel|.
    DATA t569 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t569.
    IF t530->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t530->zlnt_json_ownkeys_70e5fd461788->put( p0 = t568 p1 = t569 ).
    ENDIF.
    DATA(t570) = |op|.
    DATA t571 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t571.
    IF t530->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t530->zlnt_json_ownkeys_70e5fd461788->put( p0 = t570 p1 = t571 ).
    ENDIF.
    DATA(t572) = |cloud|.
    DATA t573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t573.
    IF t530->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t530->zlnt_json_ownkeys_70e5fd461788->put( p0 = t572 p1 = t573 ).
    ENDIF.
    DATA(t574) = |ce|.
    DATA t575 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t575.
    IF t530->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t530->zlnt_json_ownkeys_70e5fd461788->put( p0 = t574 p1 = t575 ).
    ENDIF.
    t528 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t529 i_f1 = t530 ).
    t527->load( ).
    APPEND t528 TO t527->items.
    t527->save( ).
    DATA(t576) = t84.
    DATA t577 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t577.
    DATA(t578) = |v740sp02|.
    DATA t579 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t579.
    DATA t580 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t580.
    DATA t581 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t581.
    DATA(t582) = abap_true.
    IF t582 = abap_true.
      DATA t583 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t583.
      DATA(t584) = |740SP02|.
      CLEAR t583.
      CREATE OBJECT t583.
      t583->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t583->sval = t584.
      t581 = t583.
    ELSE.
      DATA t585 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t585.
      t581 = t585.
    ENDIF.
    t580 = t581.
    DATA t586 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t586.
    DATA t587 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t587.
    DATA(t588) = abap_true.
    IF t588 = abap_true.
      DATA t589 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t589.
      DATA(t590) = 740.
      CLEAR t589.
      CREATE OBJECT t589.
      t589->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t589->nval = t590.
      t587 = t589.
    ELSE.
      DATA t591 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t591.
      t587 = t591.
    ENDIF.
    t586 = t587.
    DATA t592 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t592.
    DATA t593 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t593.
    DATA(t594) = abap_true.
    IF t594 = abap_true.
      DATA t595 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t595.
      DATA(t596) = 740.
      CLEAR t595.
      CREATE OBJECT t595.
      t595->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t595->nval = t596.
      t593 = t595.
    ELSE.
      DATA t597 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t597.
      t593 = t597.
    ENDIF.
    t592 = t593.
    DATA t598 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t598.
    DATA t599 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t599.
    DATA(t600) = abap_true.
    IF t600 = abap_true.
      DATA t601 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t601.
      DATA(t602) = 0.
      CREATE OBJECT t601.
      t601->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t599 = t601.
    ELSE.
      DATA t603 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t603.
      t599 = t603.
    ENDIF.
    t598 = t599.
    DATA t604 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t604.
    DATA t605 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t605.
    DATA(t606) = abap_true.
    IF t606 = abap_true.
      DATA t607 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t607.
      DATA(t608) = 0.
      CREATE OBJECT t607.
      t607->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t605 = t607.
    ELSE.
      DATA t609 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t609.
      t605 = t609.
    ENDIF.
    t604 = t605.
    t579 = NEW zcl_lnt_shape_27cfcabc( i_abap = t580 i_kernel = t586 i_op = t592 i_cloud_47cd = t598 i_ce = t604 ).
    CREATE OBJECT t579->zlnt_view_ownkeys_b0e8086400eb.
    t579->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t610 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t610.
    IF t579->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t579->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t610 ).
    ENDIF.
    DATA t611 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t611.
    IF t579->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t579->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t611 ).
    ENDIF.
    DATA t612 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t612.
    IF t579->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t579->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t612 ).
    ENDIF.
    DATA t613 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t613.
    IF t579->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t579->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t613 ).
    ENDIF.
    DATA t614 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t614.
    IF t579->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t579->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t614 ).
    ENDIF.
    CREATE OBJECT t579->zlnt_json_ownkeys_70e5fd461788.
    t579->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t615) = |abap|.
    DATA t616 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t616.
    IF t579->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t579->zlnt_json_ownkeys_70e5fd461788->put( p0 = t615 p1 = t616 ).
    ENDIF.
    DATA(t617) = |kernel|.
    DATA t618 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t618.
    IF t579->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t579->zlnt_json_ownkeys_70e5fd461788->put( p0 = t617 p1 = t618 ).
    ENDIF.
    DATA(t619) = |op|.
    DATA t620 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t620.
    IF t579->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t579->zlnt_json_ownkeys_70e5fd461788->put( p0 = t619 p1 = t620 ).
    ENDIF.
    DATA(t621) = |cloud|.
    DATA t622 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t622.
    IF t579->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t579->zlnt_json_ownkeys_70e5fd461788->put( p0 = t621 p1 = t622 ).
    ENDIF.
    DATA(t623) = |ce|.
    DATA t624 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t624.
    IF t579->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t579->zlnt_json_ownkeys_70e5fd461788->put( p0 = t623 p1 = t624 ).
    ENDIF.
    t577 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t578 i_f1 = t579 ).
    t576->load( ).
    APPEND t577 TO t576->items.
    t576->save( ).
    DATA(t625) = t84.
    DATA t626 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t626.
    DATA(t627) = |v740sp05|.
    DATA t628 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t628.
    DATA t629 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t629.
    DATA t630 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t630.
    DATA(t631) = abap_true.
    IF t631 = abap_true.
      DATA t632 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t632.
      DATA(t633) = |740SP05|.
      CLEAR t632.
      CREATE OBJECT t632.
      t632->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t632->sval = t633.
      t630 = t632.
    ELSE.
      DATA t634 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t634.
      t630 = t634.
    ENDIF.
    t629 = t630.
    DATA t635 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t635.
    DATA t636 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t636.
    DATA(t637) = abap_true.
    IF t637 = abap_true.
      DATA t638 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t638.
      DATA(t639) = 741.
      CLEAR t638.
      CREATE OBJECT t638.
      t638->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t638->nval = t639.
      t636 = t638.
    ELSE.
      DATA t640 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t640.
      t636 = t640.
    ENDIF.
    t635 = t636.
    DATA t641 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t641.
    DATA t642 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t642.
    DATA(t643) = abap_true.
    IF t643 = abap_true.
      DATA t644 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t644.
      DATA(t645) = 740.
      CLEAR t644.
      CREATE OBJECT t644.
      t644->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t644->nval = t645.
      t642 = t644.
    ELSE.
      DATA t646 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t646.
      t642 = t646.
    ENDIF.
    t641 = t642.
    DATA t647 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t647.
    DATA t648 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t648.
    DATA(t649) = abap_true.
    IF t649 = abap_true.
      DATA t650 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t650.
      DATA(t651) = 0.
      CREATE OBJECT t650.
      t650->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t648 = t650.
    ELSE.
      DATA t652 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t652.
      t648 = t652.
    ENDIF.
    t647 = t648.
    DATA t653 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t653.
    DATA t654 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t654.
    DATA(t655) = abap_true.
    IF t655 = abap_true.
      DATA t656 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t656.
      DATA(t657) = 0.
      CREATE OBJECT t656.
      t656->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t654 = t656.
    ELSE.
      DATA t658 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t658.
      t654 = t658.
    ENDIF.
    t653 = t654.
    t628 = NEW zcl_lnt_shape_27cfcabc( i_abap = t629 i_kernel = t635 i_op = t641 i_cloud_47cd = t647 i_ce = t653 ).
    CREATE OBJECT t628->zlnt_view_ownkeys_b0e8086400eb.
    t628->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t659 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t659.
    IF t628->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t628->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t659 ).
    ENDIF.
    DATA t660 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t660.
    IF t628->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t628->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t660 ).
    ENDIF.
    DATA t661 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t661.
    IF t628->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t628->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t661 ).
    ENDIF.
    DATA t662 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t662.
    IF t628->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t628->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t662 ).
    ENDIF.
    DATA t663 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t663.
    IF t628->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t628->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t663 ).
    ENDIF.
    CREATE OBJECT t628->zlnt_json_ownkeys_70e5fd461788.
    t628->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t664) = |abap|.
    DATA t665 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t665.
    IF t628->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t628->zlnt_json_ownkeys_70e5fd461788->put( p0 = t664 p1 = t665 ).
    ENDIF.
    DATA(t666) = |kernel|.
    DATA t667 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t667.
    IF t628->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t628->zlnt_json_ownkeys_70e5fd461788->put( p0 = t666 p1 = t667 ).
    ENDIF.
    DATA(t668) = |op|.
    DATA t669 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t669.
    IF t628->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t628->zlnt_json_ownkeys_70e5fd461788->put( p0 = t668 p1 = t669 ).
    ENDIF.
    DATA(t670) = |cloud|.
    DATA t671 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t671.
    IF t628->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t628->zlnt_json_ownkeys_70e5fd461788->put( p0 = t670 p1 = t671 ).
    ENDIF.
    DATA(t672) = |ce|.
    DATA t673 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t673.
    IF t628->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t628->zlnt_json_ownkeys_70e5fd461788->put( p0 = t672 p1 = t673 ).
    ENDIF.
    t626 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t627 i_f1 = t628 ).
    t625->load( ).
    APPEND t626 TO t625->items.
    t625->save( ).
    DATA(t674) = t84.
    DATA t675 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t675.
    DATA(t676) = |v740sp08|.
    DATA t677 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t677.
    DATA t678 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t678.
    DATA t679 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t679.
    DATA(t680) = abap_true.
    IF t680 = abap_true.
      DATA t681 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t681.
      DATA(t682) = |740SP08|.
      CLEAR t681.
      CREATE OBJECT t681.
      t681->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t681->sval = t682.
      t679 = t681.
    ELSE.
      DATA t683 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t683.
      t679 = t683.
    ENDIF.
    t678 = t679.
    DATA t684 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t684.
    DATA t685 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t685.
    DATA(t686) = abap_true.
    IF t686 = abap_true.
      DATA t687 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t687.
      DATA(t688) = 742.
      CLEAR t687.
      CREATE OBJECT t687.
      t687->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t687->nval = t688.
      t685 = t687.
    ELSE.
      DATA t689 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t689.
      t685 = t689.
    ENDIF.
    t684 = t685.
    DATA t690 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t690.
    DATA t691 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t691.
    DATA(t692) = abap_true.
    IF t692 = abap_true.
      DATA t693 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t693.
      DATA(t694) = 740.
      CLEAR t693.
      CREATE OBJECT t693.
      t693->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t693->nval = t694.
      t691 = t693.
    ELSE.
      DATA t695 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t695.
      t691 = t695.
    ENDIF.
    t690 = t691.
    DATA t696 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t696.
    DATA t697 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t697.
    DATA(t698) = abap_true.
    IF t698 = abap_true.
      DATA t699 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t699.
      DATA(t700) = 0.
      CREATE OBJECT t699.
      t699->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t697 = t699.
    ELSE.
      DATA t701 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t701.
      t697 = t701.
    ENDIF.
    t696 = t697.
    DATA t702 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t702.
    DATA t703 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t703.
    DATA(t704) = abap_true.
    IF t704 = abap_true.
      DATA t705 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t705.
      DATA(t706) = 0.
      CREATE OBJECT t705.
      t705->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t703 = t705.
    ELSE.
      DATA t707 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t707.
      t703 = t707.
    ENDIF.
    t702 = t703.
    t677 = NEW zcl_lnt_shape_27cfcabc( i_abap = t678 i_kernel = t684 i_op = t690 i_cloud_47cd = t696 i_ce = t702 ).
    CREATE OBJECT t677->zlnt_view_ownkeys_b0e8086400eb.
    t677->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t708 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t708.
    IF t677->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t677->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t708 ).
    ENDIF.
    DATA t709 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t709.
    IF t677->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t677->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t709 ).
    ENDIF.
    DATA t710 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t710.
    IF t677->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t677->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t710 ).
    ENDIF.
    DATA t711 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t711.
    IF t677->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t677->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t711 ).
    ENDIF.
    DATA t712 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t712.
    IF t677->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t677->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t712 ).
    ENDIF.
    CREATE OBJECT t677->zlnt_json_ownkeys_70e5fd461788.
    t677->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t713) = |abap|.
    DATA t714 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t714.
    IF t677->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t677->zlnt_json_ownkeys_70e5fd461788->put( p0 = t713 p1 = t714 ).
    ENDIF.
    DATA(t715) = |kernel|.
    DATA t716 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t716.
    IF t677->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t677->zlnt_json_ownkeys_70e5fd461788->put( p0 = t715 p1 = t716 ).
    ENDIF.
    DATA(t717) = |op|.
    DATA t718 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t718.
    IF t677->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t677->zlnt_json_ownkeys_70e5fd461788->put( p0 = t717 p1 = t718 ).
    ENDIF.
    DATA(t719) = |cloud|.
    DATA t720 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t720.
    IF t677->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t677->zlnt_json_ownkeys_70e5fd461788->put( p0 = t719 p1 = t720 ).
    ENDIF.
    DATA(t721) = |ce|.
    DATA t722 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t722.
    IF t677->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t677->zlnt_json_ownkeys_70e5fd461788->put( p0 = t721 p1 = t722 ).
    ENDIF.
    t675 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t676 i_f1 = t677 ).
    t674->load( ).
    APPEND t675 TO t674->items.
    t674->save( ).
    DATA(t723) = t84.
    DATA t724 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t724.
    DATA(t725) = |v760|.
    DATA t726 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t726.
    DATA t727 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t727.
    DATA t728 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t728.
    DATA(t729) = abap_true.
    IF t729 = abap_true.
      DATA t730 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t730.
      DATA(t731) = |7.60|.
      CLEAR t730.
      CREATE OBJECT t730.
      t730->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t730->sval = t731.
      t728 = t730.
    ELSE.
      DATA t732 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t732.
      t728 = t732.
    ENDIF.
    t727 = t728.
    DATA t733 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t733.
    DATA t734 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t734.
    DATA(t735) = abap_true.
    IF t735 = abap_true.
      DATA t736 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t736.
      DATA(t737) = 743.
      CLEAR t736.
      CREATE OBJECT t736.
      t736->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t736->nval = t737.
      t734 = t736.
    ELSE.
      DATA t738 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t738.
      t734 = t738.
    ENDIF.
    t733 = t734.
    DATA t739 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t739.
    DATA t740 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t740.
    DATA(t741) = abap_true.
    IF t741 = abap_true.
      DATA t742 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t742.
      DATA(t743) = 750.
      CLEAR t742.
      CREATE OBJECT t742.
      t742->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t742->nval = t743.
      t740 = t742.
    ELSE.
      DATA t744 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t744.
      t740 = t744.
    ENDIF.
    t739 = t740.
    DATA t745 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t745.
    DATA t746 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t746.
    DATA(t747) = abap_true.
    IF t747 = abap_true.
      DATA t748 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t748.
      DATA(t749) = 760.
      CLEAR t748.
      CREATE OBJECT t748.
      t748->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t748->nval = t749.
      t746 = t748.
    ELSE.
      DATA t750 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t750.
      t746 = t750.
    ENDIF.
    t745 = t746.
    DATA t751 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t751.
    DATA t752 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t752.
    DATA(t753) = abap_true.
    IF t753 = abap_true.
      DATA t754 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t754.
      DATA(t755) = 0.
      CREATE OBJECT t754.
      t754->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t752 = t754.
    ELSE.
      DATA t756 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t756.
      t752 = t756.
    ENDIF.
    t751 = t752.
    t726 = NEW zcl_lnt_shape_27cfcabc( i_abap = t727 i_kernel = t733 i_op = t739 i_cloud_47cd = t745 i_ce = t751 ).
    CREATE OBJECT t726->zlnt_view_ownkeys_b0e8086400eb.
    t726->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t757 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t757.
    IF t726->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t726->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t757 ).
    ENDIF.
    DATA t758 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t758.
    IF t726->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t726->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t758 ).
    ENDIF.
    DATA t759 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t759.
    IF t726->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t726->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t759 ).
    ENDIF.
    DATA t760 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t760.
    IF t726->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t726->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t760 ).
    ENDIF.
    DATA t761 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t761.
    IF t726->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t726->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t761 ).
    ENDIF.
    CREATE OBJECT t726->zlnt_json_ownkeys_70e5fd461788.
    t726->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t762) = |abap|.
    DATA t763 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t763.
    IF t726->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t726->zlnt_json_ownkeys_70e5fd461788->put( p0 = t762 p1 = t763 ).
    ENDIF.
    DATA(t764) = |kernel|.
    DATA t765 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t765.
    IF t726->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t726->zlnt_json_ownkeys_70e5fd461788->put( p0 = t764 p1 = t765 ).
    ENDIF.
    DATA(t766) = |op|.
    DATA t767 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t767.
    IF t726->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t726->zlnt_json_ownkeys_70e5fd461788->put( p0 = t766 p1 = t767 ).
    ENDIF.
    DATA(t768) = |cloud|.
    DATA t769 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t769.
    IF t726->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t726->zlnt_json_ownkeys_70e5fd461788->put( p0 = t768 p1 = t769 ).
    ENDIF.
    DATA(t770) = |ce|.
    DATA t771 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t771.
    IF t726->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t726->zlnt_json_ownkeys_70e5fd461788->put( p0 = t770 p1 = t771 ).
    ENDIF.
    t724 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t725 i_f1 = t726 ).
    t723->load( ).
    APPEND t724 TO t723->items.
    t723->save( ).
    DATA(t772) = t84.
    DATA t773 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t773.
    DATA(t774) = |v761|.
    DATA t775 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t775.
    DATA t776 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t776.
    DATA t777 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t777.
    DATA(t778) = abap_true.
    IF t778 = abap_true.
      DATA t779 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t779.
      DATA(t780) = |7.61|.
      CLEAR t779.
      CREATE OBJECT t779.
      t779->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t779->sval = t780.
      t777 = t779.
    ELSE.
      DATA t781 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t781.
      t777 = t781.
    ENDIF.
    t776 = t777.
    DATA t782 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t782.
    DATA t783 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t783.
    DATA(t784) = abap_true.
    IF t784 = abap_true.
      DATA t785 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t785.
      DATA(t786) = 744.
      CLEAR t785.
      CREATE OBJECT t785.
      t785->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t785->nval = t786.
      t783 = t785.
    ELSE.
      DATA t787 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t787.
      t783 = t787.
    ENDIF.
    t782 = t783.
    DATA t788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t788.
    DATA t789 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t789.
    DATA(t790) = abap_true.
    IF t790 = abap_true.
      DATA t791 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t791.
      DATA(t792) = 750.
      CLEAR t791.
      CREATE OBJECT t791.
      t791->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t791->nval = t792.
      t789 = t791.
    ELSE.
      DATA t793 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t793.
      t789 = t793.
    ENDIF.
    t788 = t789.
    DATA t794 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t794.
    DATA t795 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t795.
    DATA(t796) = abap_true.
    IF t796 = abap_true.
      DATA t797 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t797.
      DATA(t798) = 761.
      CLEAR t797.
      CREATE OBJECT t797.
      t797->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t797->nval = t798.
      t795 = t797.
    ELSE.
      DATA t799 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t799.
      t795 = t799.
    ENDIF.
    t794 = t795.
    DATA t800 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t800.
    DATA t801 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t801.
    DATA(t802) = abap_true.
    IF t802 = abap_true.
      DATA t803 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t803.
      DATA(t804) = 0.
      CREATE OBJECT t803.
      t803->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t801 = t803.
    ELSE.
      DATA t805 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t805.
      t801 = t805.
    ENDIF.
    t800 = t801.
    t775 = NEW zcl_lnt_shape_27cfcabc( i_abap = t776 i_kernel = t782 i_op = t788 i_cloud_47cd = t794 i_ce = t800 ).
    CREATE OBJECT t775->zlnt_view_ownkeys_b0e8086400eb.
    t775->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t806 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t806.
    IF t775->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t775->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t806 ).
    ENDIF.
    DATA t807 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t807.
    IF t775->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t775->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t807 ).
    ENDIF.
    DATA t808 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t808.
    IF t775->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t775->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t808 ).
    ENDIF.
    DATA t809 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t809.
    IF t775->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t775->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t809 ).
    ENDIF.
    DATA t810 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t810.
    IF t775->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t775->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t810 ).
    ENDIF.
    CREATE OBJECT t775->zlnt_json_ownkeys_70e5fd461788.
    t775->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t811) = |abap|.
    DATA t812 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t812.
    IF t775->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t775->zlnt_json_ownkeys_70e5fd461788->put( p0 = t811 p1 = t812 ).
    ENDIF.
    DATA(t813) = |kernel|.
    DATA t814 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t814.
    IF t775->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t775->zlnt_json_ownkeys_70e5fd461788->put( p0 = t813 p1 = t814 ).
    ENDIF.
    DATA(t815) = |op|.
    DATA t816 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t816.
    IF t775->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t775->zlnt_json_ownkeys_70e5fd461788->put( p0 = t815 p1 = t816 ).
    ENDIF.
    DATA(t817) = |cloud|.
    DATA t818 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t818.
    IF t775->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t775->zlnt_json_ownkeys_70e5fd461788->put( p0 = t817 p1 = t818 ).
    ENDIF.
    DATA(t819) = |ce|.
    DATA t820 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t820.
    IF t775->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t775->zlnt_json_ownkeys_70e5fd461788->put( p0 = t819 p1 = t820 ).
    ENDIF.
    t773 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t774 i_f1 = t775 ).
    t772->load( ).
    APPEND t773 TO t772->items.
    t772->save( ).
    DATA(t821) = t84.
    DATA t822 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t822.
    DATA(t823) = |v762|.
    DATA t824 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t824.
    DATA t825 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t825.
    DATA t826 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t826.
    DATA(t827) = abap_true.
    IF t827 = abap_true.
      DATA t828 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t828.
      DATA(t829) = |7.62|.
      CLEAR t828.
      CREATE OBJECT t828.
      t828->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t828->sval = t829.
      t826 = t828.
    ELSE.
      DATA t830 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t830.
      t826 = t830.
    ENDIF.
    t825 = t826.
    DATA t831 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t831.
    DATA t832 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t832.
    DATA(t833) = abap_true.
    IF t833 = abap_true.
      DATA t834 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t834.
      DATA(t835) = 745.
      CLEAR t834.
      CREATE OBJECT t834.
      t834->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t834->nval = t835.
      t832 = t834.
    ELSE.
      DATA t836 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t836.
      t832 = t836.
    ENDIF.
    t831 = t832.
    DATA t837 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t837.
    DATA t838 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t838.
    DATA(t839) = abap_true.
    IF t839 = abap_true.
      DATA t840 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t840.
      DATA(t841) = 750.
      CLEAR t840.
      CREATE OBJECT t840.
      t840->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t840->nval = t841.
      t838 = t840.
    ELSE.
      DATA t842 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t842.
      t838 = t842.
    ENDIF.
    t837 = t838.
    DATA t843 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t843.
    DATA t844 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t844.
    DATA(t845) = abap_true.
    IF t845 = abap_true.
      DATA t846 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t846.
      DATA(t847) = 762.
      CLEAR t846.
      CREATE OBJECT t846.
      t846->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t846->nval = t847.
      t844 = t846.
    ELSE.
      DATA t848 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t848.
      t844 = t848.
    ENDIF.
    t843 = t844.
    DATA t849 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t849.
    DATA t850 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t850.
    DATA(t851) = abap_true.
    IF t851 = abap_true.
      DATA t852 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t852.
      DATA(t853) = 0.
      CREATE OBJECT t852.
      t852->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t850 = t852.
    ELSE.
      DATA t854 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t854.
      t850 = t854.
    ENDIF.
    t849 = t850.
    t824 = NEW zcl_lnt_shape_27cfcabc( i_abap = t825 i_kernel = t831 i_op = t837 i_cloud_47cd = t843 i_ce = t849 ).
    CREATE OBJECT t824->zlnt_view_ownkeys_b0e8086400eb.
    t824->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t855 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t855.
    IF t824->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t824->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t855 ).
    ENDIF.
    DATA t856 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t856.
    IF t824->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t824->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t856 ).
    ENDIF.
    DATA t857 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t857.
    IF t824->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t824->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t857 ).
    ENDIF.
    DATA t858 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t858.
    IF t824->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t824->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t858 ).
    ENDIF.
    DATA t859 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t859.
    IF t824->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t824->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t859 ).
    ENDIF.
    CREATE OBJECT t824->zlnt_json_ownkeys_70e5fd461788.
    t824->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t860) = |abap|.
    DATA t861 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t861.
    IF t824->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t824->zlnt_json_ownkeys_70e5fd461788->put( p0 = t860 p1 = t861 ).
    ENDIF.
    DATA(t862) = |kernel|.
    DATA t863 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t863.
    IF t824->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t824->zlnt_json_ownkeys_70e5fd461788->put( p0 = t862 p1 = t863 ).
    ENDIF.
    DATA(t864) = |op|.
    DATA t865 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t865.
    IF t824->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t824->zlnt_json_ownkeys_70e5fd461788->put( p0 = t864 p1 = t865 ).
    ENDIF.
    DATA(t866) = |cloud|.
    DATA t867 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t867.
    IF t824->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t824->zlnt_json_ownkeys_70e5fd461788->put( p0 = t866 p1 = t867 ).
    ENDIF.
    DATA(t868) = |ce|.
    DATA t869 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t869.
    IF t824->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t824->zlnt_json_ownkeys_70e5fd461788->put( p0 = t868 p1 = t869 ).
    ENDIF.
    t822 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t823 i_f1 = t824 ).
    t821->load( ).
    APPEND t822 TO t821->items.
    t821->save( ).
    DATA(t870) = t84.
    DATA t871 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t871.
    DATA(t872) = |v763|.
    DATA t873 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t873.
    DATA t874 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t874.
    DATA t875 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t875.
    DATA(t876) = abap_true.
    IF t876 = abap_true.
      DATA t877 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t877.
      DATA(t878) = |7.63|.
      CLEAR t877.
      CREATE OBJECT t877.
      t877->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t877->sval = t878.
      t875 = t877.
    ELSE.
      DATA t879 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t879.
      t875 = t879.
    ENDIF.
    t874 = t875.
    DATA t880 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t880.
    DATA t881 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t881.
    DATA(t882) = abap_true.
    IF t882 = abap_true.
      DATA t883 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t883.
      DATA(t884) = 746.
      CLEAR t883.
      CREATE OBJECT t883.
      t883->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t883->nval = t884.
      t881 = t883.
    ELSE.
      DATA t885 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t885.
      t881 = t885.
    ENDIF.
    t880 = t881.
    DATA t886 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t886.
    DATA t887 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t887.
    DATA(t888) = abap_true.
    IF t888 = abap_true.
      DATA t889 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t889.
      DATA(t890) = 751.
      CLEAR t889.
      CREATE OBJECT t889.
      t889->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t889->nval = t890.
      t887 = t889.
    ELSE.
      DATA t891 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t891.
      t887 = t891.
    ENDIF.
    t886 = t887.
    DATA t892 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t892.
    DATA t893 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t893.
    DATA(t894) = abap_true.
    IF t894 = abap_true.
      DATA t895 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t895.
      DATA(t896) = 763.
      CLEAR t895.
      CREATE OBJECT t895.
      t895->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t895->nval = t896.
      t893 = t895.
    ELSE.
      DATA t897 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t897.
      t893 = t897.
    ENDIF.
    t892 = t893.
    DATA t898 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t898.
    DATA t899 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t899.
    DATA(t900) = abap_true.
    IF t900 = abap_true.
      DATA t901 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t901.
      DATA(t902) = 0.
      CREATE OBJECT t901.
      t901->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t899 = t901.
    ELSE.
      DATA t903 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t903.
      t899 = t903.
    ENDIF.
    t898 = t899.
    t873 = NEW zcl_lnt_shape_27cfcabc( i_abap = t874 i_kernel = t880 i_op = t886 i_cloud_47cd = t892 i_ce = t898 ).
    CREATE OBJECT t873->zlnt_view_ownkeys_b0e8086400eb.
    t873->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t904 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t904.
    IF t873->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t873->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t904 ).
    ENDIF.
    DATA t905 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t905.
    IF t873->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t873->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t905 ).
    ENDIF.
    DATA t906 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t906.
    IF t873->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t873->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t906 ).
    ENDIF.
    DATA t907 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t907.
    IF t873->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t873->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t907 ).
    ENDIF.
    DATA t908 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t908.
    IF t873->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t873->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t908 ).
    ENDIF.
    CREATE OBJECT t873->zlnt_json_ownkeys_70e5fd461788.
    t873->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t909) = |abap|.
    DATA t910 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t910.
    IF t873->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t873->zlnt_json_ownkeys_70e5fd461788->put( p0 = t909 p1 = t910 ).
    ENDIF.
    DATA(t911) = |kernel|.
    DATA t912 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t912.
    IF t873->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t873->zlnt_json_ownkeys_70e5fd461788->put( p0 = t911 p1 = t912 ).
    ENDIF.
    DATA(t913) = |op|.
    DATA t914 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t914.
    IF t873->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t873->zlnt_json_ownkeys_70e5fd461788->put( p0 = t913 p1 = t914 ).
    ENDIF.
    DATA(t915) = |cloud|.
    DATA t916 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t916.
    IF t873->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t873->zlnt_json_ownkeys_70e5fd461788->put( p0 = t915 p1 = t916 ).
    ENDIF.
    DATA(t917) = |ce|.
    DATA t918 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t918.
    IF t873->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t873->zlnt_json_ownkeys_70e5fd461788->put( p0 = t917 p1 = t918 ).
    ENDIF.
    t871 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t872 i_f1 = t873 ).
    t870->load( ).
    APPEND t871 TO t870->items.
    t870->save( ).
    DATA(t919) = t84.
    DATA t920 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t920.
    DATA(t921) = |v764|.
    DATA t922 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t922.
    DATA t923 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t923.
    DATA t924 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t924.
    DATA(t925) = abap_true.
    IF t925 = abap_true.
      DATA t926 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t926.
      DATA(t927) = |7.64|.
      CLEAR t926.
      CREATE OBJECT t926.
      t926->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t926->sval = t927.
      t924 = t926.
    ELSE.
      DATA t928 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t928.
      t924 = t928.
    ENDIF.
    t923 = t924.
    DATA t929 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t929.
    DATA t930 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t930.
    DATA(t931) = abap_true.
    IF t931 = abap_true.
      DATA t932 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t932.
      DATA(t933) = 747.
      CLEAR t932.
      CREATE OBJECT t932.
      t932->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t932->nval = t933.
      t930 = t932.
    ELSE.
      DATA t934 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t934.
      t930 = t934.
    ENDIF.
    t929 = t930.
    DATA t935 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t935.
    DATA t936 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t936.
    DATA(t937) = abap_true.
    IF t937 = abap_true.
      DATA t938 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t938.
      DATA(t939) = 751.
      CLEAR t938.
      CREATE OBJECT t938.
      t938->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t938->nval = t939.
      t936 = t938.
    ELSE.
      DATA t940 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t940.
      t936 = t940.
    ENDIF.
    t935 = t936.
    DATA t941 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t941.
    DATA t942 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t942.
    DATA(t943) = abap_true.
    IF t943 = abap_true.
      DATA t944 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t944.
      DATA(t945) = 764.
      CLEAR t944.
      CREATE OBJECT t944.
      t944->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t944->nval = t945.
      t942 = t944.
    ELSE.
      DATA t946 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t946.
      t942 = t946.
    ENDIF.
    t941 = t942.
    DATA t947 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t947.
    DATA t948 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t948.
    DATA(t949) = abap_true.
    IF t949 = abap_true.
      DATA t950 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t950.
      DATA(t951) = 0.
      CREATE OBJECT t950.
      t950->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t948 = t950.
    ELSE.
      DATA t952 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t952.
      t948 = t952.
    ENDIF.
    t947 = t948.
    t922 = NEW zcl_lnt_shape_27cfcabc( i_abap = t923 i_kernel = t929 i_op = t935 i_cloud_47cd = t941 i_ce = t947 ).
    CREATE OBJECT t922->zlnt_view_ownkeys_b0e8086400eb.
    t922->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t953 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t953.
    IF t922->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t922->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t953 ).
    ENDIF.
    DATA t954 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t954.
    IF t922->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t922->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t954 ).
    ENDIF.
    DATA t955 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t955.
    IF t922->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t922->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t955 ).
    ENDIF.
    DATA t956 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t956.
    IF t922->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t922->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t956 ).
    ENDIF.
    DATA t957 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t957.
    IF t922->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t922->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t957 ).
    ENDIF.
    CREATE OBJECT t922->zlnt_json_ownkeys_70e5fd461788.
    t922->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t958) = |abap|.
    DATA t959 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t959.
    IF t922->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t922->zlnt_json_ownkeys_70e5fd461788->put( p0 = t958 p1 = t959 ).
    ENDIF.
    DATA(t960) = |kernel|.
    DATA t961 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t961.
    IF t922->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t922->zlnt_json_ownkeys_70e5fd461788->put( p0 = t960 p1 = t961 ).
    ENDIF.
    DATA(t962) = |op|.
    DATA t963 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t963.
    IF t922->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t922->zlnt_json_ownkeys_70e5fd461788->put( p0 = t962 p1 = t963 ).
    ENDIF.
    DATA(t964) = |cloud|.
    DATA t965 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t965.
    IF t922->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t922->zlnt_json_ownkeys_70e5fd461788->put( p0 = t964 p1 = t965 ).
    ENDIF.
    DATA(t966) = |ce|.
    DATA t967 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t967.
    IF t922->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t922->zlnt_json_ownkeys_70e5fd461788->put( p0 = t966 p1 = t967 ).
    ENDIF.
    t920 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t921 i_f1 = t922 ).
    t919->load( ).
    APPEND t920 TO t919->items.
    t919->save( ).
    DATA(t968) = t84.
    DATA t969 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t969.
    DATA(t970) = |v765|.
    DATA t971 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t971.
    DATA t972 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t972.
    DATA t973 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t973.
    DATA(t974) = abap_true.
    IF t974 = abap_true.
      DATA t975 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t975.
      DATA(t976) = |7.65|.
      CLEAR t975.
      CREATE OBJECT t975.
      t975->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t975->sval = t976.
      t973 = t975.
    ELSE.
      DATA t977 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t977.
      t973 = t977.
    ENDIF.
    t972 = t973.
    DATA t978 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t978.
    DATA t979 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t979.
    DATA(t980) = abap_true.
    IF t980 = abap_true.
      DATA t981 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t981.
      DATA(t982) = 748.
      CLEAR t981.
      CREATE OBJECT t981.
      t981->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t981->nval = t982.
      t979 = t981.
    ELSE.
      DATA t983 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t983.
      t979 = t983.
    ENDIF.
    t978 = t979.
    DATA t984 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t984.
    DATA t985 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t985.
    DATA(t986) = abap_true.
    IF t986 = abap_true.
      DATA t987 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t987.
      DATA(t988) = 751.
      CLEAR t987.
      CREATE OBJECT t987.
      t987->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t987->nval = t988.
      t985 = t987.
    ELSE.
      DATA t989 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t989.
      t985 = t989.
    ENDIF.
    t984 = t985.
    DATA t990 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t990.
    DATA t991 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t991.
    DATA(t992) = abap_true.
    IF t992 = abap_true.
      DATA t993 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t993.
      DATA(t994) = 765.
      CLEAR t993.
      CREATE OBJECT t993.
      t993->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t993->nval = t994.
      t991 = t993.
    ELSE.
      DATA t995 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t995.
      t991 = t995.
    ENDIF.
    t990 = t991.
    DATA t996 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t996.
    DATA t997 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t997.
    DATA(t998) = abap_true.
    IF t998 = abap_true.
      DATA t999 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t999.
      DATA(t1000) = 0.
      CREATE OBJECT t999.
      t999->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t997 = t999.
    ELSE.
      DATA t1001 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1001.
      t997 = t1001.
    ENDIF.
    t996 = t997.
    t971 = NEW zcl_lnt_shape_27cfcabc( i_abap = t972 i_kernel = t978 i_op = t984 i_cloud_47cd = t990 i_ce = t996 ).
    CREATE OBJECT t971->zlnt_view_ownkeys_b0e8086400eb.
    t971->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1002 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1002.
    IF t971->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t971->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1002 ).
    ENDIF.
    DATA t1003 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1003.
    IF t971->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t971->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1003 ).
    ENDIF.
    DATA t1004 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1004.
    IF t971->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t971->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1004 ).
    ENDIF.
    DATA t1005 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1005.
    IF t971->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t971->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1005 ).
    ENDIF.
    DATA t1006 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1006.
    IF t971->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t971->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1006 ).
    ENDIF.
    CREATE OBJECT t971->zlnt_json_ownkeys_70e5fd461788.
    t971->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1007) = |abap|.
    DATA t1008 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1008.
    IF t971->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t971->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1007 p1 = t1008 ).
    ENDIF.
    DATA(t1009) = |kernel|.
    DATA t1010 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1010.
    IF t971->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t971->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1009 p1 = t1010 ).
    ENDIF.
    DATA(t1011) = |op|.
    DATA t1012 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1012.
    IF t971->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t971->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1011 p1 = t1012 ).
    ENDIF.
    DATA(t1013) = |cloud|.
    DATA t1014 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1014.
    IF t971->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t971->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1013 p1 = t1014 ).
    ENDIF.
    DATA(t1015) = |ce|.
    DATA t1016 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1016.
    IF t971->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t971->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1015 p1 = t1016 ).
    ENDIF.
    t969 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t970 i_f1 = t971 ).
    t968->load( ).
    APPEND t969 TO t968->items.
    t968->save( ).
    DATA(t1017) = t84.
    DATA t1018 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t1018.
    DATA(t1019) = |v766|.
    DATA t1020 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t1020.
    DATA t1021 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1021.
    DATA t1022 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1022.
    DATA(t1023) = abap_true.
    IF t1023 = abap_true.
      DATA t1024 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1024.
      DATA(t1025) = |7.66|.
      CLEAR t1024.
      CREATE OBJECT t1024.
      t1024->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1024->sval = t1025.
      t1022 = t1024.
    ELSE.
      DATA t1026 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1026.
      t1022 = t1026.
    ENDIF.
    t1021 = t1022.
    DATA t1027 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1027.
    DATA t1028 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1028.
    DATA(t1029) = abap_true.
    IF t1029 = abap_true.
      DATA t1030 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1030.
      DATA(t1031) = 749.
      CLEAR t1030.
      CREATE OBJECT t1030.
      t1030->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1030->nval = t1031.
      t1028 = t1030.
    ELSE.
      DATA t1032 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1032.
      t1028 = t1032.
    ENDIF.
    t1027 = t1028.
    DATA t1033 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1033.
    DATA t1034 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1034.
    DATA(t1035) = abap_true.
    IF t1035 = abap_true.
      DATA t1036 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1036.
      DATA(t1037) = 752.
      CLEAR t1036.
      CREATE OBJECT t1036.
      t1036->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1036->nval = t1037.
      t1034 = t1036.
    ELSE.
      DATA t1038 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1038.
      t1034 = t1038.
    ENDIF.
    t1033 = t1034.
    DATA t1039 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1039.
    DATA t1040 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1040.
    DATA(t1041) = abap_true.
    IF t1041 = abap_true.
      DATA t1042 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1042.
      DATA(t1043) = 766.
      CLEAR t1042.
      CREATE OBJECT t1042.
      t1042->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1042->nval = t1043.
      t1040 = t1042.
    ELSE.
      DATA t1044 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1044.
      t1040 = t1044.
    ENDIF.
    t1039 = t1040.
    DATA t1045 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1045.
    DATA t1046 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1046.
    DATA(t1047) = abap_true.
    IF t1047 = abap_true.
      DATA t1048 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1048.
      DATA(t1049) = 0.
      CREATE OBJECT t1048.
      t1048->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t1046 = t1048.
    ELSE.
      DATA t1050 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1050.
      t1046 = t1050.
    ENDIF.
    t1045 = t1046.
    t1020 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1021 i_kernel = t1027 i_op = t1033 i_cloud_47cd = t1039 i_ce = t1045 ).
    CREATE OBJECT t1020->zlnt_view_ownkeys_b0e8086400eb.
    t1020->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1051 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1051.
    IF t1020->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1020->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1051 ).
    ENDIF.
    DATA t1052 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1052.
    IF t1020->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1020->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1052 ).
    ENDIF.
    DATA t1053 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1053.
    IF t1020->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1020->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1053 ).
    ENDIF.
    DATA t1054 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1054.
    IF t1020->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1020->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1054 ).
    ENDIF.
    DATA t1055 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1055.
    IF t1020->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1020->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1055 ).
    ENDIF.
    CREATE OBJECT t1020->zlnt_json_ownkeys_70e5fd461788.
    t1020->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1056) = |abap|.
    DATA t1057 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1057.
    IF t1020->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1020->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1056 p1 = t1057 ).
    ENDIF.
    DATA(t1058) = |kernel|.
    DATA t1059 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1059.
    IF t1020->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1020->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1058 p1 = t1059 ).
    ENDIF.
    DATA(t1060) = |op|.
    DATA t1061 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1061.
    IF t1020->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1020->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1060 p1 = t1061 ).
    ENDIF.
    DATA(t1062) = |cloud|.
    DATA t1063 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1063.
    IF t1020->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1020->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1062 p1 = t1063 ).
    ENDIF.
    DATA(t1064) = |ce|.
    DATA t1065 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1065.
    IF t1020->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1020->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1064 p1 = t1065 ).
    ENDIF.
    t1018 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1019 i_f1 = t1020 ).
    t1017->load( ).
    APPEND t1018 TO t1017->items.
    t1017->save( ).
    DATA(t1066) = t84.
    DATA t1067 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t1067.
    DATA(t1068) = |v767|.
    DATA t1069 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t1069.
    DATA t1070 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1070.
    DATA t1071 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1071.
    DATA(t1072) = abap_true.
    IF t1072 = abap_true.
      DATA t1073 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1073.
      DATA(t1074) = |7.67|.
      CLEAR t1073.
      CREATE OBJECT t1073.
      t1073->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1073->sval = t1074.
      t1071 = t1073.
    ELSE.
      DATA t1075 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1075.
      t1071 = t1075.
    ENDIF.
    t1070 = t1071.
    DATA t1076 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1076.
    DATA t1077 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1077.
    DATA(t1078) = abap_true.
    IF t1078 = abap_true.
      DATA t1079 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1079.
      DATA(t1080) = 750.
      CLEAR t1079.
      CREATE OBJECT t1079.
      t1079->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1079->nval = t1080.
      t1077 = t1079.
    ELSE.
      DATA t1081 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1081.
      t1077 = t1081.
    ENDIF.
    t1076 = t1077.
    DATA t1082 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1082.
    DATA t1083 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1083.
    DATA(t1084) = abap_true.
    IF t1084 = abap_true.
      DATA t1085 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1085.
      DATA(t1086) = 752.
      CLEAR t1085.
      CREATE OBJECT t1085.
      t1085->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1085->nval = t1086.
      t1083 = t1085.
    ELSE.
      DATA t1087 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1087.
      t1083 = t1087.
    ENDIF.
    t1082 = t1083.
    DATA t1088 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1088.
    DATA t1089 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1089.
    DATA(t1090) = abap_true.
    IF t1090 = abap_true.
      DATA t1091 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1091.
      DATA(t1092) = 767.
      CLEAR t1091.
      CREATE OBJECT t1091.
      t1091->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1091->nval = t1092.
      t1089 = t1091.
    ELSE.
      DATA t1093 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1093.
      t1089 = t1093.
    ENDIF.
    t1088 = t1089.
    DATA t1094 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1094.
    DATA t1095 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1095.
    DATA(t1096) = abap_true.
    IF t1096 = abap_true.
      DATA t1097 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1097.
      DATA(t1098) = 1702.
      CLEAR t1097.
      CREATE OBJECT t1097.
      t1097->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1097->nval = t1098.
      t1095 = t1097.
    ELSE.
      DATA t1099 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1099.
      t1095 = t1099.
    ENDIF.
    t1094 = t1095.
    t1069 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1070 i_kernel = t1076 i_op = t1082 i_cloud_47cd = t1088 i_ce = t1094 ).
    CREATE OBJECT t1069->zlnt_view_ownkeys_b0e8086400eb.
    t1069->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1100.
    IF t1069->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1069->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1100 ).
    ENDIF.
    DATA t1101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1101.
    IF t1069->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1069->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1101 ).
    ENDIF.
    DATA t1102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1102.
    IF t1069->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1069->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1102 ).
    ENDIF.
    DATA t1103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1103.
    IF t1069->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1069->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1103 ).
    ENDIF.
    DATA t1104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1104.
    IF t1069->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1069->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1104 ).
    ENDIF.
    CREATE OBJECT t1069->zlnt_json_ownkeys_70e5fd461788.
    t1069->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1105) = |abap|.
    DATA t1106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1106.
    IF t1069->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1069->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1105 p1 = t1106 ).
    ENDIF.
    DATA(t1107) = |kernel|.
    DATA t1108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1108.
    IF t1069->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1069->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1107 p1 = t1108 ).
    ENDIF.
    DATA(t1109) = |op|.
    DATA t1110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1110.
    IF t1069->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1069->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1109 p1 = t1110 ).
    ENDIF.
    DATA(t1111) = |cloud|.
    DATA t1112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1112.
    IF t1069->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1069->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1111 p1 = t1112 ).
    ENDIF.
    DATA(t1113) = |ce|.
    DATA t1114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1114.
    IF t1069->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1069->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1113 p1 = t1114 ).
    ENDIF.
    t1067 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1068 i_f1 = t1069 ).
    t1066->load( ).
    APPEND t1067 TO t1066->items.
    t1066->save( ).
    DATA(t1115) = t84.
    DATA t1116 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t1116.
    DATA(t1117) = |v768|.
    DATA t1118 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t1118.
    DATA t1119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1119.
    DATA t1120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1120.
    DATA(t1121) = abap_true.
    IF t1121 = abap_true.
      DATA t1122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1122.
      DATA(t1123) = |7.68|.
      CLEAR t1122.
      CREATE OBJECT t1122.
      t1122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1122->sval = t1123.
      t1120 = t1122.
    ELSE.
      DATA t1124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1124.
      t1120 = t1124.
    ENDIF.
    t1119 = t1120.
    DATA t1125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1125.
    DATA t1126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1126.
    DATA(t1127) = abap_true.
    IF t1127 = abap_true.
      DATA t1128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1128.
      DATA(t1129) = 751.
      CLEAR t1128.
      CREATE OBJECT t1128.
      t1128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1128->nval = t1129.
      t1126 = t1128.
    ELSE.
      DATA t1130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1130.
      t1126 = t1130.
    ENDIF.
    t1125 = t1126.
    DATA t1131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1131.
    DATA t1132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1132.
    DATA(t1133) = abap_true.
    IF t1133 = abap_true.
      DATA t1134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1134.
      DATA(t1135) = 752.
      CLEAR t1134.
      CREATE OBJECT t1134.
      t1134->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1134->nval = t1135.
      t1132 = t1134.
    ELSE.
      DATA t1136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1136.
      t1132 = t1136.
    ENDIF.
    t1131 = t1132.
    DATA t1137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1137.
    DATA t1138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1138.
    DATA(t1139) = abap_true.
    IF t1139 = abap_true.
      DATA t1140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1140.
      DATA(t1141) = 768.
      CLEAR t1140.
      CREATE OBJECT t1140.
      t1140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1140->nval = t1141.
      t1138 = t1140.
    ELSE.
      DATA t1142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1142.
      t1138 = t1142.
    ENDIF.
    t1137 = t1138.
    DATA t1143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1143.
    DATA t1144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1144.
    DATA(t1145) = abap_true.
    IF t1145 = abap_true.
      DATA t1146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1146.
      DATA(t1147) = 1705.
      CLEAR t1146.
      CREATE OBJECT t1146.
      t1146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1146->nval = t1147.
      t1144 = t1146.
    ELSE.
      DATA t1148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1148.
      t1144 = t1148.
    ENDIF.
    t1143 = t1144.
    t1118 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1119 i_kernel = t1125 i_op = t1131 i_cloud_47cd = t1137 i_ce = t1143 ).
    CREATE OBJECT t1118->zlnt_view_ownkeys_b0e8086400eb.
    t1118->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1149.
    IF t1118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1149 ).
    ENDIF.
    DATA t1150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1150.
    IF t1118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1150 ).
    ENDIF.
    DATA t1151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1151.
    IF t1118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1151 ).
    ENDIF.
    DATA t1152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1152.
    IF t1118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1152 ).
    ENDIF.
    DATA t1153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1153.
    IF t1118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1153 ).
    ENDIF.
    CREATE OBJECT t1118->zlnt_json_ownkeys_70e5fd461788.
    t1118->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1154) = |abap|.
    DATA t1155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1155.
    IF t1118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1118->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1154 p1 = t1155 ).
    ENDIF.
    DATA(t1156) = |kernel|.
    DATA t1157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1157.
    IF t1118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1118->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1156 p1 = t1157 ).
    ENDIF.
    DATA(t1158) = |op|.
    DATA t1159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1159.
    IF t1118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1118->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1158 p1 = t1159 ).
    ENDIF.
    DATA(t1160) = |cloud|.
    DATA t1161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1161.
    IF t1118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1118->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1160 p1 = t1161 ).
    ENDIF.
    DATA(t1162) = |ce|.
    DATA t1163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1163.
    IF t1118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1118->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1162 p1 = t1163 ).
    ENDIF.
    t1116 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1117 i_f1 = t1118 ).
    t1115->load( ).
    APPEND t1116 TO t1115->items.
    t1115->save( ).
    DATA(t1164) = t84.
    DATA t1165 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t1165.
    DATA(t1166) = |v769|.
    DATA t1167 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t1167.
    DATA t1168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1168.
    DATA t1169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1169.
    DATA(t1170) = abap_true.
    IF t1170 = abap_true.
      DATA t1171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1171.
      DATA(t1172) = |7.69|.
      CLEAR t1171.
      CREATE OBJECT t1171.
      t1171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1171->sval = t1172.
      t1169 = t1171.
    ELSE.
      DATA t1173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1173.
      t1169 = t1173.
    ENDIF.
    t1168 = t1169.
    DATA t1174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1174.
    DATA t1175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1175.
    DATA(t1176) = abap_true.
    IF t1176 = abap_true.
      DATA t1177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1177.
      DATA(t1178) = 752.
      CLEAR t1177.
      CREATE OBJECT t1177.
      t1177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1177->nval = t1178.
      t1175 = t1177.
    ELSE.
      DATA t1179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1179.
      t1175 = t1179.
    ENDIF.
    t1174 = t1175.
    DATA t1180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1180.
    DATA t1181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1181.
    DATA(t1182) = abap_true.
    IF t1182 = abap_true.
      DATA t1183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1183.
      DATA(t1184) = 752.
      CLEAR t1183.
      CREATE OBJECT t1183.
      t1183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1183->nval = t1184.
      t1181 = t1183.
    ELSE.
      DATA t1185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1185.
      t1181 = t1185.
    ENDIF.
    t1180 = t1181.
    DATA t1186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1186.
    DATA t1187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1187.
    DATA(t1188) = abap_true.
    IF t1188 = abap_true.
      DATA t1189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1189.
      DATA(t1190) = 769.
      CLEAR t1189.
      CREATE OBJECT t1189.
      t1189->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1189->nval = t1190.
      t1187 = t1189.
    ELSE.
      DATA t1191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1191.
      t1187 = t1191.
    ENDIF.
    t1186 = t1187.
    DATA t1192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1192.
    DATA t1193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1193.
    DATA(t1194) = abap_true.
    IF t1194 = abap_true.
      DATA t1195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1195.
      DATA(t1196) = 1708.
      CLEAR t1195.
      CREATE OBJECT t1195.
      t1195->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1195->nval = t1196.
      t1193 = t1195.
    ELSE.
      DATA t1197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1197.
      t1193 = t1197.
    ENDIF.
    t1192 = t1193.
    t1167 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1168 i_kernel = t1174 i_op = t1180 i_cloud_47cd = t1186 i_ce = t1192 ).
    CREATE OBJECT t1167->zlnt_view_ownkeys_b0e8086400eb.
    t1167->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1198.
    IF t1167->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1167->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1198 ).
    ENDIF.
    DATA t1199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1199.
    IF t1167->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1167->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1199 ).
    ENDIF.
    DATA t1200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1200.
    IF t1167->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1167->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1200 ).
    ENDIF.
    DATA t1201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1201.
    IF t1167->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1167->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1201 ).
    ENDIF.
    DATA t1202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1202.
    IF t1167->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1167->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1202 ).
    ENDIF.
    CREATE OBJECT t1167->zlnt_json_ownkeys_70e5fd461788.
    t1167->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1203) = |abap|.
    DATA t1204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1204.
    IF t1167->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1167->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1203 p1 = t1204 ).
    ENDIF.
    DATA(t1205) = |kernel|.
    DATA t1206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1206.
    IF t1167->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1167->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1205 p1 = t1206 ).
    ENDIF.
    DATA(t1207) = |op|.
    DATA t1208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1208.
    IF t1167->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1167->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1207 p1 = t1208 ).
    ENDIF.
    DATA(t1209) = |cloud|.
    DATA t1210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1210.
    IF t1167->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1167->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1209 p1 = t1210 ).
    ENDIF.
    DATA(t1211) = |ce|.
    DATA t1212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1212.
    IF t1167->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1167->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1211 p1 = t1212 ).
    ENDIF.
    t1165 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1166 i_f1 = t1167 ).
    t1164->load( ).
    APPEND t1165 TO t1164->items.
    t1164->save( ).
    DATA(t1213) = t84.
    DATA t1214 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t1214.
    DATA(t1215) = |v770|.
    DATA t1216 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t1216.
    DATA t1217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1217.
    DATA t1218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1218.
    DATA(t1219) = abap_true.
    IF t1219 = abap_true.
      DATA t1220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1220.
      DATA(t1221) = |7.70|.
      CLEAR t1220.
      CREATE OBJECT t1220.
      t1220->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1220->sval = t1221.
      t1218 = t1220.
    ELSE.
      DATA t1222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1222.
      t1218 = t1222.
    ENDIF.
    t1217 = t1218.
    DATA t1223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1223.
    DATA t1224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1224.
    DATA(t1225) = abap_true.
    IF t1225 = abap_true.
      DATA t1226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1226.
      DATA(t1227) = 753.
      CLEAR t1226.
      CREATE OBJECT t1226.
      t1226->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1226->nval = t1227.
      t1224 = t1226.
    ELSE.
      DATA t1228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1228.
      t1224 = t1228.
    ENDIF.
    t1223 = t1224.
    DATA t1229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1229.
    DATA t1230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1230.
    DATA(t1231) = abap_true.
    IF t1231 = abap_true.
      DATA t1232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1232.
      DATA(t1233) = 753.
      CLEAR t1232.
      CREATE OBJECT t1232.
      t1232->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1232->nval = t1233.
      t1230 = t1232.
    ELSE.
      DATA t1234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1234.
      t1230 = t1234.
    ENDIF.
    t1229 = t1230.
    DATA t1235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1235.
    DATA t1236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1236.
    DATA(t1237) = abap_true.
    IF t1237 = abap_true.
      DATA t1238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1238.
      DATA(t1239) = 770.
      CLEAR t1238.
      CREATE OBJECT t1238.
      t1238->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1238->nval = t1239.
      t1236 = t1238.
    ELSE.
      DATA t1240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1240.
      t1236 = t1240.
    ENDIF.
    t1235 = t1236.
    DATA t1241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1241.
    DATA t1242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1242.
    DATA(t1243) = abap_true.
    IF t1243 = abap_true.
      DATA t1244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1244.
      DATA(t1245) = 1711.
      CLEAR t1244.
      CREATE OBJECT t1244.
      t1244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1244->nval = t1245.
      t1242 = t1244.
    ELSE.
      DATA t1246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1246.
      t1242 = t1246.
    ENDIF.
    t1241 = t1242.
    t1216 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1217 i_kernel = t1223 i_op = t1229 i_cloud_47cd = t1235 i_ce = t1241 ).
    CREATE OBJECT t1216->zlnt_view_ownkeys_b0e8086400eb.
    t1216->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1247.
    IF t1216->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1216->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1247 ).
    ENDIF.
    DATA t1248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1248.
    IF t1216->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1216->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1248 ).
    ENDIF.
    DATA t1249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1249.
    IF t1216->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1216->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1249 ).
    ENDIF.
    DATA t1250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1250.
    IF t1216->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1216->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1250 ).
    ENDIF.
    DATA t1251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1251.
    IF t1216->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1216->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1251 ).
    ENDIF.
    CREATE OBJECT t1216->zlnt_json_ownkeys_70e5fd461788.
    t1216->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1252) = |abap|.
    DATA t1253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1253.
    IF t1216->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1216->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1252 p1 = t1253 ).
    ENDIF.
    DATA(t1254) = |kernel|.
    DATA t1255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1255.
    IF t1216->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1216->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1254 p1 = t1255 ).
    ENDIF.
    DATA(t1256) = |op|.
    DATA t1257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1257.
    IF t1216->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1216->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1256 p1 = t1257 ).
    ENDIF.
    DATA(t1258) = |cloud|.
    DATA t1259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1259.
    IF t1216->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1216->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1258 p1 = t1259 ).
    ENDIF.
    DATA(t1260) = |ce|.
    DATA t1261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1261.
    IF t1216->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1216->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1260 p1 = t1261 ).
    ENDIF.
    t1214 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1215 i_f1 = t1216 ).
    t1213->load( ).
    APPEND t1214 TO t1213->items.
    t1213->save( ).
    DATA(t1262) = t84.
    DATA t1263 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t1263.
    DATA(t1264) = |v771|.
    DATA t1265 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t1265.
    DATA t1266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1266.
    DATA t1267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1267.
    DATA(t1268) = abap_true.
    IF t1268 = abap_true.
      DATA t1269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1269.
      DATA(t1270) = |7.71|.
      CLEAR t1269.
      CREATE OBJECT t1269.
      t1269->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1269->sval = t1270.
      t1267 = t1269.
    ELSE.
      DATA t1271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1271.
      t1267 = t1271.
    ENDIF.
    t1266 = t1267.
    DATA t1272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1272.
    DATA t1273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1273.
    DATA(t1274) = abap_true.
    IF t1274 = abap_true.
      DATA t1275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1275.
      DATA(t1276) = 771.
      CLEAR t1275.
      CREATE OBJECT t1275.
      t1275->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1275->nval = t1276.
      t1273 = t1275.
    ELSE.
      DATA t1277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1277.
      t1273 = t1277.
    ENDIF.
    t1272 = t1273.
    DATA t1278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1278.
    DATA t1279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1279.
    DATA(t1280) = abap_true.
    IF t1280 = abap_true.
      DATA t1281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1281.
      DATA(t1282) = 753.
      CLEAR t1281.
      CREATE OBJECT t1281.
      t1281->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1281->nval = t1282.
      t1279 = t1281.
    ELSE.
      DATA t1283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1283.
      t1279 = t1283.
    ENDIF.
    t1278 = t1279.
    DATA t1284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1284.
    DATA t1285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1285.
    DATA(t1286) = abap_true.
    IF t1286 = abap_true.
      DATA t1287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1287.
      DATA(t1288) = 771.
      CLEAR t1287.
      CREATE OBJECT t1287.
      t1287->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1287->nval = t1288.
      t1285 = t1287.
    ELSE.
      DATA t1289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1289.
      t1285 = t1289.
    ENDIF.
    t1284 = t1285.
    DATA t1290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1290.
    DATA t1291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1291.
    DATA(t1292) = abap_true.
    IF t1292 = abap_true.
      DATA t1293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1293.
      DATA(t1294) = 1802.
      CLEAR t1293.
      CREATE OBJECT t1293.
      t1293->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1293->nval = t1294.
      t1291 = t1293.
    ELSE.
      DATA t1295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1295.
      t1291 = t1295.
    ENDIF.
    t1290 = t1291.
    t1265 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1266 i_kernel = t1272 i_op = t1278 i_cloud_47cd = t1284 i_ce = t1290 ).
    CREATE OBJECT t1265->zlnt_view_ownkeys_b0e8086400eb.
    t1265->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1296.
    IF t1265->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1265->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1296 ).
    ENDIF.
    DATA t1297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1297.
    IF t1265->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1265->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1297 ).
    ENDIF.
    DATA t1298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1298.
    IF t1265->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1265->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1298 ).
    ENDIF.
    DATA t1299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1299.
    IF t1265->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1265->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1299 ).
    ENDIF.
    DATA t1300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1300.
    IF t1265->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1265->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1300 ).
    ENDIF.
    CREATE OBJECT t1265->zlnt_json_ownkeys_70e5fd461788.
    t1265->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1301) = |abap|.
    DATA t1302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1302.
    IF t1265->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1265->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1301 p1 = t1302 ).
    ENDIF.
    DATA(t1303) = |kernel|.
    DATA t1304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1304.
    IF t1265->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1265->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1303 p1 = t1304 ).
    ENDIF.
    DATA(t1305) = |op|.
    DATA t1306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1306.
    IF t1265->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1265->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1305 p1 = t1306 ).
    ENDIF.
    DATA(t1307) = |cloud|.
    DATA t1308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1308.
    IF t1265->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1265->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1307 p1 = t1308 ).
    ENDIF.
    DATA(t1309) = |ce|.
    DATA t1310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1310.
    IF t1265->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1265->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1309 p1 = t1310 ).
    ENDIF.
    t1263 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1264 i_f1 = t1265 ).
    t1262->load( ).
    APPEND t1263 TO t1262->items.
    t1262->save( ).
    DATA(t1311) = t84.
    DATA t1312 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t1312.
    DATA(t1313) = |v772|.
    DATA t1314 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t1314.
    DATA t1315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1315.
    DATA t1316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1316.
    DATA(t1317) = abap_true.
    IF t1317 = abap_true.
      DATA t1318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1318.
      DATA(t1319) = |7.72|.
      CLEAR t1318.
      CREATE OBJECT t1318.
      t1318->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1318->sval = t1319.
      t1316 = t1318.
    ELSE.
      DATA t1320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1320.
      t1316 = t1320.
    ENDIF.
    t1315 = t1316.
    DATA t1321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1321.
    DATA t1322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1322.
    DATA(t1323) = abap_true.
    IF t1323 = abap_true.
      DATA t1324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1324.
      DATA(t1325) = 772.
      CLEAR t1324.
      CREATE OBJECT t1324.
      t1324->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1324->nval = t1325.
      t1322 = t1324.
    ELSE.
      DATA t1326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1326.
      t1322 = t1326.
    ENDIF.
    t1321 = t1322.
    DATA t1327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1327.
    DATA t1328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1328.
    DATA(t1329) = abap_true.
    IF t1329 = abap_true.
      DATA t1330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1330.
      DATA(t1331) = 753.
      CLEAR t1330.
      CREATE OBJECT t1330.
      t1330->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1330->nval = t1331.
      t1328 = t1330.
    ELSE.
      DATA t1332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1332.
      t1328 = t1332.
    ENDIF.
    t1327 = t1328.
    DATA t1333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1333.
    DATA t1334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1334.
    DATA(t1335) = abap_true.
    IF t1335 = abap_true.
      DATA t1336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1336.
      DATA(t1337) = 772.
      CLEAR t1336.
      CREATE OBJECT t1336.
      t1336->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1336->nval = t1337.
      t1334 = t1336.
    ELSE.
      DATA t1338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1338.
      t1334 = t1338.
    ENDIF.
    t1333 = t1334.
    DATA t1339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1339.
    DATA t1340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1340.
    DATA(t1341) = abap_true.
    IF t1341 = abap_true.
      DATA t1342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1342.
      DATA(t1343) = 1805.
      CLEAR t1342.
      CREATE OBJECT t1342.
      t1342->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1342->nval = t1343.
      t1340 = t1342.
    ELSE.
      DATA t1344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1344.
      t1340 = t1344.
    ENDIF.
    t1339 = t1340.
    t1314 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1315 i_kernel = t1321 i_op = t1327 i_cloud_47cd = t1333 i_ce = t1339 ).
    CREATE OBJECT t1314->zlnt_view_ownkeys_b0e8086400eb.
    t1314->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1345.
    IF t1314->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1314->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1345 ).
    ENDIF.
    DATA t1346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1346.
    IF t1314->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1314->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1346 ).
    ENDIF.
    DATA t1347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1347.
    IF t1314->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1314->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1347 ).
    ENDIF.
    DATA t1348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1348.
    IF t1314->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1314->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1348 ).
    ENDIF.
    DATA t1349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1349.
    IF t1314->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1314->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1349 ).
    ENDIF.
    CREATE OBJECT t1314->zlnt_json_ownkeys_70e5fd461788.
    t1314->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1350) = |abap|.
    DATA t1351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1351.
    IF t1314->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1314->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1350 p1 = t1351 ).
    ENDIF.
    DATA(t1352) = |kernel|.
    DATA t1353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1353.
    IF t1314->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1314->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1352 p1 = t1353 ).
    ENDIF.
    DATA(t1354) = |op|.
    DATA t1355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1355.
    IF t1314->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1314->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1354 p1 = t1355 ).
    ENDIF.
    DATA(t1356) = |cloud|.
    DATA t1357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1357.
    IF t1314->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1314->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1356 p1 = t1357 ).
    ENDIF.
    DATA(t1358) = |ce|.
    DATA t1359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1359.
    IF t1314->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1314->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1358 p1 = t1359 ).
    ENDIF.
    t1312 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1313 i_f1 = t1314 ).
    t1311->load( ).
    APPEND t1312 TO t1311->items.
    t1311->save( ).
    DATA(t1360) = t84.
    DATA t1361 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t1361.
    DATA(t1362) = |v773|.
    DATA t1363 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t1363.
    DATA t1364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1364.
    DATA t1365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1365.
    DATA(t1366) = abap_true.
    IF t1366 = abap_true.
      DATA t1367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1367.
      DATA(t1368) = |7.73|.
      CLEAR t1367.
      CREATE OBJECT t1367.
      t1367->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1367->sval = t1368.
      t1365 = t1367.
    ELSE.
      DATA t1369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1369.
      t1365 = t1369.
    ENDIF.
    t1364 = t1365.
    DATA t1370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1370.
    DATA t1371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1371.
    DATA(t1372) = abap_true.
    IF t1372 = abap_true.
      DATA t1373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1373.
      DATA(t1374) = 773.
      CLEAR t1373.
      CREATE OBJECT t1373.
      t1373->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1373->nval = t1374.
      t1371 = t1373.
    ELSE.
      DATA t1375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1375.
      t1371 = t1375.
    ENDIF.
    t1370 = t1371.
    DATA t1376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1376.
    DATA t1377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1377.
    DATA(t1378) = abap_true.
    IF t1378 = abap_true.
      DATA t1379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1379.
      DATA(t1380) = 753.
      CLEAR t1379.
      CREATE OBJECT t1379.
      t1379->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1379->nval = t1380.
      t1377 = t1379.
    ELSE.
      DATA t1381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1381.
      t1377 = t1381.
    ENDIF.
    t1376 = t1377.
    DATA t1382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1382.
    DATA t1383 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1383.
    DATA(t1384) = abap_true.
    IF t1384 = abap_true.
      DATA t1385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1385.
      DATA(t1386) = 773.
      CLEAR t1385.
      CREATE OBJECT t1385.
      t1385->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1385->nval = t1386.
      t1383 = t1385.
    ELSE.
      DATA t1387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1387.
      t1383 = t1387.
    ENDIF.
    t1382 = t1383.
    DATA t1388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1388.
    DATA t1389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1389.
    DATA(t1390) = abap_true.
    IF t1390 = abap_true.
      DATA t1391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1391.
      DATA(t1392) = 1808.
      CLEAR t1391.
      CREATE OBJECT t1391.
      t1391->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1391->nval = t1392.
      t1389 = t1391.
    ELSE.
      DATA t1393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1393.
      t1389 = t1393.
    ENDIF.
    t1388 = t1389.
    t1363 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1364 i_kernel = t1370 i_op = t1376 i_cloud_47cd = t1382 i_ce = t1388 ).
    CREATE OBJECT t1363->zlnt_view_ownkeys_b0e8086400eb.
    t1363->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1394.
    IF t1363->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1394 ).
    ENDIF.
    DATA t1395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1395.
    IF t1363->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1395 ).
    ENDIF.
    DATA t1396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1396.
    IF t1363->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1396 ).
    ENDIF.
    DATA t1397 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1397.
    IF t1363->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1397 ).
    ENDIF.
    DATA t1398 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1398.
    IF t1363->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1398 ).
    ENDIF.
    CREATE OBJECT t1363->zlnt_json_ownkeys_70e5fd461788.
    t1363->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1399) = |abap|.
    DATA t1400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1400.
    IF t1363->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1363->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1399 p1 = t1400 ).
    ENDIF.
    DATA(t1401) = |kernel|.
    DATA t1402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1402.
    IF t1363->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1363->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1401 p1 = t1402 ).
    ENDIF.
    DATA(t1403) = |op|.
    DATA t1404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1404.
    IF t1363->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1363->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1403 p1 = t1404 ).
    ENDIF.
    DATA(t1405) = |cloud|.
    DATA t1406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1406.
    IF t1363->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1363->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1405 p1 = t1406 ).
    ENDIF.
    DATA(t1407) = |ce|.
    DATA t1408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1408.
    IF t1363->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1363->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1407 p1 = t1408 ).
    ENDIF.
    t1361 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1362 i_f1 = t1363 ).
    t1360->load( ).
    APPEND t1361 TO t1360->items.
    t1360->save( ).
    DATA(t1409) = t84.
    DATA t1410 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t1410.
    DATA(t1411) = |v774|.
    DATA t1412 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t1412.
    DATA t1413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1413.
    DATA t1414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1414.
    DATA(t1415) = abap_true.
    IF t1415 = abap_true.
      DATA t1416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1416.
      DATA(t1417) = |7.74|.
      CLEAR t1416.
      CREATE OBJECT t1416.
      t1416->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1416->sval = t1417.
      t1414 = t1416.
    ELSE.
      DATA t1418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1418.
      t1414 = t1418.
    ENDIF.
    t1413 = t1414.
    DATA t1419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1419.
    DATA t1420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1420.
    DATA(t1421) = abap_true.
    IF t1421 = abap_true.
      DATA t1422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1422.
      DATA(t1423) = 774.
      CLEAR t1422.
      CREATE OBJECT t1422.
      t1422->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1422->nval = t1423.
      t1420 = t1422.
    ELSE.
      DATA t1424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1424.
      t1420 = t1424.
    ENDIF.
    t1419 = t1420.
    DATA t1425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1425.
    DATA t1426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1426.
    DATA(t1427) = abap_true.
    IF t1427 = abap_true.
      DATA t1428 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1428.
      DATA(t1429) = 754.
      CLEAR t1428.
      CREATE OBJECT t1428.
      t1428->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1428->nval = t1429.
      t1426 = t1428.
    ELSE.
      DATA t1430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1430.
      t1426 = t1430.
    ENDIF.
    t1425 = t1426.
    DATA t1431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1431.
    DATA t1432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1432.
    DATA(t1433) = abap_true.
    IF t1433 = abap_true.
      DATA t1434 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1434.
      DATA(t1435) = 774.
      CLEAR t1434.
      CREATE OBJECT t1434.
      t1434->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1434->nval = t1435.
      t1432 = t1434.
    ELSE.
      DATA t1436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1436.
      t1432 = t1436.
    ENDIF.
    t1431 = t1432.
    DATA t1437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1437.
    DATA t1438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1438.
    DATA(t1439) = abap_true.
    IF t1439 = abap_true.
      DATA t1440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1440.
      DATA(t1441) = 1811.
      CLEAR t1440.
      CREATE OBJECT t1440.
      t1440->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1440->nval = t1441.
      t1438 = t1440.
    ELSE.
      DATA t1442 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1442.
      t1438 = t1442.
    ENDIF.
    t1437 = t1438.
    t1412 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1413 i_kernel = t1419 i_op = t1425 i_cloud_47cd = t1431 i_ce = t1437 ).
    CREATE OBJECT t1412->zlnt_view_ownkeys_b0e8086400eb.
    t1412->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1443 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1443.
    IF t1412->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1412->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1443 ).
    ENDIF.
    DATA t1444 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1444.
    IF t1412->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1412->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1444 ).
    ENDIF.
    DATA t1445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1445.
    IF t1412->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1412->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1445 ).
    ENDIF.
    DATA t1446 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1446.
    IF t1412->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1412->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1446 ).
    ENDIF.
    DATA t1447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1447.
    IF t1412->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1412->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1447 ).
    ENDIF.
    CREATE OBJECT t1412->zlnt_json_ownkeys_70e5fd461788.
    t1412->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1448) = |abap|.
    DATA t1449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1449.
    IF t1412->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1412->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1448 p1 = t1449 ).
    ENDIF.
    DATA(t1450) = |kernel|.
    DATA t1451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1451.
    IF t1412->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1412->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1450 p1 = t1451 ).
    ENDIF.
    DATA(t1452) = |op|.
    DATA t1453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1453.
    IF t1412->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1412->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1452 p1 = t1453 ).
    ENDIF.
    DATA(t1454) = |cloud|.
    DATA t1455 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1455.
    IF t1412->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1412->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1454 p1 = t1455 ).
    ENDIF.
    DATA(t1456) = |ce|.
    DATA t1457 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1457.
    IF t1412->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1412->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1456 p1 = t1457 ).
    ENDIF.
    t1410 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1411 i_f1 = t1412 ).
    t1409->load( ).
    APPEND t1410 TO t1409->items.
    t1409->save( ).
    DATA(t1458) = t84.
    DATA t1459 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t1459.
    DATA(t1460) = |v775|.
    DATA t1461 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t1461.
    DATA t1462 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1462.
    DATA t1463 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1463.
    DATA(t1464) = abap_true.
    IF t1464 = abap_true.
      DATA t1465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1465.
      DATA(t1466) = |7.75|.
      CLEAR t1465.
      CREATE OBJECT t1465.
      t1465->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1465->sval = t1466.
      t1463 = t1465.
    ELSE.
      DATA t1467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1467.
      t1463 = t1467.
    ENDIF.
    t1462 = t1463.
    DATA t1468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1468.
    DATA t1469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1469.
    DATA(t1470) = abap_true.
    IF t1470 = abap_true.
      DATA t1471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1471.
      DATA(t1472) = 775.
      CLEAR t1471.
      CREATE OBJECT t1471.
      t1471->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1471->nval = t1472.
      t1469 = t1471.
    ELSE.
      DATA t1473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1473.
      t1469 = t1473.
    ENDIF.
    t1468 = t1469.
    DATA t1474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1474.
    DATA t1475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1475.
    DATA(t1476) = abap_true.
    IF t1476 = abap_true.
      DATA t1477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1477.
      DATA(t1478) = 754.
      CLEAR t1477.
      CREATE OBJECT t1477.
      t1477->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1477->nval = t1478.
      t1475 = t1477.
    ELSE.
      DATA t1479 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1479.
      t1475 = t1479.
    ENDIF.
    t1474 = t1475.
    DATA t1480 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1480.
    DATA t1481 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1481.
    DATA(t1482) = abap_true.
    IF t1482 = abap_true.
      DATA t1483 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1483.
      DATA(t1484) = 775.
      CLEAR t1483.
      CREATE OBJECT t1483.
      t1483->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1483->nval = t1484.
      t1481 = t1483.
    ELSE.
      DATA t1485 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1485.
      t1481 = t1485.
    ENDIF.
    t1480 = t1481.
    DATA t1486 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1486.
    DATA t1487 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1487.
    DATA(t1488) = abap_true.
    IF t1488 = abap_true.
      DATA t1489 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1489.
      DATA(t1490) = 1902.
      CLEAR t1489.
      CREATE OBJECT t1489.
      t1489->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1489->nval = t1490.
      t1487 = t1489.
    ELSE.
      DATA t1491 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1491.
      t1487 = t1491.
    ENDIF.
    t1486 = t1487.
    t1461 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1462 i_kernel = t1468 i_op = t1474 i_cloud_47cd = t1480 i_ce = t1486 ).
    CREATE OBJECT t1461->zlnt_view_ownkeys_b0e8086400eb.
    t1461->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1492 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1492.
    IF t1461->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1461->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1492 ).
    ENDIF.
    DATA t1493 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1493.
    IF t1461->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1461->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1493 ).
    ENDIF.
    DATA t1494 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1494.
    IF t1461->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1461->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1494 ).
    ENDIF.
    DATA t1495 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1495.
    IF t1461->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1461->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1495 ).
    ENDIF.
    DATA t1496 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1496.
    IF t1461->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1461->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1496 ).
    ENDIF.
    CREATE OBJECT t1461->zlnt_json_ownkeys_70e5fd461788.
    t1461->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1497) = |abap|.
    DATA t1498 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1498.
    IF t1461->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1461->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1497 p1 = t1498 ).
    ENDIF.
    DATA(t1499) = |kernel|.
    DATA t1500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1500.
    IF t1461->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1461->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1499 p1 = t1500 ).
    ENDIF.
    DATA(t1501) = |op|.
    DATA t1502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1502.
    IF t1461->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1461->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1501 p1 = t1502 ).
    ENDIF.
    DATA(t1503) = |cloud|.
    DATA t1504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1504.
    IF t1461->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1461->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1503 p1 = t1504 ).
    ENDIF.
    DATA(t1505) = |ce|.
    DATA t1506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1506.
    IF t1461->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1461->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1505 p1 = t1506 ).
    ENDIF.
    t1459 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1460 i_f1 = t1461 ).
    t1458->load( ).
    APPEND t1459 TO t1458->items.
    t1458->save( ).
    DATA(t1507) = t84.
    DATA t1508 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t1508.
    DATA(t1509) = |v776|.
    DATA t1510 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t1510.
    DATA t1511 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1511.
    DATA t1512 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1512.
    DATA(t1513) = abap_true.
    IF t1513 = abap_true.
      DATA t1514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1514.
      DATA(t1515) = |7.76|.
      CLEAR t1514.
      CREATE OBJECT t1514.
      t1514->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1514->sval = t1515.
      t1512 = t1514.
    ELSE.
      DATA t1516 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1516.
      t1512 = t1516.
    ENDIF.
    t1511 = t1512.
    DATA t1517 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1517.
    DATA t1518 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1518.
    DATA(t1519) = abap_true.
    IF t1519 = abap_true.
      DATA t1520 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1520.
      DATA(t1521) = 776.
      CLEAR t1520.
      CREATE OBJECT t1520.
      t1520->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1520->nval = t1521.
      t1518 = t1520.
    ELSE.
      DATA t1522 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1522.
      t1518 = t1522.
    ENDIF.
    t1517 = t1518.
    DATA t1523 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1523.
    DATA t1524 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1524.
    DATA(t1525) = abap_true.
    IF t1525 = abap_true.
      DATA t1526 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1526.
      DATA(t1527) = 754.
      CLEAR t1526.
      CREATE OBJECT t1526.
      t1526->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1526->nval = t1527.
      t1524 = t1526.
    ELSE.
      DATA t1528 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1528.
      t1524 = t1528.
    ENDIF.
    t1523 = t1524.
    DATA t1529 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1529.
    DATA t1530 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1530.
    DATA(t1531) = abap_true.
    IF t1531 = abap_true.
      DATA t1532 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1532.
      DATA(t1533) = 776.
      CLEAR t1532.
      CREATE OBJECT t1532.
      t1532->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1532->nval = t1533.
      t1530 = t1532.
    ELSE.
      DATA t1534 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1534.
      t1530 = t1534.
    ENDIF.
    t1529 = t1530.
    DATA t1535 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1535.
    DATA t1536 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1536.
    DATA(t1537) = abap_true.
    IF t1537 = abap_true.
      DATA t1538 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1538.
      DATA(t1539) = 1905.
      CLEAR t1538.
      CREATE OBJECT t1538.
      t1538->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1538->nval = t1539.
      t1536 = t1538.
    ELSE.
      DATA t1540 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1540.
      t1536 = t1540.
    ENDIF.
    t1535 = t1536.
    t1510 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1511 i_kernel = t1517 i_op = t1523 i_cloud_47cd = t1529 i_ce = t1535 ).
    CREATE OBJECT t1510->zlnt_view_ownkeys_b0e8086400eb.
    t1510->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1541 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1541.
    IF t1510->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1510->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1541 ).
    ENDIF.
    DATA t1542 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1542.
    IF t1510->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1510->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1542 ).
    ENDIF.
    DATA t1543 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1543.
    IF t1510->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1510->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1543 ).
    ENDIF.
    DATA t1544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1544.
    IF t1510->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1510->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1544 ).
    ENDIF.
    DATA t1545 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1545.
    IF t1510->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1510->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1545 ).
    ENDIF.
    CREATE OBJECT t1510->zlnt_json_ownkeys_70e5fd461788.
    t1510->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1546) = |abap|.
    DATA t1547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1547.
    IF t1510->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1510->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1546 p1 = t1547 ).
    ENDIF.
    DATA(t1548) = |kernel|.
    DATA t1549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1549.
    IF t1510->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1510->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1548 p1 = t1549 ).
    ENDIF.
    DATA(t1550) = |op|.
    DATA t1551 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1551.
    IF t1510->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1510->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1550 p1 = t1551 ).
    ENDIF.
    DATA(t1552) = |cloud|.
    DATA t1553 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1553.
    IF t1510->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1510->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1552 p1 = t1553 ).
    ENDIF.
    DATA(t1554) = |ce|.
    DATA t1555 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1555.
    IF t1510->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1510->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1554 p1 = t1555 ).
    ENDIF.
    t1508 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1509 i_f1 = t1510 ).
    t1507->load( ).
    APPEND t1508 TO t1507->items.
    t1507->save( ).
    DATA(t1556) = t84.
    DATA t1557 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t1557.
    DATA(t1558) = |v777|.
    DATA t1559 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t1559.
    DATA t1560 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1560.
    DATA t1561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1561.
    DATA(t1562) = abap_true.
    IF t1562 = abap_true.
      DATA t1563 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1563.
      DATA(t1564) = |7.77|.
      CLEAR t1563.
      CREATE OBJECT t1563.
      t1563->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1563->sval = t1564.
      t1561 = t1563.
    ELSE.
      DATA t1565 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1565.
      t1561 = t1565.
    ENDIF.
    t1560 = t1561.
    DATA t1566 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1566.
    DATA t1567 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1567.
    DATA(t1568) = abap_true.
    IF t1568 = abap_true.
      DATA t1569 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1569.
      DATA(t1570) = 777.
      CLEAR t1569.
      CREATE OBJECT t1569.
      t1569->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1569->nval = t1570.
      t1567 = t1569.
    ELSE.
      DATA t1571 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1571.
      t1567 = t1571.
    ENDIF.
    t1566 = t1567.
    DATA t1572 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1572.
    DATA t1573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1573.
    DATA(t1574) = abap_true.
    IF t1574 = abap_true.
      DATA t1575 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1575.
      DATA(t1576) = 754.
      CLEAR t1575.
      CREATE OBJECT t1575.
      t1575->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1575->nval = t1576.
      t1573 = t1575.
    ELSE.
      DATA t1577 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1577.
      t1573 = t1577.
    ENDIF.
    t1572 = t1573.
    DATA t1578 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1578.
    DATA t1579 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1579.
    DATA(t1580) = abap_true.
    IF t1580 = abap_true.
      DATA t1581 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1581.
      DATA(t1582) = 777.
      CLEAR t1581.
      CREATE OBJECT t1581.
      t1581->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1581->nval = t1582.
      t1579 = t1581.
    ELSE.
      DATA t1583 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1583.
      t1579 = t1583.
    ENDIF.
    t1578 = t1579.
    DATA t1584 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1584.
    DATA t1585 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1585.
    DATA(t1586) = abap_true.
    IF t1586 = abap_true.
      DATA t1587 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1587.
      DATA(t1588) = 1908.
      CLEAR t1587.
      CREATE OBJECT t1587.
      t1587->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1587->nval = t1588.
      t1585 = t1587.
    ELSE.
      DATA t1589 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1589.
      t1585 = t1589.
    ENDIF.
    t1584 = t1585.
    t1559 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1560 i_kernel = t1566 i_op = t1572 i_cloud_47cd = t1578 i_ce = t1584 ).
    CREATE OBJECT t1559->zlnt_view_ownkeys_b0e8086400eb.
    t1559->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1590 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1590.
    IF t1559->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1559->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1590 ).
    ENDIF.
    DATA t1591 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1591.
    IF t1559->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1559->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1591 ).
    ENDIF.
    DATA t1592 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1592.
    IF t1559->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1559->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1592 ).
    ENDIF.
    DATA t1593 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1593.
    IF t1559->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1559->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1593 ).
    ENDIF.
    DATA t1594 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1594.
    IF t1559->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1559->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1594 ).
    ENDIF.
    CREATE OBJECT t1559->zlnt_json_ownkeys_70e5fd461788.
    t1559->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1595) = |abap|.
    DATA t1596 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1596.
    IF t1559->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1559->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1595 p1 = t1596 ).
    ENDIF.
    DATA(t1597) = |kernel|.
    DATA t1598 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1598.
    IF t1559->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1559->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1597 p1 = t1598 ).
    ENDIF.
    DATA(t1599) = |op|.
    DATA t1600 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1600.
    IF t1559->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1559->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1599 p1 = t1600 ).
    ENDIF.
    DATA(t1601) = |cloud|.
    DATA t1602 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1602.
    IF t1559->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1559->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1601 p1 = t1602 ).
    ENDIF.
    DATA(t1603) = |ce|.
    DATA t1604 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1604.
    IF t1559->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1559->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1603 p1 = t1604 ).
    ENDIF.
    t1557 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1558 i_f1 = t1559 ).
    t1556->load( ).
    APPEND t1557 TO t1556->items.
    t1556->save( ).
    DATA(t1605) = t84.
    DATA t1606 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t1606.
    DATA(t1607) = |v778|.
    DATA t1608 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t1608.
    DATA t1609 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1609.
    DATA t1610 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1610.
    DATA(t1611) = abap_true.
    IF t1611 = abap_true.
      DATA t1612 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1612.
      DATA(t1613) = |7.78|.
      CLEAR t1612.
      CREATE OBJECT t1612.
      t1612->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1612->sval = t1613.
      t1610 = t1612.
    ELSE.
      DATA t1614 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1614.
      t1610 = t1614.
    ENDIF.
    t1609 = t1610.
    DATA t1615 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1615.
    DATA t1616 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1616.
    DATA(t1617) = abap_true.
    IF t1617 = abap_true.
      DATA t1618 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1618.
      DATA(t1619) = 778.
      CLEAR t1618.
      CREATE OBJECT t1618.
      t1618->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1618->nval = t1619.
      t1616 = t1618.
    ELSE.
      DATA t1620 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1620.
      t1616 = t1620.
    ENDIF.
    t1615 = t1616.
    DATA t1621 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1621.
    DATA t1622 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1622.
    DATA(t1623) = abap_true.
    IF t1623 = abap_true.
      DATA t1624 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1624.
      DATA(t1625) = 755.
      CLEAR t1624.
      CREATE OBJECT t1624.
      t1624->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1624->nval = t1625.
      t1622 = t1624.
    ELSE.
      DATA t1626 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1626.
      t1622 = t1626.
    ENDIF.
    t1621 = t1622.
    DATA t1627 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1627.
    DATA t1628 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1628.
    DATA(t1629) = abap_true.
    IF t1629 = abap_true.
      DATA t1630 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1630.
      DATA(t1631) = 778.
      CLEAR t1630.
      CREATE OBJECT t1630.
      t1630->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1630->nval = t1631.
      t1628 = t1630.
    ELSE.
      DATA t1632 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1632.
      t1628 = t1632.
    ENDIF.
    t1627 = t1628.
    DATA t1633 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1633.
    DATA t1634 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1634.
    DATA(t1635) = abap_true.
    IF t1635 = abap_true.
      DATA t1636 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1636.
      DATA(t1637) = 1911.
      CLEAR t1636.
      CREATE OBJECT t1636.
      t1636->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1636->nval = t1637.
      t1634 = t1636.
    ELSE.
      DATA t1638 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1638.
      t1634 = t1638.
    ENDIF.
    t1633 = t1634.
    t1608 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1609 i_kernel = t1615 i_op = t1621 i_cloud_47cd = t1627 i_ce = t1633 ).
    CREATE OBJECT t1608->zlnt_view_ownkeys_b0e8086400eb.
    t1608->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1639 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1639.
    IF t1608->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1608->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1639 ).
    ENDIF.
    DATA t1640 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1640.
    IF t1608->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1608->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1640 ).
    ENDIF.
    DATA t1641 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1641.
    IF t1608->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1608->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1641 ).
    ENDIF.
    DATA t1642 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1642.
    IF t1608->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1608->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1642 ).
    ENDIF.
    DATA t1643 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1643.
    IF t1608->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1608->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1643 ).
    ENDIF.
    CREATE OBJECT t1608->zlnt_json_ownkeys_70e5fd461788.
    t1608->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1644) = |abap|.
    DATA t1645 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1645.
    IF t1608->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1608->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1644 p1 = t1645 ).
    ENDIF.
    DATA(t1646) = |kernel|.
    DATA t1647 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1647.
    IF t1608->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1608->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1646 p1 = t1647 ).
    ENDIF.
    DATA(t1648) = |op|.
    DATA t1649 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1649.
    IF t1608->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1608->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1648 p1 = t1649 ).
    ENDIF.
    DATA(t1650) = |cloud|.
    DATA t1651 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1651.
    IF t1608->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1608->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1650 p1 = t1651 ).
    ENDIF.
    DATA(t1652) = |ce|.
    DATA t1653 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1653.
    IF t1608->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1608->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1652 p1 = t1653 ).
    ENDIF.
    t1606 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1607 i_f1 = t1608 ).
    t1605->load( ).
    APPEND t1606 TO t1605->items.
    t1605->save( ).
    DATA(t1654) = t84.
    DATA t1655 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t1655.
    DATA(t1656) = |v779|.
    DATA t1657 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t1657.
    DATA t1658 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1658.
    DATA t1659 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1659.
    DATA(t1660) = abap_true.
    IF t1660 = abap_true.
      DATA t1661 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1661.
      DATA(t1662) = |7.79|.
      CLEAR t1661.
      CREATE OBJECT t1661.
      t1661->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1661->sval = t1662.
      t1659 = t1661.
    ELSE.
      DATA t1663 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1663.
      t1659 = t1663.
    ENDIF.
    t1658 = t1659.
    DATA t1664 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1664.
    DATA t1665 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1665.
    DATA(t1666) = abap_true.
    IF t1666 = abap_true.
      DATA t1667 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1667.
      DATA(t1668) = 779.
      CLEAR t1667.
      CREATE OBJECT t1667.
      t1667->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1667->nval = t1668.
      t1665 = t1667.
    ELSE.
      DATA t1669 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1669.
      t1665 = t1669.
    ENDIF.
    t1664 = t1665.
    DATA t1670 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1670.
    DATA t1671 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1671.
    DATA(t1672) = abap_true.
    IF t1672 = abap_true.
      DATA t1673 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1673.
      DATA(t1674) = 755.
      CLEAR t1673.
      CREATE OBJECT t1673.
      t1673->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1673->nval = t1674.
      t1671 = t1673.
    ELSE.
      DATA t1675 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1675.
      t1671 = t1675.
    ENDIF.
    t1670 = t1671.
    DATA t1676 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1676.
    DATA t1677 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1677.
    DATA(t1678) = abap_true.
    IF t1678 = abap_true.
      DATA t1679 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1679.
      DATA(t1680) = 779.
      CLEAR t1679.
      CREATE OBJECT t1679.
      t1679->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1679->nval = t1680.
      t1677 = t1679.
    ELSE.
      DATA t1681 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1681.
      t1677 = t1681.
    ENDIF.
    t1676 = t1677.
    DATA t1682 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1682.
    DATA t1683 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1683.
    DATA(t1684) = abap_true.
    IF t1684 = abap_true.
      DATA t1685 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1685.
      DATA(t1686) = 2002.
      CLEAR t1685.
      CREATE OBJECT t1685.
      t1685->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1685->nval = t1686.
      t1683 = t1685.
    ELSE.
      DATA t1687 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1687.
      t1683 = t1687.
    ENDIF.
    t1682 = t1683.
    t1657 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1658 i_kernel = t1664 i_op = t1670 i_cloud_47cd = t1676 i_ce = t1682 ).
    CREATE OBJECT t1657->zlnt_view_ownkeys_b0e8086400eb.
    t1657->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1688 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1688.
    IF t1657->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1657->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1688 ).
    ENDIF.
    DATA t1689 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1689.
    IF t1657->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1657->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1689 ).
    ENDIF.
    DATA t1690 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1690.
    IF t1657->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1657->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1690 ).
    ENDIF.
    DATA t1691 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1691.
    IF t1657->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1657->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1691 ).
    ENDIF.
    DATA t1692 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1692.
    IF t1657->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1657->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1692 ).
    ENDIF.
    CREATE OBJECT t1657->zlnt_json_ownkeys_70e5fd461788.
    t1657->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1693) = |abap|.
    DATA t1694 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1694.
    IF t1657->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1657->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1693 p1 = t1694 ).
    ENDIF.
    DATA(t1695) = |kernel|.
    DATA t1696 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1696.
    IF t1657->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1657->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1695 p1 = t1696 ).
    ENDIF.
    DATA(t1697) = |op|.
    DATA t1698 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1698.
    IF t1657->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1657->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1697 p1 = t1698 ).
    ENDIF.
    DATA(t1699) = |cloud|.
    DATA t1700 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1700.
    IF t1657->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1657->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1699 p1 = t1700 ).
    ENDIF.
    DATA(t1701) = |ce|.
    DATA t1702 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1702.
    IF t1657->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1657->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1701 p1 = t1702 ).
    ENDIF.
    t1655 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1656 i_f1 = t1657 ).
    t1654->load( ).
    APPEND t1655 TO t1654->items.
    t1654->save( ).
    DATA(t1703) = t84.
    DATA t1704 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t1704.
    DATA(t1705) = |v780|.
    DATA t1706 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t1706.
    DATA t1707 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1707.
    DATA t1708 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1708.
    DATA(t1709) = abap_true.
    IF t1709 = abap_true.
      DATA t1710 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1710.
      DATA(t1711) = |7.80|.
      CLEAR t1710.
      CREATE OBJECT t1710.
      t1710->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1710->sval = t1711.
      t1708 = t1710.
    ELSE.
      DATA t1712 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1712.
      t1708 = t1712.
    ENDIF.
    t1707 = t1708.
    DATA t1713 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1713.
    DATA t1714 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1714.
    DATA(t1715) = abap_true.
    IF t1715 = abap_true.
      DATA t1716 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1716.
      DATA(t1717) = 780.
      CLEAR t1716.
      CREATE OBJECT t1716.
      t1716->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1716->nval = t1717.
      t1714 = t1716.
    ELSE.
      DATA t1718 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1718.
      t1714 = t1718.
    ENDIF.
    t1713 = t1714.
    DATA t1719 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1719.
    DATA t1720 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1720.
    DATA(t1721) = abap_true.
    IF t1721 = abap_true.
      DATA t1722 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1722.
      DATA(t1723) = 755.
      CLEAR t1722.
      CREATE OBJECT t1722.
      t1722->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1722->nval = t1723.
      t1720 = t1722.
    ELSE.
      DATA t1724 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1724.
      t1720 = t1724.
    ENDIF.
    t1719 = t1720.
    DATA t1725 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1725.
    DATA t1726 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1726.
    DATA(t1727) = abap_true.
    IF t1727 = abap_true.
      DATA t1728 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1728.
      DATA(t1729) = 780.
      CLEAR t1728.
      CREATE OBJECT t1728.
      t1728->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1728->nval = t1729.
      t1726 = t1728.
    ELSE.
      DATA t1730 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1730.
      t1726 = t1730.
    ENDIF.
    t1725 = t1726.
    DATA t1731 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1731.
    DATA t1732 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1732.
    DATA(t1733) = abap_true.
    IF t1733 = abap_true.
      DATA t1734 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1734.
      DATA(t1735) = 2005.
      CLEAR t1734.
      CREATE OBJECT t1734.
      t1734->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1734->nval = t1735.
      t1732 = t1734.
    ELSE.
      DATA t1736 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1736.
      t1732 = t1736.
    ENDIF.
    t1731 = t1732.
    t1706 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1707 i_kernel = t1713 i_op = t1719 i_cloud_47cd = t1725 i_ce = t1731 ).
    CREATE OBJECT t1706->zlnt_view_ownkeys_b0e8086400eb.
    t1706->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1737 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1737.
    IF t1706->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1706->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1737 ).
    ENDIF.
    DATA t1738 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1738.
    IF t1706->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1706->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1738 ).
    ENDIF.
    DATA t1739 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1739.
    IF t1706->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1706->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1739 ).
    ENDIF.
    DATA t1740 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1740.
    IF t1706->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1706->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1740 ).
    ENDIF.
    DATA t1741 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1741.
    IF t1706->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1706->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1741 ).
    ENDIF.
    CREATE OBJECT t1706->zlnt_json_ownkeys_70e5fd461788.
    t1706->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1742) = |abap|.
    DATA t1743 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1743.
    IF t1706->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1706->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1742 p1 = t1743 ).
    ENDIF.
    DATA(t1744) = |kernel|.
    DATA t1745 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1745.
    IF t1706->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1706->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1744 p1 = t1745 ).
    ENDIF.
    DATA(t1746) = |op|.
    DATA t1747 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1747.
    IF t1706->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1706->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1746 p1 = t1747 ).
    ENDIF.
    DATA(t1748) = |cloud|.
    DATA t1749 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1749.
    IF t1706->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1706->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1748 p1 = t1749 ).
    ENDIF.
    DATA(t1750) = |ce|.
    DATA t1751 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1751.
    IF t1706->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1706->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1750 p1 = t1751 ).
    ENDIF.
    t1704 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1705 i_f1 = t1706 ).
    t1703->load( ).
    APPEND t1704 TO t1703->items.
    t1703->save( ).
    DATA(t1752) = t84.
    DATA t1753 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t1753.
    DATA(t1754) = |v781|.
    DATA t1755 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t1755.
    DATA t1756 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1756.
    DATA t1757 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1757.
    DATA(t1758) = abap_true.
    IF t1758 = abap_true.
      DATA t1759 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1759.
      DATA(t1760) = |7.81|.
      CLEAR t1759.
      CREATE OBJECT t1759.
      t1759->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1759->sval = t1760.
      t1757 = t1759.
    ELSE.
      DATA t1761 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1761.
      t1757 = t1761.
    ENDIF.
    t1756 = t1757.
    DATA t1762 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1762.
    DATA t1763 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1763.
    DATA(t1764) = abap_true.
    IF t1764 = abap_true.
      DATA t1765 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1765.
      DATA(t1766) = 781.
      CLEAR t1765.
      CREATE OBJECT t1765.
      t1765->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1765->nval = t1766.
      t1763 = t1765.
    ELSE.
      DATA t1767 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1767.
      t1763 = t1767.
    ENDIF.
    t1762 = t1763.
    DATA t1768 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1768.
    DATA t1769 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1769.
    DATA(t1770) = abap_true.
    IF t1770 = abap_true.
      DATA t1771 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1771.
      DATA(t1772) = 755.
      CLEAR t1771.
      CREATE OBJECT t1771.
      t1771->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1771->nval = t1772.
      t1769 = t1771.
    ELSE.
      DATA t1773 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1773.
      t1769 = t1773.
    ENDIF.
    t1768 = t1769.
    DATA t1774 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1774.
    DATA t1775 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1775.
    DATA(t1776) = abap_true.
    IF t1776 = abap_true.
      DATA t1777 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1777.
      DATA(t1778) = 781.
      CLEAR t1777.
      CREATE OBJECT t1777.
      t1777->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1777->nval = t1778.
      t1775 = t1777.
    ELSE.
      DATA t1779 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1779.
      t1775 = t1779.
    ENDIF.
    t1774 = t1775.
    DATA t1780 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1780.
    DATA t1781 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1781.
    DATA(t1782) = abap_true.
    IF t1782 = abap_true.
      DATA t1783 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1783.
      DATA(t1784) = 2008.
      CLEAR t1783.
      CREATE OBJECT t1783.
      t1783->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1783->nval = t1784.
      t1781 = t1783.
    ELSE.
      DATA t1785 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1785.
      t1781 = t1785.
    ENDIF.
    t1780 = t1781.
    t1755 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1756 i_kernel = t1762 i_op = t1768 i_cloud_47cd = t1774 i_ce = t1780 ).
    CREATE OBJECT t1755->zlnt_view_ownkeys_b0e8086400eb.
    t1755->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1786 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1786.
    IF t1755->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1755->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1786 ).
    ENDIF.
    DATA t1787 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1787.
    IF t1755->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1755->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1787 ).
    ENDIF.
    DATA t1788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1788.
    IF t1755->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1755->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1788 ).
    ENDIF.
    DATA t1789 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1789.
    IF t1755->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1755->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1789 ).
    ENDIF.
    DATA t1790 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1790.
    IF t1755->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1755->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1790 ).
    ENDIF.
    CREATE OBJECT t1755->zlnt_json_ownkeys_70e5fd461788.
    t1755->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1791) = |abap|.
    DATA t1792 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1792.
    IF t1755->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1755->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1791 p1 = t1792 ).
    ENDIF.
    DATA(t1793) = |kernel|.
    DATA t1794 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1794.
    IF t1755->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1755->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1793 p1 = t1794 ).
    ENDIF.
    DATA(t1795) = |op|.
    DATA t1796 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1796.
    IF t1755->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1755->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1795 p1 = t1796 ).
    ENDIF.
    DATA(t1797) = |cloud|.
    DATA t1798 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1798.
    IF t1755->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1755->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1797 p1 = t1798 ).
    ENDIF.
    DATA(t1799) = |ce|.
    DATA t1800 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1800.
    IF t1755->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1755->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1799 p1 = t1800 ).
    ENDIF.
    t1753 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1754 i_f1 = t1755 ).
    t1752->load( ).
    APPEND t1753 TO t1752->items.
    t1752->save( ).
    DATA(t1801) = t84.
    DATA t1802 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t1802.
    DATA(t1803) = |v782|.
    DATA t1804 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t1804.
    DATA t1805 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1805.
    DATA t1806 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1806.
    DATA(t1807) = abap_true.
    IF t1807 = abap_true.
      DATA t1808 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1808.
      DATA(t1809) = |7.82|.
      CLEAR t1808.
      CREATE OBJECT t1808.
      t1808->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1808->sval = t1809.
      t1806 = t1808.
    ELSE.
      DATA t1810 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1810.
      t1806 = t1810.
    ENDIF.
    t1805 = t1806.
    DATA t1811 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1811.
    DATA t1812 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1812.
    DATA(t1813) = abap_true.
    IF t1813 = abap_true.
      DATA t1814 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1814.
      DATA(t1815) = 782.
      CLEAR t1814.
      CREATE OBJECT t1814.
      t1814->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1814->nval = t1815.
      t1812 = t1814.
    ELSE.
      DATA t1816 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1816.
      t1812 = t1816.
    ENDIF.
    t1811 = t1812.
    DATA t1817 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1817.
    DATA t1818 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1818.
    DATA(t1819) = abap_true.
    IF t1819 = abap_true.
      DATA t1820 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1820.
      DATA(t1821) = 756.
      CLEAR t1820.
      CREATE OBJECT t1820.
      t1820->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1820->nval = t1821.
      t1818 = t1820.
    ELSE.
      DATA t1822 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1822.
      t1818 = t1822.
    ENDIF.
    t1817 = t1818.
    DATA t1823 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1823.
    DATA t1824 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1824.
    DATA(t1825) = abap_true.
    IF t1825 = abap_true.
      DATA t1826 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1826.
      DATA(t1827) = 782.
      CLEAR t1826.
      CREATE OBJECT t1826.
      t1826->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1826->nval = t1827.
      t1824 = t1826.
    ELSE.
      DATA t1828 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1828.
      t1824 = t1828.
    ENDIF.
    t1823 = t1824.
    DATA t1829 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1829.
    DATA t1830 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1830.
    DATA(t1831) = abap_true.
    IF t1831 = abap_true.
      DATA t1832 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1832.
      DATA(t1833) = 2011.
      CLEAR t1832.
      CREATE OBJECT t1832.
      t1832->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1832->nval = t1833.
      t1830 = t1832.
    ELSE.
      DATA t1834 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1834.
      t1830 = t1834.
    ENDIF.
    t1829 = t1830.
    t1804 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1805 i_kernel = t1811 i_op = t1817 i_cloud_47cd = t1823 i_ce = t1829 ).
    CREATE OBJECT t1804->zlnt_view_ownkeys_b0e8086400eb.
    t1804->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1835 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1835.
    IF t1804->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1804->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1835 ).
    ENDIF.
    DATA t1836 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1836.
    IF t1804->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1804->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1836 ).
    ENDIF.
    DATA t1837 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1837.
    IF t1804->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1804->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1837 ).
    ENDIF.
    DATA t1838 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1838.
    IF t1804->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1804->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1838 ).
    ENDIF.
    DATA t1839 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1839.
    IF t1804->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1804->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1839 ).
    ENDIF.
    CREATE OBJECT t1804->zlnt_json_ownkeys_70e5fd461788.
    t1804->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1840) = |abap|.
    DATA t1841 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1841.
    IF t1804->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1804->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1840 p1 = t1841 ).
    ENDIF.
    DATA(t1842) = |kernel|.
    DATA t1843 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1843.
    IF t1804->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1804->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1842 p1 = t1843 ).
    ENDIF.
    DATA(t1844) = |op|.
    DATA t1845 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1845.
    IF t1804->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1804->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1844 p1 = t1845 ).
    ENDIF.
    DATA(t1846) = |cloud|.
    DATA t1847 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1847.
    IF t1804->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1804->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1846 p1 = t1847 ).
    ENDIF.
    DATA(t1848) = |ce|.
    DATA t1849 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1849.
    IF t1804->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1804->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1848 p1 = t1849 ).
    ENDIF.
    t1802 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1803 i_f1 = t1804 ).
    t1801->load( ).
    APPEND t1802 TO t1801->items.
    t1801->save( ).
    DATA(t1850) = t84.
    DATA t1851 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t1851.
    DATA(t1852) = |v783|.
    DATA t1853 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t1853.
    DATA t1854 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1854.
    DATA t1855 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1855.
    DATA(t1856) = abap_true.
    IF t1856 = abap_true.
      DATA t1857 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1857.
      DATA(t1858) = |7.83|.
      CLEAR t1857.
      CREATE OBJECT t1857.
      t1857->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1857->sval = t1858.
      t1855 = t1857.
    ELSE.
      DATA t1859 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1859.
      t1855 = t1859.
    ENDIF.
    t1854 = t1855.
    DATA t1860 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1860.
    DATA t1861 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1861.
    DATA(t1862) = abap_true.
    IF t1862 = abap_true.
      DATA t1863 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1863.
      DATA(t1864) = 783.
      CLEAR t1863.
      CREATE OBJECT t1863.
      t1863->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1863->nval = t1864.
      t1861 = t1863.
    ELSE.
      DATA t1865 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1865.
      t1861 = t1865.
    ENDIF.
    t1860 = t1861.
    DATA t1866 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1866.
    DATA t1867 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1867.
    DATA(t1868) = abap_true.
    IF t1868 = abap_true.
      DATA t1869 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1869.
      DATA(t1870) = 756.
      CLEAR t1869.
      CREATE OBJECT t1869.
      t1869->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1869->nval = t1870.
      t1867 = t1869.
    ELSE.
      DATA t1871 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1871.
      t1867 = t1871.
    ENDIF.
    t1866 = t1867.
    DATA t1872 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1872.
    DATA t1873 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1873.
    DATA(t1874) = abap_true.
    IF t1874 = abap_true.
      DATA t1875 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1875.
      DATA(t1876) = 783.
      CLEAR t1875.
      CREATE OBJECT t1875.
      t1875->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1875->nval = t1876.
      t1873 = t1875.
    ELSE.
      DATA t1877 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1877.
      t1873 = t1877.
    ENDIF.
    t1872 = t1873.
    DATA t1878 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1878.
    DATA t1879 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1879.
    DATA(t1880) = abap_true.
    IF t1880 = abap_true.
      DATA t1881 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1881.
      DATA(t1882) = 2102.
      CLEAR t1881.
      CREATE OBJECT t1881.
      t1881->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1881->nval = t1882.
      t1879 = t1881.
    ELSE.
      DATA t1883 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1883.
      t1879 = t1883.
    ENDIF.
    t1878 = t1879.
    t1853 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1854 i_kernel = t1860 i_op = t1866 i_cloud_47cd = t1872 i_ce = t1878 ).
    CREATE OBJECT t1853->zlnt_view_ownkeys_b0e8086400eb.
    t1853->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1884 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1884.
    IF t1853->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1853->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1884 ).
    ENDIF.
    DATA t1885 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1885.
    IF t1853->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1853->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1885 ).
    ENDIF.
    DATA t1886 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1886.
    IF t1853->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1853->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1886 ).
    ENDIF.
    DATA t1887 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1887.
    IF t1853->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1853->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1887 ).
    ENDIF.
    DATA t1888 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1888.
    IF t1853->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1853->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1888 ).
    ENDIF.
    CREATE OBJECT t1853->zlnt_json_ownkeys_70e5fd461788.
    t1853->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1889) = |abap|.
    DATA t1890 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1890.
    IF t1853->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1853->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1889 p1 = t1890 ).
    ENDIF.
    DATA(t1891) = |kernel|.
    DATA t1892 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1892.
    IF t1853->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1853->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1891 p1 = t1892 ).
    ENDIF.
    DATA(t1893) = |op|.
    DATA t1894 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1894.
    IF t1853->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1853->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1893 p1 = t1894 ).
    ENDIF.
    DATA(t1895) = |cloud|.
    DATA t1896 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1896.
    IF t1853->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1853->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1895 p1 = t1896 ).
    ENDIF.
    DATA(t1897) = |ce|.
    DATA t1898 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1898.
    IF t1853->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1853->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1897 p1 = t1898 ).
    ENDIF.
    t1851 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1852 i_f1 = t1853 ).
    t1850->load( ).
    APPEND t1851 TO t1850->items.
    t1850->save( ).
    DATA(t1899) = t84.
    DATA t1900 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t1900.
    DATA(t1901) = |v784|.
    DATA t1902 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t1902.
    DATA t1903 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1903.
    DATA t1904 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1904.
    DATA(t1905) = abap_true.
    IF t1905 = abap_true.
      DATA t1906 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1906.
      DATA(t1907) = |7.84|.
      CLEAR t1906.
      CREATE OBJECT t1906.
      t1906->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1906->sval = t1907.
      t1904 = t1906.
    ELSE.
      DATA t1908 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1908.
      t1904 = t1908.
    ENDIF.
    t1903 = t1904.
    DATA t1909 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1909.
    DATA t1910 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1910.
    DATA(t1911) = abap_true.
    IF t1911 = abap_true.
      DATA t1912 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1912.
      DATA(t1913) = 784.
      CLEAR t1912.
      CREATE OBJECT t1912.
      t1912->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1912->nval = t1913.
      t1910 = t1912.
    ELSE.
      DATA t1914 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1914.
      t1910 = t1914.
    ENDIF.
    t1909 = t1910.
    DATA t1915 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1915.
    DATA t1916 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1916.
    DATA(t1917) = abap_true.
    IF t1917 = abap_true.
      DATA t1918 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1918.
      DATA(t1919) = 756.
      CLEAR t1918.
      CREATE OBJECT t1918.
      t1918->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1918->nval = t1919.
      t1916 = t1918.
    ELSE.
      DATA t1920 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1920.
      t1916 = t1920.
    ENDIF.
    t1915 = t1916.
    DATA t1921 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1921.
    DATA t1922 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1922.
    DATA(t1923) = abap_true.
    IF t1923 = abap_true.
      DATA t1924 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1924.
      DATA(t1925) = 784.
      CLEAR t1924.
      CREATE OBJECT t1924.
      t1924->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1924->nval = t1925.
      t1922 = t1924.
    ELSE.
      DATA t1926 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1926.
      t1922 = t1926.
    ENDIF.
    t1921 = t1922.
    DATA t1927 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1927.
    DATA t1928 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1928.
    DATA(t1929) = abap_true.
    IF t1929 = abap_true.
      DATA t1930 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1930.
      DATA(t1931) = 2105.
      CLEAR t1930.
      CREATE OBJECT t1930.
      t1930->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1930->nval = t1931.
      t1928 = t1930.
    ELSE.
      DATA t1932 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1932.
      t1928 = t1932.
    ENDIF.
    t1927 = t1928.
    t1902 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1903 i_kernel = t1909 i_op = t1915 i_cloud_47cd = t1921 i_ce = t1927 ).
    CREATE OBJECT t1902->zlnt_view_ownkeys_b0e8086400eb.
    t1902->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1933 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1933.
    IF t1902->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1902->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1933 ).
    ENDIF.
    DATA t1934 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1934.
    IF t1902->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1902->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1934 ).
    ENDIF.
    DATA t1935 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1935.
    IF t1902->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1902->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1935 ).
    ENDIF.
    DATA t1936 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1936.
    IF t1902->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1902->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1936 ).
    ENDIF.
    DATA t1937 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1937.
    IF t1902->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1902->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1937 ).
    ENDIF.
    CREATE OBJECT t1902->zlnt_json_ownkeys_70e5fd461788.
    t1902->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1938) = |abap|.
    DATA t1939 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1939.
    IF t1902->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1902->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1938 p1 = t1939 ).
    ENDIF.
    DATA(t1940) = |kernel|.
    DATA t1941 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1941.
    IF t1902->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1902->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1940 p1 = t1941 ).
    ENDIF.
    DATA(t1942) = |op|.
    DATA t1943 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1943.
    IF t1902->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1902->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1942 p1 = t1943 ).
    ENDIF.
    DATA(t1944) = |cloud|.
    DATA t1945 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1945.
    IF t1902->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1902->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1944 p1 = t1945 ).
    ENDIF.
    DATA(t1946) = |ce|.
    DATA t1947 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1947.
    IF t1902->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1902->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1946 p1 = t1947 ).
    ENDIF.
    t1900 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1901 i_f1 = t1902 ).
    t1899->load( ).
    APPEND t1900 TO t1899->items.
    t1899->save( ).
    DATA(t1948) = t84.
    DATA t1949 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t1949.
    DATA(t1950) = |v785|.
    DATA t1951 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t1951.
    DATA t1952 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1952.
    DATA t1953 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1953.
    DATA(t1954) = abap_true.
    IF t1954 = abap_true.
      DATA t1955 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1955.
      DATA(t1956) = |7.85|.
      CLEAR t1955.
      CREATE OBJECT t1955.
      t1955->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1955->sval = t1956.
      t1953 = t1955.
    ELSE.
      DATA t1957 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1957.
      t1953 = t1957.
    ENDIF.
    t1952 = t1953.
    DATA t1958 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1958.
    DATA t1959 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1959.
    DATA(t1960) = abap_true.
    IF t1960 = abap_true.
      DATA t1961 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1961.
      DATA(t1962) = 785.
      CLEAR t1961.
      CREATE OBJECT t1961.
      t1961->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1961->nval = t1962.
      t1959 = t1961.
    ELSE.
      DATA t1963 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1963.
      t1959 = t1963.
    ENDIF.
    t1958 = t1959.
    DATA t1964 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1964.
    DATA t1965 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1965.
    DATA(t1966) = abap_true.
    IF t1966 = abap_true.
      DATA t1967 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1967.
      DATA(t1968) = 756.
      CLEAR t1967.
      CREATE OBJECT t1967.
      t1967->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1967->nval = t1968.
      t1965 = t1967.
    ELSE.
      DATA t1969 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1969.
      t1965 = t1969.
    ENDIF.
    t1964 = t1965.
    DATA t1970 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1970.
    DATA t1971 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1971.
    DATA(t1972) = abap_true.
    IF t1972 = abap_true.
      DATA t1973 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1973.
      DATA(t1974) = 785.
      CLEAR t1973.
      CREATE OBJECT t1973.
      t1973->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1973->nval = t1974.
      t1971 = t1973.
    ELSE.
      DATA t1975 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1975.
      t1971 = t1975.
    ENDIF.
    t1970 = t1971.
    DATA t1976 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1976.
    DATA t1977 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1977.
    DATA(t1978) = abap_true.
    IF t1978 = abap_true.
      DATA t1979 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1979.
      DATA(t1980) = 2108.
      CLEAR t1979.
      CREATE OBJECT t1979.
      t1979->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1979->nval = t1980.
      t1977 = t1979.
    ELSE.
      DATA t1981 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1981.
      t1977 = t1981.
    ENDIF.
    t1976 = t1977.
    t1951 = NEW zcl_lnt_shape_27cfcabc( i_abap = t1952 i_kernel = t1958 i_op = t1964 i_cloud_47cd = t1970 i_ce = t1976 ).
    CREATE OBJECT t1951->zlnt_view_ownkeys_b0e8086400eb.
    t1951->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t1982 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1982.
    IF t1951->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1951->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t1982 ).
    ENDIF.
    DATA t1983 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1983.
    IF t1951->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1951->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t1983 ).
    ENDIF.
    DATA t1984 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1984.
    IF t1951->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1951->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t1984 ).
    ENDIF.
    DATA t1985 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1985.
    IF t1951->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1951->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t1985 ).
    ENDIF.
    DATA t1986 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1986.
    IF t1951->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1951->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t1986 ).
    ENDIF.
    CREATE OBJECT t1951->zlnt_json_ownkeys_70e5fd461788.
    t1951->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t1987) = |abap|.
    DATA t1988 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1988.
    IF t1951->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1951->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1987 p1 = t1988 ).
    ENDIF.
    DATA(t1989) = |kernel|.
    DATA t1990 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1990.
    IF t1951->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1951->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1989 p1 = t1990 ).
    ENDIF.
    DATA(t1991) = |op|.
    DATA t1992 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1992.
    IF t1951->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1951->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1991 p1 = t1992 ).
    ENDIF.
    DATA(t1993) = |cloud|.
    DATA t1994 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1994.
    IF t1951->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1951->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1993 p1 = t1994 ).
    ENDIF.
    DATA(t1995) = |ce|.
    DATA t1996 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1996.
    IF t1951->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1951->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1995 p1 = t1996 ).
    ENDIF.
    t1949 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1950 i_f1 = t1951 ).
    t1948->load( ).
    APPEND t1949 TO t1948->items.
    t1948->save( ).
    DATA(t1997) = t84.
    DATA t1998 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t1998.
    DATA(t1999) = |v786|.
    DATA t2000 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t2000.
    DATA t2001 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2001.
    DATA t2002 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2002.
    DATA(t2003) = abap_true.
    IF t2003 = abap_true.
      DATA t2004 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2004.
      DATA(t2005) = |7.86|.
      CLEAR t2004.
      CREATE OBJECT t2004.
      t2004->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t2004->sval = t2005.
      t2002 = t2004.
    ELSE.
      DATA t2006 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2006.
      t2002 = t2006.
    ENDIF.
    t2001 = t2002.
    DATA t2007 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2007.
    DATA t2008 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2008.
    DATA(t2009) = abap_true.
    IF t2009 = abap_true.
      DATA t2010 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2010.
      DATA(t2011) = 786.
      CLEAR t2010.
      CREATE OBJECT t2010.
      t2010->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2010->nval = t2011.
      t2008 = t2010.
    ELSE.
      DATA t2012 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2012.
      t2008 = t2012.
    ENDIF.
    t2007 = t2008.
    DATA t2013 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2013.
    DATA t2014 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2014.
    DATA(t2015) = abap_true.
    IF t2015 = abap_true.
      DATA t2016 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2016.
      DATA(t2017) = 757.
      CLEAR t2016.
      CREATE OBJECT t2016.
      t2016->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2016->nval = t2017.
      t2014 = t2016.
    ELSE.
      DATA t2018 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2018.
      t2014 = t2018.
    ENDIF.
    t2013 = t2014.
    DATA t2019 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2019.
    DATA t2020 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2020.
    DATA(t2021) = abap_true.
    IF t2021 = abap_true.
      DATA t2022 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2022.
      DATA(t2023) = 786.
      CLEAR t2022.
      CREATE OBJECT t2022.
      t2022->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2022->nval = t2023.
      t2020 = t2022.
    ELSE.
      DATA t2024 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2024.
      t2020 = t2024.
    ENDIF.
    t2019 = t2020.
    DATA t2025 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2025.
    DATA t2026 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2026.
    DATA(t2027) = abap_true.
    IF t2027 = abap_true.
      DATA t2028 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2028.
      DATA(t2029) = 2111.
      CLEAR t2028.
      CREATE OBJECT t2028.
      t2028->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2028->nval = t2029.
      t2026 = t2028.
    ELSE.
      DATA t2030 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2030.
      t2026 = t2030.
    ENDIF.
    t2025 = t2026.
    t2000 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2001 i_kernel = t2007 i_op = t2013 i_cloud_47cd = t2019 i_ce = t2025 ).
    CREATE OBJECT t2000->zlnt_view_ownkeys_b0e8086400eb.
    t2000->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2031 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2031.
    IF t2000->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2000->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2031 ).
    ENDIF.
    DATA t2032 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2032.
    IF t2000->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2000->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2032 ).
    ENDIF.
    DATA t2033 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2033.
    IF t2000->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2000->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2033 ).
    ENDIF.
    DATA t2034 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2034.
    IF t2000->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2000->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2034 ).
    ENDIF.
    DATA t2035 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2035.
    IF t2000->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2000->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2035 ).
    ENDIF.
    CREATE OBJECT t2000->zlnt_json_ownkeys_70e5fd461788.
    t2000->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2036) = |abap|.
    DATA t2037 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2037.
    IF t2000->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2000->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2036 p1 = t2037 ).
    ENDIF.
    DATA(t2038) = |kernel|.
    DATA t2039 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2039.
    IF t2000->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2000->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2038 p1 = t2039 ).
    ENDIF.
    DATA(t2040) = |op|.
    DATA t2041 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2041.
    IF t2000->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2000->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2040 p1 = t2041 ).
    ENDIF.
    DATA(t2042) = |cloud|.
    DATA t2043 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2043.
    IF t2000->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2000->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2042 p1 = t2043 ).
    ENDIF.
    DATA(t2044) = |ce|.
    DATA t2045 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2045.
    IF t2000->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2000->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2044 p1 = t2045 ).
    ENDIF.
    t1998 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t1999 i_f1 = t2000 ).
    t1997->load( ).
    APPEND t1998 TO t1997->items.
    t1997->save( ).
    DATA(t2046) = t84.
    DATA t2047 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t2047.
    DATA(t2048) = |v787|.
    DATA t2049 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t2049.
    DATA t2050 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2050.
    DATA t2051 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2051.
    DATA(t2052) = abap_true.
    IF t2052 = abap_true.
      DATA t2053 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2053.
      DATA(t2054) = |7.87|.
      CLEAR t2053.
      CREATE OBJECT t2053.
      t2053->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t2053->sval = t2054.
      t2051 = t2053.
    ELSE.
      DATA t2055 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2055.
      t2051 = t2055.
    ENDIF.
    t2050 = t2051.
    DATA t2056 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2056.
    DATA t2057 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2057.
    DATA(t2058) = abap_true.
    IF t2058 = abap_true.
      DATA t2059 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2059.
      DATA(t2060) = 787.
      CLEAR t2059.
      CREATE OBJECT t2059.
      t2059->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2059->nval = t2060.
      t2057 = t2059.
    ELSE.
      DATA t2061 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2061.
      t2057 = t2061.
    ENDIF.
    t2056 = t2057.
    DATA t2062 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2062.
    DATA t2063 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2063.
    DATA(t2064) = abap_true.
    IF t2064 = abap_true.
      DATA t2065 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2065.
      DATA(t2066) = 757.
      CLEAR t2065.
      CREATE OBJECT t2065.
      t2065->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2065->nval = t2066.
      t2063 = t2065.
    ELSE.
      DATA t2067 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2067.
      t2063 = t2067.
    ENDIF.
    t2062 = t2063.
    DATA t2068 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2068.
    DATA t2069 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2069.
    DATA(t2070) = abap_true.
    IF t2070 = abap_true.
      DATA t2071 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2071.
      DATA(t2072) = 787.
      CLEAR t2071.
      CREATE OBJECT t2071.
      t2071->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2071->nval = t2072.
      t2069 = t2071.
    ELSE.
      DATA t2073 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2073.
      t2069 = t2073.
    ENDIF.
    t2068 = t2069.
    DATA t2074 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2074.
    DATA t2075 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2075.
    DATA(t2076) = abap_true.
    IF t2076 = abap_true.
      DATA t2077 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2077.
      DATA(t2078) = 2202.
      CLEAR t2077.
      CREATE OBJECT t2077.
      t2077->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2077->nval = t2078.
      t2075 = t2077.
    ELSE.
      DATA t2079 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2079.
      t2075 = t2079.
    ENDIF.
    t2074 = t2075.
    t2049 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2050 i_kernel = t2056 i_op = t2062 i_cloud_47cd = t2068 i_ce = t2074 ).
    CREATE OBJECT t2049->zlnt_view_ownkeys_b0e8086400eb.
    t2049->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2080 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2080.
    IF t2049->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2049->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2080 ).
    ENDIF.
    DATA t2081 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2081.
    IF t2049->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2049->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2081 ).
    ENDIF.
    DATA t2082 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2082.
    IF t2049->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2049->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2082 ).
    ENDIF.
    DATA t2083 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2083.
    IF t2049->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2049->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2083 ).
    ENDIF.
    DATA t2084 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2084.
    IF t2049->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2049->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2084 ).
    ENDIF.
    CREATE OBJECT t2049->zlnt_json_ownkeys_70e5fd461788.
    t2049->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2085) = |abap|.
    DATA t2086 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2086.
    IF t2049->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2049->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2085 p1 = t2086 ).
    ENDIF.
    DATA(t2087) = |kernel|.
    DATA t2088 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2088.
    IF t2049->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2049->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2087 p1 = t2088 ).
    ENDIF.
    DATA(t2089) = |op|.
    DATA t2090 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2090.
    IF t2049->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2049->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2089 p1 = t2090 ).
    ENDIF.
    DATA(t2091) = |cloud|.
    DATA t2092 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2092.
    IF t2049->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2049->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2091 p1 = t2092 ).
    ENDIF.
    DATA(t2093) = |ce|.
    DATA t2094 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2094.
    IF t2049->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2049->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2093 p1 = t2094 ).
    ENDIF.
    t2047 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t2048 i_f1 = t2049 ).
    t2046->load( ).
    APPEND t2047 TO t2046->items.
    t2046->save( ).
    DATA(t2095) = t84.
    DATA t2096 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t2096.
    DATA(t2097) = |v788|.
    DATA t2098 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t2098.
    DATA t2099 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2099.
    DATA t2100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2100.
    DATA(t2101) = abap_true.
    IF t2101 = abap_true.
      DATA t2102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2102.
      DATA(t2103) = |7.88|.
      CLEAR t2102.
      CREATE OBJECT t2102.
      t2102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t2102->sval = t2103.
      t2100 = t2102.
    ELSE.
      DATA t2104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2104.
      t2100 = t2104.
    ENDIF.
    t2099 = t2100.
    DATA t2105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2105.
    DATA t2106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2106.
    DATA(t2107) = abap_true.
    IF t2107 = abap_true.
      DATA t2108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2108.
      DATA(t2109) = 788.
      CLEAR t2108.
      CREATE OBJECT t2108.
      t2108->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2108->nval = t2109.
      t2106 = t2108.
    ELSE.
      DATA t2110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2110.
      t2106 = t2110.
    ENDIF.
    t2105 = t2106.
    DATA t2111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2111.
    DATA t2112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2112.
    DATA(t2113) = abap_true.
    IF t2113 = abap_true.
      DATA t2114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2114.
      DATA(t2115) = 757.
      CLEAR t2114.
      CREATE OBJECT t2114.
      t2114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2114->nval = t2115.
      t2112 = t2114.
    ELSE.
      DATA t2116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2116.
      t2112 = t2116.
    ENDIF.
    t2111 = t2112.
    DATA t2117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2117.
    DATA t2118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2118.
    DATA(t2119) = abap_true.
    IF t2119 = abap_true.
      DATA t2120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2120.
      DATA(t2121) = 788.
      CLEAR t2120.
      CREATE OBJECT t2120.
      t2120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2120->nval = t2121.
      t2118 = t2120.
    ELSE.
      DATA t2122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2122.
      t2118 = t2122.
    ENDIF.
    t2117 = t2118.
    DATA t2123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2123.
    DATA t2124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2124.
    DATA(t2125) = abap_true.
    IF t2125 = abap_true.
      DATA t2126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2126.
      DATA(t2127) = 2205.
      CLEAR t2126.
      CREATE OBJECT t2126.
      t2126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2126->nval = t2127.
      t2124 = t2126.
    ELSE.
      DATA t2128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2128.
      t2124 = t2128.
    ENDIF.
    t2123 = t2124.
    t2098 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2099 i_kernel = t2105 i_op = t2111 i_cloud_47cd = t2117 i_ce = t2123 ).
    CREATE OBJECT t2098->zlnt_view_ownkeys_b0e8086400eb.
    t2098->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2129.
    IF t2098->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2098->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2129 ).
    ENDIF.
    DATA t2130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2130.
    IF t2098->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2098->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2130 ).
    ENDIF.
    DATA t2131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2131.
    IF t2098->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2098->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2131 ).
    ENDIF.
    DATA t2132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2132.
    IF t2098->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2098->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2132 ).
    ENDIF.
    DATA t2133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2133.
    IF t2098->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2098->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2133 ).
    ENDIF.
    CREATE OBJECT t2098->zlnt_json_ownkeys_70e5fd461788.
    t2098->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2134) = |abap|.
    DATA t2135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2135.
    IF t2098->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2098->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2134 p1 = t2135 ).
    ENDIF.
    DATA(t2136) = |kernel|.
    DATA t2137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2137.
    IF t2098->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2098->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2136 p1 = t2137 ).
    ENDIF.
    DATA(t2138) = |op|.
    DATA t2139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2139.
    IF t2098->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2098->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2138 p1 = t2139 ).
    ENDIF.
    DATA(t2140) = |cloud|.
    DATA t2141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2141.
    IF t2098->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2098->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2140 p1 = t2141 ).
    ENDIF.
    DATA(t2142) = |ce|.
    DATA t2143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2143.
    IF t2098->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2098->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2142 p1 = t2143 ).
    ENDIF.
    t2096 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t2097 i_f1 = t2098 ).
    t2095->load( ).
    APPEND t2096 TO t2095->items.
    t2095->save( ).
    DATA(t2144) = t84.
    DATA t2145 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t2145.
    DATA(t2146) = |v789|.
    DATA t2147 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t2147.
    DATA t2148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2148.
    DATA t2149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2149.
    DATA(t2150) = abap_true.
    IF t2150 = abap_true.
      DATA t2151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2151.
      DATA(t2152) = |7.89|.
      CLEAR t2151.
      CREATE OBJECT t2151.
      t2151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t2151->sval = t2152.
      t2149 = t2151.
    ELSE.
      DATA t2153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2153.
      t2149 = t2153.
    ENDIF.
    t2148 = t2149.
    DATA t2154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2154.
    DATA t2155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2155.
    DATA(t2156) = abap_true.
    IF t2156 = abap_true.
      DATA t2157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2157.
      DATA(t2158) = 789.
      CLEAR t2157.
      CREATE OBJECT t2157.
      t2157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2157->nval = t2158.
      t2155 = t2157.
    ELSE.
      DATA t2159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2159.
      t2155 = t2159.
    ENDIF.
    t2154 = t2155.
    DATA t2160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2160.
    DATA t2161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2161.
    DATA(t2162) = abap_true.
    IF t2162 = abap_true.
      DATA t2163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2163.
      DATA(t2164) = 757.
      CLEAR t2163.
      CREATE OBJECT t2163.
      t2163->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2163->nval = t2164.
      t2161 = t2163.
    ELSE.
      DATA t2165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2165.
      t2161 = t2165.
    ENDIF.
    t2160 = t2161.
    DATA t2166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2166.
    DATA t2167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2167.
    DATA(t2168) = abap_true.
    IF t2168 = abap_true.
      DATA t2169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2169.
      DATA(t2170) = 789.
      CLEAR t2169.
      CREATE OBJECT t2169.
      t2169->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2169->nval = t2170.
      t2167 = t2169.
    ELSE.
      DATA t2171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2171.
      t2167 = t2171.
    ENDIF.
    t2166 = t2167.
    DATA t2172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2172.
    DATA t2173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2173.
    DATA(t2174) = abap_true.
    IF t2174 = abap_true.
      DATA t2175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2175.
      DATA(t2176) = 2208.
      CLEAR t2175.
      CREATE OBJECT t2175.
      t2175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2175->nval = t2176.
      t2173 = t2175.
    ELSE.
      DATA t2177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2177.
      t2173 = t2177.
    ENDIF.
    t2172 = t2173.
    t2147 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2148 i_kernel = t2154 i_op = t2160 i_cloud_47cd = t2166 i_ce = t2172 ).
    CREATE OBJECT t2147->zlnt_view_ownkeys_b0e8086400eb.
    t2147->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2178.
    IF t2147->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2147->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2178 ).
    ENDIF.
    DATA t2179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2179.
    IF t2147->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2147->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2179 ).
    ENDIF.
    DATA t2180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2180.
    IF t2147->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2147->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2180 ).
    ENDIF.
    DATA t2181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2181.
    IF t2147->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2147->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2181 ).
    ENDIF.
    DATA t2182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2182.
    IF t2147->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2147->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2182 ).
    ENDIF.
    CREATE OBJECT t2147->zlnt_json_ownkeys_70e5fd461788.
    t2147->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2183) = |abap|.
    DATA t2184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2184.
    IF t2147->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2147->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2183 p1 = t2184 ).
    ENDIF.
    DATA(t2185) = |kernel|.
    DATA t2186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2186.
    IF t2147->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2147->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2185 p1 = t2186 ).
    ENDIF.
    DATA(t2187) = |op|.
    DATA t2188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2188.
    IF t2147->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2147->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2187 p1 = t2188 ).
    ENDIF.
    DATA(t2189) = |cloud|.
    DATA t2190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2190.
    IF t2147->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2147->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2189 p1 = t2190 ).
    ENDIF.
    DATA(t2191) = |ce|.
    DATA t2192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2192.
    IF t2147->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2147->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2191 p1 = t2192 ).
    ENDIF.
    t2145 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t2146 i_f1 = t2147 ).
    t2144->load( ).
    APPEND t2145 TO t2144->items.
    t2144->save( ).
    DATA(t2193) = t84.
    DATA t2194 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t2194.
    DATA(t2195) = |v790|.
    DATA t2196 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t2196.
    DATA t2197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2197.
    DATA t2198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2198.
    DATA(t2199) = abap_true.
    IF t2199 = abap_true.
      DATA t2200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2200.
      DATA(t2201) = |7.90|.
      CLEAR t2200.
      CREATE OBJECT t2200.
      t2200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t2200->sval = t2201.
      t2198 = t2200.
    ELSE.
      DATA t2202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2202.
      t2198 = t2202.
    ENDIF.
    t2197 = t2198.
    DATA t2203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2203.
    DATA t2204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2204.
    DATA(t2205) = abap_true.
    IF t2205 = abap_true.
      DATA t2206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2206.
      DATA(t2207) = 790.
      CLEAR t2206.
      CREATE OBJECT t2206.
      t2206->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2206->nval = t2207.
      t2204 = t2206.
    ELSE.
      DATA t2208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2208.
      t2204 = t2208.
    ENDIF.
    t2203 = t2204.
    DATA t2209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2209.
    DATA t2210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2210.
    DATA(t2211) = abap_true.
    IF t2211 = abap_true.
      DATA t2212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2212.
      DATA(t2213) = 758.
      CLEAR t2212.
      CREATE OBJECT t2212.
      t2212->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2212->nval = t2213.
      t2210 = t2212.
    ELSE.
      DATA t2214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2214.
      t2210 = t2214.
    ENDIF.
    t2209 = t2210.
    DATA t2215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2215.
    DATA t2216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2216.
    DATA(t2217) = abap_true.
    IF t2217 = abap_true.
      DATA t2218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2218.
      DATA(t2219) = 790.
      CLEAR t2218.
      CREATE OBJECT t2218.
      t2218->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2218->nval = t2219.
      t2216 = t2218.
    ELSE.
      DATA t2220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2220.
      t2216 = t2220.
    ENDIF.
    t2215 = t2216.
    DATA t2221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2221.
    DATA t2222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2222.
    DATA(t2223) = abap_true.
    IF t2223 = abap_true.
      DATA t2224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2224.
      DATA(t2225) = 2211.
      CLEAR t2224.
      CREATE OBJECT t2224.
      t2224->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2224->nval = t2225.
      t2222 = t2224.
    ELSE.
      DATA t2226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2226.
      t2222 = t2226.
    ENDIF.
    t2221 = t2222.
    t2196 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2197 i_kernel = t2203 i_op = t2209 i_cloud_47cd = t2215 i_ce = t2221 ).
    CREATE OBJECT t2196->zlnt_view_ownkeys_b0e8086400eb.
    t2196->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2227.
    IF t2196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2227 ).
    ENDIF.
    DATA t2228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2228.
    IF t2196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2228 ).
    ENDIF.
    DATA t2229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2229.
    IF t2196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2229 ).
    ENDIF.
    DATA t2230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2230.
    IF t2196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2230 ).
    ENDIF.
    DATA t2231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2231.
    IF t2196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2231 ).
    ENDIF.
    CREATE OBJECT t2196->zlnt_json_ownkeys_70e5fd461788.
    t2196->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2232) = |abap|.
    DATA t2233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2233.
    IF t2196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2232 p1 = t2233 ).
    ENDIF.
    DATA(t2234) = |kernel|.
    DATA t2235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2235.
    IF t2196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2234 p1 = t2235 ).
    ENDIF.
    DATA(t2236) = |op|.
    DATA t2237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2237.
    IF t2196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2236 p1 = t2237 ).
    ENDIF.
    DATA(t2238) = |cloud|.
    DATA t2239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2239.
    IF t2196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2238 p1 = t2239 ).
    ENDIF.
    DATA(t2240) = |ce|.
    DATA t2241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2241.
    IF t2196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2240 p1 = t2241 ).
    ENDIF.
    t2194 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t2195 i_f1 = t2196 ).
    t2193->load( ).
    APPEND t2194 TO t2193->items.
    t2193->save( ).
    DATA(t2242) = t84.
    DATA t2243 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t2243.
    DATA(t2244) = |v791|.
    DATA t2245 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t2245.
    DATA t2246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2246.
    DATA t2247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2247.
    DATA(t2248) = abap_true.
    IF t2248 = abap_true.
      DATA t2249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2249.
      DATA(t2250) = |7.91|.
      CLEAR t2249.
      CREATE OBJECT t2249.
      t2249->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t2249->sval = t2250.
      t2247 = t2249.
    ELSE.
      DATA t2251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2251.
      t2247 = t2251.
    ENDIF.
    t2246 = t2247.
    DATA t2252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2252.
    DATA t2253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2253.
    DATA(t2254) = abap_true.
    IF t2254 = abap_true.
      DATA t2255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2255.
      DATA(t2256) = 791.
      CLEAR t2255.
      CREATE OBJECT t2255.
      t2255->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2255->nval = t2256.
      t2253 = t2255.
    ELSE.
      DATA t2257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2257.
      t2253 = t2257.
    ENDIF.
    t2252 = t2253.
    DATA t2258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2258.
    DATA t2259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2259.
    DATA(t2260) = abap_true.
    IF t2260 = abap_true.
      DATA t2261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2261.
      DATA(t2262) = 758.
      CLEAR t2261.
      CREATE OBJECT t2261.
      t2261->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2261->nval = t2262.
      t2259 = t2261.
    ELSE.
      DATA t2263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2263.
      t2259 = t2263.
    ENDIF.
    t2258 = t2259.
    DATA t2264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2264.
    DATA t2265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2265.
    DATA(t2266) = abap_true.
    IF t2266 = abap_true.
      DATA t2267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2267.
      DATA(t2268) = 791.
      CLEAR t2267.
      CREATE OBJECT t2267.
      t2267->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2267->nval = t2268.
      t2265 = t2267.
    ELSE.
      DATA t2269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2269.
      t2265 = t2269.
    ENDIF.
    t2264 = t2265.
    DATA t2270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2270.
    DATA t2271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2271.
    DATA(t2272) = abap_true.
    IF t2272 = abap_true.
      DATA t2273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2273.
      DATA(t2274) = 2302.
      CLEAR t2273.
      CREATE OBJECT t2273.
      t2273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2273->nval = t2274.
      t2271 = t2273.
    ELSE.
      DATA t2275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2275.
      t2271 = t2275.
    ENDIF.
    t2270 = t2271.
    t2245 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2246 i_kernel = t2252 i_op = t2258 i_cloud_47cd = t2264 i_ce = t2270 ).
    CREATE OBJECT t2245->zlnt_view_ownkeys_b0e8086400eb.
    t2245->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2276.
    IF t2245->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2245->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2276 ).
    ENDIF.
    DATA t2277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2277.
    IF t2245->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2245->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2277 ).
    ENDIF.
    DATA t2278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2278.
    IF t2245->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2245->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2278 ).
    ENDIF.
    DATA t2279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2279.
    IF t2245->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2245->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2279 ).
    ENDIF.
    DATA t2280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2280.
    IF t2245->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2245->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2280 ).
    ENDIF.
    CREATE OBJECT t2245->zlnt_json_ownkeys_70e5fd461788.
    t2245->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2281) = |abap|.
    DATA t2282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2282.
    IF t2245->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2245->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2281 p1 = t2282 ).
    ENDIF.
    DATA(t2283) = |kernel|.
    DATA t2284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2284.
    IF t2245->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2245->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2283 p1 = t2284 ).
    ENDIF.
    DATA(t2285) = |op|.
    DATA t2286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2286.
    IF t2245->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2245->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2285 p1 = t2286 ).
    ENDIF.
    DATA(t2287) = |cloud|.
    DATA t2288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2288.
    IF t2245->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2245->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2287 p1 = t2288 ).
    ENDIF.
    DATA(t2289) = |ce|.
    DATA t2290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2290.
    IF t2245->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2245->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2289 p1 = t2290 ).
    ENDIF.
    t2243 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t2244 i_f1 = t2245 ).
    t2242->load( ).
    APPEND t2243 TO t2242->items.
    t2242->save( ).
    DATA(t2291) = t84.
    DATA t2292 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t2292.
    DATA(t2293) = |v792|.
    DATA t2294 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t2294.
    DATA t2295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2295.
    DATA t2296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2296.
    DATA(t2297) = abap_true.
    IF t2297 = abap_true.
      DATA t2298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2298.
      DATA(t2299) = |7.92|.
      CLEAR t2298.
      CREATE OBJECT t2298.
      t2298->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t2298->sval = t2299.
      t2296 = t2298.
    ELSE.
      DATA t2300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2300.
      t2296 = t2300.
    ENDIF.
    t2295 = t2296.
    DATA t2301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2301.
    DATA t2302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2302.
    DATA(t2303) = abap_true.
    IF t2303 = abap_true.
      DATA t2304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2304.
      DATA(t2305) = 792.
      CLEAR t2304.
      CREATE OBJECT t2304.
      t2304->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2304->nval = t2305.
      t2302 = t2304.
    ELSE.
      DATA t2306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2306.
      t2302 = t2306.
    ENDIF.
    t2301 = t2302.
    DATA t2307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2307.
    DATA t2308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2308.
    DATA(t2309) = abap_true.
    IF t2309 = abap_true.
      DATA t2310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2310.
      DATA(t2311) = 758.
      CLEAR t2310.
      CREATE OBJECT t2310.
      t2310->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2310->nval = t2311.
      t2308 = t2310.
    ELSE.
      DATA t2312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2312.
      t2308 = t2312.
    ENDIF.
    t2307 = t2308.
    DATA t2313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2313.
    DATA t2314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2314.
    DATA(t2315) = abap_true.
    IF t2315 = abap_true.
      DATA t2316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2316.
      DATA(t2317) = 792.
      CLEAR t2316.
      CREATE OBJECT t2316.
      t2316->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2316->nval = t2317.
      t2314 = t2316.
    ELSE.
      DATA t2318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2318.
      t2314 = t2318.
    ENDIF.
    t2313 = t2314.
    DATA t2319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2319.
    DATA t2320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2320.
    DATA(t2321) = abap_true.
    IF t2321 = abap_true.
      DATA t2322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2322.
      DATA(t2323) = 2305.
      CLEAR t2322.
      CREATE OBJECT t2322.
      t2322->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2322->nval = t2323.
      t2320 = t2322.
    ELSE.
      DATA t2324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2324.
      t2320 = t2324.
    ENDIF.
    t2319 = t2320.
    t2294 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2295 i_kernel = t2301 i_op = t2307 i_cloud_47cd = t2313 i_ce = t2319 ).
    CREATE OBJECT t2294->zlnt_view_ownkeys_b0e8086400eb.
    t2294->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2325.
    IF t2294->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2294->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2325 ).
    ENDIF.
    DATA t2326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2326.
    IF t2294->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2294->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2326 ).
    ENDIF.
    DATA t2327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2327.
    IF t2294->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2294->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2327 ).
    ENDIF.
    DATA t2328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2328.
    IF t2294->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2294->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2328 ).
    ENDIF.
    DATA t2329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2329.
    IF t2294->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2294->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2329 ).
    ENDIF.
    CREATE OBJECT t2294->zlnt_json_ownkeys_70e5fd461788.
    t2294->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2330) = |abap|.
    DATA t2331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2331.
    IF t2294->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2294->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2330 p1 = t2331 ).
    ENDIF.
    DATA(t2332) = |kernel|.
    DATA t2333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2333.
    IF t2294->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2294->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2332 p1 = t2333 ).
    ENDIF.
    DATA(t2334) = |op|.
    DATA t2335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2335.
    IF t2294->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2294->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2334 p1 = t2335 ).
    ENDIF.
    DATA(t2336) = |cloud|.
    DATA t2337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2337.
    IF t2294->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2294->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2336 p1 = t2337 ).
    ENDIF.
    DATA(t2338) = |ce|.
    DATA t2339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2339.
    IF t2294->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2294->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2338 p1 = t2339 ).
    ENDIF.
    t2292 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t2293 i_f1 = t2294 ).
    t2291->load( ).
    APPEND t2292 TO t2291->items.
    t2291->save( ).
    DATA(t2340) = t84.
    DATA t2341 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t2341.
    DATA(t2342) = |v793|.
    DATA t2343 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t2343.
    DATA t2344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2344.
    DATA t2345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2345.
    DATA(t2346) = abap_true.
    IF t2346 = abap_true.
      DATA t2347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2347.
      DATA(t2348) = |7.93|.
      CLEAR t2347.
      CREATE OBJECT t2347.
      t2347->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t2347->sval = t2348.
      t2345 = t2347.
    ELSE.
      DATA t2349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2349.
      t2345 = t2349.
    ENDIF.
    t2344 = t2345.
    DATA t2350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2350.
    DATA t2351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2351.
    DATA(t2352) = abap_true.
    IF t2352 = abap_true.
      DATA t2353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2353.
      DATA(t2354) = 793.
      CLEAR t2353.
      CREATE OBJECT t2353.
      t2353->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2353->nval = t2354.
      t2351 = t2353.
    ELSE.
      DATA t2355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2355.
      t2351 = t2355.
    ENDIF.
    t2350 = t2351.
    DATA t2356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2356.
    DATA t2357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2357.
    DATA(t2358) = abap_true.
    IF t2358 = abap_true.
      DATA t2359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2359.
      DATA(t2360) = 758.
      CLEAR t2359.
      CREATE OBJECT t2359.
      t2359->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2359->nval = t2360.
      t2357 = t2359.
    ELSE.
      DATA t2361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2361.
      t2357 = t2361.
    ENDIF.
    t2356 = t2357.
    DATA t2362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2362.
    DATA t2363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2363.
    DATA(t2364) = abap_true.
    IF t2364 = abap_true.
      DATA t2365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2365.
      DATA(t2366) = 793.
      CLEAR t2365.
      CREATE OBJECT t2365.
      t2365->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2365->nval = t2366.
      t2363 = t2365.
    ELSE.
      DATA t2367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2367.
      t2363 = t2367.
    ENDIF.
    t2362 = t2363.
    DATA t2368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2368.
    DATA t2369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2369.
    DATA(t2370) = abap_true.
    IF t2370 = abap_true.
      DATA t2371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2371.
      DATA(t2372) = 2308.
      CLEAR t2371.
      CREATE OBJECT t2371.
      t2371->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2371->nval = t2372.
      t2369 = t2371.
    ELSE.
      DATA t2373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2373.
      t2369 = t2373.
    ENDIF.
    t2368 = t2369.
    t2343 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2344 i_kernel = t2350 i_op = t2356 i_cloud_47cd = t2362 i_ce = t2368 ).
    CREATE OBJECT t2343->zlnt_view_ownkeys_b0e8086400eb.
    t2343->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2374.
    IF t2343->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2343->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2374 ).
    ENDIF.
    DATA t2375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2375.
    IF t2343->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2343->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2375 ).
    ENDIF.
    DATA t2376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2376.
    IF t2343->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2343->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2376 ).
    ENDIF.
    DATA t2377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2377.
    IF t2343->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2343->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2377 ).
    ENDIF.
    DATA t2378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2378.
    IF t2343->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2343->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2378 ).
    ENDIF.
    CREATE OBJECT t2343->zlnt_json_ownkeys_70e5fd461788.
    t2343->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2379) = |abap|.
    DATA t2380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2380.
    IF t2343->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2343->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2379 p1 = t2380 ).
    ENDIF.
    DATA(t2381) = |kernel|.
    DATA t2382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2382.
    IF t2343->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2343->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2381 p1 = t2382 ).
    ENDIF.
    DATA(t2383) = |op|.
    DATA t2384 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2384.
    IF t2343->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2343->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2383 p1 = t2384 ).
    ENDIF.
    DATA(t2385) = |cloud|.
    DATA t2386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2386.
    IF t2343->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2343->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2385 p1 = t2386 ).
    ENDIF.
    DATA(t2387) = |ce|.
    DATA t2388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2388.
    IF t2343->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2343->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2387 p1 = t2388 ).
    ENDIF.
    t2341 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t2342 i_f1 = t2343 ).
    t2340->load( ).
    APPEND t2341 TO t2340->items.
    t2340->save( ).
    DATA(t2389) = t84.
    DATA t2390 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t2390.
    DATA(t2391) = |v794|.
    DATA t2392 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t2392.
    DATA t2393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2393.
    DATA t2394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2394.
    DATA(t2395) = abap_true.
    IF t2395 = abap_true.
      DATA t2396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2396.
      DATA(t2397) = |7.94|.
      CLEAR t2396.
      CREATE OBJECT t2396.
      t2396->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t2396->sval = t2397.
      t2394 = t2396.
    ELSE.
      DATA t2398 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2398.
      t2394 = t2398.
    ENDIF.
    t2393 = t2394.
    DATA t2399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2399.
    DATA t2400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2400.
    DATA(t2401) = abap_true.
    IF t2401 = abap_true.
      DATA t2402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2402.
      DATA(t2403) = 794.
      CLEAR t2402.
      CREATE OBJECT t2402.
      t2402->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2402->nval = t2403.
      t2400 = t2402.
    ELSE.
      DATA t2404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2404.
      t2400 = t2404.
    ENDIF.
    t2399 = t2400.
    DATA t2405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2405.
    DATA t2406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2406.
    DATA(t2407) = abap_true.
    IF t2407 = abap_true.
      DATA t2408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2408.
      DATA(t2409) = 816.
      CLEAR t2408.
      CREATE OBJECT t2408.
      t2408->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2408->nval = t2409.
      t2406 = t2408.
    ELSE.
      DATA t2410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2410.
      t2406 = t2410.
    ENDIF.
    t2405 = t2406.
    DATA t2411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2411.
    DATA t2412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2412.
    DATA(t2413) = abap_true.
    IF t2413 = abap_true.
      DATA t2414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2414.
      DATA(t2415) = 794.
      CLEAR t2414.
      CREATE OBJECT t2414.
      t2414->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2414->nval = t2415.
      t2412 = t2414.
    ELSE.
      DATA t2416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2416.
      t2412 = t2416.
    ENDIF.
    t2411 = t2412.
    DATA t2417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2417.
    DATA t2418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2418.
    DATA(t2419) = abap_true.
    IF t2419 = abap_true.
      DATA t2420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2420.
      DATA(t2421) = 2311.
      CLEAR t2420.
      CREATE OBJECT t2420.
      t2420->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2420->nval = t2421.
      t2418 = t2420.
    ELSE.
      DATA t2422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2422.
      t2418 = t2422.
    ENDIF.
    t2417 = t2418.
    t2392 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2393 i_kernel = t2399 i_op = t2405 i_cloud_47cd = t2411 i_ce = t2417 ).
    CREATE OBJECT t2392->zlnt_view_ownkeys_b0e8086400eb.
    t2392->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2423.
    IF t2392->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2392->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2423 ).
    ENDIF.
    DATA t2424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2424.
    IF t2392->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2392->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2424 ).
    ENDIF.
    DATA t2425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2425.
    IF t2392->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2392->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2425 ).
    ENDIF.
    DATA t2426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2426.
    IF t2392->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2392->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2426 ).
    ENDIF.
    DATA t2427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2427.
    IF t2392->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2392->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2427 ).
    ENDIF.
    CREATE OBJECT t2392->zlnt_json_ownkeys_70e5fd461788.
    t2392->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2428) = |abap|.
    DATA t2429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2429.
    IF t2392->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2392->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2428 p1 = t2429 ).
    ENDIF.
    DATA(t2430) = |kernel|.
    DATA t2431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2431.
    IF t2392->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2392->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2430 p1 = t2431 ).
    ENDIF.
    DATA(t2432) = |op|.
    DATA t2433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2433.
    IF t2392->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2392->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2432 p1 = t2433 ).
    ENDIF.
    DATA(t2434) = |cloud|.
    DATA t2435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2435.
    IF t2392->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2392->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2434 p1 = t2435 ).
    ENDIF.
    DATA(t2436) = |ce|.
    DATA t2437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2437.
    IF t2392->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2392->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2436 p1 = t2437 ).
    ENDIF.
    t2390 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t2391 i_f1 = t2392 ).
    t2389->load( ).
    APPEND t2390 TO t2389->items.
    t2389->save( ).
    DATA(t2438) = t84.
    DATA t2439 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t2439.
    DATA(t2440) = |v795|.
    DATA t2441 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t2441.
    DATA t2442 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2442.
    DATA t2443 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2443.
    DATA(t2444) = abap_true.
    IF t2444 = abap_true.
      DATA t2445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2445.
      DATA(t2446) = |7.95|.
      CLEAR t2445.
      CREATE OBJECT t2445.
      t2445->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t2445->sval = t2446.
      t2443 = t2445.
    ELSE.
      DATA t2447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2447.
      t2443 = t2447.
    ENDIF.
    t2442 = t2443.
    DATA t2448 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2448.
    DATA t2449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2449.
    DATA(t2450) = abap_true.
    IF t2450 = abap_true.
      DATA t2451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2451.
      DATA(t2452) = 795.
      CLEAR t2451.
      CREATE OBJECT t2451.
      t2451->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2451->nval = t2452.
      t2449 = t2451.
    ELSE.
      DATA t2453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2453.
      t2449 = t2453.
    ENDIF.
    t2448 = t2449.
    DATA t2454 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2454.
    DATA t2455 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2455.
    DATA(t2456) = abap_true.
    IF t2456 = abap_true.
      DATA t2457 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2457.
      DATA(t2458) = 816.
      CLEAR t2457.
      CREATE OBJECT t2457.
      t2457->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2457->nval = t2458.
      t2455 = t2457.
    ELSE.
      DATA t2459 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2459.
      t2455 = t2459.
    ENDIF.
    t2454 = t2455.
    DATA t2460 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2460.
    DATA t2461 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2461.
    DATA(t2462) = abap_true.
    IF t2462 = abap_true.
      DATA t2463 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2463.
      DATA(t2464) = 795.
      CLEAR t2463.
      CREATE OBJECT t2463.
      t2463->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2463->nval = t2464.
      t2461 = t2463.
    ELSE.
      DATA t2465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2465.
      t2461 = t2465.
    ENDIF.
    t2460 = t2461.
    DATA t2466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2466.
    DATA t2467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2467.
    DATA(t2468) = abap_true.
    IF t2468 = abap_true.
      DATA t2469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2469.
      DATA(t2470) = 2402.
      CLEAR t2469.
      CREATE OBJECT t2469.
      t2469->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2469->nval = t2470.
      t2467 = t2469.
    ELSE.
      DATA t2471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2471.
      t2467 = t2471.
    ENDIF.
    t2466 = t2467.
    t2441 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2442 i_kernel = t2448 i_op = t2454 i_cloud_47cd = t2460 i_ce = t2466 ).
    CREATE OBJECT t2441->zlnt_view_ownkeys_b0e8086400eb.
    t2441->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2472 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2472.
    IF t2441->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2441->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2472 ).
    ENDIF.
    DATA t2473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2473.
    IF t2441->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2441->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2473 ).
    ENDIF.
    DATA t2474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2474.
    IF t2441->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2441->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2474 ).
    ENDIF.
    DATA t2475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2475.
    IF t2441->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2441->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2475 ).
    ENDIF.
    DATA t2476 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2476.
    IF t2441->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2441->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2476 ).
    ENDIF.
    CREATE OBJECT t2441->zlnt_json_ownkeys_70e5fd461788.
    t2441->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2477) = |abap|.
    DATA t2478 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2478.
    IF t2441->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2441->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2477 p1 = t2478 ).
    ENDIF.
    DATA(t2479) = |kernel|.
    DATA t2480 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2480.
    IF t2441->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2441->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2479 p1 = t2480 ).
    ENDIF.
    DATA(t2481) = |op|.
    DATA t2482 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2482.
    IF t2441->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2441->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2481 p1 = t2482 ).
    ENDIF.
    DATA(t2483) = |cloud|.
    DATA t2484 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2484.
    IF t2441->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2441->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2483 p1 = t2484 ).
    ENDIF.
    DATA(t2485) = |ce|.
    DATA t2486 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2486.
    IF t2441->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2441->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2485 p1 = t2486 ).
    ENDIF.
    t2439 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t2440 i_f1 = t2441 ).
    t2438->load( ).
    APPEND t2439 TO t2438->items.
    t2438->save( ).
    DATA(t2487) = t84.
    DATA t2488 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t2488.
    DATA(t2489) = |v796|.
    DATA t2490 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t2490.
    DATA t2491 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2491.
    DATA t2492 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2492.
    DATA(t2493) = abap_true.
    IF t2493 = abap_true.
      DATA t2494 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2494.
      DATA(t2495) = |7.96|.
      CLEAR t2494.
      CREATE OBJECT t2494.
      t2494->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t2494->sval = t2495.
      t2492 = t2494.
    ELSE.
      DATA t2496 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2496.
      t2492 = t2496.
    ENDIF.
    t2491 = t2492.
    DATA t2497 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2497.
    DATA t2498 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2498.
    DATA(t2499) = abap_true.
    IF t2499 = abap_true.
      DATA t2500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2500.
      DATA(t2501) = 796.
      CLEAR t2500.
      CREATE OBJECT t2500.
      t2500->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2500->nval = t2501.
      t2498 = t2500.
    ELSE.
      DATA t2502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2502.
      t2498 = t2502.
    ENDIF.
    t2497 = t2498.
    DATA t2503 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2503.
    DATA t2504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2504.
    DATA(t2505) = abap_true.
    IF t2505 = abap_true.
      DATA t2506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2506.
      DATA(t2507) = 816.
      CLEAR t2506.
      CREATE OBJECT t2506.
      t2506->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2506->nval = t2507.
      t2504 = t2506.
    ELSE.
      DATA t2508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2508.
      t2504 = t2508.
    ENDIF.
    t2503 = t2504.
    DATA t2509 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2509.
    DATA t2510 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2510.
    DATA(t2511) = abap_true.
    IF t2511 = abap_true.
      DATA t2512 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2512.
      DATA(t2513) = 796.
      CLEAR t2512.
      CREATE OBJECT t2512.
      t2512->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2512->nval = t2513.
      t2510 = t2512.
    ELSE.
      DATA t2514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2514.
      t2510 = t2514.
    ENDIF.
    t2509 = t2510.
    DATA t2515 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2515.
    DATA t2516 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2516.
    DATA(t2517) = abap_true.
    IF t2517 = abap_true.
      DATA t2518 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2518.
      DATA(t2519) = 2405.
      CLEAR t2518.
      CREATE OBJECT t2518.
      t2518->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2518->nval = t2519.
      t2516 = t2518.
    ELSE.
      DATA t2520 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2520.
      t2516 = t2520.
    ENDIF.
    t2515 = t2516.
    t2490 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2491 i_kernel = t2497 i_op = t2503 i_cloud_47cd = t2509 i_ce = t2515 ).
    CREATE OBJECT t2490->zlnt_view_ownkeys_b0e8086400eb.
    t2490->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2521 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2521.
    IF t2490->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2490->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2521 ).
    ENDIF.
    DATA t2522 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2522.
    IF t2490->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2490->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2522 ).
    ENDIF.
    DATA t2523 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2523.
    IF t2490->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2490->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2523 ).
    ENDIF.
    DATA t2524 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2524.
    IF t2490->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2490->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2524 ).
    ENDIF.
    DATA t2525 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2525.
    IF t2490->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2490->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2525 ).
    ENDIF.
    CREATE OBJECT t2490->zlnt_json_ownkeys_70e5fd461788.
    t2490->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2526) = |abap|.
    DATA t2527 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2527.
    IF t2490->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2490->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2526 p1 = t2527 ).
    ENDIF.
    DATA(t2528) = |kernel|.
    DATA t2529 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2529.
    IF t2490->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2490->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2528 p1 = t2529 ).
    ENDIF.
    DATA(t2530) = |op|.
    DATA t2531 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2531.
    IF t2490->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2490->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2530 p1 = t2531 ).
    ENDIF.
    DATA(t2532) = |cloud|.
    DATA t2533 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2533.
    IF t2490->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2490->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2532 p1 = t2533 ).
    ENDIF.
    DATA(t2534) = |ce|.
    DATA t2535 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2535.
    IF t2490->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2490->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2534 p1 = t2535 ).
    ENDIF.
    t2488 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t2489 i_f1 = t2490 ).
    t2487->load( ).
    APPEND t2488 TO t2487->items.
    t2487->save( ).
    DATA(t2536) = t84.
    DATA t2537 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t2537.
    DATA(t2538) = |v912|.
    DATA t2539 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t2539.
    DATA t2540 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2540.
    DATA t2541 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2541.
    DATA(t2542) = abap_true.
    IF t2542 = abap_true.
      DATA t2543 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2543.
      DATA(t2544) = |9.12|.
      CLEAR t2543.
      CREATE OBJECT t2543.
      t2543->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t2543->sval = t2544.
      t2541 = t2543.
    ELSE.
      DATA t2545 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2545.
      t2541 = t2545.
    ENDIF.
    t2540 = t2541.
    DATA t2546 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2546.
    DATA t2547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2547.
    DATA(t2548) = abap_true.
    IF t2548 = abap_true.
      DATA t2549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2549.
      DATA(t2550) = 912.
      CLEAR t2549.
      CREATE OBJECT t2549.
      t2549->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2549->nval = t2550.
      t2547 = t2549.
    ELSE.
      DATA t2551 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2551.
      t2547 = t2551.
    ENDIF.
    t2546 = t2547.
    DATA t2552 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2552.
    DATA t2553 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2553.
    DATA(t2554) = abap_true.
    IF t2554 = abap_true.
      DATA t2555 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2555.
      DATA(t2556) = 816.
      CLEAR t2555.
      CREATE OBJECT t2555.
      t2555->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2555->nval = t2556.
      t2553 = t2555.
    ELSE.
      DATA t2557 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2557.
      t2553 = t2557.
    ENDIF.
    t2552 = t2553.
    DATA t2558 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2558.
    DATA t2559 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2559.
    DATA(t2560) = abap_true.
    IF t2560 = abap_true.
      DATA t2561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2561.
      DATA(t2562) = 912.
      CLEAR t2561.
      CREATE OBJECT t2561.
      t2561->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2561->nval = t2562.
      t2559 = t2561.
    ELSE.
      DATA t2563 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2563.
      t2559 = t2563.
    ENDIF.
    t2558 = t2559.
    DATA t2564 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2564.
    DATA t2565 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2565.
    DATA(t2566) = abap_true.
    IF t2566 = abap_true.
      DATA t2567 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2567.
      DATA(t2568) = 2408.
      CLEAR t2567.
      CREATE OBJECT t2567.
      t2567->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2567->nval = t2568.
      t2565 = t2567.
    ELSE.
      DATA t2569 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2569.
      t2565 = t2569.
    ENDIF.
    t2564 = t2565.
    t2539 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2540 i_kernel = t2546 i_op = t2552 i_cloud_47cd = t2558 i_ce = t2564 ).
    CREATE OBJECT t2539->zlnt_view_ownkeys_b0e8086400eb.
    t2539->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2570.
    IF t2539->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2539->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2570 ).
    ENDIF.
    DATA t2571 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2571.
    IF t2539->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2539->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2571 ).
    ENDIF.
    DATA t2572 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2572.
    IF t2539->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2539->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2572 ).
    ENDIF.
    DATA t2573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2573.
    IF t2539->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2539->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2573 ).
    ENDIF.
    DATA t2574 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2574.
    IF t2539->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2539->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2574 ).
    ENDIF.
    CREATE OBJECT t2539->zlnt_json_ownkeys_70e5fd461788.
    t2539->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2575) = |abap|.
    DATA t2576 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2576.
    IF t2539->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2539->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2575 p1 = t2576 ).
    ENDIF.
    DATA(t2577) = |kernel|.
    DATA t2578 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2578.
    IF t2539->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2539->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2577 p1 = t2578 ).
    ENDIF.
    DATA(t2579) = |op|.
    DATA t2580 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2580.
    IF t2539->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2539->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2579 p1 = t2580 ).
    ENDIF.
    DATA(t2581) = |cloud|.
    DATA t2582 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2582.
    IF t2539->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2539->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2581 p1 = t2582 ).
    ENDIF.
    DATA(t2583) = |ce|.
    DATA t2584 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2584.
    IF t2539->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2539->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2583 p1 = t2584 ).
    ENDIF.
    t2537 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t2538 i_f1 = t2539 ).
    t2536->load( ).
    APPEND t2537 TO t2536->items.
    t2536->save( ).
    DATA(t2585) = t84.
    DATA t2586 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t2586.
    DATA(t2587) = |v913|.
    DATA t2588 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t2588.
    DATA t2589 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2589.
    DATA t2590 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2590.
    DATA(t2591) = abap_true.
    IF t2591 = abap_true.
      DATA t2592 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2592.
      DATA(t2593) = |9.13|.
      CLEAR t2592.
      CREATE OBJECT t2592.
      t2592->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t2592->sval = t2593.
      t2590 = t2592.
    ELSE.
      DATA t2594 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2594.
      t2590 = t2594.
    ENDIF.
    t2589 = t2590.
    DATA t2595 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2595.
    DATA t2596 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2596.
    DATA(t2597) = abap_true.
    IF t2597 = abap_true.
      DATA t2598 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2598.
      DATA(t2599) = 913.
      CLEAR t2598.
      CREATE OBJECT t2598.
      t2598->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2598->nval = t2599.
      t2596 = t2598.
    ELSE.
      DATA t2600 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2600.
      t2596 = t2600.
    ENDIF.
    t2595 = t2596.
    DATA t2601 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2601.
    DATA t2602 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2602.
    DATA(t2603) = abap_true.
    IF t2603 = abap_true.
      DATA t2604 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2604.
      DATA(t2605) = 816.
      CLEAR t2604.
      CREATE OBJECT t2604.
      t2604->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2604->nval = t2605.
      t2602 = t2604.
    ELSE.
      DATA t2606 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2606.
      t2602 = t2606.
    ENDIF.
    t2601 = t2602.
    DATA t2607 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2607.
    DATA t2608 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2608.
    DATA(t2609) = abap_true.
    IF t2609 = abap_true.
      DATA t2610 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2610.
      DATA(t2611) = 913.
      CLEAR t2610.
      CREATE OBJECT t2610.
      t2610->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2610->nval = t2611.
      t2608 = t2610.
    ELSE.
      DATA t2612 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2612.
      t2608 = t2612.
    ENDIF.
    t2607 = t2608.
    DATA t2613 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2613.
    DATA t2614 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2614.
    DATA(t2615) = abap_true.
    IF t2615 = abap_true.
      DATA t2616 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2616.
      DATA(t2617) = 2411.
      CLEAR t2616.
      CREATE OBJECT t2616.
      t2616->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2616->nval = t2617.
      t2614 = t2616.
    ELSE.
      DATA t2618 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2618.
      t2614 = t2618.
    ENDIF.
    t2613 = t2614.
    t2588 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2589 i_kernel = t2595 i_op = t2601 i_cloud_47cd = t2607 i_ce = t2613 ).
    CREATE OBJECT t2588->zlnt_view_ownkeys_b0e8086400eb.
    t2588->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2619 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2619.
    IF t2588->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2588->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2619 ).
    ENDIF.
    DATA t2620 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2620.
    IF t2588->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2588->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2620 ).
    ENDIF.
    DATA t2621 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2621.
    IF t2588->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2588->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2621 ).
    ENDIF.
    DATA t2622 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2622.
    IF t2588->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2588->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2622 ).
    ENDIF.
    DATA t2623 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2623.
    IF t2588->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2588->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2623 ).
    ENDIF.
    CREATE OBJECT t2588->zlnt_json_ownkeys_70e5fd461788.
    t2588->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2624) = |abap|.
    DATA t2625 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2625.
    IF t2588->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2588->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2624 p1 = t2625 ).
    ENDIF.
    DATA(t2626) = |kernel|.
    DATA t2627 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2627.
    IF t2588->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2588->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2626 p1 = t2627 ).
    ENDIF.
    DATA(t2628) = |op|.
    DATA t2629 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2629.
    IF t2588->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2588->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2628 p1 = t2629 ).
    ENDIF.
    DATA(t2630) = |cloud|.
    DATA t2631 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2631.
    IF t2588->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2588->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2630 p1 = t2631 ).
    ENDIF.
    DATA(t2632) = |ce|.
    DATA t2633 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2633.
    IF t2588->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2588->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2632 p1 = t2633 ).
    ENDIF.
    t2586 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t2587 i_f1 = t2588 ).
    t2585->load( ).
    APPEND t2586 TO t2585->items.
    t2585->save( ).
    DATA(t2634) = t84.
    DATA t2635 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t2635.
    DATA(t2636) = |v914|.
    DATA t2637 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t2637.
    DATA t2638 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2638.
    DATA t2639 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2639.
    DATA(t2640) = abap_true.
    IF t2640 = abap_true.
      DATA t2641 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2641.
      DATA(t2642) = |9.14|.
      CLEAR t2641.
      CREATE OBJECT t2641.
      t2641->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t2641->sval = t2642.
      t2639 = t2641.
    ELSE.
      DATA t2643 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2643.
      t2639 = t2643.
    ENDIF.
    t2638 = t2639.
    DATA t2644 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2644.
    DATA t2645 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2645.
    DATA(t2646) = abap_true.
    IF t2646 = abap_true.
      DATA t2647 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2647.
      DATA(t2648) = 914.
      CLEAR t2647.
      CREATE OBJECT t2647.
      t2647->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2647->nval = t2648.
      t2645 = t2647.
    ELSE.
      DATA t2649 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2649.
      t2645 = t2649.
    ENDIF.
    t2644 = t2645.
    DATA t2650 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2650.
    DATA t2651 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2651.
    DATA(t2652) = abap_true.
    IF t2652 = abap_true.
      DATA t2653 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2653.
      DATA(t2654) = 816.
      CLEAR t2653.
      CREATE OBJECT t2653.
      t2653->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2653->nval = t2654.
      t2651 = t2653.
    ELSE.
      DATA t2655 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2655.
      t2651 = t2655.
    ENDIF.
    t2650 = t2651.
    DATA t2656 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2656.
    DATA t2657 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2657.
    DATA(t2658) = abap_true.
    IF t2658 = abap_true.
      DATA t2659 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2659.
      DATA(t2660) = 914.
      CLEAR t2659.
      CREATE OBJECT t2659.
      t2659->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2659->nval = t2660.
      t2657 = t2659.
    ELSE.
      DATA t2661 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2661.
      t2657 = t2661.
    ENDIF.
    t2656 = t2657.
    DATA t2662 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2662.
    DATA t2663 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2663.
    DATA(t2664) = abap_true.
    IF t2664 = abap_true.
      DATA t2665 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2665.
      DATA(t2666) = 2502.
      CLEAR t2665.
      CREATE OBJECT t2665.
      t2665->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2665->nval = t2666.
      t2663 = t2665.
    ELSE.
      DATA t2667 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2667.
      t2663 = t2667.
    ENDIF.
    t2662 = t2663.
    t2637 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2638 i_kernel = t2644 i_op = t2650 i_cloud_47cd = t2656 i_ce = t2662 ).
    CREATE OBJECT t2637->zlnt_view_ownkeys_b0e8086400eb.
    t2637->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2668 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2668.
    IF t2637->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2637->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2668 ).
    ENDIF.
    DATA t2669 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2669.
    IF t2637->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2637->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2669 ).
    ENDIF.
    DATA t2670 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2670.
    IF t2637->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2637->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2670 ).
    ENDIF.
    DATA t2671 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2671.
    IF t2637->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2637->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2671 ).
    ENDIF.
    DATA t2672 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2672.
    IF t2637->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2637->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2672 ).
    ENDIF.
    CREATE OBJECT t2637->zlnt_json_ownkeys_70e5fd461788.
    t2637->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2673) = |abap|.
    DATA t2674 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2674.
    IF t2637->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2637->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2673 p1 = t2674 ).
    ENDIF.
    DATA(t2675) = |kernel|.
    DATA t2676 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2676.
    IF t2637->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2637->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2675 p1 = t2676 ).
    ENDIF.
    DATA(t2677) = |op|.
    DATA t2678 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2678.
    IF t2637->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2637->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2677 p1 = t2678 ).
    ENDIF.
    DATA(t2679) = |cloud|.
    DATA t2680 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2680.
    IF t2637->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2637->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2679 p1 = t2680 ).
    ENDIF.
    DATA(t2681) = |ce|.
    DATA t2682 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2682.
    IF t2637->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2637->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2681 p1 = t2682 ).
    ENDIF.
    t2635 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t2636 i_f1 = t2637 ).
    t2634->load( ).
    APPEND t2635 TO t2634->items.
    t2634->save( ).
    DATA(t2683) = t84.
    DATA t2684 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t2684.
    DATA(t2685) = |v915|.
    DATA t2686 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t2686.
    DATA t2687 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2687.
    DATA t2688 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2688.
    DATA(t2689) = abap_true.
    IF t2689 = abap_true.
      DATA t2690 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2690.
      DATA(t2691) = |9.15|.
      CLEAR t2690.
      CREATE OBJECT t2690.
      t2690->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t2690->sval = t2691.
      t2688 = t2690.
    ELSE.
      DATA t2692 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2692.
      t2688 = t2692.
    ENDIF.
    t2687 = t2688.
    DATA t2693 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2693.
    DATA t2694 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2694.
    DATA(t2695) = abap_true.
    IF t2695 = abap_true.
      DATA t2696 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2696.
      DATA(t2697) = 915.
      CLEAR t2696.
      CREATE OBJECT t2696.
      t2696->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2696->nval = t2697.
      t2694 = t2696.
    ELSE.
      DATA t2698 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2698.
      t2694 = t2698.
    ENDIF.
    t2693 = t2694.
    DATA t2699 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2699.
    DATA t2700 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2700.
    DATA(t2701) = abap_true.
    IF t2701 = abap_true.
      DATA t2702 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2702.
      DATA(t2703) = 816.
      CLEAR t2702.
      CREATE OBJECT t2702.
      t2702->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2702->nval = t2703.
      t2700 = t2702.
    ELSE.
      DATA t2704 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2704.
      t2700 = t2704.
    ENDIF.
    t2699 = t2700.
    DATA t2705 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2705.
    DATA t2706 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2706.
    DATA(t2707) = abap_true.
    IF t2707 = abap_true.
      DATA t2708 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2708.
      DATA(t2709) = 915.
      CLEAR t2708.
      CREATE OBJECT t2708.
      t2708->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2708->nval = t2709.
      t2706 = t2708.
    ELSE.
      DATA t2710 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2710.
      t2706 = t2710.
    ENDIF.
    t2705 = t2706.
    DATA t2711 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2711.
    DATA t2712 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2712.
    DATA(t2713) = abap_true.
    IF t2713 = abap_true.
      DATA t2714 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2714.
      DATA(t2715) = 2505.
      CLEAR t2714.
      CREATE OBJECT t2714.
      t2714->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2714->nval = t2715.
      t2712 = t2714.
    ELSE.
      DATA t2716 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2716.
      t2712 = t2716.
    ENDIF.
    t2711 = t2712.
    t2686 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2687 i_kernel = t2693 i_op = t2699 i_cloud_47cd = t2705 i_ce = t2711 ).
    CREATE OBJECT t2686->zlnt_view_ownkeys_b0e8086400eb.
    t2686->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2717 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2717.
    IF t2686->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2686->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2717 ).
    ENDIF.
    DATA t2718 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2718.
    IF t2686->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2686->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2718 ).
    ENDIF.
    DATA t2719 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2719.
    IF t2686->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2686->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2719 ).
    ENDIF.
    DATA t2720 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2720.
    IF t2686->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2686->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2720 ).
    ENDIF.
    DATA t2721 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2721.
    IF t2686->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2686->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2721 ).
    ENDIF.
    CREATE OBJECT t2686->zlnt_json_ownkeys_70e5fd461788.
    t2686->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2722) = |abap|.
    DATA t2723 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2723.
    IF t2686->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2686->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2722 p1 = t2723 ).
    ENDIF.
    DATA(t2724) = |kernel|.
    DATA t2725 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2725.
    IF t2686->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2686->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2724 p1 = t2725 ).
    ENDIF.
    DATA(t2726) = |op|.
    DATA t2727 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2727.
    IF t2686->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2686->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2726 p1 = t2727 ).
    ENDIF.
    DATA(t2728) = |cloud|.
    DATA t2729 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2729.
    IF t2686->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2686->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2728 p1 = t2729 ).
    ENDIF.
    DATA(t2730) = |ce|.
    DATA t2731 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2731.
    IF t2686->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2686->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2730 p1 = t2731 ).
    ENDIF.
    t2684 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t2685 i_f1 = t2686 ).
    t2683->load( ).
    APPEND t2684 TO t2683->items.
    t2683->save( ).
    DATA(t2732) = t84.
    DATA t2733 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t2733.
    DATA(t2734) = |v916|.
    DATA t2735 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t2735.
    DATA t2736 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2736.
    DATA t2737 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2737.
    DATA(t2738) = abap_true.
    IF t2738 = abap_true.
      DATA t2739 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2739.
      DATA(t2740) = |9.16|.
      CLEAR t2739.
      CREATE OBJECT t2739.
      t2739->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t2739->sval = t2740.
      t2737 = t2739.
    ELSE.
      DATA t2741 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2741.
      t2737 = t2741.
    ENDIF.
    t2736 = t2737.
    DATA t2742 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2742.
    DATA t2743 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2743.
    DATA(t2744) = abap_true.
    IF t2744 = abap_true.
      DATA t2745 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2745.
      DATA(t2746) = 916.
      CLEAR t2745.
      CREATE OBJECT t2745.
      t2745->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2745->nval = t2746.
      t2743 = t2745.
    ELSE.
      DATA t2747 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2747.
      t2743 = t2747.
    ENDIF.
    t2742 = t2743.
    DATA t2748 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2748.
    DATA t2749 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2749.
    DATA(t2750) = abap_true.
    IF t2750 = abap_true.
      DATA t2751 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2751.
      DATA(t2752) = 816.
      CLEAR t2751.
      CREATE OBJECT t2751.
      t2751->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2751->nval = t2752.
      t2749 = t2751.
    ELSE.
      DATA t2753 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2753.
      t2749 = t2753.
    ENDIF.
    t2748 = t2749.
    DATA t2754 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2754.
    DATA t2755 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2755.
    DATA(t2756) = abap_true.
    IF t2756 = abap_true.
      DATA t2757 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2757.
      DATA(t2758) = 916.
      CLEAR t2757.
      CREATE OBJECT t2757.
      t2757->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2757->nval = t2758.
      t2755 = t2757.
    ELSE.
      DATA t2759 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2759.
      t2755 = t2759.
    ENDIF.
    t2754 = t2755.
    DATA t2760 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2760.
    DATA t2761 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2761.
    DATA(t2762) = abap_true.
    IF t2762 = abap_true.
      DATA t2763 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2763.
      DATA(t2764) = 2508.
      CLEAR t2763.
      CREATE OBJECT t2763.
      t2763->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2763->nval = t2764.
      t2761 = t2763.
    ELSE.
      DATA t2765 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2765.
      t2761 = t2765.
    ENDIF.
    t2760 = t2761.
    t2735 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2736 i_kernel = t2742 i_op = t2748 i_cloud_47cd = t2754 i_ce = t2760 ).
    CREATE OBJECT t2735->zlnt_view_ownkeys_b0e8086400eb.
    t2735->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2766 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2766.
    IF t2735->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2735->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2766 ).
    ENDIF.
    DATA t2767 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2767.
    IF t2735->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2735->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2767 ).
    ENDIF.
    DATA t2768 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2768.
    IF t2735->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2735->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2768 ).
    ENDIF.
    DATA t2769 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2769.
    IF t2735->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2735->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2769 ).
    ENDIF.
    DATA t2770 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2770.
    IF t2735->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2735->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2770 ).
    ENDIF.
    CREATE OBJECT t2735->zlnt_json_ownkeys_70e5fd461788.
    t2735->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2771) = |abap|.
    DATA t2772 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2772.
    IF t2735->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2735->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2771 p1 = t2772 ).
    ENDIF.
    DATA(t2773) = |kernel|.
    DATA t2774 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2774.
    IF t2735->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2735->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2773 p1 = t2774 ).
    ENDIF.
    DATA(t2775) = |op|.
    DATA t2776 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2776.
    IF t2735->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2735->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2775 p1 = t2776 ).
    ENDIF.
    DATA(t2777) = |cloud|.
    DATA t2778 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2778.
    IF t2735->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2735->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2777 p1 = t2778 ).
    ENDIF.
    DATA(t2779) = |ce|.
    DATA t2780 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2780.
    IF t2735->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2735->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2779 p1 = t2780 ).
    ENDIF.
    t2733 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t2734 i_f1 = t2735 ).
    t2732->load( ).
    APPEND t2733 TO t2732->items.
    t2732->save( ).
    DATA(t2781) = t84.
    DATA t2782 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t2782.
    DATA(t2783) = |v917|.
    DATA t2784 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t2784.
    DATA t2785 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2785.
    DATA t2786 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2786.
    DATA(t2787) = abap_true.
    IF t2787 = abap_true.
      DATA t2788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2788.
      DATA(t2789) = |9.17|.
      CLEAR t2788.
      CREATE OBJECT t2788.
      t2788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t2788->sval = t2789.
      t2786 = t2788.
    ELSE.
      DATA t2790 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2790.
      t2786 = t2790.
    ENDIF.
    t2785 = t2786.
    DATA t2791 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2791.
    DATA t2792 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2792.
    DATA(t2793) = abap_true.
    IF t2793 = abap_true.
      DATA t2794 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2794.
      DATA(t2795) = 917.
      CLEAR t2794.
      CREATE OBJECT t2794.
      t2794->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2794->nval = t2795.
      t2792 = t2794.
    ELSE.
      DATA t2796 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2796.
      t2792 = t2796.
    ENDIF.
    t2791 = t2792.
    DATA t2797 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2797.
    DATA t2798 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2798.
    DATA(t2799) = abap_true.
    IF t2799 = abap_true.
      DATA t2800 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2800.
      DATA(t2801) = 0.
      CREATE OBJECT t2800.
      t2800->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t2798 = t2800.
    ELSE.
      DATA t2802 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2802.
      t2798 = t2802.
    ENDIF.
    t2797 = t2798.
    DATA t2803 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2803.
    DATA t2804 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2804.
    DATA(t2805) = abap_true.
    IF t2805 = abap_true.
      DATA t2806 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2806.
      DATA(t2807) = 917.
      CLEAR t2806.
      CREATE OBJECT t2806.
      t2806->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2806->nval = t2807.
      t2804 = t2806.
    ELSE.
      DATA t2808 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2808.
      t2804 = t2808.
    ENDIF.
    t2803 = t2804.
    DATA t2809 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2809.
    DATA t2810 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2810.
    DATA(t2811) = abap_true.
    IF t2811 = abap_true.
      DATA t2812 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2812.
      DATA(t2813) = 2511.
      CLEAR t2812.
      CREATE OBJECT t2812.
      t2812->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2812->nval = t2813.
      t2810 = t2812.
    ELSE.
      DATA t2814 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2814.
      t2810 = t2814.
    ENDIF.
    t2809 = t2810.
    t2784 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2785 i_kernel = t2791 i_op = t2797 i_cloud_47cd = t2803 i_ce = t2809 ).
    CREATE OBJECT t2784->zlnt_view_ownkeys_b0e8086400eb.
    t2784->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2815 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2815.
    IF t2784->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2784->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2815 ).
    ENDIF.
    DATA t2816 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2816.
    IF t2784->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2784->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2816 ).
    ENDIF.
    DATA t2817 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2817.
    IF t2784->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2784->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2817 ).
    ENDIF.
    DATA t2818 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2818.
    IF t2784->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2784->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2818 ).
    ENDIF.
    DATA t2819 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2819.
    IF t2784->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2784->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2819 ).
    ENDIF.
    CREATE OBJECT t2784->zlnt_json_ownkeys_70e5fd461788.
    t2784->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2820) = |abap|.
    DATA t2821 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2821.
    IF t2784->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2784->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2820 p1 = t2821 ).
    ENDIF.
    DATA(t2822) = |kernel|.
    DATA t2823 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2823.
    IF t2784->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2784->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2822 p1 = t2823 ).
    ENDIF.
    DATA(t2824) = |op|.
    DATA t2825 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2825.
    IF t2784->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2784->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2824 p1 = t2825 ).
    ENDIF.
    DATA(t2826) = |cloud|.
    DATA t2827 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2827.
    IF t2784->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2784->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2826 p1 = t2827 ).
    ENDIF.
    DATA(t2828) = |ce|.
    DATA t2829 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2829.
    IF t2784->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2784->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2828 p1 = t2829 ).
    ENDIF.
    t2782 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t2783 i_f1 = t2784 ).
    t2781->load( ).
    APPEND t2782 TO t2781->items.
    t2781->save( ).
    DATA(t2830) = t84.
    DATA t2831 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t2831.
    DATA(t2832) = |v918|.
    DATA t2833 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t2833.
    DATA t2834 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2834.
    DATA t2835 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2835.
    DATA(t2836) = abap_true.
    IF t2836 = abap_true.
      DATA t2837 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2837.
      DATA(t2838) = |9.18|.
      CLEAR t2837.
      CREATE OBJECT t2837.
      t2837->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t2837->sval = t2838.
      t2835 = t2837.
    ELSE.
      DATA t2839 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2839.
      t2835 = t2839.
    ENDIF.
    t2834 = t2835.
    DATA t2840 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2840.
    DATA t2841 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2841.
    DATA(t2842) = abap_true.
    IF t2842 = abap_true.
      DATA t2843 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2843.
      DATA(t2844) = 918.
      CLEAR t2843.
      CREATE OBJECT t2843.
      t2843->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2843->nval = t2844.
      t2841 = t2843.
    ELSE.
      DATA t2845 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2845.
      t2841 = t2845.
    ENDIF.
    t2840 = t2841.
    DATA t2846 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2846.
    DATA t2847 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2847.
    DATA(t2848) = abap_true.
    IF t2848 = abap_true.
      DATA t2849 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2849.
      DATA(t2850) = 0.
      CREATE OBJECT t2849.
      t2849->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t2847 = t2849.
    ELSE.
      DATA t2851 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2851.
      t2847 = t2851.
    ENDIF.
    t2846 = t2847.
    DATA t2852 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2852.
    DATA t2853 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2853.
    DATA(t2854) = abap_true.
    IF t2854 = abap_true.
      DATA t2855 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2855.
      DATA(t2856) = 918.
      CLEAR t2855.
      CREATE OBJECT t2855.
      t2855->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2855->nval = t2856.
      t2853 = t2855.
    ELSE.
      DATA t2857 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2857.
      t2853 = t2857.
    ENDIF.
    t2852 = t2853.
    DATA t2858 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2858.
    DATA t2859 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2859.
    DATA(t2860) = abap_true.
    IF t2860 = abap_true.
      DATA t2861 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2861.
      DATA(t2862) = 2602.
      CLEAR t2861.
      CREATE OBJECT t2861.
      t2861->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2861->nval = t2862.
      t2859 = t2861.
    ELSE.
      DATA t2863 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2863.
      t2859 = t2863.
    ENDIF.
    t2858 = t2859.
    t2833 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2834 i_kernel = t2840 i_op = t2846 i_cloud_47cd = t2852 i_ce = t2858 ).
    CREATE OBJECT t2833->zlnt_view_ownkeys_b0e8086400eb.
    t2833->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2864 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2864.
    IF t2833->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2833->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2864 ).
    ENDIF.
    DATA t2865 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2865.
    IF t2833->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2833->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2865 ).
    ENDIF.
    DATA t2866 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2866.
    IF t2833->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2833->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2866 ).
    ENDIF.
    DATA t2867 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2867.
    IF t2833->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2833->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2867 ).
    ENDIF.
    DATA t2868 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2868.
    IF t2833->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2833->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2868 ).
    ENDIF.
    CREATE OBJECT t2833->zlnt_json_ownkeys_70e5fd461788.
    t2833->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2869) = |abap|.
    DATA t2870 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2870.
    IF t2833->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2833->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2869 p1 = t2870 ).
    ENDIF.
    DATA(t2871) = |kernel|.
    DATA t2872 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2872.
    IF t2833->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2833->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2871 p1 = t2872 ).
    ENDIF.
    DATA(t2873) = |op|.
    DATA t2874 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2874.
    IF t2833->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2833->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2873 p1 = t2874 ).
    ENDIF.
    DATA(t2875) = |cloud|.
    DATA t2876 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2876.
    IF t2833->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2833->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2875 p1 = t2876 ).
    ENDIF.
    DATA(t2877) = |ce|.
    DATA t2878 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2878.
    IF t2833->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2833->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2877 p1 = t2878 ).
    ENDIF.
    t2831 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t2832 i_f1 = t2833 ).
    t2830->load( ).
    APPEND t2831 TO t2830->items.
    t2830->save( ).
    DATA(t2879) = t84.
    DATA t2880 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t2880.
    DATA(t2881) = |Newest|.
    DATA t2882 TYPE REF TO zcl_lnt_shape_27cfcabc.
    CLEAR t2882.
    DATA t2883 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2883.
    DATA t2884 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2884.
    DATA(t2885) = abap_true.
    IF t2885 = abap_true.
      DATA t2886 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2886.
      DATA(t2887) = 0.
      CREATE OBJECT t2886.
      t2886->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t2884 = t2886.
    ELSE.
      DATA t2888 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2888.
      t2884 = t2888.
    ENDIF.
    t2883 = t2884.
    DATA t2889 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2889.
    DATA t2890 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2890.
    DATA(t2891) = abap_true.
    IF t2891 = abap_true.
      DATA t2892 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2892.
      DATA(t2893) = 0.
      CREATE OBJECT t2892.
      t2892->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t2890 = t2892.
    ELSE.
      DATA t2894 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2894.
      t2890 = t2894.
    ENDIF.
    t2889 = t2890.
    DATA t2895 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2895.
    DATA t2896 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2896.
    DATA(t2897) = abap_true.
    IF t2897 = abap_true.
      DATA t2898 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2898.
      DATA(t2899) = 0.
      CREATE OBJECT t2898.
      t2898->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t2896 = t2898.
    ELSE.
      DATA t2900 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2900.
      t2896 = t2900.
    ENDIF.
    t2895 = t2896.
    DATA t2901 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2901.
    DATA t2902 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2902.
    DATA(t2903) = abap_true.
    IF t2903 = abap_true.
      DATA t2904 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2904.
      DATA(t2905) = 0.
      CREATE OBJECT t2904.
      t2904->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t2902 = t2904.
    ELSE.
      DATA t2906 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2906.
      t2902 = t2906.
    ENDIF.
    t2901 = t2902.
    DATA t2907 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2907.
    DATA t2908 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2908.
    DATA(t2909) = abap_true.
    IF t2909 = abap_true.
      DATA t2910 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2910.
      DATA(t2911) = 0.
      CREATE OBJECT t2910.
      t2910->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
      t2908 = t2910.
    ELSE.
      DATA t2912 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2912.
      t2908 = t2912.
    ENDIF.
    t2907 = t2908.
    t2882 = NEW zcl_lnt_shape_27cfcabc( i_abap = t2883 i_kernel = t2889 i_op = t2895 i_cloud_47cd = t2901 i_ce = t2907 ).
    CREATE OBJECT t2882->zlnt_view_ownkeys_b0e8086400eb.
    t2882->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t2913 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2913.
    IF t2882->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2882->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2913 ).
    ENDIF.
    DATA t2914 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2914.
    IF t2882->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2882->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2914 ).
    ENDIF.
    DATA t2915 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2915.
    IF t2882->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2882->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2915 ).
    ENDIF.
    DATA t2916 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2916.
    IF t2882->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2882->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2916 ).
    ENDIF.
    DATA t2917 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2917.
    IF t2882->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2882->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2917 ).
    ENDIF.
    CREATE OBJECT t2882->zlnt_json_ownkeys_70e5fd461788.
    t2882->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t2918) = |abap|.
    DATA t2919 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2919.
    IF t2882->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2882->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2918 p1 = t2919 ).
    ENDIF.
    DATA(t2920) = |kernel|.
    DATA t2921 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2921.
    IF t2882->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2882->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2920 p1 = t2921 ).
    ENDIF.
    DATA(t2922) = |op|.
    DATA t2923 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2923.
    IF t2882->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2882->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2922 p1 = t2923 ).
    ENDIF.
    DATA(t2924) = |cloud|.
    DATA t2925 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2925.
    IF t2882->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2882->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2924 p1 = t2925 ).
    ENDIF.
    DATA(t2926) = |ce|.
    DATA t2927 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2927.
    IF t2882->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2882->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2926 p1 = t2927 ).
    ENDIF.
    t2880 = NEW zcl_lnt_tuple_53b925ee( i_f0 = t2881 i_f1 = t2882 ).
    t2879->load( ).
    APPEND t2880 TO t2879->items.
    t2879->save( ).
    DATA(t2928) = t84.
    t83 = t2928.
    zcl_lnt_version_module=>release_defs_raw = t83.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    DATA t2929 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2929.
    DATA(t2930) = VALUE f( ).
    DATA(t2931) = CONV f( -1 ).
    t2930 = t2931.
    DATA t2932 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2932.
    DATA t2933 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2933.
    CREATE OBJECT t2933.
    t2932 = t2933.
    DATA t2934 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2934.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t2934 = zcl_lnt_version_module=>release_defs_raw.
    DATA t2935 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t2935.
    DATA t2936 TYPE REF TO object.
    CLEAR t2936.
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
      DATA(t2941) = t2930.
      DATA(t2942) = CONV f( 1 ).
      t2940 = t2941 + t2942.
      t2930 = t2940.
      DATA(t2943) = t2932.
      DATA t2944 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2944.
      DATA(t2945) = VALUE string( ).
      DATA(t2946) = VALUE string( ).
      DATA(t2947) = t2935.
      t2946 = t2947->f0.
      t2945 = t2946.
      DATA t2948 TYPE REF TO zcl_lnt_shape_27cfcabc.
      CLEAR t2948.
      DATA t2949 TYPE REF TO zcl_lnt_shape_27cfcabc.
      CLEAR t2949.
      DATA(t2950) = t2935.
      t2949 = t2950->f1.
      t2948 = t2949.
      DATA t2951 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2951.
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
          IF t2956 IS BOUND.
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
          ENDIF.
          t2957->source_value = t2958.
          RAISE EXCEPTION t2957.
      ENDTRY.
      t2952 = t2953.
      DATA t2961 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2961.
      DATA t2962 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2962.
      DATA(t2963) = t2948.
      CLEAR t2962.
      IF t2963 IS BOUND.
        DATA t2964 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t2964.
        DATA t2965 TYPE REF TO object.
        CLEAR t2965.
        CLEAR t2964.
        t2965 = t2963.
        TRY.
            t2962 ?= t2965.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t2962 IS NOT BOUND.
          TRY.
              t2964 ?= t2963.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t2964 IS BOUND.
            t2962 = t2964->source( ).
          ENDIF.
          IF t2962 IS NOT BOUND.
            CREATE OBJECT t2962.
            t2962->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t2962->oval = t2963.
          ENDIF.
        ENDIF.
      ENDIF.
      t2961 = t2962.
      DATA(t2966) = VALUE abap_bool( ).
      DATA(t2967) = VALUE abap_bool( ).
      DATA(t2968) = t2961.
      IF t2968 IS NOT BOUND.
        t2967 = abap_true.
      ELSE.
        t2967 = xsdbool( t2968->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      t2966 = xsdbool( t2967 = abap_false ).
      IF t2966 = abap_true.
        DATA t2969 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t2969.
        DATA(t2970) = t2961.
        t2969 = zlnt_runtime_ownk_4497b85e405d=>keys( t2970 ).
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
          DATA(t2973) = t2952.
          DATA(t2974) = t2971.
          DATA t2975 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t2975.
          DATA(t2976) = t2961.
          DATA(t2977) = t2971.
          t2975 = t2976->get( p0 = t2977 ).
          t2973->put( p0 = t2974 p1 = t2975 ).
        ENDDO.
      ENDIF.
      DATA(t2978) = t2952.
      DATA(t2979) = |name|.
      DATA t2980 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2980.
      DATA(t2981) = t2945.
      CLEAR t2980.
      CREATE OBJECT t2980.
      t2980->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t2980->sval = t2981.
      t2978->put( p0 = t2979 p1 = t2980 ).
      DATA(t2982) = t2952.
      DATA(t2983) = |ordinal|.
      DATA t2984 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2984.
      DATA(t2985) = t2930.
      CLEAR t2984.
      CREATE OBJECT t2984.
      t2984->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t2984->nval = t2985.
      t2982->put( p0 = t2983 p1 = t2984 ).
      DATA t2986 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t2986.
      DATA(t2987) = t2952.
      CLEAR t2986.
      IF t2987 IS BOUND.
        IF t2987->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t2986 ?= t2987->oval.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
        IF t2986 IS NOT BOUND.
          IF t2987->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t2988 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t2988.
            IF t2987->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
            ENDIF.
            TRY.
                t2988 ?= t2987->oval.
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
          t2986 = NEW zcl_lnt_abap_release( view_source = t2987 i_name = t2989 i_abap = t2990 i_kernel = t2991 i_op = t2992 i_cloud_47cd = t2993 i_ce = t2994 i_ordinal = t2995 ).
        ENDIF.
      ENDIF.
      t2951 = t2986.
      t2944 = t2951.
      t2943->load( ).
      APPEND t2944 TO t2943->items.
      t2943->save( ).
    ENDDO.
    DATA(t2996) = t2932.
    t2929 = t2996.
    zcl_lnt_version_module=>release_list = t2929.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    DATA t2997 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2997.
    DATA t2998 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t2998.
    DATA(t2999) = NEW zlnt_runtime_map__201f3699a39e( ).
    t2998 = t2999.
    DATA t3000 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3000.
    DATA(t3001) = VALUE f( ).
    DATA(t3002) = CONV f( -1 ).
    t3001 = t3002.
    DATA t3003 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3003.
    DATA t3004 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3004.
    CREATE OBJECT t3004.
    t3003 = t3004.
    DATA t3005 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3005.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3005 = zcl_lnt_version_module=>release_defs_raw.
    DATA t3006 TYPE REF TO zcl_lnt_tuple_53b925ee.
    CLEAR t3006.
    DATA t3007 TYPE REF TO object.
    CLEAR t3007.
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
      DATA(t3012) = t3001.
      DATA(t3013) = CONV f( 1 ).
      t3011 = t3012 + t3013.
      t3001 = t3011.
      DATA(t3014) = t3003.
      DATA t3015 TYPE REF TO zcl_lnt_tuple_23a05aeb.
      CLEAR t3015.
      DATA(t3016) = VALUE string( ).
      DATA(t3017) = VALUE string( ).
      DATA(t3018) = t3006.
      t3017 = t3018->f0.
      t3016 = t3017.
      DATA t3019 TYPE REF TO zcl_lnt_tuple_23a05aeb.
      CLEAR t3019.
      DATA(t3020) = t3016.
      DATA t3021 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t3021.
      DATA t3022 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t3022.
      IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
        zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
      ENDIF.
      t3022 = zcl_lnt_version_module=>release_list.
      DATA(t3023) = VALUE i( ).
      DATA(t3024) = t3001.
      IF t3024 > range_i32_upper.
        t3023 = range_i32_upper.
      ELSEIF t3024 < range_i32_lower.
        t3023 = range_i32_lower.
      ELSE.
        t3023 = trunc( t3024 ).
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
      t3019 = NEW zcl_lnt_tuple_23a05aeb( i_f0 = t3020 i_f1 = t3021 ).
      t3015 = t3019.
      t3014->load( ).
      APPEND t3015 TO t3014->items.
      t3014->save( ).
    ENDDO.
    DATA(t3035) = t3003.
    t3000 = t3035.
    DATA t3036 TYPE REF TO zcl_lnt_tuple_23a05aeb.
    CLEAR t3036.
    DATA t3037 TYPE REF TO object.
    CLEAR t3037.
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
      DATA(t3042) = t2998.
      DATA(t3043) = VALUE string( ).
      DATA(t3044) = t3036.
      t3043 = t3044->f0.
      DATA t3045 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t3045.
      DATA(t3046) = t3036.
      t3045 = t3046->f1.
      t3041 = t3042->set( p0 = t3043 p1 = t3045 ).
    ENDDO.
    DATA(t3047) = t2998.
    t2997 = t3047.
    zcl_lnt_version_module=>by_name = t2997.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    DATA t3048 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3048.
    DATA t3049 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3049.
    DATA(t3050) = NEW zlnt_runtime_map__201f3699a39e( ).
    t3049 = t3050.
    DATA t3051 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3051.
    DATA t3052 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3052.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3052 = zcl_lnt_version_module=>by_name.
    t3051 = t3052.
    DATA t3053 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t3053.
    DATA(t3054) = t3051.
    t3053 = t3054->keys( ).
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
      DATA(t3058) = t3049.
      DATA(t3059) = t3055.
      DATA t3060 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t3060.
      DATA t3061 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t3061.
      DATA(t3062) = t3051.
      DATA(t3063) = t3055.
      t3061 = t3062->get( p0 = t3063 ).
      t3060 = t3061.
      t3057 = t3058->set( p0 = t3059 p1 = t3060 ).
    ENDDO.
    DATA t3064 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3064.
    DATA(t3065) = t3049.
    DATA(t3066) = |v750|.
    DATA t3067 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3067.
    DATA t3068 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3068.
    DATA t3069 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3069.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3069 = zcl_lnt_version_module=>by_name.
    DATA(t3070) = |v762|.
    t3068 = t3069->get( p0 = t3070 ).
    t3067 = t3068.
    t3064 = t3065->set( p0 = t3066 p1 = t3067 ).
    DATA t3071 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3071.
    DATA(t3072) = t3049.
    DATA(t3073) = |v751|.
    DATA t3074 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3074.
    DATA t3075 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3075.
    DATA t3076 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3076.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3076 = zcl_lnt_version_module=>by_name.
    DATA(t3077) = |v765|.
    t3075 = t3076->get( p0 = t3077 ).
    t3074 = t3075.
    t3071 = t3072->set( p0 = t3073 p1 = t3074 ).
    DATA t3078 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3078.
    DATA(t3079) = t3049.
    DATA(t3080) = |v752|.
    DATA t3081 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3081.
    DATA t3082 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3082.
    DATA t3083 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3083.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3083 = zcl_lnt_version_module=>by_name.
    DATA(t3084) = |v769|.
    t3082 = t3083->get( p0 = t3084 ).
    t3081 = t3082.
    t3078 = t3079->set( p0 = t3080 p1 = t3081 ).
    DATA t3085 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3085.
    DATA(t3086) = t3049.
    DATA(t3087) = |v753|.
    DATA t3088 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3088.
    DATA t3089 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3089.
    DATA t3090 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3090.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3090 = zcl_lnt_version_module=>by_name.
    DATA(t3091) = |v773|.
    t3089 = t3090->get( p0 = t3091 ).
    t3088 = t3089.
    t3085 = t3086->set( p0 = t3087 p1 = t3088 ).
    DATA t3092 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3092.
    DATA(t3093) = t3049.
    DATA(t3094) = |v754|.
    DATA t3095 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3095.
    DATA t3096 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3096.
    DATA t3097 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3097.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3097 = zcl_lnt_version_module=>by_name.
    DATA(t3098) = |v777|.
    t3096 = t3097->get( p0 = t3098 ).
    t3095 = t3096.
    t3092 = t3093->set( p0 = t3094 p1 = t3095 ).
    DATA t3099 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3099.
    DATA(t3100) = t3049.
    DATA(t3101) = |v755|.
    DATA t3102 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3102.
    DATA t3103 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3103.
    DATA t3104 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3104.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3104 = zcl_lnt_version_module=>by_name.
    DATA(t3105) = |v781|.
    t3103 = t3104->get( p0 = t3105 ).
    t3102 = t3103.
    t3099 = t3100->set( p0 = t3101 p1 = t3102 ).
    DATA t3106 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3106.
    DATA(t3107) = t3049.
    DATA(t3108) = |v756|.
    DATA t3109 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3109.
    DATA t3110 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3110.
    DATA t3111 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3111.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3111 = zcl_lnt_version_module=>by_name.
    DATA(t3112) = |v785|.
    t3110 = t3111->get( p0 = t3112 ).
    t3109 = t3110.
    t3106 = t3107->set( p0 = t3108 p1 = t3109 ).
    DATA t3113 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3113.
    DATA(t3114) = t3049.
    DATA(t3115) = |v757|.
    DATA t3116 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3116.
    DATA t3117 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3117.
    DATA t3118 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3118.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3118 = zcl_lnt_version_module=>by_name.
    DATA(t3119) = |v789|.
    t3117 = t3118->get( p0 = t3119 ).
    t3116 = t3117.
    t3113 = t3114->set( p0 = t3115 p1 = t3116 ).
    DATA t3120 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3120.
    DATA(t3121) = t3049.
    DATA(t3122) = |v758|.
    DATA t3123 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3123.
    DATA t3124 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3124.
    DATA t3125 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3125.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3125 = zcl_lnt_version_module=>by_name.
    DATA(t3126) = |v793|.
    t3124 = t3125->get( p0 = t3126 ).
    t3123 = t3124.
    t3120 = t3121->set( p0 = t3122 p1 = t3123 ).
    DATA t3127 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3127.
    DATA(t3128) = t3049.
    DATA(t3129) = |v816|.
    DATA t3130 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3130.
    DATA t3131 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3131.
    DATA t3132 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3132.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3132 = zcl_lnt_version_module=>by_name.
    DATA(t3133) = |v916|.
    t3131 = t3132->get( p0 = t3133 ).
    t3130 = t3131.
    t3127 = t3128->set( p0 = t3129 p1 = t3130 ).
    DATA(t3134) = t3049.
    t3048 = t3134.
    zcl_lnt_version_module=>release_b8cd = t3048.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    DATA t3135 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3135.
    DATA t3136 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3136.
    DATA(t3137) = NEW zlnt_runtime_map__201f3699a39e( ).
    t3136 = t3137.
    DATA t3138 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3138.
    DATA(t3139) = t3136.
    DATA(t3140) = |v700|.
    DATA t3141 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3141.
    DATA t3142 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3142.
    DATA t3143 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3143.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3143 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3144) = |v700|.
    t3142 = t3143->get( p0 = t3144 ).
    t3141 = t3142.
    t3138 = t3139->set( p0 = t3140 p1 = t3141 ).
    DATA t3145 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3145.
    DATA(t3146) = t3136.
    DATA(t3147) = |v702|.
    DATA t3148 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3148.
    DATA t3149 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3149.
    DATA t3150 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3150.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3150 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3151) = |v702|.
    t3149 = t3150->get( p0 = t3151 ).
    t3148 = t3149.
    t3145 = t3146->set( p0 = t3147 p1 = t3148 ).
    DATA t3152 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3152.
    DATA(t3153) = t3136.
    DATA(t3154) = |v740sp02|.
    DATA t3155 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3155.
    DATA t3156 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3156.
    DATA t3157 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3157.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3157 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3158) = |v740sp02|.
    t3156 = t3157->get( p0 = t3158 ).
    t3155 = t3156.
    t3152 = t3153->set( p0 = t3154 p1 = t3155 ).
    DATA t3159 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3159.
    DATA(t3160) = t3136.
    DATA(t3161) = |v740sp05|.
    DATA t3162 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3162.
    DATA t3163 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3163.
    DATA t3164 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3164.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3164 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3165) = |v740sp05|.
    t3163 = t3164->get( p0 = t3165 ).
    t3162 = t3163.
    t3159 = t3160->set( p0 = t3161 p1 = t3162 ).
    DATA t3166 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3166.
    DATA(t3167) = t3136.
    DATA(t3168) = |v740sp08|.
    DATA t3169 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3169.
    DATA t3170 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3170.
    DATA t3171 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3171.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3171 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3172) = |v740sp08|.
    t3170 = t3171->get( p0 = t3172 ).
    t3169 = t3170.
    t3166 = t3167->set( p0 = t3168 p1 = t3169 ).
    DATA t3173 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3173.
    DATA(t3174) = t3136.
    DATA(t3175) = |v750|.
    DATA t3176 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3176.
    DATA t3177 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3177.
    DATA t3178 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3178.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3178 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3179) = |v750|.
    t3177 = t3178->get( p0 = t3179 ).
    t3176 = t3177.
    t3173 = t3174->set( p0 = t3175 p1 = t3176 ).
    DATA t3180 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3180.
    DATA(t3181) = t3136.
    DATA(t3182) = |v751|.
    DATA t3183 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3183.
    DATA t3184 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3184.
    DATA t3185 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3185.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3185 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3186) = |v751|.
    t3184 = t3185->get( p0 = t3186 ).
    t3183 = t3184.
    t3180 = t3181->set( p0 = t3182 p1 = t3183 ).
    DATA t3187 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3187.
    DATA(t3188) = t3136.
    DATA(t3189) = |v752|.
    DATA t3190 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3190.
    DATA t3191 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3191.
    DATA t3192 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3192.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3192 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3193) = |v752|.
    t3191 = t3192->get( p0 = t3193 ).
    t3190 = t3191.
    t3187 = t3188->set( p0 = t3189 p1 = t3190 ).
    DATA t3194 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3194.
    DATA(t3195) = t3136.
    DATA(t3196) = |v753|.
    DATA t3197 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3197.
    DATA t3198 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3198.
    DATA t3199 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3199.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3199 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3200) = |v753|.
    t3198 = t3199->get( p0 = t3200 ).
    t3197 = t3198.
    t3194 = t3195->set( p0 = t3196 p1 = t3197 ).
    DATA t3201 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3201.
    DATA(t3202) = t3136.
    DATA(t3203) = |v754|.
    DATA t3204 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3204.
    DATA t3205 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3205.
    DATA t3206 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3206.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3206 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3207) = |v754|.
    t3205 = t3206->get( p0 = t3207 ).
    t3204 = t3205.
    t3201 = t3202->set( p0 = t3203 p1 = t3204 ).
    DATA t3208 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3208.
    DATA(t3209) = t3136.
    DATA(t3210) = |v755|.
    DATA t3211 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3211.
    DATA t3212 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3212.
    DATA t3213 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3213.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3213 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3214) = |v755|.
    t3212 = t3213->get( p0 = t3214 ).
    t3211 = t3212.
    t3208 = t3209->set( p0 = t3210 p1 = t3211 ).
    DATA t3215 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3215.
    DATA(t3216) = t3136.
    DATA(t3217) = |v756|.
    DATA t3218 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3218.
    DATA t3219 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3219.
    DATA t3220 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3220.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3220 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3221) = |v756|.
    t3219 = t3220->get( p0 = t3221 ).
    t3218 = t3219.
    t3215 = t3216->set( p0 = t3217 p1 = t3218 ).
    DATA t3222 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3222.
    DATA(t3223) = t3136.
    DATA(t3224) = |v757|.
    DATA t3225 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3225.
    DATA t3226 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3226.
    DATA t3227 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3227.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3227 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3228) = |v757|.
    t3226 = t3227->get( p0 = t3228 ).
    t3225 = t3226.
    t3222 = t3223->set( p0 = t3224 p1 = t3225 ).
    DATA t3229 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3229.
    DATA(t3230) = t3136.
    DATA(t3231) = |v758|.
    DATA t3232 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3232.
    DATA t3233 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3233.
    DATA t3234 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3234.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3234 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3235) = |v758|.
    t3233 = t3234->get( p0 = t3235 ).
    t3232 = t3233.
    t3229 = t3230->set( p0 = t3231 p1 = t3232 ).
    DATA t3236 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3236.
    DATA(t3237) = t3136.
    DATA(t3238) = |v816|.
    DATA t3239 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3239.
    DATA t3240 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3240.
    DATA t3241 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3241.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3241 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3242) = |v816|.
    t3240 = t3241->get( p0 = t3242 ).
    t3239 = t3240.
    t3236 = t3237->set( p0 = t3238 p1 = t3239 ).
    DATA t3243 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3243.
    DATA(t3244) = t3136.
    DATA(t3245) = |Cloud|.
    DATA t3246 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3246.
    DATA t3247 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3247.
    DATA t3248 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3248.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3248 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3249) = |Newest|.
    t3247 = t3248->get( p0 = t3249 ).
    t3246 = t3247.
    t3243 = t3244->set( p0 = t3245 p1 = t3246 ).
    DATA t3250 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3250.
    DATA(t3251) = t3136.
    DATA(t3252) = |open-abap|.
    DATA t3253 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3253.
    DATA t3254 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3254.
    DATA t3255 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3255.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3255 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3256) = |open-abap|.
    t3254 = t3255->get( p0 = t3256 ).
    t3253 = t3254.
    t3250 = t3251->set( p0 = t3252 p1 = t3253 ).
    DATA(t3257) = t3136.
    t3135 = t3257.
    zcl_lnt_version_module=>by_deprecated = t3135.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    DATA t3258 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3258.
    DATA t3259 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3259.
    DATA t3260 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t3260.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3260 = zcl_lnt_version_module=>release_b8cd.
    DATA(t3261) = |Newest|.
    t3259 = t3260->get( p0 = t3261 ).
    t3258 = t3259.
    zcl_lnt_version_module=>default_release = t3258.
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
