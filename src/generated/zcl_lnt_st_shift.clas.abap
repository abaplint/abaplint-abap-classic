* TS: src/abap/2_statements/statements/shift.ts:6:1 Shift
CLASS zcl_lnt_st_shift DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_shift IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |DELETING|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t10.
    t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t10->sval = |LEADING|.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t13.
    t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t13->sval = |TRAILING|.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t16.
    t8 = zcl_lnt_st_combi_module=>alt_prio( i_first = t10 i_second = t13 i_rest = t16 ).
    IF t8 IS BOUND.
      DATA t21 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t22 TYPE REF TO object.
      t22 = t8.
      TRY.
          t7 ?= t22.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t7 IS NOT BOUND.
        TRY.
            t21 ?= t8.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t21 IS BOUND.
          t7 = t21->source( ).
        ENDIF.
        IF t7 IS NOT BOUND.
          CREATE OBJECT t7.
          t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t7->oval = t8.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t23.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t27 IS BOUND.
      CREATE OBJECT t26.
      t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t26->cval = t27.
    ENDIF.
    t23->load( ).
    APPEND t26 TO t23->items.
    t23->save( ).
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t23 ).
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t35.
    t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t35->sval = |UP TO|.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t39) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t39 IS BOUND.
      CREATE OBJECT t38.
      t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t38->cval = t39.
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t41.
    t32 = zcl_lnt_st_combi_module=>seq( i_first = t35 i_second = t38 i_rest = t41 ).
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t49.
    t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t49->sval = |IN|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t55.
    t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t55->sval = |CHARACTER|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t58.
    t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t58->sval = |BYTE|.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t61.
    t53 = zcl_lnt_st_combi_module=>alt_prio( i_first = t55 i_second = t58 i_rest = t61 ).
    IF t53 IS BOUND.
      DATA t66 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t67 TYPE REF TO object.
      t67 = t53.
      TRY.
          t52 ?= t67.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t52 IS NOT BOUND.
        TRY.
            t66 ?= t53.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t66 IS BOUND.
          t52 = t66->source( ).
        ENDIF.
        IF t52 IS NOT BOUND.
          CREATE OBJECT t52.
          t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t52->oval = t53.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t68.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t71.
    t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t71->sval = |MODE|.
    t68->load( ).
    APPEND t71 TO t68->items.
    t68->save( ).
    t46 = zcl_lnt_st_combi_module=>seq( i_first = t49 i_second = t52 i_rest = t68 ).
    DATA t77 TYPE REF TO zif_lnt_statement_runnable.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t80.
    t80->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t80->sval = |LEFT|.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t83.
    t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t83->sval = |RIGHT|.
    DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t86.
    t77 = zcl_lnt_st_combi_module=>alt_prio( i_first = t80 i_second = t83 i_rest = t86 ).
    DATA t91 TYPE REF TO zif_lnt_statement_runnable.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t94.
    t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t94->sval = |BY|.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t98) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t98 IS BOUND.
      CREATE OBJECT t97.
      t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t97->cval = t98.
    ENDIF.
    DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t99.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t103 TYPE REF TO zif_lnt_statement_runnable.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t104.
    t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t104->sval = |PLACES|.
    t103 = zcl_lnt_st_combi_module=>opt_prio( i_first = t104 ).
    IF t103 IS BOUND.
      DATA t106 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t107 TYPE REF TO object.
      t107 = t103.
      TRY.
          t102 ?= t107.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t102 IS NOT BOUND.
        TRY.
            t106 ?= t103.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t106 IS BOUND.
          t102 = t106->source( ).
        ENDIF.
        IF t102 IS NOT BOUND.
          CREATE OBJECT t102.
          t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t102->oval = t103.
        ENDIF.
      ENDIF.
    ENDIF.
    t99->load( ).
    APPEND t102 TO t99->items.
    t99->save( ).
    t91 = zcl_lnt_st_combi_module=>seq( i_first = t94 i_second = t97 i_rest = t99 ).
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t117 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t118 TYPE REF TO object.
      t118 = t1.
      TRY.
          t115 ?= t118.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t115 IS NOT BOUND.
        TRY.
            t117 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t117 IS BOUND.
          t115 = t117->source( ).
        ENDIF.
        IF t115 IS NOT BOUND.
          CREATE OBJECT t115.
          t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t115->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t32 IS BOUND.
      DATA t122 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t123 TYPE REF TO object.
      t123 = t32.
      TRY.
          t120 ?= t123.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t120 IS NOT BOUND.
        TRY.
            t122 ?= t32.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t122 IS BOUND.
          t120 = t122->source( ).
        ENDIF.
        IF t120 IS NOT BOUND.
          CREATE OBJECT t120.
          t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t120->oval = t32.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t124.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t46 IS BOUND.
      DATA t129 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t130 TYPE REF TO object.
      t130 = t46.
      TRY.
          t127 ?= t130.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t127 IS NOT BOUND.
        TRY.
            t129 ?= t46.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t129 IS BOUND.
          t127 = t129->source( ).
        ENDIF.
        IF t127 IS NOT BOUND.
          CREATE OBJECT t127.
          t127->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t127->oval = t46.
        ENDIF.
      ENDIF.
    ENDIF.
    t124->load( ).
    APPEND t127 TO t124->items.
    t124->save( ).
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t77 IS BOUND.
      DATA t134 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t135 TYPE REF TO object.
      t135 = t77.
      TRY.
          t132 ?= t135.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t132 IS NOT BOUND.
        TRY.
            t134 ?= t77.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t134 IS BOUND.
          t132 = t134->source( ).
        ENDIF.
        IF t132 IS NOT BOUND.
          CREATE OBJECT t132.
          t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t132->oval = t77.
        ENDIF.
      ENDIF.
    ENDIF.
    t124->load( ).
    APPEND t132 TO t124->items.
    t124->save( ).
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t91 IS BOUND.
      DATA t139 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t140 TYPE REF TO object.
      t140 = t91.
      TRY.
          t137 ?= t140.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t137 IS NOT BOUND.
        TRY.
            t139 ?= t91.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t139 IS BOUND.
          t137 = t139->source( ).
        ENDIF.
        IF t137 IS NOT BOUND.
          CREATE OBJECT t137.
          t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t137->oval = t91.
        ENDIF.
      ENDIF.
    ENDIF.
    t124->load( ).
    APPEND t137 TO t124->items.
    t124->save( ).
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t142.
    t142->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t142->sval = |CIRCULAR|.
    t124->load( ).
    APPEND t142 TO t124->items.
    t124->save( ).
    t112 = zcl_lnt_st_combi_module=>per( i_first = t115 i_second = t120 i_rest = t124 ).
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t150.
    t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t150->sval = |SHIFT|.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t154) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t154 IS BOUND.
      CREATE OBJECT t153.
      t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t153->cval = t154.
    ENDIF.
    DATA t155 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t155.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t159 TYPE REF TO zif_lnt_statement_runnable.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t112 IS BOUND.
      DATA t162 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t163 TYPE REF TO object.
      t163 = t112.
      TRY.
          t160 ?= t163.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t160 IS NOT BOUND.
        TRY.
            t162 ?= t112.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t162 IS BOUND.
          t160 = t162->source( ).
        ENDIF.
        IF t160 IS NOT BOUND.
          CREATE OBJECT t160.
          t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t160->oval = t112.
        ENDIF.
      ENDIF.
    ENDIF.
    t159 = zcl_lnt_st_combi_module=>opt( i_first = t160 ).
    IF t159 IS BOUND.
      DATA t164 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t165 TYPE REF TO object.
      t165 = t159.
      TRY.
          t158 ?= t165.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t158 IS NOT BOUND.
        TRY.
            t164 ?= t159.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t164 IS BOUND.
          t158 = t164->source( ).
        ENDIF.
        IF t158 IS NOT BOUND.
          CREATE OBJECT t158.
          t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t158->oval = t159.
        ENDIF.
      ENDIF.
    ENDIF.
    t155->load( ).
    APPEND t158 TO t155->items.
    t155->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t150 i_second = t153 i_rest = t155 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d635_768248399129.
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
