* TS: src/edit_helper.ts:74:1 EditHelper
CLASS zcl_lnt_edit_helper DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
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
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_edit_helper IMPLEMENTATION.
  METHOD merge_list.
    DATA(t1) = i_fixes.
    DATA t2 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t3 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t4 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t5) = NEW zlnt_runtime_map__4fdf767b61ba( ).
    t4 = t5.
    DATA(t6) = t4.
    t3 = t6.
    t2 = t3.
    DATA(t7) = t1.
    DATA t8 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    DATA(t10) = VALUE i( ).
    DO.
      t7->load( ).
      IF t10 >= lines( t7->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t7->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t14) = t8.
      t13 = t14->keys( ).
      DATA(t15) = VALUE string( ).
      t13->dense( ).
      DATA(t16) = VALUE i( ).
      DO.
        t13->load( ).
        IF t16 >= lines( t13->items ).
          EXIT.
        ENDIF.
        CLEAR t15.
        READ TABLE t13->items INDEX t16 + 1 INTO t15.
        IF t13->has( t16 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t16 = t16 + 1.
        DATA(t17) = VALUE abap_bool( ).
        DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t20) = t2.
        DATA(t21) = t15.
        t19 = t20->get( p0 = t21 ).
        t18 = t19.
        DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t23.
        t22 = t23.
        DATA(t24) = VALUE abap_bool( ).
        DATA(t25) = t18.
        IF t25 IS INITIAL.
          t24 = abap_true.
        ENDIF.
        t17 = t24.
        IF t17 = abap_true.
          DATA t26 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA(t27) = t2.
          DATA(t28) = t15.
          DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t29.
          t26 = t27->set( p0 = t28 p1 = t29 ).
        ENDIF.
        DATA t30 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA(t31) = t2.
        DATA(t32) = t15.
        DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t36) = t2.
        DATA(t37) = t15.
        t35 = t36->get( p0 = t37 ).
        t34 = t35.
        DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t40) = t8.
        DATA(t41) = t15.
        t39 = t40->get( p0 = t41 ).
        t38 = t39.
        t33 = t34->concat( p0 = t38 ).
        t30 = t31->set( p0 = t32 p1 = t33 ).
      ENDDO.
    ENDDO.
    DATA(t42) = t2.
    result = t42.

  ENDMETHOD.

  METHOD merge.
    DATA(t1) = i_fix1.
    DATA(t2) = i_fix2.
    DATA t3 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t4 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t5 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t6) = NEW zlnt_runtime_map__4fdf767b61ba( ).
    t5 = t6.
    DATA(t7) = t5.
    t4 = t7.
    t3 = t4.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t9) = t1.
    t8 = t9->keys( ).
    DATA(t10) = VALUE string( ).
    t8->dense( ).
    DATA(t11) = VALUE i( ).
    DO.
      t8->load( ).
      IF t11 >= lines( t8->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t8->items INDEX t11 + 1 INTO t10.
      IF t8->has( t11 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t11 = t11 + 1.
      DATA(t12) = VALUE abap_bool( ).
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t15) = t3.
      DATA(t16) = t10.
      t14 = t15->get( p0 = t16 ).
      t13 = t14.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      t17 = t18.
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = t13.
      IF t20 IS INITIAL.
        t19 = abap_true.
      ENDIF.
      t12 = t19.
      IF t12 = abap_true.
        DATA t21 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA(t22) = t3.
        DATA(t23) = t10.
        DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t24.
        t21 = t22->set( p0 = t23 p1 = t24 ).
      ENDIF.
      DATA t25 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA(t26) = t3.
      DATA(t27) = t10.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t31) = t3.
      DATA(t32) = t10.
      t30 = t31->get( p0 = t32 ).
      t29 = t30.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t35) = t1.
      DATA(t36) = t10.
      t34 = t35->get( p0 = t36 ).
      t33 = t34.
      t28 = t29->concat( p0 = t33 ).
      t25 = t26->set( p0 = t27 p1 = t28 ).
    ENDDO.
    DATA t37 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t38) = t2.
    t37 = t38->keys( ).
    DATA(t39) = VALUE string( ).
    t37->dense( ).
    DATA(t40) = VALUE i( ).
    DO.
      t37->load( ).
      IF t40 >= lines( t37->items ).
        EXIT.
      ENDIF.
      CLEAR t39.
      READ TABLE t37->items INDEX t40 + 1 INTO t39.
      IF t37->has( t40 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t40 = t40 + 1.
      DATA(t41) = VALUE abap_bool( ).
      DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t44) = t3.
      DATA(t45) = t39.
      t43 = t44->get( p0 = t45 ).
      t42 = t43.
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t47.
      t46 = t47.
      DATA(t48) = VALUE abap_bool( ).
      DATA(t49) = t42.
      IF t49 IS INITIAL.
        t48 = abap_true.
      ENDIF.
      t41 = t48.
      IF t41 = abap_true.
        DATA t50 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA(t51) = t3.
        DATA(t52) = t39.
        DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t53.
        t50 = t51->set( p0 = t52 p1 = t53 ).
      ENDIF.
      DATA t54 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA(t55) = t3.
      DATA(t56) = t39.
      DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t60) = t3.
      DATA(t61) = t39.
      t59 = t60->get( p0 = t61 ).
      t58 = t59.
      DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t64) = t2.
      DATA(t65) = t39.
      t63 = t64->get( p0 = t65 ).
      t62 = t63.
      t57 = t58->concat( p0 = t62 ).
      t54 = t55->set( p0 = t56 p1 = t57 ).
    ENDDO.
    DATA(t66) = t3.
    result = t66.

  ENDMETHOD.

  METHOD find_statement.
    DATA(t1) = i_token.
    DATA(t2) = i_file.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zcl_lnt_abap_file.
    DATA(t5) = t2.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t4.
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
    DATA(t14) = t2.
    t13 = t14.
    t12 = t13.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t16) = t12.
    t15 = t16->statements.
    t11 = t15.
    DATA t17 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t17.
    DATA t18 TYPE REF TO object.
    CLEAR t18.
    DATA(t19) = VALUE i( ).
    DO.
      t11->load( ).
      IF t19 >= lines( t11->items ).
        EXIT.
      ENDIF.
      CLEAR t18.
      READ TABLE t11->items INDEX t19 + 1 INTO t18.
      t19 = t19 + 1.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t20.
      CLEAR t17.
      IF t18 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t20 ?= t18.
        DATA t21 TYPE REF TO object.
        t21 = t20->as_ref( ).
        t17 ?= t21.
      ELSE.
        t17 ?= t18.
      ENDIF.
      DATA t22 TYPE abap_bool.
      DATA(t23) = t17.
      DATA(t24) = t1.
      t22 = t23->includes_token( i_search_b3ca = t24 ).
      IF t22 = abap_true.
        DATA t25 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t25.
        DATA(t26) = abap_true.
        IF t26 = abap_true.
          DATA(t27) = t17.
          t25 = t27.
        ELSE.
          DATA t28 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t28.
          t25 = t28.
        ENDIF.
        result = t25.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t29 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t29.
    result = t29.

  ENDMETHOD.

  METHOD delete_statement.
    DATA(t1) = i_file.
    DATA(t2) = i_statement.
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t5.
    DATA(t6) = t2.
    t5 = t6.
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t7.
    DATA(t8) = t5.
    t7 = t8->colon.
    t4 = t7.
    t3 = t4.
    DATA(t9) = VALUE abap_bool( ).
    DATA t10 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t10.
    DATA(t11) = t3.
    t10 = t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    t12 = t13.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = t10.
    IF t15 IS INITIAL.
      t14 = abap_true.
    ENDIF.
    t9 = t14.
    IF t9 = abap_true.
      DATA t16 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t16.
      DATA(t17) = t1.
      DATA t18 TYPE REF TO zcl_lnt_position.
      CLEAR t18.
      DATA t19 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t19.
      DATA t20 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t20.
      DATA(t21) = t2.
      t20 = t21->get_first_token( ).
      t19 = t20.
      DATA t22 TYPE REF TO zcl_lnt_position.
      CLEAR t22.
      DATA(t23) = t19.
      t22 = t23->start.
      t18 = t22.
      DATA t24 TYPE REF TO zcl_lnt_position.
      CLEAR t24.
      DATA t25 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t25.
      DATA t26 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t26.
      DATA(t27) = t2.
      t26 = t27->get_last_token( ).
      t25 = t26.
      DATA t28 TYPE REF TO zcl_lnt_position.
      CLEAR t28.
      DATA(t29) = VALUE f( ).
      DATA t30 TYPE REF TO zcl_lnt_position.
      CLEAR t30.
      DATA t31 TYPE REF TO zcl_lnt_position.
      CLEAR t31.
      DATA(t32) = t25.
      t31 = t32->start.
      t30 = t31.
      DATA(t33) = VALUE f( ).
      DATA(t34) = t30.
      t33 = t34->row.
      t29 = t33.
      DATA t35 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t35.
      DATA t36 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t36.
      DATA t37 TYPE REF TO zcl_lnt_position.
      CLEAR t37.
      DATA t38 TYPE REF TO zcl_lnt_position.
      CLEAR t38.
      DATA(t39) = t25.
      t38 = t39->start.
      t37 = t38.
      DATA t40 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t40.
      DATA(t41) = t37.
      t40 = t41->col.
      t36 = t40.
      DATA(t42) = VALUE f( ).
      DATA(t43) = VALUE i( ).
      DATA(t44) = VALUE string( ).
      DATA(t45) = t25.
      t44 = t45->str.
      DATA(t46) = strlen( t44 ).
      t43 = t46.
      t42 = t43.
      DATA(t47) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t47->has = abap_true.
      t47->value = t42.
      t35 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t36 right = t47 op = `+` ).
      t28 = NEW zcl_lnt_position( i_row = t29 i_col = t35 ).
      t24 = t28.
      t16 = zcl_lnt_edit_helper=>delete_range( i_file = t17 i_start = t18 i_end = t24 ).
      result = t16.
      RETURN.
    ENDIF.
    DATA(t48) = VALUE abap_bool( ).
    DATA(t49) = abap_true.
    t48 = t49.
    DATA(t50) = VALUE abap_bool( ).
    DATA(t51) = abap_true.
    t50 = t51.
    DATA t52 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t52.
    DATA t53 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t53.
    t52 = t53.
    DATA t54 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t54.
    DATA t55 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t55.
    t54 = t55.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t56.
    DATA t57 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t57.
    DATA(t58) = t1.
    t57 = t58.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t59.
    DATA(t60) = t57.
    t59 = t60->statements.
    t56 = t59.
    DATA t61 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t61.
    DATA t62 TYPE REF TO object.
    CLEAR t62.
    DATA(t63) = VALUE i( ).
    DO.
      t56->load( ).
      IF t63 >= lines( t56->items ).
        EXIT.
      ENDIF.
      CLEAR t62.
      READ TABLE t56->items INDEX t63 + 1 INTO t62.
      t63 = t63 + 1.
      DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t64.
      CLEAR t61.
      IF t62 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t64 ?= t62.
        DATA t65 TYPE REF TO object.
        CLEAR t65.
        t65 = t64->as_ref( ).
        t61 ?= t65.
      ELSE.
        t61 ?= t62.
      ENDIF.
      DATA t66 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t66.
      DATA t67 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t67.
      DATA t68 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t68.
      DATA(t69) = t61.
      t68 = t69.
      DATA t70 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t70.
      DATA(t71) = t68.
      t70 = t71->colon.
      t67 = t70.
      t66 = t67.
      DATA(t72) = VALUE abap_bool( ).
      DATA t73 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t73.
      DATA(t74) = t66.
      t73 = t74.
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t75.
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t76.
      t75 = t76.
      DATA(t77) = VALUE abap_bool( ).
      DATA(t78) = t73.
      IF t78 IS INITIAL.
        t77 = abap_true.
      ENDIF.
      t72 = t77.
      IF t72 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t79) = VALUE abap_bool( ).
        DATA(t80) = t61.
        DATA(t81) = t2.
        DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t82.
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t83.
        CLEAR t82.
        IF t80 IS BOUND.
          DATA t84 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t84.
          DATA t85 TYPE REF TO object.
          CLEAR t85.
          CLEAR t84.
          t85 = t80.
          TRY.
              t82 ?= t85.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t82 IS NOT BOUND.
            TRY.
                t84 ?= t80.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t84 IS BOUND.
              t82 = t84->source( ).
            ENDIF.
            IF t82 IS NOT BOUND.
              CREATE OBJECT t82.
              t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t82->oval = t80.
            ENDIF.
          ENDIF.
        ENDIF.
        CLEAR t83.
        IF t81 IS BOUND.
          DATA t86 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t86.
          DATA t87 TYPE REF TO object.
          CLEAR t87.
          CLEAR t86.
          t87 = t81.
          TRY.
              t83 ?= t87.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t83 IS NOT BOUND.
            TRY.
                t86 ?= t81.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t86 IS BOUND.
              t83 = t86->source( ).
            ENDIF.
            IF t83 IS NOT BOUND.
              CREATE OBJECT t83.
              t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t83->oval = t81.
            ENDIF.
          ENDIF.
        ENDIF.
        IF t82 IS BOUND.
          t79 = t82->strict_equals( t83 ).
        ELSE.
          t79 = xsdbool( t83 IS NOT BOUND ).
        ENDIF.
        IF t79 = abap_true.
          DATA(t88) = abap_false.
          t48 = t88.
          DATA(t89) = abap_true.
          t50 = t89.
          CONTINUE.
        ELSE.
          DATA(t90) = VALUE abap_bool( ).
          DATA(t91) = t48.
          DATA(t92) = abap_true.
          t90 = xsdbool( t91 = t92 ).
          IF t90 = abap_true.
            DATA(t93) = VALUE abap_bool( ).
            DATA t94 TYPE REF TO zcl_lnt_position.
            CLEAR t94.
            DATA t95 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t95.
            DATA t96 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t96.
            DATA(t97) = t3.
            t96 = t97.
            t95 = t96.
            DATA t98 TYPE REF TO zcl_lnt_position.
            CLEAR t98.
            DATA(t99) = t95.
            t98 = t99->start.
            t94 = t98.
            DATA t100 TYPE REF TO zcl_lnt_position.
            CLEAR t100.
            DATA t101 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t101.
            DATA t102 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t102.
            DATA(t103) = t66.
            t102 = t103.
            t101 = t102.
            DATA t104 TYPE REF TO zcl_lnt_position.
            CLEAR t104.
            DATA(t105) = t101.
            t104 = t105->start.
            t100 = t104.
            t93 = t94->equals( i_p = t100 ).
            IF t93 = abap_true.
              DATA t106 TYPE REF TO zcl_lnt_statement_node.
              CLEAR t106.
              DATA(t107) = abap_true.
              IF t107 = abap_true.
                DATA(t108) = t61.
                t106 = t108.
              ELSE.
                DATA t109 TYPE REF TO zcl_lnt_statement_node.
                CLEAR t109.
                t106 = t109.
              ENDIF.
              t52 = t106.
            ENDIF.
          ELSE.
            DATA(t110) = VALUE abap_bool( ).
            DATA(t111) = t50.
            DATA(t112) = abap_true.
            t110 = xsdbool( t111 = t112 ).
            IF t110 = abap_true.
              DATA(t113) = VALUE abap_bool( ).
              DATA t114 TYPE REF TO zcl_lnt_position.
              CLEAR t114.
              DATA t115 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t115.
              DATA t116 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t116.
              DATA(t117) = t3.
              t116 = t117.
              t115 = t116.
              DATA t118 TYPE REF TO zcl_lnt_position.
              CLEAR t118.
              DATA(t119) = t115.
              t118 = t119->start.
              t114 = t118.
              DATA t120 TYPE REF TO zcl_lnt_position.
              CLEAR t120.
              DATA t121 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t121.
              DATA t122 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t122.
              DATA(t123) = t66.
              t122 = t123.
              t121 = t122.
              DATA t124 TYPE REF TO zcl_lnt_position.
              CLEAR t124.
              DATA(t125) = t121.
              t124 = t125->start.
              t120 = t124.
              t113 = t114->equals( i_p = t120 ).
              IF t113 = abap_true.
                DATA t126 TYPE REF TO zcl_lnt_statement_node.
                CLEAR t126.
                DATA(t127) = abap_true.
                IF t127 = abap_true.
                  DATA(t128) = t61.
                  t126 = t128.
                ELSE.
                  DATA t129 TYPE REF TO zcl_lnt_statement_node.
                  CLEAR t129.
                  t126 = t129.
                ENDIF.
                t54 = t126.
              ENDIF.
              EXIT.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t130) = VALUE abap_bool( ).
    DATA(t131) = VALUE abap_bool( ).
    DATA t132 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t132.
    DATA(t133) = t52.
    t132 = t133.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t134.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t135.
    t134 = t135.
    DATA(t136) = VALUE abap_bool( ).
    DATA(t137) = t132.
    IF t137 IS INITIAL.
      t136 = abap_true.
    ENDIF.
    t131 = t136.
    t130 = t131.
    IF t131 = abap_true.
      DATA(t138) = VALUE abap_bool( ).
      DATA t139 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t139.
      DATA(t140) = t54.
      t139 = t140.
      DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t141.
      DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t142.
      t141 = t142.
      DATA(t143) = VALUE abap_bool( ).
      DATA(t144) = t139.
      IF t144 IS INITIAL.
        t143 = abap_true.
      ENDIF.
      t138 = t143.
      t130 = t138.
    ENDIF.
    IF t130 = abap_true.
      DATA t145 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t145.
      DATA(t146) = t1.
      DATA t147 TYPE REF TO zcl_lnt_position.
      CLEAR t147.
      DATA t148 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t148.
      DATA t149 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t149.
      DATA(t150) = t2.
      t149 = t150->get_first_token( ).
      t148 = t149.
      DATA t151 TYPE REF TO zcl_lnt_position.
      CLEAR t151.
      DATA(t152) = t148.
      t151 = t152->start.
      t147 = t151.
      DATA t153 TYPE REF TO zcl_lnt_position.
      CLEAR t153.
      DATA t154 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t154.
      DATA t155 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t155.
      DATA(t156) = t2.
      t155 = t156->get_last_token( ).
      t154 = t155.
      DATA t157 TYPE REF TO zcl_lnt_position.
      CLEAR t157.
      DATA(t158) = VALUE f( ).
      DATA t159 TYPE REF TO zcl_lnt_position.
      CLEAR t159.
      DATA t160 TYPE REF TO zcl_lnt_position.
      CLEAR t160.
      DATA(t161) = t154.
      t160 = t161->start.
      t159 = t160.
      DATA(t162) = VALUE f( ).
      DATA(t163) = t159.
      t162 = t163->row.
      t158 = t162.
      DATA t164 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t164.
      DATA t165 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t165.
      DATA t166 TYPE REF TO zcl_lnt_position.
      CLEAR t166.
      DATA t167 TYPE REF TO zcl_lnt_position.
      CLEAR t167.
      DATA(t168) = t154.
      t167 = t168->start.
      t166 = t167.
      DATA t169 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t169.
      DATA(t170) = t166.
      t169 = t170->col.
      t165 = t169.
      DATA(t171) = VALUE f( ).
      DATA(t172) = VALUE i( ).
      DATA(t173) = VALUE string( ).
      DATA(t174) = t154.
      t173 = t174->str.
      DATA(t175) = strlen( t173 ).
      t172 = t175.
      t171 = t172.
      DATA(t176) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t176->has = abap_true.
      t176->value = t171.
      t164 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t165 right = t176 op = `+` ).
      t157 = NEW zcl_lnt_position( i_row = t158 i_col = t164 ).
      t153 = t157.
      t145 = zcl_lnt_edit_helper=>delete_range( i_file = t146 i_start = t147 i_end = t153 ).
      result = t145.
      RETURN.
    ENDIF.
    DATA t177 TYPE REF TO zcl_lnt_position.
    CLEAR t177.
    DATA t178 TYPE REF TO zcl_lnt_position.
    CLEAR t178.
    DATA t179 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t179.
    DATA t180 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t180.
    DATA(t181) = t2.
    t180 = t181->get_first_token( ).
    t179 = t180.
    DATA t182 TYPE REF TO zcl_lnt_position.
    CLEAR t182.
    DATA(t183) = t179.
    t182 = t183->start.
    t178 = t182.
    t177 = t178.
    DATA t184 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t184.
    DATA(t185) = t2.
    t184 = t185->get_tokens( ).
    DATA t186 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t186.
    DATA t187 TYPE REF TO object.
    CLEAR t187.
    DATA(t188) = VALUE i( ).
    DO.
      t184->load( ).
      IF t188 >= lines( t184->items ).
        EXIT.
      ENDIF.
      CLEAR t187.
      READ TABLE t184->items INDEX t188 + 1 INTO t187.
      t188 = t188 + 1.
      DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t189.
      CLEAR t186.
      IF t187 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t189 ?= t187.
        DATA t190 TYPE REF TO object.
        CLEAR t190.
        t190 = t189->as_ref( ).
        t186 ?= t190.
      ELSE.
        t186 ?= t187.
      ENDIF.
      DATA(t191) = VALUE abap_bool( ).
      DATA t192 TYPE REF TO zcl_lnt_position.
      CLEAR t192.
      DATA t193 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t193.
      DATA(t194) = t186.
      t193 = t194.
      DATA t195 TYPE REF TO zcl_lnt_position.
      CLEAR t195.
      DATA(t196) = t193.
      t195 = t196->start.
      t192 = t195.
      DATA t197 TYPE REF TO zcl_lnt_position.
      CLEAR t197.
      DATA t198 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t198.
      DATA t199 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t199.
      DATA(t200) = t3.
      t199 = t200.
      t198 = t199.
      DATA t201 TYPE REF TO zcl_lnt_position.
      CLEAR t201.
      DATA(t202) = VALUE f( ).
      DATA t203 TYPE REF TO zcl_lnt_position.
      CLEAR t203.
      DATA t204 TYPE REF TO zcl_lnt_position.
      CLEAR t204.
      DATA(t205) = t198.
      t204 = t205->start.
      t203 = t204.
      DATA(t206) = VALUE f( ).
      DATA(t207) = t203.
      t206 = t207->row.
      t202 = t206.
      DATA t208 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t208.
      DATA t209 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t209.
      DATA t210 TYPE REF TO zcl_lnt_position.
      CLEAR t210.
      DATA t211 TYPE REF TO zcl_lnt_position.
      CLEAR t211.
      DATA(t212) = t198.
      t211 = t212->start.
      t210 = t211.
      DATA t213 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t213.
      DATA(t214) = t210.
      t213 = t214->col.
      t209 = t213.
      DATA(t215) = VALUE f( ).
      DATA(t216) = VALUE i( ).
      DATA(t217) = VALUE string( ).
      DATA(t218) = t198.
      t217 = t218->str.
      DATA(t219) = strlen( t217 ).
      t216 = t219.
      t215 = t216.
      DATA(t220) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t220->has = abap_true.
      t220->value = t215.
      t208 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t209 right = t220 op = `+` ).
      t201 = NEW zcl_lnt_position( i_row = t202 i_col = t208 ).
      t197 = t201.
      t191 = t192->is_after( i_p = t197 ).
      IF t191 = abap_true.
        DATA t221 TYPE REF TO zcl_lnt_position.
        CLEAR t221.
        DATA t222 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t222.
        DATA(t223) = t186.
        t222 = t223.
        DATA t224 TYPE REF TO zcl_lnt_position.
        CLEAR t224.
        DATA(t225) = t222.
        t224 = t225->start.
        t221 = t224.
        t177 = t221.
        EXIT.
      ENDIF.
    ENDDO.
    DATA t226 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t226.
    DATA t227 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t227.
    DATA t228 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t228.
    DATA(t229) = t2.
    t228 = t229.
    DATA t230 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t230.
    DATA(t231) = t228.
    t230 = t231->colon.
    t227 = t230.
    t226 = t227.
    DATA(t232) = VALUE abap_bool( ).
    DATA(t233) = VALUE abap_bool( ).
    DATA(t234) = VALUE string( ).
    DATA t235 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t235.
    DATA t236 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t236.
    DATA(t237) = t2.
    t236 = t237->get_last_token( ).
    t235 = t236.
    DATA(t238) = VALUE string( ).
    DATA(t239) = t235.
    t238 = t239->str.
    t234 = t238.
    DATA(t240) = |.|.
    t233 = xsdbool( t234 = t240 ).
    t232 = t233.
    IF t233 = abap_true.
      DATA(t241) = VALUE abap_bool( ).
      DATA(t242) = t52.
      t241 = xsdbool( t242 IS BOUND ).
      t232 = t241.
    ENDIF.
    IF t232 = abap_true.
      DATA t243 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t243.
      DATA t244 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t244.
      DATA(t245) = t1.
      DATA t246 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t246.
      DATA t247 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t247.
      DATA(t248) = t52.
      t247 = t248.
      t246 = t247->get_last_token( ).
      DATA(t249) = |.|.
      t244 = zcl_lnt_edit_helper=>replace_token( i_file = t245 i_token = t246 i_text = t249 ).
      t243 = t244.
      DATA t250 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t250.
      DATA t251 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t251.
      DATA(t252) = t1.
      DATA t253 TYPE REF TO zcl_lnt_position.
      CLEAR t253.
      DATA t254 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t254.
      DATA t255 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t255.
      DATA t256 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t256.
      DATA(t257) = t52.
      t256 = t257.
      t255 = t256->get_last_token( ).
      t254 = t255.
      DATA t258 TYPE REF TO zcl_lnt_position.
      CLEAR t258.
      DATA(t259) = VALUE f( ).
      DATA t260 TYPE REF TO zcl_lnt_position.
      CLEAR t260.
      DATA t261 TYPE REF TO zcl_lnt_position.
      CLEAR t261.
      DATA(t262) = t254.
      t261 = t262->start.
      t260 = t261.
      DATA(t263) = VALUE f( ).
      DATA(t264) = t260.
      t263 = t264->row.
      t259 = t263.
      DATA t265 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t265.
      DATA t266 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t266.
      DATA t267 TYPE REF TO zcl_lnt_position.
      CLEAR t267.
      DATA t268 TYPE REF TO zcl_lnt_position.
      CLEAR t268.
      DATA(t269) = t254.
      t268 = t269->start.
      t267 = t268.
      DATA t270 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t270.
      DATA(t271) = t267.
      t270 = t271->col.
      t266 = t270.
      DATA(t272) = VALUE f( ).
      DATA(t273) = VALUE i( ).
      DATA(t274) = VALUE string( ).
      DATA(t275) = t254.
      t274 = t275->str.
      DATA(t276) = strlen( t274 ).
      t273 = t276.
      t272 = t273.
      DATA(t277) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t277->has = abap_true.
      t277->value = t272.
      t265 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t266 right = t277 op = `+` ).
      t258 = NEW zcl_lnt_position( i_row = t259 i_col = t265 ).
      t253 = t258.
      DATA t278 TYPE REF TO zcl_lnt_position.
      CLEAR t278.
      DATA t279 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t279.
      DATA t280 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t280.
      DATA(t281) = t2.
      t280 = t281->get_last_token( ).
      t279 = t280.
      DATA t282 TYPE REF TO zcl_lnt_position.
      CLEAR t282.
      DATA(t283) = VALUE f( ).
      DATA t284 TYPE REF TO zcl_lnt_position.
      CLEAR t284.
      DATA t285 TYPE REF TO zcl_lnt_position.
      CLEAR t285.
      DATA(t286) = t279.
      t285 = t286->start.
      t284 = t285.
      DATA(t287) = VALUE f( ).
      DATA(t288) = t284.
      t287 = t288->row.
      t283 = t287.
      DATA t289 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t289.
      DATA t290 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t290.
      DATA t291 TYPE REF TO zcl_lnt_position.
      CLEAR t291.
      DATA t292 TYPE REF TO zcl_lnt_position.
      CLEAR t292.
      DATA(t293) = t279.
      t292 = t293->start.
      t291 = t292.
      DATA t294 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t294.
      DATA(t295) = t291.
      t294 = t295->col.
      t290 = t294.
      DATA(t296) = VALUE f( ).
      DATA(t297) = VALUE i( ).
      DATA(t298) = VALUE string( ).
      DATA(t299) = t279.
      t298 = t299->str.
      DATA(t300) = strlen( t298 ).
      t297 = t300.
      t296 = t297.
      DATA(t301) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t301->has = abap_true.
      t301->value = t296.
      t289 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t290 right = t301 op = `+` ).
      t282 = NEW zcl_lnt_position( i_row = t283 i_col = t289 ).
      t278 = t282.
      t251 = zcl_lnt_edit_helper=>delete_range( i_file = t252 i_start = t253 i_end = t278 ).
      t250 = t251.
      DATA t302 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t302.
      DATA(t303) = t243.
      DATA(t304) = t250.
      t302 = zcl_lnt_edit_helper=>merge( i_fix1 = t303 i_fix2 = t304 ).
      result = t302.
      RETURN.
    ELSE.
      DATA(t305) = VALUE abap_bool( ).
      DATA(t306) = VALUE abap_bool( ).
      DATA(t307) = VALUE abap_bool( ).
      DATA t308 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t308.
      DATA(t309) = t52.
      t308 = t309.
      DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t310.
      DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t311.
      t310 = t311.
      DATA(t312) = VALUE abap_bool( ).
      DATA(t313) = t308.
      IF t313 IS INITIAL.
        t312 = abap_true.
      ENDIF.
      t307 = t312.
      t306 = t307.
      IF t307 = abap_true.
        DATA(t314) = VALUE abap_bool( ).
        DATA(t315) = t226.
        t314 = xsdbool( t315 IS BOUND ).
        t306 = t314.
      ENDIF.
      t305 = t306.
      IF t306 = abap_true.
        DATA(t316) = VALUE abap_bool( ).
        DATA(t317) = t54.
        t316 = xsdbool( t317 IS BOUND ).
        t305 = t316.
      ENDIF.
      IF t305 = abap_true.
        DATA t318 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t318.
        DATA(t319) = t1.
        DATA t320 TYPE REF TO zcl_lnt_position.
        CLEAR t320.
        DATA(t321) = t2.
        t320 = zcl_lnt_edit_helper=>first_after_colon( i_statement = t321 ).
        DATA t322 TYPE REF TO zcl_lnt_position.
        CLEAR t322.
        DATA t323 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t323.
        DATA(t324) = t54.
        t323 = t324.
        t322 = zcl_lnt_edit_helper=>first_after_colon( i_statement = t323 ).
        t318 = zcl_lnt_edit_helper=>delete_range( i_file = t319 i_start = t320 i_end = t322 ).
        result = t318.
        RETURN.
      ELSE.
        DATA t325 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t325.
        DATA(t326) = t1.
        DATA(t327) = t177.
        DATA t328 TYPE REF TO zcl_lnt_position.
        CLEAR t328.
        DATA t329 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t329.
        DATA(t330) = t54.
        t329 = t330.
        t328 = zcl_lnt_edit_helper=>first_after_colon( i_statement = t329 ).
        t325 = zcl_lnt_edit_helper=>delete_range( i_file = t326 i_start = t327 i_end = t328 ).
        result = t325.
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD first_after_colon.
    DATA(t1) = i_statement.
    DATA t2 TYPE REF TO zcl_lnt_position.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_position.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t7.
    DATA(t8) = t1.
    t7 = t8.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t9.
    DATA(t10) = t7.
    t9 = t10->colon.
    t6 = t9.
    t5 = t6.
    t4 = t5.
    DATA t11 TYPE REF TO zcl_lnt_position.
    CLEAR t11.
    DATA(t12) = t4.
    t11 = t12->start.
    t3 = t11.
    t2 = t3.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t13.
    DATA(t14) = t1.
    t13 = t14->get_tokens( ).
    DATA t15 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t15.
    DATA t16 TYPE REF TO object.
    CLEAR t16.
    DATA(t17) = VALUE i( ).
    DO.
      t13->load( ).
      IF t17 >= lines( t13->items ).
        EXIT.
      ENDIF.
      CLEAR t16.
      READ TABLE t13->items INDEX t17 + 1 INTO t16.
      t17 = t17 + 1.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      CLEAR t15.
      IF t16 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t18 ?= t16.
        DATA t19 TYPE REF TO object.
        CLEAR t19.
        t19 = t18->as_ref( ).
        t15 ?= t19.
      ELSE.
        t15 ?= t16.
      ENDIF.
      DATA(t20) = VALUE abap_bool( ).
      DATA t21 TYPE REF TO zcl_lnt_position.
      CLEAR t21.
      DATA t22 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t22.
      DATA(t23) = t15.
      t22 = t23.
      DATA t24 TYPE REF TO zcl_lnt_position.
      CLEAR t24.
      DATA(t25) = t22.
      t24 = t25->start.
      t21 = t24.
      DATA(t26) = t2.
      t20 = t21->is_after( i_p = t26 ).
      IF t20 = abap_true.
        DATA t27 TYPE REF TO zcl_lnt_position.
        CLEAR t27.
        DATA t28 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t28.
        DATA(t29) = t15.
        t28 = t29.
        DATA t30 TYPE REF TO zcl_lnt_position.
        CLEAR t30.
        DATA(t31) = t28.
        t30 = t31->start.
        t27 = t30.
        result = t27.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t32 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    CLEAR t32.
    DATA t33 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t34.
    DATA(t35) = abap_true.
    IF t35 = abap_true.
      DATA(t36) = |firstAfterColon, emtpy statement?|.
      DATA(t37) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t37->has = abap_true.
      t37->value = t36.
      t34 = t37.
    ELSE.
      DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t38.
      t34 = t38.
    ENDIF.
    t33 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t34 ).
    t32 = NEW #( ).
    t32->payload = t33.
    CLEAR t32->source_value.
    IF t33 IS BOUND.
      DATA t39 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t39.
      DATA t40 TYPE REF TO object.
      CLEAR t40.
      CLEAR t39.
      t40 = t33.
      TRY.
          t32->source_value ?= t40.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t32->source_value IS NOT BOUND.
        TRY.
            t39 ?= t33.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t39 IS BOUND.
          t32->source_value = t39->source( ).
        ENDIF.
        IF t32->source_value IS NOT BOUND.
          CREATE OBJECT t32->source_value.
          t32->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t32->source_value->oval = t33.
        ENDIF.
      ENDIF.
    ENDIF.
    RAISE EXCEPTION t32.
  ENDMETHOD.

  METHOD delete_token.
    DATA(t1) = i_file.
    DATA(t2) = i_token.
    DATA t3 TYPE string.
    DATA t4 TYPE string.
    DATA(t5) = t1.
    t4 = t5->get_filename( ).
    t3 = t4.
    DATA t6 TYPE REF TO zcl_lnt_irange.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_irange.
    DATA t8 TYPE REF TO zcl_lnt_position.
    DATA t9 TYPE REF TO zcl_lnt_position.
    DATA t10 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t11) = t2.
    t10 = t11.
    DATA t12 TYPE REF TO zcl_lnt_position.
    DATA(t13) = t10.
    t12 = t13->start.
    t9 = t12.
    t8 = t9.
    DATA t14 TYPE REF TO zcl_lnt_position.
    DATA t15 TYPE REF TO zcl_lnt_position.
    DATA t16 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t17) = t2.
    t16 = t17.
    DATA t18 TYPE REF TO zcl_lnt_position.
    DATA t19 TYPE f.
    DATA t20 TYPE REF TO zcl_lnt_position.
    DATA t21 TYPE REF TO zcl_lnt_position.
    DATA(t22) = t16.
    t21 = t22->start.
    t20 = t21.
    DATA t23 TYPE f.
    DATA(t24) = t20.
    t23 = t24->row.
    t19 = t23.
    DATA t25 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t26 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t27 TYPE REF TO zcl_lnt_position.
    DATA t28 TYPE REF TO zcl_lnt_position.
    DATA(t29) = t16.
    t28 = t29->start.
    t27 = t28.
    DATA t30 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t31) = t27.
    t30 = t31->col.
    t26 = t30.
    DATA t32 TYPE f.
    DATA t33 TYPE i.
    DATA t34 TYPE string.
    DATA(t35) = t16.
    t34 = t35->str.
    DATA(t36) = strlen( t34 ).
    t33 = t36.
    t32 = t33.
    DATA(t37) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t37->has = abap_true.
    t37->value = t32.
    t25 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t26 right = t37 op = `+` ).
    t18 = NEW zcl_lnt_position( i_row = t19 i_col = t25 ).
    t15 = t18.
    t14 = t15.
    t7 = NEW zcl_lnt_irange( i_start = t8 i_end = t14 ).
    CREATE OBJECT t7->zlnt_view_ownkeys_b0e8086400eb.
    t7->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t7->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t38 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t7->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t39 ).
    ENDIF.
    CREATE OBJECT t7->zlnt_json_ownkeys_70e5fd461788.
    t7->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t40) = |start|.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = t40 p1 = t41 ).
    ENDIF.
    DATA(t42) = |end|.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = t42 p1 = t43 ).
    ENDIF.
    t6 = t7.
    DATA t44 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t46) = NEW zlnt_runtime_map__4fdf767b61ba( ).
    t45 = t46.
    DATA t47 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t47.
    DATA(t48) = t45.
    DATA(t49) = t3.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t52.
    t51 = t52.
    DATA(t53) = t51.
    DATA t54 TYPE REF TO zcl_lnt_itext_edit.
    DATA t55 TYPE REF TO zcl_lnt_irange.
    DATA(t56) = t6.
    t55 = t56.
    DATA t57 TYPE string.
    DATA(t58) = ||.
    t57 = t58.
    t54 = NEW zcl_lnt_itext_edit( i_range = t55 i_new_text = t57 ).
    CREATE OBJECT t54->zlnt_view_ownkeys_b0e8086400eb.
    t54->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    IF t54->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t54->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t59 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t54->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t54->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newText` p1 = t60 ).
    ENDIF.
    CREATE OBJECT t54->zlnt_json_ownkeys_70e5fd461788.
    t54->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t61) = |range|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t54->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA(t63) = |newText|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    IF t54->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    t53->load( ).
    APPEND t54 TO t53->items.
    t53->save( ).
    DATA(t65) = t51.
    t50 = t65.
    t47 = t48->set( p0 = t49 p1 = t50 ).
    DATA(t66) = t45.
    t44 = t66.
    result = t44.

  ENDMETHOD.

  METHOD delete_range.
    DATA(t1) = i_file.
    DATA(t2) = i_start.
    DATA(t3) = i_end.
    DATA t4 TYPE string.
    DATA t5 TYPE string.
    DATA(t6) = t1.
    t5 = t6->get_filename( ).
    t4 = t5.
    DATA t7 TYPE REF TO zcl_lnt_irange.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_irange.
    DATA t9 TYPE REF TO zcl_lnt_position.
    DATA(t10) = t2.
    t9 = t10.
    DATA t11 TYPE REF TO zcl_lnt_position.
    DATA(t12) = t3.
    t11 = t12.
    t8 = NEW zcl_lnt_irange( i_start = t9 i_end = t11 ).
    CREATE OBJECT t8->zlnt_view_ownkeys_b0e8086400eb.
    t8->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    IF t8->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t8->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t13 ).
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    IF t8->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t8->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t14 ).
    ENDIF.
    CREATE OBJECT t8->zlnt_json_ownkeys_70e5fd461788.
    t8->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t15) = |start|.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    IF t8->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t8->zlnt_json_ownkeys_70e5fd461788->put( p0 = t15 p1 = t16 ).
    ENDIF.
    DATA(t17) = |end|.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    IF t8->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t8->zlnt_json_ownkeys_70e5fd461788->put( p0 = t17 p1 = t18 ).
    ENDIF.
    t7 = t8.
    DATA t19 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t21) = NEW zlnt_runtime_map__4fdf767b61ba( ).
    t20 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t22.
    DATA(t23) = t20.
    DATA(t24) = t4.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t27.
    t26 = t27.
    DATA(t28) = t26.
    DATA t29 TYPE REF TO zcl_lnt_itext_edit.
    DATA t30 TYPE REF TO zcl_lnt_irange.
    DATA(t31) = t7.
    t30 = t31.
    DATA t32 TYPE string.
    DATA(t33) = ||.
    t32 = t33.
    t29 = NEW zcl_lnt_itext_edit( i_range = t30 i_new_text = t32 ).
    CREATE OBJECT t29->zlnt_view_ownkeys_b0e8086400eb.
    t29->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    IF t29->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t29->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t34 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t29->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t29->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newText` p1 = t35 ).
    ENDIF.
    CREATE OBJECT t29->zlnt_json_ownkeys_70e5fd461788.
    t29->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t36) = |range|.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t29->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t29->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
    ENDIF.
    DATA(t38) = |newText|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t29->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t29->zlnt_json_ownkeys_70e5fd461788->put( p0 = t38 p1 = t39 ).
    ENDIF.
    t28->load( ).
    APPEND t29 TO t28->items.
    t28->save( ).
    DATA(t40) = t26.
    t25 = t40.
    t22 = t23->set( p0 = t24 p1 = t25 ).
    DATA(t41) = t20.
    t19 = t41.
    result = t19.

  ENDMETHOD.

  METHOD insert_at.
    DATA(t1) = i_file.
    DATA(t2) = i_pos.
    DATA(t3) = i_text.
    DATA t4 TYPE string.
    DATA t5 TYPE string.
    DATA(t6) = t1.
    t5 = t6->get_filename( ).
    t4 = t5.
    DATA t7 TYPE REF TO zcl_lnt_irange.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_irange.
    DATA t9 TYPE REF TO zcl_lnt_position.
    DATA(t10) = t2.
    t9 = t10.
    DATA t11 TYPE REF TO zcl_lnt_position.
    DATA(t12) = t2.
    t11 = t12.
    t8 = NEW zcl_lnt_irange( i_start = t9 i_end = t11 ).
    CREATE OBJECT t8->zlnt_view_ownkeys_b0e8086400eb.
    t8->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    IF t8->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t8->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t13 ).
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    IF t8->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t8->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t14 ).
    ENDIF.
    CREATE OBJECT t8->zlnt_json_ownkeys_70e5fd461788.
    t8->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t15) = |start|.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    IF t8->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t8->zlnt_json_ownkeys_70e5fd461788->put( p0 = t15 p1 = t16 ).
    ENDIF.
    DATA(t17) = |end|.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    IF t8->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t8->zlnt_json_ownkeys_70e5fd461788->put( p0 = t17 p1 = t18 ).
    ENDIF.
    t7 = t8.
    DATA t19 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t21) = NEW zlnt_runtime_map__4fdf767b61ba( ).
    t20 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t22.
    DATA(t23) = t20.
    DATA(t24) = t4.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t27.
    t26 = t27.
    DATA(t28) = t26.
    DATA t29 TYPE REF TO zcl_lnt_itext_edit.
    DATA t30 TYPE REF TO zcl_lnt_irange.
    DATA(t31) = t7.
    t30 = t31.
    DATA t32 TYPE string.
    DATA(t33) = t3.
    t32 = t33.
    t29 = NEW zcl_lnt_itext_edit( i_range = t30 i_new_text = t32 ).
    CREATE OBJECT t29->zlnt_view_ownkeys_b0e8086400eb.
    t29->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    IF t29->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t29->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t34 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t29->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t29->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newText` p1 = t35 ).
    ENDIF.
    CREATE OBJECT t29->zlnt_json_ownkeys_70e5fd461788.
    t29->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t36) = |range|.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t29->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t29->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
    ENDIF.
    DATA(t38) = |newText|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t29->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t29->zlnt_json_ownkeys_70e5fd461788->put( p0 = t38 p1 = t39 ).
    ENDIF.
    t28->load( ).
    APPEND t29 TO t28->items.
    t28->save( ).
    DATA(t40) = t26.
    t25 = t40.
    t22 = t23->set( p0 = t24 p1 = t25 ).
    DATA(t41) = t20.
    t19 = t41.
    result = t19.

  ENDMETHOD.

  METHOD replace_token.
    DATA(t1) = i_file.
    DATA(t2) = i_token.
    DATA(t3) = i_text.
    DATA t4 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t5) = t1.
    DATA t6 TYPE REF TO zcl_lnt_position.
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t8) = t2.
    t7 = t8.
    DATA t9 TYPE REF TO zcl_lnt_position.
    DATA(t10) = t7.
    t9 = t10->start.
    t6 = t9.
    DATA t11 TYPE REF TO zcl_lnt_position.
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t13) = t2.
    t12 = t13.
    DATA t14 TYPE REF TO zcl_lnt_position.
    DATA t15 TYPE f.
    DATA t16 TYPE REF TO zcl_lnt_position.
    DATA t17 TYPE REF TO zcl_lnt_position.
    DATA(t18) = t12.
    t17 = t18->start.
    t16 = t17.
    DATA t19 TYPE f.
    DATA(t20) = t16.
    t19 = t20->row.
    t15 = t19.
    DATA t21 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t22 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t23 TYPE REF TO zcl_lnt_position.
    DATA t24 TYPE REF TO zcl_lnt_position.
    DATA(t25) = t12.
    t24 = t25->start.
    t23 = t24.
    DATA t26 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t27) = t23.
    t26 = t27->col.
    t22 = t26.
    DATA t28 TYPE f.
    DATA t29 TYPE i.
    DATA t30 TYPE string.
    DATA(t31) = t12.
    t30 = t31->str.
    DATA(t32) = strlen( t30 ).
    t29 = t32.
    t28 = t29.
    DATA(t33) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t33->has = abap_true.
    t33->value = t28.
    t21 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t22 right = t33 op = `+` ).
    t14 = NEW zcl_lnt_position( i_row = t15 i_col = t21 ).
    t11 = t14.
    DATA(t34) = t3.
    t4 = zcl_lnt_edit_helper=>replace_range( i_file = t5 i_start = t6 i_end = t11 i_text = t34 ).
    result = t4.

  ENDMETHOD.

  METHOD replace_range.
    DATA(t1) = i_file.
    DATA(t2) = i_start.
    DATA(t3) = i_end.
    DATA(t4) = i_text.
    DATA t5 TYPE string.
    DATA t6 TYPE string.
    DATA(t7) = t1.
    t6 = t7->get_filename( ).
    t5 = t6.
    DATA t8 TYPE REF TO zcl_lnt_irange.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_irange.
    DATA t10 TYPE REF TO zcl_lnt_position.
    DATA(t11) = t2.
    t10 = t11.
    DATA t12 TYPE REF TO zcl_lnt_position.
    DATA(t13) = t3.
    t12 = t13.
    t9 = NEW zcl_lnt_irange( i_start = t10 i_end = t12 ).
    CREATE OBJECT t9->zlnt_view_ownkeys_b0e8086400eb.
    t9->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    IF t9->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t9->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t14 ).
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    IF t9->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t9->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t15 ).
    ENDIF.
    CREATE OBJECT t9->zlnt_json_ownkeys_70e5fd461788.
    t9->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t16) = |start|.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    IF t9->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t9->zlnt_json_ownkeys_70e5fd461788->put( p0 = t16 p1 = t17 ).
    ENDIF.
    DATA(t18) = |end|.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    IF t9->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t9->zlnt_json_ownkeys_70e5fd461788->put( p0 = t18 p1 = t19 ).
    ENDIF.
    t8 = t9.
    DATA t20 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t22) = NEW zlnt_runtime_map__4fdf767b61ba( ).
    t21 = t22.
    DATA t23 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t23.
    DATA(t24) = t21.
    DATA(t25) = t5.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t28.
    t27 = t28.
    DATA(t29) = t27.
    DATA t30 TYPE REF TO zcl_lnt_itext_edit.
    DATA t31 TYPE REF TO zcl_lnt_irange.
    DATA(t32) = t8.
    t31 = t32.
    DATA t33 TYPE string.
    DATA(t34) = t4.
    t33 = t34.
    t30 = NEW zcl_lnt_itext_edit( i_range = t31 i_new_text = t33 ).
    CREATE OBJECT t30->zlnt_view_ownkeys_b0e8086400eb.
    t30->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t30->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t30->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    IF t30->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t30->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newText` p1 = t36 ).
    ENDIF.
    CREATE OBJECT t30->zlnt_json_ownkeys_70e5fd461788.
    t30->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t37) = |range|.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t30->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t30->zlnt_json_ownkeys_70e5fd461788->put( p0 = t37 p1 = t38 ).
    ENDIF.
    DATA(t39) = |newText|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t30->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t30->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
    ENDIF.
    t29->load( ).
    APPEND t30 TO t29->items.
    t29->save( ).
    DATA(t41) = t27.
    t26 = t41.
    t23 = t24->set( p0 = t25 p1 = t26 ).
    DATA(t42) = t21.
    t20 = t42.
    result = t20.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1148_d30b5bcc0275.
  ENDMETHOD.
ENDCLASS.
