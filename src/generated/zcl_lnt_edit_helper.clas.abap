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
    t2 = NEW zlnt_runtime_map__4fdf767b61ba( ).
    DATA t8 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t9 TYPE REF TO object.
    DATA(t10) = VALUE i( ).
    DO.
      t1->load( ).
      IF t10 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t1->items INDEX t10 + 1 INTO t9.
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
      t13 = t8->keys( ).
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
        DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t19 = t2->get( p0 = t15 ).
        DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t22.
        t17 = xsdbool( t19 IS INITIAL ).
        IF t17 = abap_true.
          DATA t26 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t29.
          t26 = t2->set( p0 = t15 p1 = t29 ).
        ENDIF.
        DATA t30 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t35 = t2->get( p0 = t15 ).
        t34 = t35.
        DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t39 = t8->get( p0 = t15 ).
        t38 = t39.
        t33 = t34->concat( p0 = t38 ).
        t30 = t2->set( p0 = t15 p1 = t33 ).
      ENDDO.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD merge.
    DATA(t1) = i_fix1.
    DATA(t2) = i_fix2.
    DATA t3 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    t3 = NEW zlnt_runtime_map__4fdf767b61ba( ).
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t8 = t1->keys( ).
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
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t14 = t3->get( p0 = t10 ).
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      t12 = xsdbool( t14 IS INITIAL ).
      IF t12 = abap_true.
        DATA t21 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t24.
        t21 = t3->set( p0 = t10 p1 = t24 ).
      ENDIF.
      DATA t25 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t30 = t3->get( p0 = t10 ).
      t29 = t30.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t34 = t1->get( p0 = t10 ).
      t33 = t34.
      t28 = t29->concat( p0 = t33 ).
      t25 = t3->set( p0 = t10 p1 = t28 ).
    ENDDO.
    DATA t37 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t37 = t2->keys( ).
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
      DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t43 = t3->get( p0 = t39 ).
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t46.
      t41 = xsdbool( t43 IS INITIAL ).
      IF t41 = abap_true.
        DATA t50 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t53.
        t50 = t3->set( p0 = t39 p1 = t53 ).
      ENDIF.
      DATA t54 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t59 = t3->get( p0 = t39 ).
      t58 = t59.
      DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t63 = t2->get( p0 = t39 ).
      t62 = t63.
      t57 = t58->concat( p0 = t62 ).
      t54 = t3->set( p0 = t39 p1 = t57 ).
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD find_statement.
    DATA(t1) = i_token.
    DATA(t2) = i_file.
    DATA(t3) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3 = xsdbool( t2 IS INITIAL ).
    IF t3 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t15 = t2->statements.
    t11 = t15.
    DATA t17 TYPE REF TO zcl_lnt_statement_node.
    DATA t18 TYPE REF TO object.
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
      t22 = t17->includes_token( i_search_b3ca = t1 ).
      IF t22 = abap_true.
        result = t17.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD delete_statement.
    DATA(t1) = i_file.
    DATA(t2) = i_statement.
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    t7 = t2->colon.
    t3 = t7.
    DATA(t9) = VALUE abap_bool( ).
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t9 = xsdbool( t3 IS INITIAL ).
    IF t9 = abap_true.
      DATA t16 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t18 TYPE REF TO zcl_lnt_position.
      DATA t20 TYPE REF TO zcl_lnt_abstract_token.
      t20 = t2->get_first_token( ).
      DATA t22 TYPE REF TO zcl_lnt_position.
      t22 = t20->start.
      t18 = t22.
      DATA t24 TYPE REF TO zcl_lnt_position.
      DATA t25 TYPE REF TO zcl_lnt_abstract_token.
      DATA t26 TYPE REF TO zcl_lnt_abstract_token.
      t26 = t2->get_last_token( ).
      t25 = t26.
      DATA t28 TYPE REF TO zcl_lnt_position.
      DATA(t29) = VALUE f( ).
      DATA t31 TYPE REF TO zcl_lnt_position.
      t31 = t25->start.
      DATA(t33) = VALUE f( ).
      t33 = t31->row.
      t29 = t33.
      DATA t35 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t36 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t38 TYPE REF TO zcl_lnt_position.
      t38 = t25->start.
      DATA t40 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t40 = t38->col.
      t36 = t40.
      DATA(t42) = VALUE f( ).
      DATA(t43) = VALUE i( ).
      DATA(t44) = VALUE string( ).
      t44 = t25->str.
      t43 = strlen( t44 ).
      t42 = t43.
      DATA(t47) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t47->has = abap_true.
      t47->value = t42.
      t35 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t36 right = t47 op = `+` ).
      t28 = NEW zcl_lnt_position( i_row = t29 i_col = t35 ).
      t24 = t28.
      t16 = zcl_lnt_edit_helper=>delete_range( i_file = t1 i_start = t18 i_end = t24 ).
      result = t16.
      RETURN.
    ENDIF.
    DATA(t48) = VALUE abap_bool( ).
    t48 = abap_true.
    DATA(t50) = VALUE abap_bool( ).
    t50 = abap_true.
    DATA t52 TYPE REF TO zcl_lnt_statement_node.
    DATA t54 TYPE REF TO zcl_lnt_statement_node.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t59 = t1->statements.
    t56 = t59.
    DATA t61 TYPE REF TO zcl_lnt_statement_node.
    DATA t62 TYPE REF TO object.
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
      DATA t70 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t70.
      t70 = t61->colon.
      t66 = t70.
      DATA(t72) = VALUE abap_bool( ).
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t75.
      CLEAR t75.
      t72 = xsdbool( t66 IS INITIAL ).
      IF t72 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t79) = VALUE abap_bool( ).
        DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t82.
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t83.
        CLEAR t82.
        IF t61 IS BOUND.
          DATA t84 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t84.
          DATA t85 TYPE REF TO object.
          CLEAR t85.
          CLEAR t84.
          t85 = t61.
          TRY.
              t82 ?= t85.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t82 IS NOT BOUND.
            TRY.
                t84 ?= t61.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t84 IS BOUND.
              t82 = t84->source( ).
            ENDIF.
            IF t82 IS NOT BOUND.
              CREATE OBJECT t82.
              t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t82->oval = t61.
            ENDIF.
          ENDIF.
        ENDIF.
        CLEAR t83.
        IF t2 IS BOUND.
          DATA t86 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t86.
          DATA t87 TYPE REF TO object.
          CLEAR t87.
          CLEAR t86.
          t87 = t2.
          TRY.
              t83 ?= t87.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t83 IS NOT BOUND.
            TRY.
                t86 ?= t2.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t86 IS BOUND.
              t83 = t86->source( ).
            ENDIF.
            IF t83 IS NOT BOUND.
              CREATE OBJECT t83.
              t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t83->oval = t2.
            ENDIF.
          ENDIF.
        ENDIF.
        IF t82 IS BOUND.
          t79 = t82->strict_equals( t83 ).
        ELSE.
          t79 = xsdbool( t83 IS NOT BOUND ).
        ENDIF.
        IF t79 = abap_true.
          t48 = abap_false.
          t50 = abap_true.
          CONTINUE.
        ELSE.
          DATA(t90) = VALUE abap_bool( ).
          t90 = xsdbool( t48 = abap_true ).
          IF t90 = abap_true.
            DATA(t93) = VALUE abap_bool( ).
            DATA t94 TYPE REF TO zcl_lnt_position.
            CLEAR t94.
            DATA t98 TYPE REF TO zcl_lnt_position.
            CLEAR t98.
            t98 = t3->start.
            t94 = t98.
            DATA t100 TYPE REF TO zcl_lnt_position.
            CLEAR t100.
            DATA t104 TYPE REF TO zcl_lnt_position.
            CLEAR t104.
            t104 = t66->start.
            t100 = t104.
            t93 = t94->equals( i_p = t100 ).
            IF t93 = abap_true.
              t52 = t61.
            ENDIF.
          ELSE.
            DATA(t110) = VALUE abap_bool( ).
            t110 = xsdbool( t50 = abap_true ).
            IF t110 = abap_true.
              DATA(t113) = VALUE abap_bool( ).
              DATA t114 TYPE REF TO zcl_lnt_position.
              CLEAR t114.
              DATA t118 TYPE REF TO zcl_lnt_position.
              CLEAR t118.
              t118 = t3->start.
              t114 = t118.
              DATA t120 TYPE REF TO zcl_lnt_position.
              CLEAR t120.
              DATA t124 TYPE REF TO zcl_lnt_position.
              CLEAR t124.
              t124 = t66->start.
              t120 = t124.
              t113 = t114->equals( i_p = t120 ).
              IF t113 = abap_true.
                t54 = t61.
              ENDIF.
              EXIT.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t130) = VALUE abap_bool( ).
    DATA(t131) = VALUE abap_bool( ).
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t131 = xsdbool( t52 IS INITIAL ).
    t130 = t131.
    IF t131 = abap_true.
      DATA(t138) = VALUE abap_bool( ).
      DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t138 = xsdbool( t54 IS INITIAL ).
      t130 = t138.
    ENDIF.
    IF t130 = abap_true.
      DATA t145 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t147 TYPE REF TO zcl_lnt_position.
      DATA t149 TYPE REF TO zcl_lnt_abstract_token.
      t149 = t2->get_first_token( ).
      DATA t151 TYPE REF TO zcl_lnt_position.
      t151 = t149->start.
      t147 = t151.
      DATA t153 TYPE REF TO zcl_lnt_position.
      DATA t154 TYPE REF TO zcl_lnt_abstract_token.
      DATA t155 TYPE REF TO zcl_lnt_abstract_token.
      t155 = t2->get_last_token( ).
      t154 = t155.
      DATA t157 TYPE REF TO zcl_lnt_position.
      DATA(t158) = VALUE f( ).
      DATA t160 TYPE REF TO zcl_lnt_position.
      t160 = t154->start.
      DATA(t162) = VALUE f( ).
      t162 = t160->row.
      t158 = t162.
      DATA t164 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t165 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t167 TYPE REF TO zcl_lnt_position.
      t167 = t154->start.
      DATA t169 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t169 = t167->col.
      t165 = t169.
      DATA(t171) = VALUE f( ).
      DATA(t172) = VALUE i( ).
      DATA(t173) = VALUE string( ).
      t173 = t154->str.
      t172 = strlen( t173 ).
      t171 = t172.
      DATA(t176) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t176->has = abap_true.
      t176->value = t171.
      t164 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t165 right = t176 op = `+` ).
      t157 = NEW zcl_lnt_position( i_row = t158 i_col = t164 ).
      t153 = t157.
      t145 = zcl_lnt_edit_helper=>delete_range( i_file = t1 i_start = t147 i_end = t153 ).
      result = t145.
      RETURN.
    ENDIF.
    DATA t177 TYPE REF TO zcl_lnt_position.
    DATA t180 TYPE REF TO zcl_lnt_abstract_token.
    t180 = t2->get_first_token( ).
    DATA t182 TYPE REF TO zcl_lnt_position.
    t182 = t180->start.
    t177 = t182.
    DATA t184 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t184 = t2->get_tokens( ).
    DATA t186 TYPE REF TO zcl_lnt_abstract_token.
    DATA t187 TYPE REF TO object.
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
      DATA t195 TYPE REF TO zcl_lnt_position.
      CLEAR t195.
      t195 = t186->start.
      t192 = t195.
      DATA t197 TYPE REF TO zcl_lnt_position.
      CLEAR t197.
      DATA t198 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t198.
      t198 = t3.
      DATA t201 TYPE REF TO zcl_lnt_position.
      CLEAR t201.
      DATA(t202) = VALUE f( ).
      DATA t204 TYPE REF TO zcl_lnt_position.
      CLEAR t204.
      t204 = t198->start.
      DATA(t206) = VALUE f( ).
      t206 = t204->row.
      t202 = t206.
      DATA t208 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t208.
      DATA t209 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t209.
      DATA t211 TYPE REF TO zcl_lnt_position.
      CLEAR t211.
      t211 = t198->start.
      DATA t213 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t213.
      t213 = t211->col.
      t209 = t213.
      DATA(t215) = VALUE f( ).
      DATA(t216) = VALUE i( ).
      DATA(t217) = VALUE string( ).
      t217 = t198->str.
      t216 = strlen( t217 ).
      t215 = t216.
      DATA(t220) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t220->has = abap_true.
      t220->value = t215.
      t208 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t209 right = t220 op = `+` ).
      t201 = NEW zcl_lnt_position( i_row = t202 i_col = t208 ).
      t197 = t201.
      t191 = t192->is_after( i_p = t197 ).
      IF t191 = abap_true.
        DATA t224 TYPE REF TO zcl_lnt_position.
        CLEAR t224.
        t224 = t186->start.
        t177 = t224.
        EXIT.
      ENDIF.
    ENDDO.
    DATA t230 TYPE REF TO zcl_lnt_abstract_token.
    t230 = t2->colon.
    DATA(t232) = VALUE abap_bool( ).
    DATA(t233) = VALUE abap_bool( ).
    DATA(t234) = VALUE string( ).
    DATA t236 TYPE REF TO zcl_lnt_abstract_token.
    t236 = t2->get_last_token( ).
    DATA(t238) = VALUE string( ).
    t238 = t236->str.
    t234 = t238.
    DATA(t240) = |.|.
    t233 = xsdbool( t234 = t240 ).
    t232 = t233.
    IF t233 = abap_true.
      DATA(t241) = VALUE abap_bool( ).
      t241 = xsdbool( t52 IS BOUND ).
      t232 = t241.
    ENDIF.
    IF t232 = abap_true.
      DATA t244 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t246 TYPE REF TO zcl_lnt_abstract_token.
      DATA t247 TYPE REF TO zcl_lnt_statement_node.
      t247 = t52.
      t246 = t247->get_last_token( ).
      DATA(t249) = |.|.
      t244 = zcl_lnt_edit_helper=>replace_token( i_file = t1 i_token = t246 i_text = t249 ).
      DATA t251 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t253 TYPE REF TO zcl_lnt_position.
      DATA t254 TYPE REF TO zcl_lnt_abstract_token.
      DATA t255 TYPE REF TO zcl_lnt_abstract_token.
      DATA t256 TYPE REF TO zcl_lnt_statement_node.
      t256 = t52.
      t255 = t256->get_last_token( ).
      t254 = t255.
      DATA t258 TYPE REF TO zcl_lnt_position.
      DATA(t259) = VALUE f( ).
      DATA t261 TYPE REF TO zcl_lnt_position.
      t261 = t254->start.
      DATA(t263) = VALUE f( ).
      t263 = t261->row.
      t259 = t263.
      DATA t265 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t266 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t268 TYPE REF TO zcl_lnt_position.
      t268 = t254->start.
      DATA t270 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t270 = t268->col.
      t266 = t270.
      DATA(t272) = VALUE f( ).
      DATA(t273) = VALUE i( ).
      DATA(t274) = VALUE string( ).
      t274 = t254->str.
      t273 = strlen( t274 ).
      t272 = t273.
      DATA(t277) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t277->has = abap_true.
      t277->value = t272.
      t265 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t266 right = t277 op = `+` ).
      t258 = NEW zcl_lnt_position( i_row = t259 i_col = t265 ).
      t253 = t258.
      DATA t278 TYPE REF TO zcl_lnt_position.
      DATA t279 TYPE REF TO zcl_lnt_abstract_token.
      DATA t280 TYPE REF TO zcl_lnt_abstract_token.
      t280 = t2->get_last_token( ).
      t279 = t280.
      DATA t282 TYPE REF TO zcl_lnt_position.
      DATA(t283) = VALUE f( ).
      DATA t285 TYPE REF TO zcl_lnt_position.
      t285 = t279->start.
      DATA(t287) = VALUE f( ).
      t287 = t285->row.
      t283 = t287.
      DATA t289 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t290 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t292 TYPE REF TO zcl_lnt_position.
      t292 = t279->start.
      DATA t294 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t294 = t292->col.
      t290 = t294.
      DATA(t296) = VALUE f( ).
      DATA(t297) = VALUE i( ).
      DATA(t298) = VALUE string( ).
      t298 = t279->str.
      t297 = strlen( t298 ).
      t296 = t297.
      DATA(t301) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t301->has = abap_true.
      t301->value = t296.
      t289 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t290 right = t301 op = `+` ).
      t282 = NEW zcl_lnt_position( i_row = t283 i_col = t289 ).
      t278 = t282.
      t251 = zcl_lnt_edit_helper=>delete_range( i_file = t1 i_start = t253 i_end = t278 ).
      DATA t302 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t302 = zcl_lnt_edit_helper=>merge( i_fix1 = t244 i_fix2 = t251 ).
      result = t302.
      RETURN.
    ELSE.
      DATA(t305) = VALUE abap_bool( ).
      DATA(t306) = VALUE abap_bool( ).
      DATA(t307) = VALUE abap_bool( ).
      DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t307 = xsdbool( t52 IS INITIAL ).
      t306 = t307.
      IF t307 = abap_true.
        DATA(t314) = VALUE abap_bool( ).
        t314 = xsdbool( t230 IS BOUND ).
        t306 = t314.
      ENDIF.
      t305 = t306.
      IF t306 = abap_true.
        DATA(t316) = VALUE abap_bool( ).
        t316 = xsdbool( t54 IS BOUND ).
        t305 = t316.
      ENDIF.
      IF t305 = abap_true.
        DATA t318 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t320 TYPE REF TO zcl_lnt_position.
        t320 = zcl_lnt_edit_helper=>first_after_colon( i_statement = t2 ).
        DATA t322 TYPE REF TO zcl_lnt_position.
        DATA t323 TYPE REF TO zcl_lnt_statement_node.
        t323 = t54.
        t322 = zcl_lnt_edit_helper=>first_after_colon( i_statement = t323 ).
        t318 = zcl_lnt_edit_helper=>delete_range( i_file = t1 i_start = t320 i_end = t322 ).
        result = t318.
        RETURN.
      ELSE.
        DATA t325 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t328 TYPE REF TO zcl_lnt_position.
        DATA t329 TYPE REF TO zcl_lnt_statement_node.
        t329 = t54.
        t328 = zcl_lnt_edit_helper=>first_after_colon( i_statement = t329 ).
        t325 = zcl_lnt_edit_helper=>delete_range( i_file = t1 i_start = t177 i_end = t328 ).
        result = t325.
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD first_after_colon.
    DATA(t1) = i_statement.
    DATA t2 TYPE REF TO zcl_lnt_position.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    t9 = t1->colon.
    DATA t11 TYPE REF TO zcl_lnt_position.
    t11 = t9->start.
    t2 = t11.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t13 = t1->get_tokens( ).
    DATA t15 TYPE REF TO zcl_lnt_abstract_token.
    DATA t16 TYPE REF TO object.
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
      DATA t24 TYPE REF TO zcl_lnt_position.
      CLEAR t24.
      t24 = t15->start.
      t21 = t24.
      t20 = t21->is_after( i_p = t2 ).
      IF t20 = abap_true.
        DATA t30 TYPE REF TO zcl_lnt_position.
        CLEAR t30.
        t30 = t15->start.
        result = t30.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t32 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    DATA t33 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t36) = |firstAfterColon, emtpy statement?|.
    DATA(t37) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t37->has = abap_true.
    t37->value = t36.
    t34 = t37.
    t33 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t34 ).
    t32 = NEW #( ).
    t32->payload = t33.
    CLEAR t32->source_value.
    DATA t39 TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA t40 TYPE REF TO object.
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
    RAISE EXCEPTION t32.
  ENDMETHOD.

  METHOD delete_token.
    DATA(t2) = i_token.
    DATA t4 TYPE string.
    t4 = i_file->get_filename( ).
    DATA t7 TYPE REF TO zcl_lnt_irange.
    DATA t8 TYPE REF TO zcl_lnt_position.
    DATA t12 TYPE REF TO zcl_lnt_position.
    t12 = t2->start.
    t8 = t12.
    DATA t14 TYPE REF TO zcl_lnt_position.
    DATA t16 TYPE REF TO zcl_lnt_abstract_token.
    t16 = t2.
    DATA t18 TYPE REF TO zcl_lnt_position.
    DATA t19 TYPE f.
    DATA t21 TYPE REF TO zcl_lnt_position.
    t21 = t16->start.
    DATA t23 TYPE f.
    t23 = t21->row.
    t19 = t23.
    DATA t25 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t26 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t28 TYPE REF TO zcl_lnt_position.
    t28 = t16->start.
    DATA t30 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t30 = t28->col.
    t26 = t30.
    DATA t32 TYPE f.
    DATA t34 TYPE string.
    t34 = t16->str.
    t32 = strlen( t34 ).
    DATA(t37) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t37->has = abap_true.
    t37->value = t32.
    t25 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t26 right = t37 op = `+` ).
    t18 = NEW zcl_lnt_position( i_row = t19 i_col = t25 ).
    t14 = t18.
    t7 = NEW zcl_lnt_irange( i_start = t8 i_end = t14 ).
    CREATE OBJECT t7->zlnt_view_ownkeys_b0e8086400eb.
    t7->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t38 ).
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t7->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t39 ).
    ENDIF.
    CREATE OBJECT t7->zlnt_json_ownkeys_70e5fd461788.
    t7->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t40) = |start|.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = t40 p1 = t41 ).
    DATA(t42) = |end|.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = t42 p1 = t43 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    t45 = NEW zlnt_runtime_map__4fdf767b61ba( ).
    DATA t47 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t52.
    t51 = t52.
    DATA t54 TYPE REF TO zcl_lnt_itext_edit.
    DATA t55 TYPE REF TO zcl_lnt_irange.
    t55 = t7.
    DATA t57 TYPE string.
    t57 = ||.
    t54 = NEW zcl_lnt_itext_edit( i_range = t55 i_new_text = t57 ).
    CREATE OBJECT t54->zlnt_view_ownkeys_b0e8086400eb.
    t54->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t54->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t59 ).
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t54->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t54->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newText` p1 = t60 ).
    ENDIF.
    CREATE OBJECT t54->zlnt_json_ownkeys_70e5fd461788.
    t54->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t61) = |range|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    DATA(t63) = |newText|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t54->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    t51->load( ).
    APPEND t54 TO t51->items.
    t51->save( ).
    t50 = t51.
    t47 = t45->set( p0 = t4 p1 = t50 ).
    result = t45.

  ENDMETHOD.

  METHOD delete_range.
    DATA(t2) = i_start.
    DATA(t3) = i_end.
    DATA t5 TYPE string.
    t5 = i_file->get_filename( ).
    DATA t8 TYPE REF TO zcl_lnt_irange.
    DATA t9 TYPE REF TO zcl_lnt_position.
    t9 = t2.
    DATA t11 TYPE REF TO zcl_lnt_position.
    t11 = t3.
    t8 = NEW zcl_lnt_irange( i_start = t9 i_end = t11 ).
    CREATE OBJECT t8->zlnt_view_ownkeys_b0e8086400eb.
    t8->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t8->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t13 ).
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t8->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t8->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t14 ).
    ENDIF.
    CREATE OBJECT t8->zlnt_json_ownkeys_70e5fd461788.
    t8->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t15) = |start|.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t8->zlnt_json_ownkeys_70e5fd461788->put( p0 = t15 p1 = t16 ).
    DATA(t17) = |end|.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t8->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t8->zlnt_json_ownkeys_70e5fd461788->put( p0 = t17 p1 = t18 ).
    ENDIF.
    DATA t20 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    t20 = NEW zlnt_runtime_map__4fdf767b61ba( ).
    DATA t22 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t27.
    t26 = t27.
    DATA t29 TYPE REF TO zcl_lnt_itext_edit.
    DATA t30 TYPE REF TO zcl_lnt_irange.
    t30 = t8.
    DATA t32 TYPE string.
    t32 = ||.
    t29 = NEW zcl_lnt_itext_edit( i_range = t30 i_new_text = t32 ).
    CREATE OBJECT t29->zlnt_view_ownkeys_b0e8086400eb.
    t29->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t29->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t34 ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t29->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newText` p1 = t35 ).
    ENDIF.
    CREATE OBJECT t29->zlnt_json_ownkeys_70e5fd461788.
    t29->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t36) = |range|.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t29->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
    DATA(t38) = |newText|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t29->zlnt_json_ownkeys_70e5fd461788->put( p0 = t38 p1 = t39 ).
    ENDIF.
    t26->load( ).
    APPEND t29 TO t26->items.
    t26->save( ).
    t25 = t26.
    t22 = t20->set( p0 = t5 p1 = t25 ).
    result = t20.

  ENDMETHOD.

  METHOD insert_at.
    DATA(t2) = i_pos.
    DATA(t3) = i_text.
    DATA t5 TYPE string.
    t5 = i_file->get_filename( ).
    DATA t8 TYPE REF TO zcl_lnt_irange.
    DATA t9 TYPE REF TO zcl_lnt_position.
    t9 = t2.
    DATA t11 TYPE REF TO zcl_lnt_position.
    t11 = t2.
    t8 = NEW zcl_lnt_irange( i_start = t9 i_end = t11 ).
    CREATE OBJECT t8->zlnt_view_ownkeys_b0e8086400eb.
    t8->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t8->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t13 ).
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t8->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t8->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t14 ).
    ENDIF.
    CREATE OBJECT t8->zlnt_json_ownkeys_70e5fd461788.
    t8->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t15) = |start|.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t8->zlnt_json_ownkeys_70e5fd461788->put( p0 = t15 p1 = t16 ).
    DATA(t17) = |end|.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t8->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t8->zlnt_json_ownkeys_70e5fd461788->put( p0 = t17 p1 = t18 ).
    ENDIF.
    DATA t20 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    t20 = NEW zlnt_runtime_map__4fdf767b61ba( ).
    DATA t22 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t27.
    t26 = t27.
    DATA t29 TYPE REF TO zcl_lnt_itext_edit.
    DATA t30 TYPE REF TO zcl_lnt_irange.
    t30 = t8.
    DATA t32 TYPE string.
    t32 = t3.
    t29 = NEW zcl_lnt_itext_edit( i_range = t30 i_new_text = t32 ).
    CREATE OBJECT t29->zlnt_view_ownkeys_b0e8086400eb.
    t29->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t29->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t34 ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t29->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newText` p1 = t35 ).
    ENDIF.
    CREATE OBJECT t29->zlnt_json_ownkeys_70e5fd461788.
    t29->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t36) = |range|.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t29->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
    DATA(t38) = |newText|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t29->zlnt_json_ownkeys_70e5fd461788->put( p0 = t38 p1 = t39 ).
    ENDIF.
    t26->load( ).
    APPEND t29 TO t26->items.
    t26->save( ).
    t25 = t26.
    t22 = t20->set( p0 = t5 p1 = t25 ).
    result = t20.

  ENDMETHOD.

  METHOD replace_token.
    DATA(t2) = i_token.
    DATA(t3) = i_text.
    DATA t4 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t5) = i_file.
    DATA t6 TYPE REF TO zcl_lnt_position.
    DATA t9 TYPE REF TO zcl_lnt_position.
    t9 = t2->start.
    t6 = t9.
    DATA t11 TYPE REF TO zcl_lnt_position.
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    t12 = t2.
    DATA t14 TYPE REF TO zcl_lnt_position.
    DATA t15 TYPE f.
    DATA t17 TYPE REF TO zcl_lnt_position.
    t17 = t12->start.
    DATA t19 TYPE f.
    t19 = t17->row.
    t15 = t19.
    DATA t21 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t22 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t24 TYPE REF TO zcl_lnt_position.
    t24 = t12->start.
    DATA t26 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t26 = t24->col.
    t22 = t26.
    DATA t28 TYPE f.
    DATA t30 TYPE string.
    t30 = t12->str.
    t28 = strlen( t30 ).
    DATA(t33) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t33->has = abap_true.
    t33->value = t28.
    t21 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t22 right = t33 op = `+` ).
    t14 = NEW zcl_lnt_position( i_row = t15 i_col = t21 ).
    t11 = t14.
    t4 = zcl_lnt_edit_helper=>replace_range( i_file = t5 i_start = t6 i_end = t11 i_text = t3 ).
    result = t4.

  ENDMETHOD.

  METHOD replace_range.
    DATA(t2) = i_start.
    DATA(t3) = i_end.
    DATA(t4) = i_text.
    DATA t6 TYPE string.
    t6 = i_file->get_filename( ).
    DATA t9 TYPE REF TO zcl_lnt_irange.
    DATA t10 TYPE REF TO zcl_lnt_position.
    t10 = t2.
    DATA t12 TYPE REF TO zcl_lnt_position.
    t12 = t3.
    t9 = NEW zcl_lnt_irange( i_start = t10 i_end = t12 ).
    CREATE OBJECT t9->zlnt_view_ownkeys_b0e8086400eb.
    t9->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t9->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t14 ).
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t9->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t9->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t15 ).
    ENDIF.
    CREATE OBJECT t9->zlnt_json_ownkeys_70e5fd461788.
    t9->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t16) = |start|.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t9->zlnt_json_ownkeys_70e5fd461788->put( p0 = t16 p1 = t17 ).
    DATA(t18) = |end|.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t9->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t9->zlnt_json_ownkeys_70e5fd461788->put( p0 = t18 p1 = t19 ).
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    t21 = NEW zlnt_runtime_map__4fdf767b61ba( ).
    DATA t23 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t28.
    t27 = t28.
    DATA t30 TYPE REF TO zcl_lnt_itext_edit.
    DATA t31 TYPE REF TO zcl_lnt_irange.
    t31 = t9.
    DATA t33 TYPE string.
    t33 = t4.
    t30 = NEW zcl_lnt_itext_edit( i_range = t31 i_new_text = t33 ).
    CREATE OBJECT t30->zlnt_view_ownkeys_b0e8086400eb.
    t30->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t30->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t35 ).
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t30->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t30->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `newText` p1 = t36 ).
    ENDIF.
    CREATE OBJECT t30->zlnt_json_ownkeys_70e5fd461788.
    t30->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t37) = |range|.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t30->zlnt_json_ownkeys_70e5fd461788->put( p0 = t37 p1 = t38 ).
    DATA(t39) = |newText|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t30->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t30->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
    ENDIF.
    t27->load( ).
    APPEND t30 TO t27->items.
    t27->save( ).
    t26 = t27.
    t23 = t21->set( p0 = t6 p1 = t26 ).
    result = t21.

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
