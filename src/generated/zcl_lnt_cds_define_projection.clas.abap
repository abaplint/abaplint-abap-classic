* TS: src/cds/expressions/cds_define_projection.ts:6:1 CDSDefineProjection
CLASS zcl_lnt_cds_define_projection DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_define_projection IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |EXACT ONE TO EXACT ONE|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = |EXACT ONE TO MANY|.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t9 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t13) = |EXACT ONE TO ONE|.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = t13.
    t9->load( ).
    APPEND t12 TO t9->items.
    t9->save( ).
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t16) = |MANY TO EXACT ONE|.
    CREATE OBJECT t15.
    t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t15->sval = t16.
    t9->load( ).
    APPEND t15 TO t9->items.
    t9->save( ).
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t19) = |MANY TO MANY|.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = t19.
    t9->load( ).
    APPEND t18 TO t9->items.
    t9->save( ).
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = |MANY TO ONE|.
    CREATE OBJECT t21.
    t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t21->sval = t22.
    t9->load( ).
    APPEND t21 TO t9->items.
    t9->save( ).
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t25) = |ONE TO EXACT ONE|.
    CREATE OBJECT t24.
    t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t24->sval = t25.
    t9->load( ).
    APPEND t24 TO t9->items.
    t9->save( ).
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t28) = |ONE TO MANY|.
    CREATE OBJECT t27.
    t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t27->sval = t28.
    t9->load( ).
    APPEND t27 TO t9->items.
    t9->save( ).
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t31) = |ONE TO ONE|.
    CREATE OBJECT t30.
    t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t30->sval = t31.
    t9->load( ).
    APPEND t30 TO t9->items.
    t9->save( ).
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t34) = |TO EXACT ONE|.
    CREATE OBJECT t33.
    t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t33->sval = t34.
    t9->load( ).
    APPEND t33 TO t9->items.
    t9->save( ).
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t37) = |TO ONE|.
    CREATE OBJECT t36.
    t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t36->sval = t37.
    t9->load( ).
    APPEND t36 TO t9->items.
    t9->save( ).
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t40) = |TO MANY|.
    CREATE OBJECT t39.
    t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t39->sval = t40.
    t9->load( ).
    APPEND t39 TO t9->items.
    t9->save( ).
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t43) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1090_761dcdeb1ada.
    IF t43 IS BOUND.
      CREATE OBJECT t42.
      t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t42->cval = t43.
    ENDIF.
    t9->load( ).
    APPEND t42 TO t9->items.
    t9->save( ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t46) = |*|.
    CREATE OBJECT t45.
    t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t45->sval = t46.
    t9->load( ).
    APPEND t45 TO t9->items.
    t9->save( ).
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    t47 = zcl_lnt_st_combi_module=>alt_prio( i_first = t4 i_second = t7 i_rest = t9 ).
    t1 = t47.
    DATA t51 TYPE REF TO zif_lnt_statement_runnable.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t55) = |[|.
    CREATE OBJECT t54.
    t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t54->sval = t55.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t64 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t65 TYPE REF TO object.
      t65 = t1.
      TRY.
          t62 ?= t65.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t62 IS NOT BOUND.
        TRY.
            t64 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t64 IS BOUND.
          t62 = t64->source( ).
        ENDIF.
        IF t62 IS NOT BOUND.
          CREATE OBJECT t62.
          t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t62->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t68) = |:|.
    CREATE OBJECT t67.
    t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t67->sval = t68.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t70.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    t71 = zcl_lnt_st_combi_module=>seq( i_first = t62 i_second = t67 i_rest = t70 ).
    t60 = t71.
    IF t60 IS BOUND.
      DATA t75 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t76 TYPE REF TO object.
      t76 = t60.
      TRY.
          t59 ?= t76.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t59 IS NOT BOUND.
        TRY.
            t75 ?= t60.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t75 IS BOUND.
          t59 = t75->source( ).
        ENDIF.
        IF t59 IS NOT BOUND.
          CREATE OBJECT t59.
          t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t59->oval = t60.
        ENDIF.
      ENDIF.
    ENDIF.
    t58 = zcl_lnt_st_combi_module=>opt_prio( i_first = t59 ).
    IF t58 IS BOUND.
      DATA t77 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t78 TYPE REF TO object.
      t78 = t58.
      TRY.
          t57 ?= t78.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t57 IS NOT BOUND.
        TRY.
            t77 ?= t58.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t77 IS BOUND.
          t57 = t77->source( ).
        ENDIF.
        IF t57 IS NOT BOUND.
          CREATE OBJECT t57.
          t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t57->oval = t58.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t80.
    t79 = t80.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t83) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1093_a2ba45eabd2a.
    IF t83 IS BOUND.
      CREATE OBJECT t82.
      t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t82->cval = t83.
    ENDIF.
    t79->load( ).
    APPEND t82 TO t79->items.
    t79->save( ).
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t86) = |]|.
    CREATE OBJECT t85.
    t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t85->sval = t86.
    t79->load( ).
    APPEND t85 TO t79->items.
    t79->save( ).
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    t87 = zcl_lnt_st_combi_module=>seq( i_first = t54 i_second = t57 i_rest = t79 ).
    t51 = t87.
    DATA t91 TYPE REF TO zif_lnt_statement_runnable.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t95) = |REDEFINE|.
    CREATE OBJECT t94.
    t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t94->sval = t95.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t98) = |ASSOCIATION|.
    CREATE OBJECT t97.
    t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t97->sval = t98.
    DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t100.
    t99 = t100.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t103) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    IF t103 IS BOUND.
      CREATE OBJECT t102.
      t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t102->cval = t103.
    ENDIF.
    t99->load( ).
    APPEND t102 TO t99->items.
    t99->save( ).
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t106 TYPE REF TO zif_lnt_statement_runnable.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t51 IS BOUND.
      DATA t109 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t110 TYPE REF TO object.
      t110 = t51.
      TRY.
          t107 ?= t110.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t107 IS NOT BOUND.
        TRY.
            t109 ?= t51.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t109 IS BOUND.
          t107 = t109->source( ).
        ENDIF.
        IF t107 IS NOT BOUND.
          CREATE OBJECT t107.
          t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t107->oval = t51.
        ENDIF.
      ENDIF.
    ENDIF.
    t106 = zcl_lnt_st_combi_module=>opt_prio( i_first = t107 ).
    IF t106 IS BOUND.
      DATA t111 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t112 TYPE REF TO object.
      t112 = t106.
      TRY.
          t105 ?= t112.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t105 IS NOT BOUND.
        TRY.
            t111 ?= t106.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t111 IS BOUND.
          t105 = t111->source( ).
        ENDIF.
        IF t105 IS NOT BOUND.
          CREATE OBJECT t105.
          t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t105->oval = t106.
        ENDIF.
      ENDIF.
    ENDIF.
    t99->load( ).
    APPEND t105 TO t99->items.
    t99->save( ).
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t117) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1091_2816df13f1ce.
    IF t117 IS BOUND.
      CREATE OBJECT t116.
      t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t116->cval = t117.
    ENDIF.
    t115 = zcl_lnt_st_combi_module=>opt( i_first = t116 ).
    IF t115 IS BOUND.
      DATA t118 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t119 TYPE REF TO object.
      t119 = t115.
      TRY.
          t114 ?= t119.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t114 IS NOT BOUND.
        TRY.
            t118 ?= t115.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t118 IS BOUND.
          t114 = t118->source( ).
        ENDIF.
        IF t114 IS NOT BOUND.
          CREATE OBJECT t114.
          t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t114->oval = t115.
        ENDIF.
      ENDIF.
    ENDIF.
    t99->load( ).
    APPEND t114 TO t99->items.
    t99->save( ).
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t122) = |REDIRECTED|.
    CREATE OBJECT t121.
    t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t121->sval = t122.
    t99->load( ).
    APPEND t121 TO t99->items.
    t99->save( ).
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t125) = |TO|.
    CREATE OBJECT t124.
    t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t124->sval = t125.
    t99->load( ).
    APPEND t124 TO t99->items.
    t99->save( ).
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t128 TYPE REF TO zif_lnt_statement_runnable.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t130 TYPE REF TO zif_lnt_statement_runnable.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t133 TYPE REF TO zif_lnt_statement_runnable.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t136) = |COMPOSITION|.
    CREATE OBJECT t135.
    t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t135->sval = t136.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t139) = |CHILD|.
    CREATE OBJECT t138.
    t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t138->sval = t139.
    DATA t141 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t141.
    DATA t142 TYPE REF TO zif_lnt_statement_runnable.
    t142 = zcl_lnt_st_combi_module=>seq( i_first = t135 i_second = t138 i_rest = t141 ).
    t133 = t142.
    IF t133 IS BOUND.
      DATA t146 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t147 TYPE REF TO object.
      t147 = t133.
      TRY.
          t132 ?= t147.
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
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t150) = |PARENT|.
    CREATE OBJECT t149.
    t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t149->sval = t150.
    DATA t152 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t152.
    DATA t153 TYPE REF TO zif_lnt_statement_runnable.
    t153 = zcl_lnt_st_combi_module=>alt_prio( i_first = t132 i_second = t149 i_rest = t152 ).
    t130 = t153.
    IF t130 IS BOUND.
      DATA t157 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t158 TYPE REF TO object.
      t158 = t130.
      TRY.
          t129 ?= t158.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t129 IS NOT BOUND.
        TRY.
            t157 ?= t130.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t157 IS BOUND.
          t129 = t157->source( ).
        ENDIF.
        IF t129 IS NOT BOUND.
          CREATE OBJECT t129.
          t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t129->oval = t130.
        ENDIF.
      ENDIF.
    ENDIF.
    t128 = zcl_lnt_st_combi_module=>opt_prio( i_first = t129 ).
    IF t128 IS BOUND.
      DATA t159 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t160 TYPE REF TO object.
      t160 = t128.
      TRY.
          t127 ?= t160.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t127 IS NOT BOUND.
        TRY.
            t159 ?= t128.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t159 IS BOUND.
          t127 = t159->source( ).
        ENDIF.
        IF t127 IS NOT BOUND.
          CREATE OBJECT t127.
          t127->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t127->oval = t128.
        ENDIF.
      ENDIF.
    ENDIF.
    t99->load( ).
    APPEND t127 TO t99->items.
    t99->save( ).
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t163) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t163 IS BOUND.
      CREATE OBJECT t162.
      t162->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t162->cval = t163.
    ENDIF.
    t99->load( ).
    APPEND t162 TO t99->items.
    t99->save( ).
    DATA t164 TYPE REF TO zif_lnt_statement_runnable.
    t164 = zcl_lnt_st_combi_module=>seq( i_first = t94 i_second = t97 i_rest = t99 ).
    t91 = t164.
    DATA t168 TYPE REF TO zif_lnt_statement_runnable.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t172) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1075_bb8c443f99f5.
    IF t172 IS BOUND.
      CREATE OBJECT t171.
      t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t171->cval = t172.
    ENDIF.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t175) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1081_610575257010.
    IF t175 IS BOUND.
      CREATE OBJECT t174.
      t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t174->cval = t175.
    ENDIF.
    DATA t177 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t177.
    DATA t178 TYPE REF TO zif_lnt_statement_runnable.
    t178 = zcl_lnt_st_combi_module=>seq( i_first = t171 i_second = t174 i_rest = t177 ).
    t168 = t178.
    DATA t182 TYPE REF TO zif_lnt_statement_runnable.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t168 IS BOUND.
      DATA t187 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t188 TYPE REF TO object.
      t188 = t168.
      TRY.
          t185 ?= t188.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t185 IS NOT BOUND.
        TRY.
            t187 ?= t168.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t187 IS BOUND.
          t185 = t187->source( ).
        ENDIF.
        IF t185 IS NOT BOUND.
          CREATE OBJECT t185.
          t185->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t185->oval = t168.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t191) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1081_610575257010.
    IF t191 IS BOUND.
      CREATE OBJECT t190.
      t190->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t190->cval = t191.
    ENDIF.
    DATA t192 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t193 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t193.
    t192 = t193.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t196) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    IF t196 IS BOUND.
      CREATE OBJECT t195.
      t195->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t195->cval = t196.
    ENDIF.
    t192->load( ).
    APPEND t195 TO t192->items.
    t192->save( ).
    DATA t197 TYPE REF TO zif_lnt_statement_runnable.
    t197 = zcl_lnt_st_combi_module=>alt_prio( i_first = t185 i_second = t190 i_rest = t192 ).
    t182 = t197.
    DATA t201 TYPE REF TO zif_lnt_statement_runnable.
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t205) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    IF t205 IS BOUND.
      CREATE OBJECT t204.
      t204->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t204->cval = t205.
    ENDIF.
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t208) = |=|.
    CREATE OBJECT t207.
    t207->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t207->sval = t208.
    DATA t209 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t210 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t210.
    t209 = t210.
    DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t213) = |>|.
    CREATE OBJECT t212.
    t212->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t212->sval = t213.
    t209->load( ).
    APPEND t212 TO t209->items.
    t209->save( ).
    DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t182 IS BOUND.
      DATA t217 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t218 TYPE REF TO object.
      t218 = t182.
      TRY.
          t215 ?= t218.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t215 IS NOT BOUND.
        TRY.
            t217 ?= t182.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t217 IS BOUND.
          t215 = t217->source( ).
        ENDIF.
        IF t215 IS NOT BOUND.
          CREATE OBJECT t215.
          t215->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t215->oval = t182.
        ENDIF.
      ENDIF.
    ENDIF.
    t209->load( ).
    APPEND t215 TO t209->items.
    t209->save( ).
    DATA t219 TYPE REF TO zif_lnt_statement_runnable.
    t219 = zcl_lnt_st_combi_module=>seq( i_first = t204 i_second = t207 i_rest = t209 ).
    t201 = t219.
    DATA t223 TYPE REF TO zif_lnt_statement_runnable.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t227) = |BIND|.
    CREATE OBJECT t226.
    t226->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t226->sval = t227.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t230) = |ASPECT|.
    CREATE OBJECT t229.
    t229->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t229->sval = t230.
    DATA t231 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t232 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t232.
    t231 = t232.
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t235) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t235 IS BOUND.
      CREATE OBJECT t234.
      t234->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t234->cval = t235.
    ENDIF.
    t231->load( ).
    APPEND t234 TO t231->items.
    t231->save( ).
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t238) = |(|.
    CREATE OBJECT t237.
    t237->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t237->sval = t238.
    t231->load( ).
    APPEND t237 TO t231->items.
    t231->save( ).
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t201 IS BOUND.
      DATA t242 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t243 TYPE REF TO object.
      t243 = t201.
      TRY.
          t240 ?= t243.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t240 IS NOT BOUND.
        TRY.
            t242 ?= t201.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t242 IS BOUND.
          t240 = t242->source( ).
        ENDIF.
        IF t240 IS NOT BOUND.
          CREATE OBJECT t240.
          t240->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t240->oval = t201.
        ENDIF.
      ENDIF.
    ENDIF.
    t231->load( ).
    APPEND t240 TO t231->items.
    t231->save( ).
    DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t246 TYPE REF TO zif_lnt_statement_runnable.
    DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t248 TYPE REF TO zif_lnt_statement_runnable.
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t251) = |,|.
    CREATE OBJECT t250.
    t250->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t250->sval = t251.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t201 IS BOUND.
      DATA t255 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t256 TYPE REF TO object.
      t256 = t201.
      TRY.
          t253 ?= t256.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t253 IS NOT BOUND.
        TRY.
            t255 ?= t201.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t255 IS BOUND.
          t253 = t255->source( ).
        ENDIF.
        IF t253 IS NOT BOUND.
          CREATE OBJECT t253.
          t253->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t253->oval = t201.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t258.
    DATA t259 TYPE REF TO zif_lnt_statement_runnable.
    t259 = zcl_lnt_st_combi_module=>seq( i_first = t250 i_second = t253 i_rest = t258 ).
    t248 = t259.
    IF t248 IS BOUND.
      DATA t263 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t264 TYPE REF TO object.
      t264 = t248.
      TRY.
          t247 ?= t264.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t247 IS NOT BOUND.
        TRY.
            t263 ?= t248.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t263 IS BOUND.
          t247 = t263->source( ).
        ENDIF.
        IF t247 IS NOT BOUND.
          CREATE OBJECT t247.
          t247->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t247->oval = t248.
        ENDIF.
      ENDIF.
    ENDIF.
    t246 = zcl_lnt_st_combi_module=>star_prio( i_first = t247 ).
    IF t246 IS BOUND.
      DATA t265 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t266 TYPE REF TO object.
      t266 = t246.
      TRY.
          t245 ?= t266.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t245 IS NOT BOUND.
        TRY.
            t265 ?= t246.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t265 IS BOUND.
          t245 = t265->source( ).
        ENDIF.
        IF t245 IS NOT BOUND.
          CREATE OBJECT t245.
          t245->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t245->oval = t246.
        ENDIF.
      ENDIF.
    ENDIF.
    t231->load( ).
    APPEND t245 TO t231->items.
    t231->save( ).
    DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t269) = |)|.
    CREATE OBJECT t268.
    t268->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t268->sval = t269.
    t231->load( ).
    APPEND t268 TO t231->items.
    t231->save( ).
    DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t272 TYPE REF TO zif_lnt_statement_runnable.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t274 TYPE REF TO zif_lnt_statement_runnable.
    DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t277) = |AS|.
    CREATE OBJECT t276.
    t276->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t276->sval = t277.
    DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t280) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t280 IS BOUND.
      CREATE OBJECT t279.
      t279->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t279->cval = t280.
    ENDIF.
    DATA t282 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t282.
    DATA t283 TYPE REF TO zif_lnt_statement_runnable.
    t283 = zcl_lnt_st_combi_module=>seq( i_first = t276 i_second = t279 i_rest = t282 ).
    t274 = t283.
    IF t274 IS BOUND.
      DATA t287 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t288 TYPE REF TO object.
      t288 = t274.
      TRY.
          t273 ?= t288.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t273 IS NOT BOUND.
        TRY.
            t287 ?= t274.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t287 IS BOUND.
          t273 = t287->source( ).
        ENDIF.
        IF t273 IS NOT BOUND.
          CREATE OBJECT t273.
          t273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t273->oval = t274.
        ENDIF.
      ENDIF.
    ENDIF.
    t272 = zcl_lnt_st_combi_module=>opt_prio( i_first = t273 ).
    IF t272 IS BOUND.
      DATA t289 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t290 TYPE REF TO object.
      t290 = t272.
      TRY.
          t271 ?= t290.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t271 IS NOT BOUND.
        TRY.
            t289 ?= t272.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t289 IS BOUND.
          t271 = t289->source( ).
        ENDIF.
        IF t271 IS NOT BOUND.
          CREATE OBJECT t271.
          t271->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t271->oval = t272.
        ENDIF.
      ENDIF.
    ENDIF.
    t231->load( ).
    APPEND t271 TO t231->items.
    t231->save( ).
    DATA t291 TYPE REF TO zif_lnt_statement_runnable.
    t291 = zcl_lnt_st_combi_module=>seq( i_first = t226 i_second = t229 i_rest = t231 ).
    t223 = t291.
    DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t298 TYPE REF TO zif_lnt_statement_runnable.
    DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t300) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
    IF t300 IS BOUND.
      CREATE OBJECT t299.
      t299->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t299->cval = t300.
    ENDIF.
    t298 = zcl_lnt_st_combi_module=>star( i_first = t299 ).
    IF t298 IS BOUND.
      DATA t301 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t302 TYPE REF TO object.
      t302 = t298.
      TRY.
          t297 ?= t302.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t297 IS NOT BOUND.
        TRY.
            t301 ?= t298.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t301 IS BOUND.
          t297 = t301->source( ).
        ENDIF.
        IF t297 IS NOT BOUND.
          CREATE OBJECT t297.
          t297->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t297->oval = t298.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t305 TYPE REF TO zif_lnt_statement_runnable.
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t307) = |DEFINE|.
    CREATE OBJECT t306.
    t306->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t306->sval = t307.
    t305 = zcl_lnt_st_combi_module=>opt( i_first = t306 ).
    IF t305 IS BOUND.
      DATA t308 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t309 TYPE REF TO object.
      t309 = t305.
      TRY.
          t304 ?= t309.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t304 IS NOT BOUND.
        TRY.
            t308 ?= t305.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t308 IS BOUND.
          t304 = t308->source( ).
        ENDIF.
        IF t304 IS NOT BOUND.
          CREATE OBJECT t304.
          t304->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t304->oval = t305.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t310 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t311 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t311.
    t310 = t311.
    DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t314 TYPE REF TO zif_lnt_statement_runnable.
    DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t316) = |TRANSIENT|.
    CREATE OBJECT t315.
    t315->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t315->sval = t316.
    t314 = zcl_lnt_st_combi_module=>opt( i_first = t315 ).
    IF t314 IS BOUND.
      DATA t317 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t318 TYPE REF TO object.
      t318 = t314.
      TRY.
          t313 ?= t318.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t313 IS NOT BOUND.
        TRY.
            t317 ?= t314.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t317 IS BOUND.
          t313 = t317->source( ).
        ENDIF.
        IF t313 IS NOT BOUND.
          CREATE OBJECT t313.
          t313->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t313->oval = t314.
        ENDIF.
      ENDIF.
    ENDIF.
    t310->load( ).
    APPEND t313 TO t310->items.
    t310->save( ).
    DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t321 TYPE REF TO zif_lnt_statement_runnable.
    DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t323) = |ROOT|.
    CREATE OBJECT t322.
    t322->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t322->sval = t323.
    t321 = zcl_lnt_st_combi_module=>opt( i_first = t322 ).
    IF t321 IS BOUND.
      DATA t324 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t325 TYPE REF TO object.
      t325 = t321.
      TRY.
          t320 ?= t325.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t320 IS NOT BOUND.
        TRY.
            t324 ?= t321.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t324 IS BOUND.
          t320 = t324->source( ).
        ENDIF.
        IF t320 IS NOT BOUND.
          CREATE OBJECT t320.
          t320->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t320->oval = t321.
        ENDIF.
      ENDIF.
    ENDIF.
    t310->load( ).
    APPEND t320 TO t310->items.
    t310->save( ).
    DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t328) = |VIEW|.
    CREATE OBJECT t327.
    t327->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t327->sval = t328.
    t310->load( ).
    APPEND t327 TO t310->items.
    t310->save( ).
    DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t331 TYPE REF TO zif_lnt_statement_runnable.
    DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t333 TYPE REF TO zcl_lnt_abap_release.
    DATA t334 TYPE REF TO zcl_lnt_abap_release.
    DATA t335 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t335 = zcl_lnt_version_module=>release_b8cd.
    DATA(t336) = |v755|.
    t334 = t335->get( p0 = t336 ).
    t333 = t334.
    IF t333 IS BOUND.
      DATA t337 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t338 TYPE REF TO object.
      t338 = t333.
      TRY.
          t332 ?= t338.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t332 IS NOT BOUND.
        TRY.
            t337 ?= t333.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t337 IS BOUND.
          t332 = t337->source( ).
        ENDIF.
        IF t332 IS NOT BOUND.
          CREATE OBJECT t332.
          t332->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t332->oval = t333.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t340 TYPE REF TO zif_lnt_statement_runnable.
    DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t342) = |ENTITY|.
    CREATE OBJECT t341.
    t341->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t341->sval = t342.
    t340 = zcl_lnt_st_combi_module=>opt( i_first = t341 ).
    IF t340 IS BOUND.
      DATA t343 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t344 TYPE REF TO object.
      t344 = t340.
      TRY.
          t339 ?= t344.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t339 IS NOT BOUND.
        TRY.
            t343 ?= t340.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t343 IS BOUND.
          t339 = t343->source( ).
        ENDIF.
        IF t339 IS NOT BOUND.
          CREATE OBJECT t339.
          t339->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t339->oval = t340.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t345 TYPE REF TO zcl_lnt_iver_options.
    t331 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t332 i_first = t339 i_opts = t345 ).
    IF t331 IS BOUND.
      DATA t346 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t347 TYPE REF TO object.
      t347 = t331.
      TRY.
          t330 ?= t347.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t330 IS NOT BOUND.
        TRY.
            t346 ?= t331.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t346 IS BOUND.
          t330 = t346->source( ).
        ENDIF.
        IF t330 IS NOT BOUND.
          CREATE OBJECT t330.
          t330->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t330->oval = t331.
        ENDIF.
      ENDIF.
    ENDIF.
    t310->load( ).
    APPEND t330 TO t310->items.
    t310->save( ).
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t350) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t350 IS BOUND.
      CREATE OBJECT t349.
      t349->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t349->cval = t350.
    ENDIF.
    t310->load( ).
    APPEND t349 TO t310->items.
    t310->save( ).
    DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t353 TYPE REF TO zif_lnt_statement_runnable.
    DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t355) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1103_2caae547c926.
    IF t355 IS BOUND.
      CREATE OBJECT t354.
      t354->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t354->cval = t355.
    ENDIF.
    t353 = zcl_lnt_st_combi_module=>opt( i_first = t354 ).
    IF t353 IS BOUND.
      DATA t356 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t357 TYPE REF TO object.
      t357 = t353.
      TRY.
          t352 ?= t357.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t352 IS NOT BOUND.
        TRY.
            t356 ?= t353.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t356 IS BOUND.
          t352 = t356->source( ).
        ENDIF.
        IF t352 IS NOT BOUND.
          CREATE OBJECT t352.
          t352->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t352->oval = t353.
        ENDIF.
      ENDIF.
    ENDIF.
    t310->load( ).
    APPEND t352 TO t310->items.
    t310->save( ).
    DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t360 TYPE REF TO zif_lnt_statement_runnable.
    DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t362) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1097_1528186a58df.
    IF t362 IS BOUND.
      CREATE OBJECT t361.
      t361->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t361->cval = t362.
    ENDIF.
    t360 = zcl_lnt_st_combi_module=>opt( i_first = t361 ).
    IF t360 IS BOUND.
      DATA t363 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t364 TYPE REF TO object.
      t364 = t360.
      TRY.
          t359 ?= t364.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t359 IS NOT BOUND.
        TRY.
            t363 ?= t360.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t363 IS BOUND.
          t359 = t363->source( ).
        ENDIF.
        IF t359 IS NOT BOUND.
          CREATE OBJECT t359.
          t359->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t359->oval = t360.
        ENDIF.
      ENDIF.
    ENDIF.
    t310->load( ).
    APPEND t359 TO t310->items.
    t310->save( ).
    DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t367) = |AS PROJECTION ON|.
    CREATE OBJECT t366.
    t366->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t366->sval = t367.
    t310->load( ).
    APPEND t366 TO t310->items.
    t310->save( ).
    DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t370) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t370 IS BOUND.
      CREATE OBJECT t369.
      t369->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t369->cval = t370.
    ENDIF.
    t310->load( ).
    APPEND t369 TO t310->items.
    t310->save( ).
    DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t373 TYPE REF TO zif_lnt_statement_runnable.
    DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t375) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1101_9cef074aa21b.
    IF t375 IS BOUND.
      CREATE OBJECT t374.
      t374->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t374->cval = t375.
    ENDIF.
    t373 = zcl_lnt_st_combi_module=>opt( i_first = t374 ).
    IF t373 IS BOUND.
      DATA t376 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t377 TYPE REF TO object.
      t377 = t373.
      TRY.
          t372 ?= t377.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t372 IS NOT BOUND.
        TRY.
            t376 ?= t373.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t376 IS BOUND.
          t372 = t376->source( ).
        ENDIF.
        IF t372 IS NOT BOUND.
          CREATE OBJECT t372.
          t372->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t372->oval = t373.
        ENDIF.
      ENDIF.
    ENDIF.
    t310->load( ).
    APPEND t372 TO t310->items.
    t310->save( ).
    DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t380 TYPE REF TO zif_lnt_statement_runnable.
    DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t382) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1091_2816df13f1ce.
    IF t382 IS BOUND.
      CREATE OBJECT t381.
      t381->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t381->cval = t382.
    ENDIF.
    t380 = zcl_lnt_st_combi_module=>opt( i_first = t381 ).
    IF t380 IS BOUND.
      DATA t383 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t384 TYPE REF TO object.
      t384 = t380.
      TRY.
          t379 ?= t384.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t379 IS NOT BOUND.
        TRY.
            t383 ?= t380.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t383 IS BOUND.
          t379 = t383->source( ).
        ENDIF.
        IF t379 IS NOT BOUND.
          CREATE OBJECT t379.
          t379->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t379->oval = t380.
        ENDIF.
      ENDIF.
    ENDIF.
    t310->load( ).
    APPEND t379 TO t310->items.
    t310->save( ).
    DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t387 TYPE REF TO zif_lnt_statement_runnable.
    DATA t388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t389 TYPE REF TO zif_lnt_statement_runnable.
    DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t392) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1095_9dff9bf77964.
    IF t392 IS BOUND.
      CREATE OBJECT t391.
      t391->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t391->cval = t392.
    ENDIF.
    DATA t394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t91 IS BOUND.
      DATA t396 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t397 TYPE REF TO object.
      t397 = t91.
      TRY.
          t394 ?= t397.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t394 IS NOT BOUND.
        TRY.
            t396 ?= t91.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t396 IS BOUND.
          t394 = t396->source( ).
        ENDIF.
        IF t394 IS NOT BOUND.
          CREATE OBJECT t394.
          t394->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t394->oval = t91.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t399 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t399.
    DATA t400 TYPE REF TO zif_lnt_statement_runnable.
    t400 = zcl_lnt_st_combi_module=>alt_prio( i_first = t391 i_second = t394 i_rest = t399 ).
    t389 = t400.
    IF t389 IS BOUND.
      DATA t404 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t405 TYPE REF TO object.
      t405 = t389.
      TRY.
          t388 ?= t405.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t388 IS NOT BOUND.
        TRY.
            t404 ?= t389.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t404 IS BOUND.
          t388 = t404->source( ).
        ENDIF.
        IF t388 IS NOT BOUND.
          CREATE OBJECT t388.
          t388->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t388->oval = t389.
        ENDIF.
      ENDIF.
    ENDIF.
    t387 = zcl_lnt_st_combi_module=>star( i_first = t388 ).
    IF t387 IS BOUND.
      DATA t406 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t407 TYPE REF TO object.
      t407 = t387.
      TRY.
          t386 ?= t407.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t386 IS NOT BOUND.
        TRY.
            t406 ?= t387.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t406 IS BOUND.
          t386 = t406->source( ).
        ENDIF.
        IF t386 IS NOT BOUND.
          CREATE OBJECT t386.
          t386->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t386->oval = t387.
        ENDIF.
      ENDIF.
    ENDIF.
    t310->load( ).
    APPEND t386 TO t310->items.
    t310->save( ).
    DATA t409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t410 TYPE REF TO zif_lnt_statement_runnable.
    DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t223 IS BOUND.
      DATA t413 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t414 TYPE REF TO object.
      t414 = t223.
      TRY.
          t411 ?= t414.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t411 IS NOT BOUND.
        TRY.
            t413 ?= t223.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t413 IS BOUND.
          t411 = t413->source( ).
        ENDIF.
        IF t411 IS NOT BOUND.
          CREATE OBJECT t411.
          t411->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t411->oval = t223.
        ENDIF.
      ENDIF.
    ENDIF.
    t410 = zcl_lnt_st_combi_module=>star_prio( i_first = t411 ).
    IF t410 IS BOUND.
      DATA t415 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t416 TYPE REF TO object.
      t416 = t410.
      TRY.
          t409 ?= t416.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t409 IS NOT BOUND.
        TRY.
            t415 ?= t410.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t415 IS BOUND.
          t409 = t415->source( ).
        ENDIF.
        IF t409 IS NOT BOUND.
          CREATE OBJECT t409.
          t409->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t409->oval = t410.
        ENDIF.
      ENDIF.
    ENDIF.
    t310->load( ).
    APPEND t409 TO t310->items.
    t310->save( ).
    DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t419 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t420) = |\{|.
    t419 = zcl_lnt_st_combi_module=>str( i_s = t420 ).
    IF t419 IS BOUND.
      DATA t421 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t422 TYPE REF TO object.
      t422 = t419.
      TRY.
          t418 ?= t422.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t418 IS NOT BOUND.
        TRY.
            t421 ?= t419.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t421 IS BOUND.
          t418 = t421->source( ).
        ENDIF.
        IF t418 IS NOT BOUND.
          CREATE OBJECT t418.
          t418->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t418->oval = t419.
        ENDIF.
      ENDIF.
    ENDIF.
    t310->load( ).
    APPEND t418 TO t310->items.
    t310->save( ).
    DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t425 TYPE REF TO zif_lnt_statement_runnable.
    DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t428) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1085_7cdb0f50a2e1.
    IF t428 IS BOUND.
      CREATE OBJECT t427.
      t427->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t427->cval = t428.
    ENDIF.
    DATA t430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t431 TYPE REF TO zif_lnt_statement_runnable.
    DATA t432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t433 TYPE REF TO zif_lnt_statement_runnable.
    DATA t435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t436) = |,|.
    CREATE OBJECT t435.
    t435->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t435->sval = t436.
    DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t439) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1085_7cdb0f50a2e1.
    IF t439 IS BOUND.
      CREATE OBJECT t438.
      t438->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t438->cval = t439.
    ENDIF.
    DATA t441 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t441.
    DATA t442 TYPE REF TO zif_lnt_statement_runnable.
    t442 = zcl_lnt_st_combi_module=>seq( i_first = t435 i_second = t438 i_rest = t441 ).
    t433 = t442.
    IF t433 IS BOUND.
      DATA t446 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t447 TYPE REF TO object.
      t447 = t433.
      TRY.
          t432 ?= t447.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t432 IS NOT BOUND.
        TRY.
            t446 ?= t433.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t446 IS BOUND.
          t432 = t446->source( ).
        ENDIF.
        IF t432 IS NOT BOUND.
          CREATE OBJECT t432.
          t432->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t432->oval = t433.
        ENDIF.
      ENDIF.
    ENDIF.
    t431 = zcl_lnt_st_combi_module=>star( i_first = t432 ).
    IF t431 IS BOUND.
      DATA t448 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t449 TYPE REF TO object.
      t449 = t431.
      TRY.
          t430 ?= t449.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t430 IS NOT BOUND.
        TRY.
            t448 ?= t431.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t448 IS BOUND.
          t430 = t448->source( ).
        ENDIF.
        IF t430 IS NOT BOUND.
          CREATE OBJECT t430.
          t430->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t430->oval = t431.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t450 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t451 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t451.
    t450 = t451.
    DATA t453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t454 TYPE REF TO zif_lnt_statement_runnable.
    DATA t455 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t456) = |,|.
    CREATE OBJECT t455.
    t455->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t455->sval = t456.
    t454 = zcl_lnt_st_combi_module=>opt( i_first = t455 ).
    IF t454 IS BOUND.
      DATA t457 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t458 TYPE REF TO object.
      t458 = t454.
      TRY.
          t453 ?= t458.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t453 IS NOT BOUND.
        TRY.
            t457 ?= t454.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t457 IS BOUND.
          t453 = t457->source( ).
        ENDIF.
        IF t453 IS NOT BOUND.
          CREATE OBJECT t453.
          t453->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t453->oval = t454.
        ENDIF.
      ENDIF.
    ENDIF.
    t450->load( ).
    APPEND t453 TO t450->items.
    t450->save( ).
    DATA t459 TYPE REF TO zif_lnt_statement_runnable.
    t459 = zcl_lnt_st_combi_module=>seq( i_first = t427 i_second = t430 i_rest = t450 ).
    t425 = t459.
    IF t425 IS BOUND.
      DATA t463 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t464 TYPE REF TO object.
      t464 = t425.
      TRY.
          t424 ?= t464.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t424 IS NOT BOUND.
        TRY.
            t463 ?= t425.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t463 IS BOUND.
          t424 = t463->source( ).
        ENDIF.
        IF t424 IS NOT BOUND.
          CREATE OBJECT t424.
          t424->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t424->oval = t425.
        ENDIF.
      ENDIF.
    ENDIF.
    t310->load( ).
    APPEND t424 TO t310->items.
    t310->save( ).
    DATA t466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t467 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t468) = |\}|.
    t467 = zcl_lnt_st_combi_module=>str( i_s = t468 ).
    IF t467 IS BOUND.
      DATA t469 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t470 TYPE REF TO object.
      t470 = t467.
      TRY.
          t466 ?= t470.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t466 IS NOT BOUND.
        TRY.
            t469 ?= t467.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t469 IS BOUND.
          t466 = t469->source( ).
        ENDIF.
        IF t466 IS NOT BOUND.
          CREATE OBJECT t466.
          t466->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t466->oval = t467.
        ENDIF.
      ENDIF.
    ENDIF.
    t310->load( ).
    APPEND t466 TO t310->items.
    t310->save( ).
    DATA t472 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t473 TYPE REF TO zif_lnt_statement_runnable.
    DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t475) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1104_02fd7d49de66.
    IF t475 IS BOUND.
      CREATE OBJECT t474.
      t474->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t474->cval = t475.
    ENDIF.
    t473 = zcl_lnt_st_combi_module=>opt( i_first = t474 ).
    IF t473 IS BOUND.
      DATA t476 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t477 TYPE REF TO object.
      t477 = t473.
      TRY.
          t472 ?= t477.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t472 IS NOT BOUND.
        TRY.
            t476 ?= t473.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t476 IS BOUND.
          t472 = t476->source( ).
        ENDIF.
        IF t472 IS NOT BOUND.
          CREATE OBJECT t472.
          t472->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t472->oval = t473.
        ENDIF.
      ENDIF.
    ENDIF.
    t310->load( ).
    APPEND t472 TO t310->items.
    t310->save( ).
    DATA t479 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t480 TYPE REF TO zif_lnt_statement_runnable.
    DATA t481 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t482) = |;|.
    CREATE OBJECT t481.
    t481->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t481->sval = t482.
    t480 = zcl_lnt_st_combi_module=>opt( i_first = t481 ).
    IF t480 IS BOUND.
      DATA t483 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t484 TYPE REF TO object.
      t484 = t480.
      TRY.
          t479 ?= t484.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t479 IS NOT BOUND.
        TRY.
            t483 ?= t480.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t483 IS BOUND.
          t479 = t483->source( ).
        ENDIF.
        IF t479 IS NOT BOUND.
          CREATE OBJECT t479.
          t479->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t479->oval = t480.
        ENDIF.
      ENDIF.
    ENDIF.
    t310->load( ).
    APPEND t479 TO t310->items.
    t310->save( ).
    DATA t485 TYPE REF TO zif_lnt_statement_runnable.
    t485 = zcl_lnt_st_combi_module=>seq( i_first = t297 i_second = t304 i_rest = t310 ).
    result = t485.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1105_a133f02ea9f8.
  ENDMETHOD.
ENDCLASS.
