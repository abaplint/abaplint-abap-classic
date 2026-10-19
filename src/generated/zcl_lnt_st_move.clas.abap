* TS: src/abap/2_statements/statements/move.ts:8:1 Move
CLASS zcl_lnt_st_move DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    INTERFACES zif_lnt_union_3a2bcbb5.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_move IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |MOVE|.
    t1 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |Cloud| i_first = t4 ).
    DATA t6 TYPE REF TO zif_lnt_statement_runnable.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t11 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t12 TYPE REF TO object.
      t12 = t1.
      TRY.
          t9 ?= t12.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t9 IS NOT BOUND.
        TRY.
            t11 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t11 IS BOUND.
          t9 = t11->source( ).
        ENDIF.
        IF t9 IS NOT BOUND.
          CREATE OBJECT t9.
          t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t9->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t20.
    t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t20->sval = |EXACT|.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t24 IS BOUND.
      CREATE OBJECT t23.
      t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t23->cval = t24.
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t25.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t28.
    t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t28->sval = |TO|.
    t25->load( ).
    APPEND t28 TO t25->items.
    t25->save( ).
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t32) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t32 IS BOUND.
      CREATE OBJECT t31.
      t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t31->cval = t32.
    ENDIF.
    t25->load( ).
    APPEND t31 TO t25->items.
    t25->save( ).
    t18 = zcl_lnt_st_combi_module=>seq( i_first = t20 i_second = t23 i_rest = t25 ).
    IF t18 IS BOUND.
      DATA t37 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t38 TYPE REF TO object.
      t38 = t18.
      TRY.
          t17 ?= t38.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t17 IS NOT BOUND.
        TRY.
            t37 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t37 IS BOUND.
          t17 = t37->source( ).
        ENDIF.
        IF t17 IS NOT BOUND.
          CREATE OBJECT t17.
          t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t17->oval = t18.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t41 TYPE REF TO zif_lnt_statement_runnable.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t44) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t44 IS BOUND.
      CREATE OBJECT t43.
      t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t43->cval = t44.
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t49.
    t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t49->sval = |?TO|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t52.
    t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t52->sval = |TO|.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t55.
    t47 = zcl_lnt_st_combi_module=>alt_prio( i_first = t49 i_second = t52 i_rest = t55 ).
    IF t47 IS BOUND.
      DATA t60 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t61 TYPE REF TO object.
      t61 = t47.
      TRY.
          t46 ?= t61.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t46 IS NOT BOUND.
        TRY.
            t60 ?= t47.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t60 IS BOUND.
          t46 = t60->source( ).
        ENDIF.
        IF t46 IS NOT BOUND.
          CREATE OBJECT t46.
          t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t46->oval = t47.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t62.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t66) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t66 IS BOUND.
      CREATE OBJECT t65.
      t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t65->cval = t66.
    ENDIF.
    t62->load( ).
    APPEND t65 TO t62->items.
    t62->save( ).
    t41 = zcl_lnt_st_combi_module=>seq( i_first = t43 i_second = t46 i_rest = t62 ).
    IF t41 IS BOUND.
      DATA t71 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t72 TYPE REF TO object.
      t72 = t41.
      TRY.
          t40 ?= t72.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t40 IS NOT BOUND.
        TRY.
            t71 ?= t41.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t71 IS BOUND.
          t40 = t71->source( ).
        ENDIF.
        IF t40 IS NOT BOUND.
          CREATE OBJECT t40.
          t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t40->oval = t41.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t74.
    t15 = zcl_lnt_st_combi_module=>alt_prio( i_first = t17 i_second = t40 i_rest = t74 ).
    IF t15 IS BOUND.
      DATA t79 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t80 TYPE REF TO object.
      t80 = t15.
      TRY.
          t14 ?= t80.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t14 IS NOT BOUND.
        TRY.
            t79 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t79 IS BOUND.
          t14 = t79->source( ).
        ENDIF.
        IF t14 IS NOT BOUND.
          CREATE OBJECT t14.
          t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t14->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t81.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t89.
    t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t89->sval = |PERCENTAGE|.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t93) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t93 IS BOUND.
      CREATE OBJECT t92.
      t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t92->cval = t93.
    ENDIF.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t94.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t100 TYPE REF TO zif_lnt_statement_runnable.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t102.
    t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t102->sval = |LEFT|.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t105.
    t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t105->sval = |RIGHT|.
    DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t108.
    t100 = zcl_lnt_st_combi_module=>alt( i_first = t102 i_second = t105 i_rest = t108 ).
    IF t100 IS BOUND.
      DATA t113 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t114 TYPE REF TO object.
      t114 = t100.
      TRY.
          t99 ?= t114.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t99 IS NOT BOUND.
        TRY.
            t113 ?= t100.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t113 IS BOUND.
          t99 = t113->source( ).
        ENDIF.
        IF t99 IS NOT BOUND.
          CREATE OBJECT t99.
          t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t99->oval = t100.
        ENDIF.
      ENDIF.
    ENDIF.
    t98 = zcl_lnt_st_combi_module=>opt( i_first = t99 ).
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
    t94->load( ).
    APPEND t97 TO t94->items.
    t94->save( ).
    t87 = zcl_lnt_st_combi_module=>seq( i_first = t89 i_second = t92 i_rest = t94 ).
    IF t87 IS BOUND.
      DATA t121 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t122 TYPE REF TO object.
      t122 = t87.
      TRY.
          t86 ?= t122.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t86 IS NOT BOUND.
        TRY.
            t121 ?= t87.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t121 IS BOUND.
          t86 = t121->source( ).
        ENDIF.
        IF t86 IS NOT BOUND.
          CREATE OBJECT t86.
          t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t86->oval = t87.
        ENDIF.
      ENDIF.
    ENDIF.
    t85 = zcl_lnt_st_combi_module=>opt( i_first = t86 ).
    IF t85 IS BOUND.
      DATA t123 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t124 TYPE REF TO object.
      t124 = t85.
      TRY.
          t84 ?= t124.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t84 IS NOT BOUND.
        TRY.
            t123 ?= t85.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t123 IS BOUND.
          t84 = t123->source( ).
        ENDIF.
        IF t84 IS NOT BOUND.
          CREATE OBJECT t84.
          t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t84->oval = t85.
        ENDIF.
      ENDIF.
    ENDIF.
    t81->load( ).
    APPEND t84 TO t81->items.
    t81->save( ).
    t6 = zcl_lnt_st_combi_module=>seq( i_first = t9 i_second = t14 i_rest = t81 ).
    DATA t129 TYPE REF TO zif_lnt_statement_runnable.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t132 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t132 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v754| ).
    IF t132 IS BOUND.
      DATA t136 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t137 TYPE REF TO object.
      t137 = t132.
      TRY.
          t131 ?= t137.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t131 IS NOT BOUND.
        TRY.
            t136 ?= t132.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t136 IS BOUND.
          t131 = t136->source( ).
        ENDIF.
        IF t131 IS NOT BOUND.
          CREATE OBJECT t131.
          t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t131->oval = t132.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t139 TYPE REF TO zif_lnt_statement_runnable.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t142 TYPE REF TO zif_lnt_statement_runnable.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t145 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t146) = zlnt_runtime_desc_78196487750d=>zlnt_member_d56_5d4839b794b2ac.
    t145 = zcl_lnt_st_combi_module=>tok( i_t = t146 ).
    IF t145 IS BOUND.
      DATA t147 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t148 TYPE REF TO object.
      t148 = t145.
      TRY.
          t144 ?= t148.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t144 IS NOT BOUND.
        TRY.
            t147 ?= t145.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t147 IS BOUND.
          t144 = t147->source( ).
        ENDIF.
        IF t144 IS NOT BOUND.
          CREATE OBJECT t144.
          t144->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t144->oval = t145.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t150.
    t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t150->sval = |=|.
    DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t153.
    t142 = zcl_lnt_st_combi_module=>seq( i_first = t144 i_second = t150 i_rest = t153 ).
    IF t142 IS BOUND.
      DATA t158 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t159 TYPE REF TO object.
      t159 = t142.
      TRY.
          t141 ?= t159.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t141 IS NOT BOUND.
        TRY.
            t158 ?= t142.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t158 IS BOUND.
          t141 = t158->source( ).
        ENDIF.
        IF t141 IS NOT BOUND.
          CREATE OBJECT t141.
          t141->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t141->oval = t142.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t162 TYPE REF TO zif_lnt_statement_runnable.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t165 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t166) = zlnt_runtime_desc_78196487750d=>zlnt_member_d48_c59205d155180b.
    t165 = zcl_lnt_st_combi_module=>tok( i_t = t166 ).
    IF t165 IS BOUND.
      DATA t167 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t168 TYPE REF TO object.
      t168 = t165.
      TRY.
          t164 ?= t168.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t164 IS NOT BOUND.
        TRY.
            t167 ?= t165.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t167 IS BOUND.
          t164 = t167->source( ).
        ENDIF.
        IF t164 IS NOT BOUND.
          CREATE OBJECT t164.
          t164->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t164->oval = t165.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t170.
    t170->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t170->sval = |=|.
    DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t173.
    t162 = zcl_lnt_st_combi_module=>seq( i_first = t164 i_second = t170 i_rest = t173 ).
    IF t162 IS BOUND.
      DATA t178 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t179 TYPE REF TO object.
      t179 = t162.
      TRY.
          t161 ?= t179.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t161 IS NOT BOUND.
        TRY.
            t178 ?= t162.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t178 IS BOUND.
          t161 = t178->source( ).
        ENDIF.
        IF t161 IS NOT BOUND.
          CREATE OBJECT t161.
          t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t161->oval = t162.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t180.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t183.
    t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t183->sval = |/=|.
    t180->load( ).
    APPEND t183 TO t180->items.
    t180->save( ).
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t186.
    t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t186->sval = |*=|.
    t180->load( ).
    APPEND t186 TO t180->items.
    t180->save( ).
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t189.
    t189->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t189->sval = |&&=|.
    t180->load( ).
    APPEND t189 TO t180->items.
    t180->save( ).
    t139 = zcl_lnt_st_combi_module=>alt( i_first = t141 i_second = t161 i_rest = t180 ).
    IF t139 IS BOUND.
      DATA t195 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t196 TYPE REF TO object.
      t196 = t139.
      TRY.
          t138 ?= t196.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t138 IS NOT BOUND.
        TRY.
            t195 ?= t139.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t195 IS BOUND.
          t138 = t195->source( ).
        ENDIF.
        IF t138 IS NOT BOUND.
          CREATE OBJECT t138.
          t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t138->oval = t139.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t199 TYPE REF TO zcl_lnt_iver_options.
    DATA(t204) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t204->has = abap_true.
    t204->value = |OpenABAP|.
    t199 = NEW zcl_lnt_iver_options( i_also = t204 ).
    CREATE OBJECT t199->zlnt_view_ownkeys_b0e8086400eb.
    t199->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t199->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t206 ).
    CREATE OBJECT t199->zlnt_json_ownkeys_70e5fd461788.
    t199->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t199->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t208 ).
    t129 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t131 i_first = t138 i_opts = t199 ).
    DATA t210 TYPE REF TO zif_lnt_statement_runnable.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t213.
    t213->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t213->sval = |=|.
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t217 TYPE REF TO zif_lnt_statement_runnable.
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t219 TYPE REF TO zif_lnt_statement_runnable.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t222) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t222 IS BOUND.
      CREATE OBJECT t221.
      t221->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t221->cval = t222.
    ENDIF.
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t224.
    t224->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t224->sval = |=|.
    DATA t227 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t227.
    t219 = zcl_lnt_st_combi_module=>seq( i_first = t221 i_second = t224 i_rest = t227 ).
    IF t219 IS BOUND.
      DATA t232 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t233 TYPE REF TO object.
      t233 = t219.
      TRY.
          t218 ?= t233.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t218 IS NOT BOUND.
        TRY.
            t232 ?= t219.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t232 IS BOUND.
          t218 = t232->source( ).
        ENDIF.
        IF t218 IS NOT BOUND.
          CREATE OBJECT t218.
          t218->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t218->oval = t219.
        ENDIF.
      ENDIF.
    ENDIF.
    t217 = zcl_lnt_st_combi_module=>star( i_first = t218 ).
    IF t217 IS BOUND.
      DATA t234 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t235 TYPE REF TO object.
      t235 = t217.
      TRY.
          t216 ?= t235.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t216 IS NOT BOUND.
        TRY.
            t234 ?= t217.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t234 IS BOUND.
          t216 = t234->source( ).
        ENDIF.
        IF t216 IS NOT BOUND.
          CREATE OBJECT t216.
          t216->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t216->oval = t217.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t237 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t237.
    t210 = zcl_lnt_st_combi_module=>seq( i_first = t213 i_second = t216 i_rest = t237 ).
    DATA t242 TYPE REF TO zif_lnt_statement_runnable.
    DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t246 TYPE REF TO zif_lnt_statement_runnable.
    DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t210 IS BOUND.
      DATA t250 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t251 TYPE REF TO object.
      t251 = t210.
      TRY.
          t248 ?= t251.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t248 IS NOT BOUND.
        TRY.
            t250 ?= t210.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t250 IS BOUND.
          t248 = t250->source( ).
        ENDIF.
        IF t248 IS NOT BOUND.
          CREATE OBJECT t248.
          t248->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t248->oval = t210.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t253.
    t253->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t253->sval = |?=|.
    DATA t256 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t256.
    t246 = zcl_lnt_st_combi_module=>alt_prio( i_first = t248 i_second = t253 i_rest = t256 ).
    IF t246 IS BOUND.
      DATA t261 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t262 TYPE REF TO object.
      t262 = t246.
      TRY.
          t245 ?= t262.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t245 IS NOT BOUND.
        TRY.
            t261 ?= t246.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t261 IS BOUND.
          t245 = t261->source( ).
        ENDIF.
        IF t245 IS NOT BOUND.
          CREATE OBJECT t245.
          t245->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t245->oval = t246.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t129 IS BOUND.
      DATA t266 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t267 TYPE REF TO object.
      t267 = t129.
      TRY.
          t264 ?= t267.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t264 IS NOT BOUND.
        TRY.
            t266 ?= t129.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t266 IS BOUND.
          t264 = t266->source( ).
        ENDIF.
        IF t264 IS NOT BOUND.
          CREATE OBJECT t264.
          t264->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t264->oval = t129.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t269 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t269.
    t242 = zcl_lnt_st_combi_module=>alt_prio( i_first = t245 i_second = t264 i_rest = t269 ).
    DATA t274 TYPE REF TO zif_lnt_statement_runnable.
    DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t278) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t278 IS BOUND.
      CREATE OBJECT t277.
      t277->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t277->cval = t278.
    ENDIF.
    DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t242 IS BOUND.
      DATA t282 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t283 TYPE REF TO object.
      t283 = t242.
      TRY.
          t280 ?= t283.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t280 IS NOT BOUND.
        TRY.
            t282 ?= t242.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t282 IS BOUND.
          t280 = t282->source( ).
        ENDIF.
        IF t280 IS NOT BOUND.
          CREATE OBJECT t280.
          t280->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t280->oval = t242.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t284 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t284.
    DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t288) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t288 IS BOUND.
      CREATE OBJECT t287.
      t287->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t287->cval = t288.
    ENDIF.
    t284->load( ).
    APPEND t287 TO t284->items.
    t284->save( ).
    t274 = zcl_lnt_st_combi_module=>seq( i_first = t277 i_second = t280 i_rest = t284 ).
    DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t6 IS BOUND.
      DATA t297 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t298 TYPE REF TO object.
      t298 = t6.
      TRY.
          t295 ?= t298.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t295 IS NOT BOUND.
        TRY.
            t297 ?= t6.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t297 IS BOUND.
          t295 = t297->source( ).
        ENDIF.
        IF t295 IS NOT BOUND.
          CREATE OBJECT t295.
          t295->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t295->oval = t6.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t274 IS BOUND.
      DATA t302 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t303 TYPE REF TO object.
      t303 = t274.
      TRY.
          t300 ?= t303.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t300 IS NOT BOUND.
        TRY.
            t302 ?= t274.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t302 IS BOUND.
          t300 = t302->source( ).
        ENDIF.
        IF t300 IS NOT BOUND.
          CREATE OBJECT t300.
          t300->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t300->oval = t274.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t305 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t305.
    result = zcl_lnt_st_combi_module=>alt( i_first = t295 i_second = t300 i_rest = t305 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d561_0fa14d6404b6.
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

  METHOD zif_lnt_union_3a2bcbb5~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_3a2bcbb5~get_matcher.
    result = me->get_matcher( ).
  ENDMETHOD.
ENDCLASS.
