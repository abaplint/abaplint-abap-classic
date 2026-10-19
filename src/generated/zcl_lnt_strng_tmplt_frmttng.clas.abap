* TS: src/abap/2_statements/expressions/string_template_formatting.ts:7:1 StringTemplateFormatting
CLASS zcl_lnt_strng_tmplt_frmttng DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_strng_tmplt_frmttng IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |OUT|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = |RAW|.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t9 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t13) = |IN|.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = t13.
    t9->load( ).
    APPEND t12 TO t9->items.
    t9->save( ).
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t16 IS BOUND.
      CREATE OBJECT t15.
      t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t15->cval = t16.
    ENDIF.
    t9->load( ).
    APPEND t15 TO t9->items.
    t9->save( ).
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    t17 = zcl_lnt_st_combi_module=>alt_prio( i_first = t4 i_second = t7 i_rest = t9 ).
    t1 = t17.
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t25) = |LEFT|.
    CREATE OBJECT t24.
    t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t24->sval = t25.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t28) = |RIGHT|.
    CREATE OBJECT t27.
    t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t27->sval = t28.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t30.
    t29 = t30.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t33) = |CENTER|.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = t33.
    t29->load( ).
    APPEND t32 TO t29->items.
    t29->save( ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t36 IS BOUND.
      CREATE OBJECT t35.
      t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t35->cval = t36.
    ENDIF.
    t29->load( ).
    APPEND t35 TO t29->items.
    t29->save( ).
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t39) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t39 IS BOUND.
      CREATE OBJECT t38.
      t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t38->cval = t39.
    ENDIF.
    t29->load( ).
    APPEND t38 TO t29->items.
    t29->save( ).
    DATA t40 TYPE REF TO zif_lnt_statement_runnable.
    t40 = zcl_lnt_st_combi_module=>alt_prio( i_first = t24 i_second = t27 i_rest = t29 ).
    t21 = t40.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t48) = |RAW|.
    CREATE OBJECT t47.
    t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t47->sval = t48.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t51) = |ISO|.
    CREATE OBJECT t50.
    t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t50->sval = t51.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t53.
    t52 = t53.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t56) = |USER|.
    CREATE OBJECT t55.
    t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t55->sval = t56.
    t52->load( ).
    APPEND t55 TO t52->items.
    t52->save( ).
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t59) = |ENVIRONMENT|.
    CREATE OBJECT t58.
    t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t58->sval = t59.
    t52->load( ).
    APPEND t58 TO t52->items.
    t52->save( ).
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t62) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t62 IS BOUND.
      CREATE OBJECT t61.
      t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t61->cval = t62.
    ENDIF.
    t52->load( ).
    APPEND t61 TO t52->items.
    t52->save( ).
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t65) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t65 IS BOUND.
      CREATE OBJECT t64.
      t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t64->cval = t65.
    ENDIF.
    t52->load( ).
    APPEND t64 TO t52->items.
    t52->save( ).
    DATA t66 TYPE REF TO zif_lnt_statement_runnable.
    t66 = zcl_lnt_st_combi_module=>alt_prio( i_first = t47 i_second = t50 i_rest = t52 ).
    t44 = t66.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t74) = |SPACE|.
    CREATE OBJECT t73.
    t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t73->sval = t74.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t77) = |ISO|.
    CREATE OBJECT t76.
    t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t76->sval = t77.
    DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t79.
    t78 = t79.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t82) = |USER|.
    CREATE OBJECT t81.
    t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t81->sval = t82.
    t78->load( ).
    APPEND t81 TO t78->items.
    t78->save( ).
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t85) = |ENVIRONMENT|.
    CREATE OBJECT t84.
    t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t84->sval = t85.
    t78->load( ).
    APPEND t84 TO t78->items.
    t78->save( ).
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t88) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t88 IS BOUND.
      CREATE OBJECT t87.
      t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t87->cval = t88.
    ENDIF.
    t78->load( ).
    APPEND t87 TO t78->items.
    t78->save( ).
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t91) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t91 IS BOUND.
      CREATE OBJECT t90.
      t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t90->cval = t91.
    ENDIF.
    t78->load( ).
    APPEND t90 TO t78->items.
    t78->save( ).
    DATA t92 TYPE REF TO zif_lnt_statement_runnable.
    t92 = zcl_lnt_st_combi_module=>alt_prio( i_first = t73 i_second = t76 i_rest = t78 ).
    t70 = t92.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t100) = |RAW|.
    CREATE OBJECT t99.
    t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t99->sval = t100.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t103) = |USER|.
    CREATE OBJECT t102.
    t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t102->sval = t103.
    DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t105.
    t104 = t105.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t108) = |ENVIRONMENT|.
    CREATE OBJECT t107.
    t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t107->sval = t108.
    t104->load( ).
    APPEND t107 TO t104->items.
    t104->save( ).
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t111) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t111 IS BOUND.
      CREATE OBJECT t110.
      t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t110->cval = t111.
    ENDIF.
    t104->load( ).
    APPEND t110 TO t104->items.
    t104->save( ).
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t114) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t114 IS BOUND.
      CREATE OBJECT t113.
      t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t113->cval = t114.
    ENDIF.
    t104->load( ).
    APPEND t113 TO t104->items.
    t104->save( ).
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    t115 = zcl_lnt_st_combi_module=>alt_prio( i_first = t99 i_second = t102 i_rest = t104 ).
    t96 = t115.
    DATA t119 TYPE REF TO zif_lnt_statement_runnable.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t123) = |LEFT|.
    CREATE OBJECT t122.
    t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t122->sval = t123.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t126) = |LEFTPLUS|.
    CREATE OBJECT t125.
    t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t125->sval = t126.
    DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t128 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t128.
    t127 = t128.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t131) = |LEFTSPACE|.
    CREATE OBJECT t130.
    t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t130->sval = t131.
    t127->load( ).
    APPEND t130 TO t127->items.
    t127->save( ).
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t134) = |RIGHT|.
    CREATE OBJECT t133.
    t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t133->sval = t134.
    t127->load( ).
    APPEND t133 TO t127->items.
    t127->save( ).
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t137) = |RIGHTPLUS|.
    CREATE OBJECT t136.
    t136->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t136->sval = t137.
    t127->load( ).
    APPEND t136 TO t127->items.
    t127->save( ).
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t140) = |RIGHTSPACE|.
    CREATE OBJECT t139.
    t139->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t139->sval = t140.
    t127->load( ).
    APPEND t139 TO t127->items.
    t127->save( ).
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t143) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t143 IS BOUND.
      CREATE OBJECT t142.
      t142->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t142->cval = t143.
    ENDIF.
    t127->load( ).
    APPEND t142 TO t127->items.
    t127->save( ).
    DATA t144 TYPE REF TO zif_lnt_statement_runnable.
    t144 = zcl_lnt_st_combi_module=>alt_prio( i_first = t122 i_second = t125 i_rest = t127 ).
    t119 = t144.
    DATA t148 TYPE REF TO zif_lnt_statement_runnable.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t152) = |RAW|.
    CREATE OBJECT t151.
    t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t151->sval = t152.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t155) = |UPPER|.
    CREATE OBJECT t154.
    t154->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t154->sval = t155.
    DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t157 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t157.
    t156 = t157.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t160) = |LOWER|.
    CREATE OBJECT t159.
    t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t159->sval = t160.
    t156->load( ).
    APPEND t159 TO t156->items.
    t156->save( ).
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t163) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t163 IS BOUND.
      CREATE OBJECT t162.
      t162->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t162->cval = t163.
    ENDIF.
    t156->load( ).
    APPEND t162 TO t156->items.
    t156->save( ).
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t166) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t166 IS BOUND.
      CREATE OBJECT t165.
      t165->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t165->cval = t166.
    ENDIF.
    t156->load( ).
    APPEND t165 TO t156->items.
    t156->save( ).
    DATA t167 TYPE REF TO zif_lnt_statement_runnable.
    t167 = zcl_lnt_st_combi_module=>alt_prio( i_first = t151 i_second = t154 i_rest = t156 ).
    t148 = t167.
    DATA t171 TYPE REF TO zif_lnt_statement_runnable.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t175) = |YES|.
    CREATE OBJECT t174.
    t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t174->sval = t175.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t178) = |NO|.
    CREATE OBJECT t177.
    t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t177->sval = t178.
    DATA t179 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t180.
    t179 = t180.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t183) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t183 IS BOUND.
      CREATE OBJECT t182.
      t182->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t182->cval = t183.
    ENDIF.
    t179->load( ).
    APPEND t182 TO t179->items.
    t179->save( ).
    DATA t184 TYPE REF TO zif_lnt_statement_runnable.
    t184 = zcl_lnt_st_combi_module=>alt_prio( i_first = t174 i_second = t177 i_rest = t179 ).
    t171 = t184.
    DATA t188 TYPE REF TO zif_lnt_statement_runnable.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t192) = |SIMPLE|.
    CREATE OBJECT t191.
    t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t191->sval = t192.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t195) = |SIGN_AS_POSTFIX|.
    CREATE OBJECT t194.
    t194->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t194->sval = t195.
    DATA t196 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t197 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t197.
    t196 = t197.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t200) = |SCALE_PRESERVING|.
    CREATE OBJECT t199.
    t199->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t199->sval = t200.
    t196->load( ).
    APPEND t199 TO t196->items.
    t196->save( ).
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t203) = |SCIENTIFIC|.
    CREATE OBJECT t202.
    t202->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t202->sval = t203.
    t196->load( ).
    APPEND t202 TO t196->items.
    t196->save( ).
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t206) = |SCIENTIFIC_WITH_LEADING_ZERO|.
    CREATE OBJECT t205.
    t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t205->sval = t206.
    t196->load( ).
    APPEND t205 TO t196->items.
    t196->save( ).
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t209) = |SCALE_PRESERVING_SCIENTIFIC|.
    CREATE OBJECT t208.
    t208->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t208->sval = t209.
    t196->load( ).
    APPEND t208 TO t196->items.
    t196->save( ).
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t212) = |ENGINEERING|.
    CREATE OBJECT t211.
    t211->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t211->sval = t212.
    t196->load( ).
    APPEND t211 TO t196->items.
    t196->save( ).
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t215) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t215 IS BOUND.
      CREATE OBJECT t214.
      t214->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t214->cval = t215.
    ENDIF.
    t196->load( ).
    APPEND t214 TO t196->items.
    t196->save( ).
    DATA t216 TYPE REF TO zif_lnt_statement_runnable.
    t216 = zcl_lnt_st_combi_module=>alt_prio( i_first = t191 i_second = t194 i_rest = t196 ).
    t188 = t216.
    DATA t220 TYPE REF TO zif_lnt_statement_runnable.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t224) = |WIDTH =|.
    CREATE OBJECT t223.
    t223->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t223->sval = t224.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t227) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t227 IS BOUND.
      CREATE OBJECT t226.
      t226->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t226->cval = t227.
    ENDIF.
    DATA t229 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t229.
    DATA t230 TYPE REF TO zif_lnt_statement_runnable.
    t230 = zcl_lnt_st_combi_module=>seq( i_first = t223 i_second = t226 i_rest = t229 ).
    t220 = t230.
    DATA t234 TYPE REF TO zif_lnt_statement_runnable.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t238) = |ALIGN =|.
    CREATE OBJECT t237.
    t237->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t237->sval = t238.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21 IS BOUND.
      DATA t242 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t243 TYPE REF TO object.
      t243 = t21.
      TRY.
          t240 ?= t243.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t240 IS NOT BOUND.
        TRY.
            t242 ?= t21.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t242 IS BOUND.
          t240 = t242->source( ).
        ENDIF.
        IF t240 IS NOT BOUND.
          CREATE OBJECT t240.
          t240->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t240->oval = t21.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t245 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t245.
    DATA t246 TYPE REF TO zif_lnt_statement_runnable.
    t246 = zcl_lnt_st_combi_module=>seq( i_first = t237 i_second = t240 i_rest = t245 ).
    t234 = t246.
    DATA t250 TYPE REF TO zif_lnt_statement_runnable.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t254) = |TIMEZONE =|.
    CREATE OBJECT t253.
    t253->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t253->sval = t254.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t257) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t257 IS BOUND.
      CREATE OBJECT t256.
      t256->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t256->cval = t257.
    ENDIF.
    DATA t259 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t259.
    DATA t260 TYPE REF TO zif_lnt_statement_runnable.
    t260 = zcl_lnt_st_combi_module=>seq( i_first = t253 i_second = t256 i_rest = t259 ).
    t250 = t260.
    DATA t264 TYPE REF TO zif_lnt_statement_runnable.
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t268) = |TIMESTAMP =|.
    CREATE OBJECT t267.
    t267->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t267->sval = t268.
    DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t70 IS BOUND.
      DATA t272 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t273 TYPE REF TO object.
      t273 = t70.
      TRY.
          t270 ?= t273.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t270 IS NOT BOUND.
        TRY.
            t272 ?= t70.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t272 IS BOUND.
          t270 = t272->source( ).
        ENDIF.
        IF t270 IS NOT BOUND.
          CREATE OBJECT t270.
          t270->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t270->oval = t70.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t275 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t275.
    DATA t276 TYPE REF TO zif_lnt_statement_runnable.
    t276 = zcl_lnt_st_combi_module=>seq( i_first = t267 i_second = t270 i_rest = t275 ).
    t264 = t276.
    DATA t280 TYPE REF TO zif_lnt_statement_runnable.
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t284) = |PAD =|.
    CREATE OBJECT t283.
    t283->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t283->sval = t284.
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t287) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t287 IS BOUND.
      CREATE OBJECT t286.
      t286->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t286->cval = t287.
    ENDIF.
    DATA t289 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t289.
    DATA t290 TYPE REF TO zif_lnt_statement_runnable.
    t290 = zcl_lnt_st_combi_module=>seq( i_first = t283 i_second = t286 i_rest = t289 ).
    t280 = t290.
    DATA t294 TYPE REF TO zif_lnt_statement_runnable.
    DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t298) = |NUMBER =|.
    CREATE OBJECT t297.
    t297->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t297->sval = t298.
    DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t96 IS BOUND.
      DATA t302 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t303 TYPE REF TO object.
      t303 = t96.
      TRY.
          t300 ?= t303.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t300 IS NOT BOUND.
        TRY.
            t302 ?= t96.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t302 IS BOUND.
          t300 = t302->source( ).
        ENDIF.
        IF t300 IS NOT BOUND.
          CREATE OBJECT t300.
          t300->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t300->oval = t96.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t305 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t305.
    DATA t306 TYPE REF TO zif_lnt_statement_runnable.
    t306 = zcl_lnt_st_combi_module=>seq( i_first = t297 i_second = t300 i_rest = t305 ).
    t294 = t306.
    DATA t310 TYPE REF TO zif_lnt_statement_runnable.
    DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t314) = |SIGN =|.
    CREATE OBJECT t313.
    t313->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t313->sval = t314.
    DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t119 IS BOUND.
      DATA t318 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t319 TYPE REF TO object.
      t319 = t119.
      TRY.
          t316 ?= t319.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t316 IS NOT BOUND.
        TRY.
            t318 ?= t119.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t318 IS BOUND.
          t316 = t318->source( ).
        ENDIF.
        IF t316 IS NOT BOUND.
          CREATE OBJECT t316.
          t316->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t316->oval = t119.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t321 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t321.
    DATA t322 TYPE REF TO zif_lnt_statement_runnable.
    t322 = zcl_lnt_st_combi_module=>seq( i_first = t313 i_second = t316 i_rest = t321 ).
    t310 = t322.
    DATA t326 TYPE REF TO zif_lnt_statement_runnable.
    DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t330) = |DECIMALS =|.
    CREATE OBJECT t329.
    t329->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t329->sval = t330.
    DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t333) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t333 IS BOUND.
      CREATE OBJECT t332.
      t332->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t332->cval = t333.
    ENDIF.
    DATA t335 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t335.
    DATA t336 TYPE REF TO zif_lnt_statement_runnable.
    t336 = zcl_lnt_st_combi_module=>seq( i_first = t329 i_second = t332 i_rest = t335 ).
    t326 = t336.
    DATA t340 TYPE REF TO zif_lnt_statement_runnable.
    DATA t341 TYPE REF TO zif_lnt_statement_runnable.
    DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t343 TYPE REF TO zcl_lnt_abap_release.
    DATA t344 TYPE REF TO zcl_lnt_abap_release.
    DATA t345 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t345 = zcl_lnt_version_module=>release_b8cd.
    DATA(t346) = |v740sp02|.
    t344 = t345->get( p0 = t346 ).
    t343 = t344.
    IF t343 IS BOUND.
      DATA t347 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t348 TYPE REF TO object.
      t348 = t343.
      TRY.
          t342 ?= t348.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t342 IS NOT BOUND.
        TRY.
            t347 ?= t343.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t347 IS BOUND.
          t342 = t347->source( ).
        ENDIF.
        IF t342 IS NOT BOUND.
          CREATE OBJECT t342.
          t342->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t342->oval = t343.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t350 TYPE REF TO zif_lnt_statement_runnable.
    DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t353) = |ALPHA =|.
    CREATE OBJECT t352.
    t352->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t352->sval = t353.
    DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t357 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t358 TYPE REF TO object.
      t358 = t1.
      TRY.
          t355 ?= t358.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t355 IS NOT BOUND.
        TRY.
            t357 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t357 IS BOUND.
          t355 = t357->source( ).
        ENDIF.
        IF t355 IS NOT BOUND.
          CREATE OBJECT t355.
          t355->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t355->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t360 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t360.
    DATA t361 TYPE REF TO zif_lnt_statement_runnable.
    t361 = zcl_lnt_st_combi_module=>seq( i_first = t352 i_second = t355 i_rest = t360 ).
    t350 = t361.
    IF t350 IS BOUND.
      DATA t365 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t366 TYPE REF TO object.
      t366 = t350.
      TRY.
          t349 ?= t366.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t349 IS NOT BOUND.
        TRY.
            t365 ?= t350.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t365 IS BOUND.
          t349 = t365->source( ).
        ENDIF.
        IF t349 IS NOT BOUND.
          CREATE OBJECT t349.
          t349->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t349->oval = t350.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t367 TYPE REF TO zcl_lnt_iver_options.
    DATA t369 TYPE REF TO zcl_lnt_iver_options.
    DATA t370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t373) = |OpenABAP|.
    DATA(t374) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t374->has = abap_true.
    t374->value = t373.
    t370 = t374.
    t369 = NEW zcl_lnt_iver_options( i_also = t370 ).
    CREATE OBJECT t369->zlnt_view_ownkeys_b0e8086400eb.
    t369->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t369->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t376 ).
    CREATE OBJECT t369->zlnt_json_ownkeys_70e5fd461788.
    t369->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t377) = |also|.
    DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t369->zlnt_json_ownkeys_70e5fd461788->put( p0 = t377 p1 = t378 ).
    t367 = t369.
    t341 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t342 i_first = t349 i_opts = t367 ).
    t340 = t341.
    DATA t380 TYPE REF TO zif_lnt_statement_runnable.
    DATA t381 TYPE REF TO zif_lnt_statement_runnable.
    DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t383 TYPE REF TO zcl_lnt_abap_release.
    DATA t384 TYPE REF TO zcl_lnt_abap_release.
    DATA t385 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t385 = zcl_lnt_version_module=>release_b8cd.
    DATA(t386) = |v740sp02|.
    t384 = t385->get( p0 = t386 ).
    t383 = t384.
    IF t383 IS BOUND.
      DATA t387 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t388 TYPE REF TO object.
      t388 = t383.
      TRY.
          t382 ?= t388.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t382 IS NOT BOUND.
        TRY.
            t387 ?= t383.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t387 IS BOUND.
          t382 = t387->source( ).
        ENDIF.
        IF t382 IS NOT BOUND.
          CREATE OBJECT t382.
          t382->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t382->oval = t383.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t390 TYPE REF TO zif_lnt_statement_runnable.
    DATA t392 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t393) = |XSD =|.
    CREATE OBJECT t392.
    t392->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t392->sval = t393.
    DATA t395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t171 IS BOUND.
      DATA t397 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t398 TYPE REF TO object.
      t398 = t171.
      TRY.
          t395 ?= t398.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t395 IS NOT BOUND.
        TRY.
            t397 ?= t171.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t397 IS BOUND.
          t395 = t397->source( ).
        ENDIF.
        IF t395 IS NOT BOUND.
          CREATE OBJECT t395.
          t395->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t395->oval = t171.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t400 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t400.
    DATA t401 TYPE REF TO zif_lnt_statement_runnable.
    t401 = zcl_lnt_st_combi_module=>seq( i_first = t392 i_second = t395 i_rest = t400 ).
    t390 = t401.
    IF t390 IS BOUND.
      DATA t405 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t406 TYPE REF TO object.
      t406 = t390.
      TRY.
          t389 ?= t406.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t389 IS NOT BOUND.
        TRY.
            t405 ?= t390.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t405 IS BOUND.
          t389 = t405->source( ).
        ENDIF.
        IF t389 IS NOT BOUND.
          CREATE OBJECT t389.
          t389->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t389->oval = t390.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t407 TYPE REF TO zcl_lnt_iver_options.
    t381 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t382 i_first = t389 i_opts = t407 ).
    t380 = t381.
    DATA t408 TYPE REF TO zif_lnt_statement_runnable.
    DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t412) = |COUNTRY =|.
    CREATE OBJECT t411.
    t411->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t411->sval = t412.
    DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t415) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t415 IS BOUND.
      CREATE OBJECT t414.
      t414->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t414->cval = t415.
    ENDIF.
    DATA t417 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t417.
    DATA t418 TYPE REF TO zif_lnt_statement_runnable.
    t418 = zcl_lnt_st_combi_module=>seq( i_first = t411 i_second = t414 i_rest = t417 ).
    t408 = t418.
    DATA t425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t426 TYPE REF TO zif_lnt_statement_runnable.
    DATA t428 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t429) = |TIME =|.
    CREATE OBJECT t428.
    t428->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t428->sval = t429.
    DATA t431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t44 IS BOUND.
      DATA t433 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t434 TYPE REF TO object.
      t434 = t44.
      TRY.
          t431 ?= t434.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t431 IS NOT BOUND.
        TRY.
            t433 ?= t44.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t433 IS BOUND.
          t431 = t433->source( ).
        ENDIF.
        IF t431 IS NOT BOUND.
          CREATE OBJECT t431.
          t431->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t431->oval = t44.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t436 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t436.
    DATA t437 TYPE REF TO zif_lnt_statement_runnable.
    t437 = zcl_lnt_st_combi_module=>seq( i_first = t428 i_second = t431 i_rest = t436 ).
    t426 = t437.
    IF t426 IS BOUND.
      DATA t441 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t442 TYPE REF TO object.
      t442 = t426.
      TRY.
          t425 ?= t442.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t425 IS NOT BOUND.
        TRY.
            t441 ?= t426.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t441 IS BOUND.
          t425 = t441->source( ).
        ENDIF.
        IF t425 IS NOT BOUND.
          CREATE OBJECT t425.
          t425->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t425->oval = t426.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t444 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t445 TYPE REF TO zif_lnt_statement_runnable.
    DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t448) = |DATE =|.
    CREATE OBJECT t447.
    t447->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t447->sval = t448.
    DATA t450 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t44 IS BOUND.
      DATA t452 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t453 TYPE REF TO object.
      t453 = t44.
      TRY.
          t450 ?= t453.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t450 IS NOT BOUND.
        TRY.
            t452 ?= t44.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t452 IS BOUND.
          t450 = t452->source( ).
        ENDIF.
        IF t450 IS NOT BOUND.
          CREATE OBJECT t450.
          t450->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t450->oval = t44.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t455 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t455.
    DATA t456 TYPE REF TO zif_lnt_statement_runnable.
    t456 = zcl_lnt_st_combi_module=>seq( i_first = t447 i_second = t450 i_rest = t455 ).
    t445 = t456.
    IF t445 IS BOUND.
      DATA t460 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t461 TYPE REF TO object.
      t461 = t445.
      TRY.
          t444 ?= t461.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t444 IS NOT BOUND.
        TRY.
            t460 ?= t445.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t460 IS BOUND.
          t444 = t460->source( ).
        ENDIF.
        IF t444 IS NOT BOUND.
          CREATE OBJECT t444.
          t444->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t444->oval = t445.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t462 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t463 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t463.
    t462 = t463.
    DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t466 TYPE REF TO zif_lnt_statement_runnable.
    DATA t468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t469) = |CASE =|.
    CREATE OBJECT t468.
    t468->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t468->sval = t469.
    DATA t471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t148 IS BOUND.
      DATA t473 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t474 TYPE REF TO object.
      t474 = t148.
      TRY.
          t471 ?= t474.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t471 IS NOT BOUND.
        TRY.
            t473 ?= t148.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t473 IS BOUND.
          t471 = t473->source( ).
        ENDIF.
        IF t471 IS NOT BOUND.
          CREATE OBJECT t471.
          t471->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t471->oval = t148.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t476 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t476.
    DATA t477 TYPE REF TO zif_lnt_statement_runnable.
    t477 = zcl_lnt_st_combi_module=>seq( i_first = t468 i_second = t471 i_rest = t476 ).
    t466 = t477.
    IF t466 IS BOUND.
      DATA t481 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t482 TYPE REF TO object.
      t482 = t466.
      TRY.
          t465 ?= t482.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t465 IS NOT BOUND.
        TRY.
            t481 ?= t466.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t481 IS BOUND.
          t465 = t481->source( ).
        ENDIF.
        IF t465 IS NOT BOUND.
          CREATE OBJECT t465.
          t465->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t465->oval = t466.
        ENDIF.
      ENDIF.
    ENDIF.
    t462->load( ).
    APPEND t465 TO t462->items.
    t462->save( ).
    DATA t484 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t485 TYPE REF TO zif_lnt_statement_runnable.
    DATA t487 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t488) = |EXPONENT|.
    CREATE OBJECT t487.
    t487->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t487->sval = t488.
    DATA t490 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t491) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t491 IS BOUND.
      CREATE OBJECT t490.
      t490->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t490->cval = t491.
    ENDIF.
    DATA t493 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t493.
    DATA t494 TYPE REF TO zif_lnt_statement_runnable.
    t494 = zcl_lnt_st_combi_module=>seq( i_first = t487 i_second = t490 i_rest = t493 ).
    t485 = t494.
    IF t485 IS BOUND.
      DATA t498 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t499 TYPE REF TO object.
      t499 = t485.
      TRY.
          t484 ?= t499.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t484 IS NOT BOUND.
        TRY.
            t498 ?= t485.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t498 IS BOUND.
          t484 = t498->source( ).
        ENDIF.
        IF t484 IS NOT BOUND.
          CREATE OBJECT t484.
          t484->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t484->oval = t485.
        ENDIF.
      ENDIF.
    ENDIF.
    t462->load( ).
    APPEND t484 TO t462->items.
    t462->save( ).
    DATA t501 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t502 TYPE REF TO zif_lnt_statement_runnable.
    DATA t504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t505) = |ZERO =|.
    CREATE OBJECT t504.
    t504->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t504->sval = t505.
    DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t171 IS BOUND.
      DATA t509 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t510 TYPE REF TO object.
      t510 = t171.
      TRY.
          t507 ?= t510.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t507 IS NOT BOUND.
        TRY.
            t509 ?= t171.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t509 IS BOUND.
          t507 = t509->source( ).
        ENDIF.
        IF t507 IS NOT BOUND.
          CREATE OBJECT t507.
          t507->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t507->oval = t171.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t512 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t512.
    DATA t513 TYPE REF TO zif_lnt_statement_runnable.
    t513 = zcl_lnt_st_combi_module=>seq( i_first = t504 i_second = t507 i_rest = t512 ).
    t502 = t513.
    IF t502 IS BOUND.
      DATA t517 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t518 TYPE REF TO object.
      t518 = t502.
      TRY.
          t501 ?= t518.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t501 IS NOT BOUND.
        TRY.
            t517 ?= t502.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t517 IS BOUND.
          t501 = t517->source( ).
        ENDIF.
        IF t501 IS NOT BOUND.
          CREATE OBJECT t501.
          t501->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t501->oval = t502.
        ENDIF.
      ENDIF.
    ENDIF.
    t462->load( ).
    APPEND t501 TO t462->items.
    t462->save( ).
    DATA t520 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t380 IS BOUND.
      DATA t522 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t523 TYPE REF TO object.
      t523 = t380.
      TRY.
          t520 ?= t523.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t520 IS NOT BOUND.
        TRY.
            t522 ?= t380.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t522 IS BOUND.
          t520 = t522->source( ).
        ENDIF.
        IF t520 IS NOT BOUND.
          CREATE OBJECT t520.
          t520->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t520->oval = t380.
        ENDIF.
      ENDIF.
    ENDIF.
    t462->load( ).
    APPEND t520 TO t462->items.
    t462->save( ).
    DATA t525 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t526 TYPE REF TO zif_lnt_statement_runnable.
    DATA t528 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t529) = |STYLE =|.
    CREATE OBJECT t528.
    t528->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t528->sval = t529.
    DATA t531 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t188 IS BOUND.
      DATA t533 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t534 TYPE REF TO object.
      t534 = t188.
      TRY.
          t531 ?= t534.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t531 IS NOT BOUND.
        TRY.
            t533 ?= t188.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t533 IS BOUND.
          t531 = t533->source( ).
        ENDIF.
        IF t531 IS NOT BOUND.
          CREATE OBJECT t531.
          t531->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t531->oval = t188.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t536 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t536.
    DATA t537 TYPE REF TO zif_lnt_statement_runnable.
    t537 = zcl_lnt_st_combi_module=>seq( i_first = t528 i_second = t531 i_rest = t536 ).
    t526 = t537.
    IF t526 IS BOUND.
      DATA t541 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t542 TYPE REF TO object.
      t542 = t526.
      TRY.
          t525 ?= t542.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t525 IS NOT BOUND.
        TRY.
            t541 ?= t526.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t541 IS BOUND.
          t525 = t541->source( ).
        ENDIF.
        IF t525 IS NOT BOUND.
          CREATE OBJECT t525.
          t525->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t525->oval = t526.
        ENDIF.
      ENDIF.
    ENDIF.
    t462->load( ).
    APPEND t525 TO t462->items.
    t462->save( ).
    DATA t544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t545 TYPE REF TO zif_lnt_statement_runnable.
    DATA t547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t548) = |CURRENCY =|.
    CREATE OBJECT t547.
    t547->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t547->sval = t548.
    DATA t550 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t551) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t551 IS BOUND.
      CREATE OBJECT t550.
      t550->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t550->cval = t551.
    ENDIF.
    DATA t553 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t553.
    DATA t554 TYPE REF TO zif_lnt_statement_runnable.
    t554 = zcl_lnt_st_combi_module=>seq( i_first = t547 i_second = t550 i_rest = t553 ).
    t545 = t554.
    IF t545 IS BOUND.
      DATA t558 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t559 TYPE REF TO object.
      t559 = t545.
      TRY.
          t544 ?= t559.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t544 IS NOT BOUND.
        TRY.
            t558 ?= t545.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t558 IS BOUND.
          t544 = t558->source( ).
        ENDIF.
        IF t544 IS NOT BOUND.
          CREATE OBJECT t544.
          t544->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t544->oval = t545.
        ENDIF.
      ENDIF.
    ENDIF.
    t462->load( ).
    APPEND t544 TO t462->items.
    t462->save( ).
    DATA t561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t562 TYPE REF TO zif_lnt_statement_runnable.
    DATA t564 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t310 IS BOUND.
      DATA t566 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t567 TYPE REF TO object.
      t567 = t310.
      TRY.
          t564 ?= t567.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t564 IS NOT BOUND.
        TRY.
            t566 ?= t310.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t566 IS BOUND.
          t564 = t566->source( ).
        ENDIF.
        IF t564 IS NOT BOUND.
          CREATE OBJECT t564.
          t564->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t564->oval = t310.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t569 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t294 IS BOUND.
      DATA t571 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t572 TYPE REF TO object.
      t572 = t294.
      TRY.
          t569 ?= t572.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t569 IS NOT BOUND.
        TRY.
            t571 ?= t294.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t571 IS BOUND.
          t569 = t571->source( ).
        ENDIF.
        IF t569 IS NOT BOUND.
          CREATE OBJECT t569.
          t569->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t569->oval = t294.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t573 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t574 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t574.
    t573 = t574.
    DATA t576 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t326 IS BOUND.
      DATA t578 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t579 TYPE REF TO object.
      t579 = t326.
      TRY.
          t576 ?= t579.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t576 IS NOT BOUND.
        TRY.
            t578 ?= t326.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t578 IS BOUND.
          t576 = t578->source( ).
        ENDIF.
        IF t576 IS NOT BOUND.
          CREATE OBJECT t576.
          t576->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t576->oval = t326.
        ENDIF.
      ENDIF.
    ENDIF.
    t573->load( ).
    APPEND t576 TO t573->items.
    t573->save( ).
    DATA t581 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t220 IS BOUND.
      DATA t583 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t584 TYPE REF TO object.
      t584 = t220.
      TRY.
          t581 ?= t584.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t581 IS NOT BOUND.
        TRY.
            t583 ?= t220.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t583 IS BOUND.
          t581 = t583->source( ).
        ENDIF.
        IF t581 IS NOT BOUND.
          CREATE OBJECT t581.
          t581->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t581->oval = t220.
        ENDIF.
      ENDIF.
    ENDIF.
    t573->load( ).
    APPEND t581 TO t573->items.
    t573->save( ).
    DATA t586 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t280 IS BOUND.
      DATA t588 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t589 TYPE REF TO object.
      t589 = t280.
      TRY.
          t586 ?= t589.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t586 IS NOT BOUND.
        TRY.
            t588 ?= t280.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t588 IS BOUND.
          t586 = t588->source( ).
        ENDIF.
        IF t586 IS NOT BOUND.
          CREATE OBJECT t586.
          t586->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t586->oval = t280.
        ENDIF.
      ENDIF.
    ENDIF.
    t573->load( ).
    APPEND t586 TO t573->items.
    t573->save( ).
    DATA t591 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t340 IS BOUND.
      DATA t593 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t594 TYPE REF TO object.
      t594 = t340.
      TRY.
          t591 ?= t594.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t591 IS NOT BOUND.
        TRY.
            t593 ?= t340.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t593 IS BOUND.
          t591 = t593->source( ).
        ENDIF.
        IF t591 IS NOT BOUND.
          CREATE OBJECT t591.
          t591->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t591->oval = t340.
        ENDIF.
      ENDIF.
    ENDIF.
    t573->load( ).
    APPEND t591 TO t573->items.
    t573->save( ).
    DATA t596 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t234 IS BOUND.
      DATA t598 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t599 TYPE REF TO object.
      t599 = t234.
      TRY.
          t596 ?= t599.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t596 IS NOT BOUND.
        TRY.
            t598 ?= t234.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t598 IS BOUND.
          t596 = t598->source( ).
        ENDIF.
        IF t596 IS NOT BOUND.
          CREATE OBJECT t596.
          t596->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t596->oval = t234.
        ENDIF.
      ENDIF.
    ENDIF.
    t573->load( ).
    APPEND t596 TO t573->items.
    t573->save( ).
    DATA t601 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t408 IS BOUND.
      DATA t603 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t604 TYPE REF TO object.
      t604 = t408.
      TRY.
          t601 ?= t604.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t601 IS NOT BOUND.
        TRY.
            t603 ?= t408.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t603 IS BOUND.
          t601 = t603->source( ).
        ENDIF.
        IF t601 IS NOT BOUND.
          CREATE OBJECT t601.
          t601->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t601->oval = t408.
        ENDIF.
      ENDIF.
    ENDIF.
    t573->load( ).
    APPEND t601 TO t573->items.
    t573->save( ).
    DATA t605 TYPE REF TO zif_lnt_statement_runnable.
    t605 = zcl_lnt_st_combi_module=>per( i_first = t564 i_second = t569 i_rest = t573 ).
    t562 = t605.
    IF t562 IS BOUND.
      DATA t609 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t610 TYPE REF TO object.
      t610 = t562.
      TRY.
          t561 ?= t610.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t561 IS NOT BOUND.
        TRY.
            t609 ?= t562.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t609 IS BOUND.
          t561 = t609->source( ).
        ENDIF.
        IF t561 IS NOT BOUND.
          CREATE OBJECT t561.
          t561->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t561->oval = t562.
        ENDIF.
      ENDIF.
    ENDIF.
    t462->load( ).
    APPEND t561 TO t462->items.
    t462->save( ).
    DATA t612 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t613 TYPE REF TO zif_lnt_statement_runnable.
    DATA t615 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t250 IS BOUND.
      DATA t617 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t618 TYPE REF TO object.
      t618 = t250.
      TRY.
          t615 ?= t618.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t615 IS NOT BOUND.
        TRY.
            t617 ?= t250.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t617 IS BOUND.
          t615 = t617->source( ).
        ENDIF.
        IF t615 IS NOT BOUND.
          CREATE OBJECT t615.
          t615->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t615->oval = t250.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t620 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t264 IS BOUND.
      DATA t622 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t623 TYPE REF TO object.
      t623 = t264.
      TRY.
          t620 ?= t623.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t620 IS NOT BOUND.
        TRY.
            t622 ?= t264.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t622 IS BOUND.
          t620 = t622->source( ).
        ENDIF.
        IF t620 IS NOT BOUND.
          CREATE OBJECT t620.
          t620->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t620->oval = t264.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t625 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t625.
    DATA t626 TYPE REF TO zif_lnt_statement_runnable.
    t626 = zcl_lnt_st_combi_module=>per( i_first = t615 i_second = t620 i_rest = t625 ).
    t613 = t626.
    IF t613 IS BOUND.
      DATA t630 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t631 TYPE REF TO object.
      t631 = t613.
      TRY.
          t612 ?= t631.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t612 IS NOT BOUND.
        TRY.
            t630 ?= t613.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t630 IS BOUND.
          t612 = t630->source( ).
        ENDIF.
        IF t612 IS NOT BOUND.
          CREATE OBJECT t612.
          t612->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t612->oval = t613.
        ENDIF.
      ENDIF.
    ENDIF.
    t462->load( ).
    APPEND t612 TO t462->items.
    t462->save( ).
    DATA t632 TYPE REF TO zif_lnt_statement_runnable.
    t632 = zcl_lnt_st_combi_module=>alt_prio( i_first = t425 i_second = t444 i_rest = t462 ).
    result = t632.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d347_94341124f92e.
  ENDMETHOD.
ENDCLASS.
