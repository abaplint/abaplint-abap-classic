* TS: src/abap/2_statements/expressions/sql_set_op_group.ts:7:1 SQLSetOpGroup
CLASS zcl_lnt_st_sql_set_op_group DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_sql_set_op_group IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d276_d6ee8049769d.
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t4->cval = t5.
    ENDIF.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t10.
    t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t10->sval = |SELECT|.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    DATA t15 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t18) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t18->has = abap_true.
    t18->value = abap_false.
    t15 = t18.
    DATA(t23) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t23->has = abap_true.
    t23->value = abap_false.
    t14 = zcl_lnt_select_core_module=>build_select_core( i_allow_into = t15 i_allow_order_by = t23 ).
    IF t14 IS BOUND.
      DATA t25 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t13 ?= t14.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t13 IS NOT BOUND.
        TRY.
            t25 ?= t14.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t25 IS BOUND.
          t13 = t25->source( ).
        ENDIF.
        IF t13 IS NOT BOUND.
          CREATE OBJECT t13.
          t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t13->oval = t14.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t28.
    t8 = zcl_lnt_st_combi_module=>seq( i_first = t10 i_second = t13 i_rest = t28 ).
    IF t8 IS BOUND.
      DATA t33 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t7 ?= t8.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t7 IS NOT BOUND.
        TRY.
            t33 ?= t8.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t33 IS BOUND.
          t7 = t33->source( ).
        ENDIF.
        IF t7 IS NOT BOUND.
          CREATE OBJECT t7.
          t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t7->oval = t8.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t36.
    t1 = zcl_lnt_st_combi_module=>alt_prio( i_first = t4 i_second = t7 i_rest = t36 ).
    DATA t41 TYPE REF TO zif_lnt_statement_runnable.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t46 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t44 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t44 IS NOT BOUND.
        TRY.
            t46 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t46 IS BOUND.
          t44 = t46->source( ).
        ENDIF.
        IF t44 IS NOT BOUND.
          CREATE OBJECT t44.
          t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t44->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t57 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t57 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v750| ).
    IF t57 IS BOUND.
      DATA t61 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t62 TYPE REF TO object.
      t62 = t57.
      TRY.
          t56 ?= t62.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t56 IS NOT BOUND.
        TRY.
            t61 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t61 IS BOUND.
          t56 = t61->source( ).
        ENDIF.
        IF t56 IS NOT BOUND.
          CREATE OBJECT t56.
          t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t56->oval = t57.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t66) = zlnt_runtime_desc_78196487750d=>zlnt_member_d260_1308f310bc0a.
    IF t66 IS BOUND.
      CREATE OBJECT t65.
      t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t65->cval = t66.
    ENDIF.
    t64 = zcl_lnt_st_combi_module=>plus_prio( i_first = t65 ).
    IF t64 IS BOUND.
      DATA t67 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t63 ?= t64.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t63 IS NOT BOUND.
        TRY.
            t67 ?= t64.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t67 IS BOUND.
          t63 = t67->source( ).
        ENDIF.
        IF t63 IS NOT BOUND.
          CREATE OBJECT t63.
          t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t63->oval = t64.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t71 TYPE REF TO zcl_lnt_iver_options.
    DATA(t76) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t76->has = abap_true.
    t76->value = |OpenABAP|.
    t71 = NEW zcl_lnt_iver_options( i_also = t76 ).
    CREATE OBJECT t71->zlnt_view_ownkeys_b0e8086400eb.
    t71->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t71->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t78 ).
    CREATE OBJECT t71->zlnt_json_ownkeys_70e5fd461788.
    t71->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t71->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t80 ).
    t55 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t56 i_first = t63 i_opts = t71 ).
    IF t55 IS BOUND.
      DATA t82 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t54 ?= t55.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t54 IS NOT BOUND.
        TRY.
            t82 ?= t55.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t82 IS BOUND.
          t54 = t82->source( ).
        ENDIF.
        IF t54 IS NOT BOUND.
          CREATE OBJECT t54.
          t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t54->oval = t55.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t88) = zlnt_runtime_desc_78196487750d=>zlnt_member_d261_e2dcf59482ac.
    IF t88 IS BOUND.
      CREATE OBJECT t87.
      t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t87->cval = t88.
    ENDIF.
    t86 = zcl_lnt_st_combi_module=>opt_prio( i_first = t87 ).
    IF t86 IS BOUND.
      DATA t89 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t85 ?= t86.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t85 IS NOT BOUND.
        TRY.
            t89 ?= t86.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t89 IS BOUND.
          t85 = t89->source( ).
        ENDIF.
        IF t85 IS NOT BOUND.
          CREATE OBJECT t85.
          t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t85->oval = t86.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t92.
    t52 = zcl_lnt_st_combi_module=>seq( i_first = t54 i_second = t85 i_rest = t92 ).
    IF t52 IS BOUND.
      DATA t97 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t51 ?= t52.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t51 IS NOT BOUND.
        TRY.
            t97 ?= t52.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t97 IS BOUND.
          t51 = t97->source( ).
        ENDIF.
        IF t51 IS NOT BOUND.
          CREATE OBJECT t51.
          t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t51->oval = t52.
        ENDIF.
      ENDIF.
    ENDIF.
    t50 = zcl_lnt_st_combi_module=>opt_prio( i_first = t51 ).
    IF t50 IS BOUND.
      DATA t99 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t49 ?= t50.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t49 IS NOT BOUND.
        TRY.
            t99 ?= t50.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t99 IS BOUND.
          t49 = t99->source( ).
        ENDIF.
        IF t49 IS NOT BOUND.
          CREATE OBJECT t49.
          t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t49->oval = t50.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t102.
    t41 = zcl_lnt_st_combi_module=>seq( i_first = t44 i_second = t49 i_rest = t102 ).
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t109 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t109 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v750| ).
    IF t109 IS BOUND.
      DATA t113 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t114 TYPE REF TO object.
      t114 = t109.
      TRY.
          t108 ?= t114.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t108 IS NOT BOUND.
        TRY.
            t113 ?= t109.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t113 IS BOUND.
          t108 = t113->source( ).
        ENDIF.
        IF t108 IS NOT BOUND.
          CREATE OBJECT t108.
          t108->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t108->oval = t109.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t116 TYPE REF TO zif_lnt_statement_runnable.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t118.
    t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t118->sval = |(|.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t41 IS BOUND.
      DATA t123 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t121 ?= t41.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t121 IS NOT BOUND.
        TRY.
            t123 ?= t41.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t123 IS BOUND.
          t121 = t123->source( ).
        ENDIF.
        IF t121 IS NOT BOUND.
          CREATE OBJECT t121.
          t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t121->oval = t41.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t125 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t125.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t128.
    t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t128->sval = |)|.
    t125->load( ).
    APPEND t128 TO t125->items.
    t125->save( ).
    t116 = zcl_lnt_st_combi_module=>seq( i_first = t118 i_second = t121 i_rest = t125 ).
    IF t116 IS BOUND.
      DATA t134 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t115 ?= t116.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t115 IS NOT BOUND.
        TRY.
            t134 ?= t116.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t134 IS BOUND.
          t115 = t134->source( ).
        ENDIF.
        IF t115 IS NOT BOUND.
          CREATE OBJECT t115.
          t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t115->oval = t116.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t138 TYPE REF TO zcl_lnt_iver_options.
    DATA(t143) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t143->has = abap_true.
    t143->value = |OpenABAP|.
    t138 = NEW zcl_lnt_iver_options( i_also = t143 ).
    CREATE OBJECT t138->zlnt_view_ownkeys_b0e8086400eb.
    t138->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t138->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t145 ).
    CREATE OBJECT t138->zlnt_json_ownkeys_70e5fd461788.
    t138->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t138->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t147 ).
    result = zcl_lnt_st_combi_module=>ver( i_version_or_release = t108 i_first = t115 i_opts = t138 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d276_d6ee8049769d.
  ENDMETHOD.
ENDCLASS.
