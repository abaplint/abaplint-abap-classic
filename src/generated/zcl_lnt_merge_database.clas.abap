* TS: src/abap/2_statements/statements/merge_database.ts:9:1 MergeDatabase
CLASS zcl_lnt_merge_database DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_merge_database IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d156_2545376961ff.
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t4->cval = t5.
    ENDIF.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zif_lnt_statement_runnable.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t13) = |AS|.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = t13.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d289_f424b1178837.
    IF t16 IS BOUND.
      CREATE OBJECT t15.
      t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t15->cval = t16.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t18.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    t19 = zcl_lnt_st_combi_module=>seq( i_first = t12 i_second = t15 i_rest = t18 ).
    t10 = t19.
    IF t10 IS BOUND.
      DATA t23 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t24 TYPE REF TO object.
      t24 = t10.
      TRY.
          t9 ?= t24.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t9 IS NOT BOUND.
        TRY.
            t23 ?= t10.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t23 IS BOUND.
          t9 = t23->source( ).
        ENDIF.
        IF t9 IS NOT BOUND.
          CREATE OBJECT t9.
          t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t9->oval = t10.
        ENDIF.
      ENDIF.
    ENDIF.
    t8 = zcl_lnt_st_combi_module=>opt_prio( i_first = t9 ).
    IF t8 IS BOUND.
      DATA t25 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t26 TYPE REF TO object.
      t26 = t8.
      TRY.
          t7 ?= t26.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t7 IS NOT BOUND.
        TRY.
            t25 ?= t8.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t25 IS BOUND.
          t7 = t25->source( ).
        ENDIF.
        IF t7 IS NOT BOUND.
          CREATE OBJECT t7.
          t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t7->oval = t8.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t28.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    t29 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t28 ).
    t1 = t29.
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t38) = zlnt_runtime_desc_78196487750d=>zlnt_member_d53_2a2dc81ca7ec77.
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
    DATA(t43) = |SELECT|.
    CREATE OBJECT t42.
    t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t42->sval = t43.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t45.
    t44 = t45.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    DATA t49 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t52) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t52->has = abap_true.
    t52->value = abap_false.
    t49 = t52.
    DATA t54 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t57) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t57->has = abap_true.
    t57->value = abap_false.
    t54 = t57.
    t48 = zcl_lnt_select_core_module=>build_select_core( i_allow_into = t49 i_allow_order_by = t54 ).
    IF t48 IS BOUND.
      DATA t59 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t60 TYPE REF TO object.
      t60 = t48.
      TRY.
          t47 ?= t60.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t47 IS NOT BOUND.
        TRY.
            t59 ?= t48.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t59 IS BOUND.
          t47 = t59->source( ).
        ENDIF.
        IF t47 IS NOT BOUND.
          CREATE OBJECT t47.
          t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t47->oval = t48.
        ENDIF.
      ENDIF.
    ENDIF.
    t44->load( ).
    APPEND t47 TO t44->items.
    t44->save( ).
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t63 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t64) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t63 = zcl_lnt_st_combi_module=>tok( i_t = t64 ).
    IF t63 IS BOUND.
      DATA t65 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t66 TYPE REF TO object.
      t66 = t63.
      TRY.
          t62 ?= t66.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t62 IS NOT BOUND.
        TRY.
            t65 ?= t63.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t65 IS BOUND.
          t62 = t65->source( ).
        ENDIF.
        IF t62 IS NOT BOUND.
          CREATE OBJECT t62.
          t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t62->oval = t63.
        ENDIF.
      ENDIF.
    ENDIF.
    t44->load( ).
    APPEND t62 TO t44->items.
    t44->save( ).
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t69 TYPE REF TO zif_lnt_statement_runnable.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t74) = |AS|.
    CREATE OBJECT t73.
    t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t73->sval = t74.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t77) = zlnt_runtime_desc_78196487750d=>zlnt_member_d289_f424b1178837.
    IF t77 IS BOUND.
      CREATE OBJECT t76.
      t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t76->cval = t77.
    ENDIF.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t79.
    DATA t80 TYPE REF TO zif_lnt_statement_runnable.
    t80 = zcl_lnt_st_combi_module=>seq( i_first = t73 i_second = t76 i_rest = t79 ).
    t71 = t80.
    IF t71 IS BOUND.
      DATA t84 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t85 TYPE REF TO object.
      t85 = t71.
      TRY.
          t70 ?= t85.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t70 IS NOT BOUND.
        TRY.
            t84 ?= t71.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t84 IS BOUND.
          t70 = t84->source( ).
        ENDIF.
        IF t70 IS NOT BOUND.
          CREATE OBJECT t70.
          t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t70->oval = t71.
        ENDIF.
      ENDIF.
    ENDIF.
    t69 = zcl_lnt_st_combi_module=>opt_prio( i_first = t70 ).
    IF t69 IS BOUND.
      DATA t86 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t87 TYPE REF TO object.
      t87 = t69.
      TRY.
          t68 ?= t87.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t68 IS NOT BOUND.
        TRY.
            t86 ?= t69.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t86 IS BOUND.
          t68 = t86->source( ).
        ENDIF.
        IF t68 IS NOT BOUND.
          CREATE OBJECT t68.
          t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t68->oval = t69.
        ENDIF.
      ENDIF.
    ENDIF.
    t44->load( ).
    APPEND t68 TO t44->items.
    t44->save( ).
    DATA t88 TYPE REF TO zif_lnt_statement_runnable.
    t88 = zcl_lnt_st_combi_module=>seq( i_first = t36 i_second = t42 i_rest = t44 ).
    t33 = t88.
    DATA t92 TYPE REF TO zif_lnt_statement_runnable.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t97) = zlnt_runtime_desc_78196487750d=>zlnt_member_d42_9f93cd02a8cf40.
    t96 = zcl_lnt_st_combi_module=>tok( i_t = t97 ).
    IF t96 IS BOUND.
      DATA t98 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t99 TYPE REF TO object.
      t99 = t96.
      TRY.
          t95 ?= t99.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t95 IS NOT BOUND.
        TRY.
            t98 ?= t96.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t98 IS BOUND.
          t95 = t98->source( ).
        ENDIF.
        IF t95 IS NOT BOUND.
          CREATE OBJECT t95.
          t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t95->oval = t96.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t102) = zlnt_runtime_desc_78196487750d=>zlnt_member_d289_f424b1178837.
    IF t102 IS BOUND.
      CREATE OBJECT t101.
      t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t101->cval = t102.
    ENDIF.
    DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t104.
    t103 = t104.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t107) = |AS|.
    CREATE OBJECT t106.
    t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t106->sval = t107.
    t103->load( ).
    APPEND t106 TO t103->items.
    t103->save( ).
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t110) = zlnt_runtime_desc_78196487750d=>zlnt_member_d289_f424b1178837.
    IF t110 IS BOUND.
      CREATE OBJECT t109.
      t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t109->cval = t110.
    ENDIF.
    t103->load( ).
    APPEND t109 TO t103->items.
    t103->save( ).
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t118) = |DECLARE CLIENT|.
    CREATE OBJECT t117.
    t117->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t117->sval = t118.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t121) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
    IF t121 IS BOUND.
      CREATE OBJECT t120.
      t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t120->cval = t121.
    ENDIF.
    DATA t123 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t123.
    DATA t124 TYPE REF TO zif_lnt_statement_runnable.
    t124 = zcl_lnt_st_combi_module=>seq( i_first = t117 i_second = t120 i_rest = t123 ).
    t115 = t124.
    IF t115 IS BOUND.
      DATA t128 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t129 TYPE REF TO object.
      t129 = t115.
      TRY.
          t114 ?= t129.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t114 IS NOT BOUND.
        TRY.
            t128 ?= t115.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t128 IS BOUND.
          t114 = t128->source( ).
        ENDIF.
        IF t114 IS NOT BOUND.
          CREATE OBJECT t114.
          t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t114->oval = t115.
        ENDIF.
      ENDIF.
    ENDIF.
    t113 = zcl_lnt_st_combi_module=>opt_prio( i_first = t114 ).
    IF t113 IS BOUND.
      DATA t130 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t131 TYPE REF TO object.
      t131 = t113.
      TRY.
          t112 ?= t131.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t112 IS NOT BOUND.
        TRY.
            t130 ?= t113.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t130 IS BOUND.
          t112 = t130->source( ).
        ENDIF.
        IF t112 IS NOT BOUND.
          CREATE OBJECT t112.
          t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t112->oval = t113.
        ENDIF.
      ENDIF.
    ENDIF.
    t103->load( ).
    APPEND t112 TO t103->items.
    t103->save( ).
    DATA t132 TYPE REF TO zif_lnt_statement_runnable.
    t132 = zcl_lnt_st_combi_module=>seq( i_first = t95 i_second = t101 i_rest = t103 ).
    t92 = t132.
    DATA t136 TYPE REF TO zif_lnt_statement_runnable.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t140) = zlnt_runtime_desc_78196487750d=>zlnt_member_d156_2545376961ff.
    IF t140 IS BOUND.
      CREATE OBJECT t139.
      t139->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t139->cval = t140.
    ENDIF.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t143 TYPE REF TO zif_lnt_statement_runnable.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t145 TYPE REF TO zif_lnt_statement_runnable.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t148) = |AS|.
    CREATE OBJECT t147.
    t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t147->sval = t148.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t151) = zlnt_runtime_desc_78196487750d=>zlnt_member_d289_f424b1178837.
    IF t151 IS BOUND.
      CREATE OBJECT t150.
      t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t150->cval = t151.
    ENDIF.
    DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t153.
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    t154 = zcl_lnt_st_combi_module=>seq( i_first = t147 i_second = t150 i_rest = t153 ).
    t145 = t154.
    IF t145 IS BOUND.
      DATA t158 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t159 TYPE REF TO object.
      t159 = t145.
      TRY.
          t144 ?= t159.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t144 IS NOT BOUND.
        TRY.
            t158 ?= t145.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t158 IS BOUND.
          t144 = t158->source( ).
        ENDIF.
        IF t144 IS NOT BOUND.
          CREATE OBJECT t144.
          t144->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t144->oval = t145.
        ENDIF.
      ENDIF.
    ENDIF.
    t143 = zcl_lnt_st_combi_module=>opt_prio( i_first = t144 ).
    IF t143 IS BOUND.
      DATA t160 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t161 TYPE REF TO object.
      t161 = t143.
      TRY.
          t142 ?= t161.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t142 IS NOT BOUND.
        TRY.
            t160 ?= t143.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t160 IS BOUND.
          t142 = t160->source( ).
        ENDIF.
        IF t142 IS NOT BOUND.
          CREATE OBJECT t142.
          t142->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t142->oval = t143.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t163.
    DATA t164 TYPE REF TO zif_lnt_statement_runnable.
    t164 = zcl_lnt_st_combi_module=>seq( i_first = t139 i_second = t142 i_rest = t163 ).
    t136 = t164.
    DATA t168 TYPE REF TO zif_lnt_statement_runnable.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t172) = |USING|.
    CREATE OBJECT t171.
    t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t171->sval = t172.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t175 TYPE REF TO zif_lnt_statement_runnable.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t33 IS BOUND.
      DATA t179 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t180 TYPE REF TO object.
      t180 = t33.
      TRY.
          t177 ?= t180.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t177 IS NOT BOUND.
        TRY.
            t179 ?= t33.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t179 IS BOUND.
          t177 = t179->source( ).
        ENDIF.
        IF t177 IS NOT BOUND.
          CREATE OBJECT t177.
          t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t177->oval = t33.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t92 IS BOUND.
      DATA t184 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t185 TYPE REF TO object.
      t185 = t92.
      TRY.
          t182 ?= t185.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t182 IS NOT BOUND.
        TRY.
            t184 ?= t92.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t184 IS BOUND.
          t182 = t184->source( ).
        ENDIF.
        IF t182 IS NOT BOUND.
          CREATE OBJECT t182.
          t182->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t182->oval = t92.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t186 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t187 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t187.
    t186 = t187.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t136 IS BOUND.
      DATA t191 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t192 TYPE REF TO object.
      t192 = t136.
      TRY.
          t189 ?= t192.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t189 IS NOT BOUND.
        TRY.
            t191 ?= t136.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t191 IS BOUND.
          t189 = t191->source( ).
        ENDIF.
        IF t189 IS NOT BOUND.
          CREATE OBJECT t189.
          t189->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t189->oval = t136.
        ENDIF.
      ENDIF.
    ENDIF.
    t186->load( ).
    APPEND t189 TO t186->items.
    t186->save( ).
    DATA t193 TYPE REF TO zif_lnt_statement_runnable.
    t193 = zcl_lnt_st_combi_module=>alt_prio( i_first = t177 i_second = t182 i_rest = t186 ).
    t175 = t193.
    IF t175 IS BOUND.
      DATA t197 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t198 TYPE REF TO object.
      t198 = t175.
      TRY.
          t174 ?= t198.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t174 IS NOT BOUND.
        TRY.
            t197 ?= t175.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t197 IS BOUND.
          t174 = t197->source( ).
        ENDIF.
        IF t174 IS NOT BOUND.
          CREATE OBJECT t174.
          t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t174->oval = t175.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t200 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t200.
    DATA t201 TYPE REF TO zif_lnt_statement_runnable.
    t201 = zcl_lnt_st_combi_module=>seq( i_first = t171 i_second = t174 i_rest = t200 ).
    t168 = t201.
    DATA t205 TYPE REF TO zif_lnt_statement_runnable.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t209) = |ON|.
    CREATE OBJECT t208.
    t208->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t208->sval = t209.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t212) = zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba.
    IF t212 IS BOUND.
      CREATE OBJECT t211.
      t211->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t211->cval = t212.
    ENDIF.
    DATA t214 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t214.
    DATA t215 TYPE REF TO zif_lnt_statement_runnable.
    t215 = zcl_lnt_st_combi_module=>seq( i_first = t208 i_second = t211 i_rest = t214 ).
    t205 = t215.
    DATA t219 TYPE REF TO zif_lnt_statement_runnable.
    DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t223) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
    IF t223 IS BOUND.
      CREATE OBJECT t222.
      t222->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t222->cval = t223.
    ENDIF.
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t226) = |=|.
    CREATE OBJECT t225.
    t225->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t225->sval = t226.
    DATA t227 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t228 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t228.
    t227 = t228.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t231) = zlnt_runtime_desc_78196487750d=>zlnt_member_d315_136d5faf95cc.
    IF t231 IS BOUND.
      CREATE OBJECT t230.
      t230->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t230->cval = t231.
    ENDIF.
    t227->load( ).
    APPEND t230 TO t227->items.
    t227->save( ).
    DATA t232 TYPE REF TO zif_lnt_statement_runnable.
    t232 = zcl_lnt_st_combi_module=>seq( i_first = t222 i_second = t225 i_rest = t227 ).
    t219 = t232.
    DATA t236 TYPE REF TO zif_lnt_statement_runnable.
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t219 IS BOUND.
      DATA t241 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t242 TYPE REF TO object.
      t242 = t219.
      TRY.
          t239 ?= t242.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t239 IS NOT BOUND.
        TRY.
            t241 ?= t219.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t241 IS BOUND.
          t239 = t241->source( ).
        ENDIF.
        IF t239 IS NOT BOUND.
          CREATE OBJECT t239.
          t239->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t239->oval = t219.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t245 TYPE REF TO zif_lnt_statement_runnable.
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t247 TYPE REF TO zif_lnt_statement_runnable.
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t250) = |,|.
    CREATE OBJECT t249.
    t249->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t249->sval = t250.
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t219 IS BOUND.
      DATA t254 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t255 TYPE REF TO object.
      t255 = t219.
      TRY.
          t252 ?= t255.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t252 IS NOT BOUND.
        TRY.
            t254 ?= t219.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t254 IS BOUND.
          t252 = t254->source( ).
        ENDIF.
        IF t252 IS NOT BOUND.
          CREATE OBJECT t252.
          t252->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t252->oval = t219.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t257 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t257.
    DATA t258 TYPE REF TO zif_lnt_statement_runnable.
    t258 = zcl_lnt_st_combi_module=>seq( i_first = t249 i_second = t252 i_rest = t257 ).
    t247 = t258.
    IF t247 IS BOUND.
      DATA t262 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t263 TYPE REF TO object.
      t263 = t247.
      TRY.
          t246 ?= t263.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t246 IS NOT BOUND.
        TRY.
            t262 ?= t247.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t262 IS BOUND.
          t246 = t262->source( ).
        ENDIF.
        IF t246 IS NOT BOUND.
          CREATE OBJECT t246.
          t246->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t246->oval = t247.
        ENDIF.
      ENDIF.
    ENDIF.
    t245 = zcl_lnt_st_combi_module=>star_prio( i_first = t246 ).
    IF t245 IS BOUND.
      DATA t264 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t265 TYPE REF TO object.
      t265 = t245.
      TRY.
          t244 ?= t265.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t244 IS NOT BOUND.
        TRY.
            t264 ?= t245.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t264 IS BOUND.
          t244 = t264->source( ).
        ENDIF.
        IF t244 IS NOT BOUND.
          CREATE OBJECT t244.
          t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t244->oval = t245.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t267 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t267.
    DATA t268 TYPE REF TO zif_lnt_statement_runnable.
    t268 = zcl_lnt_st_combi_module=>seq( i_first = t239 i_second = t244 i_rest = t267 ).
    t236 = t268.
    DATA t272 TYPE REF TO zif_lnt_statement_runnable.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t276) = |DELETE|.
    CREATE OBJECT t275.
    t275->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t275->sval = t276.
    DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t279 TYPE REF TO zif_lnt_statement_runnable.
    DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t282) = |UPDATE|.
    CREATE OBJECT t281.
    t281->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t281->sval = t282.
    DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t285 TYPE REF TO zif_lnt_statement_runnable.
    DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t288) = |ALL|.
    CREATE OBJECT t287.
    t287->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t287->sval = t288.
    DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t291 TYPE REF TO zif_lnt_statement_runnable.
    DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t294) = |SET|.
    CREATE OBJECT t293.
    t293->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t293->sval = t294.
    DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t236 IS BOUND.
      DATA t298 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t299 TYPE REF TO object.
      t299 = t236.
      TRY.
          t296 ?= t299.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t296 IS NOT BOUND.
        TRY.
            t298 ?= t236.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t298 IS BOUND.
          t296 = t298->source( ).
        ENDIF.
        IF t296 IS NOT BOUND.
          CREATE OBJECT t296.
          t296->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t296->oval = t236.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t301 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t301.
    DATA t302 TYPE REF TO zif_lnt_statement_runnable.
    t302 = zcl_lnt_st_combi_module=>seq( i_first = t293 i_second = t296 i_rest = t301 ).
    t291 = t302.
    IF t291 IS BOUND.
      DATA t306 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t307 TYPE REF TO object.
      t307 = t291.
      TRY.
          t290 ?= t307.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t290 IS NOT BOUND.
        TRY.
            t306 ?= t291.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t306 IS BOUND.
          t290 = t306->source( ).
        ENDIF.
        IF t290 IS NOT BOUND.
          CREATE OBJECT t290.
          t290->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t290->oval = t291.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t309 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t309.
    DATA t310 TYPE REF TO zif_lnt_statement_runnable.
    t310 = zcl_lnt_st_combi_module=>alt_prio( i_first = t287 i_second = t290 i_rest = t309 ).
    t285 = t310.
    IF t285 IS BOUND.
      DATA t314 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t315 TYPE REF TO object.
      t315 = t285.
      TRY.
          t284 ?= t315.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t284 IS NOT BOUND.
        TRY.
            t314 ?= t285.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t314 IS BOUND.
          t284 = t314->source( ).
        ENDIF.
        IF t284 IS NOT BOUND.
          CREATE OBJECT t284.
          t284->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t284->oval = t285.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t317 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t317.
    DATA t318 TYPE REF TO zif_lnt_statement_runnable.
    t318 = zcl_lnt_st_combi_module=>seq( i_first = t281 i_second = t284 i_rest = t317 ).
    t279 = t318.
    IF t279 IS BOUND.
      DATA t322 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t323 TYPE REF TO object.
      t323 = t279.
      TRY.
          t278 ?= t323.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t278 IS NOT BOUND.
        TRY.
            t322 ?= t279.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t322 IS BOUND.
          t278 = t322->source( ).
        ENDIF.
        IF t278 IS NOT BOUND.
          CREATE OBJECT t278.
          t278->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t278->oval = t279.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t325 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t325.
    DATA t326 TYPE REF TO zif_lnt_statement_runnable.
    t326 = zcl_lnt_st_combi_module=>alt_prio( i_first = t275 i_second = t278 i_rest = t325 ).
    t272 = t326.
    DATA t330 TYPE REF TO zif_lnt_statement_runnable.
    DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t334) = |WHEN MATCHED|.
    CREATE OBJECT t333.
    t333->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t333->sval = t334.
    DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t337 TYPE REF TO zif_lnt_statement_runnable.
    DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t339 TYPE REF TO zif_lnt_statement_runnable.
    DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t342) = |AND|.
    CREATE OBJECT t341.
    t341->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t341->sval = t342.
    DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t345) = zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba.
    IF t345 IS BOUND.
      CREATE OBJECT t344.
      t344->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t344->cval = t345.
    ENDIF.
    DATA t347 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t347.
    DATA t348 TYPE REF TO zif_lnt_statement_runnable.
    t348 = zcl_lnt_st_combi_module=>seq( i_first = t341 i_second = t344 i_rest = t347 ).
    t339 = t348.
    IF t339 IS BOUND.
      DATA t352 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t353 TYPE REF TO object.
      t353 = t339.
      TRY.
          t338 ?= t353.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t338 IS NOT BOUND.
        TRY.
            t352 ?= t339.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t352 IS BOUND.
          t338 = t352->source( ).
        ENDIF.
        IF t338 IS NOT BOUND.
          CREATE OBJECT t338.
          t338->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t338->oval = t339.
        ENDIF.
      ENDIF.
    ENDIF.
    t337 = zcl_lnt_st_combi_module=>opt_prio( i_first = t338 ).
    IF t337 IS BOUND.
      DATA t354 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t355 TYPE REF TO object.
      t355 = t337.
      TRY.
          t336 ?= t355.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t336 IS NOT BOUND.
        TRY.
            t354 ?= t337.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t354 IS BOUND.
          t336 = t354->source( ).
        ENDIF.
        IF t336 IS NOT BOUND.
          CREATE OBJECT t336.
          t336->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t336->oval = t337.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t356 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t357 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t357.
    t356 = t357.
    DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t360) = |THEN|.
    CREATE OBJECT t359.
    t359->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t359->sval = t360.
    t356->load( ).
    APPEND t359 TO t356->items.
    t356->save( ).
    DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t272 IS BOUND.
      DATA t364 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t365 TYPE REF TO object.
      t365 = t272.
      TRY.
          t362 ?= t365.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t362 IS NOT BOUND.
        TRY.
            t364 ?= t272.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t364 IS BOUND.
          t362 = t364->source( ).
        ENDIF.
        IF t362 IS NOT BOUND.
          CREATE OBJECT t362.
          t362->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t362->oval = t272.
        ENDIF.
      ENDIF.
    ENDIF.
    t356->load( ).
    APPEND t362 TO t356->items.
    t356->save( ).
    DATA t366 TYPE REF TO zif_lnt_statement_runnable.
    t366 = zcl_lnt_st_combi_module=>seq( i_first = t333 i_second = t336 i_rest = t356 ).
    t330 = t366.
    DATA t370 TYPE REF TO zif_lnt_statement_runnable.
    DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t374 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t375) = zlnt_runtime_desc_78196487750d=>zlnt_member_d53_2a2dc81ca7ec77.
    t374 = zcl_lnt_st_combi_module=>tok( i_t = t375 ).
    IF t374 IS BOUND.
      DATA t376 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t377 TYPE REF TO object.
      t377 = t374.
      TRY.
          t373 ?= t377.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t373 IS NOT BOUND.
        TRY.
            t376 ?= t374.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t376 IS BOUND.
          t373 = t376->source( ).
        ENDIF.
        IF t373 IS NOT BOUND.
          CREATE OBJECT t373.
          t373->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t373->oval = t374.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t380) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
    IF t380 IS BOUND.
      CREATE OBJECT t379.
      t379->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t379->cval = t380.
    ENDIF.
    DATA t381 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t382 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t382.
    t381 = t382.
    DATA t384 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t385 TYPE REF TO zif_lnt_statement_runnable.
    DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t387 TYPE REF TO zif_lnt_statement_runnable.
    DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t390) = |,|.
    CREATE OBJECT t389.
    t389->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t389->sval = t390.
    DATA t392 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t393) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
    IF t393 IS BOUND.
      CREATE OBJECT t392.
      t392->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t392->cval = t393.
    ENDIF.
    DATA t395 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t395.
    DATA t396 TYPE REF TO zif_lnt_statement_runnable.
    t396 = zcl_lnt_st_combi_module=>seq( i_first = t389 i_second = t392 i_rest = t395 ).
    t387 = t396.
    IF t387 IS BOUND.
      DATA t400 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t401 TYPE REF TO object.
      t401 = t387.
      TRY.
          t386 ?= t401.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t386 IS NOT BOUND.
        TRY.
            t400 ?= t387.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t400 IS BOUND.
          t386 = t400->source( ).
        ENDIF.
        IF t386 IS NOT BOUND.
          CREATE OBJECT t386.
          t386->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t386->oval = t387.
        ENDIF.
      ENDIF.
    ENDIF.
    t385 = zcl_lnt_st_combi_module=>star_prio( i_first = t386 ).
    IF t385 IS BOUND.
      DATA t402 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t403 TYPE REF TO object.
      t403 = t385.
      TRY.
          t384 ?= t403.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t384 IS NOT BOUND.
        TRY.
            t402 ?= t385.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t402 IS BOUND.
          t384 = t402->source( ).
        ENDIF.
        IF t384 IS NOT BOUND.
          CREATE OBJECT t384.
          t384->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t384->oval = t385.
        ENDIF.
      ENDIF.
    ENDIF.
    t381->load( ).
    APPEND t384 TO t381->items.
    t381->save( ).
    DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t406 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t407) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t406 = zcl_lnt_st_combi_module=>tok( i_t = t407 ).
    IF t406 IS BOUND.
      DATA t408 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t409 TYPE REF TO object.
      t409 = t406.
      TRY.
          t405 ?= t409.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t405 IS NOT BOUND.
        TRY.
            t408 ?= t406.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t408 IS BOUND.
          t405 = t408->source( ).
        ENDIF.
        IF t405 IS NOT BOUND.
          CREATE OBJECT t405.
          t405->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t405->oval = t406.
        ENDIF.
      ENDIF.
    ENDIF.
    t381->load( ).
    APPEND t405 TO t381->items.
    t381->save( ).
    DATA t410 TYPE REF TO zif_lnt_statement_runnable.
    t410 = zcl_lnt_st_combi_module=>seq( i_first = t373 i_second = t379 i_rest = t381 ).
    t370 = t410.
    DATA t414 TYPE REF TO zif_lnt_statement_runnable.
    DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t418 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t419) = zlnt_runtime_desc_78196487750d=>zlnt_member_d53_2a2dc81ca7ec77.
    t418 = zcl_lnt_st_combi_module=>tok( i_t = t419 ).
    IF t418 IS BOUND.
      DATA t420 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t421 TYPE REF TO object.
      t421 = t418.
      TRY.
          t417 ?= t421.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t417 IS NOT BOUND.
        TRY.
            t420 ?= t418.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t420 IS BOUND.
          t417 = t420->source( ).
        ENDIF.
        IF t417 IS NOT BOUND.
          CREATE OBJECT t417.
          t417->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t417->oval = t418.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t424) = zlnt_runtime_desc_78196487750d=>zlnt_member_d315_136d5faf95cc.
    IF t424 IS BOUND.
      CREATE OBJECT t423.
      t423->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t423->cval = t424.
    ENDIF.
    DATA t425 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t426 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t426.
    t425 = t426.
    DATA t428 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t429 TYPE REF TO zif_lnt_statement_runnable.
    DATA t430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t431 TYPE REF TO zif_lnt_statement_runnable.
    DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t434) = |,|.
    CREATE OBJECT t433.
    t433->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t433->sval = t434.
    DATA t436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t437) = zlnt_runtime_desc_78196487750d=>zlnt_member_d315_136d5faf95cc.
    IF t437 IS BOUND.
      CREATE OBJECT t436.
      t436->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t436->cval = t437.
    ENDIF.
    DATA t439 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t439.
    DATA t440 TYPE REF TO zif_lnt_statement_runnable.
    t440 = zcl_lnt_st_combi_module=>seq( i_first = t433 i_second = t436 i_rest = t439 ).
    t431 = t440.
    IF t431 IS BOUND.
      DATA t444 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t445 TYPE REF TO object.
      t445 = t431.
      TRY.
          t430 ?= t445.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t430 IS NOT BOUND.
        TRY.
            t444 ?= t431.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t444 IS BOUND.
          t430 = t444->source( ).
        ENDIF.
        IF t430 IS NOT BOUND.
          CREATE OBJECT t430.
          t430->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t430->oval = t431.
        ENDIF.
      ENDIF.
    ENDIF.
    t429 = zcl_lnt_st_combi_module=>star_prio( i_first = t430 ).
    IF t429 IS BOUND.
      DATA t446 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t447 TYPE REF TO object.
      t447 = t429.
      TRY.
          t428 ?= t447.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t428 IS NOT BOUND.
        TRY.
            t446 ?= t429.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t446 IS BOUND.
          t428 = t446->source( ).
        ENDIF.
        IF t428 IS NOT BOUND.
          CREATE OBJECT t428.
          t428->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t428->oval = t429.
        ENDIF.
      ENDIF.
    ENDIF.
    t425->load( ).
    APPEND t428 TO t425->items.
    t425->save( ).
    DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t450 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t451) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t450 = zcl_lnt_st_combi_module=>tok( i_t = t451 ).
    IF t450 IS BOUND.
      DATA t452 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t453 TYPE REF TO object.
      t453 = t450.
      TRY.
          t449 ?= t453.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t449 IS NOT BOUND.
        TRY.
            t452 ?= t450.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t452 IS BOUND.
          t449 = t452->source( ).
        ENDIF.
        IF t449 IS NOT BOUND.
          CREATE OBJECT t449.
          t449->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t449->oval = t450.
        ENDIF.
      ENDIF.
    ENDIF.
    t425->load( ).
    APPEND t449 TO t425->items.
    t425->save( ).
    DATA t454 TYPE REF TO zif_lnt_statement_runnable.
    t454 = zcl_lnt_st_combi_module=>seq( i_first = t417 i_second = t423 i_rest = t425 ).
    t414 = t454.
    DATA t458 TYPE REF TO zif_lnt_statement_runnable.
    DATA t461 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t462) = |INSERT|.
    CREATE OBJECT t461.
    t461->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t461->sval = t462.
    DATA t464 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t465 TYPE REF TO zif_lnt_statement_runnable.
    DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t468) = |ALL|.
    CREATE OBJECT t467.
    t467->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t467->sval = t468.
    DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t471 TYPE REF TO zif_lnt_statement_runnable.
    DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t370 IS BOUND.
      DATA t475 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t476 TYPE REF TO object.
      t476 = t370.
      TRY.
          t473 ?= t476.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t473 IS NOT BOUND.
        TRY.
            t475 ?= t370.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t475 IS BOUND.
          t473 = t475->source( ).
        ENDIF.
        IF t473 IS NOT BOUND.
          CREATE OBJECT t473.
          t473->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t473->oval = t370.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t478 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t479) = |VALUES|.
    CREATE OBJECT t478.
    t478->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t478->sval = t479.
    DATA t480 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t481 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t481.
    t480 = t481.
    DATA t483 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t414 IS BOUND.
      DATA t485 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t486 TYPE REF TO object.
      t486 = t414.
      TRY.
          t483 ?= t486.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t483 IS NOT BOUND.
        TRY.
            t485 ?= t414.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t485 IS BOUND.
          t483 = t485->source( ).
        ENDIF.
        IF t483 IS NOT BOUND.
          CREATE OBJECT t483.
          t483->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t483->oval = t414.
        ENDIF.
      ENDIF.
    ENDIF.
    t480->load( ).
    APPEND t483 TO t480->items.
    t480->save( ).
    DATA t487 TYPE REF TO zif_lnt_statement_runnable.
    t487 = zcl_lnt_st_combi_module=>seq( i_first = t473 i_second = t478 i_rest = t480 ).
    t471 = t487.
    IF t471 IS BOUND.
      DATA t491 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t492 TYPE REF TO object.
      t492 = t471.
      TRY.
          t470 ?= t492.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t470 IS NOT BOUND.
        TRY.
            t491 ?= t471.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t491 IS BOUND.
          t470 = t491->source( ).
        ENDIF.
        IF t470 IS NOT BOUND.
          CREATE OBJECT t470.
          t470->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t470->oval = t471.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t494 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t494.
    DATA t495 TYPE REF TO zif_lnt_statement_runnable.
    t495 = zcl_lnt_st_combi_module=>alt_prio( i_first = t467 i_second = t470 i_rest = t494 ).
    t465 = t495.
    IF t465 IS BOUND.
      DATA t499 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t500 TYPE REF TO object.
      t500 = t465.
      TRY.
          t464 ?= t500.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t464 IS NOT BOUND.
        TRY.
            t499 ?= t465.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t499 IS BOUND.
          t464 = t499->source( ).
        ENDIF.
        IF t464 IS NOT BOUND.
          CREATE OBJECT t464.
          t464->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t464->oval = t465.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t502 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t502.
    DATA t503 TYPE REF TO zif_lnt_statement_runnable.
    t503 = zcl_lnt_st_combi_module=>seq( i_first = t461 i_second = t464 i_rest = t502 ).
    t458 = t503.
    DATA t507 TYPE REF TO zif_lnt_statement_runnable.
    DATA t510 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t511) = |WHEN NOT MATCHED|.
    CREATE OBJECT t510.
    t510->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t510->sval = t511.
    DATA t513 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t514 TYPE REF TO zif_lnt_statement_runnable.
    DATA t515 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t516 TYPE REF TO zif_lnt_statement_runnable.
    DATA t518 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t519) = |AND|.
    CREATE OBJECT t518.
    t518->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t518->sval = t519.
    DATA t521 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t522) = zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba.
    IF t522 IS BOUND.
      CREATE OBJECT t521.
      t521->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t521->cval = t522.
    ENDIF.
    DATA t524 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t524.
    DATA t525 TYPE REF TO zif_lnt_statement_runnable.
    t525 = zcl_lnt_st_combi_module=>seq( i_first = t518 i_second = t521 i_rest = t524 ).
    t516 = t525.
    IF t516 IS BOUND.
      DATA t529 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t530 TYPE REF TO object.
      t530 = t516.
      TRY.
          t515 ?= t530.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t515 IS NOT BOUND.
        TRY.
            t529 ?= t516.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t529 IS BOUND.
          t515 = t529->source( ).
        ENDIF.
        IF t515 IS NOT BOUND.
          CREATE OBJECT t515.
          t515->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t515->oval = t516.
        ENDIF.
      ENDIF.
    ENDIF.
    t514 = zcl_lnt_st_combi_module=>opt_prio( i_first = t515 ).
    IF t514 IS BOUND.
      DATA t531 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t532 TYPE REF TO object.
      t532 = t514.
      TRY.
          t513 ?= t532.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t513 IS NOT BOUND.
        TRY.
            t531 ?= t514.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t531 IS BOUND.
          t513 = t531->source( ).
        ENDIF.
        IF t513 IS NOT BOUND.
          CREATE OBJECT t513.
          t513->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t513->oval = t514.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t533 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t534 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t534.
    t533 = t534.
    DATA t536 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t537) = |THEN|.
    CREATE OBJECT t536.
    t536->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t536->sval = t537.
    t533->load( ).
    APPEND t536 TO t533->items.
    t533->save( ).
    DATA t539 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t458 IS BOUND.
      DATA t541 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t542 TYPE REF TO object.
      t542 = t458.
      TRY.
          t539 ?= t542.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t539 IS NOT BOUND.
        TRY.
            t541 ?= t458.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t541 IS BOUND.
          t539 = t541->source( ).
        ENDIF.
        IF t539 IS NOT BOUND.
          CREATE OBJECT t539.
          t539->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t539->oval = t458.
        ENDIF.
      ENDIF.
    ENDIF.
    t533->load( ).
    APPEND t539 TO t533->items.
    t533->save( ).
    DATA t543 TYPE REF TO zif_lnt_statement_runnable.
    t543 = zcl_lnt_st_combi_module=>seq( i_first = t510 i_second = t513 i_rest = t533 ).
    t507 = t543.
    DATA t547 TYPE REF TO zif_lnt_statement_runnable.
    DATA t550 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t551 TYPE REF TO zif_lnt_statement_runnable.
    DATA t553 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t330 IS BOUND.
      DATA t555 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t556 TYPE REF TO object.
      t556 = t330.
      TRY.
          t553 ?= t556.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t553 IS NOT BOUND.
        TRY.
            t555 ?= t330.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t555 IS BOUND.
          t553 = t555->source( ).
        ENDIF.
        IF t553 IS NOT BOUND.
          CREATE OBJECT t553.
          t553->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t553->oval = t330.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t558 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t559 TYPE REF TO zif_lnt_statement_runnable.
    DATA t560 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t507 IS BOUND.
      DATA t562 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t563 TYPE REF TO object.
      t563 = t507.
      TRY.
          t560 ?= t563.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t560 IS NOT BOUND.
        TRY.
            t562 ?= t507.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t562 IS BOUND.
          t560 = t562->source( ).
        ENDIF.
        IF t560 IS NOT BOUND.
          CREATE OBJECT t560.
          t560->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t560->oval = t507.
        ENDIF.
      ENDIF.
    ENDIF.
    t559 = zcl_lnt_st_combi_module=>opt_prio( i_first = t560 ).
    IF t559 IS BOUND.
      DATA t564 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t565 TYPE REF TO object.
      t565 = t559.
      TRY.
          t558 ?= t565.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t558 IS NOT BOUND.
        TRY.
            t564 ?= t559.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t564 IS BOUND.
          t558 = t564->source( ).
        ENDIF.
        IF t558 IS NOT BOUND.
          CREATE OBJECT t558.
          t558->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t558->oval = t559.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t567 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t567.
    DATA t568 TYPE REF TO zif_lnt_statement_runnable.
    t568 = zcl_lnt_st_combi_module=>seq( i_first = t553 i_second = t558 i_rest = t567 ).
    t551 = t568.
    IF t551 IS BOUND.
      DATA t572 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t573 TYPE REF TO object.
      t573 = t551.
      TRY.
          t550 ?= t573.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t550 IS NOT BOUND.
        TRY.
            t572 ?= t551.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t572 IS BOUND.
          t550 = t572->source( ).
        ENDIF.
        IF t550 IS NOT BOUND.
          CREATE OBJECT t550.
          t550->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t550->oval = t551.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t575 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t507 IS BOUND.
      DATA t577 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t578 TYPE REF TO object.
      t578 = t507.
      TRY.
          t575 ?= t578.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t575 IS NOT BOUND.
        TRY.
            t577 ?= t507.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t577 IS BOUND.
          t575 = t577->source( ).
        ENDIF.
        IF t575 IS NOT BOUND.
          CREATE OBJECT t575.
          t575->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t575->oval = t507.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t580 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t580.
    DATA t581 TYPE REF TO zif_lnt_statement_runnable.
    t581 = zcl_lnt_st_combi_module=>alt_prio( i_first = t550 i_second = t575 i_rest = t580 ).
    t547 = t581.
    DATA t585 TYPE REF TO zif_lnt_statement_runnable.
    DATA t588 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t589) = |OPTIONS|.
    CREATE OBJECT t588.
    t588->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t588->sval = t589.
    DATA t591 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t592 TYPE REF TO zif_lnt_statement_runnable.
    DATA t594 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t595) = zlnt_runtime_desc_78196487750d=>zlnt_member_d264_f2af8adb6bb2.
    IF t595 IS BOUND.
      CREATE OBJECT t594.
      t594->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t594->cval = t595.
    ENDIF.
    DATA t597 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t598) = zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20.
    IF t598 IS BOUND.
      CREATE OBJECT t597.
      t597->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t597->cval = t598.
    ENDIF.
    DATA t599 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t600 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t600.
    t599 = t600.
    DATA t602 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t603 TYPE REF TO zif_lnt_statement_runnable.
    DATA t605 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t606) = zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20.
    IF t606 IS BOUND.
      CREATE OBJECT t605.
      t605->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t605->cval = t606.
    ENDIF.
    DATA t608 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t609) = zlnt_runtime_desc_78196487750d=>zlnt_member_d264_f2af8adb6bb2.
    IF t609 IS BOUND.
      CREATE OBJECT t608.
      t608->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t608->cval = t609.
    ENDIF.
    DATA t611 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t611.
    DATA t612 TYPE REF TO zif_lnt_statement_runnable.
    t612 = zcl_lnt_st_combi_module=>seq( i_first = t605 i_second = t608 i_rest = t611 ).
    t603 = t612.
    IF t603 IS BOUND.
      DATA t616 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t617 TYPE REF TO object.
      t617 = t603.
      TRY.
          t602 ?= t617.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t602 IS NOT BOUND.
        TRY.
            t616 ?= t603.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t616 IS BOUND.
          t602 = t616->source( ).
        ENDIF.
        IF t602 IS NOT BOUND.
          CREATE OBJECT t602.
          t602->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t602->oval = t603.
        ENDIF.
      ENDIF.
    ENDIF.
    t599->load( ).
    APPEND t602 TO t599->items.
    t599->save( ).
    DATA t619 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t620 TYPE REF TO zif_lnt_statement_runnable.
    DATA t622 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t623) = zlnt_runtime_desc_78196487750d=>zlnt_member_d264_f2af8adb6bb2.
    IF t623 IS BOUND.
      CREATE OBJECT t622.
      t622->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t622->cval = t623.
    ENDIF.
    DATA t625 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t626) = zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20.
    IF t626 IS BOUND.
      CREATE OBJECT t625.
      t625->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t625->cval = t626.
    ENDIF.
    DATA t628 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t628.
    DATA t629 TYPE REF TO zif_lnt_statement_runnable.
    t629 = zcl_lnt_st_combi_module=>seq( i_first = t622 i_second = t625 i_rest = t628 ).
    t620 = t629.
    IF t620 IS BOUND.
      DATA t633 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t634 TYPE REF TO object.
      t634 = t620.
      TRY.
          t619 ?= t634.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t619 IS NOT BOUND.
        TRY.
            t633 ?= t620.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t633 IS BOUND.
          t619 = t633->source( ).
        ENDIF.
        IF t619 IS NOT BOUND.
          CREATE OBJECT t619.
          t619->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t619->oval = t620.
        ENDIF.
      ENDIF.
    ENDIF.
    t599->load( ).
    APPEND t619 TO t599->items.
    t599->save( ).
    DATA t635 TYPE REF TO zif_lnt_statement_runnable.
    t635 = zcl_lnt_st_combi_module=>alt_prio( i_first = t594 i_second = t597 i_rest = t599 ).
    t592 = t635.
    IF t592 IS BOUND.
      DATA t639 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t640 TYPE REF TO object.
      t640 = t592.
      TRY.
          t591 ?= t640.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t591 IS NOT BOUND.
        TRY.
            t639 ?= t592.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t639 IS BOUND.
          t591 = t639->source( ).
        ENDIF.
        IF t591 IS NOT BOUND.
          CREATE OBJECT t591.
          t591->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t591->oval = t592.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t642 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t642.
    DATA t643 TYPE REF TO zif_lnt_statement_runnable.
    t643 = zcl_lnt_st_combi_module=>seq( i_first = t588 i_second = t591 i_rest = t642 ).
    t585 = t643.
    DATA t647 TYPE REF TO zif_lnt_statement_runnable.
    DATA t648 TYPE REF TO zif_lnt_statement_runnable.
    DATA t649 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t585 IS BOUND.
      DATA t651 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t652 TYPE REF TO object.
      t652 = t585.
      TRY.
          t649 ?= t652.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t649 IS NOT BOUND.
        TRY.
            t651 ?= t585.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t651 IS BOUND.
          t649 = t651->source( ).
        ENDIF.
        IF t649 IS NOT BOUND.
          CREATE OBJECT t649.
          t649->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t649->oval = t585.
        ENDIF.
      ENDIF.
    ENDIF.
    t648 = zcl_lnt_st_combi_module=>opt_prio( i_first = t649 ).
    t647 = t648.
    DATA t653 TYPE REF TO zif_lnt_statement_runnable.
    DATA t656 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t657) = |INTO|.
    CREATE OBJECT t656.
    t656->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t656->sval = t657.
    DATA t659 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t661 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t662 TYPE REF TO object.
      t662 = t1.
      TRY.
          t659 ?= t662.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t659 IS NOT BOUND.
        TRY.
            t661 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t661 IS BOUND.
          t659 = t661->source( ).
        ENDIF.
        IF t659 IS NOT BOUND.
          CREATE OBJECT t659.
          t659->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t659->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t663 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t664 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t664.
    t663 = t664.
    DATA t666 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t667 TYPE REF TO zif_lnt_statement_runnable.
    DATA t668 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t168 IS BOUND.
      DATA t670 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t671 TYPE REF TO object.
      t671 = t168.
      TRY.
          t668 ?= t671.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t668 IS NOT BOUND.
        TRY.
            t670 ?= t168.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t670 IS BOUND.
          t668 = t670->source( ).
        ENDIF.
        IF t668 IS NOT BOUND.
          CREATE OBJECT t668.
          t668->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t668->oval = t168.
        ENDIF.
      ENDIF.
    ENDIF.
    t667 = zcl_lnt_st_combi_module=>opt_prio( i_first = t668 ).
    IF t667 IS BOUND.
      DATA t672 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t673 TYPE REF TO object.
      t673 = t667.
      TRY.
          t666 ?= t673.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t666 IS NOT BOUND.
        TRY.
            t672 ?= t667.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t672 IS BOUND.
          t666 = t672->source( ).
        ENDIF.
        IF t666 IS NOT BOUND.
          CREATE OBJECT t666.
          t666->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t666->oval = t667.
        ENDIF.
      ENDIF.
    ENDIF.
    t663->load( ).
    APPEND t666 TO t663->items.
    t663->save( ).
    DATA t675 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t676 TYPE REF TO zif_lnt_statement_runnable.
    DATA t677 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t205 IS BOUND.
      DATA t679 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t680 TYPE REF TO object.
      t680 = t205.
      TRY.
          t677 ?= t680.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t677 IS NOT BOUND.
        TRY.
            t679 ?= t205.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t679 IS BOUND.
          t677 = t679->source( ).
        ENDIF.
        IF t677 IS NOT BOUND.
          CREATE OBJECT t677.
          t677->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t677->oval = t205.
        ENDIF.
      ENDIF.
    ENDIF.
    t676 = zcl_lnt_st_combi_module=>opt_prio( i_first = t677 ).
    IF t676 IS BOUND.
      DATA t681 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t682 TYPE REF TO object.
      t682 = t676.
      TRY.
          t675 ?= t682.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t675 IS NOT BOUND.
        TRY.
            t681 ?= t676.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t681 IS BOUND.
          t675 = t681->source( ).
        ENDIF.
        IF t675 IS NOT BOUND.
          CREATE OBJECT t675.
          t675->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t675->oval = t676.
        ENDIF.
      ENDIF.
    ENDIF.
    t663->load( ).
    APPEND t675 TO t663->items.
    t663->save( ).
    DATA t684 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t685 TYPE REF TO zif_lnt_statement_runnable.
    DATA t686 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t547 IS BOUND.
      DATA t688 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t689 TYPE REF TO object.
      t689 = t547.
      TRY.
          t686 ?= t689.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t686 IS NOT BOUND.
        TRY.
            t688 ?= t547.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t688 IS BOUND.
          t686 = t688->source( ).
        ENDIF.
        IF t686 IS NOT BOUND.
          CREATE OBJECT t686.
          t686->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t686->oval = t547.
        ENDIF.
      ENDIF.
    ENDIF.
    t685 = zcl_lnt_st_combi_module=>opt_prio( i_first = t686 ).
    IF t685 IS BOUND.
      DATA t690 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t691 TYPE REF TO object.
      t691 = t685.
      TRY.
          t684 ?= t691.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t684 IS NOT BOUND.
        TRY.
            t690 ?= t685.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t690 IS BOUND.
          t684 = t690->source( ).
        ENDIF.
        IF t684 IS NOT BOUND.
          CREATE OBJECT t684.
          t684->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t684->oval = t685.
        ENDIF.
      ENDIF.
    ENDIF.
    t663->load( ).
    APPEND t684 TO t663->items.
    t663->save( ).
    DATA t693 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t647 IS BOUND.
      DATA t695 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t696 TYPE REF TO object.
      t696 = t647.
      TRY.
          t693 ?= t696.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t693 IS NOT BOUND.
        TRY.
            t695 ?= t647.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t695 IS BOUND.
          t693 = t695->source( ).
        ENDIF.
        IF t693 IS NOT BOUND.
          CREATE OBJECT t693.
          t693->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t693->oval = t647.
        ENDIF.
      ENDIF.
    ENDIF.
    t663->load( ).
    APPEND t693 TO t663->items.
    t663->save( ).
    DATA t697 TYPE REF TO zif_lnt_statement_runnable.
    t697 = zcl_lnt_st_combi_module=>seq( i_first = t656 i_second = t659 i_rest = t663 ).
    t653 = t697.
    DATA t701 TYPE REF TO zif_lnt_statement_runnable.
    DATA t702 TYPE REF TO zif_lnt_statement_runnable.
    DATA t703 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t704 TYPE REF TO zcl_lnt_abap_release.
    DATA t705 TYPE REF TO zcl_lnt_abap_release.
    DATA t706 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t706 = zcl_lnt_version_module=>release_b8cd.
    DATA(t707) = |v917|.
    t705 = t706->get( p0 = t707 ).
    t704 = t705.
    IF t704 IS BOUND.
      DATA t708 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t709 TYPE REF TO object.
      t709 = t704.
      TRY.
          t703 ?= t709.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t703 IS NOT BOUND.
        TRY.
            t708 ?= t704.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t708 IS BOUND.
          t703 = t708->source( ).
        ENDIF.
        IF t703 IS NOT BOUND.
          CREATE OBJECT t703.
          t703->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t703->oval = t704.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t710 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t711 TYPE REF TO zif_lnt_statement_runnable.
    DATA t713 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t714) = |MERGE|.
    CREATE OBJECT t713.
    t713->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t713->sval = t714.
    DATA t716 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t717 TYPE REF TO zif_lnt_statement_runnable.
    DATA t719 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t653 IS BOUND.
      DATA t721 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t722 TYPE REF TO object.
      t722 = t653.
      TRY.
          t719 ?= t722.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t719 IS NOT BOUND.
        TRY.
            t721 ?= t653.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t721 IS BOUND.
          t719 = t721->source( ).
        ENDIF.
        IF t719 IS NOT BOUND.
          CREATE OBJECT t719.
          t719->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t719->oval = t653.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t724 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t725) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t725 IS BOUND.
      CREATE OBJECT t724.
      t724->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t724->cval = t725.
    ENDIF.
    DATA t727 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t727.
    DATA t728 TYPE REF TO zif_lnt_statement_runnable.
    t728 = zcl_lnt_st_combi_module=>alt( i_first = t719 i_second = t724 i_rest = t727 ).
    t717 = t728.
    IF t717 IS BOUND.
      DATA t732 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t733 TYPE REF TO object.
      t733 = t717.
      TRY.
          t716 ?= t733.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t716 IS NOT BOUND.
        TRY.
            t732 ?= t717.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t732 IS BOUND.
          t716 = t732->source( ).
        ENDIF.
        IF t716 IS NOT BOUND.
          CREATE OBJECT t716.
          t716->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t716->oval = t717.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t735 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t735.
    DATA t736 TYPE REF TO zif_lnt_statement_runnable.
    t736 = zcl_lnt_st_combi_module=>seq( i_first = t713 i_second = t716 i_rest = t735 ).
    t711 = t736.
    IF t711 IS BOUND.
      DATA t740 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t741 TYPE REF TO object.
      t741 = t711.
      TRY.
          t710 ?= t741.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t710 IS NOT BOUND.
        TRY.
            t740 ?= t711.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t740 IS BOUND.
          t710 = t740->source( ).
        ENDIF.
        IF t710 IS NOT BOUND.
          CREATE OBJECT t710.
          t710->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t710->oval = t711.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t742 TYPE REF TO zcl_lnt_iver_options.
    t702 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t703 i_first = t710 i_opts = t742 ).
    t701 = t702.
    DATA t743 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t744) = |KeyUser|.
    DATA t745 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t701 IS BOUND.
      DATA t747 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t748 TYPE REF TO object.
      t748 = t701.
      TRY.
          t745 ?= t748.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t745 IS NOT BOUND.
        TRY.
            t747 ?= t701.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t747 IS BOUND.
          t745 = t747->source( ).
        ENDIF.
        IF t745 IS NOT BOUND.
          CREATE OBJECT t745.
          t745->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t745->oval = t701.
        ENDIF.
      ENDIF.
    ENDIF.
    t743 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t744 i_first = t745 ).
    result = t743.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d551_3a0a4b6f5142.
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
