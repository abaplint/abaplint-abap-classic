* TS: src/abap/2_statements/statements/append.ts:7:1 Append
CLASS zcl_lnt_st_append DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_append IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |ASSIGNING|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d194_b8c1a7611ef6.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t10 ).
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = |REFERENCE INTO|.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t21->cval = t22.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t24.
    t15 = zcl_lnt_st_combi_module=>seq( i_first = t18 i_second = t21 i_rest = t24 ).
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = |SORTED BY|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    IF t36 IS BOUND.
      CREATE OBJECT t35.
      t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t35->cval = t36.
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t38.
    t29 = zcl_lnt_st_combi_module=>seq( i_first = t32 i_second = t35 i_rest = t38 ).
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t46.
    t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t46->sval = |FROM|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t50 IS BOUND.
      CREATE OBJECT t49.
      t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t49->cval = t50.
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t52.
    t43 = zcl_lnt_st_combi_module=>seq( i_first = t46 i_second = t49 i_rest = t52 ).
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t60.
    t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t60->sval = |TO|.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t64) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t64 IS BOUND.
      CREATE OBJECT t63.
      t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t63->cval = t64.
    ENDIF.
    DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t66.
    t57 = zcl_lnt_st_combi_module=>seq( i_first = t60 i_second = t63 i_rest = t66 ).
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t74.
    t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t74->sval = |TO|.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t78) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t78 IS BOUND.
      CREATE OBJECT t77.
      t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t77->cval = t78.
    ENDIF.
    DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t80.
    t71 = zcl_lnt_st_combi_module=>seq( i_first = t74 i_second = t77 i_rest = t80 ).
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t89) = zlnt_runtime_desc_78196487750d=>zlnt_member_d129_b622fad61480.
    IF t89 IS BOUND.
      CREATE OBJECT t88.
      t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t88->cval = t89.
    ENDIF.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t92 TYPE REF TO zif_lnt_statement_runnable.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t94 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t94 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v740sp02| ).
    IF t94 IS BOUND.
      DATA t98 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t99 TYPE REF TO object.
      t99 = t94.
      TRY.
          t93 ?= t99.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t93 IS NOT BOUND.
        TRY.
            t98 ?= t94.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t98 IS BOUND.
          t93 = t98->source( ).
        ENDIF.
        IF t93 IS NOT BOUND.
          CREATE OBJECT t93.
          t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t93->oval = t94.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t101) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t101 IS BOUND.
      CREATE OBJECT t100.
      t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t100->cval = t101.
    ENDIF.
    DATA t104 TYPE REF TO zcl_lnt_iver_options.
    DATA(t109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t109->has = abap_true.
    t109->value = |OpenABAP|.
    t104 = NEW zcl_lnt_iver_options( i_also = t109 ).
    CREATE OBJECT t104->zlnt_view_ownkeys_b0e8086400eb.
    t104->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t104->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t111 ).
    CREATE OBJECT t104->zlnt_json_ownkeys_70e5fd461788.
    t104->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t113 ).
    t92 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t93 i_first = t100 i_opts = t104 ).
    IF t92 IS BOUND.
      DATA t115 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t116 TYPE REF TO object.
      t116 = t92.
      TRY.
          t91 ?= t116.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t91 IS NOT BOUND.
        TRY.
            t115 ?= t92.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t115 IS BOUND.
          t91 = t115->source( ).
        ENDIF.
        IF t91 IS NOT BOUND.
          CREATE OBJECT t91.
          t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t91->oval = t92.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t118 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t118.
    t85 = zcl_lnt_st_combi_module=>alt( i_first = t88 i_second = t91 i_rest = t118 ).
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t125.
    t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t125->sval = |APPEND|.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t129 TYPE REF TO zif_lnt_statement_runnable.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t131.
    t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t131->sval = |INITIAL LINE|.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t135 TYPE REF TO zif_lnt_statement_runnable.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t138 TYPE REF TO zif_lnt_statement_runnable.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t139.
    t139->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t139->sval = |LINES OF|.
    t138 = zcl_lnt_st_combi_module=>opt_prio( i_first = t139 ).
    IF t138 IS BOUND.
      DATA t141 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t142 TYPE REF TO object.
      t142 = t138.
      TRY.
          t137 ?= t142.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t137 IS NOT BOUND.
        TRY.
            t141 ?= t138.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t141 IS BOUND.
          t137 = t141->source( ).
        ENDIF.
        IF t137 IS NOT BOUND.
          CREATE OBJECT t137.
          t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t137->oval = t138.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t85 IS BOUND.
      DATA t146 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t147 TYPE REF TO object.
      t147 = t85.
      TRY.
          t144 ?= t147.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t144 IS NOT BOUND.
        TRY.
            t146 ?= t85.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t146 IS BOUND.
          t144 = t146->source( ).
        ENDIF.
        IF t144 IS NOT BOUND.
          CREATE OBJECT t144.
          t144->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t144->oval = t85.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t149.
    t135 = zcl_lnt_st_combi_module=>seq( i_first = t137 i_second = t144 i_rest = t149 ).
    IF t135 IS BOUND.
      DATA t154 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t155 TYPE REF TO object.
      t155 = t135.
      TRY.
          t134 ?= t155.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t134 IS NOT BOUND.
        TRY.
            t154 ?= t135.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t154 IS BOUND.
          t134 = t154->source( ).
        ENDIF.
        IF t134 IS NOT BOUND.
          CREATE OBJECT t134.
          t134->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t134->oval = t135.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t157 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t157.
    t129 = zcl_lnt_st_combi_module=>alt_prio( i_first = t131 i_second = t134 i_rest = t157 ).
    IF t129 IS BOUND.
      DATA t162 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t163 TYPE REF TO object.
      t163 = t129.
      TRY.
          t128 ?= t163.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t128 IS NOT BOUND.
        TRY.
            t162 ?= t129.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t162 IS BOUND.
          t128 = t162->source( ).
        ENDIF.
        IF t128 IS NOT BOUND.
          CREATE OBJECT t128.
          t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t128->oval = t129.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t164.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t168 TYPE REF TO zif_lnt_statement_runnable.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t43 IS BOUND.
      DATA t171 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t172 TYPE REF TO object.
      t172 = t43.
      TRY.
          t169 ?= t172.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t169 IS NOT BOUND.
        TRY.
            t171 ?= t43.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t171 IS BOUND.
          t169 = t171->source( ).
        ENDIF.
        IF t169 IS NOT BOUND.
          CREATE OBJECT t169.
          t169->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t169->oval = t43.
        ENDIF.
      ENDIF.
    ENDIF.
    t168 = zcl_lnt_st_combi_module=>opt_prio( i_first = t169 ).
    IF t168 IS BOUND.
      DATA t173 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t174 TYPE REF TO object.
      t174 = t168.
      TRY.
          t167 ?= t174.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t167 IS NOT BOUND.
        TRY.
            t173 ?= t168.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t173 IS BOUND.
          t167 = t173->source( ).
        ENDIF.
        IF t167 IS NOT BOUND.
          CREATE OBJECT t167.
          t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t167->oval = t168.
        ENDIF.
      ENDIF.
    ENDIF.
    t164->load( ).
    APPEND t167 TO t164->items.
    t164->save( ).
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t177 TYPE REF TO zif_lnt_statement_runnable.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t179 TYPE REF TO zif_lnt_statement_runnable.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t182 TYPE REF TO zif_lnt_statement_runnable.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t57 IS BOUND.
      DATA t186 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t187 TYPE REF TO object.
      t187 = t57.
      TRY.
          t184 ?= t187.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t184 IS NOT BOUND.
        TRY.
            t186 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t186 IS BOUND.
          t184 = t186->source( ).
        ENDIF.
        IF t184 IS NOT BOUND.
          CREATE OBJECT t184.
          t184->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t184->oval = t57.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t71 IS BOUND.
      DATA t191 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t192 TYPE REF TO object.
      t192 = t71.
      TRY.
          t189 ?= t192.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t189 IS NOT BOUND.
        TRY.
            t191 ?= t71.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t191 IS BOUND.
          t189 = t191->source( ).
        ENDIF.
        IF t189 IS NOT BOUND.
          CREATE OBJECT t189.
          t189->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t189->oval = t71.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t194 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t194.
    t182 = zcl_lnt_st_combi_module=>seq( i_first = t184 i_second = t189 i_rest = t194 ).
    IF t182 IS BOUND.
      DATA t199 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t200 TYPE REF TO object.
      t200 = t182.
      TRY.
          t181 ?= t200.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t181 IS NOT BOUND.
        TRY.
            t199 ?= t182.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t199 IS BOUND.
          t181 = t199->source( ).
        ENDIF.
        IF t181 IS NOT BOUND.
          CREATE OBJECT t181.
          t181->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t181->oval = t182.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t71 IS BOUND.
      DATA t204 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t205 TYPE REF TO object.
      t205 = t71.
      TRY.
          t202 ?= t205.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t202 IS NOT BOUND.
        TRY.
            t204 ?= t71.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t204 IS BOUND.
          t202 = t204->source( ).
        ENDIF.
        IF t202 IS NOT BOUND.
          CREATE OBJECT t202.
          t202->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t202->oval = t71.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t207 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t207.
    t179 = zcl_lnt_st_combi_module=>alt( i_first = t181 i_second = t202 i_rest = t207 ).
    IF t179 IS BOUND.
      DATA t212 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t213 TYPE REF TO object.
      t213 = t179.
      TRY.
          t178 ?= t213.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t178 IS NOT BOUND.
        TRY.
            t212 ?= t179.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t212 IS BOUND.
          t178 = t212->source( ).
        ENDIF.
        IF t178 IS NOT BOUND.
          CREATE OBJECT t178.
          t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t178->oval = t179.
        ENDIF.
      ENDIF.
    ENDIF.
    t177 = zcl_lnt_st_combi_module=>opt( i_first = t178 ).
    IF t177 IS BOUND.
      DATA t214 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t215 TYPE REF TO object.
      t215 = t177.
      TRY.
          t176 ?= t215.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t176 IS NOT BOUND.
        TRY.
            t214 ?= t177.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t214 IS BOUND.
          t176 = t214->source( ).
        ENDIF.
        IF t176 IS NOT BOUND.
          CREATE OBJECT t176.
          t176->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t176->oval = t177.
        ENDIF.
      ENDIF.
    ENDIF.
    t164->load( ).
    APPEND t176 TO t164->items.
    t164->save( ).
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t218 TYPE REF TO zif_lnt_statement_runnable.
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t220 TYPE REF TO zif_lnt_statement_runnable.
    DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t224 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t225 TYPE REF TO object.
      t225 = t1.
      TRY.
          t222 ?= t225.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t222 IS NOT BOUND.
        TRY.
            t224 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t224 IS BOUND.
          t222 = t224->source( ).
        ENDIF.
        IF t222 IS NOT BOUND.
          CREATE OBJECT t222.
          t222->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t222->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t229 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t230 TYPE REF TO object.
      t230 = t15.
      TRY.
          t227 ?= t230.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t227 IS NOT BOUND.
        TRY.
            t229 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t229 IS BOUND.
          t227 = t229->source( ).
        ENDIF.
        IF t227 IS NOT BOUND.
          CREATE OBJECT t227.
          t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t227->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t232 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t232.
    t220 = zcl_lnt_st_combi_module=>alt_prio( i_first = t222 i_second = t227 i_rest = t232 ).
    IF t220 IS BOUND.
      DATA t237 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t238 TYPE REF TO object.
      t238 = t220.
      TRY.
          t219 ?= t238.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t219 IS NOT BOUND.
        TRY.
            t237 ?= t220.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t237 IS BOUND.
          t219 = t237->source( ).
        ENDIF.
        IF t219 IS NOT BOUND.
          CREATE OBJECT t219.
          t219->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t219->oval = t220.
        ENDIF.
      ENDIF.
    ENDIF.
    t218 = zcl_lnt_st_combi_module=>opt( i_first = t219 ).
    IF t218 IS BOUND.
      DATA t239 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t240 TYPE REF TO object.
      t240 = t218.
      TRY.
          t217 ?= t240.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t217 IS NOT BOUND.
        TRY.
            t239 ?= t218.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t239 IS BOUND.
          t217 = t239->source( ).
        ENDIF.
        IF t217 IS NOT BOUND.
          CREATE OBJECT t217.
          t217->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t217->oval = t218.
        ENDIF.
      ENDIF.
    ENDIF.
    t164->load( ).
    APPEND t217 TO t164->items.
    t164->save( ).
    DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t243 TYPE REF TO zif_lnt_statement_runnable.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t244.
    t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t244->sval = |CASTING|.
    t243 = zcl_lnt_st_combi_module=>opt_prio( i_first = t244 ).
    IF t243 IS BOUND.
      DATA t246 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t247 TYPE REF TO object.
      t247 = t243.
      TRY.
          t242 ?= t247.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t242 IS NOT BOUND.
        TRY.
            t246 ?= t243.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t246 IS BOUND.
          t242 = t246->source( ).
        ENDIF.
        IF t242 IS NOT BOUND.
          CREATE OBJECT t242.
          t242->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t242->oval = t243.
        ENDIF.
      ENDIF.
    ENDIF.
    t164->load( ).
    APPEND t242 TO t164->items.
    t164->save( ).
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t250 TYPE REF TO zif_lnt_statement_runnable.
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      DATA t253 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t254 TYPE REF TO object.
      t254 = t29.
      TRY.
          t251 ?= t254.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t251 IS NOT BOUND.
        TRY.
            t253 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t253 IS BOUND.
          t251 = t253->source( ).
        ENDIF.
        IF t251 IS NOT BOUND.
          CREATE OBJECT t251.
          t251->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t251->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    t250 = zcl_lnt_st_combi_module=>opt_prio( i_first = t251 ).
    IF t250 IS BOUND.
      DATA t255 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t256 TYPE REF TO object.
      t256 = t250.
      TRY.
          t249 ?= t256.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t249 IS NOT BOUND.
        TRY.
            t255 ?= t250.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t255 IS BOUND.
          t249 = t255->source( ).
        ENDIF.
        IF t249 IS NOT BOUND.
          CREATE OBJECT t249.
          t249->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t249->oval = t250.
        ENDIF.
      ENDIF.
    ENDIF.
    t164->load( ).
    APPEND t249 TO t164->items.
    t164->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t125 i_second = t128 i_rest = t164 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d373_624aaf9cf8cc.
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
