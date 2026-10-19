* TS: src/abap/2_statements/expressions/sql_function.ts:354:1 SQLFunction
CLASS zcl_lnt_sql_function DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS fn_fn IMPORTING i_comma_param TYPE REF TO zif_lnt_statement_runnable i_name TYPE string i_params_4c59 TYPE f i_v TYPE REF TO zcl_lnt_abap_release RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    METHODS fn_named_fn IMPORTING i_abap_only TYPE REF TO zif_lnt_statement_runnable i_name TYPE string i_v TYPE REF TO zcl_lnt_abap_release i_params_4c59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO
    zif_lnt_statement_runnable.
    METHODS fn_value_for IMPORTING i_abap_only TYPE REF TO zif_lnt_statement_runnable i_p TYPE REF TO zcl_lnt_sql_named_param RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_function IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = |CHAR|.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = t8.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t13 TYPE REF TO zif_lnt_statement_runnable.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t16 = zcl_lnt_st_combi_module=>tok( i_t = t17 ).
    IF t16 IS BOUND.
      DATA t18 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t19 TYPE REF TO object.
      t19 = t16.
      TRY.
          t15 ?= t19.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t15 IS NOT BOUND.
        TRY.
            t18 ?= t16.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t18 IS BOUND.
          t15 = t18->source( ).
        ENDIF.
        IF t15 IS NOT BOUND.
          CREATE OBJECT t15.
          t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t15->oval = t16.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d108_ef0500b17c81.
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t21->cval = t22.
    ENDIF.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t24.
    t23 = t24.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t27 = zcl_lnt_st_combi_module=>tok( i_t = t28 ).
    IF t27 IS BOUND.
      DATA t29 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t30 TYPE REF TO object.
      t30 = t27.
      TRY.
          t26 ?= t30.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t26 IS NOT BOUND.
        TRY.
            t29 ?= t27.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t29 IS BOUND.
          t26 = t29->source( ).
        ENDIF.
        IF t26 IS NOT BOUND.
          CREATE OBJECT t26.
          t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t26->oval = t27.
        ENDIF.
      ENDIF.
    ENDIF.
    t23->load( ).
    APPEND t26 TO t23->items.
    t23->save( ).
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    t31 = zcl_lnt_st_combi_module=>seq( i_first = t15 i_second = t21 i_rest = t23 ).
    t13 = t31.
    IF t13 IS BOUND.
      DATA t35 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t36 TYPE REF TO object.
      t36 = t13.
      TRY.
          t12 ?= t36.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t12 IS NOT BOUND.
        TRY.
            t35 ?= t13.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t35 IS BOUND.
          t12 = t35->source( ).
        ENDIF.
        IF t12 IS NOT BOUND.
          CREATE OBJECT t12.
          t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t12->oval = t13.
        ENDIF.
      ENDIF.
    ENDIF.
    t11 = zcl_lnt_st_combi_module=>opt_prio( i_first = t12 ).
    IF t11 IS BOUND.
      DATA t37 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t38 TYPE REF TO object.
      t38 = t11.
      TRY.
          t10 ?= t38.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t10 IS NOT BOUND.
        TRY.
            t37 ?= t11.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t37 IS BOUND.
          t10 = t37->source( ).
        ENDIF.
        IF t10 IS NOT BOUND.
          CREATE OBJECT t10.
          t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t10->oval = t11.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t40.
    DATA t41 TYPE REF TO zif_lnt_statement_runnable.
    t41 = zcl_lnt_st_combi_module=>seq( i_first = t7 i_second = t10 i_rest = t40 ).
    t5 = t41.
    IF t5 IS BOUND.
      DATA t45 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t46 TYPE REF TO object.
      t46 = t5.
      TRY.
          t4 ?= t46.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t45 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t45 IS BOUND.
          t4 = t45->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t52) = |DEC|.
    CREATE OBJECT t51.
    t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t51->sval = t52.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t56) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t55 = zcl_lnt_st_combi_module=>tok( i_t = t56 ).
    IF t55 IS BOUND.
      DATA t57 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t58 TYPE REF TO object.
      t58 = t55.
      TRY.
          t54 ?= t58.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t54 IS NOT BOUND.
        TRY.
            t57 ?= t55.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t57 IS BOUND.
          t54 = t57->source( ).
        ENDIF.
        IF t54 IS NOT BOUND.
          CREATE OBJECT t54.
          t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t54->oval = t55.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t60.
    t59 = t60.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t63) = zlnt_runtime_desc_78196487750d=>zlnt_member_d108_ef0500b17c81.
    IF t63 IS BOUND.
      CREATE OBJECT t62.
      t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t62->cval = t63.
    ENDIF.
    t59->load( ).
    APPEND t62 TO t59->items.
    t59->save( ).
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t66) = |,|.
    CREATE OBJECT t65.
    t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t65->sval = t66.
    t59->load( ).
    APPEND t65 TO t59->items.
    t59->save( ).
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t69) = zlnt_runtime_desc_78196487750d=>zlnt_member_d108_ef0500b17c81.
    IF t69 IS BOUND.
      CREATE OBJECT t68.
      t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t68->cval = t69.
    ENDIF.
    t59->load( ).
    APPEND t68 TO t59->items.
    t59->save( ).
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t73) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t72 = zcl_lnt_st_combi_module=>tok( i_t = t73 ).
    IF t72 IS BOUND.
      DATA t74 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t75 TYPE REF TO object.
      t75 = t72.
      TRY.
          t71 ?= t75.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t71 IS NOT BOUND.
        TRY.
            t74 ?= t72.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t74 IS BOUND.
          t71 = t74->source( ).
        ENDIF.
        IF t71 IS NOT BOUND.
          CREATE OBJECT t71.
          t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t71->oval = t72.
        ENDIF.
      ENDIF.
    ENDIF.
    t59->load( ).
    APPEND t71 TO t59->items.
    t59->save( ).
    DATA t76 TYPE REF TO zif_lnt_statement_runnable.
    t76 = zcl_lnt_st_combi_module=>seq( i_first = t51 i_second = t54 i_rest = t59 ).
    t49 = t76.
    IF t49 IS BOUND.
      DATA t80 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t81 TYPE REF TO object.
      t81 = t49.
      TRY.
          t48 ?= t81.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t48 IS NOT BOUND.
        TRY.
            t80 ?= t49.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t80 IS BOUND.
          t48 = t80->source( ).
        ENDIF.
        IF t48 IS NOT BOUND.
          CREATE OBJECT t48.
          t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t48->oval = t49.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t83.
    t82 = t83.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t89) = |NUMC|.
    CREATE OBJECT t88.
    t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t88->sval = t89.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t92 TYPE REF TO zif_lnt_statement_runnable.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t94 TYPE REF TO zif_lnt_statement_runnable.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t97 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t98) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t97 = zcl_lnt_st_combi_module=>tok( i_t = t98 ).
    IF t97 IS BOUND.
      DATA t99 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t100 TYPE REF TO object.
      t100 = t97.
      TRY.
          t96 ?= t100.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t96 IS NOT BOUND.
        TRY.
            t99 ?= t97.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t99 IS BOUND.
          t96 = t99->source( ).
        ENDIF.
        IF t96 IS NOT BOUND.
          CREATE OBJECT t96.
          t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t96->oval = t97.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t103) = zlnt_runtime_desc_78196487750d=>zlnt_member_d108_ef0500b17c81.
    IF t103 IS BOUND.
      CREATE OBJECT t102.
      t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t102->cval = t103.
    ENDIF.
    DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t105.
    t104 = t105.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t109) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t108 = zcl_lnt_st_combi_module=>tok( i_t = t109 ).
    IF t108 IS BOUND.
      DATA t110 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t111 TYPE REF TO object.
      t111 = t108.
      TRY.
          t107 ?= t111.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t107 IS NOT BOUND.
        TRY.
            t110 ?= t108.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t110 IS BOUND.
          t107 = t110->source( ).
        ENDIF.
        IF t107 IS NOT BOUND.
          CREATE OBJECT t107.
          t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t107->oval = t108.
        ENDIF.
      ENDIF.
    ENDIF.
    t104->load( ).
    APPEND t107 TO t104->items.
    t104->save( ).
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    t112 = zcl_lnt_st_combi_module=>seq( i_first = t96 i_second = t102 i_rest = t104 ).
    t94 = t112.
    IF t94 IS BOUND.
      DATA t116 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t117 TYPE REF TO object.
      t117 = t94.
      TRY.
          t93 ?= t117.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t93 IS NOT BOUND.
        TRY.
            t116 ?= t94.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t116 IS BOUND.
          t93 = t116->source( ).
        ENDIF.
        IF t93 IS NOT BOUND.
          CREATE OBJECT t93.
          t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t93->oval = t94.
        ENDIF.
      ENDIF.
    ENDIF.
    t92 = zcl_lnt_st_combi_module=>opt_prio( i_first = t93 ).
    IF t92 IS BOUND.
      DATA t118 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t119 TYPE REF TO object.
      t119 = t92.
      TRY.
          t91 ?= t119.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t91 IS NOT BOUND.
        TRY.
            t118 ?= t92.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t118 IS BOUND.
          t91 = t118->source( ).
        ENDIF.
        IF t91 IS NOT BOUND.
          CREATE OBJECT t91.
          t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t91->oval = t92.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t121 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t121.
    DATA t122 TYPE REF TO zif_lnt_statement_runnable.
    t122 = zcl_lnt_st_combi_module=>seq( i_first = t88 i_second = t91 i_rest = t121 ).
    t86 = t122.
    IF t86 IS BOUND.
      DATA t126 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t127 TYPE REF TO object.
      t127 = t86.
      TRY.
          t85 ?= t127.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t85 IS NOT BOUND.
        TRY.
            t126 ?= t86.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t126 IS BOUND.
          t85 = t126->source( ).
        ENDIF.
        IF t85 IS NOT BOUND.
          CREATE OBJECT t85.
          t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t85->oval = t86.
        ENDIF.
      ENDIF.
    ENDIF.
    t82->load( ).
    APPEND t85 TO t82->items.
    t82->save( ).
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t130) = |DATS|.
    CREATE OBJECT t129.
    t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t129->sval = t130.
    t82->load( ).
    APPEND t129 TO t82->items.
    t82->save( ).
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t133) = |FLTP|.
    CREATE OBJECT t132.
    t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t132->sval = t133.
    t82->load( ).
    APPEND t132 TO t82->items.
    t82->save( ).
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t136) = |INT1|.
    CREATE OBJECT t135.
    t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t135->sval = t136.
    t82->load( ).
    APPEND t135 TO t82->items.
    t82->save( ).
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t139) = |INT2|.
    CREATE OBJECT t138.
    t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t138->sval = t139.
    t82->load( ).
    APPEND t138 TO t82->items.
    t82->save( ).
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t142) = |INT4|.
    CREATE OBJECT t141.
    t141->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t141->sval = t142.
    t82->load( ).
    APPEND t141 TO t82->items.
    t82->save( ).
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t145) = |INT8|.
    CREATE OBJECT t144.
    t144->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t144->sval = t145.
    t82->load( ).
    APPEND t144 TO t82->items.
    t82->save( ).
    DATA t146 TYPE REF TO zif_lnt_statement_runnable.
    t146 = zcl_lnt_st_combi_module=>alt_prio( i_first = t4 i_second = t48 i_rest = t82 ).
    t1 = t146.
    DATA t150 TYPE REF TO zif_lnt_statement_runnable.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t154) = |,|.
    CREATE OBJECT t153.
    t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t153->sval = t154.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t157) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
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
    DATA(t168) = zlnt_runtime_desc_78196487750d=>zlnt_member_d294_92c50184534c.
    IF t168 IS BOUND.
      CREATE OBJECT t167.
      t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t167->cval = t168.
    ENDIF.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t171) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
    IF t171 IS BOUND.
      CREATE OBJECT t170.
      t170->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t170->cval = t171.
    ENDIF.
    DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t173.
    DATA t174 TYPE REF TO zif_lnt_statement_runnable.
    t174 = zcl_lnt_st_combi_module=>alt_prio( i_first = t167 i_second = t170 i_rest = t173 ).
    t164 = t174.
    DATA t178 TYPE REF TO zif_lnt_statement_runnable.
    DATA t179 TYPE REF TO zif_lnt_statement_runnable.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t181 TYPE REF TO zcl_lnt_abap_release.
    DATA t182 TYPE REF TO zcl_lnt_abap_release.
    DATA t183 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t183 = zcl_lnt_version_module=>release_b8cd.
    DATA(t184) = |v750|.
    t182 = t183->get( p0 = t184 ).
    t181 = t182.
    IF t181 IS BOUND.
      DATA t185 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t186 TYPE REF TO object.
      t186 = t181.
      TRY.
          t180 ?= t186.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t180 IS NOT BOUND.
        TRY.
            t185 ?= t181.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t185 IS BOUND.
          t180 = t185->source( ).
        ENDIF.
        IF t180 IS NOT BOUND.
          CREATE OBJECT t180.
          t180->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t180->oval = t181.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t188 TYPE REF TO zif_lnt_statement_runnable.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t191 TYPE REF TO zif_lnt_statement_runnable.
    DATA t192 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t193) = |^cast$|.
    DATA(t194) = |i|.
    CREATE OBJECT t192 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t193 flags = t194.
    t191 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t192 ).
    IF t191 IS BOUND.
      DATA t195 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t196 TYPE REF TO object.
      t196 = t191.
      TRY.
          t190 ?= t196.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t190 IS NOT BOUND.
        TRY.
            t195 ?= t191.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t195 IS BOUND.
          t190 = t195->source( ).
        ENDIF.
        IF t190 IS NOT BOUND.
          CREATE OBJECT t190.
          t190->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t190->oval = t191.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t199 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t200) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t199 = zcl_lnt_st_combi_module=>tok( i_t = t200 ).
    IF t199 IS BOUND.
      DATA t201 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t202 TYPE REF TO object.
      t202 = t199.
      TRY.
          t198 ?= t202.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t198 IS NOT BOUND.
        TRY.
            t201 ?= t199.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t201 IS BOUND.
          t198 = t201->source( ).
        ENDIF.
        IF t198 IS NOT BOUND.
          CREATE OBJECT t198.
          t198->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t198->oval = t199.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t203 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t204 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t204.
    t203 = t204.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t164 IS BOUND.
      DATA t208 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t209 TYPE REF TO object.
      t209 = t164.
      TRY.
          t206 ?= t209.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t206 IS NOT BOUND.
        TRY.
            t208 ?= t164.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t208 IS BOUND.
          t206 = t208->source( ).
        ENDIF.
        IF t206 IS NOT BOUND.
          CREATE OBJECT t206.
          t206->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t206->oval = t164.
        ENDIF.
      ENDIF.
    ENDIF.
    t203->load( ).
    APPEND t206 TO t203->items.
    t203->save( ).
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t212) = |AS|.
    CREATE OBJECT t211.
    t211->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t211->sval = t212.
    t203->load( ).
    APPEND t211 TO t203->items.
    t203->save( ).
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t216 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t217 TYPE REF TO object.
      t217 = t1.
      TRY.
          t214 ?= t217.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t214 IS NOT BOUND.
        TRY.
            t216 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t216 IS BOUND.
          t214 = t216->source( ).
        ENDIF.
        IF t214 IS NOT BOUND.
          CREATE OBJECT t214.
          t214->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t214->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t203->load( ).
    APPEND t214 TO t203->items.
    t203->save( ).
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t220 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t221) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t220 = zcl_lnt_st_combi_module=>tok( i_t = t221 ).
    IF t220 IS BOUND.
      DATA t222 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t223 TYPE REF TO object.
      t223 = t220.
      TRY.
          t219 ?= t223.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t219 IS NOT BOUND.
        TRY.
            t222 ?= t220.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t222 IS BOUND.
          t219 = t222->source( ).
        ENDIF.
        IF t219 IS NOT BOUND.
          CREATE OBJECT t219.
          t219->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t219->oval = t220.
        ENDIF.
      ENDIF.
    ENDIF.
    t203->load( ).
    APPEND t219 TO t203->items.
    t203->save( ).
    DATA t224 TYPE REF TO zif_lnt_statement_runnable.
    t224 = zcl_lnt_st_combi_module=>seq( i_first = t190 i_second = t198 i_rest = t203 ).
    t188 = t224.
    IF t188 IS BOUND.
      DATA t228 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t229 TYPE REF TO object.
      t229 = t188.
      TRY.
          t187 ?= t229.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t187 IS NOT BOUND.
        TRY.
            t228 ?= t188.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t228 IS BOUND.
          t187 = t228->source( ).
        ENDIF.
        IF t187 IS NOT BOUND.
          CREATE OBJECT t187.
          t187->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t187->oval = t188.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t230 TYPE REF TO zcl_lnt_iver_options.
    DATA t232 TYPE REF TO zcl_lnt_iver_options.
    DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t236) = |OpenABAP|.
    DATA(t237) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t237->has = abap_true.
    t237->value = t236.
    t233 = t237.
    t232 = NEW zcl_lnt_iver_options( i_also = t233 ).
    CREATE OBJECT t232->zlnt_view_ownkeys_b0e8086400eb.
    t232->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t232->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t239 ).
    CREATE OBJECT t232->zlnt_json_ownkeys_70e5fd461788.
    t232->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t240) = |also|.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t232->zlnt_json_ownkeys_70e5fd461788->put( p0 = t240 p1 = t241 ).
    t230 = t232.
    t179 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t180 i_first = t187 i_opts = t230 ).
    t178 = t179.
    DATA t243 TYPE REF TO zif_lnt_statement_runnable.
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t247 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t248) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t247 = zcl_lnt_st_combi_module=>tok( i_t = t248 ).
    IF t247 IS BOUND.
      DATA t249 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t250 TYPE REF TO object.
      t250 = t247.
      TRY.
          t246 ?= t250.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t246 IS NOT BOUND.
        TRY.
            t249 ?= t247.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t249 IS BOUND.
          t246 = t249->source( ).
        ENDIF.
        IF t246 IS NOT BOUND.
          CREATE OBJECT t246.
          t246->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t246->oval = t247.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t253) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
    IF t253 IS BOUND.
      CREATE OBJECT t252.
      t252->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t252->cval = t253.
    ENDIF.
    DATA t254 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t255 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t255.
    t254 = t255.
    DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t258 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t259) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t258 = zcl_lnt_st_combi_module=>tok( i_t = t259 ).
    IF t258 IS BOUND.
      DATA t260 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t261 TYPE REF TO object.
      t261 = t258.
      TRY.
          t257 ?= t261.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t257 IS NOT BOUND.
        TRY.
            t260 ?= t258.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t260 IS BOUND.
          t257 = t260->source( ).
        ENDIF.
        IF t257 IS NOT BOUND.
          CREATE OBJECT t257.
          t257->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t257->oval = t258.
        ENDIF.
      ENDIF.
    ENDIF.
    t254->load( ).
    APPEND t257 TO t254->items.
    t254->save( ).
    DATA t262 TYPE REF TO zif_lnt_statement_runnable.
    t262 = zcl_lnt_st_combi_module=>seq( i_first = t246 i_second = t252 i_rest = t254 ).
    t243 = t262.
    DATA t266 TYPE REF TO zif_lnt_statement_runnable.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t270 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t271) = zlnt_runtime_desc_78196487750d=>zlnt_member_d42_9f93cd02a8cf40.
    t270 = zcl_lnt_st_combi_module=>tok( i_t = t271 ).
    IF t270 IS BOUND.
      DATA t272 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t273 TYPE REF TO object.
      t273 = t270.
      TRY.
          t269 ?= t273.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t269 IS NOT BOUND.
        TRY.
            t272 ?= t270.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t272 IS BOUND.
          t269 = t272->source( ).
        ENDIF.
        IF t269 IS NOT BOUND.
          CREATE OBJECT t269.
          t269->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t269->oval = t270.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t276 TYPE REF TO zif_lnt_statement_runnable.
    DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t279) = zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428.
    IF t279 IS BOUND.
      CREATE OBJECT t278.
      t278->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t278->cval = t279.
    ENDIF.
    DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t243 IS BOUND.
      DATA t283 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t284 TYPE REF TO object.
      t284 = t243.
      TRY.
          t281 ?= t284.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t281 IS NOT BOUND.
        TRY.
            t283 ?= t243.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t283 IS BOUND.
          t281 = t283->source( ).
        ENDIF.
        IF t281 IS NOT BOUND.
          CREATE OBJECT t281.
          t281->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t281->oval = t243.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t286 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t286.
    DATA t287 TYPE REF TO zif_lnt_statement_runnable.
    t287 = zcl_lnt_st_combi_module=>alt_prio( i_first = t278 i_second = t281 i_rest = t286 ).
    t276 = t287.
    IF t276 IS BOUND.
      DATA t291 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t292 TYPE REF TO object.
      t292 = t276.
      TRY.
          t275 ?= t292.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t275 IS NOT BOUND.
        TRY.
            t291 ?= t276.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t291 IS BOUND.
          t275 = t291->source( ).
        ENDIF.
        IF t275 IS NOT BOUND.
          CREATE OBJECT t275.
          t275->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t275->oval = t276.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t294 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t294.
    DATA t295 TYPE REF TO zif_lnt_statement_runnable.
    t295 = zcl_lnt_st_combi_module=>seq( i_first = t269 i_second = t275 i_rest = t294 ).
    t266 = t295.
    DATA t299 TYPE REF TO zif_lnt_statement_runnable.
    DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t303) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
    IF t303 IS BOUND.
      CREATE OBJECT t302.
      t302->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t302->cval = t303.
    ENDIF.
    DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t266 IS BOUND.
      DATA t307 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t308 TYPE REF TO object.
      t308 = t266.
      TRY.
          t305 ?= t308.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t305 IS NOT BOUND.
        TRY.
            t307 ?= t266.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t307 IS BOUND.
          t305 = t307->source( ).
        ENDIF.
        IF t305 IS NOT BOUND.
          CREATE OBJECT t305.
          t305->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t305->oval = t266.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t310 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t310.
    DATA t311 TYPE REF TO zif_lnt_statement_runnable.
    t311 = zcl_lnt_st_combi_module=>alt_prio( i_first = t302 i_second = t305 i_rest = t310 ).
    t299 = t311.
    DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t178 IS BOUND.
      DATA t319 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t320 TYPE REF TO object.
      t320 = t178.
      TRY.
          t317 ?= t320.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t317 IS NOT BOUND.
        TRY.
            t319 ?= t178.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t319 IS BOUND.
          t317 = t319->source( ).
        ENDIF.
        IF t317 IS NOT BOUND.
          CREATE OBJECT t317.
          t317->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t317->oval = t178.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t323) = zlnt_runtime_desc_78196487750d=>zlnt_member_d324_e103ee74a0b4.
    IF t323 IS BOUND.
      CREATE OBJECT t322.
      t322->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t322->cval = t323.
    ENDIF.
    DATA t324 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t325 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t325.
    t324 = t325.
    DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t328) = zlnt_runtime_desc_78196487750d=>zlnt_member_d325_95314ae809d0.
    IF t328 IS BOUND.
      CREATE OBJECT t327.
      t327->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t327->cval = t328.
    ENDIF.
    t324->load( ).
    APPEND t327 TO t324->items.
    t324->save( ).
    DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t331) = zlnt_runtime_desc_78196487750d=>zlnt_member_d326_f861243d7542.
    IF t331 IS BOUND.
      CREATE OBJECT t330.
      t330->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t330->cval = t331.
    ENDIF.
    t324->load( ).
    APPEND t330 TO t324->items.
    t324->save( ).
    DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t334) = zlnt_runtime_desc_78196487750d=>zlnt_member_d327_7453d95ca5a2.
    IF t334 IS BOUND.
      CREATE OBJECT t333.
      t333->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t333->cval = t334.
    ENDIF.
    t324->load( ).
    APPEND t333 TO t324->items.
    t324->save( ).
    DATA t335 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t336 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t337 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t337.
    t336 = t337.
    DATA t338 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF zcl_lnt_sql_function_module=>zlnt_builtin_init_070f1fc1b1a8 = abap_false.
      zcl_lnt_sql_function_module=>zlnt_builtin_init_916c47d62a99( ).
    ENDIF.
    t338 = zcl_lnt_sql_function_module=>sql_function_defs.
    DATA t339 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t340 TYPE REF TO object.
    DATA(t341) = VALUE i( ).
    DO.
      t338->load( ).
      IF t341 >= lines( t338->items ).
        EXIT.
      ENDIF.
      CLEAR t340.
      READ TABLE t338->items INDEX t341 + 1 INTO t340.
      t341 = t341 + 1.
      DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t342.
      CLEAR t339.
      IF t340 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t342 ?= t340.
        DATA t343 TYPE REF TO object.
        CLEAR t343.
        t343 = t342->as_ref( ).
        t339 ?= t343.
      ELSE.
        t339 ?= t340.
      ENDIF.
      DATA t345 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t345.
      DATA(t346) = VALUE string( ).
      DATA(t347) = VALUE string( ).
      t347 = t339->f0.
      t346 = t347.
      DATA(t349) = VALUE f( ).
      DATA(t350) = VALUE f( ).
      t350 = t339->f1.
      t349 = t350.
      DATA t353 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t353.
      t353 = t339->f2.
      DATA t355 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t355.
      t355 = me->fn_fn( i_comma_param = t150 i_name = t346 i_params_4c59 = t349 i_v = t353 ).
      t345 = t355.
      t336->load( ).
      APPEND t345 TO t336->items.
      t336->save( ).
    ENDDO.
    t335 = t336.
    DATA t361 TYPE REF TO zif_lnt_statement_runnable.
    DATA t362 TYPE REF TO object.
    DATA(t363) = VALUE i( ).
    DO.
      t335->load( ).
      IF t363 >= lines( t335->items ).
        EXIT.
      ENDIF.
      CLEAR t362.
      READ TABLE t335->items INDEX t363 + 1 INTO t362.
      t363 = t363 + 1.
      DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t364.
      CLEAR t361.
      IF t362 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t364 ?= t362.
        DATA t365 TYPE REF TO object.
        CLEAR t365.
        t365 = t364->as_ref( ).
        t361 ?= t365.
      ELSE.
        t361 ?= t362.
      ENDIF.
      DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t367.
      CLEAR t367.
      IF t361 IS BOUND.
        DATA t369 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t369.
        DATA t370 TYPE REF TO object.
        CLEAR t370.
        CLEAR t369.
        t370 = t361.
        TRY.
            t367 ?= t370.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t367 IS NOT BOUND.
          TRY.
              t369 ?= t361.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t369 IS BOUND.
            t367 = t369->source( ).
          ENDIF.
          IF t367 IS NOT BOUND.
            CREATE OBJECT t367.
            t367->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t367->oval = t361.
          ENDIF.
        ENDIF.
      ENDIF.
      t324->load( ).
      APPEND t367 TO t324->items.
      t324->save( ).
    ENDDO.
    DATA t371 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t372 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t373 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t373.
    t372 = t373.
    DATA t374 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF zcl_lnt_sql_function_module=>zlnt_builtin_init_070f1fc1b1a8 = abap_false.
      zcl_lnt_sql_function_module=>zlnt_builtin_init_916c47d62a99( ).
    ENDIF.
    t374 = zcl_lnt_sql_function_module=>sql_named_function_defs.
    DATA t375 TYPE REF TO zcl_lnt_tuple_443ddf92.
    DATA t376 TYPE REF TO object.
    DATA(t377) = VALUE i( ).
    DO.
      t374->load( ).
      IF t377 >= lines( t374->items ).
        EXIT.
      ENDIF.
      CLEAR t376.
      READ TABLE t374->items INDEX t377 + 1 INTO t376.
      t377 = t377 + 1.
      DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t378.
      CLEAR t375.
      IF t376 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t378 ?= t376.
        DATA t379 TYPE REF TO object.
        CLEAR t379.
        t379 = t378->as_ref( ).
        t375 ?= t379.
      ELSE.
        t375 ?= t376.
      ENDIF.
      DATA t381 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t381.
      DATA(t382) = VALUE string( ).
      DATA(t383) = VALUE string( ).
      t383 = t375->f0.
      t382 = t383.
      DATA t386 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t386.
      t386 = t375->f1.
      DATA t389 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t389.
      t389 = t375->f2.
      DATA t391 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t391.
      t391 = me->fn_named_fn( i_abap_only = t299 i_name = t382 i_v = t386 i_params_4c59 = t389 ).
      t381 = t391.
      t372->load( ).
      APPEND t381 TO t372->items.
      t372->save( ).
    ENDDO.
    t371 = t372.
    DATA t397 TYPE REF TO zif_lnt_statement_runnable.
    DATA t398 TYPE REF TO object.
    DATA(t399) = VALUE i( ).
    DO.
      t371->load( ).
      IF t399 >= lines( t371->items ).
        EXIT.
      ENDIF.
      CLEAR t398.
      READ TABLE t371->items INDEX t399 + 1 INTO t398.
      t399 = t399 + 1.
      DATA t400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t400.
      CLEAR t397.
      IF t398 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t400 ?= t398.
        DATA t401 TYPE REF TO object.
        CLEAR t401.
        t401 = t400->as_ref( ).
        t397 ?= t401.
      ELSE.
        t397 ?= t398.
      ENDIF.
      DATA t403 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t403.
      CLEAR t403.
      IF t397 IS BOUND.
        DATA t405 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t405.
        DATA t406 TYPE REF TO object.
        CLEAR t406.
        CLEAR t405.
        t406 = t397.
        TRY.
            t403 ?= t406.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t403 IS NOT BOUND.
          TRY.
              t405 ?= t397.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t405 IS BOUND.
            t403 = t405->source( ).
          ENDIF.
          IF t403 IS NOT BOUND.
            CREATE OBJECT t403.
            t403->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t403->oval = t397.
          ENDIF.
        ENDIF.
      ENDIF.
      t324->load( ).
      APPEND t403 TO t324->items.
      t324->save( ).
    ENDDO.
    DATA t407 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t408 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t409 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t409.
    t408 = t409.
    DATA t410 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF zcl_lnt_sql_function_module=>zlnt_builtin_init_070f1fc1b1a8 = abap_false.
      zcl_lnt_sql_function_module=>zlnt_builtin_init_916c47d62a99( ).
    ENDIF.
    t410 = zcl_lnt_sql_function_module=>sql_spatial_function_defs.
    DATA t411 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t412 TYPE REF TO object.
    DATA(t413) = VALUE i( ).
    DO.
      t410->load( ).
      IF t413 >= lines( t410->items ).
        EXIT.
      ENDIF.
      CLEAR t412.
      READ TABLE t410->items INDEX t413 + 1 INTO t412.
      t413 = t413 + 1.
      DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t414.
      CLEAR t411.
      IF t412 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t414 ?= t412.
        DATA t415 TYPE REF TO object.
        CLEAR t415.
        t415 = t414->as_ref( ).
        t411 ?= t415.
      ELSE.
        t411 ?= t412.
      ENDIF.
      DATA t417 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t417.
      DATA(t418) = VALUE string( ).
      DATA(t419) = VALUE string( ).
      t419 = t411->f0.
      t418 = t419.
      DATA(t421) = VALUE f( ).
      DATA(t422) = VALUE f( ).
      t422 = t411->f1.
      t421 = t422.
      DATA t425 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t425.
      t425 = t411->f2.
      DATA t427 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t427.
      t427 = me->fn_fn( i_comma_param = t150 i_name = t418 i_params_4c59 = t421 i_v = t425 ).
      t417 = t427.
      t408->load( ).
      APPEND t417 TO t408->items.
      t408->save( ).
    ENDDO.
    t407 = t408.
    DATA t433 TYPE REF TO zif_lnt_statement_runnable.
    DATA t434 TYPE REF TO object.
    DATA(t435) = VALUE i( ).
    DO.
      t407->load( ).
      IF t435 >= lines( t407->items ).
        EXIT.
      ENDIF.
      CLEAR t434.
      READ TABLE t407->items INDEX t435 + 1 INTO t434.
      t435 = t435 + 1.
      DATA t436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t436.
      CLEAR t433.
      IF t434 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t436 ?= t434.
        DATA t437 TYPE REF TO object.
        CLEAR t437.
        t437 = t436->as_ref( ).
        t433 ?= t437.
      ELSE.
        t433 ?= t434.
      ENDIF.
      DATA t439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t439.
      CLEAR t439.
      IF t433 IS BOUND.
        DATA t441 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t441.
        DATA t442 TYPE REF TO object.
        CLEAR t442.
        CLEAR t441.
        t442 = t433.
        TRY.
            t439 ?= t442.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t439 IS NOT BOUND.
          TRY.
              t441 ?= t433.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t441 IS BOUND.
            t439 = t441->source( ).
          ENDIF.
          IF t439 IS NOT BOUND.
            CREATE OBJECT t439.
            t439->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t439->oval = t433.
          ENDIF.
        ENDIF.
      ENDIF.
      t324->load( ).
      APPEND t439 TO t324->items.
      t324->save( ).
    ENDDO.
    DATA t443 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t444 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t445 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t445.
    t444 = t445.
    DATA t446 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF zcl_lnt_sql_function_module=>zlnt_builtin_init_070f1fc1b1a8 = abap_false.
      zcl_lnt_sql_function_module=>zlnt_builtin_init_916c47d62a99( ).
    ENDIF.
    t446 = zcl_lnt_sql_function_module=>sql_spatial_aggregate_defs.
    DATA t447 TYPE REF TO zcl_lnt_tuple_dda7dd58.
    DATA t448 TYPE REF TO object.
    DATA(t449) = VALUE i( ).
    DO.
      t446->load( ).
      IF t449 >= lines( t446->items ).
        EXIT.
      ENDIF.
      CLEAR t448.
      READ TABLE t446->items INDEX t449 + 1 INTO t448.
      t449 = t449 + 1.
      DATA t450 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t450.
      CLEAR t447.
      IF t448 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t450 ?= t448.
        DATA t451 TYPE REF TO object.
        CLEAR t451.
        t451 = t450->as_ref( ).
        t447 ?= t451.
      ELSE.
        t447 ?= t448.
      ENDIF.
      DATA t453 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t453.
      DATA(t454) = VALUE string( ).
      DATA(t455) = VALUE string( ).
      t455 = t447->f0.
      t454 = t455.
      DATA(t457) = VALUE f( ).
      DATA(t458) = VALUE f( ).
      t458 = t447->f1.
      t457 = t458.
      DATA t461 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t461.
      t461 = t447->f2.
      DATA t463 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t463.
      t463 = me->fn_fn( i_comma_param = t150 i_name = t454 i_params_4c59 = t457 i_v = t461 ).
      t453 = t463.
      t444->load( ).
      APPEND t453 TO t444->items.
      t444->save( ).
    ENDDO.
    t443 = t444.
    DATA t469 TYPE REF TO zif_lnt_statement_runnable.
    DATA t470 TYPE REF TO object.
    DATA(t471) = VALUE i( ).
    DO.
      t443->load( ).
      IF t471 >= lines( t443->items ).
        EXIT.
      ENDIF.
      CLEAR t470.
      READ TABLE t443->items INDEX t471 + 1 INTO t470.
      t471 = t471 + 1.
      DATA t472 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t472.
      CLEAR t469.
      IF t470 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t472 ?= t470.
        DATA t473 TYPE REF TO object.
        CLEAR t473.
        t473 = t472->as_ref( ).
        t469 ?= t473.
      ELSE.
        t469 ?= t470.
      ENDIF.
      DATA t475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t475.
      CLEAR t475.
      IF t469 IS BOUND.
        DATA t477 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t477.
        DATA t478 TYPE REF TO object.
        CLEAR t478.
        CLEAR t477.
        t478 = t469.
        TRY.
            t475 ?= t478.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t475 IS NOT BOUND.
          TRY.
              t477 ?= t469.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t477 IS BOUND.
            t475 = t477->source( ).
          ENDIF.
          IF t475 IS NOT BOUND.
            CREATE OBJECT t475.
            t475->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t475->oval = t469.
          ENDIF.
        ENDIF.
      ENDIF.
      t324->load( ).
      APPEND t475 TO t324->items.
      t324->save( ).
    ENDDO.
    DATA t479 TYPE REF TO zif_lnt_statement_runnable.
    t479 = zcl_lnt_st_combi_module=>alt_prio( i_first = t317 i_second = t322 i_rest = t324 ).
    result = t479.

  ENDMETHOD.

  METHOD fn_fn.
    DATA(t1) = i_comma_param.
    DATA(t3) = i_params_4c59.
    DATA(t4) = i_v.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA t6 TYPE REF TO zif_lnt_statement_runnable.
    DATA t7 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t8) = VALUE string( ).
    DATA(t9) = VALUE string( ).
    DATA(t10) = |^|.
    DATA(t12) = strlen( t10 ).
    t9 = |{ t10 }{ i_name }|.
    DATA(t13) = |$|.
    DATA(t14) = strlen( t9 ).
    t8 = |{ t9 }{ t13 }|.
    DATA(t15) = |i|.
    CREATE OBJECT t7 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t8 flags = t15.
    t6 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t7 ).
    t5 = t6.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t18) = CONV f( 0 ).
    t16 = xsdbool( t3 = t18 ).
    IF t16 = abap_true.
      DATA t19 TYPE REF TO zif_lnt_statement_runnable.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t4 IS BOUND.
        DATA t22 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t23 TYPE REF TO object.
        t23 = t4.
        TRY.
            t20 ?= t23.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t20 IS NOT BOUND.
          TRY.
              t22 ?= t4.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t22 IS BOUND.
            t20 = t22->source( ).
          ENDIF.
          IF t20 IS NOT BOUND.
            CREATE OBJECT t20.
            t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t20->oval = t4.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t25 TYPE REF TO zif_lnt_statement_runnable.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t5 IS BOUND.
        DATA t29 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t30 TYPE REF TO object.
        t30 = t5.
        TRY.
            t27 ?= t30.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t27 IS NOT BOUND.
          TRY.
              t29 ?= t5.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t29 IS BOUND.
            t27 = t29->source( ).
          ENDIF.
          IF t27 IS NOT BOUND.
            CREATE OBJECT t27.
            t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t27->oval = t5.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t33 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t34) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
      t33 = zcl_lnt_st_combi_module=>tok( i_t = t34 ).
      IF t33 IS BOUND.
        DATA t35 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t36 TYPE REF TO object.
        t36 = t33.
        TRY.
            t32 ?= t36.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t32 IS NOT BOUND.
          TRY.
              t35 ?= t33.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t35 IS BOUND.
            t32 = t35->source( ).
          ENDIF.
          IF t32 IS NOT BOUND.
            CREATE OBJECT t32.
            t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t32->oval = t33.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t38.
      t37 = t38.
      DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t41 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t42) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
      t41 = zcl_lnt_st_combi_module=>tok( i_t = t42 ).
      IF t41 IS BOUND.
        DATA t43 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t44 TYPE REF TO object.
        t44 = t41.
        TRY.
            t40 ?= t44.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t40 IS NOT BOUND.
          TRY.
              t43 ?= t41.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t43 IS BOUND.
            t40 = t43->source( ).
          ENDIF.
          IF t40 IS NOT BOUND.
            CREATE OBJECT t40.
            t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t40->oval = t41.
          ENDIF.
        ENDIF.
      ENDIF.
      t37->load( ).
      APPEND t40 TO t37->items.
      t37->save( ).
      DATA t45 TYPE REF TO zif_lnt_statement_runnable.
      t45 = zcl_lnt_st_combi_module=>seq( i_first = t27 i_second = t32 i_rest = t37 ).
      t25 = t45.
      IF t25 IS BOUND.
        DATA t49 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t50 TYPE REF TO object.
        t50 = t25.
        TRY.
            t24 ?= t50.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t24 IS NOT BOUND.
          TRY.
              t49 ?= t25.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t49 IS BOUND.
            t24 = t49->source( ).
          ENDIF.
          IF t24 IS NOT BOUND.
            CREATE OBJECT t24.
            t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t24->oval = t25.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t51 TYPE REF TO zcl_lnt_iver_options.
      DATA t53 TYPE REF TO zcl_lnt_iver_options.
      DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t57) = |OpenABAP|.
      DATA(t58) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t58->has = abap_true.
      t58->value = t57.
      t54 = t58.
      t53 = NEW zcl_lnt_iver_options( i_also = t54 ).
      CREATE OBJECT t53->zlnt_view_ownkeys_b0e8086400eb.
      t53->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t53->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t60 ).
      CREATE OBJECT t53->zlnt_json_ownkeys_70e5fd461788.
      t53->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t61) = |also|.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t53->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
      t51 = t53.
      t19 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t20 i_first = t24 i_opts = t51 ).
      result = t19.
      RETURN.
    ELSE.
      DATA(t64) = VALUE abap_bool( ).
      DATA(t66) = VALUE f( ).
      DATA(t67) = CONV i( zcl_lnt_sql_function_module=>variadic ).
      t66 = t67.
      t64 = xsdbool( t3 = t66 ).
      IF t64 = abap_true.
        DATA t68 TYPE REF TO zif_lnt_statement_runnable.
        DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t4 IS BOUND.
          DATA t71 TYPE REF TO zlnt_view_storage_74017ca272ac.
          DATA t72 TYPE REF TO object.
          t72 = t4.
          TRY.
              t69 ?= t72.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t69 IS NOT BOUND.
            TRY.
                t71 ?= t4.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t71 IS BOUND.
              t69 = t71->source( ).
            ENDIF.
            IF t69 IS NOT BOUND.
              CREATE OBJECT t69.
              t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t69->oval = t4.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t74 TYPE REF TO zif_lnt_statement_runnable.
        DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t5 IS BOUND.
          DATA t78 TYPE REF TO zlnt_view_storage_74017ca272ac.
          DATA t79 TYPE REF TO object.
          t79 = t5.
          TRY.
              t76 ?= t79.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t76 IS NOT BOUND.
            TRY.
                t78 ?= t5.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t78 IS BOUND.
              t76 = t78->source( ).
            ENDIF.
            IF t76 IS NOT BOUND.
              CREATE OBJECT t76.
              t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t76->oval = t5.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t82 TYPE REF TO zif_lnt_statement_runnable.
        DATA(t83) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
        t82 = zcl_lnt_st_combi_module=>tok( i_t = t83 ).
        IF t82 IS BOUND.
          DATA t84 TYPE REF TO zlnt_view_storage_74017ca272ac.
          DATA t85 TYPE REF TO object.
          t85 = t82.
          TRY.
              t81 ?= t85.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t81 IS NOT BOUND.
            TRY.
                t84 ?= t82.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t84 IS BOUND.
              t81 = t84->source( ).
            ENDIF.
            IF t81 IS NOT BOUND.
              CREATE OBJECT t81.
              t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t81->oval = t82.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t87.
        t86 = t87.
        DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t90) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
        IF t90 IS BOUND.
          CREATE OBJECT t89.
          t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          t89->cval = t90.
        ENDIF.
        t86->load( ).
        APPEND t89 TO t86->items.
        t86->save( ).
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t93 TYPE REF TO zif_lnt_statement_runnable.
        DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1 IS BOUND.
          DATA t96 TYPE REF TO zlnt_view_storage_74017ca272ac.
          DATA t97 TYPE REF TO object.
          t97 = t1.
          TRY.
              t94 ?= t97.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t94 IS NOT BOUND.
            TRY.
                t96 ?= t1.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t96 IS BOUND.
              t94 = t96->source( ).
            ENDIF.
            IF t94 IS NOT BOUND.
              CREATE OBJECT t94.
              t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t94->oval = t1.
            ENDIF.
          ENDIF.
        ENDIF.
        t93 = zcl_lnt_st_combi_module=>star_prio( i_first = t94 ).
        IF t93 IS BOUND.
          DATA t98 TYPE REF TO zlnt_view_storage_74017ca272ac.
          DATA t99 TYPE REF TO object.
          t99 = t93.
          TRY.
              t92 ?= t99.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t92 IS NOT BOUND.
            TRY.
                t98 ?= t93.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t98 IS BOUND.
              t92 = t98->source( ).
            ENDIF.
            IF t92 IS NOT BOUND.
              CREATE OBJECT t92.
              t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t92->oval = t93.
            ENDIF.
          ENDIF.
        ENDIF.
        t86->load( ).
        APPEND t92 TO t86->items.
        t86->save( ).
        DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t102 TYPE REF TO zif_lnt_statement_runnable.
        DATA(t103) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
        t102 = zcl_lnt_st_combi_module=>tok( i_t = t103 ).
        IF t102 IS BOUND.
          DATA t104 TYPE REF TO zlnt_view_storage_74017ca272ac.
          DATA t105 TYPE REF TO object.
          t105 = t102.
          TRY.
              t101 ?= t105.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t101 IS NOT BOUND.
            TRY.
                t104 ?= t102.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t104 IS BOUND.
              t101 = t104->source( ).
            ENDIF.
            IF t101 IS NOT BOUND.
              CREATE OBJECT t101.
              t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t101->oval = t102.
            ENDIF.
          ENDIF.
        ENDIF.
        t86->load( ).
        APPEND t101 TO t86->items.
        t86->save( ).
        DATA t106 TYPE REF TO zif_lnt_statement_runnable.
        t106 = zcl_lnt_st_combi_module=>seq( i_first = t76 i_second = t81 i_rest = t86 ).
        t74 = t106.
        IF t74 IS BOUND.
          DATA t110 TYPE REF TO zlnt_view_storage_74017ca272ac.
          DATA t111 TYPE REF TO object.
          t111 = t74.
          TRY.
              t73 ?= t111.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t73 IS NOT BOUND.
            TRY.
                t110 ?= t74.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t110 IS BOUND.
              t73 = t110->source( ).
            ENDIF.
            IF t73 IS NOT BOUND.
              CREATE OBJECT t73.
              t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t73->oval = t74.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA t112 TYPE REF TO zcl_lnt_iver_options.
        DATA t114 TYPE REF TO zcl_lnt_iver_options.
        DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t118) = |OpenABAP|.
        DATA(t119) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t119->has = abap_true.
        t119->value = t118.
        t115 = t119.
        t114 = NEW zcl_lnt_iver_options( i_also = t115 ).
        CREATE OBJECT t114->zlnt_view_ownkeys_b0e8086400eb.
        t114->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t121 ).
        CREATE OBJECT t114->zlnt_json_ownkeys_70e5fd461788.
        t114->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t122) = |also|.
        DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t114->zlnt_json_ownkeys_70e5fd461788->put( p0 = t122 p1 = t123 ).
        t112 = t114.
        t68 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t69 i_first = t73 i_opts = t112 ).
        result = t68.
        RETURN.
      ELSE.
        DATA t125 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t126.
        t125 = t126.
        DATA(t127) = VALUE f( ).
        DATA(t128) = CONV f( 1 ).
        t127 = t128.
        DO.
          DATA(t129) = VALUE abap_bool( ).
          t129 = xsdbool( t127 < t3 ).
          IF t129 = abap_false.
            EXIT.
          ENDIF.
          t125->load( ).
          APPEND t1 TO t125->items.
          t125->save( ).
          DATA(t134) = VALUE f( ).
          DATA(t136) = CONV f( 1 ).
          t134 = t127 + t136.
          t127 = t134.
        ENDDO.
        DATA t137 TYPE REF TO zif_lnt_statement_runnable.
        DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t4 IS BOUND.
          DATA t140 TYPE REF TO zlnt_view_storage_74017ca272ac.
          DATA t141 TYPE REF TO object.
          t141 = t4.
          TRY.
              t138 ?= t141.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t138 IS NOT BOUND.
            TRY.
                t140 ?= t4.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t140 IS BOUND.
              t138 = t140->source( ).
            ENDIF.
            IF t138 IS NOT BOUND.
              CREATE OBJECT t138.
              t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t138->oval = t4.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t143 TYPE REF TO zif_lnt_statement_runnable.
        DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t5 IS BOUND.
          DATA t147 TYPE REF TO zlnt_view_storage_74017ca272ac.
          DATA t148 TYPE REF TO object.
          t148 = t5.
          TRY.
              t145 ?= t148.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t145 IS NOT BOUND.
            TRY.
                t147 ?= t5.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t147 IS BOUND.
              t145 = t147->source( ).
            ENDIF.
            IF t145 IS NOT BOUND.
              CREATE OBJECT t145.
              t145->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t145->oval = t5.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t151 TYPE REF TO zif_lnt_statement_runnable.
        DATA(t152) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
        t151 = zcl_lnt_st_combi_module=>tok( i_t = t152 ).
        IF t151 IS BOUND.
          DATA t153 TYPE REF TO zlnt_view_storage_74017ca272ac.
          DATA t154 TYPE REF TO object.
          t154 = t151.
          TRY.
              t150 ?= t154.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t150 IS NOT BOUND.
            TRY.
                t153 ?= t151.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t153 IS BOUND.
              t150 = t153->source( ).
            ENDIF.
            IF t150 IS NOT BOUND.
              CREATE OBJECT t150.
              t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t150->oval = t151.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA t155 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t156.
        t155 = t156.
        DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t159) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
        IF t159 IS BOUND.
          CREATE OBJECT t158.
          t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          t158->cval = t159.
        ENDIF.
        t155->load( ).
        APPEND t158 TO t155->items.
        t155->save( ).
        DATA t161 TYPE REF TO zif_lnt_statement_runnable.
        DATA t162 TYPE REF TO object.
        DATA(t163) = VALUE i( ).
        DO.
          t125->load( ).
          IF t163 >= lines( t125->items ).
            EXIT.
          ENDIF.
          CLEAR t162.
          READ TABLE t125->items INDEX t163 + 1 INTO t162.
          t163 = t163 + 1.
          DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t164.
          CLEAR t161.
          IF t162 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t164 ?= t162.
            DATA t165 TYPE REF TO object.
            CLEAR t165.
            t165 = t164->as_ref( ).
            t161 ?= t165.
          ELSE.
            t161 ?= t162.
          ENDIF.
          DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t167.
          CLEAR t167.
          IF t161 IS BOUND.
            DATA t169 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t169.
            DATA t170 TYPE REF TO object.
            CLEAR t170.
            CLEAR t169.
            t170 = t161.
            TRY.
                t167 ?= t170.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t167 IS NOT BOUND.
              TRY.
                  t169 ?= t161.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t169 IS BOUND.
                t167 = t169->source( ).
              ENDIF.
              IF t167 IS NOT BOUND.
                CREATE OBJECT t167.
                t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t167->oval = t161.
              ENDIF.
            ENDIF.
          ENDIF.
          t155->load( ).
          APPEND t167 TO t155->items.
          t155->save( ).
        ENDDO.
        DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t173 TYPE REF TO zif_lnt_statement_runnable.
        DATA(t174) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
        t173 = zcl_lnt_st_combi_module=>tok( i_t = t174 ).
        IF t173 IS BOUND.
          DATA t175 TYPE REF TO zlnt_view_storage_74017ca272ac.
          DATA t176 TYPE REF TO object.
          t176 = t173.
          TRY.
              t172 ?= t176.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t172 IS NOT BOUND.
            TRY.
                t175 ?= t173.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t175 IS BOUND.
              t172 = t175->source( ).
            ENDIF.
            IF t172 IS NOT BOUND.
              CREATE OBJECT t172.
              t172->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t172->oval = t173.
            ENDIF.
          ENDIF.
        ENDIF.
        t155->load( ).
        APPEND t172 TO t155->items.
        t155->save( ).
        DATA t177 TYPE REF TO zif_lnt_statement_runnable.
        t177 = zcl_lnt_st_combi_module=>seq( i_first = t145 i_second = t150 i_rest = t155 ).
        t143 = t177.
        IF t143 IS BOUND.
          DATA t181 TYPE REF TO zlnt_view_storage_74017ca272ac.
          DATA t182 TYPE REF TO object.
          t182 = t143.
          TRY.
              t142 ?= t182.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t142 IS NOT BOUND.
            TRY.
                t181 ?= t143.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t181 IS BOUND.
              t142 = t181->source( ).
            ENDIF.
            IF t142 IS NOT BOUND.
              CREATE OBJECT t142.
              t142->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t142->oval = t143.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA t183 TYPE REF TO zcl_lnt_iver_options.
        DATA t185 TYPE REF TO zcl_lnt_iver_options.
        DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t189) = |OpenABAP|.
        DATA(t190) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t190->has = abap_true.
        t190->value = t189.
        t186 = t190.
        t185 = NEW zcl_lnt_iver_options( i_also = t186 ).
        CREATE OBJECT t185->zlnt_view_ownkeys_b0e8086400eb.
        t185->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t185->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t192 ).
        CREATE OBJECT t185->zlnt_json_ownkeys_70e5fd461788.
        t185->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t193) = |also|.
        DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t185->zlnt_json_ownkeys_70e5fd461788->put( p0 = t193 p1 = t194 ).
        t183 = t185.
        t137 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t138 i_first = t142 i_opts = t183 ).
        result = t137.
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD fn_named_fn.
    DATA(t1) = i_abap_only.
    DATA(t3) = i_v.
    DATA(t4) = i_params_4c59.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA t6 TYPE REF TO zif_lnt_statement_runnable.
    DATA t7 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t8) = VALUE string( ).
    DATA(t9) = VALUE string( ).
    DATA(t10) = |^|.
    DATA(t12) = strlen( t10 ).
    t9 = |{ t10 }{ i_name }|.
    DATA(t13) = |$|.
    DATA(t14) = strlen( t9 ).
    t8 = |{ t9 }{ t13 }|.
    DATA(t15) = |i|.
    CREATE OBJECT t7 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t8 flags = t15.
    t6 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t7 ).
    t5 = t6.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t19.
    t18 = t19.
    DATA t21 TYPE REF TO zcl_lnt_sql_named_param.
    DATA t22 TYPE REF TO object.
    DATA(t23) = VALUE i( ).
    DO.
      t4->load( ).
      IF t23 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t22.
      READ TABLE t4->items INDEX t23 + 1 INTO t22.
      t23 = t23 + 1.
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t24.
      CLEAR t21.
      IF t22 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t24 ?= t22.
        DATA t25 TYPE REF TO object.
        CLEAR t25.
        t25 = t24->as_ref( ).
        t21 ?= t25.
      ELSE.
        t21 ?= t22.
      ENDIF.
      DATA t27 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t27.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t29.
      DATA t30 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t30.
      DATA t31 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t31.
      DATA(t32) = VALUE string( ).
      DATA(t33) = VALUE string( ).
      DATA(t34) = |^|.
      DATA(t35) = VALUE string( ).
      t35 = t21->name.
      DATA(t37) = strlen( t34 ).
      t33 = |{ t34 }{ t35 }|.
      DATA(t38) = |$|.
      DATA(t39) = strlen( t33 ).
      t32 = |{ t33 }{ t38 }|.
      DATA(t40) = |i|.
      CREATE OBJECT t31 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t32 flags = t40.
      t30 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t31 ).
      CLEAR t29.
      IF t30 IS BOUND.
        DATA t41 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t41.
        DATA t42 TYPE REF TO object.
        CLEAR t42.
        CLEAR t41.
        t42 = t30.
        TRY.
            t29 ?= t42.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t29 IS NOT BOUND.
          TRY.
              t41 ?= t30.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t41 IS BOUND.
            t29 = t41->source( ).
          ENDIF.
          IF t29 IS NOT BOUND.
            CREATE OBJECT t29.
            t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t29->oval = t30.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t44.
      DATA(t45) = |=|.
      CLEAR t44.
      CREATE OBJECT t44.
      t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t44->sval = t45.
      DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t46.
      DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t47.
      CREATE OBJECT t47.
      t46 = t47.
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t49.
      DATA t50 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t50.
      t50 = t1.
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t54.
      DATA(t55) = VALUE abap_bool( ).
      DATA(t56) = VALUE string( ).
      t56 = t21->value.
      DATA(t58) = |abap_only|.
      t55 = xsdbool( t56 = t58 ).
      IF t55 = abap_true.
        DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t59.
        CLEAR t59.
        IF t50 IS BOUND.
          DATA t61 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t61.
          DATA t62 TYPE REF TO object.
          CLEAR t62.
          CLEAR t61.
          t62 = t50.
          TRY.
              t59 ?= t62.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t59 IS NOT BOUND.
            TRY.
                t61 ?= t50.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t61 IS BOUND.
              t59 = t61->source( ).
            ENDIF.
            IF t59 IS NOT BOUND.
              CREATE OBJECT t59.
              t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t59->oval = t50.
            ENDIF.
          ENDIF.
        ENDIF.
        t54 = t59.
      ELSE.
        DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t63.
        DATA(t64) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
        CLEAR t63.
        IF t64 IS BOUND.
          CREATE OBJECT t63.
          t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
          t63->cval = t64.
        ENDIF.
        t54 = t63.
      ENDIF.
      t49 = t54.
      t46->load( ).
      APPEND t49 TO t46->items.
      t46->save( ).
      DATA t65 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t65.
      t65 = zcl_lnt_st_combi_module=>seq( i_first = t29 i_second = t44 i_rest = t46 ).
      t27 = t65.
      t18->load( ).
      APPEND t27 TO t18->items.
      t18->save( ).
    ENDDO.
    t16 = t18.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t72) = VALUE abap_bool( ).
    DATA(t73) = VALUE i( ).
    t16->load( ).
    t73 = lines( t16->items ).
    DATA(t75) = 1.
    t72 = xsdbool( t73 = t75 ).
    IF t72 = abap_true.
      DATA t76 TYPE REF TO zif_lnt_statement_runnable.
      DATA t78 TYPE REF TO object.
      t16->load( ).
      READ TABLE t16->items INDEX 1 INTO t78.
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t78 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t79 ?= t78.
        DATA t80 TYPE REF TO object.
        t80 = t79->as_ref( ).
        t76 ?= t80.
      ELSE.
        t76 ?= t78.
      ENDIF.
      t71 = t76.
    ELSE.
      DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t84 TYPE REF TO zif_lnt_statement_runnable.
      DATA t86 TYPE REF TO object.
      t16->load( ).
      READ TABLE t16->items INDEX 1 INTO t86.
      DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t86 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t87 ?= t86.
        DATA t88 TYPE REF TO object.
        t88 = t87->as_ref( ).
        t84 ?= t88.
      ELSE.
        t84 ?= t86.
      ENDIF.
      IF t84 IS BOUND.
        DATA t89 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t90 TYPE REF TO object.
        t90 = t84.
        TRY.
            t83 ?= t90.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t83 IS NOT BOUND.
          TRY.
              t89 ?= t84.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t89 IS BOUND.
            t83 = t89->source( ).
          ENDIF.
          IF t83 IS NOT BOUND.
            CREATE OBJECT t83.
            t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t83->oval = t84.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t93 TYPE REF TO zif_lnt_statement_runnable.
      DATA t95 TYPE REF TO object.
      t16->load( ).
      READ TABLE t16->items INDEX 2 INTO t95.
      DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t95 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t96 ?= t95.
        DATA t97 TYPE REF TO object.
        t97 = t96->as_ref( ).
        t93 ?= t97.
      ELSE.
        t93 ?= t95.
      ENDIF.
      IF t93 IS BOUND.
        DATA t98 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t99 TYPE REF TO object.
        t99 = t93.
        TRY.
            t92 ?= t99.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t92 IS NOT BOUND.
          TRY.
              t98 ?= t93.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t98 IS BOUND.
            t92 = t98->source( ).
          ENDIF.
          IF t92 IS NOT BOUND.
            CREATE OBJECT t92.
            t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t92->oval = t93.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t101.
      t100 = t101.
      DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t104) = 2.
      t102 = t16->slice1( p0 = t104 ).
      DATA t105 TYPE REF TO zif_lnt_statement_runnable.
      DATA t106 TYPE REF TO object.
      DATA(t107) = VALUE i( ).
      DO.
        t102->load( ).
        IF t107 >= lines( t102->items ).
          EXIT.
        ENDIF.
        CLEAR t106.
        READ TABLE t102->items INDEX t107 + 1 INTO t106.
        t107 = t107 + 1.
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t108.
        CLEAR t105.
        IF t106 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t108 ?= t106.
          DATA t109 TYPE REF TO object.
          CLEAR t109.
          t109 = t108->as_ref( ).
          t105 ?= t109.
        ELSE.
          t105 ?= t106.
        ENDIF.
        DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t111.
        CLEAR t111.
        IF t105 IS BOUND.
          DATA t113 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t113.
          DATA t114 TYPE REF TO object.
          CLEAR t114.
          CLEAR t113.
          t114 = t105.
          TRY.
              t111 ?= t114.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t111 IS NOT BOUND.
            TRY.
                t113 ?= t105.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t113 IS BOUND.
              t111 = t113->source( ).
            ENDIF.
            IF t111 IS NOT BOUND.
              CREATE OBJECT t111.
              t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t111->oval = t105.
            ENDIF.
          ENDIF.
        ENDIF.
        t100->load( ).
        APPEND t111 TO t100->items.
        t100->save( ).
      ENDDO.
      DATA t115 TYPE REF TO zif_lnt_statement_runnable.
      t115 = zcl_lnt_st_combi_module=>alt_prio( i_first = t83 i_second = t92 i_rest = t100 ).
      t71 = t115.
    ENDIF.
    t70 = t71.
    DATA t119 TYPE REF TO zif_lnt_statement_runnable.
    DATA t120 TYPE REF TO zif_lnt_statement_runnable.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t122 TYPE REF TO zif_lnt_statement_runnable.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t70 IS BOUND.
      DATA t126 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t127 TYPE REF TO object.
      t127 = t70.
      TRY.
          t124 ?= t127.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t124 IS NOT BOUND.
        TRY.
            t126 ?= t70.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t126 IS BOUND.
          t124 = t126->source( ).
        ENDIF.
        IF t124 IS NOT BOUND.
          CREATE OBJECT t124.
          t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t124->oval = t70.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t130 TYPE REF TO zif_lnt_statement_runnable.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t132 TYPE REF TO zif_lnt_statement_runnable.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t135) = |,|.
    CREATE OBJECT t134.
    t134->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t134->sval = t135.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t70 IS BOUND.
      DATA t139 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t140 TYPE REF TO object.
      t140 = t70.
      TRY.
          t137 ?= t140.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t137 IS NOT BOUND.
        TRY.
            t139 ?= t70.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t139 IS BOUND.
          t137 = t139->source( ).
        ENDIF.
        IF t137 IS NOT BOUND.
          CREATE OBJECT t137.
          t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t137->oval = t70.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t142 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t142.
    DATA t143 TYPE REF TO zif_lnt_statement_runnable.
    t143 = zcl_lnt_st_combi_module=>seq( i_first = t134 i_second = t137 i_rest = t142 ).
    t132 = t143.
    IF t132 IS BOUND.
      DATA t147 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t148 TYPE REF TO object.
      t148 = t132.
      TRY.
          t131 ?= t148.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t131 IS NOT BOUND.
        TRY.
            t147 ?= t132.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t147 IS BOUND.
          t131 = t147->source( ).
        ENDIF.
        IF t131 IS NOT BOUND.
          CREATE OBJECT t131.
          t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t131->oval = t132.
        ENDIF.
      ENDIF.
    ENDIF.
    t130 = zcl_lnt_st_combi_module=>star_prio( i_first = t131 ).
    IF t130 IS BOUND.
      DATA t149 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t150 TYPE REF TO object.
      t150 = t130.
      TRY.
          t129 ?= t150.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t129 IS NOT BOUND.
        TRY.
            t149 ?= t130.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t149 IS BOUND.
          t129 = t149->source( ).
        ENDIF.
        IF t129 IS NOT BOUND.
          CREATE OBJECT t129.
          t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t129->oval = t130.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t152 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t152.
    DATA t153 TYPE REF TO zif_lnt_statement_runnable.
    t153 = zcl_lnt_st_combi_module=>seq( i_first = t124 i_second = t129 i_rest = t152 ).
    t122 = t153.
    IF t122 IS BOUND.
      DATA t157 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t158 TYPE REF TO object.
      t158 = t122.
      TRY.
          t121 ?= t158.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t121 IS NOT BOUND.
        TRY.
            t157 ?= t122.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t157 IS BOUND.
          t121 = t157->source( ).
        ENDIF.
        IF t121 IS NOT BOUND.
          CREATE OBJECT t121.
          t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t121->oval = t122.
        ENDIF.
      ENDIF.
    ENDIF.
    t120 = zcl_lnt_st_combi_module=>opt_prio( i_first = t121 ).
    t119 = t120.
    DATA t159 TYPE REF TO zif_lnt_statement_runnable.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3 IS BOUND.
      DATA t162 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t163 TYPE REF TO object.
      t163 = t3.
      TRY.
          t160 ?= t163.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t160 IS NOT BOUND.
        TRY.
            t162 ?= t3.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t162 IS BOUND.
          t160 = t162->source( ).
        ENDIF.
        IF t160 IS NOT BOUND.
          CREATE OBJECT t160.
          t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t160->oval = t3.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t165 TYPE REF TO zif_lnt_statement_runnable.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t5 IS BOUND.
      DATA t169 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t170 TYPE REF TO object.
      t170 = t5.
      TRY.
          t167 ?= t170.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t167 IS NOT BOUND.
        TRY.
            t169 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t169 IS BOUND.
          t167 = t169->source( ).
        ENDIF.
        IF t167 IS NOT BOUND.
          CREATE OBJECT t167.
          t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t167->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t173 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t174) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t173 = zcl_lnt_st_combi_module=>tok( i_t = t174 ).
    IF t173 IS BOUND.
      DATA t175 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t176 TYPE REF TO object.
      t176 = t173.
      TRY.
          t172 ?= t176.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t172 IS NOT BOUND.
        TRY.
            t175 ?= t173.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t175 IS BOUND.
          t172 = t175->source( ).
        ENDIF.
        IF t172 IS NOT BOUND.
          CREATE OBJECT t172.
          t172->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t172->oval = t173.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t177 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t178 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t178.
    t177 = t178.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t119 IS BOUND.
      DATA t182 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t183 TYPE REF TO object.
      t183 = t119.
      TRY.
          t180 ?= t183.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t180 IS NOT BOUND.
        TRY.
            t182 ?= t119.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t182 IS BOUND.
          t180 = t182->source( ).
        ENDIF.
        IF t180 IS NOT BOUND.
          CREATE OBJECT t180.
          t180->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t180->oval = t119.
        ENDIF.
      ENDIF.
    ENDIF.
    t177->load( ).
    APPEND t180 TO t177->items.
    t177->save( ).
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t186 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t187) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t186 = zcl_lnt_st_combi_module=>tok( i_t = t187 ).
    IF t186 IS BOUND.
      DATA t188 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t189 TYPE REF TO object.
      t189 = t186.
      TRY.
          t185 ?= t189.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t185 IS NOT BOUND.
        TRY.
            t188 ?= t186.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t188 IS BOUND.
          t185 = t188->source( ).
        ENDIF.
        IF t185 IS NOT BOUND.
          CREATE OBJECT t185.
          t185->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t185->oval = t186.
        ENDIF.
      ENDIF.
    ENDIF.
    t177->load( ).
    APPEND t185 TO t177->items.
    t177->save( ).
    DATA t190 TYPE REF TO zif_lnt_statement_runnable.
    t190 = zcl_lnt_st_combi_module=>seq( i_first = t167 i_second = t172 i_rest = t177 ).
    t165 = t190.
    IF t165 IS BOUND.
      DATA t194 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t195 TYPE REF TO object.
      t195 = t165.
      TRY.
          t164 ?= t195.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t164 IS NOT BOUND.
        TRY.
            t194 ?= t165.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t194 IS BOUND.
          t164 = t194->source( ).
        ENDIF.
        IF t164 IS NOT BOUND.
          CREATE OBJECT t164.
          t164->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t164->oval = t165.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t196 TYPE REF TO zcl_lnt_iver_options.
    DATA t198 TYPE REF TO zcl_lnt_iver_options.
    DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t202) = |OpenABAP|.
    DATA(t203) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t203->has = abap_true.
    t203->value = t202.
    t199 = t203.
    t198 = NEW zcl_lnt_iver_options( i_also = t199 ).
    CREATE OBJECT t198->zlnt_view_ownkeys_b0e8086400eb.
    t198->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t198->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t205 ).
    CREATE OBJECT t198->zlnt_json_ownkeys_70e5fd461788.
    t198->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t206) = |also|.
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t198->zlnt_json_ownkeys_70e5fd461788->put( p0 = t206 p1 = t207 ).
    t196 = t198.
    t159 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t160 i_first = t164 i_opts = t196 ).
    result = t159.

  ENDMETHOD.

  METHOD fn_value_for.
    DATA(t1) = i_abap_only.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE string( ).
    t5 = i_p->value.
    DATA(t7) = |abap_only|.
    t4 = xsdbool( t5 = t7 ).
    IF t4 = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t1 IS BOUND.
        DATA t10 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t11 TYPE REF TO object.
        t11 = t1.
        TRY.
            t8 ?= t11.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t8 IS NOT BOUND.
          TRY.
              t10 ?= t1.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t10 IS BOUND.
            t8 = t10->source( ).
          ENDIF.
          IF t8 IS NOT BOUND.
            CREATE OBJECT t8.
            t8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t8->oval = t1.
          ENDIF.
        ENDIF.
      ENDIF.
      t3 = t8.
    ELSE.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
      IF t13 IS BOUND.
        CREATE OBJECT t12.
        t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
        t12->cval = t13.
      ENDIF.
      t3 = t12.
    ENDIF.
    result = t3.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d287_e5df01c1631a.
  ENDMETHOD.
ENDCLASS.
