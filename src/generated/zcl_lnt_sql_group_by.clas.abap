* TS: src/abap/2_statements/expressions/sql_group_by.ts:9:1 SQLGroupBy
CLASS zcl_lnt_sql_group_by DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_group_by IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    t5 = zcl_lnt_st_combi_module=>stop_before( i_t1 = |ORDER| i_t2 = |BY| ).
    IF t5 IS BOUND.
      DATA t8 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t4 ?= t5.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t8 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t8 IS BOUND.
          t4 = t8->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t12 TYPE REF TO zif_lnt_statement_runnable.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t15) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
    IF t15 IS BOUND.
      CREATE OBJECT t14.
      t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t14->cval = t15.
    ENDIF.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t18 IS BOUND.
      CREATE OBJECT t17.
      t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t17->cval = t18.
    ENDIF.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t20.
    t12 = zcl_lnt_st_combi_module=>alt( i_first = t14 i_second = t17 i_rest = t20 ).
    IF t12 IS BOUND.
      DATA t25 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t11 ?= t12.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t11 IS NOT BOUND.
        TRY.
            t25 ?= t12.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t25 IS BOUND.
          t11 = t25->source( ).
        ENDIF.
        IF t11 IS NOT BOUND.
          CREATE OBJECT t11.
          t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t11->oval = t12.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t28.
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t11 i_rest = t28 ).
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t36 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t36 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v740sp02| ).
    IF t36 IS BOUND.
      DATA t40 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t41 TYPE REF TO object.
      t41 = t36.
      TRY.
          t35 ?= t41.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t35 IS NOT BOUND.
        TRY.
            t40 ?= t36.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t40 IS BOUND.
          t35 = t40->source( ).
        ENDIF.
        IF t35 IS NOT BOUND.
          CREATE OBJECT t35.
          t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t35->oval = t36.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t43) = zlnt_runtime_desc_78196487750d=>zlnt_member_d315_136d5faf95cc.
    IF t43 IS BOUND.
      CREATE OBJECT t42.
      t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t42->cval = t43.
    ENDIF.
    DATA t46 TYPE REF TO zcl_lnt_iver_options.
    DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t51->has = abap_true.
    t51->value = |OpenABAP|.
    t46 = NEW zcl_lnt_iver_options( i_also = t51 ).
    CREATE OBJECT t46->zlnt_view_ownkeys_b0e8086400eb.
    t46->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t53 ).
    CREATE OBJECT t46->zlnt_json_ownkeys_70e5fd461788.
    t46->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t55 ).
    t33 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t35 i_first = t42 i_opts = t46 ).
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t60 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t60 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v740sp02| ).
    IF t60 IS BOUND.
      DATA t64 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t65 TYPE REF TO object.
      t65 = t60.
      TRY.
          t59 ?= t65.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t59 IS NOT BOUND.
        TRY.
            t64 ?= t60.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t64 IS BOUND.
          t59 = t64->source( ).
        ENDIF.
        IF t59 IS NOT BOUND.
          CREATE OBJECT t59.
          t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t59->oval = t60.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t67 TYPE REF TO zif_lnt_statement_runnable.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t69.
    t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t69->sval = |GROUP BY|.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t33 IS BOUND.
      DATA t74 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t72 ?= t33.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t72 IS NOT BOUND.
        TRY.
            t74 ?= t33.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t74 IS BOUND.
          t72 = t74->source( ).
        ENDIF.
        IF t72 IS NOT BOUND.
          CREATE OBJECT t72.
          t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t72->oval = t33.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t76.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t80 TYPE REF TO zif_lnt_statement_runnable.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t83 TYPE REF TO zif_lnt_statement_runnable.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t87.
    t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t87->sval = |,|.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t33 IS BOUND.
      DATA t92 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t90 ?= t33.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t90 IS NOT BOUND.
        TRY.
            t92 ?= t33.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t92 IS BOUND.
          t90 = t92->source( ).
        ENDIF.
        IF t90 IS NOT BOUND.
          CREATE OBJECT t90.
          t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t90->oval = t33.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t95.
    t85 = zcl_lnt_st_combi_module=>seq( i_first = t87 i_second = t90 i_rest = t95 ).
    IF t85 IS BOUND.
      DATA t100 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t84 ?= t85.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t84 IS NOT BOUND.
        TRY.
            t100 ?= t85.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t100 IS BOUND.
          t84 = t100->source( ).
        ENDIF.
        IF t84 IS NOT BOUND.
          CREATE OBJECT t84.
          t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t84->oval = t85.
        ENDIF.
      ENDIF.
    ENDIF.
    t83 = zcl_lnt_st_combi_module=>plus( i_first = t84 ).
    IF t83 IS BOUND.
      DATA t102 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t82 ?= t83.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t82 IS NOT BOUND.
        TRY.
            t102 ?= t83.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t102 IS BOUND.
          t82 = t102->source( ).
        ENDIF.
        IF t82 IS NOT BOUND.
          CREATE OBJECT t82.
          t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t82->oval = t83.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t106 TYPE REF TO zif_lnt_statement_runnable.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t111 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t109 ?= t1.
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
    t108 = zcl_lnt_st_combi_module=>plus( i_first = t109 ).
    IF t108 IS BOUND.
      DATA t113 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t107 ?= t108.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t107 IS NOT BOUND.
        TRY.
            t113 ?= t108.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t113 IS BOUND.
          t107 = t113->source( ).
        ENDIF.
        IF t107 IS NOT BOUND.
          CREATE OBJECT t107.
          t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t107->oval = t108.
        ENDIF.
      ENDIF.
    ENDIF.
    t106 = zcl_lnt_st_combi_module=>opt_prio( i_first = t107 ).
    IF t106 IS BOUND.
      DATA t115 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t105 ?= t106.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t105 IS NOT BOUND.
        TRY.
            t115 ?= t106.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t115 IS BOUND.
          t105 = t115->source( ).
        ENDIF.
        IF t105 IS NOT BOUND.
          CREATE OBJECT t105.
          t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t105->oval = t106.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t118 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t118.
    t80 = zcl_lnt_st_combi_module=>alt_prio( i_first = t82 i_second = t105 i_rest = t118 ).
    IF t80 IS BOUND.
      DATA t123 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t79 ?= t80.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t79 IS NOT BOUND.
        TRY.
            t123 ?= t80.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t123 IS BOUND.
          t79 = t123->source( ).
        ENDIF.
        IF t79 IS NOT BOUND.
          CREATE OBJECT t79.
          t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t79->oval = t80.
        ENDIF.
      ENDIF.
    ENDIF.
    t76->load( ).
    APPEND t79 TO t76->items.
    t76->save( ).
    t67 = zcl_lnt_st_combi_module=>seq( i_first = t69 i_second = t72 i_rest = t76 ).
    IF t67 IS BOUND.
      DATA t129 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t66 ?= t67.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t66 IS NOT BOUND.
        TRY.
            t129 ?= t67.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t129 IS BOUND.
          t66 = t129->source( ).
        ENDIF.
        IF t66 IS NOT BOUND.
          CREATE OBJECT t66.
          t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t66->oval = t67.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t133 TYPE REF TO zcl_lnt_iver_options.
    DATA(t138) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t138->has = abap_true.
    t138->value = |OpenABAP|.
    t133 = NEW zcl_lnt_iver_options( i_also = t138 ).
    CREATE OBJECT t133->zlnt_view_ownkeys_b0e8086400eb.
    t133->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t133->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t140 ).
    CREATE OBJECT t133->zlnt_json_ownkeys_70e5fd461788.
    t133->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t133->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t142 ).
    t57 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t59 i_first = t66 i_opts = t133 ).
    DATA t144 TYPE REF TO zif_lnt_statement_runnable.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t148 TYPE REF TO zif_lnt_statement_runnable.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t150 TYPE REF TO zif_lnt_statement_runnable.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t154 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t152 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t152 IS NOT BOUND.
        TRY.
            t154 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t154 IS BOUND.
          t152 = t154->source( ).
        ENDIF.
        IF t152 IS NOT BOUND.
          CREATE OBJECT t152.
          t152->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t152->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t157.
    t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t157->sval = |,|.
    DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t160.
    t150 = zcl_lnt_st_combi_module=>seq( i_first = t152 i_second = t157 i_rest = t160 ).
    IF t150 IS BOUND.
      DATA t165 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t149 ?= t150.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t149 IS NOT BOUND.
        TRY.
            t165 ?= t150.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t165 IS BOUND.
          t149 = t165->source( ).
        ENDIF.
        IF t149 IS NOT BOUND.
          CREATE OBJECT t149.
          t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t149->oval = t150.
        ENDIF.
      ENDIF.
    ENDIF.
    t148 = zcl_lnt_st_combi_module=>plus( i_first = t149 ).
    IF t148 IS BOUND.
      DATA t167 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t147 ?= t148.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t147 IS NOT BOUND.
        TRY.
            t167 ?= t148.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t167 IS BOUND.
          t147 = t167->source( ).
        ENDIF.
        IF t147 IS NOT BOUND.
          CREATE OBJECT t147.
          t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t147->oval = t148.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t172 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t170 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t170 IS NOT BOUND.
        TRY.
            t172 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t172 IS BOUND.
          t170 = t172->source( ).
        ENDIF.
        IF t170 IS NOT BOUND.
          CREATE OBJECT t170.
          t170->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t170->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t175 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t175.
    t144 = zcl_lnt_st_combi_module=>seq( i_first = t147 i_second = t170 i_rest = t175 ).
    DATA t180 TYPE REF TO zif_lnt_statement_runnable.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t183.
    t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t183->sval = |GROUP BY|.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t187 TYPE REF TO zif_lnt_statement_runnable.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t144 IS BOUND.
      DATA t191 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t189 ?= t144.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t189 IS NOT BOUND.
        TRY.
            t191 ?= t144.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t191 IS BOUND.
          t189 = t191->source( ).
        ENDIF.
        IF t189 IS NOT BOUND.
          CREATE OBJECT t189.
          t189->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t189->oval = t144.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t195 TYPE REF TO zif_lnt_statement_runnable.
    DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t198 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t196 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t196 IS NOT BOUND.
        TRY.
            t198 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t198 IS BOUND.
          t196 = t198->source( ).
        ENDIF.
        IF t196 IS NOT BOUND.
          CREATE OBJECT t196.
          t196->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t196->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t195 = zcl_lnt_st_combi_module=>plus( i_first = t196 ).
    IF t195 IS BOUND.
      DATA t200 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t194 ?= t195.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t194 IS NOT BOUND.
        TRY.
            t200 ?= t195.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t200 IS BOUND.
          t194 = t200->source( ).
        ENDIF.
        IF t194 IS NOT BOUND.
          CREATE OBJECT t194.
          t194->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t194->oval = t195.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t203 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t203.
    t187 = zcl_lnt_st_combi_module=>alt_prio( i_first = t189 i_second = t194 i_rest = t203 ).
    IF t187 IS BOUND.
      DATA t208 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t186 ?= t187.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t186 IS NOT BOUND.
        TRY.
            t208 ?= t187.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t208 IS BOUND.
          t186 = t208->source( ).
        ENDIF.
        IF t186 IS NOT BOUND.
          CREATE OBJECT t186.
          t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t186->oval = t187.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t211 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t211.
    t180 = zcl_lnt_st_combi_module=>seq( i_first = t183 i_second = t186 i_rest = t211 ).
    DATA t216 TYPE REF TO zif_lnt_statement_runnable.
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t219 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t219 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v772| ).
    IF t219 IS BOUND.
      DATA t223 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t224 TYPE REF TO object.
      t224 = t219.
      TRY.
          t218 ?= t224.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t218 IS NOT BOUND.
        TRY.
            t223 ?= t219.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t223 IS BOUND.
          t218 = t223->source( ).
        ENDIF.
        IF t218 IS NOT BOUND.
          CREATE OBJECT t218.
          t218->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t218->oval = t219.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t226 TYPE REF TO zif_lnt_statement_runnable.
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t228.
    t228->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t228->sval = |GROUP BY|.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t232) = zlnt_runtime_desc_78196487750d=>zlnt_member_d328_b04944ab696d.
    IF t232 IS BOUND.
      CREATE OBJECT t231.
      t231->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t231->cval = t232.
    ENDIF.
    DATA t234 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t234.
    t226 = zcl_lnt_st_combi_module=>seq( i_first = t228 i_second = t231 i_rest = t234 ).
    IF t226 IS BOUND.
      DATA t239 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t225 ?= t226.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t225 IS NOT BOUND.
        TRY.
            t239 ?= t226.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t239 IS BOUND.
          t225 = t239->source( ).
        ENDIF.
        IF t225 IS NOT BOUND.
          CREATE OBJECT t225.
          t225->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t225->oval = t226.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t241 TYPE REF TO zcl_lnt_iver_options.
    t216 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t218 i_first = t225 i_opts = t241 ).
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t216 IS BOUND.
      DATA t246 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t244 ?= t216.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t244 IS NOT BOUND.
        TRY.
            t246 ?= t216.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t246 IS BOUND.
          t244 = t246->source( ).
        ENDIF.
        IF t244 IS NOT BOUND.
          CREATE OBJECT t244.
          t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t244->oval = t216.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t57 IS BOUND.
      DATA t251 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t249 ?= t57.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t249 IS NOT BOUND.
        TRY.
            t251 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t251 IS BOUND.
          t249 = t251->source( ).
        ENDIF.
        IF t249 IS NOT BOUND.
          CREATE OBJECT t249.
          t249->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t249->oval = t57.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t253 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t253.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t180 IS BOUND.
      DATA t258 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t256 ?= t180.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t256 IS NOT BOUND.
        TRY.
            t258 ?= t180.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t258 IS BOUND.
          t256 = t258->source( ).
        ENDIF.
        IF t256 IS NOT BOUND.
          CREATE OBJECT t256.
          t256->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t256->oval = t180.
        ENDIF.
      ENDIF.
    ENDIF.
    t253->load( ).
    APPEND t256 TO t253->items.
    t253->save( ).
    result = zcl_lnt_st_combi_module=>alt_prio( i_first = t244 i_second = t249 i_rest = t253 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d266_3b538ddd2a60.
  ENDMETHOD.
ENDCLASS.
