* TS: src/abap/2_statements/statements/call_transformation.ts:7:1 CallTransformation
CLASS zcl_lnt_st_call_transformation DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_call_transformation IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |OPTIONS|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d109_38db171d00c8.
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
    t18->sval = |PARAMETERS|.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d110_fe91213debb9.
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t21->cval = t22.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t24.
    t15 = zcl_lnt_st_combi_module=>seq( i_first = t18 i_second = t21 i_rest = t24 ).
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = |OBJECTS|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d110_fe91213debb9.
    IF t36 IS BOUND.
      CREATE OBJECT t35.
      t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t35->cval = t36.
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t38.
    t29 = zcl_lnt_st_combi_module=>seq( i_first = t32 i_second = t35 i_rest = t38 ).
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t46.
    t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t46->sval = |XML|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428.
    IF t50 IS BOUND.
      CREATE OBJECT t49.
      t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t49->cval = t50.
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t52.
    t43 = zcl_lnt_st_combi_module=>seq( i_first = t46 i_second = t49 i_rest = t52 ).
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t60.
    t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t60->sval = |SOURCE|.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t67) = zlnt_runtime_desc_78196487750d=>zlnt_member_d110_fe91213debb9.
    IF t67 IS BOUND.
      CREATE OBJECT t66.
      t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t66->cval = t67.
    ENDIF.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t43 IS BOUND.
      DATA t71 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t72 TYPE REF TO object.
      t72 = t43.
      TRY.
          t69 ?= t72.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t69 IS NOT BOUND.
        TRY.
            t71 ?= t43.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t71 IS BOUND.
          t69 = t71->source( ).
        ENDIF.
        IF t69 IS NOT BOUND.
          CREATE OBJECT t69.
          t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t69->oval = t43.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t74.
    t64 = zcl_lnt_st_combi_module=>alt( i_first = t66 i_second = t69 i_rest = t74 ).
    IF t64 IS BOUND.
      DATA t79 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t80 TYPE REF TO object.
      t80 = t64.
      TRY.
          t63 ?= t80.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t63 IS NOT BOUND.
        TRY.
            t79 ?= t64.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t79 IS BOUND.
          t63 = t79->source( ).
        ENDIF.
        IF t63 IS NOT BOUND.
          CREATE OBJECT t63.
          t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t63->oval = t64.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t82.
    t57 = zcl_lnt_st_combi_module=>seq( i_first = t60 i_second = t63 i_rest = t82 ).
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t90.
    t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t90->sval = |XML|.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t94) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t94 IS BOUND.
      CREATE OBJECT t93.
      t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t93->cval = t94.
    ENDIF.
    DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t96.
    t87 = zcl_lnt_st_combi_module=>seq( i_first = t90 i_second = t93 i_rest = t96 ).
    DATA t101 TYPE REF TO zif_lnt_statement_runnable.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t104.
    t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t104->sval = |RESULT|.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t111) = zlnt_runtime_desc_78196487750d=>zlnt_member_d110_fe91213debb9.
    IF t111 IS BOUND.
      CREATE OBJECT t110.
      t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t110->cval = t111.
    ENDIF.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t87 IS BOUND.
      DATA t115 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t116 TYPE REF TO object.
      t116 = t87.
      TRY.
          t113 ?= t116.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t113 IS NOT BOUND.
        TRY.
            t115 ?= t87.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t115 IS BOUND.
          t113 = t115->source( ).
        ENDIF.
        IF t113 IS NOT BOUND.
          CREATE OBJECT t113.
          t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t113->oval = t87.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t118 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t118.
    t108 = zcl_lnt_st_combi_module=>alt( i_first = t110 i_second = t113 i_rest = t118 ).
    IF t108 IS BOUND.
      DATA t123 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t124 TYPE REF TO object.
      t124 = t108.
      TRY.
          t107 ?= t124.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t107 IS NOT BOUND.
        TRY.
            t123 ?= t108.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t123 IS BOUND.
          t107 = t123->source( ).
        ENDIF.
        IF t107 IS NOT BOUND.
          CREATE OBJECT t107.
          t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t107->oval = t108.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t126.
    t101 = zcl_lnt_st_combi_module=>seq( i_first = t104 i_second = t107 i_rest = t126 ).
    DATA t131 TYPE REF TO zif_lnt_statement_runnable.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t134.
    t134->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t134->sval = |CALL TRANSFORMATION|.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t138 TYPE REF TO zif_lnt_statement_runnable.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t141) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    IF t141 IS BOUND.
      CREATE OBJECT t140.
      t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t140->cval = t141.
    ENDIF.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t144) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    IF t144 IS BOUND.
      CREATE OBJECT t143.
      t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t143->cval = t144.
    ENDIF.
    DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t146.
    t138 = zcl_lnt_st_combi_module=>alt( i_first = t140 i_second = t143 i_rest = t146 ).
    IF t138 IS BOUND.
      DATA t151 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t152 TYPE REF TO object.
      t152 = t138.
      TRY.
          t137 ?= t152.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t137 IS NOT BOUND.
        TRY.
            t151 ?= t138.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t151 IS BOUND.
          t137 = t151->source( ).
        ENDIF.
        IF t137 IS NOT BOUND.
          CREATE OBJECT t137.
          t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t137->oval = t138.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t153.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t157 TYPE REF TO zif_lnt_statement_runnable.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t161 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t162 TYPE REF TO object.
      t162 = t1.
      TRY.
          t159 ?= t162.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t159 IS NOT BOUND.
        TRY.
            t161 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t161 IS BOUND.
          t159 = t161->source( ).
        ENDIF.
        IF t159 IS NOT BOUND.
          CREATE OBJECT t159.
          t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t159->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t166 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t167 TYPE REF TO object.
      t167 = t15.
      TRY.
          t164 ?= t167.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t164 IS NOT BOUND.
        TRY.
            t166 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t166 IS BOUND.
          t164 = t166->source( ).
        ENDIF.
        IF t164 IS NOT BOUND.
          CREATE OBJECT t164.
          t164->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t164->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t168 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t168.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      DATA t173 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t174 TYPE REF TO object.
      t174 = t29.
      TRY.
          t171 ?= t174.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t171 IS NOT BOUND.
        TRY.
            t173 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t173 IS BOUND.
          t171 = t173->source( ).
        ENDIF.
        IF t171 IS NOT BOUND.
          CREATE OBJECT t171.
          t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t171->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    t168->load( ).
    APPEND t171 TO t168->items.
    t168->save( ).
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t57 IS BOUND.
      DATA t178 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t179 TYPE REF TO object.
      t179 = t57.
      TRY.
          t176 ?= t179.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t176 IS NOT BOUND.
        TRY.
            t178 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t178 IS BOUND.
          t176 = t178->source( ).
        ENDIF.
        IF t176 IS NOT BOUND.
          CREATE OBJECT t176.
          t176->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t176->oval = t57.
        ENDIF.
      ENDIF.
    ENDIF.
    t168->load( ).
    APPEND t176 TO t168->items.
    t168->save( ).
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t101 IS BOUND.
      DATA t183 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t184 TYPE REF TO object.
      t184 = t101.
      TRY.
          t181 ?= t184.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t181 IS NOT BOUND.
        TRY.
            t183 ?= t101.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t183 IS BOUND.
          t181 = t183->source( ).
        ENDIF.
        IF t181 IS NOT BOUND.
          CREATE OBJECT t181.
          t181->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t181->oval = t101.
        ENDIF.
      ENDIF.
    ENDIF.
    t168->load( ).
    APPEND t181 TO t168->items.
    t168->save( ).
    t157 = zcl_lnt_st_combi_module=>per( i_first = t159 i_second = t164 i_rest = t168 ).
    IF t157 IS BOUND.
      DATA t189 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t190 TYPE REF TO object.
      t190 = t157.
      TRY.
          t156 ?= t190.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t156 IS NOT BOUND.
        TRY.
            t189 ?= t157.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t189 IS BOUND.
          t156 = t189->source( ).
        ENDIF.
        IF t156 IS NOT BOUND.
          CREATE OBJECT t156.
          t156->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t156->oval = t157.
        ENDIF.
      ENDIF.
    ENDIF.
    t153->load( ).
    APPEND t156 TO t153->items.
    t153->save( ).
    t131 = zcl_lnt_st_combi_module=>seq( i_first = t134 i_second = t137 i_rest = t153 ).
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t131 IS BOUND.
      DATA t199 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t200 TYPE REF TO object.
      t200 = t131.
      TRY.
          t197 ?= t200.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t197 IS NOT BOUND.
        TRY.
            t199 ?= t131.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t199 IS BOUND.
          t197 = t199->source( ).
        ENDIF.
        IF t197 IS NOT BOUND.
          CREATE OBJECT t197.
          t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t197->oval = t131.
        ENDIF.
      ENDIF.
    ENDIF.
    result = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |KeyUser| i_first = t197 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d399_7492453aefa4.
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
