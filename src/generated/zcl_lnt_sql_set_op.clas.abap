* TS: src/abap/2_statements/expressions/sql_set_op.ts:7:1 SQLSetOp
CLASS zcl_lnt_sql_set_op DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_set_op IMPLEMENTATION.
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
      DATA t26 TYPE REF TO object.
      t26 = t14.
      TRY.
          t13 ?= t26.
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
      DATA t34 TYPE REF TO object.
      t34 = t8.
      TRY.
          t7 ?= t34.
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
    CREATE OBJECT t44.
    t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t44->sval = |UNION|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t52.
    t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t52->sval = |DISTINCT|.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t55.
    t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t55->sval = |ALL|.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t58.
    t50 = zcl_lnt_st_combi_module=>alt_prio( i_first = t52 i_second = t55 i_rest = t58 ).
    IF t50 IS BOUND.
      DATA t63 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t64 TYPE REF TO object.
      t64 = t50.
      TRY.
          t49 ?= t64.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t49 IS NOT BOUND.
        TRY.
            t63 ?= t50.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t63 IS BOUND.
          t49 = t63->source( ).
        ENDIF.
        IF t49 IS NOT BOUND.
          CREATE OBJECT t49.
          t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t49->oval = t50.
        ENDIF.
      ENDIF.
    ENDIF.
    t48 = zcl_lnt_st_combi_module=>opt_prio( i_first = t49 ).
    IF t48 IS BOUND.
      DATA t65 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t66 TYPE REF TO object.
      t66 = t48.
      TRY.
          t47 ?= t66.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t47 IS NOT BOUND.
        TRY.
            t65 ?= t48.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t65 IS BOUND.
          t47 = t65->source( ).
        ENDIF.
        IF t47 IS NOT BOUND.
          CREATE OBJECT t47.
          t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t47->oval = t48.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t68.
    t41 = zcl_lnt_st_combi_module=>seq( i_first = t44 i_second = t47 i_rest = t68 ).
    DATA t73 TYPE REF TO zif_lnt_statement_runnable.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t77 TYPE REF TO zif_lnt_statement_runnable.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t79.
    t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t79->sval = |INTERSECT|.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t83 TYPE REF TO zif_lnt_statement_runnable.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t84.
    t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t84->sval = |DISTINCT|.
    t83 = zcl_lnt_st_combi_module=>opt_prio( i_first = t84 ).
    IF t83 IS BOUND.
      DATA t86 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t87 TYPE REF TO object.
      t87 = t83.
      TRY.
          t82 ?= t87.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t82 IS NOT BOUND.
        TRY.
            t86 ?= t83.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t86 IS BOUND.
          t82 = t86->source( ).
        ENDIF.
        IF t82 IS NOT BOUND.
          CREATE OBJECT t82.
          t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t82->oval = t83.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t89.
    t77 = zcl_lnt_st_combi_module=>seq( i_first = t79 i_second = t82 i_rest = t89 ).
    IF t77 IS BOUND.
      DATA t94 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t95 TYPE REF TO object.
      t95 = t77.
      TRY.
          t76 ?= t95.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t76 IS NOT BOUND.
        TRY.
            t94 ?= t77.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t94 IS BOUND.
          t76 = t94->source( ).
        ENDIF.
        IF t76 IS NOT BOUND.
          CREATE OBJECT t76.
          t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t76->oval = t77.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t100.
    t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t100->sval = |EXCEPT|.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t105.
    t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t105->sval = |DISTINCT|.
    t104 = zcl_lnt_st_combi_module=>opt_prio( i_first = t105 ).
    IF t104 IS BOUND.
      DATA t107 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t108 TYPE REF TO object.
      t108 = t104.
      TRY.
          t103 ?= t108.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t103 IS NOT BOUND.
        TRY.
            t107 ?= t104.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t107 IS BOUND.
          t103 = t107->source( ).
        ENDIF.
        IF t103 IS NOT BOUND.
          CREATE OBJECT t103.
          t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t103->oval = t104.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t110.
    t98 = zcl_lnt_st_combi_module=>seq( i_first = t100 i_second = t103 i_rest = t110 ).
    IF t98 IS BOUND.
      DATA t115 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t116 TYPE REF TO object.
      t116 = t98.
      TRY.
          t97 ?= t116.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t97 IS NOT BOUND.
        TRY.
            t115 ?= t98.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t115 IS BOUND.
          t97 = t115->source( ).
        ENDIF.
        IF t97 IS NOT BOUND.
          CREATE OBJECT t97.
          t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t97->oval = t98.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t118 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t118.
    t73 = zcl_lnt_st_combi_module=>alt_prio( i_first = t76 i_second = t97 i_rest = t118 ).
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t129 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t129 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v750| ).
    IF t129 IS BOUND.
      DATA t133 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t134 TYPE REF TO object.
      t134 = t129.
      TRY.
          t128 ?= t134.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t128 IS NOT BOUND.
        TRY.
            t133 ?= t129.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t133 IS BOUND.
          t128 = t133->source( ).
        ENDIF.
        IF t128 IS NOT BOUND.
          CREATE OBJECT t128.
          t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t128->oval = t129.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t41 IS BOUND.
      DATA t137 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t138 TYPE REF TO object.
      t138 = t41.
      TRY.
          t135 ?= t138.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t135 IS NOT BOUND.
        TRY.
            t137 ?= t41.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t137 IS BOUND.
          t135 = t137->source( ).
        ENDIF.
        IF t135 IS NOT BOUND.
          CREATE OBJECT t135.
          t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t135->oval = t41.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t141 TYPE REF TO zcl_lnt_iver_options.
    DATA(t146) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t146->has = abap_true.
    t146->value = |OpenABAP|.
    t141 = NEW zcl_lnt_iver_options( i_also = t146 ).
    CREATE OBJECT t141->zlnt_view_ownkeys_b0e8086400eb.
    t141->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t141->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t148 ).
    CREATE OBJECT t141->zlnt_json_ownkeys_70e5fd461788.
    t141->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t141->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t150 ).
    t127 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t128 i_first = t135 i_opts = t141 ).
    IF t127 IS BOUND.
      DATA t152 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t153 TYPE REF TO object.
      t153 = t127.
      TRY.
          t126 ?= t153.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t126 IS NOT BOUND.
        TRY.
            t152 ?= t127.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t152 IS BOUND.
          t126 = t152->source( ).
        ENDIF.
        IF t126 IS NOT BOUND.
          CREATE OBJECT t126.
          t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t126->oval = t127.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t156 TYPE REF TO zif_lnt_statement_runnable.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t158 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t158 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v756| ).
    IF t158 IS BOUND.
      DATA t162 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t163 TYPE REF TO object.
      t163 = t158.
      TRY.
          t157 ?= t163.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t157 IS NOT BOUND.
        TRY.
            t162 ?= t158.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t162 IS BOUND.
          t157 = t162->source( ).
        ENDIF.
        IF t157 IS NOT BOUND.
          CREATE OBJECT t157.
          t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t157->oval = t158.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t73 IS BOUND.
      DATA t166 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t167 TYPE REF TO object.
      t167 = t73.
      TRY.
          t164 ?= t167.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t164 IS NOT BOUND.
        TRY.
            t166 ?= t73.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t166 IS BOUND.
          t164 = t166->source( ).
        ENDIF.
        IF t164 IS NOT BOUND.
          CREATE OBJECT t164.
          t164->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t164->oval = t73.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t168 TYPE REF TO zcl_lnt_iver_options.
    t156 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t157 i_first = t164 i_opts = t168 ).
    IF t156 IS BOUND.
      DATA t169 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t170 TYPE REF TO object.
      t170 = t156.
      TRY.
          t155 ?= t170.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t155 IS NOT BOUND.
        TRY.
            t169 ?= t156.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t169 IS BOUND.
          t155 = t169->source( ).
        ENDIF.
        IF t155 IS NOT BOUND.
          CREATE OBJECT t155.
          t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t155->oval = t156.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t172.
    t123 = zcl_lnt_st_combi_module=>alt_prio( i_first = t126 i_second = t155 i_rest = t172 ).
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t123 IS BOUND.
      DATA t181 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t182 TYPE REF TO object.
      t182 = t123.
      TRY.
          t179 ?= t182.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t179 IS NOT BOUND.
        TRY.
            t181 ?= t123.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t181 IS BOUND.
          t179 = t181->source( ).
        ENDIF.
        IF t179 IS NOT BOUND.
          CREATE OBJECT t179.
          t179->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t179->oval = t123.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t186 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t187 TYPE REF TO object.
      t187 = t1.
      TRY.
          t184 ?= t187.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t184 IS NOT BOUND.
        TRY.
            t186 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t186 IS BOUND.
          t184 = t186->source( ).
        ENDIF.
        IF t184 IS NOT BOUND.
          CREATE OBJECT t184.
          t184->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t184->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t189 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t189.
    result = zcl_lnt_st_combi_module=>seq( i_first = t179 i_second = t184 i_rest = t189 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d260_1308f310bc0a.
  ENDMETHOD.
ENDCLASS.
