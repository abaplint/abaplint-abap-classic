* TS: src/abap/2_statements/statements/parameter.ts:7:1 Parameter
CLASS zcl_lnt_st_parameter DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_parameter IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |PARAMETER|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = |PARAMETERS|.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = t8.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    t11 = zcl_lnt_st_combi_module=>alt_prio( i_first = t4 i_second = t7 i_rest = t10 ).
    t1 = t11.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t19) = |DEFAULT|.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = t19.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
    IF t25 IS BOUND.
      CREATE OBJECT t24.
      t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t24->cval = t25.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
    IF t28 IS BOUND.
      CREATE OBJECT t27.
      t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t27->cval = t28.
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t30.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    t31 = zcl_lnt_st_combi_module=>alt_prio( i_first = t24 i_second = t27 i_rest = t30 ).
    t22 = t31.
    IF t22 IS BOUND.
      DATA t35 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t36 TYPE REF TO object.
      t36 = t22.
      TRY.
          t21 ?= t36.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t21 IS NOT BOUND.
        TRY.
            t35 ?= t22.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t35 IS BOUND.
          t21 = t35->source( ).
        ENDIF.
        IF t21 IS NOT BOUND.
          CREATE OBJECT t21.
          t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t21->oval = t22.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t38.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    t39 = zcl_lnt_st_combi_module=>seq( i_first = t18 i_second = t21 i_rest = t38 ).
    t15 = t39.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t47) = |RADIOBUTTON GROUP|.
    CREATE OBJECT t46.
    t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t46->sval = t47.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d247_a74410852a3d.
    IF t50 IS BOUND.
      CREATE OBJECT t49.
      t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t49->cval = t50.
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t52.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    t53 = zcl_lnt_st_combi_module=>seq( i_first = t46 i_second = t49 i_rest = t52 ).
    t43 = t53.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t64) = |TYPE|.
    CREATE OBJECT t63.
    t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t63->sval = t64.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t67) = |LIKE|.
    CREATE OBJECT t66.
    t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t66->sval = t67.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t69.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    t70 = zcl_lnt_st_combi_module=>alt_prio( i_first = t63 i_second = t66 i_rest = t69 ).
    t61 = t70.
    IF t61 IS BOUND.
      DATA t74 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t75 TYPE REF TO object.
      t75 = t61.
      TRY.
          t60 ?= t75.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t60 IS NOT BOUND.
        TRY.
            t74 ?= t61.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t74 IS BOUND.
          t60 = t74->source( ).
        ENDIF.
        IF t60 IS NOT BOUND.
          CREATE OBJECT t60.
          t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t60->oval = t61.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t78 TYPE REF TO zif_lnt_statement_runnable.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t81) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    IF t81 IS BOUND.
      CREATE OBJECT t80.
      t80->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t80->cval = t81.
    ENDIF.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t84) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t84 IS BOUND.
      CREATE OBJECT t83.
      t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t83->cval = t84.
    ENDIF.
    DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t86.
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    t87 = zcl_lnt_st_combi_module=>alt_prio( i_first = t80 i_second = t83 i_rest = t86 ).
    t78 = t87.
    IF t78 IS BOUND.
      DATA t91 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t92 TYPE REF TO object.
      t92 = t78.
      TRY.
          t77 ?= t92.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t77 IS NOT BOUND.
        TRY.
            t91 ?= t78.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t91 IS BOUND.
          t77 = t91->source( ).
        ENDIF.
        IF t77 IS NOT BOUND.
          CREATE OBJECT t77.
          t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t77->oval = t78.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t94.
    t93 = t94.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t97 TYPE REF TO zif_lnt_statement_runnable.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t99) = zlnt_runtime_desc_78196487750d=>zlnt_member_d103_04a0f92dd4f1.
    IF t99 IS BOUND.
      CREATE OBJECT t98.
      t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t98->cval = t99.
    ENDIF.
    t97 = zcl_lnt_st_combi_module=>opt_prio( i_first = t98 ).
    IF t97 IS BOUND.
      DATA t100 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t101 TYPE REF TO object.
      t101 = t97.
      TRY.
          t96 ?= t101.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t96 IS NOT BOUND.
        TRY.
            t100 ?= t97.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t100 IS BOUND.
          t96 = t100->source( ).
        ENDIF.
        IF t96 IS NOT BOUND.
          CREATE OBJECT t96.
          t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t96->oval = t97.
        ENDIF.
      ENDIF.
    ENDIF.
    t93->load( ).
    APPEND t96 TO t93->items.
    t93->save( ).
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t106) = zlnt_runtime_desc_78196487750d=>zlnt_member_d104_b395e4e66ee3.
    IF t106 IS BOUND.
      CREATE OBJECT t105.
      t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t105->cval = t106.
    ENDIF.
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
    t93->load( ).
    APPEND t103 TO t93->items.
    t93->save( ).
    DATA t109 TYPE REF TO zif_lnt_statement_runnable.
    t109 = zcl_lnt_st_combi_module=>seq( i_first = t60 i_second = t77 i_rest = t93 ).
    t57 = t109.
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t117) = |MEMORY ID|.
    CREATE OBJECT t116.
    t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t116->sval = t117.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t120) = zlnt_runtime_desc_78196487750d=>zlnt_member_d248_d62fd91017f7.
    IF t120 IS BOUND.
      CREATE OBJECT t119.
      t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t119->cval = t120.
    ENDIF.
    DATA t122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t122.
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    t123 = zcl_lnt_st_combi_module=>seq( i_first = t116 i_second = t119 i_rest = t122 ).
    t113 = t123.
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    DATA t128 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t129) = |AS LISTBOX|.
    t128 = zcl_lnt_st_combi_module=>str( i_s = t129 ).
    t127 = t128.
    DATA t130 TYPE REF TO zif_lnt_statement_runnable.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t134) = |USER-COMMAND|.
    CREATE OBJECT t133.
    t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t133->sval = t134.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t137 TYPE REF TO zif_lnt_statement_runnable.
    DATA t138 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t139) = `^[\w\?\/]+$`.
    DATA(t140) = `^[A-Za-z0-9_\?\/]+$`.
    DATA(t141) = ||.
    CREATE OBJECT t138 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t140 flags = t141.
    t138->source = t139.
    t137 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t138 ).
    IF t137 IS BOUND.
      DATA t142 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t143 TYPE REF TO object.
      t143 = t137.
      TRY.
          t136 ?= t143.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t136 IS NOT BOUND.
        TRY.
            t142 ?= t137.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t142 IS BOUND.
          t136 = t142->source( ).
        ENDIF.
        IF t136 IS NOT BOUND.
          CREATE OBJECT t136.
          t136->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t136->oval = t137.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t145 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t145.
    DATA t146 TYPE REF TO zif_lnt_statement_runnable.
    t146 = zcl_lnt_st_combi_module=>seq( i_first = t133 i_second = t136 i_rest = t145 ).
    t130 = t146.
    DATA t150 TYPE REF TO zif_lnt_statement_runnable.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t154) = |MODIF ID|.
    CREATE OBJECT t153.
    t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t153->sval = t154.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t157) = zlnt_runtime_desc_78196487750d=>zlnt_member_d238_a05d3ab5e106.
    IF t157 IS BOUND.
      CREATE OBJECT t156.
      t156->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t156->cval = t157.
    ENDIF.
    DATA t159 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t159.
    DATA t160 TYPE REF TO zif_lnt_statement_runnable.
    t160 = zcl_lnt_st_combi_module=>seq( i_first = t153 i_second = t156 i_rest = t159 ).
    t150 = t160.
    DATA t164 TYPE REF TO zif_lnt_statement_runnable.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t168) = |VISIBLE LENGTH|.
    CREATE OBJECT t167.
    t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t167->sval = t168.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t171) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
    IF t171 IS BOUND.
      CREATE OBJECT t170.
      t170->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t170->cval = t171.
    ENDIF.
    DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t173.
    DATA t174 TYPE REF TO zif_lnt_statement_runnable.
    t174 = zcl_lnt_st_combi_module=>seq( i_first = t167 i_second = t170 i_rest = t173 ).
    t164 = t174.
    DATA t178 TYPE REF TO zif_lnt_statement_runnable.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t182) = |LENGTH|.
    CREATE OBJECT t181.
    t181->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t181->sval = t182.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t185) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
    IF t185 IS BOUND.
      CREATE OBJECT t184.
      t184->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t184->cval = t185.
    ENDIF.
    DATA t187 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t187.
    DATA t188 TYPE REF TO zif_lnt_statement_runnable.
    t188 = zcl_lnt_st_combi_module=>seq( i_first = t181 i_second = t184 i_rest = t187 ).
    t178 = t188.
    DATA t192 TYPE REF TO zif_lnt_statement_runnable.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t196) = |MATCHCODE OBJECT|.
    CREATE OBJECT t195.
    t195->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t195->sval = t196.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t199) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    IF t199 IS BOUND.
      CREATE OBJECT t198.
      t198->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t198->cval = t199.
    ENDIF.
    DATA t201 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t201.
    DATA t202 TYPE REF TO zif_lnt_statement_runnable.
    t202 = zcl_lnt_st_combi_module=>seq( i_first = t195 i_second = t198 i_rest = t201 ).
    t192 = t202.
    DATA t206 TYPE REF TO zif_lnt_statement_runnable.
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t210) = |DECIMALS|.
    CREATE OBJECT t209.
    t209->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t209->sval = t210.
    DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t213) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t213 IS BOUND.
      CREATE OBJECT t212.
      t212->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t212->cval = t213.
    ENDIF.
    DATA t215 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t215.
    DATA t216 TYPE REF TO zif_lnt_statement_runnable.
    t216 = zcl_lnt_st_combi_module=>seq( i_first = t209 i_second = t212 i_rest = t215 ).
    t206 = t216.
    DATA t220 TYPE REF TO zif_lnt_statement_runnable.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t224) = |FOR TABLE|.
    CREATE OBJECT t223.
    t223->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t223->sval = t224.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t227) = zlnt_runtime_desc_78196487750d=>zlnt_member_d156_2545376961ff.
    IF t227 IS BOUND.
      CREATE OBJECT t226.
      t226->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t226->cval = t227.
    ENDIF.
    DATA t228 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t229 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t229.
    t228 = t229.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t232 TYPE REF TO zif_lnt_statement_runnable.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t234) = |VALUE-REQUEST|.
    CREATE OBJECT t233.
    t233->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t233->sval = t234.
    t232 = zcl_lnt_st_combi_module=>opt( i_first = t233 ).
    IF t232 IS BOUND.
      DATA t235 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t236 TYPE REF TO object.
      t236 = t232.
      TRY.
          t231 ?= t236.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t231 IS NOT BOUND.
        TRY.
            t235 ?= t232.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t235 IS BOUND.
          t231 = t235->source( ).
        ENDIF.
        IF t231 IS NOT BOUND.
          CREATE OBJECT t231.
          t231->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t231->oval = t232.
        ENDIF.
      ENDIF.
    ENDIF.
    t228->load( ).
    APPEND t231 TO t228->items.
    t228->save( ).
    DATA t237 TYPE REF TO zif_lnt_statement_runnable.
    t237 = zcl_lnt_st_combi_module=>seq( i_first = t223 i_second = t226 i_rest = t228 ).
    t220 = t237.
    DATA t241 TYPE REF TO zif_lnt_statement_runnable.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t57 IS BOUND.
      DATA t246 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t247 TYPE REF TO object.
      t247 = t57.
      TRY.
          t244 ?= t247.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t244 IS NOT BOUND.
        TRY.
            t246 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t246 IS BOUND.
          t244 = t246->source( ).
        ENDIF.
        IF t244 IS NOT BOUND.
          CREATE OBJECT t244.
          t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t244->oval = t57.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t251 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t252 TYPE REF TO object.
      t252 = t15.
      TRY.
          t249 ?= t252.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t249 IS NOT BOUND.
        TRY.
            t251 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t251 IS BOUND.
          t249 = t251->source( ).
        ENDIF.
        IF t249 IS NOT BOUND.
          CREATE OBJECT t249.
          t249->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t249->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t253 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t254 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t254.
    t253 = t254.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t257) = |OBLIGATORY|.
    CREATE OBJECT t256.
    t256->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t256->sval = t257.
    t253->load( ).
    APPEND t256 TO t253->items.
    t253->save( ).
    DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t192 IS BOUND.
      DATA t261 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t262 TYPE REF TO object.
      t262 = t192.
      TRY.
          t259 ?= t262.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t259 IS NOT BOUND.
        TRY.
            t261 ?= t192.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t261 IS BOUND.
          t259 = t261->source( ).
        ENDIF.
        IF t259 IS NOT BOUND.
          CREATE OBJECT t259.
          t259->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t259->oval = t192.
        ENDIF.
      ENDIF.
    ENDIF.
    t253->load( ).
    APPEND t259 TO t253->items.
    t253->save( ).
    DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t130 IS BOUND.
      DATA t266 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t267 TYPE REF TO object.
      t267 = t130.
      TRY.
          t264 ?= t267.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t264 IS NOT BOUND.
        TRY.
            t266 ?= t130.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t266 IS BOUND.
          t264 = t266->source( ).
        ENDIF.
        IF t264 IS NOT BOUND.
          CREATE OBJECT t264.
          t264->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t264->oval = t130.
        ENDIF.
      ENDIF.
    ENDIF.
    t253->load( ).
    APPEND t264 TO t253->items.
    t253->save( ).
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t178 IS BOUND.
      DATA t271 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t272 TYPE REF TO object.
      t272 = t178.
      TRY.
          t269 ?= t272.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t269 IS NOT BOUND.
        TRY.
            t271 ?= t178.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t271 IS BOUND.
          t269 = t271->source( ).
        ENDIF.
        IF t269 IS NOT BOUND.
          CREATE OBJECT t269.
          t269->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t269->oval = t178.
        ENDIF.
      ENDIF.
    ENDIF.
    t253->load( ).
    APPEND t269 TO t253->items.
    t253->save( ).
    DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t206 IS BOUND.
      DATA t276 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t277 TYPE REF TO object.
      t277 = t206.
      TRY.
          t274 ?= t277.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t274 IS NOT BOUND.
        TRY.
            t276 ?= t206.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t276 IS BOUND.
          t274 = t276->source( ).
        ENDIF.
        IF t274 IS NOT BOUND.
          CREATE OBJECT t274.
          t274->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t274->oval = t206.
        ENDIF.
      ENDIF.
    ENDIF.
    t253->load( ).
    APPEND t274 TO t253->items.
    t253->save( ).
    DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t43 IS BOUND.
      DATA t281 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t282 TYPE REF TO object.
      t282 = t43.
      TRY.
          t279 ?= t282.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t279 IS NOT BOUND.
        TRY.
            t281 ?= t43.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t281 IS BOUND.
          t279 = t281->source( ).
        ENDIF.
        IF t279 IS NOT BOUND.
          CREATE OBJECT t279.
          t279->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t279->oval = t43.
        ENDIF.
      ENDIF.
    ENDIF.
    t253->load( ).
    APPEND t279 TO t253->items.
    t253->save( ).
    DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t113 IS BOUND.
      DATA t286 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t287 TYPE REF TO object.
      t287 = t113.
      TRY.
          t284 ?= t287.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t284 IS NOT BOUND.
        TRY.
            t286 ?= t113.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t286 IS BOUND.
          t284 = t286->source( ).
        ENDIF.
        IF t284 IS NOT BOUND.
          CREATE OBJECT t284.
          t284->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t284->oval = t113.
        ENDIF.
      ENDIF.
    ENDIF.
    t253->load( ).
    APPEND t284 TO t253->items.
    t253->save( ).
    DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t150 IS BOUND.
      DATA t291 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t292 TYPE REF TO object.
      t292 = t150.
      TRY.
          t289 ?= t292.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t289 IS NOT BOUND.
        TRY.
            t291 ?= t150.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t291 IS BOUND.
          t289 = t291->source( ).
        ENDIF.
        IF t289 IS NOT BOUND.
          CREATE OBJECT t289.
          t289->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t289->oval = t150.
        ENDIF.
      ENDIF.
    ENDIF.
    t253->load( ).
    APPEND t289 TO t253->items.
    t253->save( ).
    DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t127 IS BOUND.
      DATA t296 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t297 TYPE REF TO object.
      t297 = t127.
      TRY.
          t294 ?= t297.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t294 IS NOT BOUND.
        TRY.
            t296 ?= t127.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t296 IS BOUND.
          t294 = t296->source( ).
        ENDIF.
        IF t294 IS NOT BOUND.
          CREATE OBJECT t294.
          t294->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t294->oval = t127.
        ENDIF.
      ENDIF.
    ENDIF.
    t253->load( ).
    APPEND t294 TO t253->items.
    t253->save( ).
    DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t164 IS BOUND.
      DATA t301 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t302 TYPE REF TO object.
      t302 = t164.
      TRY.
          t299 ?= t302.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t299 IS NOT BOUND.
        TRY.
            t301 ?= t164.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t301 IS BOUND.
          t299 = t301->source( ).
        ENDIF.
        IF t299 IS NOT BOUND.
          CREATE OBJECT t299.
          t299->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t299->oval = t164.
        ENDIF.
      ENDIF.
    ENDIF.
    t253->load( ).
    APPEND t299 TO t253->items.
    t253->save( ).
    DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t220 IS BOUND.
      DATA t306 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t307 TYPE REF TO object.
      t307 = t220.
      TRY.
          t304 ?= t307.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t304 IS NOT BOUND.
        TRY.
            t306 ?= t220.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t306 IS BOUND.
          t304 = t306->source( ).
        ENDIF.
        IF t304 IS NOT BOUND.
          CREATE OBJECT t304.
          t304->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t304->oval = t220.
        ENDIF.
      ENDIF.
    ENDIF.
    t253->load( ).
    APPEND t304 TO t253->items.
    t253->save( ).
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t310) = |VALUE CHECK|.
    CREATE OBJECT t309.
    t309->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t309->sval = t310.
    t253->load( ).
    APPEND t309 TO t253->items.
    t253->save( ).
    DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t313) = |NO-DISPLAY|.
    CREATE OBJECT t312.
    t312->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t312->sval = t313.
    t253->load( ).
    APPEND t312 TO t253->items.
    t253->save( ).
    DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t316) = |AS CHECKBOX|.
    CREATE OBJECT t315.
    t315->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t315->sval = t316.
    t253->load( ).
    APPEND t315 TO t253->items.
    t253->save( ).
    DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t319) = |LOWER CASE|.
    CREATE OBJECT t318.
    t318->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t318->sval = t319.
    t253->load( ).
    APPEND t318 TO t253->items.
    t253->save( ).
    DATA t320 TYPE REF TO zif_lnt_statement_runnable.
    t320 = zcl_lnt_st_combi_module=>per( i_first = t244 i_second = t249 i_rest = t253 ).
    t241 = t320.
    DATA t324 TYPE REF TO zif_lnt_statement_runnable.
    DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t329 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t330 TYPE REF TO object.
      t330 = t1.
      TRY.
          t327 ?= t330.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t327 IS NOT BOUND.
        TRY.
            t329 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t329 IS BOUND.
          t327 = t329->source( ).
        ENDIF.
        IF t327 IS NOT BOUND.
          CREATE OBJECT t327.
          t327->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t327->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t333) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
    IF t333 IS BOUND.
      CREATE OBJECT t332.
      t332->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t332->cval = t333.
    ENDIF.
    DATA t334 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t335 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t335.
    t334 = t335.
    DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t338 TYPE REF TO zif_lnt_statement_runnable.
    DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t340) = zlnt_runtime_desc_78196487750d=>zlnt_member_d142_ab91f6798a5a.
    IF t340 IS BOUND.
      CREATE OBJECT t339.
      t339->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t339->cval = t340.
    ENDIF.
    t338 = zcl_lnt_st_combi_module=>opt( i_first = t339 ).
    IF t338 IS BOUND.
      DATA t341 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t342 TYPE REF TO object.
      t342 = t338.
      TRY.
          t337 ?= t342.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t337 IS NOT BOUND.
        TRY.
            t341 ?= t338.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t341 IS BOUND.
          t337 = t341->source( ).
        ENDIF.
        IF t337 IS NOT BOUND.
          CREATE OBJECT t337.
          t337->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t337->oval = t338.
        ENDIF.
      ENDIF.
    ENDIF.
    t334->load( ).
    APPEND t337 TO t334->items.
    t334->save( ).
    DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t345 TYPE REF TO zif_lnt_statement_runnable.
    DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t241 IS BOUND.
      DATA t348 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t349 TYPE REF TO object.
      t349 = t241.
      TRY.
          t346 ?= t349.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t346 IS NOT BOUND.
        TRY.
            t348 ?= t241.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t348 IS BOUND.
          t346 = t348->source( ).
        ENDIF.
        IF t346 IS NOT BOUND.
          CREATE OBJECT t346.
          t346->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t346->oval = t241.
        ENDIF.
      ENDIF.
    ENDIF.
    t345 = zcl_lnt_st_combi_module=>opt( i_first = t346 ).
    IF t345 IS BOUND.
      DATA t350 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t351 TYPE REF TO object.
      t351 = t345.
      TRY.
          t344 ?= t351.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t344 IS NOT BOUND.
        TRY.
            t350 ?= t345.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t350 IS BOUND.
          t344 = t350->source( ).
        ENDIF.
        IF t344 IS NOT BOUND.
          CREATE OBJECT t344.
          t344->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t344->oval = t345.
        ENDIF.
      ENDIF.
    ENDIF.
    t334->load( ).
    APPEND t344 TO t334->items.
    t334->save( ).
    DATA t352 TYPE REF TO zif_lnt_statement_runnable.
    t352 = zcl_lnt_st_combi_module=>seq( i_first = t327 i_second = t332 i_rest = t334 ).
    t324 = t352.
    DATA t356 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t357) = |Cloud|.
    DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t324 IS BOUND.
      DATA t360 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t361 TYPE REF TO object.
      t361 = t324.
      TRY.
          t358 ?= t361.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t358 IS NOT BOUND.
        TRY.
            t360 ?= t324.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t360 IS BOUND.
          t358 = t360->source( ).
        ENDIF.
        IF t358 IS NOT BOUND.
          CREATE OBJECT t358.
          t358->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t358->oval = t324.
        ENDIF.
      ENDIF.
    ENDIF.
    t356 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t357 i_first = t358 ).
    result = t356.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d572_46882accee86.
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
