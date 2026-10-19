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
        DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t19 = t2->get( p0 = t15 ).
        DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t22.
        IF xsdbool( t19 IS INITIAL ) = abap_true.
          DATA t26 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t29.
          t26 = t2->set( p0 = t15 p1 = t29 ).
        ENDIF.
        DATA t30 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t30 = t2->set( p0 = t15 p1 = t2->get( p0 = t15 )->concat( p0 = t8->get( p0 = t15 ) ) ).
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
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t14 = t3->get( p0 = t10 ).
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      IF xsdbool( t14 IS INITIAL ) = abap_true.
        DATA t21 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t24.
        t21 = t3->set( p0 = t10 p1 = t24 ).
      ENDIF.
      DATA t25 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t25 = t3->set( p0 = t10 p1 = t3->get( p0 = t10 )->concat( p0 = t1->get( p0 = t10 ) ) ).
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
      DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t43 = t3->get( p0 = t39 ).
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t46.
      IF xsdbool( t43 IS INITIAL ) = abap_true.
        DATA t50 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t53.
        t50 = t3->set( p0 = t39 p1 = t53 ).
      ENDIF.
      DATA t54 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t54 = t3->set( p0 = t39 p1 = t3->get( p0 = t39 )->concat( p0 = t2->get( p0 = t39 ) ) ).
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD find_statement.
    DATA(t1) = i_token.
    DATA(t2) = i_file.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t11 = t2->statements.
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
      IF t17->includes_token( i_search_b3ca = t1 ) = abap_true.
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
    t3 = t2->colon.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
      DATA t18 TYPE REF TO zcl_lnt_position.
      t18 = t2->get_first_token( )->start.
      DATA t25 TYPE REF TO zcl_lnt_abstract_token.
      t25 = t2->get_last_token( ).
      DATA(t29) = VALUE f( ).
      t29 = t25->start->row.
      DATA t36 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t36 = t25->start->col.
      DATA(t42) = VALUE f( ).
      t42 = strlen( t25->str ).
      DATA(t47) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t47->has = abap_true.
      t47->value = t42.
      result = zcl_lnt_edit_helper=>delete_range( i_file = t1 i_start = t18 i_end = NEW zcl_lnt_position( i_row = t29 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t36 right = t47 op = `+` ) ) ).
      RETURN.
    ENDIF.
    DATA(t48) = VALUE abap_bool( ).
    t48 = abap_true.
    DATA(t50) = VALUE abap_bool( ).
    t50 = abap_true.
    DATA t52 TYPE REF TO zcl_lnt_statement_node.
    DATA t54 TYPE REF TO zcl_lnt_statement_node.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t56 = t1->statements.
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
      t66 = t61->colon.
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t75.
      CLEAR t75.
      IF xsdbool( t66 IS INITIAL ) = abap_true.
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
          IF xsdbool( t48 = abap_true ) = abap_true.
            DATA t94 TYPE REF TO zcl_lnt_position.
            CLEAR t94.
            t94 = t3->start.
            DATA t100 TYPE REF TO zcl_lnt_position.
            CLEAR t100.
            t100 = t66->start.
            IF t94->equals( i_p = t100 ) = abap_true.
              t52 = t61.
            ENDIF.
          ELSE.
            IF xsdbool( t50 = abap_true ) = abap_true.
              DATA t114 TYPE REF TO zcl_lnt_position.
              CLEAR t114.
              t114 = t3->start.
              DATA t120 TYPE REF TO zcl_lnt_position.
              CLEAR t120.
              t120 = t66->start.
              IF t114->equals( i_p = t120 ) = abap_true.
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
      DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t130 = xsdbool( t54 IS INITIAL ).
    ENDIF.
    IF t130 = abap_true.
      DATA t147 TYPE REF TO zcl_lnt_position.
      t147 = t2->get_first_token( )->start.
      DATA t154 TYPE REF TO zcl_lnt_abstract_token.
      t154 = t2->get_last_token( ).
      DATA(t158) = VALUE f( ).
      t158 = t154->start->row.
      DATA t165 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t165 = t154->start->col.
      DATA(t171) = VALUE f( ).
      t171 = strlen( t154->str ).
      DATA(t176) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t176->has = abap_true.
      t176->value = t171.
      result = zcl_lnt_edit_helper=>delete_range( i_file = t1 i_start = t147 i_end = NEW zcl_lnt_position( i_row = t158 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t165 right = t176 op = `+` ) ) ).
      RETURN.
    ENDIF.
    DATA t177 TYPE REF TO zcl_lnt_position.
    t177 = t2->get_first_token( )->start.
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
      DATA t192 TYPE REF TO zcl_lnt_position.
      CLEAR t192.
      t192 = t186->start.
      DATA t198 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t198.
      t198 = t3.
      DATA(t202) = VALUE f( ).
      t202 = t198->start->row.
      DATA t209 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t209.
      t209 = t198->start->col.
      DATA(t215) = VALUE f( ).
      t215 = strlen( t198->str ).
      DATA(t220) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t220->has = abap_true.
      t220->value = t215.
      IF t192->is_after( i_p = NEW zcl_lnt_position( i_row = t202 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t209 right = t220 op = `+` ) ) ) = abap_true.
        t177 = t186->start.
        EXIT.
      ENDIF.
    ENDDO.
    DATA t230 TYPE REF TO zcl_lnt_abstract_token.
    t230 = t2->colon.
    DATA(t232) = VALUE abap_bool( ).
    DATA(t233) = VALUE abap_bool( ).
    t233 = xsdbool( t2->get_last_token( )->str = |.| ).
    t232 = t233.
    IF t233 = abap_true.
      t232 = xsdbool( t52 IS BOUND ).
    ENDIF.
    IF t232 = abap_true.
      DATA t244 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t244 = zcl_lnt_edit_helper=>replace_token( i_file = t1 i_token = t52->get_last_token( ) i_text = |.| ).
      DATA t253 TYPE REF TO zcl_lnt_position.
      DATA t254 TYPE REF TO zcl_lnt_abstract_token.
      t254 = t52->get_last_token( ).
      DATA(t259) = VALUE f( ).
      t259 = t254->start->row.
      DATA t266 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t266 = t254->start->col.
      DATA(t272) = VALUE f( ).
      t272 = strlen( t254->str ).
      DATA(t277) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t277->has = abap_true.
      t277->value = t272.
      t253 = NEW zcl_lnt_position( i_row = t259 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t266 right = t277 op = `+` ) ).
      DATA t279 TYPE REF TO zcl_lnt_abstract_token.
      t279 = t2->get_last_token( ).
      DATA(t283) = VALUE f( ).
      t283 = t279->start->row.
      DATA t290 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t290 = t279->start->col.
      DATA(t296) = VALUE f( ).
      t296 = strlen( t279->str ).
      DATA(t301) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t301->has = abap_true.
      t301->value = t296.
      result = zcl_lnt_edit_helper=>merge( i_fix1 = t244 i_fix2 = zcl_lnt_edit_helper=>delete_range( i_file = t1 i_start = t253 i_end = NEW zcl_lnt_position( i_row = t283 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t290 right = t301 op = `+` ) ) ) ).
      RETURN.
    ELSE.
      DATA(t305) = VALUE abap_bool( ).
      DATA(t306) = VALUE abap_bool( ).
      DATA(t307) = VALUE abap_bool( ).
      DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t307 = xsdbool( t52 IS INITIAL ).
      t306 = t307.
      IF t307 = abap_true.
        t306 = xsdbool( t230 IS BOUND ).
      ENDIF.
      t305 = t306.
      IF t306 = abap_true.
        t305 = xsdbool( t54 IS BOUND ).
      ENDIF.
      IF t305 = abap_true.
        result = zcl_lnt_edit_helper=>delete_range( i_file = t1 i_start = zcl_lnt_edit_helper=>first_after_colon( i_statement = t2 ) i_end = zcl_lnt_edit_helper=>first_after_colon( i_statement = t54 ) ).
        RETURN.
      ELSE.
        result = zcl_lnt_edit_helper=>delete_range( i_file = t1 i_start = t177 i_end = zcl_lnt_edit_helper=>first_after_colon( i_statement = t54 ) ).
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD first_after_colon.
    DATA(t1) = i_statement.
    DATA t2 TYPE REF TO zcl_lnt_position.
    t2 = t1->colon->start.
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
      DATA t21 TYPE REF TO zcl_lnt_position.
      CLEAR t21.
      t21 = t15->start.
      IF t21->is_after( i_p = t2 ) = abap_true.
        result = t15->start.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t32 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    DATA t33 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    DATA(t37) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t37->has = abap_true.
    t37->value = |firstAfterColon, emtpy statement?|.
    t33 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t37 ).
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
    t8 = t2->start.
    DATA t16 TYPE REF TO zcl_lnt_abstract_token.
    t16 = t2.
    DATA t19 TYPE f.
    t19 = t16->start->row.
    DATA t26 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t26 = t16->start->col.
    DATA t32 TYPE f.
    t32 = strlen( t16->str ).
    DATA(t37) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t37->has = abap_true.
    t37->value = t32.
    t7 = NEW zcl_lnt_irange( i_start = t8 i_end = NEW zcl_lnt_position( i_row = t19 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t26 right = t37 op = `+` ) ) ).
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
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t41 ).
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t43 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    t45 = NEW zlnt_runtime_map__4fdf767b61ba( ).
    DATA t47 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t51.
    DATA t54 TYPE REF TO zcl_lnt_itext_edit.
    t54 = NEW zcl_lnt_itext_edit( i_range = t7 i_new_text = || ).
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
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = |range| p1 = t62 ).
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t54->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t54->zlnt_json_ownkeys_70e5fd461788->put( p0 = |newText| p1 = t64 ).
    ENDIF.
    t51->load( ).
    APPEND t54 TO t51->items.
    t51->save( ).
    t47 = t45->set( p0 = t4 p1 = t51 ).
    result = t45.

  ENDMETHOD.

  METHOD delete_range.
    DATA(t2) = i_start.
    DATA(t3) = i_end.
    DATA t5 TYPE string.
    t5 = i_file->get_filename( ).
    DATA t8 TYPE REF TO zcl_lnt_irange.
    t8 = NEW zcl_lnt_irange( i_start = t2 i_end = t3 ).
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
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t8->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t16 ).
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t8->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t8->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t18 ).
    ENDIF.
    DATA t20 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    t20 = NEW zlnt_runtime_map__4fdf767b61ba( ).
    DATA t22 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t26.
    DATA t29 TYPE REF TO zcl_lnt_itext_edit.
    t29 = NEW zcl_lnt_itext_edit( i_range = t8 i_new_text = || ).
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
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t29->zlnt_json_ownkeys_70e5fd461788->put( p0 = |range| p1 = t37 ).
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t29->zlnt_json_ownkeys_70e5fd461788->put( p0 = |newText| p1 = t39 ).
    ENDIF.
    t26->load( ).
    APPEND t29 TO t26->items.
    t26->save( ).
    t22 = t20->set( p0 = t5 p1 = t26 ).
    result = t20.

  ENDMETHOD.

  METHOD insert_at.
    DATA(t2) = i_pos.
    DATA(t3) = i_text.
    DATA t5 TYPE string.
    t5 = i_file->get_filename( ).
    DATA t8 TYPE REF TO zcl_lnt_irange.
    t8 = NEW zcl_lnt_irange( i_start = t2 i_end = t2 ).
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
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t8->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t16 ).
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t8->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t8->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t18 ).
    ENDIF.
    DATA t20 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    t20 = NEW zlnt_runtime_map__4fdf767b61ba( ).
    DATA t22 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t26.
    DATA t29 TYPE REF TO zcl_lnt_itext_edit.
    t29 = NEW zcl_lnt_itext_edit( i_range = t8 i_new_text = t3 ).
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
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t29->zlnt_json_ownkeys_70e5fd461788->put( p0 = |range| p1 = t37 ).
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t29->zlnt_json_ownkeys_70e5fd461788->put( p0 = |newText| p1 = t39 ).
    ENDIF.
    t26->load( ).
    APPEND t29 TO t26->items.
    t26->save( ).
    t22 = t20->set( p0 = t5 p1 = t26 ).
    result = t20.

  ENDMETHOD.

  METHOD replace_token.
    DATA(t2) = i_token.
    DATA(t3) = i_text.
    DATA(t5) = i_file.
    DATA t6 TYPE REF TO zcl_lnt_position.
    t6 = t2->start.
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    t12 = t2.
    DATA t15 TYPE f.
    t15 = t12->start->row.
    DATA t22 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t22 = t12->start->col.
    DATA t28 TYPE f.
    t28 = strlen( t12->str ).
    DATA(t33) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t33->has = abap_true.
    t33->value = t28.
    result = zcl_lnt_edit_helper=>replace_range( i_file = t5 i_start = t6 i_end = NEW zcl_lnt_position( i_row = t15 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t22 right = t33 op = `+` ) ) i_text = t3 ).

  ENDMETHOD.

  METHOD replace_range.
    DATA(t2) = i_start.
    DATA(t3) = i_end.
    DATA(t4) = i_text.
    DATA t6 TYPE string.
    t6 = i_file->get_filename( ).
    DATA t9 TYPE REF TO zcl_lnt_irange.
    t9 = NEW zcl_lnt_irange( i_start = t2 i_end = t3 ).
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
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t9->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t17 ).
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t9->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t9->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t19 ).
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    t21 = NEW zlnt_runtime_map__4fdf767b61ba( ).
    DATA t23 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t27.
    DATA t30 TYPE REF TO zcl_lnt_itext_edit.
    t30 = NEW zcl_lnt_itext_edit( i_range = t9 i_new_text = t4 ).
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
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t30->zlnt_json_ownkeys_70e5fd461788->put( p0 = |range| p1 = t38 ).
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t30->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t30->zlnt_json_ownkeys_70e5fd461788->put( p0 = |newText| p1 = t40 ).
    ENDIF.
    t27->load( ).
    APPEND t30 TO t27->items.
    t27->save( ).
    t23 = t21->set( p0 = t6 p1 = t27 ).
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
