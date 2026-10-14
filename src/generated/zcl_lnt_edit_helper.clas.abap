* TS: src/edit_helper.ts:74:1 EditHelper
CLASS zcl_lnt_edit_helper DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS merge_list IMPORTING i_fixes TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLASS-METHODS merge IMPORTING i_fix1 TYPE REF TO zlnt_runtime_map__4fdf767b61ba i_fix2 TYPE REF TO zlnt_runtime_map__4fdf767b61ba RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLASS-METHODS find_statement IMPORTING i_token TYPE REF TO zcl_lnt_abstract_token i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zcl_lnt_statement_node.
    CLASS-METHODS delete_statement IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLASS-METHODS first_after_colon IMPORTING i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
    CLASS-METHODS delete_token IMPORTING i_file TYPE REF TO zif_lnt_file i_token TYPE REF TO zcl_lnt_abstract_token RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLASS-METHODS delete_range IMPORTING i_file TYPE REF TO zif_lnt_file i_start TYPE REF TO zcl_lnt_position i_end TYPE REF TO zcl_lnt_position RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLASS-METHODS insert_at IMPORTING i_file TYPE REF TO zif_lnt_file i_pos TYPE REF TO zcl_lnt_position i_text TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLASS-METHODS replace_token IMPORTING i_file TYPE REF TO zif_lnt_file i_token TYPE REF TO zcl_lnt_abstract_token i_text TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLASS-METHODS replace_range IMPORTING i_file TYPE REF TO zif_lnt_file i_start TYPE REF TO zcl_lnt_position i_end TYPE REF TO zcl_lnt_position i_text TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_edit_helper IMPLEMENTATION.
  METHOD merge_list.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_fixes ).
    DATA t2 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t3 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t4 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t5) = NEW zlnt_runtime_map__4fdf767b61ba(  ).
    t4 = t5.
    DATA(t6) = CAST zlnt_runtime_map__4fdf767b61ba( t4 ).
    t3 = t6.
    t2 = t3.
    DATA(t7) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t8 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    LOOP AT t7->items INTO t9.
      t8 ?= t9.
      DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t11) = CAST zlnt_runtime_map__4fdf767b61ba( t8 ).
      t10 = t11->keys(  ).
      DATA(t12) = VALUE string( ).
      LOOP AT t10->items INTO t12.
        DATA(t13) = VALUE abap_bool( ).
        DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t16) = CAST zlnt_runtime_map__4fdf767b61ba( t2 ).
        DATA(t17) = t12.
        t15 = t16->get( p0 = t17 ).
        t14 = t15.
        DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t19.
        t18 = t19.
        DATA(t20) = VALUE abap_bool( ).
        DATA(t21) = CAST zlnt_runtime_arra_c22708faf2e3( t14 ).
        IF t21 IS INITIAL.
          t20 = abap_true.
        ENDIF.
        t13 = t20.
        IF t13 = abap_true.
          DATA t22 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA(t23) = CAST zlnt_runtime_map__4fdf767b61ba( t2 ).
          DATA(t24) = t12.
          DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t25.
          t22 = t23->set( p0 = t24 p1 = t25 ).
        ENDIF.
        DATA t26 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA(t27) = CAST zlnt_runtime_map__4fdf767b61ba( t2 ).
        DATA(t28) = t12.
        DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t32) = CAST zlnt_runtime_map__4fdf767b61ba( t2 ).
        DATA(t33) = t12.
        t31 = t32->get( p0 = t33 ).
        t30 = t31.
        DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t36) = CAST zlnt_runtime_map__4fdf767b61ba( t8 ).
        DATA(t37) = t12.
        t35 = t36->get( p0 = t37 ).
        t34 = t35.
        t29 = t30->concat( p0 = t34 ).
        t26 = t27->set( p0 = t28 p1 = t29 ).
      ENDLOOP.
    ENDLOOP.
    DATA(t38) = CAST zlnt_runtime_map__4fdf767b61ba( t2 ).
    result = t38.

  ENDMETHOD.
  METHOD merge.
    DATA(t1) = CAST zlnt_runtime_map__4fdf767b61ba( i_fix1 ).
    DATA(t2) = CAST zlnt_runtime_map__4fdf767b61ba( i_fix2 ).
    DATA t3 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t4 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t5 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t6) = NEW zlnt_runtime_map__4fdf767b61ba(  ).
    t5 = t6.
    DATA(t7) = CAST zlnt_runtime_map__4fdf767b61ba( t5 ).
    t4 = t7.
    t3 = t4.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t9) = CAST zlnt_runtime_map__4fdf767b61ba( t1 ).
    t8 = t9->keys(  ).
    DATA(t10) = VALUE string( ).
    LOOP AT t8->items INTO t10.
      DATA(t11) = VALUE abap_bool( ).
      DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t14) = CAST zlnt_runtime_map__4fdf767b61ba( t3 ).
      DATA(t15) = t10.
      t13 = t14->get( p0 = t15 ).
      t12 = t13.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      t16 = t17.
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( t12 ).
      IF t19 IS INITIAL.
        t18 = abap_true.
      ENDIF.
      t11 = t18.
      IF t11 = abap_true.
        DATA t20 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA(t21) = CAST zlnt_runtime_map__4fdf767b61ba( t3 ).
        DATA(t22) = t10.
        DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t23.
        t20 = t21->set( p0 = t22 p1 = t23 ).
      ENDIF.
      DATA t24 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA(t25) = CAST zlnt_runtime_map__4fdf767b61ba( t3 ).
      DATA(t26) = t10.
      DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t30) = CAST zlnt_runtime_map__4fdf767b61ba( t3 ).
      DATA(t31) = t10.
      t29 = t30->get( p0 = t31 ).
      t28 = t29.
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t34) = CAST zlnt_runtime_map__4fdf767b61ba( t1 ).
      DATA(t35) = t10.
      t33 = t34->get( p0 = t35 ).
      t32 = t33.
      t27 = t28->concat( p0 = t32 ).
      t24 = t25->set( p0 = t26 p1 = t27 ).
    ENDLOOP.
    DATA t36 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t37) = CAST zlnt_runtime_map__4fdf767b61ba( t2 ).
    t36 = t37->keys(  ).
    DATA(t38) = VALUE string( ).
    LOOP AT t36->items INTO t38.
      DATA(t39) = VALUE abap_bool( ).
      DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t42) = CAST zlnt_runtime_map__4fdf767b61ba( t3 ).
      DATA(t43) = t38.
      t41 = t42->get( p0 = t43 ).
      t40 = t41.
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t45.
      t44 = t45.
      DATA(t46) = VALUE abap_bool( ).
      DATA(t47) = CAST zlnt_runtime_arra_c22708faf2e3( t40 ).
      IF t47 IS INITIAL.
        t46 = abap_true.
      ENDIF.
      t39 = t46.
      IF t39 = abap_true.
        DATA t48 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA(t49) = CAST zlnt_runtime_map__4fdf767b61ba( t3 ).
        DATA(t50) = t38.
        DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t51.
        t48 = t49->set( p0 = t50 p1 = t51 ).
      ENDIF.
      DATA t52 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA(t53) = CAST zlnt_runtime_map__4fdf767b61ba( t3 ).
      DATA(t54) = t38.
      DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t58) = CAST zlnt_runtime_map__4fdf767b61ba( t3 ).
      DATA(t59) = t38.
      t57 = t58->get( p0 = t59 ).
      t56 = t57.
      DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t62) = CAST zlnt_runtime_map__4fdf767b61ba( t2 ).
      DATA(t63) = t38.
      t61 = t62->get( p0 = t63 ).
      t60 = t61.
      t55 = t56->concat( p0 = t60 ).
      t52 = t53->set( p0 = t54 p1 = t55 ).
    ENDLOOP.
    DATA(t64) = CAST zlnt_runtime_map__4fdf767b61ba( t3 ).
    result = t64.

  ENDMETHOD.
  METHOD find_statement.
    DATA(t1) = CAST zcl_lnt_abstract_token( i_token ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zcl_lnt_abap_file.
    DATA(t5) = CAST zcl_lnt_abap_file( t2 ).
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = CAST zcl_lnt_abap_file( t4 ).
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    t3 = t8.
    IF t3 = abap_true.
      DATA t10 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t10.
      result = t10.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zcl_lnt_abap_file.
    DATA t13 TYPE REF TO zcl_lnt_abap_file.
    DATA(t14) = CAST zcl_lnt_abap_file( t2 ).
    t13 = t14.
    t12 = t13.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t16) = CAST zcl_lnt_abap_file( t12 ).
    t15 = t16->statements.
    t11 = t15.
    DATA t17 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t17.
    DATA t18 TYPE REF TO object.
    CLEAR t18.
    LOOP AT t11->items INTO t18.
      t17 ?= t18.
      DATA t19 TYPE abap_bool.
      DATA(t20) = CAST zcl_lnt_statement_node( t17 ).
      DATA(t21) = CAST zcl_lnt_abstract_token( t1 ).
      t19 = t20->includes_token( i_search_b3ca = t21 ).
      IF t19 = abap_true.
        DATA t22 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t22.
        DATA(t23) = abap_true.
        IF t23 = abap_true.
          DATA(t24) = CAST zcl_lnt_statement_node( t17 ).
          t22 = t24.
        ELSE.
          DATA t25 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t25.
          t22 = t25.
        ENDIF.
        result = t22.
        RETURN.
      ENDIF.
    ENDLOOP.
    DATA t26 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t26.
    result = t26.

  ENDMETHOD.
  METHOD delete_statement.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_statement ).
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    DATA t5 TYPE REF TO zcl_lnt_statement_node.
    DATA(t6) = CAST zcl_lnt_statement_node( t2 ).
    t5 = t6.
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t8) = CAST zcl_lnt_statement_node( t5 ).
    t7 = t8->colon.
    t4 = t7.
    t3 = t4.
    DATA(t9) = VALUE abap_bool( ).
    DATA t10 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t11) = CAST zcl_lnt_abstract_token( t3 ).
    t10 = t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    t12 = t13.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = CAST zcl_lnt_abstract_token( t10 ).
    IF t15 IS INITIAL.
      t14 = abap_true.
    ENDIF.
    t9 = t14.
    IF t9 = abap_true.
      DATA t16 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t16.
      DATA(t17) = CAST zcl_lnt_abap_file( t1 ).
      DATA t18 TYPE REF TO zcl_lnt_position.
      DATA t19 TYPE REF TO zcl_lnt_abstract_token.
      DATA t20 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t21) = CAST zcl_lnt_statement_node( t2 ).
      t20 = t21->get_first_token(  ).
      t19 = t20.
      DATA t22 TYPE REF TO zcl_lnt_position.
      DATA(t23) = CAST zcl_lnt_abstract_token( t19 ).
      t22 = t23->start.
      t18 = t22.
      DATA t24 TYPE REF TO zcl_lnt_position.
      CLEAR t24.
      DATA t25 TYPE REF TO zcl_lnt_abstract_token.
      DATA t26 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t27) = CAST zcl_lnt_statement_node( t2 ).
      t26 = t27->get_last_token(  ).
      t25 = t26.
      DATA t28 TYPE REF TO zcl_lnt_position.
      CLEAR t28.
      DATA t29 TYPE int8.
      DATA t30 TYPE REF TO zcl_lnt_position.
      DATA t31 TYPE REF TO zcl_lnt_position.
      DATA(t32) = CAST zcl_lnt_abstract_token( t25 ).
      t31 = t32->start.
      t30 = t31.
      DATA t33 TYPE int8.
      DATA(t34) = CAST zcl_lnt_position( t30 ).
      t33 = t34->row.
      t29 = t33.
      DATA t35 TYPE int8.
      DATA t36 TYPE int8.
      DATA t37 TYPE REF TO zcl_lnt_position.
      DATA t38 TYPE REF TO zcl_lnt_position.
      DATA(t39) = CAST zcl_lnt_abstract_token( t25 ).
      t38 = t39->start.
      t37 = t38.
      DATA t40 TYPE int8.
      DATA(t41) = CAST zcl_lnt_position( t37 ).
      t40 = t41->col.
      t36 = t40.
      DATA t42 TYPE int8.
      DATA t43 TYPE i.
      DATA t44 TYPE string.
      DATA(t45) = CAST zcl_lnt_abstract_token( t25 ).
      t44 = t45->str.
      DATA(t46) = strlen( t44 ).
      t43 = t46.
      t42 = t43.
      t35 = t36 + t42.
      IF t35 < range_int8_bound_min OR t35 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t28 = NEW zcl_lnt_position( i_row = t29 i_col = t35 ).
      t24 = t28.
      t16 = zcl_lnt_edit_helper=>delete_range( i_file = t17 i_start = t18 i_end = t24 ).
      result = t16.
      RETURN.
    ENDIF.
    DATA t47 TYPE abap_bool.
    DATA(t48) = abap_true.
    t47 = t48.
    DATA t49 TYPE abap_bool.
    DATA(t50) = abap_true.
    t49 = t50.
    DATA t51 TYPE REF TO zcl_lnt_statement_node.
    DATA t52 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t52.
    t51 = t52.
    DATA t53 TYPE REF TO zcl_lnt_statement_node.
    DATA t54 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t54.
    t53 = t54.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t56 TYPE REF TO zcl_lnt_abap_file.
    DATA(t57) = CAST zcl_lnt_abap_file( t1 ).
    t56 = t57.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t59) = CAST zcl_lnt_abap_file( t56 ).
    t58 = t59->statements.
    t55 = t58.
    DATA t60 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t60.
    DATA t61 TYPE REF TO object.
    CLEAR t61.
    LOOP AT t55->items INTO t61.
      t60 ?= t61.
      DATA t62 TYPE REF TO zcl_lnt_abstract_token.
      DATA t63 TYPE REF TO zcl_lnt_abstract_token.
      DATA t64 TYPE REF TO zcl_lnt_statement_node.
      DATA(t65) = CAST zcl_lnt_statement_node( t60 ).
      t64 = t65.
      DATA t66 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t67) = CAST zcl_lnt_statement_node( t64 ).
      t66 = t67->colon.
      t63 = t66.
      t62 = t63.
      DATA(t68) = VALUE abap_bool( ).
      DATA t69 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t70) = CAST zcl_lnt_abstract_token( t62 ).
      t69 = t70.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t72.
      t71 = t72.
      DATA(t73) = VALUE abap_bool( ).
      DATA(t74) = CAST zcl_lnt_abstract_token( t69 ).
      IF t74 IS INITIAL.
        t73 = abap_true.
      ENDIF.
      t68 = t73.
      IF t68 = abap_true.
        CONTINUE.
      ELSE.
        DATA t75 TYPE abap_bool.
        DATA(t76) = CAST zcl_lnt_statement_node( t60 ).
        DATA(t77) = CAST zcl_lnt_statement_node( t2 ).
        t75 = xsdbool( t76 = t77 ).
        IF t75 = abap_true.
          DATA(t78) = abap_false.
          t47 = t78.
          DATA(t79) = abap_true.
          t49 = t79.
          CONTINUE.
        ELSE.
          DATA t80 TYPE abap_bool.
          DATA(t81) = t47.
          DATA(t82) = abap_true.
          t80 = xsdbool( t81 = t82 ).
          IF t80 = abap_true.
            DATA t83 TYPE abap_bool.
            DATA t84 TYPE REF TO zcl_lnt_position.
            DATA t85 TYPE REF TO zcl_lnt_abstract_token.
            DATA t86 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t87) = CAST zcl_lnt_abstract_token( t3 ).
            t86 = t87.
            t85 = t86.
            DATA t88 TYPE REF TO zcl_lnt_position.
            DATA(t89) = CAST zcl_lnt_abstract_token( t85 ).
            t88 = t89->start.
            t84 = t88.
            DATA t90 TYPE REF TO zcl_lnt_position.
            DATA t91 TYPE REF TO zcl_lnt_abstract_token.
            DATA t92 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t93) = CAST zcl_lnt_abstract_token( t62 ).
            t92 = t93.
            t91 = t92.
            DATA t94 TYPE REF TO zcl_lnt_position.
            DATA(t95) = CAST zcl_lnt_abstract_token( t91 ).
            t94 = t95->start.
            t90 = t94.
            t83 = t84->equals( i_p = t90 ).
            IF t83 = abap_true.
              DATA t96 TYPE REF TO zcl_lnt_statement_node.
              CLEAR t96.
              DATA(t97) = abap_true.
              IF t97 = abap_true.
                DATA(t98) = CAST zcl_lnt_statement_node( t60 ).
                t96 = t98.
              ELSE.
                DATA t99 TYPE REF TO zcl_lnt_statement_node.
                CLEAR t99.
                t96 = t99.
              ENDIF.
              t51 = t96.
            ENDIF.
          ELSE.
            DATA t100 TYPE abap_bool.
            DATA(t101) = t49.
            DATA(t102) = abap_true.
            t100 = xsdbool( t101 = t102 ).
            IF t100 = abap_true.
              DATA t103 TYPE abap_bool.
              DATA t104 TYPE REF TO zcl_lnt_position.
              DATA t105 TYPE REF TO zcl_lnt_abstract_token.
              DATA t106 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t107) = CAST zcl_lnt_abstract_token( t3 ).
              t106 = t107.
              t105 = t106.
              DATA t108 TYPE REF TO zcl_lnt_position.
              DATA(t109) = CAST zcl_lnt_abstract_token( t105 ).
              t108 = t109->start.
              t104 = t108.
              DATA t110 TYPE REF TO zcl_lnt_position.
              DATA t111 TYPE REF TO zcl_lnt_abstract_token.
              DATA t112 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t113) = CAST zcl_lnt_abstract_token( t62 ).
              t112 = t113.
              t111 = t112.
              DATA t114 TYPE REF TO zcl_lnt_position.
              DATA(t115) = CAST zcl_lnt_abstract_token( t111 ).
              t114 = t115->start.
              t110 = t114.
              t103 = t104->equals( i_p = t110 ).
              IF t103 = abap_true.
                DATA t116 TYPE REF TO zcl_lnt_statement_node.
                CLEAR t116.
                DATA(t117) = abap_true.
                IF t117 = abap_true.
                  DATA(t118) = CAST zcl_lnt_statement_node( t60 ).
                  t116 = t118.
                ELSE.
                  DATA t119 TYPE REF TO zcl_lnt_statement_node.
                  CLEAR t119.
                  t116 = t119.
                ENDIF.
                t53 = t116.
              ENDIF.
              EXIT.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDLOOP.
    DATA(t120) = VALUE abap_bool( ).
    DATA(t121) = VALUE abap_bool( ).
    DATA t122 TYPE REF TO zcl_lnt_statement_node.
    DATA(t123) = CAST zcl_lnt_statement_node( t51 ).
    t122 = t123.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    t124 = t125.
    DATA(t126) = VALUE abap_bool( ).
    DATA(t127) = CAST zcl_lnt_statement_node( t122 ).
    IF t127 IS INITIAL.
      t126 = abap_true.
    ENDIF.
    t121 = t126.
    t120 = t121.
    IF t121 = abap_true.
      DATA(t128) = VALUE abap_bool( ).
      DATA t129 TYPE REF TO zcl_lnt_statement_node.
      DATA(t130) = CAST zcl_lnt_statement_node( t53 ).
      t129 = t130.
      DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t132.
      t131 = t132.
      DATA(t133) = VALUE abap_bool( ).
      DATA(t134) = CAST zcl_lnt_statement_node( t129 ).
      IF t134 IS INITIAL.
        t133 = abap_true.
      ENDIF.
      t128 = t133.
      t120 = t128.
    ENDIF.
    IF t120 = abap_true.
      DATA t135 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t135.
      DATA(t136) = CAST zcl_lnt_abap_file( t1 ).
      DATA t137 TYPE REF TO zcl_lnt_position.
      DATA t138 TYPE REF TO zcl_lnt_abstract_token.
      DATA t139 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t140) = CAST zcl_lnt_statement_node( t2 ).
      t139 = t140->get_first_token(  ).
      t138 = t139.
      DATA t141 TYPE REF TO zcl_lnt_position.
      DATA(t142) = CAST zcl_lnt_abstract_token( t138 ).
      t141 = t142->start.
      t137 = t141.
      DATA t143 TYPE REF TO zcl_lnt_position.
      CLEAR t143.
      DATA t144 TYPE REF TO zcl_lnt_abstract_token.
      DATA t145 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t146) = CAST zcl_lnt_statement_node( t2 ).
      t145 = t146->get_last_token(  ).
      t144 = t145.
      DATA t147 TYPE REF TO zcl_lnt_position.
      CLEAR t147.
      DATA t148 TYPE int8.
      DATA t149 TYPE REF TO zcl_lnt_position.
      DATA t150 TYPE REF TO zcl_lnt_position.
      DATA(t151) = CAST zcl_lnt_abstract_token( t144 ).
      t150 = t151->start.
      t149 = t150.
      DATA t152 TYPE int8.
      DATA(t153) = CAST zcl_lnt_position( t149 ).
      t152 = t153->row.
      t148 = t152.
      DATA t154 TYPE int8.
      DATA t155 TYPE int8.
      DATA t156 TYPE REF TO zcl_lnt_position.
      DATA t157 TYPE REF TO zcl_lnt_position.
      DATA(t158) = CAST zcl_lnt_abstract_token( t144 ).
      t157 = t158->start.
      t156 = t157.
      DATA t159 TYPE int8.
      DATA(t160) = CAST zcl_lnt_position( t156 ).
      t159 = t160->col.
      t155 = t159.
      DATA t161 TYPE int8.
      DATA t162 TYPE i.
      DATA t163 TYPE string.
      DATA(t164) = CAST zcl_lnt_abstract_token( t144 ).
      t163 = t164->str.
      DATA(t165) = strlen( t163 ).
      t162 = t165.
      t161 = t162.
      t154 = t155 + t161.
      IF t154 < range_int8_bound_min OR t154 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t147 = NEW zcl_lnt_position( i_row = t148 i_col = t154 ).
      t143 = t147.
      t135 = zcl_lnt_edit_helper=>delete_range( i_file = t136 i_start = t137 i_end = t143 ).
      result = t135.
      RETURN.
    ENDIF.
    DATA t166 TYPE REF TO zcl_lnt_position.
    DATA t167 TYPE REF TO zcl_lnt_position.
    DATA t168 TYPE REF TO zcl_lnt_abstract_token.
    DATA t169 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t170) = CAST zcl_lnt_statement_node( t2 ).
    t169 = t170->get_first_token(  ).
    t168 = t169.
    DATA t171 TYPE REF TO zcl_lnt_position.
    DATA(t172) = CAST zcl_lnt_abstract_token( t168 ).
    t171 = t172->start.
    t167 = t171.
    t166 = t167.
    DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t174) = CAST zcl_lnt_statement_node( t2 ).
    t173 = t174->get_tokens(  ).
    DATA t175 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t175.
    DATA t176 TYPE REF TO object.
    CLEAR t176.
    LOOP AT t173->items INTO t176.
      t175 ?= t176.
      DATA(t177) = VALUE abap_bool( ).
      DATA t178 TYPE REF TO zcl_lnt_position.
      DATA t179 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t180) = CAST zcl_lnt_abstract_token( t175 ).
      t179 = t180.
      DATA t181 TYPE REF TO zcl_lnt_position.
      DATA(t182) = CAST zcl_lnt_abstract_token( t179 ).
      t181 = t182->start.
      t178 = t181.
      DATA t183 TYPE REF TO zcl_lnt_position.
      CLEAR t183.
      DATA t184 TYPE REF TO zcl_lnt_abstract_token.
      DATA t185 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t186) = CAST zcl_lnt_abstract_token( t3 ).
      t185 = t186.
      t184 = t185.
      DATA t187 TYPE REF TO zcl_lnt_position.
      CLEAR t187.
      DATA t188 TYPE int8.
      DATA t189 TYPE REF TO zcl_lnt_position.
      DATA t190 TYPE REF TO zcl_lnt_position.
      DATA(t191) = CAST zcl_lnt_abstract_token( t184 ).
      t190 = t191->start.
      t189 = t190.
      DATA t192 TYPE int8.
      DATA(t193) = CAST zcl_lnt_position( t189 ).
      t192 = t193->row.
      t188 = t192.
      DATA t194 TYPE int8.
      DATA t195 TYPE int8.
      DATA t196 TYPE REF TO zcl_lnt_position.
      DATA t197 TYPE REF TO zcl_lnt_position.
      DATA(t198) = CAST zcl_lnt_abstract_token( t184 ).
      t197 = t198->start.
      t196 = t197.
      DATA t199 TYPE int8.
      DATA(t200) = CAST zcl_lnt_position( t196 ).
      t199 = t200->col.
      t195 = t199.
      DATA t201 TYPE int8.
      DATA t202 TYPE i.
      DATA t203 TYPE string.
      DATA(t204) = CAST zcl_lnt_abstract_token( t184 ).
      t203 = t204->str.
      DATA(t205) = strlen( t203 ).
      t202 = t205.
      t201 = t202.
      t194 = t195 + t201.
      IF t194 < range_int8_bound_min OR t194 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t187 = NEW zcl_lnt_position( i_row = t188 i_col = t194 ).
      t183 = t187.
      t177 = t178->is_after( i_p = t183 ).
      IF t177 = abap_true.
        DATA t206 TYPE REF TO zcl_lnt_position.
        DATA t207 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t208) = CAST zcl_lnt_abstract_token( t175 ).
        t207 = t208.
        DATA t209 TYPE REF TO zcl_lnt_position.
        DATA(t210) = CAST zcl_lnt_abstract_token( t207 ).
        t209 = t210->start.
        t206 = t209.
        t166 = t206.
        EXIT.
      ENDIF.
    ENDLOOP.
    DATA t211 TYPE REF TO zcl_lnt_abstract_token.
    DATA t212 TYPE REF TO zcl_lnt_abstract_token.
    DATA t213 TYPE REF TO zcl_lnt_statement_node.
    DATA(t214) = CAST zcl_lnt_statement_node( t2 ).
    t213 = t214.
    DATA t215 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t216) = CAST zcl_lnt_statement_node( t213 ).
    t215 = t216->colon.
    t212 = t215.
    t211 = t212.
    DATA t217 TYPE abap_bool.
    DATA t218 TYPE abap_bool.
    DATA t219 TYPE string.
    DATA t220 TYPE REF TO zcl_lnt_abstract_token.
    DATA t221 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t222) = CAST zcl_lnt_statement_node( t2 ).
    t221 = t222->get_last_token(  ).
    t220 = t221.
    DATA t223 TYPE string.
    DATA(t224) = CAST zcl_lnt_abstract_token( t220 ).
    t223 = t224->str.
    t219 = t223.
    DATA(t225) = |.|.
    t218 = xsdbool( t219 = t225 ).
    t217 = t218.
    IF t218 = abap_true.
      DATA t226 TYPE abap_bool.
      DATA(t227) = CAST zcl_lnt_statement_node( t51 ).
      t226 = xsdbool( t227 IS BOUND ).
      t217 = t226.
    ENDIF.
    IF t217 = abap_true.
      DATA t228 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t229 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA(t230) = CAST zcl_lnt_abap_file( t1 ).
      DATA t231 TYPE REF TO zcl_lnt_abstract_token.
      DATA t232 TYPE REF TO zcl_lnt_statement_node.
      DATA(t233) = CAST zcl_lnt_statement_node( t51 ).
      t232 = t233.
      t231 = t232->get_last_token(  ).
      DATA(t234) = |.|.
      t229 = zcl_lnt_edit_helper=>replace_token( i_file = t230 i_token = t231 i_text = t234 ).
      t228 = t229.
      DATA t235 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t235.
      DATA t236 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t236.
      DATA(t237) = CAST zcl_lnt_abap_file( t1 ).
      DATA t238 TYPE REF TO zcl_lnt_position.
      CLEAR t238.
      DATA t239 TYPE REF TO zcl_lnt_abstract_token.
      DATA t240 TYPE REF TO zcl_lnt_abstract_token.
      DATA t241 TYPE REF TO zcl_lnt_statement_node.
      DATA(t242) = CAST zcl_lnt_statement_node( t51 ).
      t241 = t242.
      t240 = t241->get_last_token(  ).
      t239 = t240.
      DATA t243 TYPE REF TO zcl_lnt_position.
      CLEAR t243.
      DATA t244 TYPE int8.
      DATA t245 TYPE REF TO zcl_lnt_position.
      DATA t246 TYPE REF TO zcl_lnt_position.
      DATA(t247) = CAST zcl_lnt_abstract_token( t239 ).
      t246 = t247->start.
      t245 = t246.
      DATA t248 TYPE int8.
      DATA(t249) = CAST zcl_lnt_position( t245 ).
      t248 = t249->row.
      t244 = t248.
      DATA t250 TYPE int8.
      DATA t251 TYPE int8.
      DATA t252 TYPE REF TO zcl_lnt_position.
      DATA t253 TYPE REF TO zcl_lnt_position.
      DATA(t254) = CAST zcl_lnt_abstract_token( t239 ).
      t253 = t254->start.
      t252 = t253.
      DATA t255 TYPE int8.
      DATA(t256) = CAST zcl_lnt_position( t252 ).
      t255 = t256->col.
      t251 = t255.
      DATA t257 TYPE int8.
      DATA t258 TYPE i.
      DATA t259 TYPE string.
      DATA(t260) = CAST zcl_lnt_abstract_token( t239 ).
      t259 = t260->str.
      DATA(t261) = strlen( t259 ).
      t258 = t261.
      t257 = t258.
      t250 = t251 + t257.
      IF t250 < range_int8_bound_min OR t250 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t243 = NEW zcl_lnt_position( i_row = t244 i_col = t250 ).
      t238 = t243.
      DATA t262 TYPE REF TO zcl_lnt_position.
      CLEAR t262.
      DATA t263 TYPE REF TO zcl_lnt_abstract_token.
      DATA t264 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t265) = CAST zcl_lnt_statement_node( t2 ).
      t264 = t265->get_last_token(  ).
      t263 = t264.
      DATA t266 TYPE REF TO zcl_lnt_position.
      CLEAR t266.
      DATA t267 TYPE int8.
      DATA t268 TYPE REF TO zcl_lnt_position.
      DATA t269 TYPE REF TO zcl_lnt_position.
      DATA(t270) = CAST zcl_lnt_abstract_token( t263 ).
      t269 = t270->start.
      t268 = t269.
      DATA t271 TYPE int8.
      DATA(t272) = CAST zcl_lnt_position( t268 ).
      t271 = t272->row.
      t267 = t271.
      DATA t273 TYPE int8.
      DATA t274 TYPE int8.
      DATA t275 TYPE REF TO zcl_lnt_position.
      DATA t276 TYPE REF TO zcl_lnt_position.
      DATA(t277) = CAST zcl_lnt_abstract_token( t263 ).
      t276 = t277->start.
      t275 = t276.
      DATA t278 TYPE int8.
      DATA(t279) = CAST zcl_lnt_position( t275 ).
      t278 = t279->col.
      t274 = t278.
      DATA t280 TYPE int8.
      DATA t281 TYPE i.
      DATA t282 TYPE string.
      DATA(t283) = CAST zcl_lnt_abstract_token( t263 ).
      t282 = t283->str.
      DATA(t284) = strlen( t282 ).
      t281 = t284.
      t280 = t281.
      t273 = t274 + t280.
      IF t273 < range_int8_bound_min OR t273 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t266 = NEW zcl_lnt_position( i_row = t267 i_col = t273 ).
      t262 = t266.
      t236 = zcl_lnt_edit_helper=>delete_range( i_file = t237 i_start = t238 i_end = t262 ).
      t235 = t236.
      DATA t285 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA(t286) = CAST zlnt_runtime_map__4fdf767b61ba( t228 ).
      DATA(t287) = CAST zlnt_runtime_map__4fdf767b61ba( t235 ).
      t285 = zcl_lnt_edit_helper=>merge( i_fix1 = t286 i_fix2 = t287 ).
      result = t285.
      RETURN.
    ELSE.
      DATA(t288) = VALUE abap_bool( ).
      DATA(t289) = VALUE abap_bool( ).
      DATA(t290) = VALUE abap_bool( ).
      DATA t291 TYPE REF TO zcl_lnt_statement_node.
      DATA(t292) = CAST zcl_lnt_statement_node( t51 ).
      t291 = t292.
      DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t294.
      t293 = t294.
      DATA(t295) = VALUE abap_bool( ).
      DATA(t296) = CAST zcl_lnt_statement_node( t291 ).
      IF t296 IS INITIAL.
        t295 = abap_true.
      ENDIF.
      t290 = t295.
      t289 = t290.
      IF t290 = abap_true.
        DATA t297 TYPE abap_bool.
        DATA(t298) = CAST zcl_lnt_abstract_token( t211 ).
        t297 = xsdbool( t298 IS BOUND ).
        t289 = t297.
      ENDIF.
      t288 = t289.
      IF t289 = abap_true.
        DATA t299 TYPE abap_bool.
        DATA(t300) = CAST zcl_lnt_statement_node( t53 ).
        t299 = xsdbool( t300 IS BOUND ).
        t288 = t299.
      ENDIF.
      IF t288 = abap_true.
        DATA t301 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA(t302) = CAST zcl_lnt_abap_file( t1 ).
        DATA t303 TYPE REF TO zcl_lnt_position.
        DATA(t304) = CAST zcl_lnt_statement_node( t2 ).
        t303 = zcl_lnt_edit_helper=>first_after_colon( i_statement = t304 ).
        DATA t305 TYPE REF TO zcl_lnt_position.
        DATA t306 TYPE REF TO zcl_lnt_statement_node.
        DATA(t307) = CAST zcl_lnt_statement_node( t53 ).
        t306 = t307.
        t305 = zcl_lnt_edit_helper=>first_after_colon( i_statement = t306 ).
        t301 = zcl_lnt_edit_helper=>delete_range( i_file = t302 i_start = t303 i_end = t305 ).
        result = t301.
        RETURN.
      ELSE.
        DATA t308 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA(t309) = CAST zcl_lnt_abap_file( t1 ).
        DATA(t310) = CAST zcl_lnt_position( t166 ).
        DATA t311 TYPE REF TO zcl_lnt_position.
        DATA t312 TYPE REF TO zcl_lnt_statement_node.
        DATA(t313) = CAST zcl_lnt_statement_node( t53 ).
        t312 = t313.
        t311 = zcl_lnt_edit_helper=>first_after_colon( i_statement = t312 ).
        t308 = zcl_lnt_edit_helper=>delete_range( i_file = t309 i_start = t310 i_end = t311 ).
        result = t308.
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.
  METHOD first_after_colon.
    DATA(t1) = CAST zcl_lnt_statement_node( i_statement ).
    DATA t2 TYPE REF TO zcl_lnt_position.
    DATA t3 TYPE REF TO zcl_lnt_position.
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    DATA t6 TYPE REF TO zcl_lnt_abstract_token.
    DATA t7 TYPE REF TO zcl_lnt_statement_node.
    DATA(t8) = CAST zcl_lnt_statement_node( t1 ).
    t7 = t8.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t10) = CAST zcl_lnt_statement_node( t7 ).
    t9 = t10->colon.
    t6 = t9.
    t5 = t6.
    t4 = t5.
    DATA t11 TYPE REF TO zcl_lnt_position.
    DATA(t12) = CAST zcl_lnt_abstract_token( t4 ).
    t11 = t12->start.
    t3 = t11.
    t2 = t3.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t14) = CAST zcl_lnt_statement_node( t1 ).
    t13 = t14->get_tokens(  ).
    DATA t15 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t15.
    DATA t16 TYPE REF TO object.
    CLEAR t16.
    LOOP AT t13->items INTO t16.
      t15 ?= t16.
      DATA t17 TYPE abap_bool.
      DATA t18 TYPE REF TO zcl_lnt_position.
      DATA t19 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t20) = CAST zcl_lnt_abstract_token( t15 ).
      t19 = t20.
      DATA t21 TYPE REF TO zcl_lnt_position.
      DATA(t22) = CAST zcl_lnt_abstract_token( t19 ).
      t21 = t22->start.
      t18 = t21.
      DATA(t23) = CAST zcl_lnt_position( t2 ).
      t17 = t18->is_after( i_p = t23 ).
      IF t17 = abap_true.
        DATA t24 TYPE REF TO zcl_lnt_position.
        DATA t25 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t26) = CAST zcl_lnt_abstract_token( t15 ).
        t25 = t26.
        DATA t27 TYPE REF TO zcl_lnt_position.
        DATA(t28) = CAST zcl_lnt_abstract_token( t25 ).
        t27 = t28->start.
        t24 = t27.
        result = t24.
        RETURN.
      ENDIF.
    ENDLOOP.
    DATA t29 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    CLEAR t29.
    DATA t30 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    DATA(t32) = abap_true.
    IF t32 = abap_true.
      DATA(t33) = |firstAfterColon, emtpy statement?|.
      DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t34->has = abap_true.
      t34->value = t33.
      t31 = t34.
    ELSE.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      t31 = t35.
    ENDIF.
    t30 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t31 ).
    t29 = NEW #( ).
    t29->payload = t30.
    RAISE EXCEPTION t29.
  ENDMETHOD.
  METHOD delete_token.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = CAST zif_lnt_file( i_file ).
    DATA(t2) = CAST zcl_lnt_abstract_token( i_token ).
    DATA t3 TYPE string.
    DATA t4 TYPE string.
    DATA(t5) = CAST zif_lnt_file( t1 ).
    t4 = t5->get_filename(  ).
    t3 = t4.
    DATA t6 TYPE REF TO zcl_lnt_irange.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_irange.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_position.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t10) = CAST zcl_lnt_abstract_token( t2 ).
    t9 = t10.
    DATA t11 TYPE REF TO zcl_lnt_position.
    DATA(t12) = CAST zcl_lnt_abstract_token( t9 ).
    t11 = t12->start.
    t8 = t11.
    DATA t13 TYPE REF TO zcl_lnt_position.
    CLEAR t13.
    DATA t14 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t15) = CAST zcl_lnt_abstract_token( t2 ).
    t14 = t15.
    DATA t16 TYPE REF TO zcl_lnt_position.
    CLEAR t16.
    DATA t17 TYPE int8.
    DATA t18 TYPE REF TO zcl_lnt_position.
    DATA t19 TYPE REF TO zcl_lnt_position.
    DATA(t20) = CAST zcl_lnt_abstract_token( t14 ).
    t19 = t20->start.
    t18 = t19.
    DATA t21 TYPE int8.
    DATA(t22) = CAST zcl_lnt_position( t18 ).
    t21 = t22->row.
    t17 = t21.
    DATA t23 TYPE int8.
    DATA t24 TYPE int8.
    DATA t25 TYPE REF TO zcl_lnt_position.
    DATA t26 TYPE REF TO zcl_lnt_position.
    DATA(t27) = CAST zcl_lnt_abstract_token( t14 ).
    t26 = t27->start.
    t25 = t26.
    DATA t28 TYPE int8.
    DATA(t29) = CAST zcl_lnt_position( t25 ).
    t28 = t29->col.
    t24 = t28.
    DATA t30 TYPE int8.
    DATA t31 TYPE i.
    DATA t32 TYPE string.
    DATA(t33) = CAST zcl_lnt_abstract_token( t14 ).
    t32 = t33->str.
    DATA(t34) = strlen( t32 ).
    t31 = t34.
    t30 = t31.
    t23 = t24 + t30.
    IF t23 < range_int8_bound_min OR t23 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    t16 = NEW zcl_lnt_position( i_row = t17 i_col = t23 ).
    t13 = t16.
    t7 = NEW zcl_lnt_irange( i_start = t8 i_end = t13 ).
    t6 = t7.
    DATA t35 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t36 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t37) = NEW zlnt_runtime_map__4fdf767b61ba(  ).
    t36 = t37.
    DATA t38 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t39) = CAST zlnt_runtime_map__4fdf767b61ba( t36 ).
    DATA(t40) = t3.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t43.
    t42 = t43.
    DATA(t44) = CAST zlnt_runtime_arra_c22708faf2e3( t42 ).
    DATA t45 TYPE REF TO zcl_lnt_itext_edit.
    DATA(t46) = CAST zcl_lnt_irange( t6 ).
    DATA(t47) = ||.
    t45 = NEW zcl_lnt_itext_edit( i_range = t46 i_new_text = t47 ).
    APPEND t45 TO t44->items.
    DATA(t48) = CAST zlnt_runtime_arra_c22708faf2e3( t42 ).
    t41 = t48.
    t38 = t39->set( p0 = t40 p1 = t41 ).
    DATA(t49) = CAST zlnt_runtime_map__4fdf767b61ba( t36 ).
    t35 = t49.
    result = t35.

  ENDMETHOD.
  METHOD delete_range.
    DATA(t1) = CAST zif_lnt_file( i_file ).
    DATA(t2) = CAST zcl_lnt_position( i_start ).
    DATA(t3) = CAST zcl_lnt_position( i_end ).
    DATA t4 TYPE string.
    DATA t5 TYPE string.
    DATA(t6) = CAST zif_lnt_file( t1 ).
    t5 = t6->get_filename(  ).
    t4 = t5.
    DATA t7 TYPE REF TO zcl_lnt_irange.
    DATA t8 TYPE REF TO zcl_lnt_irange.
    DATA(t9) = CAST zcl_lnt_position( t2 ).
    DATA(t10) = CAST zcl_lnt_position( t3 ).
    t8 = NEW zcl_lnt_irange( i_start = t9 i_end = t10 ).
    t7 = t8.
    DATA t11 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t12 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t13) = NEW zlnt_runtime_map__4fdf767b61ba(  ).
    t12 = t13.
    DATA t14 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t15) = CAST zlnt_runtime_map__4fdf767b61ba( t12 ).
    DATA(t16) = t4.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t19.
    t18 = t19.
    DATA(t20) = CAST zlnt_runtime_arra_c22708faf2e3( t18 ).
    DATA t21 TYPE REF TO zcl_lnt_itext_edit.
    DATA(t22) = CAST zcl_lnt_irange( t7 ).
    DATA(t23) = ||.
    t21 = NEW zcl_lnt_itext_edit( i_range = t22 i_new_text = t23 ).
    APPEND t21 TO t20->items.
    DATA(t24) = CAST zlnt_runtime_arra_c22708faf2e3( t18 ).
    t17 = t24.
    t14 = t15->set( p0 = t16 p1 = t17 ).
    DATA(t25) = CAST zlnt_runtime_map__4fdf767b61ba( t12 ).
    t11 = t25.
    result = t11.

  ENDMETHOD.
  METHOD insert_at.
    DATA(t1) = CAST zif_lnt_file( i_file ).
    DATA(t2) = CAST zcl_lnt_position( i_pos ).
    DATA(t3) = i_text.
    DATA t4 TYPE string.
    DATA t5 TYPE string.
    DATA(t6) = CAST zif_lnt_file( t1 ).
    t5 = t6->get_filename(  ).
    t4 = t5.
    DATA t7 TYPE REF TO zcl_lnt_irange.
    DATA t8 TYPE REF TO zcl_lnt_irange.
    DATA(t9) = CAST zcl_lnt_position( t2 ).
    DATA(t10) = CAST zcl_lnt_position( t2 ).
    t8 = NEW zcl_lnt_irange( i_start = t9 i_end = t10 ).
    t7 = t8.
    DATA t11 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t12 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t13) = NEW zlnt_runtime_map__4fdf767b61ba(  ).
    t12 = t13.
    DATA t14 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t15) = CAST zlnt_runtime_map__4fdf767b61ba( t12 ).
    DATA(t16) = t4.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t19.
    t18 = t19.
    DATA(t20) = CAST zlnt_runtime_arra_c22708faf2e3( t18 ).
    DATA t21 TYPE REF TO zcl_lnt_itext_edit.
    DATA(t22) = CAST zcl_lnt_irange( t7 ).
    DATA(t23) = t3.
    t21 = NEW zcl_lnt_itext_edit( i_range = t22 i_new_text = t23 ).
    APPEND t21 TO t20->items.
    DATA(t24) = CAST zlnt_runtime_arra_c22708faf2e3( t18 ).
    t17 = t24.
    t14 = t15->set( p0 = t16 p1 = t17 ).
    DATA(t25) = CAST zlnt_runtime_map__4fdf767b61ba( t12 ).
    t11 = t25.
    result = t11.

  ENDMETHOD.
  METHOD replace_token.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = CAST zif_lnt_file( i_file ).
    DATA(t2) = CAST zcl_lnt_abstract_token( i_token ).
    DATA(t3) = i_text.
    DATA t4 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t4.
    DATA(t5) = CAST zif_lnt_file( t1 ).
    DATA t6 TYPE REF TO zcl_lnt_position.
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t8) = CAST zcl_lnt_abstract_token( t2 ).
    t7 = t8.
    DATA t9 TYPE REF TO zcl_lnt_position.
    DATA(t10) = CAST zcl_lnt_abstract_token( t7 ).
    t9 = t10->start.
    t6 = t9.
    DATA t11 TYPE REF TO zcl_lnt_position.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t13) = CAST zcl_lnt_abstract_token( t2 ).
    t12 = t13.
    DATA t14 TYPE REF TO zcl_lnt_position.
    CLEAR t14.
    DATA t15 TYPE int8.
    DATA t16 TYPE REF TO zcl_lnt_position.
    DATA t17 TYPE REF TO zcl_lnt_position.
    DATA(t18) = CAST zcl_lnt_abstract_token( t12 ).
    t17 = t18->start.
    t16 = t17.
    DATA t19 TYPE int8.
    DATA(t20) = CAST zcl_lnt_position( t16 ).
    t19 = t20->row.
    t15 = t19.
    DATA t21 TYPE int8.
    DATA t22 TYPE int8.
    DATA t23 TYPE REF TO zcl_lnt_position.
    DATA t24 TYPE REF TO zcl_lnt_position.
    DATA(t25) = CAST zcl_lnt_abstract_token( t12 ).
    t24 = t25->start.
    t23 = t24.
    DATA t26 TYPE int8.
    DATA(t27) = CAST zcl_lnt_position( t23 ).
    t26 = t27->col.
    t22 = t26.
    DATA t28 TYPE int8.
    DATA t29 TYPE i.
    DATA t30 TYPE string.
    DATA(t31) = CAST zcl_lnt_abstract_token( t12 ).
    t30 = t31->str.
    DATA(t32) = strlen( t30 ).
    t29 = t32.
    t28 = t29.
    t21 = t22 + t28.
    IF t21 < range_int8_bound_min OR t21 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    t14 = NEW zcl_lnt_position( i_row = t15 i_col = t21 ).
    t11 = t14.
    DATA(t33) = t3.
    t4 = zcl_lnt_edit_helper=>replace_range( i_file = t5 i_start = t6 i_end = t11 i_text = t33 ).
    result = t4.

  ENDMETHOD.
  METHOD replace_range.
    DATA(t1) = CAST zif_lnt_file( i_file ).
    DATA(t2) = CAST zcl_lnt_position( i_start ).
    DATA(t3) = CAST zcl_lnt_position( i_end ).
    DATA(t4) = i_text.
    DATA t5 TYPE string.
    DATA t6 TYPE string.
    DATA(t7) = CAST zif_lnt_file( t1 ).
    t6 = t7->get_filename(  ).
    t5 = t6.
    DATA t8 TYPE REF TO zcl_lnt_irange.
    DATA t9 TYPE REF TO zcl_lnt_irange.
    DATA(t10) = CAST zcl_lnt_position( t2 ).
    DATA(t11) = CAST zcl_lnt_position( t3 ).
    t9 = NEW zcl_lnt_irange( i_start = t10 i_end = t11 ).
    t8 = t9.
    DATA t12 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t13 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t14) = NEW zlnt_runtime_map__4fdf767b61ba(  ).
    t13 = t14.
    DATA t15 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t16) = CAST zlnt_runtime_map__4fdf767b61ba( t13 ).
    DATA(t17) = t5.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t20.
    t19 = t20.
    DATA(t21) = CAST zlnt_runtime_arra_c22708faf2e3( t19 ).
    DATA t22 TYPE REF TO zcl_lnt_itext_edit.
    DATA(t23) = CAST zcl_lnt_irange( t8 ).
    DATA(t24) = t4.
    t22 = NEW zcl_lnt_itext_edit( i_range = t23 i_new_text = t24 ).
    APPEND t22 TO t21->items.
    DATA(t25) = CAST zlnt_runtime_arra_c22708faf2e3( t19 ).
    t18 = t25.
    t15 = t16->set( p0 = t17 p1 = t18 ).
    DATA(t26) = CAST zlnt_runtime_map__4fdf767b61ba( t13 ).
    t12 = t26.
    result = t12.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1057_6c3f2e767f11.
  ENDMETHOD.
ENDCLASS.
