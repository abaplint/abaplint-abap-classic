* TS: src/abap/2_statements/expressions/type_param.ts:7:1 TypeParam
CLASS zcl_lnt_type_param DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_type_param IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = |STANDARD|.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t10.
    t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t10->sval = |HASHED|.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t12.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t15.
    t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t15->sval = |INDEX|.
    t12->load( ).
    APPEND t15 TO t12->items.
    t12->save( ).
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = |SORTED|.
    t12->load( ).
    APPEND t18 TO t12->items.
    t12->save( ).
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t21.
    t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t21->sval = |ANY|.
    t12->load( ).
    APPEND t21 TO t12->items.
    t12->save( ).
    t5 = zcl_lnt_st_combi_module=>alt_prio( i_first = t7 i_second = t10 i_rest = t12 ).
    IF t5 IS BOUND.
      DATA t27 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t28 TYPE REF TO object.
      t28 = t5.
      TRY.
          t4 ?= t28.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t27 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t27 IS BOUND.
          t4 = t27->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t30.
    t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t30->sval = |TABLE|.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t33.
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t30 i_rest = t33 ).
    DATA t38 TYPE REF TO zif_lnt_statement_runnable.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t48 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t49 TYPE REF TO object.
      t49 = t1.
      TRY.
          t46 ?= t49.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t46 IS NOT BOUND.
        TRY.
            t48 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t48 IS BOUND.
          t46 = t48->source( ).
        ENDIF.
        IF t46 IS NOT BOUND.
          CREATE OBJECT t46.
          t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t46->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t51.
    t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t51->sval = |OF|.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t54.
    t44 = zcl_lnt_st_combi_module=>seq( i_first = t46 i_second = t51 i_rest = t54 ).
    IF t44 IS BOUND.
      DATA t59 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t60 TYPE REF TO object.
      t60 = t44.
      TRY.
          t43 ?= t60.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t43 IS NOT BOUND.
        TRY.
            t59 ?= t44.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t59 IS BOUND.
          t43 = t59->source( ).
        ENDIF.
        IF t43 IS NOT BOUND.
          CREATE OBJECT t43.
          t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t43->oval = t44.
        ENDIF.
      ENDIF.
    ENDIF.
    t42 = zcl_lnt_st_combi_module=>opt_prio( i_first = t43 ).
    IF t42 IS BOUND.
      DATA t61 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t62 TYPE REF TO object.
      t62 = t42.
      TRY.
          t41 ?= t62.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t41 IS NOT BOUND.
        TRY.
            t61 ?= t42.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t61 IS BOUND.
          t41 = t61->source( ).
        ENDIF.
        IF t41 IS NOT BOUND.
          CREATE OBJECT t41.
          t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t41->oval = t42.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t65 TYPE REF TO zif_lnt_statement_runnable.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t66.
    t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t66->sval = |REF TO|.
    t65 = zcl_lnt_st_combi_module=>opt_prio( i_first = t66 ).
    IF t65 IS BOUND.
      DATA t68 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t69 TYPE REF TO object.
      t69 = t65.
      TRY.
          t64 ?= t69.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t64 IS NOT BOUND.
        TRY.
            t68 ?= t65.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t68 IS BOUND.
          t64 = t68->source( ).
        ENDIF.
        IF t64 IS NOT BOUND.
          CREATE OBJECT t64.
          t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t64->oval = t65.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t71.
    t38 = zcl_lnt_st_combi_module=>seq( i_first = t41 i_second = t64 i_rest = t71 ).
    DATA t78 TYPE REF TO zif_lnt_statement_runnable.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t38 IS BOUND.
      DATA t86 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t87 TYPE REF TO object.
      t87 = t38.
      TRY.
          t84 ?= t87.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t84 IS NOT BOUND.
        TRY.
            t86 ?= t38.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t86 IS BOUND.
          t84 = t86->source( ).
        ENDIF.
        IF t84 IS NOT BOUND.
          CREATE OBJECT t84.
          t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t84->oval = t38.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t89.
    t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t89->sval = |LINE OF|.
    DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t92.
    t82 = zcl_lnt_st_combi_module=>alt( i_first = t84 i_second = t89 i_rest = t92 ).
    IF t82 IS BOUND.
      DATA t97 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t98 TYPE REF TO object.
      t98 = t82.
      TRY.
          t81 ?= t98.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t81 IS NOT BOUND.
        TRY.
            t97 ?= t82.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t97 IS BOUND.
          t81 = t97->source( ).
        ENDIF.
        IF t81 IS NOT BOUND.
          CREATE OBJECT t81.
          t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t81->oval = t82.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t101) = zlnt_runtime_desc_78196487750d=>zlnt_member_d111_4d9698a8e1bf.
    IF t101 IS BOUND.
      CREATE OBJECT t100.
      t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t100->cval = t101.
    ENDIF.
    DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t102.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t106 TYPE REF TO zif_lnt_statement_runnable.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t108) = zlnt_runtime_desc_78196487750d=>zlnt_member_d159_eda069348ac0.
    IF t108 IS BOUND.
      CREATE OBJECT t107.
      t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t107->cval = t108.
    ENDIF.
    t106 = zcl_lnt_st_combi_module=>opt( i_first = t107 ).
    IF t106 IS BOUND.
      DATA t109 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t110 TYPE REF TO object.
      t110 = t106.
      TRY.
          t105 ?= t110.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t105 IS NOT BOUND.
        TRY.
            t109 ?= t106.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t109 IS BOUND.
          t105 = t109->source( ).
        ENDIF.
        IF t105 IS NOT BOUND.
          CREATE OBJECT t105.
          t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t105->oval = t106.
        ENDIF.
      ENDIF.
    ENDIF.
    t102->load( ).
    APPEND t105 TO t102->items.
    t102->save( ).
    t78 = zcl_lnt_st_combi_module=>seq( i_first = t81 i_second = t100 i_rest = t102 ).
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t118.
    t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t118->sval = |LIKE|.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t122 TYPE REF TO zif_lnt_statement_runnable.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t123.
    t123->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t123->sval = |LINE OF|.
    t122 = zcl_lnt_st_combi_module=>opt( i_first = t123 ).
    IF t122 IS BOUND.
      DATA t125 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t126 TYPE REF TO object.
      t126 = t122.
      TRY.
          t121 ?= t126.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t121 IS NOT BOUND.
        TRY.
            t125 ?= t122.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t125 IS BOUND.
          t121 = t125->source( ).
        ENDIF.
        IF t121 IS NOT BOUND.
          CREATE OBJECT t121.
          t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t121->oval = t122.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t127.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t131) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
    IF t131 IS BOUND.
      CREATE OBJECT t130.
      t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t130->cval = t131.
    ENDIF.
    t127->load( ).
    APPEND t130 TO t127->items.
    t127->save( ).
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t134 TYPE REF TO zif_lnt_statement_runnable.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t136) = zlnt_runtime_desc_78196487750d=>zlnt_member_d159_eda069348ac0.
    IF t136 IS BOUND.
      CREATE OBJECT t135.
      t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t135->cval = t136.
    ENDIF.
    t134 = zcl_lnt_st_combi_module=>opt_prio( i_first = t135 ).
    IF t134 IS BOUND.
      DATA t137 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t138 TYPE REF TO object.
      t138 = t134.
      TRY.
          t133 ?= t138.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t133 IS NOT BOUND.
        TRY.
            t137 ?= t134.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t137 IS BOUND.
          t133 = t137->source( ).
        ENDIF.
        IF t133 IS NOT BOUND.
          CREATE OBJECT t133.
          t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t133->oval = t134.
        ENDIF.
      ENDIF.
    ENDIF.
    t127->load( ).
    APPEND t133 TO t127->items.
    t127->save( ).
    t115 = zcl_lnt_st_combi_module=>seq( i_first = t118 i_second = t121 i_rest = t127 ).
    DATA t143 TYPE REF TO zif_lnt_statement_runnable.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t147) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    IF t147 IS BOUND.
      CREATE OBJECT t146.
      t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t146->cval = t147.
    ENDIF.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t150) = zlnt_runtime_desc_78196487750d=>zlnt_member_d162_57231f39acd0.
    IF t150 IS BOUND.
      CREATE OBJECT t149.
      t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t149->cval = t150.
    ENDIF.
    DATA t152 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t152.
    t143 = zcl_lnt_st_combi_module=>alt( i_first = t146 i_second = t149 i_rest = t152 ).
    DATA t157 TYPE REF TO zif_lnt_statement_runnable.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t160 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t160 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v770| ).
    IF t160 IS BOUND.
      DATA t164 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t165 TYPE REF TO object.
      t165 = t160.
      TRY.
          t159 ?= t165.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t159 IS NOT BOUND.
        TRY.
            t164 ?= t160.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t164 IS BOUND.
          t159 = t164->source( ).
        ENDIF.
        IF t159 IS NOT BOUND.
          CREATE OBJECT t159.
          t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t159->oval = t160.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t167 TYPE REF TO zif_lnt_statement_runnable.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t169.
    t169->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t169->sval = |TYPE|.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t172.
    t172->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t172->sval = |TABLE FOR|.
    DATA t174 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t174.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t178 TYPE REF TO zif_lnt_statement_runnable.
    DATA t179 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t179.
    DATA t182 TYPE REF TO zif_lnt_statement_runnable.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t184 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t184 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v773| ).
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
    DATA t191 TYPE REF TO zif_lnt_statement_runnable.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t193.
    t193->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t193->sval = |ACTION IMPORT|.
    DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t143 IS BOUND.
      DATA t198 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t199 TYPE REF TO object.
      t199 = t143.
      TRY.
          t196 ?= t199.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t196 IS NOT BOUND.
        TRY.
            t198 ?= t143.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t198 IS BOUND.
          t196 = t198->source( ).
        ENDIF.
        IF t196 IS NOT BOUND.
          CREATE OBJECT t196.
          t196->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t196->oval = t143.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t201 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t201.
    t191 = zcl_lnt_st_combi_module=>seq( i_first = t193 i_second = t196 i_rest = t201 ).
    IF t191 IS BOUND.
      DATA t206 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t207 TYPE REF TO object.
      t207 = t191.
      TRY.
          t190 ?= t207.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t190 IS NOT BOUND.
        TRY.
            t206 ?= t191.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t206 IS BOUND.
          t190 = t206->source( ).
        ENDIF.
        IF t190 IS NOT BOUND.
          CREATE OBJECT t190.
          t190->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t190->oval = t191.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t210 TYPE REF TO zcl_lnt_iver_options.
    DATA(t215) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t215->has = abap_true.
    t215->value = |OpenABAP|.
    t210 = NEW zcl_lnt_iver_options( i_also = t215 ).
    CREATE OBJECT t210->zlnt_view_ownkeys_b0e8086400eb.
    t210->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t210->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t217 ).
    CREATE OBJECT t210->zlnt_json_ownkeys_70e5fd461788.
    t210->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t210->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t219 ).
    t182 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t183 i_first = t190 i_opts = t210 ).
    t179->load( ).
    APPEND t182 TO t179->items.
    t179->save( ).
    DATA t222 TYPE REF TO zif_lnt_statement_runnable.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t224 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t224 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v774| ).
    IF t224 IS BOUND.
      DATA t228 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t229 TYPE REF TO object.
      t229 = t224.
      TRY.
          t223 ?= t229.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t223 IS NOT BOUND.
        TRY.
            t228 ?= t224.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t228 IS BOUND.
          t223 = t228->source( ).
        ENDIF.
        IF t223 IS NOT BOUND.
          CREATE OBJECT t223.
          t223->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t223->oval = t224.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t231 TYPE REF TO zif_lnt_statement_runnable.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t233.
    t233->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t233->sval = |READ LINK|.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t143 IS BOUND.
      DATA t238 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t239 TYPE REF TO object.
      t239 = t143.
      TRY.
          t236 ?= t239.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t236 IS NOT BOUND.
        TRY.
            t238 ?= t143.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t238 IS BOUND.
          t236 = t238->source( ).
        ENDIF.
        IF t236 IS NOT BOUND.
          CREATE OBJECT t236.
          t236->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t236->oval = t143.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t241.
    t231 = zcl_lnt_st_combi_module=>seq( i_first = t233 i_second = t236 i_rest = t241 ).
    IF t231 IS BOUND.
      DATA t246 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t247 TYPE REF TO object.
      t247 = t231.
      TRY.
          t230 ?= t247.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t230 IS NOT BOUND.
        TRY.
            t246 ?= t231.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t246 IS BOUND.
          t230 = t246->source( ).
        ENDIF.
        IF t230 IS NOT BOUND.
          CREATE OBJECT t230.
          t230->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t230->oval = t231.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t250 TYPE REF TO zcl_lnt_iver_options.
    DATA(t255) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t255->has = abap_true.
    t255->value = |OpenABAP|.
    t250 = NEW zcl_lnt_iver_options( i_also = t255 ).
    CREATE OBJECT t250->zlnt_view_ownkeys_b0e8086400eb.
    t250->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t250->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t257 ).
    CREATE OBJECT t250->zlnt_json_ownkeys_70e5fd461788.
    t250->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t250->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t259 ).
    t222 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t223 i_first = t230 i_opts = t250 ).
    t179->load( ).
    APPEND t222 TO t179->items.
    t179->save( ).
    DATA t262 TYPE REF TO zif_lnt_statement_runnable.
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t264 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t264 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v787| ).
    IF t264 IS BOUND.
      DATA t268 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t269 TYPE REF TO object.
      t269 = t264.
      TRY.
          t263 ?= t269.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t263 IS NOT BOUND.
        TRY.
            t268 ?= t264.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t268 IS BOUND.
          t263 = t268->source( ).
        ENDIF.
        IF t263 IS NOT BOUND.
          CREATE OBJECT t263.
          t263->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t263->oval = t264.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t271 TYPE REF TO zif_lnt_statement_runnable.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t273.
    t273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t273->sval = |EVENT|.
    DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t143 IS BOUND.
      DATA t278 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t279 TYPE REF TO object.
      t279 = t143.
      TRY.
          t276 ?= t279.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t276 IS NOT BOUND.
        TRY.
            t278 ?= t143.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t278 IS BOUND.
          t276 = t278->source( ).
        ENDIF.
        IF t276 IS NOT BOUND.
          CREATE OBJECT t276.
          t276->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t276->oval = t143.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t281 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t281.
    t271 = zcl_lnt_st_combi_module=>seq( i_first = t273 i_second = t276 i_rest = t281 ).
    IF t271 IS BOUND.
      DATA t286 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t287 TYPE REF TO object.
      t287 = t271.
      TRY.
          t270 ?= t287.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t270 IS NOT BOUND.
        TRY.
            t286 ?= t271.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t286 IS BOUND.
          t270 = t286->source( ).
        ENDIF.
        IF t270 IS NOT BOUND.
          CREATE OBJECT t270.
          t270->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t270->oval = t271.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t290 TYPE REF TO zcl_lnt_iver_options.
    DATA(t295) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t295->has = abap_true.
    t295->value = |OpenABAP|.
    t290 = NEW zcl_lnt_iver_options( i_also = t295 ).
    CREATE OBJECT t290->zlnt_view_ownkeys_b0e8086400eb.
    t290->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t290->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t297 ).
    CREATE OBJECT t290->zlnt_json_ownkeys_70e5fd461788.
    t290->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t290->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t299 ).
    t262 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t263 i_first = t270 i_opts = t290 ).
    t179->load( ).
    APPEND t262 TO t179->items.
    t179->save( ).
    t178 = zcl_lnt_derived_types_module=>derived_types_alt( i_extra = t179 ).
    IF t178 IS BOUND.
      DATA t303 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t304 TYPE REF TO object.
      t304 = t178.
      TRY.
          t177 ?= t304.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t177 IS NOT BOUND.
        TRY.
            t303 ?= t178.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t303 IS BOUND.
          t177 = t303->source( ).
        ENDIF.
        IF t177 IS NOT BOUND.
          CREATE OBJECT t177.
          t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t177->oval = t178.
        ENDIF.
      ENDIF.
    ENDIF.
    t174->load( ).
    APPEND t177 TO t174->items.
    t174->save( ).
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t307 TYPE REF TO zif_lnt_statement_runnable.
    DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t308.
    t308->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t308->sval = |VALUE IS INITIAL|.
    t307 = zcl_lnt_st_combi_module=>opt_prio( i_first = t308 ).
    IF t307 IS BOUND.
      DATA t310 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t311 TYPE REF TO object.
      t311 = t307.
      TRY.
          t306 ?= t311.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t306 IS NOT BOUND.
        TRY.
            t310 ?= t307.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t310 IS BOUND.
          t306 = t310->source( ).
        ENDIF.
        IF t306 IS NOT BOUND.
          CREATE OBJECT t306.
          t306->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t306->oval = t307.
        ENDIF.
      ENDIF.
    ENDIF.
    t174->load( ).
    APPEND t306 TO t174->items.
    t174->save( ).
    t167 = zcl_lnt_st_combi_module=>seq( i_first = t169 i_second = t172 i_rest = t174 ).
    IF t167 IS BOUND.
      DATA t316 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t317 TYPE REF TO object.
      t317 = t167.
      TRY.
          t166 ?= t317.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t166 IS NOT BOUND.
        TRY.
            t316 ?= t167.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t316 IS BOUND.
          t166 = t316->source( ).
        ENDIF.
        IF t166 IS NOT BOUND.
          CREATE OBJECT t166.
          t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t166->oval = t167.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t320 TYPE REF TO zcl_lnt_iver_options.
    DATA(t325) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t325->has = abap_true.
    t325->value = |OpenABAP|.
    t320 = NEW zcl_lnt_iver_options( i_also = t325 ).
    CREATE OBJECT t320->zlnt_view_ownkeys_b0e8086400eb.
    t320->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t320->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t327 ).
    CREATE OBJECT t320->zlnt_json_ownkeys_70e5fd461788.
    t320->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t320->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t329 ).
    t157 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t159 i_first = t166 i_opts = t320 ).
    DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t157 IS BOUND.
      DATA t335 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t336 TYPE REF TO object.
      t336 = t157.
      TRY.
          t333 ?= t336.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t333 IS NOT BOUND.
        TRY.
            t335 ?= t157.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t335 IS BOUND.
          t333 = t335->source( ).
        ENDIF.
        IF t333 IS NOT BOUND.
          CREATE OBJECT t333.
          t333->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t333->oval = t157.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t339) = zlnt_runtime_desc_78196487750d=>zlnt_member_d153_a3333d63766c.
    IF t339 IS BOUND.
      CREATE OBJECT t338.
      t338->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t338->cval = t339.
    ENDIF.
    DATA t340 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t340.
    DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t344 TYPE REF TO zif_lnt_statement_runnable.
    DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t346.
    t346->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t346->sval = |TYPE|.
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t350 TYPE REF TO zif_lnt_statement_runnable.
    DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t354 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t355 TYPE REF TO object.
      t355 = t1.
      TRY.
          t352 ?= t355.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t352 IS NOT BOUND.
        TRY.
            t354 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t354 IS BOUND.
          t352 = t354->source( ).
        ENDIF.
        IF t352 IS NOT BOUND.
          CREATE OBJECT t352.
          t352->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t352->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t78 IS BOUND.
      DATA t359 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t360 TYPE REF TO object.
      t360 = t78.
      TRY.
          t357 ?= t360.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t357 IS NOT BOUND.
        TRY.
            t359 ?= t78.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t359 IS BOUND.
          t357 = t359->source( ).
        ENDIF.
        IF t357 IS NOT BOUND.
          CREATE OBJECT t357.
          t357->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t357->oval = t78.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t362 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t362.
    t350 = zcl_lnt_st_combi_module=>alt( i_first = t352 i_second = t357 i_rest = t362 ).
    IF t350 IS BOUND.
      DATA t367 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t368 TYPE REF TO object.
      t368 = t350.
      TRY.
          t349 ?= t368.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t349 IS NOT BOUND.
        TRY.
            t367 ?= t350.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t367 IS BOUND.
          t349 = t367->source( ).
        ENDIF.
        IF t349 IS NOT BOUND.
          CREATE OBJECT t349.
          t349->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t349->oval = t350.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t370 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t370.
    t344 = zcl_lnt_st_combi_module=>seq( i_first = t346 i_second = t349 i_rest = t370 ).
    IF t344 IS BOUND.
      DATA t375 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t376 TYPE REF TO object.
      t376 = t344.
      TRY.
          t343 ?= t376.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t343 IS NOT BOUND.
        TRY.
            t375 ?= t344.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t375 IS BOUND.
          t343 = t375->source( ).
        ENDIF.
        IF t343 IS NOT BOUND.
          CREATE OBJECT t343.
          t343->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t343->oval = t344.
        ENDIF.
      ENDIF.
    ENDIF.
    t340->load( ).
    APPEND t343 TO t340->items.
    t340->save( ).
    DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t115 IS BOUND.
      DATA t380 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t381 TYPE REF TO object.
      t381 = t115.
      TRY.
          t378 ?= t381.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t378 IS NOT BOUND.
        TRY.
            t380 ?= t115.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t380 IS BOUND.
          t378 = t380->source( ).
        ENDIF.
        IF t378 IS NOT BOUND.
          CREATE OBJECT t378.
          t378->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t378->oval = t115.
        ENDIF.
      ENDIF.
    ENDIF.
    t340->load( ).
    APPEND t378 TO t340->items.
    t340->save( ).
    result = zcl_lnt_st_combi_module=>alt_prio( i_first = t333 i_second = t338 i_rest = t340 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d234_68ba21bb5634.
  ENDMETHOD.
ENDCLASS.
