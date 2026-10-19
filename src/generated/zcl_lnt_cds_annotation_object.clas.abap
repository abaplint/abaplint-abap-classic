* TS: src/cds/expressions/cds_annotation_object.ts:6:1 CDSAnnotationObject
CLASS zcl_lnt_cds_annotation_object DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_annotation_object IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |:|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1088_7215c406d22f.
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t10->cval = t11.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1087_967f7f7eef4c.
    IF t14 IS BOUND.
      CREATE OBJECT t13.
      t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t13->cval = t14.
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t15.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1089_69c439d6ef09.
    IF t19 IS BOUND.
      CREATE OBJECT t18.
      t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t18->cval = t19.
    ENDIF.
    t15->load( ).
    APPEND t18 TO t15->items.
    t15->save( ).
    t8 = zcl_lnt_st_combi_module=>alt( i_first = t10 i_second = t13 i_rest = t15 ).
    IF t8 IS BOUND.
      DATA t24 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t25 TYPE REF TO object.
      t25 = t8.
      TRY.
          t7 ?= t25.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t7 IS NOT BOUND.
        TRY.
            t24 ?= t8.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t24 IS BOUND.
          t7 = t24->source( ).
        ENDIF.
        IF t7 IS NOT BOUND.
          CREATE OBJECT t7.
          t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t7->oval = t8.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t27.
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t27 ).
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t36 IS BOUND.
      CREATE OBJECT t35.
      t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t35->cval = t36.
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t41 TYPE REF TO zif_lnt_statement_runnable.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t43.
    t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t43->sval = |.|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t47) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    IF t47 IS BOUND.
      CREATE OBJECT t46.
      t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t46->cval = t47.
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t49.
    t41 = zcl_lnt_st_combi_module=>seq( i_first = t43 i_second = t46 i_rest = t49 ).
    IF t41 IS BOUND.
      DATA t54 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t55 TYPE REF TO object.
      t55 = t41.
      TRY.
          t40 ?= t55.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t40 IS NOT BOUND.
        TRY.
            t54 ?= t41.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t54 IS BOUND.
          t40 = t54->source( ).
        ENDIF.
        IF t40 IS NOT BOUND.
          CREATE OBJECT t40.
          t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t40->oval = t41.
        ENDIF.
      ENDIF.
    ENDIF.
    t39 = zcl_lnt_st_combi_module=>star( i_first = t40 ).
    IF t39 IS BOUND.
      DATA t56 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t57 TYPE REF TO object.
      t57 = t39.
      TRY.
          t38 ?= t57.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t38 IS NOT BOUND.
        TRY.
            t56 ?= t39.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t56 IS BOUND.
          t38 = t56->source( ).
        ENDIF.
        IF t38 IS NOT BOUND.
          CREATE OBJECT t38.
          t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t38->oval = t39.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t59.
    t32 = zcl_lnt_st_combi_module=>seq( i_first = t35 i_second = t38 i_rest = t59 ).
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t67.
    t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t67->sval = |\{|.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t32 IS BOUND.
      DATA t72 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t73 TYPE REF TO object.
      t73 = t32.
      TRY.
          t70 ?= t73.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t70 IS NOT BOUND.
        TRY.
            t72 ?= t32.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t72 IS BOUND.
          t70 = t72->source( ).
        ENDIF.
        IF t70 IS NOT BOUND.
          CREATE OBJECT t70.
          t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t70->oval = t32.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t74.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t78 TYPE REF TO zif_lnt_statement_runnable.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t81 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t82 TYPE REF TO object.
      t82 = t1.
      TRY.
          t79 ?= t82.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t79 IS NOT BOUND.
        TRY.
            t81 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t81 IS BOUND.
          t79 = t81->source( ).
        ENDIF.
        IF t79 IS NOT BOUND.
          CREATE OBJECT t79.
          t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t79->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t78 = zcl_lnt_st_combi_module=>opt_prio( i_first = t79 ).
    IF t78 IS BOUND.
      DATA t83 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t84 TYPE REF TO object.
      t84 = t78.
      TRY.
          t77 ?= t84.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t77 IS NOT BOUND.
        TRY.
            t83 ?= t78.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t83 IS BOUND.
          t77 = t83->source( ).
        ENDIF.
        IF t77 IS NOT BOUND.
          CREATE OBJECT t77.
          t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t77->oval = t78.
        ENDIF.
      ENDIF.
    ENDIF.
    t74->load( ).
    APPEND t77 TO t74->items.
    t74->save( ).
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t91.
    t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t91->sval = |,|.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t32 IS BOUND.
      DATA t96 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t97 TYPE REF TO object.
      t97 = t32.
      TRY.
          t94 ?= t97.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t94 IS NOT BOUND.
        TRY.
            t96 ?= t32.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t96 IS BOUND.
          t94 = t96->source( ).
        ENDIF.
        IF t94 IS NOT BOUND.
          CREATE OBJECT t94.
          t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t94->oval = t32.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t98.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t102 TYPE REF TO zif_lnt_statement_runnable.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t105 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t106 TYPE REF TO object.
      t106 = t1.
      TRY.
          t103 ?= t106.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t103 IS NOT BOUND.
        TRY.
            t105 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t105 IS BOUND.
          t103 = t105->source( ).
        ENDIF.
        IF t103 IS NOT BOUND.
          CREATE OBJECT t103.
          t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t103->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t102 = zcl_lnt_st_combi_module=>opt_prio( i_first = t103 ).
    IF t102 IS BOUND.
      DATA t107 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t108 TYPE REF TO object.
      t108 = t102.
      TRY.
          t101 ?= t108.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t101 IS NOT BOUND.
        TRY.
            t107 ?= t102.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t107 IS BOUND.
          t101 = t107->source( ).
        ENDIF.
        IF t101 IS NOT BOUND.
          CREATE OBJECT t101.
          t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t101->oval = t102.
        ENDIF.
      ENDIF.
    ENDIF.
    t98->load( ).
    APPEND t101 TO t98->items.
    t98->save( ).
    t89 = zcl_lnt_st_combi_module=>seq( i_first = t91 i_second = t94 i_rest = t98 ).
    IF t89 IS BOUND.
      DATA t113 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t114 TYPE REF TO object.
      t114 = t89.
      TRY.
          t88 ?= t114.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t88 IS NOT BOUND.
        TRY.
            t113 ?= t89.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t113 IS BOUND.
          t88 = t113->source( ).
        ENDIF.
        IF t88 IS NOT BOUND.
          CREATE OBJECT t88.
          t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t88->oval = t89.
        ENDIF.
      ENDIF.
    ENDIF.
    t87 = zcl_lnt_st_combi_module=>star( i_first = t88 ).
    IF t87 IS BOUND.
      DATA t115 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t116 TYPE REF TO object.
      t116 = t87.
      TRY.
          t86 ?= t116.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t86 IS NOT BOUND.
        TRY.
            t115 ?= t87.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t115 IS BOUND.
          t86 = t115->source( ).
        ENDIF.
        IF t86 IS NOT BOUND.
          CREATE OBJECT t86.
          t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t86->oval = t87.
        ENDIF.
      ENDIF.
    ENDIF.
    t74->load( ).
    APPEND t86 TO t74->items.
    t74->save( ).
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t118.
    t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t118->sval = |\}|.
    t74->load( ).
    APPEND t118 TO t74->items.
    t74->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t67 i_second = t70 i_rest = t74 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1088_7215c406d22f.
  ENDMETHOD.
ENDCLASS.
