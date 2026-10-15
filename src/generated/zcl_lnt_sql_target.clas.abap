* TS: src/abap/2_statements/expressions/sql_target.ts:7:1 SQLTarget
CLASS zcl_lnt_sql_target DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_target IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t6.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t6 = zcl_lnt_version_module=>release_b8cd.
    DATA(t7) = |v754|.
    t5 = t6->get( p0 = t7 ).
    t4 = t5.
    CLEAR t3.
    IF t4 IS BOUND.
      DATA t8 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t8.
      DATA t9 TYPE REF TO object.
      CLEAR t9.
      CLEAR t8.
      t9 = t4.
      TRY.
          t3 ?= t9.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t3 IS NOT BOUND.
        TRY.
            t8 ?= t4.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t8 IS BOUND.
          t3 = t8->source( ).
        ENDIF.
        IF t3 IS NOT BOUND.
          CREATE OBJECT t3.
          t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t3->oval = t4.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA(t11) = |NEW|.
    CLEAR t10.
    CREATE OBJECT t10.
    t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t10->sval = t11.
    DATA t12 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t12.
    t2 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t3 i_first = t10 i_opts = t12 ).
    t1 = t2.
    DATA t13 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t13.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA t16 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t16.
    DATA t17 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t18.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t18 = zcl_lnt_version_module=>release_b8cd.
    DATA(t19) = |v740sp05|.
    t17 = t18->get( p0 = t19 ).
    t16 = t17.
    CLEAR t15.
    IF t16 IS BOUND.
      DATA t20 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t20.
      DATA t21 TYPE REF TO object.
      CLEAR t21.
      CLEAR t20.
      t21 = t16.
      TRY.
          t15 ?= t21.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t15 IS NOT BOUND.
        TRY.
            t20 ?= t16.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t20 IS BOUND.
          t15 = t20->source( ).
        ENDIF.
        IF t15 IS NOT BOUND.
          CREATE OBJECT t15.
          t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t15->oval = t16.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA t23 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA t26 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA(t28) = t1.
    CLEAR t27.
    IF t28 IS BOUND.
      DATA t29 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t29.
      DATA t30 TYPE REF TO object.
      CLEAR t30.
      CLEAR t29.
      t30 = t28.
      TRY.
          t27 ?= t30.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t27 IS NOT BOUND.
        TRY.
            t29 ?= t28.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t29 IS BOUND.
          t27 = t29->source( ).
        ENDIF.
        IF t27 IS NOT BOUND.
          CREATE OBJECT t27.
          t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t27->oval = t28.
        ENDIF.
      ENDIF.
    ENDIF.
    t26 = zcl_lnt_st_combi_module=>opt( i_first = t27 ).
    CLEAR t25.
    IF t26 IS BOUND.
      DATA t31 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t31.
      DATA t32 TYPE REF TO object.
      CLEAR t32.
      CLEAR t31.
      t32 = t26.
      TRY.
          t25 ?= t32.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t25 IS NOT BOUND.
        TRY.
            t31 ?= t26.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t31 IS BOUND.
          t25 = t31->source( ).
        ENDIF.
        IF t25 IS NOT BOUND.
          CREATE OBJECT t25.
          t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t25->oval = t26.
        ENDIF.
      ENDIF.
    ENDIF.
    t24 = t25.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    DATA t38 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t38.
    DATA(t39) = zlnt_runtime_desc_78196487750d=>zlnt_member_d42_9f93cd02a8cf40.
    t38 = zcl_lnt_st_combi_module=>tok( i_t = t39 ).
    CLEAR t37.
    IF t38 IS BOUND.
      DATA t40 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t40.
      DATA t41 TYPE REF TO object.
      CLEAR t41.
      CLEAR t40.
      t41 = t38.
      TRY.
          t37 ?= t41.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t37 IS NOT BOUND.
        TRY.
            t40 ?= t38.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t40 IS BOUND.
          t37 = t40->source( ).
        ENDIF.
        IF t37 IS NOT BOUND.
          CREATE OBJECT t37.
          t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t37->oval = t38.
        ENDIF.
      ENDIF.
    ENDIF.
    t36 = t37.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t44.
    DATA(t45) = zlnt_runtime_desc_78196487750d=>zlnt_member_d14_ce741d8560b489.
    t44 = zcl_lnt_st_combi_module=>tok( i_t = t45 ).
    CLEAR t43.
    IF t44 IS BOUND.
      DATA t46 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t46.
      DATA t47 TYPE REF TO object.
      CLEAR t47.
      CLEAR t46.
      t47 = t44.
      TRY.
          t43 ?= t47.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t43 IS NOT BOUND.
        TRY.
            t46 ?= t44.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t46 IS BOUND.
          t43 = t46->source( ).
        ENDIF.
        IF t43 IS NOT BOUND.
          CREATE OBJECT t43.
          t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t43->oval = t44.
        ENDIF.
      ENDIF.
    ENDIF.
    t42 = t43.
    DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t49.
    CREATE OBJECT t49.
    t48 = t49.
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t50.
    DATA(t51) = t36.
    DATA(t52) = t42.
    DATA(t53) = t48.
    t50 = zcl_lnt_st_combi_module=>alt_prio( i_first = t51 i_second = t52 i_rest = t53 ).
    t35 = t50.
    CLEAR t34.
    IF t35 IS BOUND.
      DATA t54 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t54.
      DATA t55 TYPE REF TO object.
      CLEAR t55.
      CLEAR t54.
      t55 = t35.
      TRY.
          t34 ?= t55.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t34 IS NOT BOUND.
        TRY.
            t54 ?= t35.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t54 IS BOUND.
          t34 = t54->source( ).
        ENDIF.
        IF t34 IS NOT BOUND.
          CREATE OBJECT t34.
          t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t34->oval = t35.
        ENDIF.
      ENDIF.
    ENDIF.
    t33 = t34.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t57.
    CREATE OBJECT t57.
    t56 = t57.
    DATA(t58) = t56.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t59.
    IF t60 IS BOUND.
      CREATE OBJECT t59.
      t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t59->cval = t60.
    ENDIF.
    t58->load( ).
    APPEND t59 TO t58->items.
    t58->save( ).
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t61.
    DATA(t62) = t24.
    DATA(t63) = t33.
    DATA(t64) = t56.
    t61 = zcl_lnt_st_combi_module=>seq( i_first = t62 i_second = t63 i_rest = t64 ).
    t23 = t61.
    CLEAR t22.
    IF t23 IS BOUND.
      DATA t65 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t65.
      DATA t66 TYPE REF TO object.
      CLEAR t66.
      CLEAR t65.
      t66 = t23.
      TRY.
          t22 ?= t66.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t22 IS NOT BOUND.
        TRY.
            t65 ?= t23.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t65 IS BOUND.
          t22 = t65->source( ).
        ENDIF.
        IF t22 IS NOT BOUND.
          CREATE OBJECT t22.
          t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t22->oval = t23.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t67 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t67.
    DATA(t68) = abap_true.
    IF t68 = abap_true.
      DATA t69 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t69.
      DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t70.
      DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t71.
      DATA(t72) = abap_true.
      IF t72 = abap_true.
        DATA(t73) = |OpenABAP|.
        DATA(t74) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t74->has = abap_true.
        t74->value = t73.
        t71 = t74.
      ELSE.
        DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t75.
        t71 = t75.
      ENDIF.
      t70 = t71.
      t69 = NEW zcl_lnt_iver_options( i_also = t70 ).
      CREATE OBJECT t69->zlnt_view_ownkeys_b0e8086400eb.
      t69->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t76.
      IF t69->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t69->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t76 ).
      ENDIF.
      CREATE OBJECT t69->zlnt_json_ownkeys_70e5fd461788.
      t69->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t77) = |also|.
      DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t78.
      IF t69->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t69->zlnt_json_ownkeys_70e5fd461788->put( p0 = t77 p1 = t78 ).
      ENDIF.
      t67 = t69.
    ELSE.
      DATA t79 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t79.
      t67 = t79.
    ENDIF.
    t14 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t15 i_first = t22 i_opts = t67 ).
    t13 = t14.
    DATA t80 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t80.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    DATA(t83) = t13.
    CLEAR t82.
    IF t83 IS BOUND.
      DATA t84 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t84.
      DATA t85 TYPE REF TO object.
      CLEAR t85.
      CLEAR t84.
      t85 = t83.
      TRY.
          t82 ?= t85.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t82 IS NOT BOUND.
        TRY.
            t84 ?= t83.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t84 IS BOUND.
          t82 = t84->source( ).
        ENDIF.
        IF t82 IS NOT BOUND.
          CREATE OBJECT t82.
          t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t82->oval = t83.
        ENDIF.
      ENDIF.
    ENDIF.
    t81 = t82.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA(t88) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t87.
    IF t88 IS BOUND.
      CREATE OBJECT t87.
      t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t87->cval = t88.
    ENDIF.
    t86 = t87.
    DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t89.
    DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t90.
    CREATE OBJECT t90.
    t89 = t90.
    DATA t91 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t91.
    DATA(t92) = t81.
    DATA(t93) = t86.
    DATA(t94) = t89.
    t91 = zcl_lnt_st_combi_module=>alt_prio( i_first = t92 i_second = t93 i_rest = t94 ).
    t80 = t91.
    result = t80.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d333_b60636864266.
  ENDMETHOD.
ENDCLASS.
