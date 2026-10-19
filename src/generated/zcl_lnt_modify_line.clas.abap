* TS: src/abap/2_statements/statements/modify_line.ts:7:1 ModifyLine
CLASS zcl_lnt_modify_line DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_modify_line IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |ON|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = |OFF|.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t1 = zcl_lnt_st_combi_module=>alt( i_first = t4 i_second = t7 i_rest = t10 ).
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = |=|.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
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
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t35.
    t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t35->sval = |INVERSE|.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t38.
    t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t38->sval = |INPUT|.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t40.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t43.
    t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t43->sval = |COLOR|.
    t40->load( ).
    APPEND t43 TO t40->items.
    t40->save( ).
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t46.
    t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t46->sval = |HOTSPOT|.
    t40->load( ).
    APPEND t46 TO t40->items.
    t40->save( ).
    t33 = zcl_lnt_st_combi_module=>alt( i_first = t35 i_second = t38 i_rest = t40 ).
    IF t33 IS BOUND.
      DATA t52 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t53 TYPE REF TO object.
      t53 = t33.
      TRY.
          t32 ?= t53.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t32 IS NOT BOUND.
        TRY.
            t52 ?= t33.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t52 IS BOUND.
          t32 = t52->source( ).
        ENDIF.
        IF t32 IS NOT BOUND.
          CREATE OBJECT t32.
          t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t32->oval = t33.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t56 TYPE REF TO zif_lnt_statement_runnable.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t62 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t63 TYPE REF TO object.
      t63 = t15.
      TRY.
          t60 ?= t63.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t60 IS NOT BOUND.
        TRY.
            t62 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t62 IS BOUND.
          t60 = t62->source( ).
        ENDIF.
        IF t60 IS NOT BOUND.
          CREATE OBJECT t60.
          t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t60->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t67 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t68 TYPE REF TO object.
      t68 = t1.
      TRY.
          t65 ?= t68.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t65 IS NOT BOUND.
        TRY.
            t67 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t67 IS BOUND.
          t65 = t67->source( ).
        ENDIF.
        IF t65 IS NOT BOUND.
          CREATE OBJECT t65.
          t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t65->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t70.
    t58 = zcl_lnt_st_combi_module=>alt( i_first = t60 i_second = t65 i_rest = t70 ).
    IF t58 IS BOUND.
      DATA t75 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t76 TYPE REF TO object.
      t76 = t58.
      TRY.
          t57 ?= t76.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t57 IS NOT BOUND.
        TRY.
            t75 ?= t58.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t75 IS BOUND.
          t57 = t75->source( ).
        ENDIF.
        IF t57 IS NOT BOUND.
          CREATE OBJECT t57.
          t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t57->oval = t58.
        ENDIF.
      ENDIF.
    ENDIF.
    t56 = zcl_lnt_st_combi_module=>opt( i_first = t57 ).
    IF t56 IS BOUND.
      DATA t77 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t78 TYPE REF TO object.
      t78 = t56.
      TRY.
          t55 ?= t78.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t55 IS NOT BOUND.
        TRY.
            t77 ?= t56.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t77 IS BOUND.
          t55 = t77->source( ).
        ENDIF.
        IF t55 IS NOT BOUND.
          CREATE OBJECT t55.
          t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t55->oval = t56.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t80.
    t29 = zcl_lnt_st_combi_module=>seq( i_first = t32 i_second = t55 i_rest = t80 ).
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t88.
    t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t88->sval = |FROM|.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t92) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t92 IS BOUND.
      CREATE OBJECT t91.
      t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t91->cval = t92.
    ENDIF.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t94.
    t85 = zcl_lnt_st_combi_module=>seq( i_first = t88 i_second = t91 i_rest = t94 ).
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t102.
    t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t102->sval = |FIELD VALUE|.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t106 TYPE REF TO zif_lnt_statement_runnable.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t111) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t111 IS BOUND.
      CREATE OBJECT t110.
      t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t110->cval = t111.
    ENDIF.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t114 TYPE REF TO zif_lnt_statement_runnable.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t85 IS BOUND.
      DATA t117 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t118 TYPE REF TO object.
      t118 = t85.
      TRY.
          t115 ?= t118.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t115 IS NOT BOUND.
        TRY.
            t117 ?= t85.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t117 IS BOUND.
          t115 = t117->source( ).
        ENDIF.
        IF t115 IS NOT BOUND.
          CREATE OBJECT t115.
          t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t115->oval = t85.
        ENDIF.
      ENDIF.
    ENDIF.
    t114 = zcl_lnt_st_combi_module=>opt_prio( i_first = t115 ).
    IF t114 IS BOUND.
      DATA t119 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t120 TYPE REF TO object.
      t120 = t114.
      TRY.
          t113 ?= t120.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t113 IS NOT BOUND.
        TRY.
            t119 ?= t114.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t119 IS BOUND.
          t113 = t119->source( ).
        ENDIF.
        IF t113 IS NOT BOUND.
          CREATE OBJECT t113.
          t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t113->oval = t114.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t122.
    t108 = zcl_lnt_st_combi_module=>seq( i_first = t110 i_second = t113 i_rest = t122 ).
    IF t108 IS BOUND.
      DATA t127 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t128 TYPE REF TO object.
      t128 = t108.
      TRY.
          t107 ?= t128.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t107 IS NOT BOUND.
        TRY.
            t127 ?= t108.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t127 IS BOUND.
          t107 = t127->source( ).
        ENDIF.
        IF t107 IS NOT BOUND.
          CREATE OBJECT t107.
          t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t107->oval = t108.
        ENDIF.
      ENDIF.
    ENDIF.
    t106 = zcl_lnt_st_combi_module=>plus( i_first = t107 ).
    IF t106 IS BOUND.
      DATA t129 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t130 TYPE REF TO object.
      t130 = t106.
      TRY.
          t105 ?= t130.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t105 IS NOT BOUND.
        TRY.
            t129 ?= t106.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t129 IS BOUND.
          t105 = t129->source( ).
        ENDIF.
        IF t105 IS NOT BOUND.
          CREATE OBJECT t105.
          t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t105->oval = t106.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t132.
    t99 = zcl_lnt_st_combi_module=>seq( i_first = t102 i_second = t105 i_rest = t132 ).
    DATA t137 TYPE REF TO zif_lnt_statement_runnable.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t140.
    t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t140->sval = |FIELD FORMAT|.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t144) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t144 IS BOUND.
      CREATE OBJECT t143.
      t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t143->cval = t144.
    ENDIF.
    DATA t145 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t145.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t149 TYPE REF TO zif_lnt_statement_runnable.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      DATA t152 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t153 TYPE REF TO object.
      t153 = t29.
      TRY.
          t150 ?= t153.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t150 IS NOT BOUND.
        TRY.
            t152 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t152 IS BOUND.
          t150 = t152->source( ).
        ENDIF.
        IF t150 IS NOT BOUND.
          CREATE OBJECT t150.
          t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t150->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    t149 = zcl_lnt_st_combi_module=>opt( i_first = t150 ).
    IF t149 IS BOUND.
      DATA t154 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t155 TYPE REF TO object.
      t155 = t149.
      TRY.
          t148 ?= t155.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t148 IS NOT BOUND.
        TRY.
            t154 ?= t149.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t154 IS BOUND.
          t148 = t154->source( ).
        ENDIF.
        IF t148 IS NOT BOUND.
          CREATE OBJECT t148.
          t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t148->oval = t149.
        ENDIF.
      ENDIF.
    ENDIF.
    t145->load( ).
    APPEND t148 TO t145->items.
    t145->save( ).
    t137 = zcl_lnt_st_combi_module=>seq( i_first = t140 i_second = t143 i_rest = t145 ).
    DATA t160 TYPE REF TO zif_lnt_statement_runnable.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t163.
    t163->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t163->sval = |LINE VALUE FROM|.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t167) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t167 IS BOUND.
      CREATE OBJECT t166.
      t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t166->cval = t167.
    ENDIF.
    DATA t169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t169.
    t160 = zcl_lnt_st_combi_module=>seq( i_first = t163 i_second = t166 i_rest = t169 ).
    DATA t174 TYPE REF TO zif_lnt_statement_runnable.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t177.
    t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t177->sval = |INDEX|.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t181) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t181 IS BOUND.
      CREATE OBJECT t180.
      t180->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t180->cval = t181.
    ENDIF.
    DATA t183 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t183.
    t174 = zcl_lnt_st_combi_module=>seq( i_first = t177 i_second = t180 i_rest = t183 ).
    DATA t188 TYPE REF TO zif_lnt_statement_runnable.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t191.
    t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t191->sval = |OF PAGE|.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t195) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t195 IS BOUND.
      CREATE OBJECT t194.
      t194->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t194->cval = t195.
    ENDIF.
    DATA t197 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t197.
    t188 = zcl_lnt_st_combi_module=>seq( i_first = t191 i_second = t194 i_rest = t197 ).
    DATA t202 TYPE REF TO zif_lnt_statement_runnable.
    t202 = zcl_lnt_st_combi_module=>str( i_s = |OF CURRENT PAGE| ).
    DATA t205 TYPE REF TO zif_lnt_statement_runnable.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t208.
    t208->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t208->sval = |INTENSIFIED|.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t213 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t214 TYPE REF TO object.
      t214 = t1.
      TRY.
          t211 ?= t214.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t211 IS NOT BOUND.
        TRY.
            t213 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t213 IS BOUND.
          t211 = t213->source( ).
        ENDIF.
        IF t211 IS NOT BOUND.
          CREATE OBJECT t211.
          t211->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t211->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t216 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t216.
    t205 = zcl_lnt_st_combi_module=>seq( i_first = t208 i_second = t211 i_rest = t216 ).
    DATA t221 TYPE REF TO zif_lnt_statement_runnable.
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t224.
    t224->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t224->sval = |INTENSIFIED|.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t228 TYPE REF TO zif_lnt_statement_runnable.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t231 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t232 TYPE REF TO object.
      t232 = t1.
      TRY.
          t229 ?= t232.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t229 IS NOT BOUND.
        TRY.
            t231 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t231 IS BOUND.
          t229 = t231->source( ).
        ENDIF.
        IF t229 IS NOT BOUND.
          CREATE OBJECT t229.
          t229->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t229->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t228 = zcl_lnt_st_combi_module=>opt( i_first = t229 ).
    IF t228 IS BOUND.
      DATA t233 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t234 TYPE REF TO object.
      t234 = t228.
      TRY.
          t227 ?= t234.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t227 IS NOT BOUND.
        TRY.
            t233 ?= t228.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t233 IS BOUND.
          t227 = t233->source( ).
        ENDIF.
        IF t227 IS NOT BOUND.
          CREATE OBJECT t227.
          t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t227->oval = t228.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t236 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t236.
    t221 = zcl_lnt_st_combi_module=>seq( i_first = t224 i_second = t227 i_rest = t236 ).
    DATA t241 TYPE REF TO zif_lnt_statement_runnable.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t244.
    t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t244->sval = |LINE FORMAT|.
    DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t248 TYPE REF TO zif_lnt_statement_runnable.
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t250.
    t250->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t250->sval = |INPUT OFF|.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t253.
    t253->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t253->sval = |INVERSE|.
    DATA t255 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t255.
    DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t258.
    t258->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t258->sval = |RESET|.
    t255->load( ).
    APPEND t258 TO t255->items.
    t255->save( ).
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t221 IS BOUND.
      DATA t263 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t264 TYPE REF TO object.
      t264 = t221.
      TRY.
          t261 ?= t264.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t261 IS NOT BOUND.
        TRY.
            t263 ?= t221.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t263 IS BOUND.
          t261 = t263->source( ).
        ENDIF.
        IF t261 IS NOT BOUND.
          CREATE OBJECT t261.
          t261->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t261->oval = t221.
        ENDIF.
      ENDIF.
    ENDIF.
    t255->load( ).
    APPEND t261 TO t255->items.
    t255->save( ).
    DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t267) = zlnt_runtime_desc_78196487750d=>zlnt_member_d119_f7714013c01c.
    IF t267 IS BOUND.
      CREATE OBJECT t266.
      t266->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t266->cval = t267.
    ENDIF.
    t255->load( ).
    APPEND t266 TO t255->items.
    t255->save( ).
    t248 = zcl_lnt_st_combi_module=>per( i_first = t250 i_second = t253 i_rest = t255 ).
    IF t248 IS BOUND.
      DATA t272 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t273 TYPE REF TO object.
      t273 = t248.
      TRY.
          t247 ?= t273.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t247 IS NOT BOUND.
        TRY.
            t272 ?= t248.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t272 IS BOUND.
          t247 = t272->source( ).
        ENDIF.
        IF t247 IS NOT BOUND.
          CREATE OBJECT t247.
          t247->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t247->oval = t248.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t275 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t275.
    t241 = zcl_lnt_st_combi_module=>seq( i_first = t244 i_second = t247 i_rest = t275 ).
    DATA t280 TYPE REF TO zif_lnt_statement_runnable.
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t174 IS BOUND.
      DATA t285 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t286 TYPE REF TO object.
      t286 = t174.
      TRY.
          t283 ?= t286.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t283 IS NOT BOUND.
        TRY.
            t285 ?= t174.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t285 IS BOUND.
          t283 = t285->source( ).
        ENDIF.
        IF t283 IS NOT BOUND.
          CREATE OBJECT t283.
          t283->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t283->oval = t174.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t99 IS BOUND.
      DATA t290 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t291 TYPE REF TO object.
      t291 = t99.
      TRY.
          t288 ?= t291.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t288 IS NOT BOUND.
        TRY.
            t290 ?= t99.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t290 IS BOUND.
          t288 = t290->source( ).
        ENDIF.
        IF t288 IS NOT BOUND.
          CREATE OBJECT t288.
          t288->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t288->oval = t99.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t292 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t292.
    DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t137 IS BOUND.
      DATA t297 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t298 TYPE REF TO object.
      t298 = t137.
      TRY.
          t295 ?= t298.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t295 IS NOT BOUND.
        TRY.
            t297 ?= t137.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t297 IS BOUND.
          t295 = t297->source( ).
        ENDIF.
        IF t295 IS NOT BOUND.
          CREATE OBJECT t295.
          t295->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t295->oval = t137.
        ENDIF.
      ENDIF.
    ENDIF.
    t292->load( ).
    APPEND t295 TO t292->items.
    t292->save( ).
    DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t188 IS BOUND.
      DATA t302 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t303 TYPE REF TO object.
      t303 = t188.
      TRY.
          t300 ?= t303.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t300 IS NOT BOUND.
        TRY.
            t302 ?= t188.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t302 IS BOUND.
          t300 = t302->source( ).
        ENDIF.
        IF t300 IS NOT BOUND.
          CREATE OBJECT t300.
          t300->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t300->oval = t188.
        ENDIF.
      ENDIF.
    ENDIF.
    t292->load( ).
    APPEND t300 TO t292->items.
    t292->save( ).
    DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t241 IS BOUND.
      DATA t307 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t308 TYPE REF TO object.
      t308 = t241.
      TRY.
          t305 ?= t308.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t305 IS NOT BOUND.
        TRY.
            t307 ?= t241.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t307 IS BOUND.
          t305 = t307->source( ).
        ENDIF.
        IF t305 IS NOT BOUND.
          CREATE OBJECT t305.
          t305->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t305->oval = t241.
        ENDIF.
      ENDIF.
    ENDIF.
    t292->load( ).
    APPEND t305 TO t292->items.
    t292->save( ).
    DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t160 IS BOUND.
      DATA t312 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t313 TYPE REF TO object.
      t313 = t160.
      TRY.
          t310 ?= t313.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t310 IS NOT BOUND.
        TRY.
            t312 ?= t160.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t312 IS BOUND.
          t310 = t312->source( ).
        ENDIF.
        IF t310 IS NOT BOUND.
          CREATE OBJECT t310.
          t310->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t310->oval = t160.
        ENDIF.
      ENDIF.
    ENDIF.
    t292->load( ).
    APPEND t310 TO t292->items.
    t292->save( ).
    DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t202 IS BOUND.
      DATA t317 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t318 TYPE REF TO object.
      t318 = t202.
      TRY.
          t315 ?= t318.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t315 IS NOT BOUND.
        TRY.
            t317 ?= t202.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t317 IS BOUND.
          t315 = t317->source( ).
        ENDIF.
        IF t315 IS NOT BOUND.
          CREATE OBJECT t315.
          t315->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t315->oval = t202.
        ENDIF.
      ENDIF.
    ENDIF.
    t292->load( ).
    APPEND t315 TO t292->items.
    t292->save( ).
    DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t205 IS BOUND.
      DATA t322 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t323 TYPE REF TO object.
      t323 = t205.
      TRY.
          t320 ?= t323.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t320 IS NOT BOUND.
        TRY.
            t322 ?= t205.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t322 IS BOUND.
          t320 = t322->source( ).
        ENDIF.
        IF t320 IS NOT BOUND.
          CREATE OBJECT t320.
          t320->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t320->oval = t205.
        ENDIF.
      ENDIF.
    ENDIF.
    t292->load( ).
    APPEND t320 TO t292->items.
    t292->save( ).
    DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t326) = zlnt_runtime_desc_78196487750d=>zlnt_member_d119_f7714013c01c.
    IF t326 IS BOUND.
      CREATE OBJECT t325.
      t325->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t325->cval = t326.
    ENDIF.
    t292->load( ).
    APPEND t325 TO t292->items.
    t292->save( ).
    t280 = zcl_lnt_st_combi_module=>per( i_first = t283 i_second = t288 i_rest = t292 ).
    DATA t331 TYPE REF TO zif_lnt_statement_runnable.
    DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t334.
    t334->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t334->sval = |MODIFY|.
    DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t338 TYPE REF TO zif_lnt_statement_runnable.
    DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t340.
    t340->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t340->sval = |CURRENT LINE|.
    DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t344 TYPE REF TO zif_lnt_statement_runnable.
    DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t346.
    t346->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t346->sval = |LINE|.
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t350) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t350 IS BOUND.
      CREATE OBJECT t349.
      t349->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t349->cval = t350.
    ENDIF.
    DATA t352 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t352.
    t344 = zcl_lnt_st_combi_module=>seq( i_first = t346 i_second = t349 i_rest = t352 ).
    IF t344 IS BOUND.
      DATA t357 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t358 TYPE REF TO object.
      t358 = t344.
      TRY.
          t343 ?= t358.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t343 IS NOT BOUND.
        TRY.
            t357 ?= t344.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t357 IS BOUND.
          t343 = t357->source( ).
        ENDIF.
        IF t343 IS NOT BOUND.
          CREATE OBJECT t343.
          t343->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t343->oval = t344.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t360 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t360.
    t338 = zcl_lnt_st_combi_module=>alt_prio( i_first = t340 i_second = t343 i_rest = t360 ).
    IF t338 IS BOUND.
      DATA t365 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t366 TYPE REF TO object.
      t366 = t338.
      TRY.
          t337 ?= t366.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t337 IS NOT BOUND.
        TRY.
            t365 ?= t338.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t365 IS BOUND.
          t337 = t365->source( ).
        ENDIF.
        IF t337 IS NOT BOUND.
          CREATE OBJECT t337.
          t337->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t337->oval = t338.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t367 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t367.
    DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t371 TYPE REF TO zif_lnt_statement_runnable.
    DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t280 IS BOUND.
      DATA t374 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t375 TYPE REF TO object.
      t375 = t280.
      TRY.
          t372 ?= t375.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t372 IS NOT BOUND.
        TRY.
            t374 ?= t280.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t374 IS BOUND.
          t372 = t374->source( ).
        ENDIF.
        IF t372 IS NOT BOUND.
          CREATE OBJECT t372.
          t372->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t372->oval = t280.
        ENDIF.
      ENDIF.
    ENDIF.
    t371 = zcl_lnt_st_combi_module=>opt( i_first = t372 ).
    IF t371 IS BOUND.
      DATA t376 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t377 TYPE REF TO object.
      t377 = t371.
      TRY.
          t370 ?= t377.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t370 IS NOT BOUND.
        TRY.
            t376 ?= t371.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t376 IS BOUND.
          t370 = t376->source( ).
        ENDIF.
        IF t370 IS NOT BOUND.
          CREATE OBJECT t370.
          t370->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t370->oval = t371.
        ENDIF.
      ENDIF.
    ENDIF.
    t367->load( ).
    APPEND t370 TO t367->items.
    t367->save( ).
    t331 = zcl_lnt_st_combi_module=>seq( i_first = t334 i_second = t337 i_rest = t367 ).
    DATA t384 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t331 IS BOUND.
      DATA t386 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t387 TYPE REF TO object.
      t387 = t331.
      TRY.
          t384 ?= t387.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t384 IS NOT BOUND.
        TRY.
            t386 ?= t331.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t386 IS BOUND.
          t384 = t386->source( ).
        ENDIF.
        IF t384 IS NOT BOUND.
          CREATE OBJECT t384.
          t384->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t384->oval = t331.
        ENDIF.
      ENDIF.
    ENDIF.
    result = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |Cloud| i_first = t384 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d558_20a8fd33a9a2.
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
