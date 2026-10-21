* TS: src/cds/expressions/cds_table_field.ts:5:1 CDSTableField
CLASS zcl_lnt_cds_table_field DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_table_field IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t6.
    t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t6->sval = |NOT NULL|.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t9.
    t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t9->sval = |NULL|.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t12.
    t4 = zcl_lnt_st_combi_module=>alt( i_first = t6 i_second = t9 i_rest = t12 ).
    IF t4 IS BOUND.
      DATA t17 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t3 ?= t4.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t3 IS NOT BOUND.
        TRY.
            t17 ?= t4.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t17 IS BOUND.
          t3 = t17->source( ).
        ENDIF.
        IF t3 IS NOT BOUND.
          CREATE OBJECT t3.
          t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t3->oval = t4.
        ENDIF.
      ENDIF.
    ENDIF.
    t1 = zcl_lnt_st_combi_module=>opt_prio( i_first = t3 ).
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t23 IS BOUND.
      CREATE OBJECT t22.
      t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t22->cval = t23.
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t26 TYPE REF TO zif_lnt_statement_runnable.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t30.
    t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t30->sval = |,|.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t34) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t34 IS BOUND.
      CREATE OBJECT t33.
      t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t33->cval = t34.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t36.
    t28 = zcl_lnt_st_combi_module=>seq( i_first = t30 i_second = t33 i_rest = t36 ).
    IF t28 IS BOUND.
      DATA t41 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t27 ?= t28.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t27 IS NOT BOUND.
        TRY.
            t41 ?= t28.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t41 IS BOUND.
          t27 = t41->source( ).
        ENDIF.
        IF t27 IS NOT BOUND.
          CREATE OBJECT t27.
          t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t27->oval = t28.
        ENDIF.
      ENDIF.
    ENDIF.
    t26 = zcl_lnt_st_combi_module=>star( i_first = t27 ).
    IF t26 IS BOUND.
      DATA t43 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t25 ?= t26.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t25 IS NOT BOUND.
        TRY.
            t43 ?= t26.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t43 IS BOUND.
          t25 = t43->source( ).
        ENDIF.
        IF t25 IS NOT BOUND.
          CREATE OBJECT t25.
          t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t25->oval = t26.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t46.
    t19 = zcl_lnt_st_combi_module=>seq( i_first = t22 i_second = t25 i_rest = t46 ).
    DATA t51 TYPE REF TO zif_lnt_statement_runnable.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t54.
    t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t54->sval = |EXCLUDING|.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t57.
    t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t57->sval = |\{|.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t59.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t19 IS BOUND.
      DATA t64 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t62 ?= t19.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t62 IS NOT BOUND.
        TRY.
            t64 ?= t19.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t64 IS BOUND.
          t62 = t64->source( ).
        ENDIF.
        IF t62 IS NOT BOUND.
          CREATE OBJECT t62.
          t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t62->oval = t19.
        ENDIF.
      ENDIF.
    ENDIF.
    t59->load( ).
    APPEND t62 TO t59->items.
    t59->save( ).
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t67.
    t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t67->sval = |\}|.
    t59->load( ).
    APPEND t67 TO t59->items.
    t59->save( ).
    t51 = zcl_lnt_st_combi_module=>seq( i_first = t54 i_second = t57 i_rest = t59 ).
    DATA t73 TYPE REF TO zif_lnt_statement_runnable.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t76.
    t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t76->sval = |INCLUDE|.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t80) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    IF t80 IS BOUND.
      CREATE OBJECT t79.
      t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t79->cval = t80.
    ENDIF.
    DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t81.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t90 TYPE REF TO zif_lnt_statement_runnable.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t93 TYPE REF TO zif_lnt_statement_runnable.
    t93 = zcl_lnt_st_combi_module=>str( i_s = |SIGNATURE ONLY| ).
    IF t93 IS BOUND.
      DATA t95 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t92 ?= t93.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t92 IS NOT BOUND.
        TRY.
            t95 ?= t93.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t95 IS BOUND.
          t92 = t95->source( ).
        ENDIF.
        IF t92 IS NOT BOUND.
          CREATE OBJECT t92.
          t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t92->oval = t93.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t51 IS BOUND.
      DATA t102 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t100 ?= t51.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t100 IS NOT BOUND.
        TRY.
            t102 ?= t51.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t102 IS BOUND.
          t100 = t102->source( ).
        ENDIF.
        IF t100 IS NOT BOUND.
          CREATE OBJECT t100.
          t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t100->oval = t51.
        ENDIF.
      ENDIF.
    ENDIF.
    t99 = zcl_lnt_st_combi_module=>opt_prio( i_first = t100 ).
    IF t99 IS BOUND.
      DATA t104 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t98 ?= t99.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t98 IS NOT BOUND.
        TRY.
            t104 ?= t99.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t104 IS BOUND.
          t98 = t104->source( ).
        ENDIF.
        IF t98 IS NOT BOUND.
          CREATE OBJECT t98.
          t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t98->oval = t99.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t107 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t107.
    t90 = zcl_lnt_st_combi_module=>seq( i_first = t92 i_second = t98 i_rest = t107 ).
    IF t90 IS BOUND.
      DATA t112 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t89 ?= t90.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t89 IS NOT BOUND.
        TRY.
            t112 ?= t90.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t112 IS BOUND.
          t89 = t112->source( ).
        ENDIF.
        IF t89 IS NOT BOUND.
          CREATE OBJECT t89.
          t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t89->oval = t90.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t116 TYPE REF TO zif_lnt_statement_runnable.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t51 IS BOUND.
      DATA t120 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t118 ?= t51.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t118 IS NOT BOUND.
        TRY.
            t120 ?= t51.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t120 IS BOUND.
          t118 = t120->source( ).
        ENDIF.
        IF t118 IS NOT BOUND.
          CREATE OBJECT t118.
          t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t118->oval = t51.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t124 TYPE REF TO zif_lnt_statement_runnable.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t126 TYPE REF TO zif_lnt_statement_runnable.
    t126 = zcl_lnt_st_combi_module=>str( i_s = |SIGNATURE ONLY| ).
    IF t126 IS BOUND.
      DATA t128 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t125 ?= t126.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t125 IS NOT BOUND.
        TRY.
            t128 ?= t126.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t128 IS BOUND.
          t125 = t128->source( ).
        ENDIF.
        IF t125 IS NOT BOUND.
          CREATE OBJECT t125.
          t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t125->oval = t126.
        ENDIF.
      ENDIF.
    ENDIF.
    t124 = zcl_lnt_st_combi_module=>opt_prio( i_first = t125 ).
    IF t124 IS BOUND.
      DATA t130 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t123 ?= t124.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t123 IS NOT BOUND.
        TRY.
            t130 ?= t124.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t130 IS BOUND.
          t123 = t130->source( ).
        ENDIF.
        IF t123 IS NOT BOUND.
          CREATE OBJECT t123.
          t123->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t123->oval = t124.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t133 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t133.
    t116 = zcl_lnt_st_combi_module=>seq( i_first = t118 i_second = t123 i_rest = t133 ).
    IF t116 IS BOUND.
      DATA t138 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t115 ?= t116.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t115 IS NOT BOUND.
        TRY.
            t138 ?= t116.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t138 IS BOUND.
          t115 = t138->source( ).
        ENDIF.
        IF t115 IS NOT BOUND.
          CREATE OBJECT t115.
          t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t115->oval = t116.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t141 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t141.
    t87 = zcl_lnt_st_combi_module=>alt_prio( i_first = t89 i_second = t115 i_rest = t141 ).
    IF t87 IS BOUND.
      DATA t146 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t86 ?= t87.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t86 IS NOT BOUND.
        TRY.
            t146 ?= t87.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t146 IS BOUND.
          t86 = t146->source( ).
        ENDIF.
        IF t86 IS NOT BOUND.
          CREATE OBJECT t86.
          t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t86->oval = t87.
        ENDIF.
      ENDIF.
    ENDIF.
    t85 = zcl_lnt_st_combi_module=>opt_prio( i_first = t86 ).
    IF t85 IS BOUND.
      DATA t148 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t84 ?= t85.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t84 IS NOT BOUND.
        TRY.
            t148 ?= t85.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t148 IS BOUND.
          t84 = t148->source( ).
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
    t73 = zcl_lnt_st_combi_module=>seq( i_first = t76 i_second = t79 i_rest = t81 ).
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t158 TYPE REF TO zif_lnt_statement_runnable.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t160 TYPE REF TO zif_lnt_statement_runnable.
    t160 = zcl_lnt_st_combi_module=>str( i_s = |KEY| ).
    IF t160 IS BOUND.
      DATA t162 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t159 ?= t160.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t159 IS NOT BOUND.
        TRY.
            t162 ?= t160.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t162 IS BOUND.
          t159 = t162->source( ).
        ENDIF.
        IF t159 IS NOT BOUND.
          CREATE OBJECT t159.
          t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t159->oval = t160.
        ENDIF.
      ENDIF.
    ENDIF.
    t158 = zcl_lnt_st_combi_module=>opt_prio( i_first = t159 ).
    IF t158 IS BOUND.
      DATA t164 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t157 ?= t158.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t157 IS NOT BOUND.
        TRY.
            t164 ?= t158.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t164 IS BOUND.
          t157 = t164->source( ).
        ENDIF.
        IF t157 IS NOT BOUND.
          CREATE OBJECT t157.
          t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t157->oval = t158.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t168) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t168 IS BOUND.
      CREATE OBJECT t167.
      t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t167->cval = t168.
    ENDIF.
    DATA t169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t169.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t172.
    t172->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t172->sval = |:|.
    t169->load( ).
    APPEND t172 TO t169->items.
    t169->save( ).
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t176) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1075_bb8c443f99f5.
    IF t176 IS BOUND.
      CREATE OBJECT t175.
      t175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t175->cval = t176.
    ENDIF.
    t169->load( ).
    APPEND t175 TO t169->items.
    t169->save( ).
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t180 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t178 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t178 IS NOT BOUND.
        TRY.
            t180 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t180 IS BOUND.
          t178 = t180->source( ).
        ENDIF.
        IF t178 IS NOT BOUND.
          CREATE OBJECT t178.
          t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t178->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t169->load( ).
    APPEND t178 TO t169->items.
    t169->save( ).
    t154 = zcl_lnt_st_combi_module=>seq( i_first = t157 i_second = t167 i_rest = t169 ).
    DATA t186 TYPE REF TO zif_lnt_statement_runnable.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t190) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t190 IS BOUND.
      CREATE OBJECT t189.
      t189->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t189->cval = t190.
    ENDIF.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t192.
    t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t192->sval = |:|.
    DATA t194 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t194.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t198 TYPE REF TO zif_lnt_statement_runnable.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t201) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1096_358eab8a400f.
    IF t201 IS BOUND.
      CREATE OBJECT t200.
      t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t200->cval = t201.
    ENDIF.
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t204) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1095_9dff9bf77964.
    IF t204 IS BOUND.
      CREATE OBJECT t203.
      t203->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t203->cval = t204.
    ENDIF.
    DATA t206 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t206.
    t198 = zcl_lnt_st_combi_module=>alt( i_first = t200 i_second = t203 i_rest = t206 ).
    IF t198 IS BOUND.
      DATA t211 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t197 ?= t198.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t197 IS NOT BOUND.
        TRY.
            t211 ?= t198.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t211 IS BOUND.
          t197 = t211->source( ).
        ENDIF.
        IF t197 IS NOT BOUND.
          CREATE OBJECT t197.
          t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t197->oval = t198.
        ENDIF.
      ENDIF.
    ENDIF.
    t194->load( ).
    APPEND t197 TO t194->items.
    t194->save( ).
    t186 = zcl_lnt_st_combi_module=>seq( i_first = t189 i_second = t192 i_rest = t194 ).
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t220 TYPE REF TO zif_lnt_statement_runnable.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t222) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
    IF t222 IS BOUND.
      CREATE OBJECT t221.
      t221->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t221->cval = t222.
    ENDIF.
    t220 = zcl_lnt_st_combi_module=>star( i_first = t221 ).
    IF t220 IS BOUND.
      DATA t223 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t219 ?= t220.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t219 IS NOT BOUND.
        TRY.
            t223 ?= t220.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t223 IS BOUND.
          t219 = t223->source( ).
        ENDIF.
        IF t219 IS NOT BOUND.
          CREATE OBJECT t219.
          t219->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t219->oval = t220.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t227 TYPE REF TO zif_lnt_statement_runnable.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t73 IS BOUND.
      DATA t231 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t229 ?= t73.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t229 IS NOT BOUND.
        TRY.
            t231 ?= t73.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t231 IS BOUND.
          t229 = t231->source( ).
        ENDIF.
        IF t229 IS NOT BOUND.
          CREATE OBJECT t229.
          t229->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t229->oval = t73.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t186 IS BOUND.
      DATA t236 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t234 ?= t186.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t234 IS NOT BOUND.
        TRY.
            t236 ?= t186.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t236 IS BOUND.
          t234 = t236->source( ).
        ENDIF.
        IF t234 IS NOT BOUND.
          CREATE OBJECT t234.
          t234->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t234->oval = t186.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t238 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t238.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t154 IS BOUND.
      DATA t243 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t241 ?= t154.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t241 IS NOT BOUND.
        TRY.
            t243 ?= t154.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t243 IS BOUND.
          t241 = t243->source( ).
        ENDIF.
        IF t241 IS NOT BOUND.
          CREATE OBJECT t241.
          t241->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t241->oval = t154.
        ENDIF.
      ENDIF.
    ENDIF.
    t238->load( ).
    APPEND t241 TO t238->items.
    t238->save( ).
    t227 = zcl_lnt_st_combi_module=>alt_prio( i_first = t229 i_second = t234 i_rest = t238 ).
    IF t227 IS BOUND.
      DATA t249 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t226 ?= t227.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t226 IS NOT BOUND.
        TRY.
            t249 ?= t227.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t249 IS BOUND.
          t226 = t249->source( ).
        ENDIF.
        IF t226 IS NOT BOUND.
          CREATE OBJECT t226.
          t226->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t226->oval = t227.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t251 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t251.
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t254.
    t254->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t254->sval = |;|.
    t251->load( ).
    APPEND t254 TO t251->items.
    t251->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t219 i_second = t226 i_rest = t251 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1106_b030da4153fc.
  ENDMETHOD.
ENDCLASS.
