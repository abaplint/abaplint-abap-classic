* TS: src/abap/2_statements/statements/modify_entities.ts:7:1 ModifyEntities
CLASS zcl_lnt_st_modify_entities DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_modify_entities IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |WITH|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
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
    t18->sval = |FIELDS (|.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d173_fd387289a527.
    IF t24 IS BOUND.
      CREATE OBJECT t23.
      t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t23->cval = t24.
    ENDIF.
    t22 = zcl_lnt_st_combi_module=>plus( i_first = t23 ).
    IF t22 IS BOUND.
      DATA t25 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t26 TYPE REF TO object.
      t26 = t22.
      TRY.
          t21 ?= t26.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t21 IS NOT BOUND.
        TRY.
            t25 ?= t22.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t25 IS BOUND.
          t21 = t25->source( ).
        ENDIF.
        IF t21 IS NOT BOUND.
          CREATE OBJECT t21.
          t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t21->oval = t22.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t27.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t30.
    t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t30->sval = |)|.
    t27->load( ).
    APPEND t30 TO t27->items.
    t27->save( ).
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t35 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t36 TYPE REF TO object.
      t36 = t1.
      TRY.
          t33 ?= t36.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t33 IS NOT BOUND.
        TRY.
            t35 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t35 IS BOUND.
          t33 = t35->source( ).
        ENDIF.
        IF t33 IS NOT BOUND.
          CREATE OBJECT t33.
          t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t33->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t27->load( ).
    APPEND t33 TO t27->items.
    t27->save( ).
    t15 = zcl_lnt_st_combi_module=>seq( i_first = t18 i_second = t21 i_rest = t27 ).
    DATA t41 TYPE REF TO zif_lnt_statement_runnable.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t44.
    t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t44->sval = |BY|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t48) = zlnt_runtime_desc_78196487750d=>zlnt_member_d161_a1a721da0257.
    IF t48 IS BOUND.
      CREATE OBJECT t47.
      t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t47->cval = t48.
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t50.
    t41 = zcl_lnt_st_combi_module=>seq( i_first = t44 i_second = t47 i_rest = t50 ).
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t58.
    t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t58->sval = |RELATING TO|.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t62) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    IF t62 IS BOUND.
      CREATE OBJECT t61.
      t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t61->cval = t62.
    ENDIF.
    DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t63.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t66.
    t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t66->sval = |BY|.
    t63->load( ).
    APPEND t66 TO t63->items.
    t63->save( ).
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t70) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    IF t70 IS BOUND.
      CREATE OBJECT t69.
      t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t69->cval = t70.
    ENDIF.
    t63->load( ).
    APPEND t69 TO t63->items.
    t63->save( ).
    t55 = zcl_lnt_st_combi_module=>seq( i_first = t58 i_second = t61 i_rest = t63 ).
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t78.
    t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t78->sval = |EXECUTE|.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t82) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    IF t82 IS BOUND.
      CREATE OBJECT t81.
      t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t81->cval = t82.
    ENDIF.
    DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t83.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t86.
    t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t86->sval = |FROM|.
    t83->load( ).
    APPEND t86 TO t83->items.
    t83->save( ).
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t90) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t90 IS BOUND.
      CREATE OBJECT t89.
      t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t89->cval = t90.
    ENDIF.
    t83->load( ).
    APPEND t89 TO t83->items.
    t83->save( ).
    t75 = zcl_lnt_st_combi_module=>seq( i_first = t78 i_second = t81 i_rest = t83 ).
    DATA t95 TYPE REF TO zif_lnt_statement_runnable.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t98.
    t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t98->sval = |CREATE|.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t102 TYPE REF TO zif_lnt_statement_runnable.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t41 IS BOUND.
      DATA t105 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t106 TYPE REF TO object.
      t106 = t41.
      TRY.
          t103 ?= t106.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t103 IS NOT BOUND.
        TRY.
            t105 ?= t41.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t105 IS BOUND.
          t103 = t105->source( ).
        ENDIF.
        IF t103 IS NOT BOUND.
          CREATE OBJECT t103.
          t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t103->oval = t41.
        ENDIF.
      ENDIF.
    ENDIF.
    t102 = zcl_lnt_st_combi_module=>opt( i_first = t103 ).
    IF t102 IS BOUND.
      DATA t107 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t108 TYPE REF TO object.
      t108 = t102.
      TRY.
          t101 ?= t108.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t101 IS NOT BOUND.
        TRY.
            t107 ?= t102.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t107 IS BOUND.
          t101 = t107->source( ).
        ENDIF.
        IF t101 IS NOT BOUND.
          CREATE OBJECT t101.
          t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t101->oval = t102.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t109.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t112.
    t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t112->sval = |FROM|.
    t109->load( ).
    APPEND t112 TO t109->items.
    t109->save( ).
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t116) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t116 IS BOUND.
      CREATE OBJECT t115.
      t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t115->cval = t116.
    ENDIF.
    t109->load( ).
    APPEND t115 TO t109->items.
    t109->save( ).
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t119 TYPE REF TO zif_lnt_statement_runnable.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t55 IS BOUND.
      DATA t122 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t123 TYPE REF TO object.
      t123 = t55.
      TRY.
          t120 ?= t123.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t120 IS NOT BOUND.
        TRY.
            t122 ?= t55.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t122 IS BOUND.
          t120 = t122->source( ).
        ENDIF.
        IF t120 IS NOT BOUND.
          CREATE OBJECT t120.
          t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t120->oval = t55.
        ENDIF.
      ENDIF.
    ENDIF.
    t119 = zcl_lnt_st_combi_module=>opt( i_first = t120 ).
    IF t119 IS BOUND.
      DATA t124 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t125 TYPE REF TO object.
      t125 = t119.
      TRY.
          t118 ?= t125.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t118 IS NOT BOUND.
        TRY.
            t124 ?= t119.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t124 IS BOUND.
          t118 = t124->source( ).
        ENDIF.
        IF t118 IS NOT BOUND.
          CREATE OBJECT t118.
          t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t118->oval = t119.
        ENDIF.
      ENDIF.
    ENDIF.
    t109->load( ).
    APPEND t118 TO t109->items.
    t109->save( ).
    t95 = zcl_lnt_st_combi_module=>seq( i_first = t98 i_second = t101 i_rest = t109 ).
    DATA t130 TYPE REF TO zif_lnt_statement_runnable.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t133.
    t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t133->sval = |UPDATE FROM|.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t137) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t137 IS BOUND.
      CREATE OBJECT t136.
      t136->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t136->cval = t137.
    ENDIF.
    DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t138.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t142 TYPE REF TO zif_lnt_statement_runnable.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t55 IS BOUND.
      DATA t145 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t146 TYPE REF TO object.
      t146 = t55.
      TRY.
          t143 ?= t146.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t143 IS NOT BOUND.
        TRY.
            t145 ?= t55.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t145 IS BOUND.
          t143 = t145->source( ).
        ENDIF.
        IF t143 IS NOT BOUND.
          CREATE OBJECT t143.
          t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t143->oval = t55.
        ENDIF.
      ENDIF.
    ENDIF.
    t142 = zcl_lnt_st_combi_module=>opt( i_first = t143 ).
    IF t142 IS BOUND.
      DATA t147 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t148 TYPE REF TO object.
      t148 = t142.
      TRY.
          t141 ?= t148.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t141 IS NOT BOUND.
        TRY.
            t147 ?= t142.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t147 IS BOUND.
          t141 = t147->source( ).
        ENDIF.
        IF t141 IS NOT BOUND.
          CREATE OBJECT t141.
          t141->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t141->oval = t142.
        ENDIF.
      ENDIF.
    ENDIF.
    t138->load( ).
    APPEND t141 TO t138->items.
    t138->save( ).
    t130 = zcl_lnt_st_combi_module=>seq( i_first = t133 i_second = t136 i_rest = t138 ).
    DATA t153 TYPE REF TO zif_lnt_statement_runnable.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t156.
    t156->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t156->sval = |DELETE FROM|.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t160) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t160 IS BOUND.
      CREATE OBJECT t159.
      t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t159->cval = t160.
    ENDIF.
    DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t162.
    t153 = zcl_lnt_st_combi_module=>seq( i_first = t156 i_second = t159 i_rest = t162 ).
    DATA t167 TYPE REF TO zif_lnt_statement_runnable.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t170.
    t170->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t170->sval = |UPDATE|.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t175 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t176 TYPE REF TO object.
      t176 = t15.
      TRY.
          t173 ?= t176.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t173 IS NOT BOUND.
        TRY.
            t175 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t175 IS BOUND.
          t173 = t175->source( ).
        ENDIF.
        IF t173 IS NOT BOUND.
          CREATE OBJECT t173.
          t173->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t173->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t178 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t178.
    t167 = zcl_lnt_st_combi_module=>seq( i_first = t170 i_second = t173 i_rest = t178 ).
    DATA t183 TYPE REF TO zif_lnt_statement_runnable.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t186.
    t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t186->sval = |UPDATE SET FIELDS WITH|.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t190) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t190 IS BOUND.
      CREATE OBJECT t189.
      t189->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t189->cval = t190.
    ENDIF.
    DATA t192 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t192.
    t183 = zcl_lnt_st_combi_module=>seq( i_first = t186 i_second = t189 i_rest = t192 ).
    DATA t197 TYPE REF TO zif_lnt_statement_runnable.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t183 IS BOUND.
      DATA t202 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t203 TYPE REF TO object.
      t203 = t183.
      TRY.
          t200 ?= t203.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t200 IS NOT BOUND.
        TRY.
            t202 ?= t183.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t202 IS BOUND.
          t200 = t202->source( ).
        ENDIF.
        IF t200 IS NOT BOUND.
          CREATE OBJECT t200.
          t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t200->oval = t183.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t206 TYPE REF TO zif_lnt_statement_runnable.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t208.
    t208->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t208->sval = |CREATE SET FIELDS WITH|.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t212) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t212 IS BOUND.
      CREATE OBJECT t211.
      t211->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t211->cval = t212.
    ENDIF.
    DATA t214 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t214.
    t206 = zcl_lnt_st_combi_module=>seq( i_first = t208 i_second = t211 i_rest = t214 ).
    IF t206 IS BOUND.
      DATA t219 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t220 TYPE REF TO object.
      t220 = t206.
      TRY.
          t205 ?= t220.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t205 IS NOT BOUND.
        TRY.
            t219 ?= t206.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t219 IS BOUND.
          t205 = t219->source( ).
        ENDIF.
        IF t205 IS NOT BOUND.
          CREATE OBJECT t205.
          t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t205->oval = t206.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t221 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t221.
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t167 IS BOUND.
      DATA t226 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t227 TYPE REF TO object.
      t227 = t167.
      TRY.
          t224 ?= t227.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t224 IS NOT BOUND.
        TRY.
            t226 ?= t167.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t226 IS BOUND.
          t224 = t226->source( ).
        ENDIF.
        IF t224 IS NOT BOUND.
          CREATE OBJECT t224.
          t224->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t224->oval = t167.
        ENDIF.
      ENDIF.
    ENDIF.
    t221->load( ).
    APPEND t224 TO t221->items.
    t221->save( ).
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t153 IS BOUND.
      DATA t231 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t232 TYPE REF TO object.
      t232 = t153.
      TRY.
          t229 ?= t232.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t229 IS NOT BOUND.
        TRY.
            t231 ?= t153.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t231 IS BOUND.
          t229 = t231->source( ).
        ENDIF.
        IF t229 IS NOT BOUND.
          CREATE OBJECT t229.
          t229->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t229->oval = t153.
        ENDIF.
      ENDIF.
    ENDIF.
    t221->load( ).
    APPEND t229 TO t221->items.
    t221->save( ).
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t130 IS BOUND.
      DATA t236 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t237 TYPE REF TO object.
      t237 = t130.
      TRY.
          t234 ?= t237.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t234 IS NOT BOUND.
        TRY.
            t236 ?= t130.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t236 IS BOUND.
          t234 = t236->source( ).
        ENDIF.
        IF t234 IS NOT BOUND.
          CREATE OBJECT t234.
          t234->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t234->oval = t130.
        ENDIF.
      ENDIF.
    ENDIF.
    t221->load( ).
    APPEND t234 TO t221->items.
    t221->save( ).
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t95 IS BOUND.
      DATA t241 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t242 TYPE REF TO object.
      t242 = t95.
      TRY.
          t239 ?= t242.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t239 IS NOT BOUND.
        TRY.
            t241 ?= t95.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t241 IS BOUND.
          t239 = t241->source( ).
        ENDIF.
        IF t239 IS NOT BOUND.
          CREATE OBJECT t239.
          t239->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t239->oval = t95.
        ENDIF.
      ENDIF.
    ENDIF.
    t221->load( ).
    APPEND t239 TO t221->items.
    t221->save( ).
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t75 IS BOUND.
      DATA t246 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t247 TYPE REF TO object.
      t247 = t75.
      TRY.
          t244 ?= t247.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t244 IS NOT BOUND.
        TRY.
            t246 ?= t75.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t246 IS BOUND.
          t244 = t246->source( ).
        ENDIF.
        IF t244 IS NOT BOUND.
          CREATE OBJECT t244.
          t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t244->oval = t75.
        ENDIF.
      ENDIF.
    ENDIF.
    t221->load( ).
    APPEND t244 TO t221->items.
    t221->save( ).
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t250 TYPE REF TO zif_lnt_statement_runnable.
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t252.
    t252->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t252->sval = |CREATE|.
    DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t256 TYPE REF TO zif_lnt_statement_runnable.
    DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t41 IS BOUND.
      DATA t259 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t260 TYPE REF TO object.
      t260 = t41.
      TRY.
          t257 ?= t260.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t257 IS NOT BOUND.
        TRY.
            t259 ?= t41.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t259 IS BOUND.
          t257 = t259->source( ).
        ENDIF.
        IF t257 IS NOT BOUND.
          CREATE OBJECT t257.
          t257->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t257->oval = t41.
        ENDIF.
      ENDIF.
    ENDIF.
    t256 = zcl_lnt_st_combi_module=>opt( i_first = t257 ).
    IF t256 IS BOUND.
      DATA t261 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t262 TYPE REF TO object.
      t262 = t256.
      TRY.
          t255 ?= t262.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t255 IS NOT BOUND.
        TRY.
            t261 ?= t256.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t261 IS BOUND.
          t255 = t261->source( ).
        ENDIF.
        IF t255 IS NOT BOUND.
          CREATE OBJECT t255.
          t255->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t255->oval = t256.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t263 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t263.
    DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t267 TYPE REF TO zif_lnt_statement_runnable.
    DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t268.
    t268->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t268->sval = |AUTO FILL CID|.
    t267 = zcl_lnt_st_combi_module=>opt_prio( i_first = t268 ).
    IF t267 IS BOUND.
      DATA t270 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t271 TYPE REF TO object.
      t271 = t267.
      TRY.
          t266 ?= t271.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t266 IS NOT BOUND.
        TRY.
            t270 ?= t267.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t270 IS BOUND.
          t266 = t270->source( ).
        ENDIF.
        IF t266 IS NOT BOUND.
          CREATE OBJECT t266.
          t266->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t266->oval = t267.
        ENDIF.
      ENDIF.
    ENDIF.
    t263->load( ).
    APPEND t266 TO t263->items.
    t263->save( ).
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t274 TYPE REF TO zif_lnt_statement_runnable.
    DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t278 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t279 TYPE REF TO object.
      t279 = t1.
      TRY.
          t276 ?= t279.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t276 IS NOT BOUND.
        TRY.
            t278 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t278 IS BOUND.
          t276 = t278->source( ).
        ENDIF.
        IF t276 IS NOT BOUND.
          CREATE OBJECT t276.
          t276->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t276->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t283 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t284 TYPE REF TO object.
      t284 = t15.
      TRY.
          t281 ?= t284.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t281 IS NOT BOUND.
        TRY.
            t283 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t283 IS BOUND.
          t281 = t283->source( ).
        ENDIF.
        IF t281 IS NOT BOUND.
          CREATE OBJECT t281.
          t281->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t281->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t286 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t286.
    t274 = zcl_lnt_st_combi_module=>alt_prio( i_first = t276 i_second = t281 i_rest = t286 ).
    IF t274 IS BOUND.
      DATA t291 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t292 TYPE REF TO object.
      t292 = t274.
      TRY.
          t273 ?= t292.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t273 IS NOT BOUND.
        TRY.
            t291 ?= t274.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t291 IS BOUND.
          t273 = t291->source( ).
        ENDIF.
        IF t273 IS NOT BOUND.
          CREATE OBJECT t273.
          t273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t273->oval = t274.
        ENDIF.
      ENDIF.
    ENDIF.
    t263->load( ).
    APPEND t273 TO t263->items.
    t263->save( ).
    t250 = zcl_lnt_st_combi_module=>seq( i_first = t252 i_second = t255 i_rest = t263 ).
    IF t250 IS BOUND.
      DATA t297 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t298 TYPE REF TO object.
      t298 = t250.
      TRY.
          t249 ?= t298.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t249 IS NOT BOUND.
        TRY.
            t297 ?= t250.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t297 IS BOUND.
          t249 = t297->source( ).
        ENDIF.
        IF t249 IS NOT BOUND.
          CREATE OBJECT t249.
          t249->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t249->oval = t250.
        ENDIF.
      ENDIF.
    ENDIF.
    t221->load( ).
    APPEND t249 TO t221->items.
    t221->save( ).
    t197 = zcl_lnt_st_combi_module=>alt( i_first = t200 i_second = t205 i_rest = t221 ).
    DATA t303 TYPE REF TO zif_lnt_statement_runnable.
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t306.
    t306->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t306->sval = |FAILED|.
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t310) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t310 IS BOUND.
      CREATE OBJECT t309.
      t309->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t309->cval = t310.
    ENDIF.
    DATA t312 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t312.
    t303 = zcl_lnt_st_combi_module=>seq( i_first = t306 i_second = t309 i_rest = t312 ).
    DATA t317 TYPE REF TO zif_lnt_statement_runnable.
    DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t320.
    t320->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t320->sval = |RESULT|.
    DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t324) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t324 IS BOUND.
      CREATE OBJECT t323.
      t323->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t323->cval = t324.
    ENDIF.
    DATA t326 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t326.
    t317 = zcl_lnt_st_combi_module=>seq( i_first = t320 i_second = t323 i_rest = t326 ).
    DATA t331 TYPE REF TO zif_lnt_statement_runnable.
    DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t334.
    t334->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t334->sval = |MAPPED|.
    DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t338) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t338 IS BOUND.
      CREATE OBJECT t337.
      t337->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t337->cval = t338.
    ENDIF.
    DATA t340 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t340.
    t331 = zcl_lnt_st_combi_module=>seq( i_first = t334 i_second = t337 i_rest = t340 ).
    DATA t345 TYPE REF TO zif_lnt_statement_runnable.
    DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t348.
    t348->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t348->sval = |REPORTED|.
    DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t352) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t352 IS BOUND.
      CREATE OBJECT t351.
      t351->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t351->cval = t352.
    ENDIF.
    DATA t354 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t354.
    t345 = zcl_lnt_st_combi_module=>seq( i_first = t348 i_second = t351 i_rest = t354 ).
    DATA t359 TYPE REF TO zif_lnt_statement_runnable.
    DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t362 TYPE REF TO zif_lnt_statement_runnable.
    DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t303 IS BOUND.
      DATA t366 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t367 TYPE REF TO object.
      t367 = t303.
      TRY.
          t364 ?= t367.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t364 IS NOT BOUND.
        TRY.
            t366 ?= t303.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t366 IS BOUND.
          t364 = t366->source( ).
        ENDIF.
        IF t364 IS NOT BOUND.
          CREATE OBJECT t364.
          t364->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t364->oval = t303.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t317 IS BOUND.
      DATA t371 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t372 TYPE REF TO object.
      t372 = t317.
      TRY.
          t369 ?= t372.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t369 IS NOT BOUND.
        TRY.
            t371 ?= t317.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t371 IS BOUND.
          t369 = t371->source( ).
        ENDIF.
        IF t369 IS NOT BOUND.
          CREATE OBJECT t369.
          t369->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t369->oval = t317.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t373 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t373.
    DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t331 IS BOUND.
      DATA t378 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t379 TYPE REF TO object.
      t379 = t331.
      TRY.
          t376 ?= t379.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t376 IS NOT BOUND.
        TRY.
            t378 ?= t331.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t378 IS BOUND.
          t376 = t378->source( ).
        ENDIF.
        IF t376 IS NOT BOUND.
          CREATE OBJECT t376.
          t376->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t376->oval = t331.
        ENDIF.
      ENDIF.
    ENDIF.
    t373->load( ).
    APPEND t376 TO t373->items.
    t373->save( ).
    DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t345 IS BOUND.
      DATA t383 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t384 TYPE REF TO object.
      t384 = t345.
      TRY.
          t381 ?= t384.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t381 IS NOT BOUND.
        TRY.
            t383 ?= t345.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t383 IS BOUND.
          t381 = t383->source( ).
        ENDIF.
        IF t381 IS NOT BOUND.
          CREATE OBJECT t381.
          t381->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t381->oval = t345.
        ENDIF.
      ENDIF.
    ENDIF.
    t373->load( ).
    APPEND t381 TO t373->items.
    t373->save( ).
    t362 = zcl_lnt_st_combi_module=>per( i_first = t364 i_second = t369 i_rest = t373 ).
    IF t362 IS BOUND.
      DATA t389 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t390 TYPE REF TO object.
      t390 = t362.
      TRY.
          t361 ?= t390.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t361 IS NOT BOUND.
        TRY.
            t389 ?= t362.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t389 IS BOUND.
          t361 = t389->source( ).
        ENDIF.
        IF t361 IS NOT BOUND.
          CREATE OBJECT t361.
          t361->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t361->oval = t362.
        ENDIF.
      ENDIF.
    ENDIF.
    t359 = zcl_lnt_st_combi_module=>opt_prio( i_first = t361 ).
    DATA t391 TYPE REF TO zif_lnt_statement_runnable.
    DATA t394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t395 TYPE REF TO zif_lnt_statement_runnable.
    DATA t396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t396.
    t396->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t396->sval = |AUGMENTING|.
    t395 = zcl_lnt_st_combi_module=>opt_prio( i_first = t396 ).
    IF t395 IS BOUND.
      DATA t398 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t399 TYPE REF TO object.
      t399 = t395.
      TRY.
          t394 ?= t399.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t394 IS NOT BOUND.
        TRY.
            t398 ?= t395.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t398 IS BOUND.
          t394 = t398->source( ).
        ENDIF.
        IF t394 IS NOT BOUND.
          CREATE OBJECT t394.
          t394->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t394->oval = t395.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t401 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t401.
    t401->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t401->sval = |ENTITIES OF|.
    DATA t403 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t403.
    DATA t406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t407) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    IF t407 IS BOUND.
      CREATE OBJECT t406.
      t406->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t406->cval = t407.
    ENDIF.
    t403->load( ).
    APPEND t406 TO t403->items.
    t403->save( ).
    DATA t409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t410 TYPE REF TO zif_lnt_statement_runnable.
    DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t411.
    t411->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t411->sval = |IN LOCAL MODE|.
    t410 = zcl_lnt_st_combi_module=>opt( i_first = t411 ).
    IF t410 IS BOUND.
      DATA t413 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t414 TYPE REF TO object.
      t414 = t410.
      TRY.
          t409 ?= t414.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t409 IS NOT BOUND.
        TRY.
            t413 ?= t410.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t413 IS BOUND.
          t409 = t413->source( ).
        ENDIF.
        IF t409 IS NOT BOUND.
          CREATE OBJECT t409.
          t409->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t409->oval = t410.
        ENDIF.
      ENDIF.
    ENDIF.
    t403->load( ).
    APPEND t409 TO t403->items.
    t403->save( ).
    DATA t416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t417 TYPE REF TO zif_lnt_statement_runnable.
    DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t419 TYPE REF TO zif_lnt_statement_runnable.
    DATA t421 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t421.
    t421->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t421->sval = |ENTITY|.
    DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t425) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    IF t425 IS BOUND.
      CREATE OBJECT t424.
      t424->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t424->cval = t425.
    ENDIF.
    DATA t426 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t426.
    DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t430 TYPE REF TO zif_lnt_statement_runnable.
    DATA t431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t197 IS BOUND.
      DATA t433 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t434 TYPE REF TO object.
      t434 = t197.
      TRY.
          t431 ?= t434.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t431 IS NOT BOUND.
        TRY.
            t433 ?= t197.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t433 IS BOUND.
          t431 = t433->source( ).
        ENDIF.
        IF t431 IS NOT BOUND.
          CREATE OBJECT t431.
          t431->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t431->oval = t197.
        ENDIF.
      ENDIF.
    ENDIF.
    t430 = zcl_lnt_st_combi_module=>plus( i_first = t431 ).
    IF t430 IS BOUND.
      DATA t435 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t436 TYPE REF TO object.
      t436 = t430.
      TRY.
          t429 ?= t436.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t429 IS NOT BOUND.
        TRY.
            t435 ?= t430.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t435 IS BOUND.
          t429 = t435->source( ).
        ENDIF.
        IF t429 IS NOT BOUND.
          CREATE OBJECT t429.
          t429->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t429->oval = t430.
        ENDIF.
      ENDIF.
    ENDIF.
    t426->load( ).
    APPEND t429 TO t426->items.
    t426->save( ).
    t419 = zcl_lnt_st_combi_module=>seq( i_first = t421 i_second = t424 i_rest = t426 ).
    IF t419 IS BOUND.
      DATA t441 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t442 TYPE REF TO object.
      t442 = t419.
      TRY.
          t418 ?= t442.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t418 IS NOT BOUND.
        TRY.
            t441 ?= t419.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t441 IS BOUND.
          t418 = t441->source( ).
        ENDIF.
        IF t418 IS NOT BOUND.
          CREATE OBJECT t418.
          t418->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t418->oval = t419.
        ENDIF.
      ENDIF.
    ENDIF.
    t417 = zcl_lnt_st_combi_module=>plus_prio( i_first = t418 ).
    IF t417 IS BOUND.
      DATA t443 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t444 TYPE REF TO object.
      t444 = t417.
      TRY.
          t416 ?= t444.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t416 IS NOT BOUND.
        TRY.
            t443 ?= t417.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t443 IS BOUND.
          t416 = t443->source( ).
        ENDIF.
        IF t416 IS NOT BOUND.
          CREATE OBJECT t416.
          t416->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t416->oval = t417.
        ENDIF.
      ENDIF.
    ENDIF.
    t403->load( ).
    APPEND t416 TO t403->items.
    t403->save( ).
    t391 = zcl_lnt_st_combi_module=>seq( i_first = t394 i_second = t401 i_rest = t403 ).
    DATA t449 TYPE REF TO zif_lnt_statement_runnable.
    DATA t452 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t452.
    t452->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t452->sval = |ENTITIES|.
    DATA t455 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t456 TYPE REF TO zif_lnt_statement_runnable.
    DATA t457 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t458 TYPE REF TO zif_lnt_statement_runnable.
    DATA t460 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t460.
    t460->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t460->sval = |IN LOCAL MODE|.
    DATA t463 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t464 TYPE REF TO zif_lnt_statement_runnable.
    DATA t466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t467 TYPE REF TO zif_lnt_statement_runnable.
    DATA t468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t468.
    t468->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t468->sval = |FORWARDING|.
    t467 = zcl_lnt_st_combi_module=>opt( i_first = t468 ).
    IF t467 IS BOUND.
      DATA t470 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t471 TYPE REF TO object.
      t471 = t467.
      TRY.
          t466 ?= t471.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t466 IS NOT BOUND.
        TRY.
            t470 ?= t467.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t470 IS BOUND.
          t466 = t470->source( ).
        ENDIF.
        IF t466 IS NOT BOUND.
          CREATE OBJECT t466.
          t466->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t466->oval = t467.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t473.
    t473->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t473->sval = |PRIVILEGED|.
    DATA t476 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t476.
    t464 = zcl_lnt_st_combi_module=>seq( i_first = t466 i_second = t473 i_rest = t476 ).
    IF t464 IS BOUND.
      DATA t481 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t482 TYPE REF TO object.
      t482 = t464.
      TRY.
          t463 ?= t482.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t463 IS NOT BOUND.
        TRY.
            t481 ?= t464.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t481 IS BOUND.
          t463 = t481->source( ).
        ENDIF.
        IF t463 IS NOT BOUND.
          CREATE OBJECT t463.
          t463->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t463->oval = t464.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t484 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t484.
    t458 = zcl_lnt_st_combi_module=>alt_prio( i_first = t460 i_second = t463 i_rest = t484 ).
    IF t458 IS BOUND.
      DATA t489 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t490 TYPE REF TO object.
      t490 = t458.
      TRY.
          t457 ?= t490.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t457 IS NOT BOUND.
        TRY.
            t489 ?= t458.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t489 IS BOUND.
          t457 = t489->source( ).
        ENDIF.
        IF t457 IS NOT BOUND.
          CREATE OBJECT t457.
          t457->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t457->oval = t458.
        ENDIF.
      ENDIF.
    ENDIF.
    t456 = zcl_lnt_st_combi_module=>opt_prio( i_first = t457 ).
    IF t456 IS BOUND.
      DATA t491 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t492 TYPE REF TO object.
      t492 = t456.
      TRY.
          t455 ?= t492.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t455 IS NOT BOUND.
        TRY.
            t491 ?= t456.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t491 IS BOUND.
          t455 = t491->source( ).
        ENDIF.
        IF t455 IS NOT BOUND.
          CREATE OBJECT t455.
          t455->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t455->oval = t456.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t493 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t493.
    DATA t496 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t496.
    t496->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t496->sval = |OPERATIONS|.
    t493->load( ).
    APPEND t496 TO t493->items.
    t493->save( ).
    DATA t499 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t500) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t500 IS BOUND.
      CREATE OBJECT t499.
      t499->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t499->cval = t500.
    ENDIF.
    t493->load( ).
    APPEND t499 TO t493->items.
    t493->save( ).
    t449 = zcl_lnt_st_combi_module=>seq( i_first = t452 i_second = t455 i_rest = t493 ).
    DATA t505 TYPE REF TO zif_lnt_statement_runnable.
    DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t508.
    t508->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t508->sval = |CREATE|.
    DATA t511 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t513 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t514 TYPE REF TO object.
      t514 = t15.
      TRY.
          t511 ?= t514.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t511 IS NOT BOUND.
        TRY.
            t513 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t513 IS BOUND.
          t511 = t513->source( ).
        ENDIF.
        IF t511 IS NOT BOUND.
          CREATE OBJECT t511.
          t511->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t511->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t515 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t515.
    DATA t518 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t519 TYPE REF TO zif_lnt_statement_runnable.
    DATA t520 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t521 TYPE REF TO zif_lnt_statement_runnable.
    DATA t523 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t523.
    t523->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t523->sval = |CREATE BY|.
    DATA t526 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t527) = zlnt_runtime_desc_78196487750d=>zlnt_member_d161_a1a721da0257.
    IF t527 IS BOUND.
      CREATE OBJECT t526.
      t526->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t526->cval = t527.
    ENDIF.
    DATA t528 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t528.
    DATA t531 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t533 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t534 TYPE REF TO object.
      t534 = t15.
      TRY.
          t531 ?= t534.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t531 IS NOT BOUND.
        TRY.
            t533 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t533 IS BOUND.
          t531 = t533->source( ).
        ENDIF.
        IF t531 IS NOT BOUND.
          CREATE OBJECT t531.
          t531->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t531->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    t528->load( ).
    APPEND t531 TO t528->items.
    t528->save( ).
    t521 = zcl_lnt_st_combi_module=>seq( i_first = t523 i_second = t526 i_rest = t528 ).
    IF t521 IS BOUND.
      DATA t539 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t540 TYPE REF TO object.
      t540 = t521.
      TRY.
          t520 ?= t540.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t520 IS NOT BOUND.
        TRY.
            t539 ?= t521.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t539 IS BOUND.
          t520 = t539->source( ).
        ENDIF.
        IF t520 IS NOT BOUND.
          CREATE OBJECT t520.
          t520->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t520->oval = t521.
        ENDIF.
      ENDIF.
    ENDIF.
    t519 = zcl_lnt_st_combi_module=>opt( i_first = t520 ).
    IF t519 IS BOUND.
      DATA t541 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t542 TYPE REF TO object.
      t542 = t519.
      TRY.
          t518 ?= t542.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t518 IS NOT BOUND.
        TRY.
            t541 ?= t519.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t541 IS BOUND.
          t518 = t541->source( ).
        ENDIF.
        IF t518 IS NOT BOUND.
          CREATE OBJECT t518.
          t518->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t518->oval = t519.
        ENDIF.
      ENDIF.
    ENDIF.
    t515->load( ).
    APPEND t518 TO t515->items.
    t515->save( ).
    t505 = zcl_lnt_st_combi_module=>seq( i_first = t508 i_second = t511 i_rest = t515 ).
    DATA t547 TYPE REF TO zif_lnt_statement_runnable.
    DATA t550 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t550.
    t550->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t550->sval = |CREATE BY|.
    DATA t553 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t554) = zlnt_runtime_desc_78196487750d=>zlnt_member_d161_a1a721da0257.
    IF t554 IS BOUND.
      CREATE OBJECT t553.
      t553->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t553->cval = t554.
    ENDIF.
    DATA t555 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t555.
    DATA t558 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t560 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t561 TYPE REF TO object.
      t561 = t15.
      TRY.
          t558 ?= t561.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t558 IS NOT BOUND.
        TRY.
            t560 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t560 IS BOUND.
          t558 = t560->source( ).
        ENDIF.
        IF t558 IS NOT BOUND.
          CREATE OBJECT t558.
          t558->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t558->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    t555->load( ).
    APPEND t558 TO t555->items.
    t555->save( ).
    t547 = zcl_lnt_st_combi_module=>seq( i_first = t550 i_second = t553 i_rest = t555 ).
    DATA t566 TYPE REF TO zif_lnt_statement_runnable.
    DATA t569 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t569.
    t569->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t569->sval = |CREATE FROM|.
    DATA t572 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t573) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t573 IS BOUND.
      CREATE OBJECT t572.
      t572->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t572->cval = t573.
    ENDIF.
    DATA t574 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t574.
    DATA t577 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t578 TYPE REF TO zif_lnt_statement_runnable.
    DATA t579 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t580 TYPE REF TO zif_lnt_statement_runnable.
    DATA t582 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t582.
    t582->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t582->sval = |CREATE BY|.
    DATA t585 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t586) = zlnt_runtime_desc_78196487750d=>zlnt_member_d161_a1a721da0257.
    IF t586 IS BOUND.
      CREATE OBJECT t585.
      t585->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t585->cval = t586.
    ENDIF.
    DATA t587 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t587.
    DATA t590 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t590.
    t590->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t590->sval = |FROM|.
    t587->load( ).
    APPEND t590 TO t587->items.
    t587->save( ).
    DATA t593 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t594) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t594 IS BOUND.
      CREATE OBJECT t593.
      t593->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t593->cval = t594.
    ENDIF.
    t587->load( ).
    APPEND t593 TO t587->items.
    t587->save( ).
    t580 = zcl_lnt_st_combi_module=>seq( i_first = t582 i_second = t585 i_rest = t587 ).
    IF t580 IS BOUND.
      DATA t599 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t600 TYPE REF TO object.
      t600 = t580.
      TRY.
          t579 ?= t600.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t579 IS NOT BOUND.
        TRY.
            t599 ?= t580.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t599 IS BOUND.
          t579 = t599->source( ).
        ENDIF.
        IF t579 IS NOT BOUND.
          CREATE OBJECT t579.
          t579->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t579->oval = t580.
        ENDIF.
      ENDIF.
    ENDIF.
    t578 = zcl_lnt_st_combi_module=>plus( i_first = t579 ).
    IF t578 IS BOUND.
      DATA t601 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t602 TYPE REF TO object.
      t602 = t578.
      TRY.
          t577 ?= t602.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t577 IS NOT BOUND.
        TRY.
            t601 ?= t578.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t601 IS BOUND.
          t577 = t601->source( ).
        ENDIF.
        IF t577 IS NOT BOUND.
          CREATE OBJECT t577.
          t577->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t577->oval = t578.
        ENDIF.
      ENDIF.
    ENDIF.
    t574->load( ).
    APPEND t577 TO t574->items.
    t574->save( ).
    t566 = zcl_lnt_st_combi_module=>seq( i_first = t569 i_second = t572 i_rest = t574 ).
    DATA t607 TYPE REF TO zif_lnt_statement_runnable.
    DATA t610 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t610.
    t610->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t610->sval = |ENTITY|.
    DATA t613 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t614 TYPE REF TO zif_lnt_statement_runnable.
    DATA t615 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t615.
    t615->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t615->sval = |IN LOCAL MODE|.
    t614 = zcl_lnt_st_combi_module=>opt( i_first = t615 ).
    IF t614 IS BOUND.
      DATA t617 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t618 TYPE REF TO object.
      t618 = t614.
      TRY.
          t613 ?= t618.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t613 IS NOT BOUND.
        TRY.
            t617 ?= t614.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t617 IS BOUND.
          t613 = t617->source( ).
        ENDIF.
        IF t613 IS NOT BOUND.
          CREATE OBJECT t613.
          t613->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t613->oval = t614.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t619 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t619.
    DATA t622 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t623 TYPE REF TO zif_lnt_statement_runnable.
    DATA t625 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t626) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    IF t626 IS BOUND.
      CREATE OBJECT t625.
      t625->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t625->cval = t626.
    ENDIF.
    DATA t628 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t629) = zlnt_runtime_desc_78196487750d=>zlnt_member_d162_57231f39acd0.
    IF t629 IS BOUND.
      CREATE OBJECT t628.
      t628->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t628->cval = t629.
    ENDIF.
    DATA t631 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t631.
    t623 = zcl_lnt_st_combi_module=>alt( i_first = t625 i_second = t628 i_rest = t631 ).
    IF t623 IS BOUND.
      DATA t636 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t637 TYPE REF TO object.
      t637 = t623.
      TRY.
          t622 ?= t637.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t622 IS NOT BOUND.
        TRY.
            t636 ?= t623.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t636 IS BOUND.
          t622 = t636->source( ).
        ENDIF.
        IF t622 IS NOT BOUND.
          CREATE OBJECT t622.
          t622->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t622->oval = t623.
        ENDIF.
      ENDIF.
    ENDIF.
    t619->load( ).
    APPEND t622 TO t619->items.
    t619->save( ).
    DATA t639 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t640 TYPE REF TO zif_lnt_statement_runnable.
    DATA t642 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t75 IS BOUND.
      DATA t644 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t645 TYPE REF TO object.
      t645 = t75.
      TRY.
          t642 ?= t645.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t642 IS NOT BOUND.
        TRY.
            t644 ?= t75.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t644 IS BOUND.
          t642 = t644->source( ).
        ENDIF.
        IF t642 IS NOT BOUND.
          CREATE OBJECT t642.
          t642->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t642->oval = t75.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t647 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t95 IS BOUND.
      DATA t649 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t650 TYPE REF TO object.
      t650 = t95.
      TRY.
          t647 ?= t650.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t647 IS NOT BOUND.
        TRY.
            t649 ?= t95.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t649 IS BOUND.
          t647 = t649->source( ).
        ENDIF.
        IF t647 IS NOT BOUND.
          CREATE OBJECT t647.
          t647->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t647->oval = t95.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t651 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t651.
    DATA t654 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t167 IS BOUND.
      DATA t656 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t657 TYPE REF TO object.
      t657 = t167.
      TRY.
          t654 ?= t657.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t654 IS NOT BOUND.
        TRY.
            t656 ?= t167.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t656 IS BOUND.
          t654 = t656->source( ).
        ENDIF.
        IF t654 IS NOT BOUND.
          CREATE OBJECT t654.
          t654->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t654->oval = t167.
        ENDIF.
      ENDIF.
    ENDIF.
    t651->load( ).
    APPEND t654 TO t651->items.
    t651->save( ).
    DATA t659 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t153 IS BOUND.
      DATA t661 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t662 TYPE REF TO object.
      t662 = t153.
      TRY.
          t659 ?= t662.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t659 IS NOT BOUND.
        TRY.
            t661 ?= t153.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t661 IS BOUND.
          t659 = t661->source( ).
        ENDIF.
        IF t659 IS NOT BOUND.
          CREATE OBJECT t659.
          t659->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t659->oval = t153.
        ENDIF.
      ENDIF.
    ENDIF.
    t651->load( ).
    APPEND t659 TO t651->items.
    t651->save( ).
    DATA t664 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t183 IS BOUND.
      DATA t666 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t667 TYPE REF TO object.
      t667 = t183.
      TRY.
          t664 ?= t667.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t664 IS NOT BOUND.
        TRY.
            t666 ?= t183.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t666 IS BOUND.
          t664 = t666->source( ).
        ENDIF.
        IF t664 IS NOT BOUND.
          CREATE OBJECT t664.
          t664->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t664->oval = t183.
        ENDIF.
      ENDIF.
    ENDIF.
    t651->load( ).
    APPEND t664 TO t651->items.
    t651->save( ).
    DATA t669 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t130 IS BOUND.
      DATA t671 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t672 TYPE REF TO object.
      t672 = t130.
      TRY.
          t669 ?= t672.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t669 IS NOT BOUND.
        TRY.
            t671 ?= t130.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t671 IS BOUND.
          t669 = t671->source( ).
        ENDIF.
        IF t669 IS NOT BOUND.
          CREATE OBJECT t669.
          t669->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t669->oval = t130.
        ENDIF.
      ENDIF.
    ENDIF.
    t651->load( ).
    APPEND t669 TO t651->items.
    t651->save( ).
    DATA t674 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t505 IS BOUND.
      DATA t676 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t677 TYPE REF TO object.
      t677 = t505.
      TRY.
          t674 ?= t677.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t674 IS NOT BOUND.
        TRY.
            t676 ?= t505.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t676 IS BOUND.
          t674 = t676->source( ).
        ENDIF.
        IF t674 IS NOT BOUND.
          CREATE OBJECT t674.
          t674->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t674->oval = t505.
        ENDIF.
      ENDIF.
    ENDIF.
    t651->load( ).
    APPEND t674 TO t651->items.
    t651->save( ).
    DATA t679 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t547 IS BOUND.
      DATA t681 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t682 TYPE REF TO object.
      t682 = t547.
      TRY.
          t679 ?= t682.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t679 IS NOT BOUND.
        TRY.
            t681 ?= t547.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t681 IS BOUND.
          t679 = t681->source( ).
        ENDIF.
        IF t679 IS NOT BOUND.
          CREATE OBJECT t679.
          t679->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t679->oval = t547.
        ENDIF.
      ENDIF.
    ENDIF.
    t651->load( ).
    APPEND t679 TO t651->items.
    t651->save( ).
    DATA t684 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t566 IS BOUND.
      DATA t686 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t687 TYPE REF TO object.
      t687 = t566.
      TRY.
          t684 ?= t687.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t684 IS NOT BOUND.
        TRY.
            t686 ?= t566.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t686 IS BOUND.
          t684 = t686->source( ).
        ENDIF.
        IF t684 IS NOT BOUND.
          CREATE OBJECT t684.
          t684->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t684->oval = t566.
        ENDIF.
      ENDIF.
    ENDIF.
    t651->load( ).
    APPEND t684 TO t651->items.
    t651->save( ).
    t640 = zcl_lnt_st_combi_module=>alt( i_first = t642 i_second = t647 i_rest = t651 ).
    IF t640 IS BOUND.
      DATA t692 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t693 TYPE REF TO object.
      t693 = t640.
      TRY.
          t639 ?= t693.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t639 IS NOT BOUND.
        TRY.
            t692 ?= t640.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t692 IS BOUND.
          t639 = t692->source( ).
        ENDIF.
        IF t639 IS NOT BOUND.
          CREATE OBJECT t639.
          t639->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t639->oval = t640.
        ENDIF.
      ENDIF.
    ENDIF.
    t619->load( ).
    APPEND t639 TO t619->items.
    t619->save( ).
    t607 = zcl_lnt_st_combi_module=>seq( i_first = t610 i_second = t613 i_rest = t619 ).
    DATA t699 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t700 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t700 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v754| ).
    IF t700 IS BOUND.
      DATA t704 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t705 TYPE REF TO object.
      t705 = t700.
      TRY.
          t699 ?= t705.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t699 IS NOT BOUND.
        TRY.
            t704 ?= t700.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t704 IS BOUND.
          t699 = t704->source( ).
        ENDIF.
        IF t699 IS NOT BOUND.
          CREATE OBJECT t699.
          t699->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t699->oval = t700.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t706 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t707 TYPE REF TO zif_lnt_statement_runnable.
    DATA t709 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t709.
    t709->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t709->sval = |MODIFY|.
    DATA t712 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t713 TYPE REF TO zif_lnt_statement_runnable.
    DATA t715 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t391 IS BOUND.
      DATA t717 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t718 TYPE REF TO object.
      t718 = t391.
      TRY.
          t715 ?= t718.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t715 IS NOT BOUND.
        TRY.
            t717 ?= t391.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t717 IS BOUND.
          t715 = t717->source( ).
        ENDIF.
        IF t715 IS NOT BOUND.
          CREATE OBJECT t715.
          t715->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t715->oval = t391.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t720 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t449 IS BOUND.
      DATA t722 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t723 TYPE REF TO object.
      t723 = t449.
      TRY.
          t720 ?= t723.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t720 IS NOT BOUND.
        TRY.
            t722 ?= t449.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t722 IS BOUND.
          t720 = t722->source( ).
        ENDIF.
        IF t720 IS NOT BOUND.
          CREATE OBJECT t720.
          t720->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t720->oval = t449.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t724 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t724.
    DATA t727 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t607 IS BOUND.
      DATA t729 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t730 TYPE REF TO object.
      t730 = t607.
      TRY.
          t727 ?= t730.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t727 IS NOT BOUND.
        TRY.
            t729 ?= t607.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t729 IS BOUND.
          t727 = t729->source( ).
        ENDIF.
        IF t727 IS NOT BOUND.
          CREATE OBJECT t727.
          t727->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t727->oval = t607.
        ENDIF.
      ENDIF.
    ENDIF.
    t724->load( ).
    APPEND t727 TO t724->items.
    t724->save( ).
    t713 = zcl_lnt_st_combi_module=>alt( i_first = t715 i_second = t720 i_rest = t724 ).
    IF t713 IS BOUND.
      DATA t735 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t736 TYPE REF TO object.
      t736 = t713.
      TRY.
          t712 ?= t736.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t712 IS NOT BOUND.
        TRY.
            t735 ?= t713.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t735 IS BOUND.
          t712 = t735->source( ).
        ENDIF.
        IF t712 IS NOT BOUND.
          CREATE OBJECT t712.
          t712->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t712->oval = t713.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t737 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t737.
    DATA t740 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t359 IS BOUND.
      DATA t742 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t743 TYPE REF TO object.
      t743 = t359.
      TRY.
          t740 ?= t743.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t740 IS NOT BOUND.
        TRY.
            t742 ?= t359.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t742 IS BOUND.
          t740 = t742->source( ).
        ENDIF.
        IF t740 IS NOT BOUND.
          CREATE OBJECT t740.
          t740->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t740->oval = t359.
        ENDIF.
      ENDIF.
    ENDIF.
    t737->load( ).
    APPEND t740 TO t737->items.
    t737->save( ).
    t707 = zcl_lnt_st_combi_module=>seq( i_first = t709 i_second = t712 i_rest = t737 ).
    IF t707 IS BOUND.
      DATA t748 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t749 TYPE REF TO object.
      t749 = t707.
      TRY.
          t706 ?= t749.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t706 IS NOT BOUND.
        TRY.
            t748 ?= t707.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t748 IS BOUND.
          t706 = t748->source( ).
        ENDIF.
        IF t706 IS NOT BOUND.
          CREATE OBJECT t706.
          t706->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t706->oval = t707.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t752 TYPE REF TO zcl_lnt_iver_options.
    DATA(t757) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t757->has = abap_true.
    t757->value = |OpenABAP|.
    t752 = NEW zcl_lnt_iver_options( i_also = t757 ).
    CREATE OBJECT t752->zlnt_view_ownkeys_b0e8086400eb.
    t752->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t759 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t752->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t759 ).
    CREATE OBJECT t752->zlnt_json_ownkeys_70e5fd461788.
    t752->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t761 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t752->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t761 ).
    result = zcl_lnt_st_combi_module=>ver( i_version_or_release = t699 i_first = t706 i_opts = t752 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d556_7450efba98d4.
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
