* TS: src/abap/2_statements/statements/convert.ts:7:1 Convert
CLASS zcl_lnt_st_convert DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_convert IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |TIME|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    t11 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t10 ).
    t1 = t11.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t19) = |DATE|.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = t19.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t21->cval = t22.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t24.
    DATA t25 TYPE REF TO zif_lnt_statement_runnable.
    t25 = zcl_lnt_st_combi_module=>seq( i_first = t18 i_second = t21 i_rest = t24 ).
    t15 = t25.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t33) = |INTO|.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = t33.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t40 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t41 TYPE REF TO object.
      t41 = t1.
      TRY.
          t38 ?= t41.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t38 IS NOT BOUND.
        TRY.
            t40 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t40 IS BOUND.
          t38 = t40->source( ).
        ENDIF.
        IF t38 IS NOT BOUND.
          CREATE OBJECT t38.
          t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t38->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t45 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t46 TYPE REF TO object.
      t46 = t15.
      TRY.
          t43 ?= t46.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t43 IS NOT BOUND.
        TRY.
            t45 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t45 IS BOUND.
          t43 = t45->source( ).
        ENDIF.
        IF t43 IS NOT BOUND.
          CREATE OBJECT t43.
          t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t43->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t48.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    t49 = zcl_lnt_st_combi_module=>per( i_first = t38 i_second = t43 i_rest = t48 ).
    t36 = t49.
    IF t36 IS BOUND.
      DATA t53 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t54 TYPE REF TO object.
      t54 = t36.
      TRY.
          t35 ?= t54.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t35 IS NOT BOUND.
        TRY.
            t53 ?= t36.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t53 IS BOUND.
          t35 = t53->source( ).
        ENDIF.
        IF t35 IS NOT BOUND.
          CREATE OBJECT t35.
          t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t35->oval = t36.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t56.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    t57 = zcl_lnt_st_combi_module=>seq( i_first = t32 i_second = t35 i_rest = t56 ).
    t29 = t57.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t65) = |DAYLIGHT SAVING TIME|.
    CREATE OBJECT t64.
    t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t64->sval = t65.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t68) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t68 IS BOUND.
      CREATE OBJECT t67.
      t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t67->cval = t68.
    ENDIF.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t70.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    t71 = zcl_lnt_st_combi_module=>seq( i_first = t64 i_second = t67 i_rest = t70 ).
    t61 = t71.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t79) = |DAYLIGHT SAVING TIME|.
    CREATE OBJECT t78.
    t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t78->sval = t79.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t82) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t82 IS BOUND.
      CREATE OBJECT t81.
      t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t81->cval = t82.
    ENDIF.
    DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t84.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    t85 = zcl_lnt_st_combi_module=>seq( i_first = t78 i_second = t81 i_rest = t84 ).
    t75 = t85.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t93) = |TIME ZONE|.
    CREATE OBJECT t92.
    t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t92->sval = t93.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t96) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t96 IS BOUND.
      CREATE OBJECT t95.
      t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t95->cval = t96.
    ENDIF.
    DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t98.
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    t99 = zcl_lnt_st_combi_module=>seq( i_first = t92 i_second = t95 i_rest = t98 ).
    t89 = t99.
    DATA t103 TYPE REF TO zif_lnt_statement_runnable.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t107) = |TIME STAMP|.
    CREATE OBJECT t106.
    t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t106->sval = t107.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t110) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t110 IS BOUND.
      CREATE OBJECT t109.
      t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t109->cval = t110.
    ENDIF.
    DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t112.
    t111 = t112.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t89 IS BOUND.
      DATA t119 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t120 TYPE REF TO object.
      t120 = t89.
      TRY.
          t117 ?= t120.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t117 IS NOT BOUND.
        TRY.
            t119 ?= t89.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t119 IS BOUND.
          t117 = t119->source( ).
        ENDIF.
        IF t117 IS NOT BOUND.
          CREATE OBJECT t117.
          t117->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t117->oval = t89.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      DATA t124 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t125 TYPE REF TO object.
      t125 = t29.
      TRY.
          t122 ?= t125.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t122 IS NOT BOUND.
        TRY.
            t124 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t124 IS BOUND.
          t122 = t124->source( ).
        ENDIF.
        IF t122 IS NOT BOUND.
          CREATE OBJECT t122.
          t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t122->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t127.
    t126 = t127.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t75 IS BOUND.
      DATA t131 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t132 TYPE REF TO object.
      t132 = t75.
      TRY.
          t129 ?= t132.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t129 IS NOT BOUND.
        TRY.
            t131 ?= t75.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t131 IS BOUND.
          t129 = t131->source( ).
        ENDIF.
        IF t129 IS NOT BOUND.
          CREATE OBJECT t129.
          t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t129->oval = t75.
        ENDIF.
      ENDIF.
    ENDIF.
    t126->load( ).
    APPEND t129 TO t126->items.
    t126->save( ).
    DATA t133 TYPE REF TO zif_lnt_statement_runnable.
    t133 = zcl_lnt_st_combi_module=>per( i_first = t117 i_second = t122 i_rest = t126 ).
    t115 = t133.
    IF t115 IS BOUND.
      DATA t137 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t138 TYPE REF TO object.
      t138 = t115.
      TRY.
          t114 ?= t138.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t114 IS NOT BOUND.
        TRY.
            t137 ?= t115.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t137 IS BOUND.
          t114 = t137->source( ).
        ENDIF.
        IF t114 IS NOT BOUND.
          CREATE OBJECT t114.
          t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t114->oval = t115.
        ENDIF.
      ENDIF.
    ENDIF.
    t111->load( ).
    APPEND t114 TO t111->items.
    t111->save( ).
    DATA t139 TYPE REF TO zif_lnt_statement_runnable.
    t139 = zcl_lnt_st_combi_module=>seq( i_first = t106 i_second = t109 i_rest = t111 ).
    t103 = t139.
    DATA t143 TYPE REF TO zif_lnt_statement_runnable.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t147) = |DATE|.
    CREATE OBJECT t146.
    t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t146->sval = t147.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t150) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t150 IS BOUND.
      CREATE OBJECT t149.
      t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t149->cval = t150.
    ENDIF.
    DATA t152 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t152.
    DATA t153 TYPE REF TO zif_lnt_statement_runnable.
    t153 = zcl_lnt_st_combi_module=>seq( i_first = t146 i_second = t149 i_rest = t152 ).
    t143 = t153.
    DATA t157 TYPE REF TO zif_lnt_statement_runnable.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t161) = |TIME|.
    CREATE OBJECT t160.
    t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t160->sval = t161.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t164) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t164 IS BOUND.
      CREATE OBJECT t163.
      t163->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t163->cval = t164.
    ENDIF.
    DATA t166 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t166.
    DATA t167 TYPE REF TO zif_lnt_statement_runnable.
    t167 = zcl_lnt_st_combi_module=>seq( i_first = t160 i_second = t163 i_rest = t166 ).
    t157 = t167.
    DATA t171 TYPE REF TO zif_lnt_statement_runnable.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t175) = |INTO TIME STAMP|.
    CREATE OBJECT t174.
    t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t174->sval = t175.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t178) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t178 IS BOUND.
      CREATE OBJECT t177.
      t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t177->cval = t178.
    ENDIF.
    DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t180.
    DATA t181 TYPE REF TO zif_lnt_statement_runnable.
    t181 = zcl_lnt_st_combi_module=>seq( i_first = t174 i_second = t177 i_rest = t180 ).
    t171 = t181.
    DATA t185 TYPE REF TO zif_lnt_statement_runnable.
    DATA t186 TYPE REF TO zif_lnt_statement_runnable.
    DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t188 TYPE REF TO zcl_lnt_abap_release.
    DATA t189 TYPE REF TO zcl_lnt_abap_release.
    DATA t190 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t190 = zcl_lnt_version_module=>release_b8cd.
    DATA(t191) = |v754|.
    t189 = t190->get( p0 = t191 ).
    t188 = t189.
    IF t188 IS BOUND.
      DATA t192 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t193 TYPE REF TO object.
      t193 = t188.
      TRY.
          t187 ?= t193.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t187 IS NOT BOUND.
        TRY.
            t192 ?= t188.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t192 IS BOUND.
          t187 = t192->source( ).
        ENDIF.
        IF t187 IS NOT BOUND.
          CREATE OBJECT t187.
          t187->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t187->oval = t188.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t195 TYPE REF TO zif_lnt_statement_runnable.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t198) = |INTO UTCLONG|.
    CREATE OBJECT t197.
    t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t197->sval = t198.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t201) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t201 IS BOUND.
      CREATE OBJECT t200.
      t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t200->cval = t201.
    ENDIF.
    DATA t203 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t203.
    DATA t204 TYPE REF TO zif_lnt_statement_runnable.
    t204 = zcl_lnt_st_combi_module=>seq( i_first = t197 i_second = t200 i_rest = t203 ).
    t195 = t204.
    IF t195 IS BOUND.
      DATA t208 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t209 TYPE REF TO object.
      t209 = t195.
      TRY.
          t194 ?= t209.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t194 IS NOT BOUND.
        TRY.
            t208 ?= t195.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t208 IS BOUND.
          t194 = t208->source( ).
        ENDIF.
        IF t194 IS NOT BOUND.
          CREATE OBJECT t194.
          t194->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t194->oval = t195.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t210 TYPE REF TO zcl_lnt_iver_options.
    t186 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t187 i_first = t194 i_opts = t210 ).
    t185 = t186.
    DATA t211 TYPE REF TO zif_lnt_statement_runnable.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t215) = |INTO INVERTED-DATE|.
    CREATE OBJECT t214.
    t214->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t214->sval = t215.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t218) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t218 IS BOUND.
      CREATE OBJECT t217.
      t217->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t217->cval = t218.
    ENDIF.
    DATA t220 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t220.
    DATA t221 TYPE REF TO zif_lnt_statement_runnable.
    t221 = zcl_lnt_st_combi_module=>seq( i_first = t214 i_second = t217 i_rest = t220 ).
    t211 = t221.
    DATA t225 TYPE REF TO zif_lnt_statement_runnable.
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t229 TYPE REF TO zif_lnt_statement_runnable.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t143 IS BOUND.
      DATA t233 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t234 TYPE REF TO object.
      t234 = t143.
      TRY.
          t231 ?= t234.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t231 IS NOT BOUND.
        TRY.
            t233 ?= t143.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t233 IS BOUND.
          t231 = t233->source( ).
        ENDIF.
        IF t231 IS NOT BOUND.
          CREATE OBJECT t231.
          t231->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t231->oval = t143.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t157 IS BOUND.
      DATA t238 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t239 TYPE REF TO object.
      t239 = t157.
      TRY.
          t236 ?= t239.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t236 IS NOT BOUND.
        TRY.
            t238 ?= t157.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t238 IS BOUND.
          t236 = t238->source( ).
        ENDIF.
        IF t236 IS NOT BOUND.
          CREATE OBJECT t236.
          t236->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t236->oval = t157.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t241.
    DATA t242 TYPE REF TO zif_lnt_statement_runnable.
    t242 = zcl_lnt_st_combi_module=>per( i_first = t231 i_second = t236 i_rest = t241 ).
    t229 = t242.
    IF t229 IS BOUND.
      DATA t246 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t247 TYPE REF TO object.
      t247 = t229.
      TRY.
          t228 ?= t247.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t228 IS NOT BOUND.
        TRY.
            t246 ?= t229.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t246 IS BOUND.
          t228 = t246->source( ).
        ENDIF.
        IF t228 IS NOT BOUND.
          CREATE OBJECT t228.
          t228->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t228->oval = t229.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t250 TYPE REF TO zif_lnt_statement_runnable.
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t61 IS BOUND.
      DATA t254 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t255 TYPE REF TO object.
      t255 = t61.
      TRY.
          t252 ?= t255.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t252 IS NOT BOUND.
        TRY.
            t254 ?= t61.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t254 IS BOUND.
          t252 = t254->source( ).
        ENDIF.
        IF t252 IS NOT BOUND.
          CREATE OBJECT t252.
          t252->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t252->oval = t61.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t171 IS BOUND.
      DATA t259 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t260 TYPE REF TO object.
      t260 = t171.
      TRY.
          t257 ?= t260.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t257 IS NOT BOUND.
        TRY.
            t259 ?= t171.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t259 IS BOUND.
          t257 = t259->source( ).
        ENDIF.
        IF t257 IS NOT BOUND.
          CREATE OBJECT t257.
          t257->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t257->oval = t171.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t261 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t262 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t262.
    t261 = t262.
    DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t89 IS BOUND.
      DATA t266 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t267 TYPE REF TO object.
      t267 = t89.
      TRY.
          t264 ?= t267.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t264 IS NOT BOUND.
        TRY.
            t266 ?= t89.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t266 IS BOUND.
          t264 = t266->source( ).
        ENDIF.
        IF t264 IS NOT BOUND.
          CREATE OBJECT t264.
          t264->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t264->oval = t89.
        ENDIF.
      ENDIF.
    ENDIF.
    t261->load( ).
    APPEND t264 TO t261->items.
    t261->save( ).
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t211 IS BOUND.
      DATA t271 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t272 TYPE REF TO object.
      t272 = t211.
      TRY.
          t269 ?= t272.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t269 IS NOT BOUND.
        TRY.
            t271 ?= t211.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t271 IS BOUND.
          t269 = t271->source( ).
        ENDIF.
        IF t269 IS NOT BOUND.
          CREATE OBJECT t269.
          t269->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t269->oval = t211.
        ENDIF.
      ENDIF.
    ENDIF.
    t261->load( ).
    APPEND t269 TO t261->items.
    t261->save( ).
    DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t185 IS BOUND.
      DATA t276 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t277 TYPE REF TO object.
      t277 = t185.
      TRY.
          t274 ?= t277.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t274 IS NOT BOUND.
        TRY.
            t276 ?= t185.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t276 IS BOUND.
          t274 = t276->source( ).
        ENDIF.
        IF t274 IS NOT BOUND.
          CREATE OBJECT t274.
          t274->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t274->oval = t185.
        ENDIF.
      ENDIF.
    ENDIF.
    t261->load( ).
    APPEND t274 TO t261->items.
    t261->save( ).
    DATA t278 TYPE REF TO zif_lnt_statement_runnable.
    t278 = zcl_lnt_st_combi_module=>per( i_first = t252 i_second = t257 i_rest = t261 ).
    t250 = t278.
    IF t250 IS BOUND.
      DATA t282 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t283 TYPE REF TO object.
      t283 = t250.
      TRY.
          t249 ?= t283.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t249 IS NOT BOUND.
        TRY.
            t282 ?= t250.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t282 IS BOUND.
          t249 = t282->source( ).
        ENDIF.
        IF t249 IS NOT BOUND.
          CREATE OBJECT t249.
          t249->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t249->oval = t250.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t285 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t285.
    DATA t286 TYPE REF TO zif_lnt_statement_runnable.
    t286 = zcl_lnt_st_combi_module=>seq( i_first = t228 i_second = t249 i_rest = t285 ).
    t225 = t286.
    DATA t290 TYPE REF TO zif_lnt_statement_runnable.
    DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t294) = |INVERTED-DATE|.
    CREATE OBJECT t293.
    t293->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t293->sval = t294.
    DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t297) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t297 IS BOUND.
      CREATE OBJECT t296.
      t296->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t296->cval = t297.
    ENDIF.
    DATA t298 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t299 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t299.
    t298 = t299.
    DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t302) = |INTO DATE|.
    CREATE OBJECT t301.
    t301->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t301->sval = t302.
    t298->load( ).
    APPEND t301 TO t298->items.
    t298->save( ).
    DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t305) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t305 IS BOUND.
      CREATE OBJECT t304.
      t304->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t304->cval = t305.
    ENDIF.
    t298->load( ).
    APPEND t304 TO t298->items.
    t298->save( ).
    DATA t306 TYPE REF TO zif_lnt_statement_runnable.
    t306 = zcl_lnt_st_combi_module=>seq( i_first = t293 i_second = t296 i_rest = t298 ).
    t290 = t306.
    DATA t310 TYPE REF TO zif_lnt_statement_runnable.
    DATA t311 TYPE REF TO zif_lnt_statement_runnable.
    DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t313 TYPE REF TO zcl_lnt_abap_release.
    DATA t314 TYPE REF TO zcl_lnt_abap_release.
    DATA t315 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t315 = zcl_lnt_version_module=>release_b8cd.
    DATA(t316) = |v754|.
    t314 = t315->get( p0 = t316 ).
    t313 = t314.
    IF t313 IS BOUND.
      DATA t317 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t318 TYPE REF TO object.
      t318 = t313.
      TRY.
          t312 ?= t318.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t312 IS NOT BOUND.
        TRY.
            t317 ?= t313.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t317 IS BOUND.
          t312 = t317->source( ).
        ENDIF.
        IF t312 IS NOT BOUND.
          CREATE OBJECT t312.
          t312->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t312->oval = t313.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t320 TYPE REF TO zif_lnt_statement_runnable.
    DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t323) = |UTCLONG|.
    CREATE OBJECT t322.
    t322->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t322->sval = t323.
    DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t326) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t326 IS BOUND.
      CREATE OBJECT t325.
      t325->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t325->cval = t326.
    ENDIF.
    DATA t327 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t328 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t328.
    t327 = t328.
    DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t331 TYPE REF TO zif_lnt_statement_runnable.
    DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t89 IS BOUND.
      DATA t335 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t336 TYPE REF TO object.
      t336 = t89.
      TRY.
          t333 ?= t336.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t333 IS NOT BOUND.
        TRY.
            t335 ?= t89.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t335 IS BOUND.
          t333 = t335->source( ).
        ENDIF.
        IF t333 IS NOT BOUND.
          CREATE OBJECT t333.
          t333->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t333->oval = t89.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      DATA t340 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t341 TYPE REF TO object.
      t341 = t29.
      TRY.
          t338 ?= t341.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t338 IS NOT BOUND.
        TRY.
            t340 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t340 IS BOUND.
          t338 = t340->source( ).
        ENDIF.
        IF t338 IS NOT BOUND.
          CREATE OBJECT t338.
          t338->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t338->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t342 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t343 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t343.
    t342 = t343.
    DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t61 IS BOUND.
      DATA t347 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t348 TYPE REF TO object.
      t348 = t61.
      TRY.
          t345 ?= t348.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t345 IS NOT BOUND.
        TRY.
            t347 ?= t61.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t347 IS BOUND.
          t345 = t347->source( ).
        ENDIF.
        IF t345 IS NOT BOUND.
          CREATE OBJECT t345.
          t345->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t345->oval = t61.
        ENDIF.
      ENDIF.
    ENDIF.
    t342->load( ).
    APPEND t345 TO t342->items.
    t342->save( ).
    DATA t349 TYPE REF TO zif_lnt_statement_runnable.
    t349 = zcl_lnt_st_combi_module=>per( i_first = t333 i_second = t338 i_rest = t342 ).
    t331 = t349.
    IF t331 IS BOUND.
      DATA t353 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t354 TYPE REF TO object.
      t354 = t331.
      TRY.
          t330 ?= t354.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t330 IS NOT BOUND.
        TRY.
            t353 ?= t331.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t353 IS BOUND.
          t330 = t353->source( ).
        ENDIF.
        IF t330 IS NOT BOUND.
          CREATE OBJECT t330.
          t330->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t330->oval = t331.
        ENDIF.
      ENDIF.
    ENDIF.
    t327->load( ).
    APPEND t330 TO t327->items.
    t327->save( ).
    DATA t355 TYPE REF TO zif_lnt_statement_runnable.
    t355 = zcl_lnt_st_combi_module=>seq( i_first = t322 i_second = t325 i_rest = t327 ).
    t320 = t355.
    IF t320 IS BOUND.
      DATA t359 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t360 TYPE REF TO object.
      t360 = t320.
      TRY.
          t319 ?= t360.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t319 IS NOT BOUND.
        TRY.
            t359 ?= t320.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t359 IS BOUND.
          t319 = t359->source( ).
        ENDIF.
        IF t319 IS NOT BOUND.
          CREATE OBJECT t319.
          t319->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t319->oval = t320.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t361 TYPE REF TO zcl_lnt_iver_options.
    DATA t363 TYPE REF TO zcl_lnt_iver_options.
    DATA t364 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t367) = |OpenABAP|.
    DATA(t368) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t368->has = abap_true.
    t368->value = t367.
    t364 = t368.
    t363 = NEW zcl_lnt_iver_options( i_also = t364 ).
    CREATE OBJECT t363->zlnt_view_ownkeys_b0e8086400eb.
    t363->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t370 ).
    CREATE OBJECT t363->zlnt_json_ownkeys_70e5fd461788.
    t363->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t371) = |also|.
    DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t363->zlnt_json_ownkeys_70e5fd461788->put( p0 = t371 p1 = t372 ).
    t361 = t363.
    t311 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t312 i_first = t319 i_opts = t361 ).
    t310 = t311.
    DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t377) = |CONVERT|.
    CREATE OBJECT t376.
    t376->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t376->sval = t377.
    DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t380 TYPE REF TO zif_lnt_statement_runnable.
    DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t103 IS BOUND.
      DATA t384 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t385 TYPE REF TO object.
      t385 = t103.
      TRY.
          t382 ?= t385.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t382 IS NOT BOUND.
        TRY.
            t384 ?= t103.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t384 IS BOUND.
          t382 = t384->source( ).
        ENDIF.
        IF t382 IS NOT BOUND.
          CREATE OBJECT t382.
          t382->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t382->oval = t103.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t225 IS BOUND.
      DATA t389 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t390 TYPE REF TO object.
      t390 = t225.
      TRY.
          t387 ?= t390.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t387 IS NOT BOUND.
        TRY.
            t389 ?= t225.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t389 IS BOUND.
          t387 = t389->source( ).
        ENDIF.
        IF t387 IS NOT BOUND.
          CREATE OBJECT t387.
          t387->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t387->oval = t225.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t391 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t392 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t392.
    t391 = t392.
    DATA t394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t290 IS BOUND.
      DATA t396 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t397 TYPE REF TO object.
      t397 = t290.
      TRY.
          t394 ?= t397.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t394 IS NOT BOUND.
        TRY.
            t396 ?= t290.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t396 IS BOUND.
          t394 = t396->source( ).
        ENDIF.
        IF t394 IS NOT BOUND.
          CREATE OBJECT t394.
          t394->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t394->oval = t290.
        ENDIF.
      ENDIF.
    ENDIF.
    t391->load( ).
    APPEND t394 TO t391->items.
    t391->save( ).
    DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t310 IS BOUND.
      DATA t401 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t402 TYPE REF TO object.
      t402 = t310.
      TRY.
          t399 ?= t402.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t399 IS NOT BOUND.
        TRY.
            t401 ?= t310.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t401 IS BOUND.
          t399 = t401->source( ).
        ENDIF.
        IF t399 IS NOT BOUND.
          CREATE OBJECT t399.
          t399->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t399->oval = t310.
        ENDIF.
      ENDIF.
    ENDIF.
    t391->load( ).
    APPEND t399 TO t391->items.
    t391->save( ).
    DATA t403 TYPE REF TO zif_lnt_statement_runnable.
    t403 = zcl_lnt_st_combi_module=>alt( i_first = t382 i_second = t387 i_rest = t391 ).
    t380 = t403.
    IF t380 IS BOUND.
      DATA t407 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t408 TYPE REF TO object.
      t408 = t380.
      TRY.
          t379 ?= t408.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t379 IS NOT BOUND.
        TRY.
            t407 ?= t380.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t407 IS BOUND.
          t379 = t407->source( ).
        ENDIF.
        IF t379 IS NOT BOUND.
          CREATE OBJECT t379.
          t379->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t379->oval = t380.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t410 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t410.
    DATA t411 TYPE REF TO zif_lnt_statement_runnable.
    t411 = zcl_lnt_st_combi_module=>seq( i_first = t376 i_second = t379 i_rest = t410 ).
    result = t411.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d432_7686102e757b.
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
