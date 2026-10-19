* TS: src/abap/2_statements/expressions/sql_field_list.ts:7:1 SQLFieldList
CLASS zcl_lnt_sql_field_list DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_field_list IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |AS|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d289_f424b1178837.
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
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t19 = zcl_lnt_st_combi_module=>tok( i_t = t20 ).
    IF t19 IS BOUND.
      DATA t21 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t22 TYPE REF TO object.
      t22 = t19.
      TRY.
          t18 ?= t22.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t18 IS NOT BOUND.
        TRY.
            t21 ?= t19.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t21 IS BOUND.
          t18 = t21->source( ).
        ENDIF.
        IF t18 IS NOT BOUND.
          CREATE OBJECT t18.
          t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t18->oval = t19.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
    IF t25 IS BOUND.
      CREATE OBJECT t24.
      t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t24->cval = t25.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t26.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t30 TYPE REF TO zif_lnt_statement_runnable.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t34) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
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
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t40) = zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de.
    t39 = zcl_lnt_st_combi_module=>tok( i_t = t40 ).
    IF t39 IS BOUND.
      DATA t41 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t42 TYPE REF TO object.
      t42 = t39.
      TRY.
          t38 ?= t42.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t38 IS NOT BOUND.
        TRY.
            t41 ?= t39.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t41 IS BOUND.
          t38 = t41->source( ).
        ENDIF.
        IF t38 IS NOT BOUND.
          CREATE OBJECT t38.
          t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t38->oval = t39.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t44.
    t30 = zcl_lnt_st_combi_module=>alt_prio( i_first = t32 i_second = t38 i_rest = t44 ).
    IF t30 IS BOUND.
      DATA t49 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t50 TYPE REF TO object.
      t50 = t30.
      TRY.
          t29 ?= t50.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t29 IS NOT BOUND.
        TRY.
            t49 ?= t30.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t49 IS BOUND.
          t29 = t49->source( ).
        ENDIF.
        IF t29 IS NOT BOUND.
          CREATE OBJECT t29.
          t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t29->oval = t30.
        ENDIF.
      ENDIF.
    ENDIF.
    t26->load( ).
    APPEND t29 TO t26->items.
    t26->save( ).
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t56 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t57 TYPE REF TO object.
      t57 = t1.
      TRY.
          t54 ?= t57.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t54 IS NOT BOUND.
        TRY.
            t56 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t56 IS BOUND.
          t54 = t56->source( ).
        ENDIF.
        IF t54 IS NOT BOUND.
          CREATE OBJECT t54.
          t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t54->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t53 = zcl_lnt_st_combi_module=>opt_prio( i_first = t54 ).
    IF t53 IS BOUND.
      DATA t58 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t59 TYPE REF TO object.
      t59 = t53.
      TRY.
          t52 ?= t59.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t52 IS NOT BOUND.
        TRY.
            t58 ?= t53.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t58 IS BOUND.
          t52 = t58->source( ).
        ENDIF.
        IF t52 IS NOT BOUND.
          CREATE OBJECT t52.
          t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t52->oval = t53.
        ENDIF.
      ENDIF.
    ENDIF.
    t26->load( ).
    APPEND t52 TO t26->items.
    t26->save( ).
    t15 = zcl_lnt_st_combi_module=>seq( i_first = t18 i_second = t24 i_rest = t26 ).
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t67 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t67 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v740sp05| ).
    IF t67 IS BOUND.
      DATA t71 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t72 TYPE REF TO object.
      t72 = t67.
      TRY.
          t66 ?= t72.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t66 IS NOT BOUND.
        TRY.
            t71 ?= t67.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t71 IS BOUND.
          t66 = t71->source( ).
        ENDIF.
        IF t66 IS NOT BOUND.
          CREATE OBJECT t66.
          t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t66->oval = t67.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t76 TYPE REF TO zif_lnt_statement_runnable.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t78.
    t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t78->sval = |,|.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t85) = zlnt_runtime_desc_78196487750d=>zlnt_member_d315_136d5faf95cc.
    IF t85 IS BOUND.
      CREATE OBJECT t84.
      t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t84->cval = t85.
    ENDIF.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t89 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t90 TYPE REF TO object.
      t90 = t15.
      TRY.
          t87 ?= t90.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t87 IS NOT BOUND.
        TRY.
            t89 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t89 IS BOUND.
          t87 = t89->source( ).
        ENDIF.
        IF t87 IS NOT BOUND.
          CREATE OBJECT t87.
          t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t87->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t92.
    t82 = zcl_lnt_st_combi_module=>alt_prio( i_first = t84 i_second = t87 i_rest = t92 ).
    IF t82 IS BOUND.
      DATA t97 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t98 TYPE REF TO object.
      t98 = t82.
      TRY.
          t81 ?= t98.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t81 IS NOT BOUND.
        TRY.
            t97 ?= t82.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t97 IS BOUND.
          t81 = t97->source( ).
        ENDIF.
        IF t81 IS NOT BOUND.
          CREATE OBJECT t81.
          t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t81->oval = t82.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t100.
    t76 = zcl_lnt_st_combi_module=>seq( i_first = t78 i_second = t81 i_rest = t100 ).
    IF t76 IS BOUND.
      DATA t105 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t106 TYPE REF TO object.
      t106 = t76.
      TRY.
          t75 ?= t106.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t75 IS NOT BOUND.
        TRY.
            t105 ?= t76.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t105 IS BOUND.
          t75 = t105->source( ).
        ENDIF.
        IF t75 IS NOT BOUND.
          CREATE OBJECT t75.
          t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t75->oval = t76.
        ENDIF.
      ENDIF.
    ENDIF.
    t74 = zcl_lnt_st_combi_module=>star_prio( i_first = t75 ).
    IF t74 IS BOUND.
      DATA t107 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t108 TYPE REF TO object.
      t108 = t74.
      TRY.
          t73 ?= t108.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t73 IS NOT BOUND.
        TRY.
            t107 ?= t74.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t107 IS BOUND.
          t73 = t107->source( ).
        ENDIF.
        IF t73 IS NOT BOUND.
          CREATE OBJECT t73.
          t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t73->oval = t74.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t111 TYPE REF TO zcl_lnt_iver_options.
    DATA(t116) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t116->has = abap_true.
    t116->value = |OpenABAP|.
    t111 = NEW zcl_lnt_iver_options( i_also = t116 ).
    CREATE OBJECT t111->zlnt_view_ownkeys_b0e8086400eb.
    t111->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t111->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t118 ).
    CREATE OBJECT t111->zlnt_json_ownkeys_70e5fd461788.
    t111->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t111->zlnt_json_ownkeys_70e5fd461788->put( p0 = |also| p1 = t120 ).
    t64 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t66 i_first = t73 i_opts = t111 ).
    DATA t122 TYPE REF TO zif_lnt_statement_runnable.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t125 TYPE REF TO zif_lnt_statement_runnable.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t128 TYPE REF TO zif_lnt_statement_runnable.
    t128 = zcl_lnt_st_combi_module=>stop_before( i_t1 = |UP| i_t2 = |TO| ).
    IF t128 IS BOUND.
      DATA t131 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t132 TYPE REF TO object.
      t132 = t128.
      TRY.
          t127 ?= t132.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t127 IS NOT BOUND.
        TRY.
            t131 ?= t128.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t131 IS BOUND.
          t127 = t131->source( ).
        ENDIF.
        IF t127 IS NOT BOUND.
          CREATE OBJECT t127.
          t127->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t127->oval = t128.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t135) = zlnt_runtime_desc_78196487750d=>zlnt_member_d315_136d5faf95cc.
    IF t135 IS BOUND.
      CREATE OBJECT t134.
      t134->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t134->cval = t135.
    ENDIF.
    DATA t137 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t137.
    t125 = zcl_lnt_st_combi_module=>seq( i_first = t127 i_second = t134 i_rest = t137 ).
    IF t125 IS BOUND.
      DATA t142 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t143 TYPE REF TO object.
      t143 = t125.
      TRY.
          t124 ?= t143.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t124 IS NOT BOUND.
        TRY.
            t142 ?= t125.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t142 IS BOUND.
          t124 = t142->source( ).
        ENDIF.
        IF t124 IS NOT BOUND.
          CREATE OBJECT t124.
          t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t124->oval = t125.
        ENDIF.
      ENDIF.
    ENDIF.
    t122 = zcl_lnt_st_combi_module=>star_prio( i_first = t124 ).
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t146.
    t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t146->sval = |*|.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t150) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t150 IS BOUND.
      CREATE OBJECT t149.
      t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t149->cval = t150.
    ENDIF.
    DATA t151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t151.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t155 TYPE REF TO zif_lnt_statement_runnable.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t158) = zlnt_runtime_desc_78196487750d=>zlnt_member_d315_136d5faf95cc.
    IF t158 IS BOUND.
      CREATE OBJECT t157.
      t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t157->cval = t158.
    ENDIF.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t161 TYPE REF TO zif_lnt_statement_runnable.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t64 IS BOUND.
      DATA t165 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t166 TYPE REF TO object.
      t166 = t64.
      TRY.
          t163 ?= t166.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t163 IS NOT BOUND.
        TRY.
            t165 ?= t64.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t165 IS BOUND.
          t163 = t165->source( ).
        ENDIF.
        IF t163 IS NOT BOUND.
          CREATE OBJECT t163.
          t163->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t163->oval = t64.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t122 IS BOUND.
      DATA t170 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t171 TYPE REF TO object.
      t171 = t122.
      TRY.
          t168 ?= t171.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t168 IS NOT BOUND.
        TRY.
            t170 ?= t122.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t170 IS BOUND.
          t168 = t170->source( ).
        ENDIF.
        IF t168 IS NOT BOUND.
          CREATE OBJECT t168.
          t168->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t168->oval = t122.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t173.
    t161 = zcl_lnt_st_combi_module=>alt( i_first = t163 i_second = t168 i_rest = t173 ).
    IF t161 IS BOUND.
      DATA t178 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t179 TYPE REF TO object.
      t179 = t161.
      TRY.
          t160 ?= t179.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t160 IS NOT BOUND.
        TRY.
            t178 ?= t161.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t178 IS BOUND.
          t160 = t178->source( ).
        ENDIF.
        IF t160 IS NOT BOUND.
          CREATE OBJECT t160.
          t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t160->oval = t161.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t181 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t181.
    t155 = zcl_lnt_st_combi_module=>seq( i_first = t157 i_second = t160 i_rest = t181 ).
    IF t155 IS BOUND.
      DATA t186 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t187 TYPE REF TO object.
      t187 = t155.
      TRY.
          t154 ?= t187.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t154 IS NOT BOUND.
        TRY.
            t186 ?= t155.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t186 IS BOUND.
          t154 = t186->source( ).
        ENDIF.
        IF t154 IS NOT BOUND.
          CREATE OBJECT t154.
          t154->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t154->oval = t155.
        ENDIF.
      ENDIF.
    ENDIF.
    t151->load( ).
    APPEND t154 TO t151->items.
    t151->save( ).
    result = zcl_lnt_st_combi_module=>alt_prio( i_first = t146 i_second = t149 i_rest = t151 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d317_252b4f448498.
  ENDMETHOD.
ENDCLASS.
