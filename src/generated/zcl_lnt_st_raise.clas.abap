* TS: src/abap/2_statements/statements/raise.ts:7:1 Raise
CLASS zcl_lnt_st_raise DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_raise IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |MESSAGE|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d218_79f2a1395386.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t9.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t13 TYPE REF TO zif_lnt_statement_runnable.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t15) = zlnt_runtime_desc_78196487750d=>zlnt_member_d249_9dc4af95df9d.
    IF t15 IS BOUND.
      CREATE OBJECT t14.
      t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t14->cval = t15.
    ENDIF.
    t13 = zcl_lnt_st_combi_module=>opt( i_first = t14 ).
    IF t13 IS BOUND.
      DATA t16 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t12 ?= t13.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t12 IS NOT BOUND.
        TRY.
            t16 ?= t13.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t16 IS BOUND.
          t12 = t16->source( ).
        ENDIF.
        IF t12 IS NOT BOUND.
          CREATE OBJECT t12.
          t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t12->oval = t13.
        ENDIF.
      ENDIF.
    ENDIF.
    t9->load( ).
    APPEND t12 TO t9->items.
    t9->save( ).
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t9 ).
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t25.
    t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t25->sval = |MESSAGE ID|.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t29) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t29 IS BOUND.
      CREATE OBJECT t28.
      t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t28->cval = t29.
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t30.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t33.
    t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t33->sval = |NUMBER|.
    t30->load( ).
    APPEND t33 TO t30->items.
    t30->save( ).
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t40) = zlnt_runtime_desc_78196487750d=>zlnt_member_d216_5867c1ce5807.
    IF t40 IS BOUND.
      CREATE OBJECT t39.
      t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t39->cval = t40.
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t43) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t43 IS BOUND.
      CREATE OBJECT t42.
      t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t42->cval = t43.
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t45.
    t37 = zcl_lnt_st_combi_module=>alt_prio( i_first = t39 i_second = t42 i_rest = t45 ).
    IF t37 IS BOUND.
      DATA t50 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t36 ?= t37.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t36 IS NOT BOUND.
        TRY.
            t50 ?= t37.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t50 IS BOUND.
          t36 = t50->source( ).
        ENDIF.
        IF t36 IS NOT BOUND.
          CREATE OBJECT t36.
          t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t36->oval = t37.
        ENDIF.
      ENDIF.
    ENDIF.
    t30->load( ).
    APPEND t36 TO t30->items.
    t30->save( ).
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t54 TYPE REF TO zif_lnt_statement_runnable.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t56) = zlnt_runtime_desc_78196487750d=>zlnt_member_d249_9dc4af95df9d.
    IF t56 IS BOUND.
      CREATE OBJECT t55.
      t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t55->cval = t56.
    ENDIF.
    t54 = zcl_lnt_st_combi_module=>opt_prio( i_first = t55 ).
    IF t54 IS BOUND.
      DATA t57 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t53 ?= t54.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t53 IS NOT BOUND.
        TRY.
            t57 ?= t54.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t57 IS BOUND.
          t53 = t57->source( ).
        ENDIF.
        IF t53 IS NOT BOUND.
          CREATE OBJECT t53.
          t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t53->oval = t54.
        ENDIF.
      ENDIF.
    ENDIF.
    t30->load( ).
    APPEND t53 TO t30->items.
    t30->save( ).
    t22 = zcl_lnt_st_combi_module=>seq( i_first = t25 i_second = t28 i_rest = t30 ).
    DATA t63 TYPE REF TO zif_lnt_statement_runnable.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t66.
    t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t66->sval = |EXPORTING|.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t70) = zlnt_runtime_desc_78196487750d=>zlnt_member_d225_0eec1dcc9b8a.
    IF t70 IS BOUND.
      CREATE OBJECT t69.
      t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t69->cval = t70.
    ENDIF.
    DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t72.
    t63 = zcl_lnt_st_combi_module=>seq( i_first = t66 i_second = t69 i_rest = t72 ).
    DATA t77 TYPE REF TO zif_lnt_statement_runnable.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t80.
    t80->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t80->sval = |TYPE|.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t84) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
    IF t84 IS BOUND.
      CREATE OBJECT t83.
      t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t83->cval = t84.
    ENDIF.
    DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t85.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t91 TYPE REF TO zif_lnt_statement_runnable.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t94 TYPE REF TO zif_lnt_statement_runnable.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t96 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t96 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v750| ).
    IF t96 IS BOUND.
      DATA t100 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t101 TYPE REF TO object.
      t101 = t96.
      TRY.
          t95 ?= t101.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t95 IS NOT BOUND.
        TRY.
            t100 ?= t96.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t100 IS BOUND.
          t95 = t100->source( ).
        ENDIF.
        IF t95 IS NOT BOUND.
          CREATE OBJECT t95.
          t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t95->oval = t96.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t103 TYPE REF TO zif_lnt_statement_runnable.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t107 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t105 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t105 IS NOT BOUND.
        TRY.
            t107 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t107 IS BOUND.
          t105 = t107->source( ).
        ENDIF.
        IF t105 IS NOT BOUND.
          CREATE OBJECT t105.
          t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t105->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t22 IS BOUND.
      DATA t112 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t110 ?= t22.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t110 IS NOT BOUND.
        TRY.
            t112 ?= t22.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t112 IS BOUND.
          t110 = t112->source( ).
        ENDIF.
        IF t110 IS NOT BOUND.
          CREATE OBJECT t110.
          t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t110->oval = t22.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t115 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t115.
    t103 = zcl_lnt_st_combi_module=>alt( i_first = t105 i_second = t110 i_rest = t115 ).
    IF t103 IS BOUND.
      DATA t120 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t102 ?= t103.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t102 IS NOT BOUND.
        TRY.
            t120 ?= t103.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t120 IS BOUND.
          t102 = t120->source( ).
        ENDIF.
        IF t102 IS NOT BOUND.
          CREATE OBJECT t102.
          t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t102->oval = t103.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t124 TYPE REF TO zcl_lnt_iver_options.
    DATA(t129) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t129->has = abap_true.
    t129->value = |OpenABAP|.
    t124 = NEW zcl_lnt_iver_options( i_also = t129 ).
    CREATE OBJECT t124->zlnt_view_ownkeys_b0e8086400eb.
    t124->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t124->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t131 ).
    CREATE OBJECT t124->zlnt_json_ownkeys_70e5fd461788.
    t124->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t124->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t133 ).
    t94 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t95 i_first = t102 i_opts = t124 ).
    IF t94 IS BOUND.
      DATA t135 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t93 ?= t94.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t93 IS NOT BOUND.
        TRY.
            t135 ?= t94.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t135 IS BOUND.
          t93 = t135->source( ).
        ENDIF.
        IF t93 IS NOT BOUND.
          CREATE OBJECT t93.
          t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t93->oval = t94.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t139 TYPE REF TO zif_lnt_statement_runnable.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t141 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t141 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v752| ).
    IF t141 IS BOUND.
      DATA t145 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t146 TYPE REF TO object.
      t146 = t141.
      TRY.
          t140 ?= t146.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t140 IS NOT BOUND.
        TRY.
            t145 ?= t141.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t145 IS BOUND.
          t140 = t145->source( ).
        ENDIF.
        IF t140 IS NOT BOUND.
          CREATE OBJECT t140.
          t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t140->oval = t141.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t147.
    t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t147->sval = |USING MESSAGE|.
    DATA t149 TYPE REF TO zcl_lnt_iver_options.
    t139 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t140 i_first = t147 i_opts = t149 ).
    IF t139 IS BOUND.
      DATA t150 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t138 ?= t139.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t138 IS NOT BOUND.
        TRY.
            t150 ?= t139.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t150 IS BOUND.
          t138 = t150->source( ).
        ENDIF.
        IF t138 IS NOT BOUND.
          CREATE OBJECT t138.
          t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t138->oval = t139.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t153.
    t91 = zcl_lnt_st_combi_module=>alt( i_first = t93 i_second = t138 i_rest = t153 ).
    IF t91 IS BOUND.
      DATA t158 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t90 ?= t91.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t90 IS NOT BOUND.
        TRY.
            t158 ?= t91.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t158 IS BOUND.
          t90 = t158->source( ).
        ENDIF.
        IF t90 IS NOT BOUND.
          CREATE OBJECT t90.
          t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t90->oval = t91.
        ENDIF.
      ENDIF.
    ENDIF.
    t89 = zcl_lnt_st_combi_module=>opt( i_first = t90 ).
    IF t89 IS BOUND.
      DATA t160 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t88 ?= t89.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t88 IS NOT BOUND.
        TRY.
            t160 ?= t89.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t160 IS BOUND.
          t88 = t160->source( ).
        ENDIF.
        IF t88 IS NOT BOUND.
          CREATE OBJECT t88.
          t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t88->oval = t89.
        ENDIF.
      ENDIF.
    ENDIF.
    t85->load( ).
    APPEND t88 TO t85->items.
    t85->save( ).
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t164 TYPE REF TO zif_lnt_statement_runnable.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t63 IS BOUND.
      DATA t167 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t165 ?= t63.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t165 IS NOT BOUND.
        TRY.
            t167 ?= t63.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t167 IS BOUND.
          t165 = t167->source( ).
        ENDIF.
        IF t165 IS NOT BOUND.
          CREATE OBJECT t165.
          t165->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t165->oval = t63.
        ENDIF.
      ENDIF.
    ENDIF.
    t164 = zcl_lnt_st_combi_module=>opt_prio( i_first = t165 ).
    IF t164 IS BOUND.
      DATA t169 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t163 ?= t164.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t163 IS NOT BOUND.
        TRY.
            t169 ?= t164.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t169 IS BOUND.
          t163 = t169->source( ).
        ENDIF.
        IF t163 IS NOT BOUND.
          CREATE OBJECT t163.
          t163->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t163->oval = t164.
        ENDIF.
      ENDIF.
    ENDIF.
    t85->load( ).
    APPEND t163 TO t85->items.
    t85->save( ).
    t77 = zcl_lnt_st_combi_module=>seq( i_first = t80 i_second = t83 i_rest = t85 ).
    DATA t175 TYPE REF TO zif_lnt_statement_runnable.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t179 TYPE REF TO zif_lnt_statement_runnable.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t182 TYPE REF TO zif_lnt_statement_runnable.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t183.
    t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t183->sval = |RESUMABLE|.
    t182 = zcl_lnt_st_combi_module=>opt_prio( i_first = t183 ).
    IF t182 IS BOUND.
      DATA t185 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t181 ?= t182.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t181 IS NOT BOUND.
        TRY.
            t185 ?= t182.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t185 IS BOUND.
          t181 = t185->source( ).
        ENDIF.
        IF t181 IS NOT BOUND.
          CREATE OBJECT t181.
          t181->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t181->oval = t182.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t188.
    t188->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t188->sval = |EXCEPTION|.
    DATA t191 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t191.
    t179 = zcl_lnt_st_combi_module=>seq( i_first = t181 i_second = t188 i_rest = t191 ).
    IF t179 IS BOUND.
      DATA t196 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t178 ?= t179.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t178 IS NOT BOUND.
        TRY.
            t196 ?= t179.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t196 IS BOUND.
          t178 = t196->source( ).
        ENDIF.
        IF t178 IS NOT BOUND.
          CREATE OBJECT t178.
          t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t178->oval = t179.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t199.
    t199->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t199->sval = |SHORTDUMP|.
    DATA t202 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t202.
    t175 = zcl_lnt_st_combi_module=>alt_prio( i_first = t178 i_second = t199 i_rest = t202 ).
    DATA t207 TYPE REF TO zif_lnt_statement_runnable.
    DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t175 IS BOUND.
      DATA t212 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t210 ?= t175.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t210 IS NOT BOUND.
        TRY.
            t212 ?= t175.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t212 IS BOUND.
          t210 = t212->source( ).
        ENDIF.
        IF t210 IS NOT BOUND.
          CREATE OBJECT t210.
          t210->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t210->oval = t175.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t216 TYPE REF TO zif_lnt_statement_runnable.
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t77 IS BOUND.
      DATA t220 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t218 ?= t77.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t218 IS NOT BOUND.
        TRY.
            t220 ?= t77.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t220 IS BOUND.
          t218 = t220->source( ).
        ENDIF.
        IF t218 IS NOT BOUND.
          CREATE OBJECT t218.
          t218->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t218->oval = t77.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t224 TYPE REF TO zif_lnt_statement_runnable.
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t226 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t226 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v752| ).
    IF t226 IS BOUND.
      DATA t230 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t231 TYPE REF TO object.
      t231 = t226.
      TRY.
          t225 ?= t231.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t225 IS NOT BOUND.
        TRY.
            t230 ?= t226.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t230 IS BOUND.
          t225 = t230->source( ).
        ENDIF.
        IF t225 IS NOT BOUND.
          CREATE OBJECT t225.
          t225->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t225->oval = t226.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t233) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t233 IS BOUND.
      CREATE OBJECT t232.
      t232->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t232->cval = t233.
    ENDIF.
    DATA t236 TYPE REF TO zcl_lnt_iver_options.
    DATA(t241) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t241->has = abap_true.
    t241->value = |OpenABAP|.
    t236 = NEW zcl_lnt_iver_options( i_also = t241 ).
    CREATE OBJECT t236->zlnt_view_ownkeys_b0e8086400eb.
    t236->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t236->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t243 ).
    CREATE OBJECT t236->zlnt_json_ownkeys_70e5fd461788.
    t236->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t236->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t245 ).
    t224 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t225 i_first = t232 i_opts = t236 ).
    IF t224 IS BOUND.
      DATA t247 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t223 ?= t224.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t223 IS NOT BOUND.
        TRY.
            t247 ?= t224.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t247 IS BOUND.
          t223 = t247->source( ).
        ENDIF.
        IF t223 IS NOT BOUND.
          CREATE OBJECT t223.
          t223->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t223->oval = t224.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t249 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t249.
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t253) = zlnt_runtime_desc_78196487750d=>zlnt_member_d211_bc99aed7bb7c.
    IF t253 IS BOUND.
      CREATE OBJECT t252.
      t252->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t252->cval = t253.
    ENDIF.
    t249->load( ).
    APPEND t252 TO t249->items.
    t249->save( ).
    t216 = zcl_lnt_st_combi_module=>alt_prio( i_first = t218 i_second = t223 i_rest = t249 ).
    IF t216 IS BOUND.
      DATA t258 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t215 ?= t216.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t215 IS NOT BOUND.
        TRY.
            t258 ?= t216.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t258 IS BOUND.
          t215 = t258->source( ).
        ENDIF.
        IF t215 IS NOT BOUND.
          CREATE OBJECT t215.
          t215->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t215->oval = t216.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t261 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t261.
    t207 = zcl_lnt_st_combi_module=>seq( i_first = t210 i_second = t215 i_rest = t261 ).
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t269.
    t269->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t269->sval = |RAISE|.
    DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t273 TYPE REF TO zif_lnt_statement_runnable.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t207 IS BOUND.
      DATA t277 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t275 ?= t207.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t275 IS NOT BOUND.
        TRY.
            t277 ?= t207.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t277 IS BOUND.
          t275 = t277->source( ).
        ENDIF.
        IF t275 IS NOT BOUND.
          CREATE OBJECT t275.
          t275->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t275->oval = t207.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t281 TYPE REF TO zif_lnt_statement_runnable.
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t284) = zlnt_runtime_desc_78196487750d=>zlnt_member_d166_95d94e882be8.
    IF t284 IS BOUND.
      CREATE OBJECT t283.
      t283->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t283->cval = t284.
    ENDIF.
    t281 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |KeyUser| i_first = t283 ).
    IF t281 IS BOUND.
      DATA t285 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t280 ?= t281.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t280 IS NOT BOUND.
        TRY.
            t285 ?= t281.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t285 IS BOUND.
          t280 = t285->source( ).
        ENDIF.
        IF t280 IS NOT BOUND.
          CREATE OBJECT t280.
          t280->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t280->oval = t281.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t288 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t288.
    t273 = zcl_lnt_st_combi_module=>alt_prio( i_first = t275 i_second = t280 i_rest = t288 ).
    IF t273 IS BOUND.
      DATA t293 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t272 ?= t273.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t272 IS NOT BOUND.
        TRY.
            t293 ?= t273.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t293 IS BOUND.
          t272 = t293->source( ).
        ENDIF.
        IF t272 IS NOT BOUND.
          CREATE OBJECT t272.
          t272->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t272->oval = t273.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t296 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t296.
    result = zcl_lnt_st_combi_module=>seq( i_first = t269 i_second = t272 i_rest = t296 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d586_198a3628c215.
  ENDMETHOD.

  METHOD zif_lnt_statement~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement~get_matcher.
    result = me->get_matcher( ).
  ENDMETHOD.

  METHOD zif_lnt_union_dc0fb493~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
