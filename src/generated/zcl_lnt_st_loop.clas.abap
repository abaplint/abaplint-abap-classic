* TS: src/abap/2_statements/statements/loop.ts:8:1 Loop
CLASS zcl_lnt_st_loop DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_loop IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |WHERE|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d133_716522bf3a6a.
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t10->cval = t11.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t17 IS BOUND.
      CREATE OBJECT t16.
      t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t16->cval = t17.
    ENDIF.
    t14 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |KeyUser| i_first = t16 ).
    IF t14 IS BOUND.
      DATA t18 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t13 ?= t14.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t13 IS NOT BOUND.
        TRY.
            t18 ?= t14.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t18 IS BOUND.
          t13 = t18->source( ).
        ENDIF.
        IF t13 IS NOT BOUND.
          CREATE OBJECT t13.
          t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t13->oval = t14.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t21.
    t8 = zcl_lnt_st_combi_module=>alt( i_first = t10 i_second = t13 i_rest = t21 ).
    IF t8 IS BOUND.
      DATA t26 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t7 ?= t8.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t7 IS NOT BOUND.
        TRY.
            t26 ?= t8.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t26 IS BOUND.
          t7 = t26->source( ).
        ENDIF.
        IF t7 IS NOT BOUND.
          CREATE OBJECT t7.
          t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t7->oval = t8.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t29.
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t29 ).
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t37 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t37 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v740sp08| ).
    IF t37 IS BOUND.
      DATA t41 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t42 TYPE REF TO object.
      t42 = t37.
      TRY.
          t36 ?= t42.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t36 IS NOT BOUND.
        TRY.
            t41 ?= t37.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t41 IS BOUND.
          t36 = t41->source( ).
        ENDIF.
        IF t36 IS NOT BOUND.
          CREATE OBJECT t36.
          t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t36->oval = t37.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t46.
    t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t46->sval = |GROUP BY|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d209_c21e0d8a3b4e.
    IF t50 IS BOUND.
      CREATE OBJECT t49.
      t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t49->cval = t50.
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t52.
    t44 = zcl_lnt_st_combi_module=>seq( i_first = t46 i_second = t49 i_rest = t52 ).
    IF t44 IS BOUND.
      DATA t57 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t43 ?= t44.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t43 IS NOT BOUND.
        TRY.
            t57 ?= t44.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t57 IS BOUND.
          t43 = t57->source( ).
        ENDIF.
        IF t43 IS NOT BOUND.
          CREATE OBJECT t43.
          t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t43->oval = t44.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t61 TYPE REF TO zcl_lnt_iver_options.
    DATA(t66) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t66->has = abap_true.
    t66->value = |OpenABAP|.
    t61 = NEW zcl_lnt_iver_options( i_also = t66 ).
    CREATE OBJECT t61->zlnt_view_ownkeys_b0e8086400eb.
    t61->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t68 ).
    CREATE OBJECT t61->zlnt_json_ownkeys_70e5fd461788.
    t61->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t70 ).
    t34 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t36 i_first = t43 i_opts = t61 ).
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t75 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t75 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    IF t75 IS BOUND.
      DATA t79 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t80 TYPE REF TO object.
      t80 = t75.
      TRY.
          t74 ?= t80.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t74 IS NOT BOUND.
        TRY.
            t79 ?= t75.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t79 IS BOUND.
          t74 = t79->source( ).
        ENDIF.
        IF t74 IS NOT BOUND.
          CREATE OBJECT t74.
          t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t74->oval = t75.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t84.
    t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t84->sval = |STEP|.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t88) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t88 IS BOUND.
      CREATE OBJECT t87.
      t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t87->cval = t88.
    ENDIF.
    DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t90.
    t82 = zcl_lnt_st_combi_module=>seq( i_first = t84 i_second = t87 i_rest = t90 ).
    IF t82 IS BOUND.
      DATA t95 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t81 ?= t82.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t81 IS NOT BOUND.
        TRY.
            t95 ?= t82.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t95 IS BOUND.
          t81 = t95->source( ).
        ENDIF.
        IF t81 IS NOT BOUND.
          CREATE OBJECT t81.
          t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t81->oval = t82.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t97 TYPE REF TO zcl_lnt_iver_options.
    t72 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t74 i_first = t81 i_opts = t97 ).
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t101.
    t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t101->sval = |FROM|.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t105) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t105 IS BOUND.
      CREATE OBJECT t104.
      t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t104->cval = t105.
    ENDIF.
    DATA t107 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t107.
    t98 = zcl_lnt_st_combi_module=>seq( i_first = t101 i_second = t104 i_rest = t107 ).
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t115.
    t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t115->sval = |TO|.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t119) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t119 IS BOUND.
      CREATE OBJECT t118.
      t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t118->cval = t119.
    ENDIF.
    DATA t121 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t121.
    t112 = zcl_lnt_st_combi_module=>seq( i_first = t115 i_second = t118 i_rest = t121 ).
    DATA t126 TYPE REF TO zif_lnt_statement_runnable.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t129.
    t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t129->sval = |USING KEY|.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t133 TYPE REF TO zif_lnt_statement_runnable.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t136) = zlnt_runtime_desc_78196487750d=>zlnt_member_d173_fd387289a527.
    IF t136 IS BOUND.
      CREATE OBJECT t135.
      t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t135->cval = t136.
    ENDIF.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t139) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t139 IS BOUND.
      CREATE OBJECT t138.
      t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t138->cval = t139.
    ENDIF.
    DATA t141 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t141.
    t133 = zcl_lnt_st_combi_module=>alt_prio( i_first = t135 i_second = t138 i_rest = t141 ).
    IF t133 IS BOUND.
      DATA t146 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t132 ?= t133.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t132 IS NOT BOUND.
        TRY.
            t146 ?= t133.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t146 IS BOUND.
          t132 = t146->source( ).
        ENDIF.
        IF t132 IS NOT BOUND.
          CREATE OBJECT t132.
          t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t132->oval = t133.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t149.
    t126 = zcl_lnt_st_combi_module=>seq( i_first = t129 i_second = t132 i_rest = t149 ).
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t158) = zlnt_runtime_desc_78196487750d=>zlnt_member_d213_62076b901fdc.
    IF t158 IS BOUND.
      CREATE OBJECT t157.
      t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t157->cval = t158.
    ENDIF.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t98 IS BOUND.
      DATA t162 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t160 ?= t98.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t160 IS NOT BOUND.
        TRY.
            t162 ?= t98.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t162 IS BOUND.
          t160 = t162->source( ).
        ENDIF.
        IF t160 IS NOT BOUND.
          CREATE OBJECT t160.
          t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t160->oval = t98.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t164.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t112 IS BOUND.
      DATA t169 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t167 ?= t112.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t167 IS NOT BOUND.
        TRY.
            t169 ?= t112.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t169 IS BOUND.
          t167 = t169->source( ).
        ENDIF.
        IF t167 IS NOT BOUND.
          CREATE OBJECT t167.
          t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t167->oval = t112.
        ENDIF.
      ENDIF.
    ENDIF.
    t164->load( ).
    APPEND t167 TO t164->items.
    t164->save( ).
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t174 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t172 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t172 IS NOT BOUND.
        TRY.
            t174 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t174 IS BOUND.
          t172 = t174->source( ).
        ENDIF.
        IF t172 IS NOT BOUND.
          CREATE OBJECT t172.
          t172->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t172->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t164->load( ).
    APPEND t172 TO t164->items.
    t164->save( ).
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t126 IS BOUND.
      DATA t179 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t177 ?= t126.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t177 IS NOT BOUND.
        TRY.
            t179 ?= t126.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t179 IS BOUND.
          t177 = t179->source( ).
        ENDIF.
        IF t177 IS NOT BOUND.
          CREATE OBJECT t177.
          t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t177->oval = t126.
        ENDIF.
      ENDIF.
    ENDIF.
    t164->load( ).
    APPEND t177 TO t164->items.
    t164->save( ).
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t34 IS BOUND.
      DATA t184 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t182 ?= t34.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t182 IS NOT BOUND.
        TRY.
            t184 ?= t34.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t184 IS BOUND.
          t182 = t184->source( ).
        ENDIF.
        IF t182 IS NOT BOUND.
          CREATE OBJECT t182.
          t182->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t182->oval = t34.
        ENDIF.
      ENDIF.
    ENDIF.
    t164->load( ).
    APPEND t182 TO t164->items.
    t164->save( ).
    DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t72 IS BOUND.
      DATA t189 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t187 ?= t72.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t187 IS NOT BOUND.
        TRY.
            t189 ?= t72.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t189 IS BOUND.
          t187 = t189->source( ).
        ENDIF.
        IF t187 IS NOT BOUND.
          CREATE OBJECT t187.
          t187->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t187->oval = t72.
        ENDIF.
      ENDIF.
    ENDIF.
    t164->load( ).
    APPEND t187 TO t164->items.
    t164->save( ).
    t154 = zcl_lnt_st_combi_module=>per( i_first = t157 i_second = t160 i_rest = t164 ).
    DATA t195 TYPE REF TO zif_lnt_statement_runnable.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t199 TYPE REF TO zif_lnt_statement_runnable.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t201 TYPE REF TO zif_lnt_statement_runnable.
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t203.
    t203->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t203->sval = |SCREEN|.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t207) = CAST zif_lnt_statement_runnable( zcl_lnt_st_combi_module=>fail_combinator( ) ).
    IF t207 IS BOUND.
      DATA t208 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t206 ?= t207.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t206 IS NOT BOUND.
        TRY.
            t208 ?= t207.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t208 IS BOUND.
          t206 = t208->source( ).
        ENDIF.
        IF t206 IS NOT BOUND.
          CREATE OBJECT t206.
          t206->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t206->oval = t207.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t211 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t211.
    t201 = zcl_lnt_st_combi_module=>seq( i_first = t203 i_second = t206 i_rest = t211 ).
    IF t201 IS BOUND.
      DATA t216 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t200 ?= t201.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t200 IS NOT BOUND.
        TRY.
            t216 ?= t201.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t216 IS BOUND.
          t200 = t216->source( ).
        ENDIF.
        IF t200 IS NOT BOUND.
          CREATE OBJECT t200.
          t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t200->oval = t201.
        ENDIF.
      ENDIF.
    ENDIF.
    t199 = zcl_lnt_st_combi_module=>opt( i_first = t200 ).
    IF t199 IS BOUND.
      DATA t218 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t198 ?= t199.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t198 IS NOT BOUND.
        TRY.
            t218 ?= t199.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t218 IS BOUND.
          t198 = t218->source( ).
        ENDIF.
        IF t198 IS NOT BOUND.
          CREATE OBJECT t198.
          t198->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t198->oval = t199.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t222 TYPE REF TO zif_lnt_statement_runnable.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t224 TYPE REF TO zif_lnt_statement_runnable.
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t226 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t226 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v740sp08| ).
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
    CREATE OBJECT t232.
    t232->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t232->sval = |GROUP|.
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
    t222 = zcl_lnt_st_combi_module=>opt( i_first = t223 ).
    IF t222 IS BOUND.
      DATA t249 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t221 ?= t222.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t221 IS NOT BOUND.
        TRY.
            t249 ?= t222.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t249 IS BOUND.
          t221 = t249->source( ).
        ENDIF.
        IF t221 IS NOT BOUND.
          CREATE OBJECT t221.
          t221->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t221->oval = t222.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t251 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t251.
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t255) = zlnt_runtime_desc_78196487750d=>zlnt_member_d212_ad2d7a05fa43.
    IF t255 IS BOUND.
      CREATE OBJECT t254.
      t254->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t254->cval = t255.
    ENDIF.
    t251->load( ).
    APPEND t254 TO t251->items.
    t251->save( ).
    DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t258 TYPE REF TO zif_lnt_statement_runnable.
    DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t154 IS BOUND.
      DATA t261 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t259 ?= t154.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t259 IS NOT BOUND.
        TRY.
            t261 ?= t154.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t261 IS BOUND.
          t259 = t261->source( ).
        ENDIF.
        IF t259 IS NOT BOUND.
          CREATE OBJECT t259.
          t259->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t259->oval = t154.
        ENDIF.
      ENDIF.
    ENDIF.
    t258 = zcl_lnt_st_combi_module=>opt( i_first = t259 ).
    IF t258 IS BOUND.
      DATA t263 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t257 ?= t258.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t257 IS NOT BOUND.
        TRY.
            t263 ?= t258.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t263 IS BOUND.
          t257 = t263->source( ).
        ENDIF.
        IF t257 IS NOT BOUND.
          CREATE OBJECT t257.
          t257->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t257->oval = t258.
        ENDIF.
      ENDIF.
    ENDIF.
    t251->load( ).
    APPEND t257 TO t251->items.
    t251->save( ).
    t195 = zcl_lnt_st_combi_module=>seq( i_first = t198 i_second = t221 i_rest = t251 ).
    DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t271.
    t271->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t271->sval = |LOOP AT|.
    DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t195 IS BOUND.
      DATA t276 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t274 ?= t195.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t274 IS NOT BOUND.
        TRY.
            t276 ?= t195.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t276 IS BOUND.
          t274 = t276->source( ).
        ENDIF.
        IF t274 IS NOT BOUND.
          CREATE OBJECT t274.
          t274->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t274->oval = t195.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t279 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t279.
    result = zcl_lnt_st_combi_module=>seq( i_first = t271 i_second = t274 i_rest = t279 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d548_48b381ff180b.
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
