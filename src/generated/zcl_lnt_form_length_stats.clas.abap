* TS: src/utils/form_length_stats.ts:10:1 FormLengthStats
CLASS zcl_lnt_form_length_stats DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-METHODS find_name IMPORTING i_stat TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_form_length_stats IMPLEMENTATION.
  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_position.
    DATA t5 TYPE REF TO zcl_lnt_position.
    CLEAR t5.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = ||.
    t6 = t7.
    DATA t8 TYPE f.
    DATA(t9) = CONV f( 0 ).
    t8 = t9.
    DATA t10 TYPE abap_bool.
    DATA(t11) = abap_false.
    t10 = t11.
    DATA t12 TYPE abap_bool.
    DATA t13 TYPE abap_bool.
    DATA(t14) = t1.
    t13 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_abap_object ).
    t12 = xsdbool( t13 = abap_false ).
    IF t12 = abap_true.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t15.
      result = t15.
      RETURN.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t17 TYPE REF TO zcl_lnt_abap_object.
    DATA t18 TYPE REF TO zcl_lnt_abap_object.
    DATA(t19) = t1.
    DATA t20 TYPE REF TO object.
    t20 = t19.
    t18 ?= t20.
    t17 = t18.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t22) = t17.
    t21 = t22->parsed.
    t16 = t21.
    DATA t23 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t23.
    DATA t24 TYPE REF TO object.
    CLEAR t24.
    DATA(t25) = VALUE i( ).
    DO.
      t16->load( ).
      IF t25 >= lines( t16->items ).
        EXIT.
      ENDIF.
      CLEAR t24.
      READ TABLE t16->items INDEX t25 + 1 INTO t24.
      t25 = t25 + 1.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t26.
      CLEAR t23.
      IF t24 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t26 ?= t24.
        DATA t27 TYPE REF TO object.
        t27 = t26->as_ref( ).
        t23 ?= t27.
      ELSE.
        t23 ?= t24.
      ENDIF.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t29 TYPE REF TO zcl_lnt_abap_file.
      DATA(t30) = t23.
      t29 = t30.
      DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t32) = t29.
      t31 = t32->statements.
      t28 = t31.
      DATA t33 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t33.
      DATA t34 TYPE REF TO object.
      CLEAR t34.
      DATA(t35) = VALUE i( ).
      DO.
        t28->load( ).
        IF t35 >= lines( t28->items ).
          EXIT.
        ENDIF.
        CLEAR t34.
        READ TABLE t28->items INDEX t35 + 1 INTO t34.
        t35 = t35 + 1.
        DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t36.
        CLEAR t33.
        IF t34 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t36 ?= t34.
          DATA t37 TYPE REF TO object.
          t37 = t36->as_ref( ).
          t33 ?= t37.
        ELSE.
          t33 ?= t34.
        ENDIF.
        DATA t38 TYPE REF TO zif_lnt_statement.
        DATA t39 TYPE REF TO zif_lnt_statement.
        DATA(t40) = t33.
        t39 = t40->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t38 = t39.
        DATA t41 TYPE abap_bool.
        DATA(t42) = t38.
        t41 = xsdbool( t42 IS BOUND AND t42 IS INSTANCE OF zcl_lnt_st_form ).
        IF t41 = abap_true.
          DATA t43 TYPE REF TO zcl_lnt_position.
          CLEAR t43.
          DATA(t44) = abap_true.
          IF t44 = abap_true.
            DATA t45 TYPE REF TO zcl_lnt_position.
            DATA t46 TYPE REF TO zcl_lnt_abstract_token.
            DATA t47 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t48) = t33.
            t47 = t48->get_first_token( ).
            t46 = t47.
            DATA t49 TYPE REF TO zcl_lnt_position.
            DATA(t50) = t46.
            t49 = t50->start.
            t45 = t49.
            t43 = t45.
          ELSE.
            DATA t51 TYPE REF TO zcl_lnt_position.
            CLEAR t51.
            t43 = t51.
          ENDIF.
          t4 = t43.
          DATA t52 TYPE string.
          DATA(t53) = t33.
          t52 = zcl_lnt_form_length_stats=>find_name( i_stat = t53 ).
          t6 = t52.
          DATA(t54) = abap_true.
          t10 = t54.
          DATA(t55) = CONV f( 0 ).
          t8 = t55.
        ELSE.
          DATA t56 TYPE abap_bool.
          DATA(t57) = t38.
          t56 = xsdbool( t57 IS BOUND AND t57 IS INSTANCE OF zcl_lnt_end_form ).
          IF t56 = abap_true.
            DATA t58 TYPE abap_bool.
            DATA(t59) = t4.
            t58 = xsdbool( t59 IS BOUND ).
            IF t58 = abap_true.
              DATA(t60) = t2.
              DATA t61 TYPE REF TO zcl_lnt_imethod_length_result.
              DATA t62 TYPE string.
              DATA(t63) = t6.
              t62 = t63.
              DATA t64 TYPE string.
              DATA(t65) = ||.
              t64 = t65.
              DATA t66 TYPE f.
              DATA(t67) = t8.
              t66 = t67.
              DATA t68 TYPE REF TO zcl_lnt_abap_file.
              DATA(t69) = t23.
              t68 = t69.
              DATA t70 TYPE REF TO zcl_lnt_position.
              DATA t71 TYPE REF TO zcl_lnt_position.
              DATA(t72) = t4.
              t71 = t72.
              t70 = t71.
              t61 = NEW zcl_lnt_imethod_length_result( i_class_name = t64 i_name = t62 i_count = t66 i_file = t68 i_pos = t70 ).
              CREATE OBJECT t61->zlnt_view_ownkeys_b0e8086400eb.
              t61->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t73.
              IF t61->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t73 ).
              ENDIF.
              DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t74.
              IF t61->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `className` p1 = t74 ).
              ENDIF.
              DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t75.
              IF t61->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `count` p1 = t75 ).
              ENDIF.
              DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t76.
              IF t61->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `file` p1 = t76 ).
              ENDIF.
              DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t77.
              IF t61->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pos` p1 = t77 ).
              ENDIF.
              CREATE OBJECT t61->zlnt_json_ownkeys_70e5fd461788.
              t61->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t78) = |name|.
              DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t79.
              IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t78 p1 = t79 ).
              ENDIF.
              DATA(t80) = |className|.
              DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t81.
              IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t80 p1 = t81 ).
              ENDIF.
              DATA(t82) = |count|.
              DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t83.
              IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t82 p1 = t83 ).
              ENDIF.
              DATA(t84) = |file|.
              DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t85.
              IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t84 p1 = t85 ).
              ENDIF.
              DATA(t86) = |pos|.
              DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t87.
              IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t86 p1 = t87 ).
              ENDIF.
              t60->load( ).
              APPEND t61 TO t60->items.
              t60->save( ).
            ELSE.
              CONTINUE.
            ENDIF.
            DATA(t88) = abap_false.
            t10 = t88.
          ELSE.
            DATA(t89) = VALUE abap_bool( ).
            DATA t90 TYPE abap_bool.
            DATA t91 TYPE abap_bool.
            DATA(t92) = t10.
            DATA(t93) = abap_true.
            t91 = xsdbool( t92 = t93 ).
            t90 = t91.
            IF t91 = abap_true.
              DATA t94 TYPE abap_bool.
              DATA t95 TYPE abap_bool.
              DATA(t96) = t38.
              t95 = xsdbool( t96 IS BOUND AND t96 IS INSTANCE OF zcl_lnt_st_comment ).
              t94 = xsdbool( t95 = abap_false ).
              t90 = t94.
            ENDIF.
            t89 = t90.
            IF t90 = abap_true.
              DATA t97 TYPE abap_bool.
              DATA t98 TYPE abap_bool.
              DATA(t99) = t38.
              t98 = xsdbool( t99 IS BOUND AND t99 IS INSTANCE OF zcl_lnt_empty ).
              t97 = xsdbool( t98 = abap_false ).
              t89 = t97.
            ENDIF.
            IF t89 = abap_true.
              DATA t100 TYPE f.
              DATA(t101) = t8.
              DATA(t102) = CONV f( 1 ).
              t100 = t101 + t102.
              t8 = t100.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDDO.
    ENDDO.
    DATA(t103) = t2.
    result = t103.

  ENDMETHOD.

  METHOD find_name.
    DATA(t1) = i_stat.
    DATA(t2) = VALUE string( ).
    DATA(t3) = ||.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t5.
    DATA(t6) = t1.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d185_9bfafbfe880c.
    t5 = t6->find_first_expression( i_type_9913 = t7 ).
    t4 = t5.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t4.
    t8 = xsdbool( t9 IS BOUND ).
    IF t8 = abap_true.
      DATA(t10) = VALUE string( ).
      DATA t11 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t12.
      DATA t13 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t13.
      DATA(t14) = t4.
      t13 = t14.
      t12 = t13->get_first_token( ).
      t11 = t12.
      DATA(t15) = VALUE string( ).
      DATA(t16) = t11.
      t15 = t16->str.
      t10 = t15.
      t2 = t10.
    ELSE.
      DATA t17 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t17.
      DATA t18 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      DATA(t20) = abap_true.
      IF t20 = abap_true.
        DATA(t21) = |FormLength, findName, expected FormName|.
        DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t22->has = abap_true.
        t22->value = t21.
        t19 = t22.
      ELSE.
        DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t23.
        t19 = t23.
      ENDIF.
      t18 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t19 ).
      t17 = NEW #( ).
      t17->payload = t18.
      CLEAR t17->source_value.
      IF t18 IS BOUND.
        DATA t24 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t24.
        DATA t25 TYPE REF TO object.
        CLEAR t25.
        CLEAR t24.
        t25 = t18.
        TRY.
            t17->source_value ?= t25.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t17->source_value IS NOT BOUND.
          TRY.
              t24 ?= t18.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t24 IS BOUND.
            t17->source_value = t24->source( ).
          ENDIF.
          IF t17->source_value IS NOT BOUND.
            CREATE OBJECT t17->source_value.
            t17->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t17->source_value->oval = t18.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t17.
    ENDIF.
    DATA(t26) = t2.
    result = t26.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1788_e68bc2dcfb59.
  ENDMETHOD.
ENDCLASS.
