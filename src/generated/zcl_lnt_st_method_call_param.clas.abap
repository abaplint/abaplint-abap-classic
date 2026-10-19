* TS: src/abap/2_statements/expressions/method_call_param.ts:7:1 MethodCallParam
CLASS zcl_lnt_st_method_call_param DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_method_call_param IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t4->cval = t5.
    ENDIF.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d225_0eec1dcc9b8a.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t9.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470.
    IF t13 IS BOUND.
      CREATE OBJECT t12.
      t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t12->cval = t13.
    ENDIF.
    t9->load( ).
    APPEND t12 TO t9->items.
    t9->save( ).
    t1 = zcl_lnt_st_combi_module=>alt( i_first = t4 i_second = t7 i_rest = t9 ).
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de.
    t22 = zcl_lnt_st_combi_module=>tok( i_t = t23 ).
    IF t22 IS BOUND.
      DATA t24 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t25 TYPE REF TO object.
      t25 = t22.
      TRY.
          t21 ?= t25.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t21 IS NOT BOUND.
        TRY.
            t24 ?= t22.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t24 IS BOUND.
          t21 = t24->source( ).
        ENDIF.
        IF t21 IS NOT BOUND.
          CREATE OBJECT t21.
          t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t21->oval = t22.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t29) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t28 = zcl_lnt_st_combi_module=>tok( i_t = t29 ).
    IF t28 IS BOUND.
      DATA t30 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t31 TYPE REF TO object.
      t31 = t28.
      TRY.
          t27 ?= t31.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t27 IS NOT BOUND.
        TRY.
            t30 ?= t28.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t30 IS BOUND.
          t27 = t30->source( ).
        ENDIF.
        IF t27 IS NOT BOUND.
          CREATE OBJECT t27.
          t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t27->oval = t28.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t32.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d29_f2ed5131cb71b6.
    t36 = zcl_lnt_st_combi_module=>tok( i_t = t37 ).
    IF t36 IS BOUND.
      DATA t38 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t39 TYPE REF TO object.
      t39 = t36.
      TRY.
          t35 ?= t39.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t35 IS NOT BOUND.
        TRY.
            t38 ?= t36.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t38 IS BOUND.
          t35 = t38->source( ).
        ENDIF.
        IF t35 IS NOT BOUND.
          CREATE OBJECT t35.
          t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t35->oval = t36.
        ENDIF.
      ENDIF.
    ENDIF.
    t32->load( ).
    APPEND t35 TO t32->items.
    t32->save( ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t43) = zlnt_runtime_desc_78196487750d=>zlnt_member_d30_2f4abb22e3612e.
    t42 = zcl_lnt_st_combi_module=>tok( i_t = t43 ).
    IF t42 IS BOUND.
      DATA t44 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t45 TYPE REF TO object.
      t45 = t42.
      TRY.
          t41 ?= t45.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t41 IS NOT BOUND.
        TRY.
            t44 ?= t42.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t44 IS BOUND.
          t41 = t44->source( ).
        ENDIF.
        IF t41 IS NOT BOUND.
          CREATE OBJECT t41.
          t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t41->oval = t42.
        ENDIF.
      ENDIF.
    ENDIF.
    t32->load( ).
    APPEND t41 TO t32->items.
    t32->save( ).
    t18 = zcl_lnt_st_combi_module=>alt_prio( i_first = t21 i_second = t27 i_rest = t32 ).
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t54 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t55) = zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de.
    t54 = zcl_lnt_st_combi_module=>tok( i_t = t55 ).
    IF t54 IS BOUND.
      DATA t56 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t57 TYPE REF TO object.
      t57 = t54.
      TRY.
          t53 ?= t57.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t53 IS NOT BOUND.
        TRY.
            t56 ?= t54.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t56 IS BOUND.
          t53 = t56->source( ).
        ENDIF.
        IF t53 IS NOT BOUND.
          CREATE OBJECT t53.
          t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t53->oval = t54.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t61) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t60 = zcl_lnt_st_combi_module=>tok( i_t = t61 ).
    IF t60 IS BOUND.
      DATA t62 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t63 TYPE REF TO object.
      t63 = t60.
      TRY.
          t59 ?= t63.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t59 IS NOT BOUND.
        TRY.
            t62 ?= t60.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t62 IS BOUND.
          t59 = t62->source( ).
        ENDIF.
        IF t59 IS NOT BOUND.
          CREATE OBJECT t59.
          t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t59->oval = t60.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t65.
    t50 = zcl_lnt_st_combi_module=>alt_prio( i_first = t53 i_second = t59 i_rest = t65 ).
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t77 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t78) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t77 = zcl_lnt_st_combi_module=>tok( i_t = t78 ).
    IF t77 IS BOUND.
      DATA t79 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t80 TYPE REF TO object.
      t80 = t77.
      TRY.
          t76 ?= t80.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t76 IS NOT BOUND.
        TRY.
            t79 ?= t77.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t79 IS BOUND.
          t76 = t79->source( ).
        ENDIF.
        IF t76 IS NOT BOUND.
          CREATE OBJECT t76.
          t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t76->oval = t77.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t84 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t85 TYPE REF TO object.
      t85 = t1.
      TRY.
          t82 ?= t85.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t82 IS NOT BOUND.
        TRY.
            t84 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t84 IS BOUND.
          t82 = t84->source( ).
        ENDIF.
        IF t82 IS NOT BOUND.
          CREATE OBJECT t82.
          t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t82->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t86.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t18 IS BOUND.
      DATA t91 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t92 TYPE REF TO object.
      t92 = t18.
      TRY.
          t89 ?= t92.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t89 IS NOT BOUND.
        TRY.
            t91 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t91 IS BOUND.
          t89 = t91->source( ).
        ENDIF.
        IF t89 IS NOT BOUND.
          CREATE OBJECT t89.
          t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t89->oval = t18.
        ENDIF.
      ENDIF.
    ENDIF.
    t86->load( ).
    APPEND t89 TO t86->items.
    t86->save( ).
    t74 = zcl_lnt_st_combi_module=>seq( i_first = t76 i_second = t82 i_rest = t86 ).
    IF t74 IS BOUND.
      DATA t97 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t98 TYPE REF TO object.
      t98 = t74.
      TRY.
          t73 ?= t98.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t73 IS NOT BOUND.
        TRY.
            t97 ?= t74.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t97 IS BOUND.
          t73 = t97->source( ).
        ENDIF.
        IF t73 IS NOT BOUND.
          CREATE OBJECT t73.
          t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t73->oval = t74.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t101 TYPE REF TO zif_lnt_statement_runnable.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t105) = zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4.
    t104 = zcl_lnt_st_combi_module=>tok( i_t = t105 ).
    IF t104 IS BOUND.
      DATA t106 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t107 TYPE REF TO object.
      t107 = t104.
      TRY.
          t103 ?= t107.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t103 IS NOT BOUND.
        TRY.
            t106 ?= t104.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t106 IS BOUND.
          t103 = t106->source( ).
        ENDIF.
        IF t103 IS NOT BOUND.
          CREATE OBJECT t103.
          t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t103->oval = t104.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t111 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t112 TYPE REF TO object.
      t112 = t1.
      TRY.
          t109 ?= t112.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t109 IS NOT BOUND.
        TRY.
            t111 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t111 IS BOUND.
          t109 = t111->source( ).
        ENDIF.
        IF t109 IS NOT BOUND.
          CREATE OBJECT t109.
          t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t109->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t113.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t50 IS BOUND.
      DATA t118 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t119 TYPE REF TO object.
      t119 = t50.
      TRY.
          t116 ?= t119.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t116 IS NOT BOUND.
        TRY.
            t118 ?= t50.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t118 IS BOUND.
          t116 = t118->source( ).
        ENDIF.
        IF t116 IS NOT BOUND.
          CREATE OBJECT t116.
          t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t116->oval = t50.
        ENDIF.
      ENDIF.
    ENDIF.
    t113->load( ).
    APPEND t116 TO t113->items.
    t113->save( ).
    t101 = zcl_lnt_st_combi_module=>seq( i_first = t103 i_second = t109 i_rest = t113 ).
    IF t101 IS BOUND.
      DATA t124 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t125 TYPE REF TO object.
      t125 = t101.
      TRY.
          t100 ?= t125.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t100 IS NOT BOUND.
        TRY.
            t124 ?= t101.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t124 IS BOUND.
          t100 = t124->source( ).
        ENDIF.
        IF t100 IS NOT BOUND.
          CREATE OBJECT t100.
          t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t100->oval = t101.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t126.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t130 TYPE REF TO zif_lnt_statement_runnable.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t133 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t134) = zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4.
    t133 = zcl_lnt_st_combi_module=>tok( i_t = t134 ).
    IF t133 IS BOUND.
      DATA t135 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t136 TYPE REF TO object.
      t136 = t133.
      TRY.
          t132 ?= t136.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t132 IS NOT BOUND.
        TRY.
            t135 ?= t133.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t135 IS BOUND.
          t132 = t135->source( ).
        ENDIF.
        IF t132 IS NOT BOUND.
          CREATE OBJECT t132.
          t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t132->oval = t133.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t139) = zlnt_runtime_desc_78196487750d=>zlnt_member_d140_ecb7e995244f.
    IF t139 IS BOUND.
      CREATE OBJECT t138.
      t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t138->cval = t139.
    ENDIF.
    DATA t140 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t140.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t144 TYPE REF TO zif_lnt_statement_runnable.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t147 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t148) = zlnt_runtime_desc_78196487750d=>zlnt_member_d29_f2ed5131cb71b6.
    t147 = zcl_lnt_st_combi_module=>tok( i_t = t148 ).
    IF t147 IS BOUND.
      DATA t149 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t150 TYPE REF TO object.
      t150 = t147.
      TRY.
          t146 ?= t150.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t146 IS NOT BOUND.
        TRY.
            t149 ?= t147.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t149 IS BOUND.
          t146 = t149->source( ).
        ENDIF.
        IF t146 IS NOT BOUND.
          CREATE OBJECT t146.
          t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t146->oval = t147.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t153 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t154) = zlnt_runtime_desc_78196487750d=>zlnt_member_d30_2f4abb22e3612e.
    t153 = zcl_lnt_st_combi_module=>tok( i_t = t154 ).
    IF t153 IS BOUND.
      DATA t155 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t156 TYPE REF TO object.
      t156 = t153.
      TRY.
          t152 ?= t156.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t152 IS NOT BOUND.
        TRY.
            t155 ?= t153.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t155 IS BOUND.
          t152 = t155->source( ).
        ENDIF.
        IF t152 IS NOT BOUND.
          CREATE OBJECT t152.
          t152->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t152->oval = t153.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t158 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t158.
    t144 = zcl_lnt_st_combi_module=>alt_prio( i_first = t146 i_second = t152 i_rest = t158 ).
    IF t144 IS BOUND.
      DATA t163 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t164 TYPE REF TO object.
      t164 = t144.
      TRY.
          t143 ?= t164.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t143 IS NOT BOUND.
        TRY.
            t163 ?= t144.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t163 IS BOUND.
          t143 = t163->source( ).
        ENDIF.
        IF t143 IS NOT BOUND.
          CREATE OBJECT t143.
          t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t143->oval = t144.
        ENDIF.
      ENDIF.
    ENDIF.
    t140->load( ).
    APPEND t143 TO t140->items.
    t140->save( ).
    t130 = zcl_lnt_st_combi_module=>seq( i_first = t132 i_second = t138 i_rest = t140 ).
    IF t130 IS BOUND.
      DATA t169 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t170 TYPE REF TO object.
      t170 = t130.
      TRY.
          t129 ?= t170.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t129 IS NOT BOUND.
        TRY.
            t169 ?= t130.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t169 IS BOUND.
          t129 = t169->source( ).
        ENDIF.
        IF t129 IS NOT BOUND.
          CREATE OBJECT t129.
          t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t129->oval = t130.
        ENDIF.
      ENDIF.
    ENDIF.
    t126->load( ).
    APPEND t129 TO t126->items.
    t126->save( ).
    result = zcl_lnt_st_combi_module=>alt_prio( i_first = t73 i_second = t100 i_rest = t126 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d220_2984eb665ddb.
  ENDMETHOD.
ENDCLASS.
