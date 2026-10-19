* TS: src/abap/2_statements/expressions/_lob_handle_type.ts.module module
CLASS zcl_lnt_lob_handle_type_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS lob_columns RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-METHODS lob_kind RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-METHODS lob_handle_type RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-DATA zlnt_builtin_init_ab4c41240bc6 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_db1fb6927434.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_lob_handle_type_module IMPLEMENTATION.
  METHOD lob_columns.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t6.
    t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t6->sval = |FOR|.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zif_lnt_statement_runnable.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t11.
    t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t11->sval = |OTHER|.
    t10 = zcl_lnt_st_combi_module=>opt( i_first = t11 ).
    IF t10 IS BOUND.
      DATA t13 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t14 TYPE REF TO object.
      t14 = t10.
      TRY.
          t9 ?= t14.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t9 IS NOT BOUND.
        TRY.
            t13 ?= t10.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t13 IS BOUND.
          t9 = t13->source( ).
        ENDIF.
        IF t9 IS NOT BOUND.
          CREATE OBJECT t9.
          t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t9->oval = t10.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t15.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t21.
    t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t21->sval = |BLOB|.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t24.
    t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t24->sval = |CLOB|.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t27.
    t19 = zcl_lnt_st_combi_module=>alt_prio( i_first = t21 i_second = t24 i_rest = t27 ).
    IF t19 IS BOUND.
      DATA t32 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t33 TYPE REF TO object.
      t33 = t19.
      TRY.
          t18 ?= t33.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t18 IS NOT BOUND.
        TRY.
            t32 ?= t19.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t32 IS BOUND.
          t18 = t32->source( ).
        ENDIF.
        IF t18 IS NOT BOUND.
          CREATE OBJECT t18.
          t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t18->oval = t19.
        ENDIF.
      ENDIF.
    ENDIF.
    t15->load( ).
    APPEND t18 TO t15->items.
    t15->save( ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t35.
    t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t35->sval = |COLUMNS|.
    t15->load( ).
    APPEND t35 TO t15->items.
    t15->save( ).
    t4 = zcl_lnt_st_combi_module=>seq( i_first = t6 i_second = t9 i_rest = t15 ).
    IF t4 IS BOUND.
      DATA t41 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t42 TYPE REF TO object.
      t42 = t4.
      TRY.
          t3 ?= t42.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t3 IS NOT BOUND.
        TRY.
            t41 ?= t4.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t41 IS BOUND.
          t3 = t41->source( ).
        ENDIF.
        IF t3 IS NOT BOUND.
          CREATE OBJECT t3.
          t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t3->oval = t4.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t47.
    t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t47->sval = |FOR|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t50.
    t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t50->sval = |ALL|.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t52.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t56 TYPE REF TO zif_lnt_statement_runnable.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t57.
    t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t57->sval = |OTHER|.
    t56 = zcl_lnt_st_combi_module=>opt( i_first = t57 ).
    IF t56 IS BOUND.
      DATA t59 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t60 TYPE REF TO object.
      t60 = t56.
      TRY.
          t55 ?= t60.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t55 IS NOT BOUND.
        TRY.
            t59 ?= t56.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t59 IS BOUND.
          t55 = t59->source( ).
        ENDIF.
        IF t55 IS NOT BOUND.
          CREATE OBJECT t55.
          t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t55->oval = t56.
        ENDIF.
      ENDIF.
    ENDIF.
    t52->load( ).
    APPEND t55 TO t52->items.
    t52->save( ).
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t63 TYPE REF TO zif_lnt_statement_runnable.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t65.
    t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t65->sval = |BLOB|.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t68.
    t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t68->sval = |CLOB|.
    DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t71.
    t63 = zcl_lnt_st_combi_module=>alt_prio( i_first = t65 i_second = t68 i_rest = t71 ).
    IF t63 IS BOUND.
      DATA t76 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t77 TYPE REF TO object.
      t77 = t63.
      TRY.
          t62 ?= t77.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t62 IS NOT BOUND.
        TRY.
            t76 ?= t63.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t76 IS BOUND.
          t62 = t76->source( ).
        ENDIF.
        IF t62 IS NOT BOUND.
          CREATE OBJECT t62.
          t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t62->oval = t63.
        ENDIF.
      ENDIF.
    ENDIF.
    t52->load( ).
    APPEND t62 TO t52->items.
    t52->save( ).
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t79.
    t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t79->sval = |COLUMNS|.
    t52->load( ).
    APPEND t79 TO t52->items.
    t52->save( ).
    t45 = zcl_lnt_st_combi_module=>seq( i_first = t47 i_second = t50 i_rest = t52 ).
    IF t45 IS BOUND.
      DATA t85 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t86 TYPE REF TO object.
      t86 = t45.
      TRY.
          t44 ?= t86.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t44 IS NOT BOUND.
        TRY.
            t85 ?= t45.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t85 IS BOUND.
          t44 = t85->source( ).
        ENDIF.
        IF t44 IS NOT BOUND.
          CREATE OBJECT t44.
          t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t44->oval = t45.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t87.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t91 TYPE REF TO zif_lnt_statement_runnable.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t93.
    t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t93->sval = |FOR|.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t96.
    t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t96->sval = |ALL|.
    DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t98.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t101.
    t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t101->sval = |COLUMNS|.
    t98->load( ).
    APPEND t101 TO t98->items.
    t98->save( ).
    t91 = zcl_lnt_st_combi_module=>seq( i_first = t93 i_second = t96 i_rest = t98 ).
    IF t91 IS BOUND.
      DATA t107 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t108 TYPE REF TO object.
      t108 = t91.
      TRY.
          t90 ?= t108.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t90 IS NOT BOUND.
        TRY.
            t107 ?= t91.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t107 IS BOUND.
          t90 = t107->source( ).
        ENDIF.
        IF t90 IS NOT BOUND.
          CREATE OBJECT t90.
          t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t90->oval = t91.
        ENDIF.
      ENDIF.
    ENDIF.
    t87->load( ).
    APPEND t90 TO t87->items.
    t87->save( ).
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t111 TYPE REF TO zif_lnt_statement_runnable.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t113.
    t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t113->sval = |FOR|.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t116.
    t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t116->sval = |COLUMNS|.
    DATA t118 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t118.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t122 TYPE REF TO zif_lnt_statement_runnable.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t124) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
    IF t124 IS BOUND.
      CREATE OBJECT t123.
      t123->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t123->cval = t124.
    ENDIF.
    t122 = zcl_lnt_st_combi_module=>plus( i_first = t123 ).
    IF t122 IS BOUND.
      DATA t125 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t126 TYPE REF TO object.
      t126 = t122.
      TRY.
          t121 ?= t126.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t121 IS NOT BOUND.
        TRY.
            t125 ?= t122.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t125 IS BOUND.
          t121 = t125->source( ).
        ENDIF.
        IF t121 IS NOT BOUND.
          CREATE OBJECT t121.
          t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t121->oval = t122.
        ENDIF.
      ENDIF.
    ENDIF.
    t118->load( ).
    APPEND t121 TO t118->items.
    t118->save( ).
    t111 = zcl_lnt_st_combi_module=>seq( i_first = t113 i_second = t116 i_rest = t118 ).
    IF t111 IS BOUND.
      DATA t131 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t132 TYPE REF TO object.
      t132 = t111.
      TRY.
          t110 ?= t132.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t110 IS NOT BOUND.
        TRY.
            t131 ?= t111.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t131 IS BOUND.
          t110 = t131->source( ).
        ENDIF.
        IF t110 IS NOT BOUND.
          CREATE OBJECT t110.
          t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t110->oval = t111.
        ENDIF.
      ENDIF.
    ENDIF.
    t87->load( ).
    APPEND t110 TO t87->items.
    t87->save( ).
    result = zcl_lnt_st_combi_module=>alt_prio( i_first = t3 i_second = t44 i_rest = t87 ).

  ENDMETHOD.

  METHOD lob_kind.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t3.
    t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t3->sval = |LOCATOR|.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t6.
    t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t6->sval = |READER|.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t8.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t11.
    t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t11->sval = |WRITER|.
    t8->load( ).
    APPEND t11 TO t8->items.
    t8->save( ).
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t17.
    t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t17->sval = |LOB|.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t20.
    t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t20->sval = |HANDLE|.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t23.
    t15 = zcl_lnt_st_combi_module=>seq( i_first = t17 i_second = t20 i_rest = t23 ).
    IF t15 IS BOUND.
      DATA t28 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t29 TYPE REF TO object.
      t29 = t15.
      TRY.
          t14 ?= t29.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t14 IS NOT BOUND.
        TRY.
            t28 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t28 IS BOUND.
          t14 = t28->source( ).
        ENDIF.
        IF t14 IS NOT BOUND.
          CREATE OBJECT t14.
          t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t14->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    t8->load( ).
    APPEND t14 TO t8->items.
    t8->save( ).
    result = zcl_lnt_st_combi_module=>alt_prio( i_first = t3 i_second = t6 i_rest = t8 ).

  ENDMETHOD.

  METHOD lob_handle_type.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t3.
    t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t3->sval = |TYPE|.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    IF t7 IS BOUND.
      CREATE OBJECT t6.
      t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t6->cval = t7.
    ENDIF.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t8.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t12 TYPE REF TO zif_lnt_statement_runnable.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t13.
    t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t13->sval = |READ-ONLY|.
    t12 = zcl_lnt_st_combi_module=>opt( i_first = t13 ).
    IF t12 IS BOUND.
      DATA t15 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t16 TYPE REF TO object.
      t16 = t12.
      TRY.
          t11 ?= t16.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t11 IS NOT BOUND.
        TRY.
            t15 ?= t12.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t15 IS BOUND.
          t11 = t15->source( ).
        ENDIF.
        IF t11 IS NOT BOUND.
          CREATE OBJECT t11.
          t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t11->oval = t12.
        ENDIF.
      ENDIF.
    ENDIF.
    t8->load( ).
    APPEND t11 TO t8->items.
    t8->save( ).
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t24) = CAST zif_lnt_statement_runnable( zcl_lnt_lob_handle_type_module=>lob_kind( ) ).
    IF t24 IS BOUND.
      DATA t25 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t26 TYPE REF TO object.
      t26 = t24.
      TRY.
          t23 ?= t26.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t23 IS NOT BOUND.
        TRY.
            t25 ?= t24.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t25 IS BOUND.
          t23 = t25->source( ).
        ENDIF.
        IF t23 IS NOT BOUND.
          CREATE OBJECT t23.
          t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t23->oval = t24.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t29) = CAST zif_lnt_statement_runnable( zcl_lnt_lob_handle_type_module=>lob_columns( ) ).
    IF t29 IS BOUND.
      DATA t30 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t31 TYPE REF TO object.
      t31 = t29.
      TRY.
          t28 ?= t31.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t28 IS NOT BOUND.
        TRY.
            t30 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t30 IS BOUND.
          t28 = t30->source( ).
        ENDIF.
        IF t28 IS NOT BOUND.
          CREATE OBJECT t28.
          t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t28->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t33.
    t21 = zcl_lnt_st_combi_module=>seq( i_first = t23 i_second = t28 i_rest = t33 ).
    IF t21 IS BOUND.
      DATA t38 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t39 TYPE REF TO object.
      t39 = t21.
      TRY.
          t20 ?= t39.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t20 IS NOT BOUND.
        TRY.
            t38 ?= t21.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t38 IS BOUND.
          t20 = t38->source( ).
        ENDIF.
        IF t20 IS NOT BOUND.
          CREATE OBJECT t20.
          t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t20->oval = t21.
        ENDIF.
      ENDIF.
    ENDIF.
    t19 = zcl_lnt_st_combi_module=>plus( i_first = t20 ).
    IF t19 IS BOUND.
      DATA t40 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t41 TYPE REF TO object.
      t41 = t19.
      TRY.
          t18 ?= t41.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t18 IS NOT BOUND.
        TRY.
            t40 ?= t19.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t40 IS BOUND.
          t18 = t40->source( ).
        ENDIF.
        IF t18 IS NOT BOUND.
          CREATE OBJECT t18.
          t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t18->oval = t19.
        ENDIF.
      ENDIF.
    ENDIF.
    t8->load( ).
    APPEND t18 TO t8->items.
    t8->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t3 i_second = t6 i_rest = t8 ).

  ENDMETHOD.

  METHOD zlnt_builtin_init_db1fb6927434.
    IF zlnt_builtin_init_ab4c41240bc6 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_ab4c41240bc6 = abap_true.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1923_ccdf8dfebd6a.
  ENDMETHOD.
ENDCLASS.
