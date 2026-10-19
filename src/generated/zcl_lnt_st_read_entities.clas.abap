* TS: src/abap/2_statements/statements/read_entities.ts:8:1 ReadEntities
CLASS zcl_lnt_st_read_entities DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_read_entities IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |FROM|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    t11 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t10 ).
    t1 = t11.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t19) = |FIELDS|.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = t19.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d53_2a2dc81ca7ec77.
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
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t27.
    t26 = t27.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t30 TYPE REF TO zif_lnt_statement_runnable.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t32) = zlnt_runtime_desc_78196487750d=>zlnt_member_d173_fd387289a527.
    IF t32 IS BOUND.
      CREATE OBJECT t31.
      t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t31->cval = t32.
    ENDIF.
    t30 = zcl_lnt_st_combi_module=>plus( i_first = t31 ).
    IF t30 IS BOUND.
      DATA t33 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t34 TYPE REF TO object.
      t34 = t30.
      TRY.
          t29 ?= t34.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t29 IS NOT BOUND.
        TRY.
            t33 ?= t30.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t33 IS BOUND.
          t29 = t33->source( ).
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
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t38) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
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
    t26->load( ).
    APPEND t36 TO t26->items.
    t26->save( ).
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t43) = |WITH|.
    CREATE OBJECT t42.
    t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t42->sval = t43.
    t26->load( ).
    APPEND t42 TO t26->items.
    t26->save( ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t46) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t46 IS BOUND.
      CREATE OBJECT t45.
      t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t45->cval = t46.
    ENDIF.
    t26->load( ).
    APPEND t45 TO t26->items.
    t26->save( ).
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    t47 = zcl_lnt_st_combi_module=>seq( i_first = t18 i_second = t21 i_rest = t26 ).
    t15 = t47.
    DATA t51 TYPE REF TO zif_lnt_statement_runnable.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t55) = |ALL FIELDS WITH|.
    CREATE OBJECT t54.
    t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t54->sval = t55.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t58) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t58 IS BOUND.
      CREATE OBJECT t57.
      t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t57->cval = t58.
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t60.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    t61 = zcl_lnt_st_combi_module=>seq( i_first = t54 i_second = t57 i_rest = t60 ).
    t51 = t61.
    DATA t65 TYPE REF TO zif_lnt_statement_runnable.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t69) = |RESULT|.
    CREATE OBJECT t68.
    t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t68->sval = t69.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t72) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t72 IS BOUND.
      CREATE OBJECT t71.
      t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t71->cval = t72.
    ENDIF.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t74.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    t75 = zcl_lnt_st_combi_module=>seq( i_first = t68 i_second = t71 i_rest = t74 ).
    t65 = t75.
    DATA t79 TYPE REF TO zif_lnt_statement_runnable.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t83) = |FAILED|.
    CREATE OBJECT t82.
    t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t82->sval = t83.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t86) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t86 IS BOUND.
      CREATE OBJECT t85.
      t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t85->cval = t86.
    ENDIF.
    DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t88.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    t89 = zcl_lnt_st_combi_module=>seq( i_first = t82 i_second = t85 i_rest = t88 ).
    t79 = t89.
    DATA t93 TYPE REF TO zif_lnt_statement_runnable.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t97) = |REPORTED|.
    CREATE OBJECT t96.
    t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t96->sval = t97.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t100) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t100 IS BOUND.
      CREATE OBJECT t99.
      t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t99->cval = t100.
    ENDIF.
    DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t102.
    DATA t103 TYPE REF TO zif_lnt_statement_runnable.
    t103 = zcl_lnt_st_combi_module=>seq( i_first = t96 i_second = t99 i_rest = t102 ).
    t93 = t103.
    DATA t107 TYPE REF TO zif_lnt_statement_runnable.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t111) = |EXECUTE|.
    CREATE OBJECT t110.
    t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t110->sval = t111.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t114) = zlnt_runtime_desc_78196487750d=>zlnt_member_d173_fd387289a527.
    IF t114 IS BOUND.
      CREATE OBJECT t113.
      t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t113->cval = t114.
    ENDIF.
    DATA t115 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t116 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t116.
    t115 = t116.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t120 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t121 TYPE REF TO object.
      t121 = t1.
      TRY.
          t118 ?= t121.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t118 IS NOT BOUND.
        TRY.
            t120 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t120 IS BOUND.
          t118 = t120->source( ).
        ENDIF.
        IF t118 IS NOT BOUND.
          CREATE OBJECT t118.
          t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t118->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t115->load( ).
    APPEND t118 TO t115->items.
    t115->save( ).
    DATA t122 TYPE REF TO zif_lnt_statement_runnable.
    t122 = zcl_lnt_st_combi_module=>seq( i_first = t110 i_second = t113 i_rest = t115 ).
    t107 = t122.
    DATA t126 TYPE REF TO zif_lnt_statement_runnable.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t130 TYPE REF TO zif_lnt_statement_runnable.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t132 TYPE REF TO zif_lnt_statement_runnable.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t135) = |BY|.
    CREATE OBJECT t134.
    t134->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t134->sval = t135.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t138) = zlnt_runtime_desc_78196487750d=>zlnt_member_d161_a1a721da0257.
    IF t138 IS BOUND.
      CREATE OBJECT t137.
      t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t137->cval = t138.
    ENDIF.
    DATA t140 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t140.
    DATA t141 TYPE REF TO zif_lnt_statement_runnable.
    t141 = zcl_lnt_st_combi_module=>seq( i_first = t134 i_second = t137 i_rest = t140 ).
    t132 = t141.
    IF t132 IS BOUND.
      DATA t145 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t146 TYPE REF TO object.
      t146 = t132.
      TRY.
          t131 ?= t146.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t131 IS NOT BOUND.
        TRY.
            t145 ?= t132.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t145 IS BOUND.
          t131 = t145->source( ).
        ENDIF.
        IF t131 IS NOT BOUND.
          CREATE OBJECT t131.
          t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t131->oval = t132.
        ENDIF.
      ENDIF.
    ENDIF.
    t130 = zcl_lnt_st_combi_module=>opt( i_first = t131 ).
    IF t130 IS BOUND.
      DATA t147 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t148 TYPE REF TO object.
      t148 = t130.
      TRY.
          t129 ?= t148.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t129 IS NOT BOUND.
        TRY.
            t147 ?= t130.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t147 IS BOUND.
          t129 = t147->source( ).
        ENDIF.
        IF t129 IS NOT BOUND.
          CREATE OBJECT t129.
          t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t129->oval = t130.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t151 TYPE REF TO zif_lnt_statement_runnable.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t155 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t156 TYPE REF TO object.
      t156 = t15.
      TRY.
          t153 ?= t156.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t153 IS NOT BOUND.
        TRY.
            t155 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t155 IS BOUND.
          t153 = t155->source( ).
        ENDIF.
        IF t153 IS NOT BOUND.
          CREATE OBJECT t153.
          t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t153->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t160 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t161 TYPE REF TO object.
      t161 = t1.
      TRY.
          t158 ?= t161.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t158 IS NOT BOUND.
        TRY.
            t160 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t160 IS BOUND.
          t158 = t160->source( ).
        ENDIF.
        IF t158 IS NOT BOUND.
          CREATE OBJECT t158.
          t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t158->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t163.
    t162 = t163.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t51 IS BOUND.
      DATA t167 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t168 TYPE REF TO object.
      t168 = t51.
      TRY.
          t165 ?= t168.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t165 IS NOT BOUND.
        TRY.
            t167 ?= t51.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t167 IS BOUND.
          t165 = t167->source( ).
        ENDIF.
        IF t165 IS NOT BOUND.
          CREATE OBJECT t165.
          t165->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t165->oval = t51.
        ENDIF.
      ENDIF.
    ENDIF.
    t162->load( ).
    APPEND t165 TO t162->items.
    t162->save( ).
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t107 IS BOUND.
      DATA t172 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t173 TYPE REF TO object.
      t173 = t107.
      TRY.
          t170 ?= t173.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t170 IS NOT BOUND.
        TRY.
            t172 ?= t107.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t172 IS BOUND.
          t170 = t172->source( ).
        ENDIF.
        IF t170 IS NOT BOUND.
          CREATE OBJECT t170.
          t170->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t170->oval = t107.
        ENDIF.
      ENDIF.
    ENDIF.
    t162->load( ).
    APPEND t170 TO t162->items.
    t162->save( ).
    DATA t174 TYPE REF TO zif_lnt_statement_runnable.
    t174 = zcl_lnt_st_combi_module=>alt( i_first = t153 i_second = t158 i_rest = t162 ).
    t151 = t174.
    IF t151 IS BOUND.
      DATA t178 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t179 TYPE REF TO object.
      t179 = t151.
      TRY.
          t150 ?= t179.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t150 IS NOT BOUND.
        TRY.
            t178 ?= t151.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t178 IS BOUND.
          t150 = t178->source( ).
        ENDIF.
        IF t150 IS NOT BOUND.
          CREATE OBJECT t150.
          t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t150->oval = t151.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t181 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t181.
    t180 = t181.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t184 TYPE REF TO zif_lnt_statement_runnable.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t65 IS BOUND.
      DATA t187 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t188 TYPE REF TO object.
      t188 = t65.
      TRY.
          t185 ?= t188.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t185 IS NOT BOUND.
        TRY.
            t187 ?= t65.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t187 IS BOUND.
          t185 = t187->source( ).
        ENDIF.
        IF t185 IS NOT BOUND.
          CREATE OBJECT t185.
          t185->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t185->oval = t65.
        ENDIF.
      ENDIF.
    ENDIF.
    t184 = zcl_lnt_st_combi_module=>opt_prio( i_first = t185 ).
    IF t184 IS BOUND.
      DATA t189 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t190 TYPE REF TO object.
      t190 = t184.
      TRY.
          t183 ?= t190.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t183 IS NOT BOUND.
        TRY.
            t189 ?= t184.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t189 IS BOUND.
          t183 = t189->source( ).
        ENDIF.
        IF t183 IS NOT BOUND.
          CREATE OBJECT t183.
          t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t183->oval = t184.
        ENDIF.
      ENDIF.
    ENDIF.
    t180->load( ).
    APPEND t183 TO t180->items.
    t180->save( ).
    DATA t191 TYPE REF TO zif_lnt_statement_runnable.
    t191 = zcl_lnt_st_combi_module=>seq( i_first = t129 i_second = t150 i_rest = t180 ).
    t126 = t191.
    DATA t195 TYPE REF TO zif_lnt_statement_runnable.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t199) = |ENTITY|.
    CREATE OBJECT t198.
    t198->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t198->sval = t199.
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t202) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    IF t202 IS BOUND.
      CREATE OBJECT t201.
      t201->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t201->cval = t202.
    ENDIF.
    DATA t203 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t204 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t204.
    t203 = t204.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t207 TYPE REF TO zif_lnt_statement_runnable.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t126 IS BOUND.
      DATA t210 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t211 TYPE REF TO object.
      t211 = t126.
      TRY.
          t208 ?= t211.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t208 IS NOT BOUND.
        TRY.
            t210 ?= t126.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t210 IS BOUND.
          t208 = t210->source( ).
        ENDIF.
        IF t208 IS NOT BOUND.
          CREATE OBJECT t208.
          t208->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t208->oval = t126.
        ENDIF.
      ENDIF.
    ENDIF.
    t207 = zcl_lnt_st_combi_module=>plus( i_first = t208 ).
    IF t207 IS BOUND.
      DATA t212 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t213 TYPE REF TO object.
      t213 = t207.
      TRY.
          t206 ?= t213.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t206 IS NOT BOUND.
        TRY.
            t212 ?= t207.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t212 IS BOUND.
          t206 = t212->source( ).
        ENDIF.
        IF t206 IS NOT BOUND.
          CREATE OBJECT t206.
          t206->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t206->oval = t207.
        ENDIF.
      ENDIF.
    ENDIF.
    t203->load( ).
    APPEND t206 TO t203->items.
    t203->save( ).
    DATA t214 TYPE REF TO zif_lnt_statement_runnable.
    t214 = zcl_lnt_st_combi_module=>seq( i_first = t198 i_second = t201 i_rest = t203 ).
    t195 = t214.
    DATA t218 TYPE REF TO zif_lnt_statement_runnable.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t222) = |ENTITIES OF|.
    CREATE OBJECT t221.
    t221->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t221->sval = t222.
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t225) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    IF t225 IS BOUND.
      CREATE OBJECT t224.
      t224->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t224->cval = t225.
    ENDIF.
    DATA t226 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t227 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t227.
    t226 = t227.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t230 TYPE REF TO zif_lnt_statement_runnable.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t232) = |IN LOCAL MODE|.
    CREATE OBJECT t231.
    t231->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t231->sval = t232.
    t230 = zcl_lnt_st_combi_module=>opt( i_first = t231 ).
    IF t230 IS BOUND.
      DATA t233 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t234 TYPE REF TO object.
      t234 = t230.
      TRY.
          t229 ?= t234.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t229 IS NOT BOUND.
        TRY.
            t233 ?= t230.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t233 IS BOUND.
          t229 = t233->source( ).
        ENDIF.
        IF t229 IS NOT BOUND.
          CREATE OBJECT t229.
          t229->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t229->oval = t230.
        ENDIF.
      ENDIF.
    ENDIF.
    t226->load( ).
    APPEND t229 TO t226->items.
    t226->save( ).
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t237 TYPE REF TO zif_lnt_statement_runnable.
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t195 IS BOUND.
      DATA t240 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t241 TYPE REF TO object.
      t241 = t195.
      TRY.
          t238 ?= t241.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t238 IS NOT BOUND.
        TRY.
            t240 ?= t195.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t240 IS BOUND.
          t238 = t240->source( ).
        ENDIF.
        IF t238 IS NOT BOUND.
          CREATE OBJECT t238.
          t238->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t238->oval = t195.
        ENDIF.
      ENDIF.
    ENDIF.
    t237 = zcl_lnt_st_combi_module=>plus( i_first = t238 ).
    IF t237 IS BOUND.
      DATA t242 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t243 TYPE REF TO object.
      t243 = t237.
      TRY.
          t236 ?= t243.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t236 IS NOT BOUND.
        TRY.
            t242 ?= t237.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t242 IS BOUND.
          t236 = t242->source( ).
        ENDIF.
        IF t236 IS NOT BOUND.
          CREATE OBJECT t236.
          t236->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t236->oval = t237.
        ENDIF.
      ENDIF.
    ENDIF.
    t226->load( ).
    APPEND t236 TO t226->items.
    t226->save( ).
    DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t246 TYPE REF TO zif_lnt_statement_runnable.
    DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t248 TYPE REF TO zif_lnt_statement_runnable.
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t251) = |LINK|.
    CREATE OBJECT t250.
    t250->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t250->sval = t251.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t254) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t254 IS BOUND.
      CREATE OBJECT t253.
      t253->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t253->cval = t254.
    ENDIF.
    DATA t256 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t256.
    DATA t257 TYPE REF TO zif_lnt_statement_runnable.
    t257 = zcl_lnt_st_combi_module=>seq( i_first = t250 i_second = t253 i_rest = t256 ).
    t248 = t257.
    IF t248 IS BOUND.
      DATA t261 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t262 TYPE REF TO object.
      t262 = t248.
      TRY.
          t247 ?= t262.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t247 IS NOT BOUND.
        TRY.
            t261 ?= t248.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t261 IS BOUND.
          t247 = t261->source( ).
        ENDIF.
        IF t247 IS NOT BOUND.
          CREATE OBJECT t247.
          t247->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t247->oval = t248.
        ENDIF.
      ENDIF.
    ENDIF.
    t246 = zcl_lnt_st_combi_module=>opt_prio( i_first = t247 ).
    IF t246 IS BOUND.
      DATA t263 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t264 TYPE REF TO object.
      t264 = t246.
      TRY.
          t245 ?= t264.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t245 IS NOT BOUND.
        TRY.
            t263 ?= t246.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t263 IS BOUND.
          t245 = t263->source( ).
        ENDIF.
        IF t245 IS NOT BOUND.
          CREATE OBJECT t245.
          t245->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t245->oval = t246.
        ENDIF.
      ENDIF.
    ENDIF.
    t226->load( ).
    APPEND t245 TO t226->items.
    t226->save( ).
    DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t267 TYPE REF TO zif_lnt_statement_runnable.
    DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t269 TYPE REF TO zif_lnt_statement_runnable.
    DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t79 IS BOUND.
      DATA t273 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t274 TYPE REF TO object.
      t274 = t79.
      TRY.
          t271 ?= t274.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t271 IS NOT BOUND.
        TRY.
            t273 ?= t79.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t273 IS BOUND.
          t271 = t273->source( ).
        ENDIF.
        IF t271 IS NOT BOUND.
          CREATE OBJECT t271.
          t271->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t271->oval = t79.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t93 IS BOUND.
      DATA t278 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t279 TYPE REF TO object.
      t279 = t93.
      TRY.
          t276 ?= t279.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t276 IS NOT BOUND.
        TRY.
            t278 ?= t93.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t278 IS BOUND.
          t276 = t278->source( ).
        ENDIF.
        IF t276 IS NOT BOUND.
          CREATE OBJECT t276.
          t276->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t276->oval = t93.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t281 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t281.
    DATA t282 TYPE REF TO zif_lnt_statement_runnable.
    t282 = zcl_lnt_st_combi_module=>per( i_first = t271 i_second = t276 i_rest = t281 ).
    t269 = t282.
    IF t269 IS BOUND.
      DATA t286 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t287 TYPE REF TO object.
      t287 = t269.
      TRY.
          t268 ?= t287.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t268 IS NOT BOUND.
        TRY.
            t286 ?= t269.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t286 IS BOUND.
          t268 = t286->source( ).
        ENDIF.
        IF t268 IS NOT BOUND.
          CREATE OBJECT t268.
          t268->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t268->oval = t269.
        ENDIF.
      ENDIF.
    ENDIF.
    t267 = zcl_lnt_st_combi_module=>opt_prio( i_first = t268 ).
    IF t267 IS BOUND.
      DATA t288 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t289 TYPE REF TO object.
      t289 = t267.
      TRY.
          t266 ?= t289.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t266 IS NOT BOUND.
        TRY.
            t288 ?= t267.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t288 IS BOUND.
          t266 = t288->source( ).
        ENDIF.
        IF t266 IS NOT BOUND.
          CREATE OBJECT t266.
          t266->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t266->oval = t267.
        ENDIF.
      ENDIF.
    ENDIF.
    t226->load( ).
    APPEND t266 TO t226->items.
    t226->save( ).
    DATA t290 TYPE REF TO zif_lnt_statement_runnable.
    t290 = zcl_lnt_st_combi_module=>seq( i_first = t221 i_second = t224 i_rest = t226 ).
    t218 = t290.
    DATA t294 TYPE REF TO zif_lnt_statement_runnable.
    DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t298) = |BY|.
    CREATE OBJECT t297.
    t297->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t297->sval = t298.
    DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t301) = zlnt_runtime_desc_78196487750d=>zlnt_member_d161_a1a721da0257.
    IF t301 IS BOUND.
      CREATE OBJECT t300.
      t300->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t300->cval = t301.
    ENDIF.
    DATA t302 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t303 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t303.
    t302 = t303.
    DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t51 IS BOUND.
      DATA t307 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t308 TYPE REF TO object.
      t308 = t51.
      TRY.
          t305 ?= t308.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t305 IS NOT BOUND.
        TRY.
            t307 ?= t51.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t307 IS BOUND.
          t305 = t307->source( ).
        ENDIF.
        IF t305 IS NOT BOUND.
          CREATE OBJECT t305.
          t305->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t305->oval = t51.
        ENDIF.
      ENDIF.
    ENDIF.
    t302->load( ).
    APPEND t305 TO t302->items.
    t302->save( ).
    DATA t309 TYPE REF TO zif_lnt_statement_runnable.
    t309 = zcl_lnt_st_combi_module=>seq( i_first = t297 i_second = t300 i_rest = t302 ).
    t294 = t309.
    DATA t313 TYPE REF TO zif_lnt_statement_runnable.
    DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t317) = |BY|.
    CREATE OBJECT t316.
    t316->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t316->sval = t317.
    DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t320) = zlnt_runtime_desc_78196487750d=>zlnt_member_d161_a1a721da0257.
    IF t320 IS BOUND.
      CREATE OBJECT t319.
      t319->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t319->cval = t320.
    ENDIF.
    DATA t321 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t322 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t322.
    t321 = t322.
    DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t326 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t327 TYPE REF TO object.
      t327 = t15.
      TRY.
          t324 ?= t327.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t324 IS NOT BOUND.
        TRY.
            t326 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t326 IS BOUND.
          t324 = t326->source( ).
        ENDIF.
        IF t324 IS NOT BOUND.
          CREATE OBJECT t324.
          t324->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t324->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    t321->load( ).
    APPEND t324 TO t321->items.
    t321->save( ).
    DATA t328 TYPE REF TO zif_lnt_statement_runnable.
    t328 = zcl_lnt_st_combi_module=>seq( i_first = t316 i_second = t319 i_rest = t321 ).
    t313 = t328.
    DATA t332 TYPE REF TO zif_lnt_statement_runnable.
    DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t336 TYPE REF TO zif_lnt_statement_runnable.
    DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t51 IS BOUND.
      DATA t340 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t341 TYPE REF TO object.
      t341 = t51.
      TRY.
          t338 ?= t341.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t338 IS NOT BOUND.
        TRY.
            t340 ?= t51.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t340 IS BOUND.
          t338 = t340->source( ).
        ENDIF.
        IF t338 IS NOT BOUND.
          CREATE OBJECT t338.
          t338->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t338->oval = t51.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t345 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t346 TYPE REF TO object.
      t346 = t15.
      TRY.
          t343 ?= t346.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t343 IS NOT BOUND.
        TRY.
            t345 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t345 IS BOUND.
          t343 = t345->source( ).
        ENDIF.
        IF t343 IS NOT BOUND.
          CREATE OBJECT t343.
          t343->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t343->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t347 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t348 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t348.
    t347 = t348.
    DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t352 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t353 TYPE REF TO object.
      t353 = t1.
      TRY.
          t350 ?= t353.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t350 IS NOT BOUND.
        TRY.
            t352 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t352 IS BOUND.
          t350 = t352->source( ).
        ENDIF.
        IF t350 IS NOT BOUND.
          CREATE OBJECT t350.
          t350->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t350->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t347->load( ).
    APPEND t350 TO t347->items.
    t347->save( ).
    DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t313 IS BOUND.
      DATA t357 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t358 TYPE REF TO object.
      t358 = t313.
      TRY.
          t355 ?= t358.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t355 IS NOT BOUND.
        TRY.
            t357 ?= t313.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t357 IS BOUND.
          t355 = t357->source( ).
        ENDIF.
        IF t355 IS NOT BOUND.
          CREATE OBJECT t355.
          t355->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t355->oval = t313.
        ENDIF.
      ENDIF.
    ENDIF.
    t347->load( ).
    APPEND t355 TO t347->items.
    t347->save( ).
    DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t294 IS BOUND.
      DATA t362 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t363 TYPE REF TO object.
      t363 = t294.
      TRY.
          t360 ?= t363.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t360 IS NOT BOUND.
        TRY.
            t362 ?= t294.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t362 IS BOUND.
          t360 = t362->source( ).
        ENDIF.
        IF t360 IS NOT BOUND.
          CREATE OBJECT t360.
          t360->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t360->oval = t294.
        ENDIF.
      ENDIF.
    ENDIF.
    t347->load( ).
    APPEND t360 TO t347->items.
    t347->save( ).
    DATA t364 TYPE REF TO zif_lnt_statement_runnable.
    t364 = zcl_lnt_st_combi_module=>alt( i_first = t338 i_second = t343 i_rest = t347 ).
    t336 = t364.
    IF t336 IS BOUND.
      DATA t368 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t369 TYPE REF TO object.
      t369 = t336.
      TRY.
          t335 ?= t369.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t335 IS NOT BOUND.
        TRY.
            t368 ?= t336.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t368 IS BOUND.
          t335 = t368->source( ).
        ENDIF.
        IF t335 IS NOT BOUND.
          CREATE OBJECT t335.
          t335->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t335->oval = t336.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t65 IS BOUND.
      DATA t373 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t374 TYPE REF TO object.
      t374 = t65.
      TRY.
          t371 ?= t374.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t371 IS NOT BOUND.
        TRY.
            t373 ?= t65.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t373 IS BOUND.
          t371 = t373->source( ).
        ENDIF.
        IF t371 IS NOT BOUND.
          CREATE OBJECT t371.
          t371->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t371->oval = t65.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t376 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t376.
    DATA t377 TYPE REF TO zif_lnt_statement_runnable.
    t377 = zcl_lnt_st_combi_module=>seq( i_first = t335 i_second = t371 i_rest = t376 ).
    t332 = t377.
    DATA t381 TYPE REF TO zif_lnt_statement_runnable.
    DATA t384 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t385) = |ENTITY|.
    CREATE OBJECT t384.
    t384->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t384->sval = t385.
    DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t388 TYPE REF TO zif_lnt_statement_runnable.
    DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t390) = |IN LOCAL MODE|.
    CREATE OBJECT t389.
    t389->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t389->sval = t390.
    t388 = zcl_lnt_st_combi_module=>opt( i_first = t389 ).
    IF t388 IS BOUND.
      DATA t391 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t392 TYPE REF TO object.
      t392 = t388.
      TRY.
          t387 ?= t392.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t387 IS NOT BOUND.
        TRY.
            t391 ?= t388.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t391 IS BOUND.
          t387 = t391->source( ).
        ENDIF.
        IF t387 IS NOT BOUND.
          CREATE OBJECT t387.
          t387->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t387->oval = t388.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t393 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t394 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t394.
    t393 = t394.
    DATA t396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t397 TYPE REF TO zif_lnt_statement_runnable.
    DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t400) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    IF t400 IS BOUND.
      CREATE OBJECT t399.
      t399->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t399->cval = t400.
    ENDIF.
    DATA t402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t403) = zlnt_runtime_desc_78196487750d=>zlnt_member_d162_57231f39acd0.
    IF t403 IS BOUND.
      CREATE OBJECT t402.
      t402->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t402->cval = t403.
    ENDIF.
    DATA t405 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t405.
    DATA t406 TYPE REF TO zif_lnt_statement_runnable.
    t406 = zcl_lnt_st_combi_module=>alt( i_first = t399 i_second = t402 i_rest = t405 ).
    t397 = t406.
    IF t397 IS BOUND.
      DATA t410 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t411 TYPE REF TO object.
      t411 = t397.
      TRY.
          t396 ?= t411.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t396 IS NOT BOUND.
        TRY.
            t410 ?= t397.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t410 IS BOUND.
          t396 = t410->source( ).
        ENDIF.
        IF t396 IS NOT BOUND.
          CREATE OBJECT t396.
          t396->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t396->oval = t397.
        ENDIF.
      ENDIF.
    ENDIF.
    t393->load( ).
    APPEND t396 TO t393->items.
    t393->save( ).
    DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t414 TYPE REF TO zif_lnt_statement_runnable.
    DATA t415 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t332 IS BOUND.
      DATA t417 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t418 TYPE REF TO object.
      t418 = t332.
      TRY.
          t415 ?= t418.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t415 IS NOT BOUND.
        TRY.
            t417 ?= t332.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t417 IS BOUND.
          t415 = t417->source( ).
        ENDIF.
        IF t415 IS NOT BOUND.
          CREATE OBJECT t415.
          t415->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t415->oval = t332.
        ENDIF.
      ENDIF.
    ENDIF.
    t414 = zcl_lnt_st_combi_module=>plus( i_first = t415 ).
    IF t414 IS BOUND.
      DATA t419 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t420 TYPE REF TO object.
      t420 = t414.
      TRY.
          t413 ?= t420.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t413 IS NOT BOUND.
        TRY.
            t419 ?= t414.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t419 IS BOUND.
          t413 = t419->source( ).
        ENDIF.
        IF t413 IS NOT BOUND.
          CREATE OBJECT t413.
          t413->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t413->oval = t414.
        ENDIF.
      ENDIF.
    ENDIF.
    t393->load( ).
    APPEND t413 TO t393->items.
    t393->save( ).
    DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t423 TYPE REF TO zif_lnt_statement_runnable.
    DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t79 IS BOUND.
      DATA t426 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t427 TYPE REF TO object.
      t427 = t79.
      TRY.
          t424 ?= t427.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t424 IS NOT BOUND.
        TRY.
            t426 ?= t79.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t426 IS BOUND.
          t424 = t426->source( ).
        ENDIF.
        IF t424 IS NOT BOUND.
          CREATE OBJECT t424.
          t424->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t424->oval = t79.
        ENDIF.
      ENDIF.
    ENDIF.
    t423 = zcl_lnt_st_combi_module=>opt_prio( i_first = t424 ).
    IF t423 IS BOUND.
      DATA t428 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t429 TYPE REF TO object.
      t429 = t423.
      TRY.
          t422 ?= t429.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t422 IS NOT BOUND.
        TRY.
            t428 ?= t423.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t428 IS BOUND.
          t422 = t428->source( ).
        ENDIF.
        IF t422 IS NOT BOUND.
          CREATE OBJECT t422.
          t422->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t422->oval = t423.
        ENDIF.
      ENDIF.
    ENDIF.
    t393->load( ).
    APPEND t422 TO t393->items.
    t393->save( ).
    DATA t431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t432 TYPE REF TO zif_lnt_statement_runnable.
    DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t93 IS BOUND.
      DATA t435 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t436 TYPE REF TO object.
      t436 = t93.
      TRY.
          t433 ?= t436.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t433 IS NOT BOUND.
        TRY.
            t435 ?= t93.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t435 IS BOUND.
          t433 = t435->source( ).
        ENDIF.
        IF t433 IS NOT BOUND.
          CREATE OBJECT t433.
          t433->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t433->oval = t93.
        ENDIF.
      ENDIF.
    ENDIF.
    t432 = zcl_lnt_st_combi_module=>opt_prio( i_first = t433 ).
    IF t432 IS BOUND.
      DATA t437 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t438 TYPE REF TO object.
      t438 = t432.
      TRY.
          t431 ?= t438.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t431 IS NOT BOUND.
        TRY.
            t437 ?= t432.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t437 IS BOUND.
          t431 = t437->source( ).
        ENDIF.
        IF t431 IS NOT BOUND.
          CREATE OBJECT t431.
          t431->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t431->oval = t432.
        ENDIF.
      ENDIF.
    ENDIF.
    t393->load( ).
    APPEND t431 TO t393->items.
    t393->save( ).
    DATA t439 TYPE REF TO zif_lnt_statement_runnable.
    t439 = zcl_lnt_st_combi_module=>seq( i_first = t384 i_second = t387 i_rest = t393 ).
    t381 = t439.
    DATA t443 TYPE REF TO zif_lnt_statement_runnable.
    DATA t444 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t445 TYPE REF TO zcl_lnt_abap_release.
    DATA t446 TYPE REF TO zcl_lnt_abap_release.
    DATA t447 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t447 = zcl_lnt_version_module=>release_b8cd.
    DATA(t448) = |v754|.
    t446 = t447->get( p0 = t448 ).
    t445 = t446.
    IF t445 IS BOUND.
      DATA t449 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t450 TYPE REF TO object.
      t450 = t445.
      TRY.
          t444 ?= t450.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t444 IS NOT BOUND.
        TRY.
            t449 ?= t445.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t449 IS BOUND.
          t444 = t449->source( ).
        ENDIF.
        IF t444 IS NOT BOUND.
          CREATE OBJECT t444.
          t444->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t444->oval = t445.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t452 TYPE REF TO zif_lnt_statement_runnable.
    DATA t454 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t455) = |READ|.
    CREATE OBJECT t454.
    t454->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t454->sval = t455.
    DATA t457 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t458 TYPE REF TO zif_lnt_statement_runnable.
    DATA t460 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t218 IS BOUND.
      DATA t462 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t463 TYPE REF TO object.
      t463 = t218.
      TRY.
          t460 ?= t463.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t460 IS NOT BOUND.
        TRY.
            t462 ?= t218.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t462 IS BOUND.
          t460 = t462->source( ).
        ENDIF.
        IF t460 IS NOT BOUND.
          CREATE OBJECT t460.
          t460->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t460->oval = t218.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t381 IS BOUND.
      DATA t467 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t468 TYPE REF TO object.
      t468 = t381.
      TRY.
          t465 ?= t468.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t465 IS NOT BOUND.
        TRY.
            t467 ?= t381.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t467 IS BOUND.
          t465 = t467->source( ).
        ENDIF.
        IF t465 IS NOT BOUND.
          CREATE OBJECT t465.
          t465->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t465->oval = t381.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t470 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t470.
    DATA t471 TYPE REF TO zif_lnt_statement_runnable.
    t471 = zcl_lnt_st_combi_module=>alt( i_first = t460 i_second = t465 i_rest = t470 ).
    t458 = t471.
    IF t458 IS BOUND.
      DATA t475 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t476 TYPE REF TO object.
      t476 = t458.
      TRY.
          t457 ?= t476.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t457 IS NOT BOUND.
        TRY.
            t475 ?= t458.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t475 IS BOUND.
          t457 = t475->source( ).
        ENDIF.
        IF t457 IS NOT BOUND.
          CREATE OBJECT t457.
          t457->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t457->oval = t458.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t478 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t478.
    DATA t479 TYPE REF TO zif_lnt_statement_runnable.
    t479 = zcl_lnt_st_combi_module=>seq( i_first = t454 i_second = t457 i_rest = t478 ).
    t452 = t479.
    IF t452 IS BOUND.
      DATA t483 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t484 TYPE REF TO object.
      t484 = t452.
      TRY.
          t451 ?= t484.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t451 IS NOT BOUND.
        TRY.
            t483 ?= t452.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t483 IS BOUND.
          t451 = t483->source( ).
        ENDIF.
        IF t451 IS NOT BOUND.
          CREATE OBJECT t451.
          t451->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t451->oval = t452.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t485 TYPE REF TO zcl_lnt_iver_options.
    DATA t487 TYPE REF TO zcl_lnt_iver_options.
    DATA t488 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t491) = |OpenABAP|.
    DATA(t492) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t492->has = abap_true.
    t492->value = t491.
    t488 = t492.
    t487 = NEW zcl_lnt_iver_options( i_also = t488 ).
    CREATE OBJECT t487->zlnt_view_ownkeys_b0e8086400eb.
    t487->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t494 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t487->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t494 ).
    CREATE OBJECT t487->zlnt_json_ownkeys_70e5fd461788.
    t487->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t495) = |also|.
    DATA t496 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t487->zlnt_json_ownkeys_70e5fd461788->put( p0 = t495 p1 = t496 ).
    t485 = t487.
    t443 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t444 i_first = t451 i_opts = t485 ).
    result = t443.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d591_802cad6c5ea5.
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
