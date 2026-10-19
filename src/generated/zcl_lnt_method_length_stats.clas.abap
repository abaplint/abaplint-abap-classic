* TS: src/utils/method_length_stats.ts:19:1 MethodLengthStats
CLASS zcl_lnt_method_length_stats DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_method_length_stats IMPLEMENTATION.
  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zcl_lnt_position.
    DATA t6 TYPE string.
    t6 = ||.
    DATA t8 TYPE f.
    t8 = CONV f( 0 ).
    DATA t10 TYPE abap_bool.
    t10 = abap_false.
    IF xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_abap_object ) = abap_false ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zcl_lnt_abap_object.
    DATA t20 TYPE REF TO object.
    t20 = t1.
    t18 ?= t20.
    t16 = t18->parsed.
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
      DATA t28 TYPE string.
      t28 = ||.
      DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t30 = t23->statements.
      DATA t35 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t35.
      DATA t36 TYPE REF TO object.
      CLEAR t36.
      DATA(t37) = VALUE i( ).
      DO.
        t30->load( ).
        IF t37 >= lines( t30->items ).
          EXIT.
        ENDIF.
        CLEAR t36.
        READ TABLE t30->items INDEX t37 + 1 INTO t36.
        t37 = t37 + 1.
        DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t38.
        CLEAR t35.
        IF t36 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t38 ?= t36.
          DATA t39 TYPE REF TO object.
          t39 = t38->as_ref( ).
          t35 ?= t39.
        ELSE.
          t35 ?= t36.
        ENDIF.
        DATA t40 TYPE REF TO zif_lnt_statement.
        t40 = t35->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        IF xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_mthd_implmnttn ) = abap_true.
          t4 = t35->get_first_token( )->start.
          t6 = zcl_lnt_method_length_stats=>find_name( i_stat = t35 ).
          t10 = abap_true.
          t8 = CONV f( 0 ).
        ELSE.
          IF xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_clss_implmnttn ) = abap_true.
            DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t61.
            DATA t63 TYPE REF TO zcl_lnt_expression_node.
            DATA(t66) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
            t63 = t35->find_first_expression( i_type_9913 = t66 ).
            DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t67.
            IF xsdbool( t63 IS INITIAL ) = abap_true.
              CLEAR t67.
            ELSE.
              DATA t71 TYPE string.
              t71 = t63->concat_tokens( ).
              DATA(t74) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t74->has = abap_true.
              t74->value = t71.
              t67 = t74.
            ENDIF.
            t61 = t67.
            DATA(t75) = VALUE string( ).
            DATA(t76) = VALUE abap_bool( ).
            IF t61 IS BOUND.
              IF t61->has = abap_true.
                t76 = xsdbool( strlen( t61->value ) > 0 ).
              ENDIF.
            ENDIF.
            IF t76 = abap_true.
              t75 = t61->value.
            ELSE.
              t75 = |INTERNAL_ERROR|.
            ENDIF.
            t28 = t75.
          ELSE.
            IF xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_end_method ) = abap_true.
              IF xsdbool( t4 IS BOUND ) = abap_true.
                DATA t86 TYPE REF TO zcl_lnt_imethod_length_result.
                t86 = NEW zcl_lnt_imethod_length_result( i_class_name = t28 i_name = t6 i_count = t8 i_file = t23 i_pos = t4 ).
                CREATE OBJECT t86->zlnt_view_ownkeys_b0e8086400eb.
                t86->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t98.
                t86->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t98 ).
                DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t99.
                IF t86->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t86->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `className` p1 = t99 ).
                ENDIF.
                DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t100.
                IF t86->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t86->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `count` p1 = t100 ).
                ENDIF.
                DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t101.
                IF t86->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t86->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `file` p1 = t101 ).
                ENDIF.
                DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t102.
                IF t86->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t86->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pos` p1 = t102 ).
                ENDIF.
                CREATE OBJECT t86->zlnt_json_ownkeys_70e5fd461788.
                t86->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t104.
                t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t104 ).
                DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t106.
                IF t86->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = |className| p1 = t106 ).
                ENDIF.
                DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t108.
                IF t86->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = |count| p1 = t108 ).
                ENDIF.
                DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t110.
                IF t86->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = |file| p1 = t110 ).
                ENDIF.
                DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t112.
                IF t86->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t86->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pos| p1 = t112 ).
                ENDIF.
                t2->load( ).
                APPEND t86 TO t2->items.
                t2->save( ).
              ELSE.
                CONTINUE.
              ENDIF.
              t10 = abap_false.
            ELSE.
              DATA(t114) = VALUE abap_bool( ).
              DATA t115 TYPE abap_bool.
              DATA t116 TYPE abap_bool.
              t116 = xsdbool( t10 = abap_true ).
              t115 = t116.
              IF t116 = abap_true.
                t115 = xsdbool( xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_comment ) = abap_false ).
              ENDIF.
              t114 = t115.
              IF t115 = abap_true.
                t114 = xsdbool( xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_empty ) = abap_false ).
              ENDIF.
              IF t114 = abap_true.
                DATA(t127) = CONV f( 1 ).
                t8 = t8 + t127.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDDO.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD find_name.
    DATA(t2) = VALUE string( ).
    t2 = ||.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d88_73c97f542216fb.
    t4 = i_stat->find_first_expression( i_type_9913 = t7 ).
    IF xsdbool( t4 IS BOUND ) = abap_true.
      t2 = t4->get_first_token( )->str.
    ELSE.
      DATA t17 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t18 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t22->has = abap_true.
      t22->value = |MethodLength, findName, expected MethodName|.
      t18 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t22 ).
      t17 = NEW #( ).
      t17->payload = t18.
      CLEAR t17->source_value.
      DATA t24 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t25 TYPE REF TO object.
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
      RAISE EXCEPTION t17.
    ENDIF.
    result = t2.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1794_d2bc4af83ba3.
  ENDMETHOD.
ENDCLASS.
