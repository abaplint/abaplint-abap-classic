* TS: src/abap/2_statements/expressions/string_template.ts:7:1 StringTemplate
CLASS zcl_lnt_st_string_template DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_string_template IMPLEMENTATION.
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
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t5.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d39_e3f398e6e4184c.
    t5 = zcl_lnt_st_combi_module=>tok( i_t = t6 ).
    CLEAR t4.
    IF t5 IS BOUND.
      DATA t7 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t7.
      DATA t8 TYPE REF TO object.
      CLEAR t8.
      CLEAR t7.
      t8 = t5.
      TRY.
          t4 ?= t8.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t7 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t7 IS BOUND.
          t4 = t7->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    t3 = t4.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d346_869087cbf76f.
    CLEAR t10.
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t10->cval = t11.
    ENDIF.
    t9 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t13.
    CREATE OBJECT t13.
    t12 = t13.
    DATA(t14) = t12.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t21.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d41_e53da77a9517f4.
    t21 = zcl_lnt_st_combi_module=>tok( i_t = t22 ).
    CLEAR t20.
    IF t21 IS BOUND.
      DATA t23 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t23.
      DATA t24 TYPE REF TO object.
      CLEAR t24.
      CLEAR t23.
      t24 = t21.
      TRY.
          t20 ?= t24.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t20 IS NOT BOUND.
        TRY.
            t23 ?= t21.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t23 IS BOUND.
          t20 = t23->source( ).
        ENDIF.
        IF t20 IS NOT BOUND.
          CREATE OBJECT t20.
          t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t20->oval = t21.
        ENDIF.
      ENDIF.
    ENDIF.
    t19 = t20.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d346_869087cbf76f.
    CLEAR t26.
    IF t27 IS BOUND.
      CREATE OBJECT t26.
      t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t26->cval = t27.
    ENDIF.
    t25 = t26.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t29.
    CREATE OBJECT t29.
    t28 = t29.
    DATA t30 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t30.
    DATA(t31) = t19.
    DATA(t32) = t25.
    DATA(t33) = t28.
    t30 = zcl_lnt_st_combi_module=>seq( i_first = t31 i_second = t32 i_rest = t33 ).
    t18 = t30.
    CLEAR t17.
    IF t18 IS BOUND.
      DATA t34 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t34.
      DATA t35 TYPE REF TO object.
      CLEAR t35.
      CLEAR t34.
      t35 = t18.
      TRY.
          t17 ?= t35.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t17 IS NOT BOUND.
        TRY.
            t34 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t34 IS BOUND.
          t17 = t34->source( ).
        ENDIF.
        IF t17 IS NOT BOUND.
          CREATE OBJECT t17.
          t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t17->oval = t18.
        ENDIF.
      ENDIF.
    ENDIF.
    t16 = zcl_lnt_st_combi_module=>star_prio( i_first = t17 ).
    CLEAR t15.
    IF t16 IS BOUND.
      DATA t36 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t36.
      DATA t37 TYPE REF TO object.
      CLEAR t37.
      CLEAR t36.
      t37 = t16.
      TRY.
          t15 ?= t37.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t15 IS NOT BOUND.
        TRY.
            t36 ?= t16.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t36 IS BOUND.
          t15 = t36->source( ).
        ENDIF.
        IF t15 IS NOT BOUND.
          CREATE OBJECT t15.
          t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t15->oval = t16.
        ENDIF.
      ENDIF.
    ENDIF.
    t14->load( ).
    APPEND t15 TO t14->items.
    t14->save( ).
    DATA(t38) = t12.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA t40 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t40.
    DATA(t41) = zlnt_runtime_desc_78196487750d=>zlnt_member_d40_8eb5c429ff1f45.
    t40 = zcl_lnt_st_combi_module=>tok( i_t = t41 ).
    CLEAR t39.
    IF t40 IS BOUND.
      DATA t42 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t42.
      DATA t43 TYPE REF TO object.
      CLEAR t43.
      CLEAR t42.
      t43 = t40.
      TRY.
          t39 ?= t43.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t39 IS NOT BOUND.
        TRY.
            t42 ?= t40.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t42 IS BOUND.
          t39 = t42->source( ).
        ENDIF.
        IF t39 IS NOT BOUND.
          CREATE OBJECT t39.
          t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t39->oval = t40.
        ENDIF.
      ENDIF.
    ENDIF.
    t38->load( ).
    APPEND t39 TO t38->items.
    t38->save( ).
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t44.
    DATA(t45) = t3.
    DATA(t46) = t9.
    DATA(t47) = t12.
    t44 = zcl_lnt_st_combi_module=>seq( i_first = t45 i_second = t46 i_rest = t47 ).
    t2 = t44.
    t1 = t2.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA t50 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t50.
    DATA t51 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t51.
    DATA t52 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t52.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t52 = zcl_lnt_version_module=>release_b8cd.
    DATA(t53) = |v702|.
    t51 = t52->get( p0 = t53 ).
    t50 = t51.
    CLEAR t49.
    IF t50 IS BOUND.
      DATA t54 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t54.
      DATA t55 TYPE REF TO object.
      CLEAR t55.
      CLEAR t54.
      t55 = t50.
      TRY.
          t49 ?= t55.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t49 IS NOT BOUND.
        TRY.
            t54 ?= t50.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t54 IS BOUND.
          t49 = t54->source( ).
        ENDIF.
        IF t49 IS NOT BOUND.
          CREATE OBJECT t49.
          t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t49->oval = t50.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t57.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA(t60) = t1.
    CLEAR t59.
    IF t60 IS BOUND.
      DATA t61 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t61.
      DATA t62 TYPE REF TO object.
      CLEAR t62.
      CLEAR t61.
      t62 = t60.
      TRY.
          t59 ?= t62.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t59 IS NOT BOUND.
        TRY.
            t61 ?= t60.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t61 IS BOUND.
          t59 = t61->source( ).
        ENDIF.
        IF t59 IS NOT BOUND.
          CREATE OBJECT t59.
          t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t59->oval = t60.
        ENDIF.
      ENDIF.
    ENDIF.
    t58 = t59.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA t65 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t65.
    DATA(t66) = zlnt_runtime_desc_78196487750d=>zlnt_member_d38_db94e541375fea.
    t65 = zcl_lnt_st_combi_module=>tok( i_t = t66 ).
    CLEAR t64.
    IF t65 IS BOUND.
      DATA t67 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t67.
      DATA t68 TYPE REF TO object.
      CLEAR t68.
      CLEAR t67.
      t68 = t65.
      TRY.
          t64 ?= t68.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t64 IS NOT BOUND.
        TRY.
            t67 ?= t65.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t67 IS BOUND.
          t64 = t67->source( ).
        ENDIF.
        IF t64 IS NOT BOUND.
          CREATE OBJECT t64.
          t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t64->oval = t65.
        ENDIF.
      ENDIF.
    ENDIF.
    t63 = t64.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t69.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t70.
    CREATE OBJECT t70.
    t69 = t70.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t71.
    DATA(t72) = t58.
    DATA(t73) = t63.
    DATA(t74) = t69.
    t71 = zcl_lnt_st_combi_module=>alt_prio( i_first = t72 i_second = t73 i_rest = t74 ).
    t57 = t71.
    CLEAR t56.
    IF t57 IS BOUND.
      DATA t75 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t75.
      DATA t76 TYPE REF TO object.
      CLEAR t76.
      CLEAR t75.
      t76 = t57.
      TRY.
          t56 ?= t76.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t56 IS NOT BOUND.
        TRY.
            t75 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t75 IS BOUND.
          t56 = t75->source( ).
        ENDIF.
        IF t56 IS NOT BOUND.
          CREATE OBJECT t56.
          t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t56->oval = t57.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t77 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t77.
    t48 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t49 i_first = t56 i_opts = t77 ).
    result = t48.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d278_cacef970a917.
  ENDMETHOD.
ENDCLASS.
