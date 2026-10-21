* TS: src/abap/2_statements/expressions/table_expression.ts:7:1 TableExpression
CLASS zcl_lnt_st_table_expression DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_table_expression IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d127_3599949d7390.
    IF t10 IS BOUND.
      CREATE OBJECT t9.
      t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t9->cval = t10.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t13 IS BOUND.
      CREATE OBJECT t12.
      t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t12->cval = t13.
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t15.
    t7 = zcl_lnt_st_combi_module=>alt_prio( i_first = t9 i_second = t12 i_rest = t15 ).
    IF t7 IS BOUND.
      DATA t20 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t6 ?= t7.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t6 IS NOT BOUND.
        TRY.
            t20 ?= t7.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t20 IS BOUND.
          t6 = t20->source( ).
        ENDIF.
        IF t6 IS NOT BOUND.
          CREATE OBJECT t6.
          t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t6->oval = t7.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t23.
    t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t23->sval = |=|.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t25.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t29) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t29 IS BOUND.
      CREATE OBJECT t28.
      t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t28->cval = t29.
    ENDIF.
    t25->load( ).
    APPEND t28 TO t25->items.
    t25->save( ).
    t4 = zcl_lnt_st_combi_module=>seq( i_first = t6 i_second = t23 i_rest = t25 ).
    IF t4 IS BOUND.
      DATA t34 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t3 ?= t4.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t3 IS NOT BOUND.
        TRY.
            t34 ?= t4.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t34 IS BOUND.
          t3 = t34->source( ).
        ENDIF.
        IF t3 IS NOT BOUND.
          CREATE OBJECT t3.
          t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t3->oval = t4.
        ENDIF.
      ENDIF.
    ENDIF.
    t1 = zcl_lnt_st_combi_module=>plus( i_first = t3 ).
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t39.
    t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t39->sval = |KEY|.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t43) = zlnt_runtime_desc_78196487750d=>zlnt_member_d173_fd387289a527.
    IF t43 IS BOUND.
      CREATE OBJECT t42.
      t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t42->cval = t43.
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t45.
    t36 = zcl_lnt_st_combi_module=>seq( i_first = t39 i_second = t42 i_rest = t45 ).
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t53.
    t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t53->sval = |INDEX|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t57) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t57 IS BOUND.
      CREATE OBJECT t56.
      t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t56->cval = t57.
    ENDIF.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t59.
    t50 = zcl_lnt_st_combi_module=>seq( i_first = t53 i_second = t56 i_rest = t59 ).
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t68 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t69) = zlnt_runtime_desc_78196487750d=>zlnt_member_d17_c487d20bb05c7b.
    t68 = zcl_lnt_st_combi_module=>tok( i_t = t69 ).
    IF t68 IS BOUND.
      DATA t70 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t67 ?= t68.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t67 IS NOT BOUND.
        TRY.
            t70 ?= t68.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t70 IS BOUND.
          t67 = t70->source( ).
        ENDIF.
        IF t67 IS NOT BOUND.
          CREATE OBJECT t67.
          t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t67->oval = t68.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t77 TYPE REF TO zif_lnt_statement_runnable.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t80) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t80 IS BOUND.
      CREATE OBJECT t79.
      t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t79->cval = t80.
    ENDIF.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t84 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t82 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t82 IS NOT BOUND.
        TRY.
            t84 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t84 IS BOUND.
          t82 = t84->source( ).
        ENDIF.
        IF t82 IS NOT BOUND.
          CREATE OBJECT t82.
          t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t82->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t87.
    t77 = zcl_lnt_st_combi_module=>seq( i_first = t79 i_second = t82 i_rest = t87 ).
    IF t77 IS BOUND.
      DATA t92 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t76 ?= t77.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t76 IS NOT BOUND.
        TRY.
            t92 ?= t77.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t92 IS BOUND.
          t76 = t92->source( ).
        ENDIF.
        IF t76 IS NOT BOUND.
          CREATE OBJECT t76.
          t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t76->oval = t77.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t96) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t96 IS BOUND.
      CREATE OBJECT t95.
      t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t95->cval = t96.
    ENDIF.
    DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t97.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t101 TYPE REF TO zif_lnt_statement_runnable.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t36 IS BOUND.
      DATA t107 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t105 ?= t36.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t105 IS NOT BOUND.
        TRY.
            t107 ?= t36.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t107 IS BOUND.
          t105 = t107->source( ).
        ENDIF.
        IF t105 IS NOT BOUND.
          CREATE OBJECT t105.
          t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t105->oval = t36.
        ENDIF.
      ENDIF.
    ENDIF.
    t104 = zcl_lnt_st_combi_module=>opt_prio( i_first = t105 ).
    IF t104 IS BOUND.
      DATA t109 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t103 ?= t104.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t103 IS NOT BOUND.
        TRY.
            t109 ?= t104.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t109 IS BOUND.
          t103 = t109->source( ).
        ENDIF.
        IF t103 IS NOT BOUND.
          CREATE OBJECT t103.
          t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t103->oval = t104.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t114.
    t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t114->sval = |COMPONENTS|.
    t113 = zcl_lnt_st_combi_module=>opt( i_first = t114 ).
    IF t113 IS BOUND.
      DATA t116 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t112 ?= t113.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t112 IS NOT BOUND.
        TRY.
            t116 ?= t113.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t116 IS BOUND.
          t112 = t116->source( ).
        ENDIF.
        IF t112 IS NOT BOUND.
          CREATE OBJECT t112.
          t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t112->oval = t113.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t118 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t118.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t122 TYPE REF TO zif_lnt_statement_runnable.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t126 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t124 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t124 IS NOT BOUND.
        TRY.
            t126 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t126 IS BOUND.
          t124 = t126->source( ).
        ENDIF.
        IF t124 IS NOT BOUND.
          CREATE OBJECT t124.
          t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t124->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t50 IS BOUND.
      DATA t131 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t129 ?= t50.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t129 IS NOT BOUND.
        TRY.
            t131 ?= t50.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t131 IS BOUND.
          t129 = t131->source( ).
        ENDIF.
        IF t129 IS NOT BOUND.
          CREATE OBJECT t129.
          t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t129->oval = t50.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t134.
    t122 = zcl_lnt_st_combi_module=>alt_prio( i_first = t124 i_second = t129 i_rest = t134 ).
    IF t122 IS BOUND.
      DATA t139 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t121 ?= t122.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t121 IS NOT BOUND.
        TRY.
            t139 ?= t122.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t139 IS BOUND.
          t121 = t139->source( ).
        ENDIF.
        IF t121 IS NOT BOUND.
          CREATE OBJECT t121.
          t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t121->oval = t122.
        ENDIF.
      ENDIF.
    ENDIF.
    t118->load( ).
    APPEND t121 TO t118->items.
    t118->save( ).
    t101 = zcl_lnt_st_combi_module=>seq( i_first = t103 i_second = t112 i_rest = t118 ).
    IF t101 IS BOUND.
      DATA t145 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t100 ?= t101.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t100 IS NOT BOUND.
        TRY.
            t145 ?= t101.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t145 IS BOUND.
          t100 = t145->source( ).
        ENDIF.
        IF t100 IS NOT BOUND.
          CREATE OBJECT t100.
          t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t100->oval = t101.
        ENDIF.
      ENDIF.
    ENDIF.
    t97->load( ).
    APPEND t100 TO t97->items.
    t97->save( ).
    t74 = zcl_lnt_st_combi_module=>alt( i_first = t76 i_second = t95 i_rest = t97 ).
    IF t74 IS BOUND.
      DATA t151 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t73 ?= t74.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t73 IS NOT BOUND.
        TRY.
            t151 ?= t74.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t151 IS BOUND.
          t73 = t151->source( ).
        ENDIF.
        IF t73 IS NOT BOUND.
          CREATE OBJECT t73.
          t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t73->oval = t74.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t153.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t157 TYPE REF TO zif_lnt_statement_runnable.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t160 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t161) = zlnt_runtime_desc_78196487750d=>zlnt_member_d46_b4d7f76ec970d6.
    t160 = zcl_lnt_st_combi_module=>tok( i_t = t161 ).
    IF t160 IS BOUND.
      DATA t162 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t159 ?= t160.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t159 IS NOT BOUND.
        TRY.
            t162 ?= t160.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t162 IS BOUND.
          t159 = t162->source( ).
        ENDIF.
        IF t159 IS NOT BOUND.
          CREATE OBJECT t159.
          t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t159->oval = t160.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t166 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t167) = zlnt_runtime_desc_78196487750d=>zlnt_member_d47_2a66c13abb507b.
    t166 = zcl_lnt_st_combi_module=>tok( i_t = t167 ).
    IF t166 IS BOUND.
      DATA t168 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t165 ?= t166.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t165 IS NOT BOUND.
        TRY.
            t168 ?= t166.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t168 IS BOUND.
          t165 = t168->source( ).
        ENDIF.
        IF t165 IS NOT BOUND.
          CREATE OBJECT t165.
          t165->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t165->oval = t166.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t171 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t171.
    t157 = zcl_lnt_st_combi_module=>alt_prio( i_first = t159 i_second = t165 i_rest = t171 ).
    IF t157 IS BOUND.
      DATA t176 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t156 ?= t157.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t156 IS NOT BOUND.
        TRY.
            t176 ?= t157.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t176 IS BOUND.
          t156 = t176->source( ).
        ENDIF.
        IF t156 IS NOT BOUND.
          CREATE OBJECT t156.
          t156->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t156->oval = t157.
        ENDIF.
      ENDIF.
    ENDIF.
    t153->load( ).
    APPEND t156 TO t153->items.
    t153->save( ).
    t64 = zcl_lnt_st_combi_module=>seq( i_first = t67 i_second = t73 i_rest = t153 ).
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t184 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t184 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v740sp02| ).
    IF t184 IS BOUND.
      DATA t188 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t189 TYPE REF TO object.
      t189 = t184.
      TRY.
          t183 ?= t189.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t183 IS NOT BOUND.
        TRY.
            t188 ?= t184.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t188 IS BOUND.
          t183 = t188->source( ).
        ENDIF.
        IF t183 IS NOT BOUND.
          CREATE OBJECT t183.
          t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t183->oval = t184.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t64 IS BOUND.
      DATA t192 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t190 ?= t64.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t190 IS NOT BOUND.
        TRY.
            t192 ?= t64.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t192 IS BOUND.
          t190 = t192->source( ).
        ENDIF.
        IF t190 IS NOT BOUND.
          CREATE OBJECT t190.
          t190->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t190->oval = t64.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t196 TYPE REF TO zcl_lnt_iver_options.
    DATA(t201) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t201->has = abap_true.
    t201->value = |OpenABAP|.
    t196 = NEW zcl_lnt_iver_options( i_also = t201 ).
    CREATE OBJECT t196->zlnt_view_ownkeys_b0e8086400eb.
    t196->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t203 ).
    CREATE OBJECT t196->zlnt_json_ownkeys_70e5fd461788.
    t196->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t205 ).
    result = zcl_lnt_st_combi_module=>ver( i_version_or_release = t183 i_first = t190 i_opts = t196 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d101_98dd83adae1d.
  ENDMETHOD.
ENDCLASS.
