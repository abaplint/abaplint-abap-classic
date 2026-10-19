* TS: src/abap/2_statements/expressions/sql_function_input.ts:14:1 SQLFunctionInput
CLASS zcl_lnt_sql_function_input DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_function_input IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t5 = zcl_lnt_st_combi_module=>tok( i_t = t6 ).
    IF t5 IS BOUND.
      DATA t7 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t8 TYPE REF TO object.
      t8 = t5.
      TRY.
          t4 ?= t8.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t7 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t7 IS BOUND.
          t4 = t7->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t10->cval = t11.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t12.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
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
    t12->load( ).
    APPEND t15 TO t12->items.
    t12->save( ).
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t10 i_rest = t12 ).
    DATA t24 TYPE REF TO zif_lnt_statement_runnable.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t27 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t27 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v740sp05| ).
    IF t27 IS BOUND.
      DATA t31 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t32 TYPE REF TO object.
      t32 = t27.
      TRY.
          t26 ?= t32.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t26 IS NOT BOUND.
        TRY.
            t31 ?= t27.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t31 IS BOUND.
          t26 = t31->source( ).
        ENDIF.
        IF t26 IS NOT BOUND.
          CREATE OBJECT t26.
          t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t26->oval = t27.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t38) = zlnt_runtime_desc_78196487750d=>zlnt_member_d42_9f93cd02a8cf40.
    t37 = zcl_lnt_st_combi_module=>tok( i_t = t38 ).
    IF t37 IS BOUND.
      DATA t39 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t40 TYPE REF TO object.
      t40 = t37.
      TRY.
          t36 ?= t40.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t36 IS NOT BOUND.
        TRY.
            t39 ?= t37.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t39 IS BOUND.
          t36 = t39->source( ).
        ENDIF.
        IF t36 IS NOT BOUND.
          CREATE OBJECT t36.
          t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t36->oval = t37.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t46) = zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428.
    IF t46 IS BOUND.
      CREATE OBJECT t45.
      t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t45->cval = t46.
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t50 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t51 TYPE REF TO object.
      t51 = t1.
      TRY.
          t48 ?= t51.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t48 IS NOT BOUND.
        TRY.
            t50 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t50 IS BOUND.
          t48 = t50->source( ).
        ENDIF.
        IF t48 IS NOT BOUND.
          CREATE OBJECT t48.
          t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t48->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t53.
    t43 = zcl_lnt_st_combi_module=>alt_prio( i_first = t45 i_second = t48 i_rest = t53 ).
    IF t43 IS BOUND.
      DATA t58 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t59 TYPE REF TO object.
      t59 = t43.
      TRY.
          t42 ?= t59.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t42 IS NOT BOUND.
        TRY.
            t58 ?= t43.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t58 IS BOUND.
          t42 = t58->source( ).
        ENDIF.
        IF t42 IS NOT BOUND.
          CREATE OBJECT t42.
          t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t42->oval = t43.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t61.
    t34 = zcl_lnt_st_combi_module=>seq( i_first = t36 i_second = t42 i_rest = t61 ).
    IF t34 IS BOUND.
      DATA t66 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t67 TYPE REF TO object.
      t67 = t34.
      TRY.
          t33 ?= t67.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t33 IS NOT BOUND.
        TRY.
            t66 ?= t34.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t66 IS BOUND.
          t33 = t66->source( ).
        ENDIF.
        IF t33 IS NOT BOUND.
          CREATE OBJECT t33.
          t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t33->oval = t34.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t68 TYPE REF TO zcl_lnt_iver_options.
    t24 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t26 i_first = t33 i_opts = t68 ).
    DATA t69 TYPE REF TO zif_lnt_statement_runnable.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t72.
    t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t72->sval = |(|.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t76) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
    IF t76 IS BOUND.
      CREATE OBJECT t75.
      t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t75->cval = t76.
    ENDIF.
    DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t77.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t80.
    t80->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t80->sval = |)|.
    t77->load( ).
    APPEND t80 TO t77->items.
    t77->save( ).
    t69 = zcl_lnt_st_combi_module=>seq( i_first = t72 i_second = t75 i_rest = t77 ).
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t69 IS BOUND.
      DATA t91 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t92 TYPE REF TO object.
      t92 = t69.
      TRY.
          t89 ?= t92.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t89 IS NOT BOUND.
        TRY.
            t91 ?= t69.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t91 IS BOUND.
          t89 = t91->source( ).
        ENDIF.
        IF t89 IS NOT BOUND.
          CREATE OBJECT t89.
          t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t89->oval = t69.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t95) = zlnt_runtime_desc_78196487750d=>zlnt_member_d294_92c50184534c.
    IF t95 IS BOUND.
      CREATE OBJECT t94.
      t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t94->cval = t95.
    ENDIF.
    DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t96.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t100) = zlnt_runtime_desc_78196487750d=>zlnt_member_d287_e5df01c1631a.
    IF t100 IS BOUND.
      CREATE OBJECT t99.
      t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t99->cval = t100.
    ENDIF.
    t96->load( ).
    APPEND t99 TO t96->items.
    t96->save( ).
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t103) = zlnt_runtime_desc_78196487750d=>zlnt_member_d284_6229eec94af2.
    IF t103 IS BOUND.
      CREATE OBJECT t102.
      t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t102->cval = t103.
    ENDIF.
    t96->load( ).
    APPEND t102 TO t96->items.
    t96->save( ).
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t106) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
    IF t106 IS BOUND.
      CREATE OBJECT t105.
      t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t105->cval = t106.
    ENDIF.
    t96->load( ).
    APPEND t105 TO t96->items.
    t96->save( ).
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t109) = zlnt_runtime_desc_78196487750d=>zlnt_member_d285_443a2a1b82f8.
    IF t109 IS BOUND.
      CREATE OBJECT t108.
      t108->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t108->cval = t109.
    ENDIF.
    t96->load( ).
    APPEND t108 TO t96->items.
    t96->save( ).
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t112) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
    IF t112 IS BOUND.
      CREATE OBJECT t111.
      t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t111->cval = t112.
    ENDIF.
    t96->load( ).
    APPEND t111 TO t96->items.
    t96->save( ).
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t24 IS BOUND.
      DATA t116 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t117 TYPE REF TO object.
      t117 = t24.
      TRY.
          t114 ?= t117.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t114 IS NOT BOUND.
        TRY.
            t116 ?= t24.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t116 IS BOUND.
          t114 = t116->source( ).
        ENDIF.
        IF t114 IS NOT BOUND.
          CREATE OBJECT t114.
          t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t114->oval = t24.
        ENDIF.
      ENDIF.
    ENDIF.
    t96->load( ).
    APPEND t114 TO t96->items.
    t96->save( ).
    t86 = zcl_lnt_st_combi_module=>alt_prio( i_first = t89 i_second = t94 i_rest = t96 ).
    DATA t122 TYPE REF TO zif_lnt_statement_runnable.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t125.
    t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t125->sval = |+|.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t128.
    t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t128->sval = |-|.
    DATA t130 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t130.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t133.
    t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t133->sval = |*|.
    t130->load( ).
    APPEND t133 TO t130->items.
    t130->save( ).
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t136.
    t136->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t136->sval = |/|.
    t130->load( ).
    APPEND t136 TO t130->items.
    t130->save( ).
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t139.
    t139->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t139->sval = |&&|.
    t130->load( ).
    APPEND t139 TO t130->items.
    t130->save( ).
    t122 = zcl_lnt_st_combi_module=>alt_prio( i_first = t125 i_second = t128 i_rest = t130 ).
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t86 IS BOUND.
      DATA t149 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t150 TYPE REF TO object.
      t150 = t86.
      TRY.
          t147 ?= t150.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t147 IS NOT BOUND.
        TRY.
            t149 ?= t86.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t149 IS BOUND.
          t147 = t149->source( ).
        ENDIF.
        IF t147 IS NOT BOUND.
          CREATE OBJECT t147.
          t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t147->oval = t86.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t153 TYPE REF TO zif_lnt_statement_runnable.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t155 TYPE REF TO zif_lnt_statement_runnable.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t122 IS BOUND.
      DATA t159 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t160 TYPE REF TO object.
      t160 = t122.
      TRY.
          t157 ?= t160.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t157 IS NOT BOUND.
        TRY.
            t159 ?= t122.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t159 IS BOUND.
          t157 = t159->source( ).
        ENDIF.
        IF t157 IS NOT BOUND.
          CREATE OBJECT t157.
          t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t157->oval = t122.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t86 IS BOUND.
      DATA t164 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t165 TYPE REF TO object.
      t165 = t86.
      TRY.
          t162 ?= t165.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t162 IS NOT BOUND.
        TRY.
            t164 ?= t86.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t164 IS BOUND.
          t162 = t164->source( ).
        ENDIF.
        IF t162 IS NOT BOUND.
          CREATE OBJECT t162.
          t162->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t162->oval = t86.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t167 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t167.
    t155 = zcl_lnt_st_combi_module=>seq( i_first = t157 i_second = t162 i_rest = t167 ).
    IF t155 IS BOUND.
      DATA t172 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t173 TYPE REF TO object.
      t173 = t155.
      TRY.
          t154 ?= t173.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t154 IS NOT BOUND.
        TRY.
            t172 ?= t155.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t172 IS BOUND.
          t154 = t172->source( ).
        ENDIF.
        IF t154 IS NOT BOUND.
          CREATE OBJECT t154.
          t154->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t154->oval = t155.
        ENDIF.
      ENDIF.
    ENDIF.
    t153 = zcl_lnt_st_combi_module=>star_prio( i_first = t154 ).
    IF t153 IS BOUND.
      DATA t174 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t175 TYPE REF TO object.
      t175 = t153.
      TRY.
          t152 ?= t175.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t152 IS NOT BOUND.
        TRY.
            t174 ?= t153.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t174 IS BOUND.
          t152 = t174->source( ).
        ENDIF.
        IF t152 IS NOT BOUND.
          CREATE OBJECT t152.
          t152->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t152->oval = t153.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t177 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t177.
    result = zcl_lnt_st_combi_module=>seq( i_first = t147 i_second = t152 i_rest = t177 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
  ENDMETHOD.
ENDCLASS.
