* TS: src/utils/function_length_stats.ts:10:1 FunctionLengthStats
CLASS zcl_lnt_function_length_stats DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_function_length_stats IMPLEMENTATION.
  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_position.
    DATA t6 TYPE string.
    t6 = ||.
    DATA t8 TYPE f.
    DATA(t9) = CONV f( 0 ).
    t8 = t9.
    DATA t10 TYPE abap_bool.
    t10 = abap_false.
    DATA t12 TYPE abap_bool.
    DATA t13 TYPE abap_bool.
    t13 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_abap_object ).
    t12 = xsdbool( t13 = abap_false ).
    IF t12 = abap_true.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t15.
      result = t15.
      RETURN.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zcl_lnt_abap_object.
    DATA t20 TYPE REF TO object.
    t20 = t1.
    t18 ?= t20.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t21 = t18->parsed.
    t16 = t21.
    DATA t23 TYPE REF TO zcl_lnt_abap_file.
    DATA t24 TYPE REF TO object.
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
      DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t31 = t23->statements.
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
        t39 = t33->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t38 = t39.
        DATA t41 TYPE abap_bool.
        t41 = xsdbool( t38 IS BOUND AND t38 IS INSTANCE OF zcl_lnt_st_function_module ).
        IF t41 = abap_true.
          DATA t47 TYPE REF TO zcl_lnt_abstract_token.
          t47 = t33->get_first_token( ).
          DATA t49 TYPE REF TO zcl_lnt_position.
          t49 = t47->start.
          t4 = t49.
          DATA t52 TYPE string.
          t52 = zcl_lnt_function_length_stats=>find_name( i_stat = t33 ).
          t6 = t52.
          t10 = abap_true.
          DATA(t55) = CONV f( 0 ).
          t8 = t55.
        ELSE.
          DATA t56 TYPE abap_bool.
          t56 = xsdbool( t38 IS BOUND AND t38 IS INSTANCE OF zcl_lnt_end_function ).
          IF t56 = abap_true.
            DATA t58 TYPE abap_bool.
            t58 = xsdbool( t4 IS BOUND ).
            IF t58 = abap_true.
              DATA t61 TYPE REF TO zcl_lnt_imethod_length_result.
              DATA t62 TYPE string.
              t62 = t6.
              DATA t64 TYPE string.
              t64 = ||.
              DATA t66 TYPE f.
              t66 = t8.
              DATA t68 TYPE REF TO zcl_lnt_abap_file.
              t68 = t23.
              DATA t70 TYPE REF TO zcl_lnt_position.
              t70 = t4.
              t61 = NEW zcl_lnt_imethod_length_result( i_class_name = t64 i_name = t62 i_count = t66 i_file = t68 i_pos = t70 ).
              CREATE OBJECT t61->zlnt_view_ownkeys_b0e8086400eb.
              t61->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t73.
              t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t73 ).
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
              t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t78 p1 = t79 ).
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
              t2->load( ).
              APPEND t61 TO t2->items.
              t2->save( ).
            ELSE.
              CONTINUE.
            ENDIF.
            t10 = abap_false.
          ELSE.
            DATA(t89) = VALUE abap_bool( ).
            DATA t90 TYPE abap_bool.
            DATA t91 TYPE abap_bool.
            t91 = xsdbool( t10 = abap_true ).
            t90 = t91.
            IF t91 = abap_true.
              DATA t94 TYPE abap_bool.
              DATA t95 TYPE abap_bool.
              t95 = xsdbool( t38 IS BOUND AND t38 IS INSTANCE OF zcl_lnt_st_comment ).
              t94 = xsdbool( t95 = abap_false ).
              t90 = t94.
            ENDIF.
            t89 = t90.
            IF t90 = abap_true.
              DATA t97 TYPE abap_bool.
              DATA t98 TYPE abap_bool.
              t98 = xsdbool( t38 IS BOUND AND t38 IS INSTANCE OF zcl_lnt_empty ).
              t97 = xsdbool( t98 = abap_false ).
              t89 = t97.
            ENDIF.
            IF t89 = abap_true.
              DATA t100 TYPE f.
              DATA(t102) = CONV f( 1 ).
              t100 = t8 + t102.
              t8 = t100.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDDO.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD find_name.
    DATA t2 TYPE REF TO zcl_lnt_expression_node.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    t3 = i_stat->find_first_expression( i_type_9913 = t5 ).
    t2 = t3.
    DATA(t6) = VALUE abap_bool( ).
    t6 = xsdbool( t2 IS BOUND ).
    IF t6 = abap_true.
      DATA(t8) = VALUE string( ).
      DATA t10 TYPE REF TO zcl_lnt_abstract_token.
      DATA t11 TYPE REF TO zcl_lnt_expression_node.
      t11 = t2.
      t10 = t11->get_first_token( ).
      DATA(t13) = VALUE string( ).
      t13 = t10->str.
      t8 = t13.
      result = t8.
      RETURN.
    ELSE.
      DATA t15 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t16 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t19) = |FunctionLength, findName, expected Field|.
      DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t20->has = abap_true.
      t20->value = t19.
      t17 = t20.
      t16 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t17 ).
      t15 = NEW #( ).
      t15->payload = t16.
      CLEAR t15->source_value.
      DATA t22 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t23 TYPE REF TO object.
      t23 = t16.
      TRY.
          t15->source_value ?= t23.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t15->source_value IS NOT BOUND.
        TRY.
            t22 ?= t16.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t22 IS BOUND.
          t15->source_value = t22->source( ).
        ENDIF.
        IF t15->source_value IS NOT BOUND.
          CREATE OBJECT t15->source_value.
          t15->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t15->source_value->oval = t16.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t15.
    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1789_345ee573e5b8.
  ENDMETHOD.
ENDCLASS.
