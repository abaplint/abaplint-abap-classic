* TS: src/abap/2_statements/statement_parser.ts:23:1 StatementMap
CLASS zcl_lnt_statement_map DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA map TYPE REF TO zlnt_runtime_map__7946c121f0e1.
    METHODS constructor.
    METHODS lookup IMPORTING i_str TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_statement_map IMPLEMENTATION.
  METHOD constructor.
    me->map = NEW zlnt_runtime_map__7946c121f0e1( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `map`.
    DATA(t5) = CAST zlnt_runtime_arra_c22708faf2e3( zcl_lnt_artifacts_abap=>get_statements( ) ).
    DATA t6 TYPE REF TO zif_lnt_statement.
    DATA t7 TYPE REF TO object.
    DATA(t8) = VALUE i( ).
    DO.
      t5->load( ).
      IF t8 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t5->items INDEX t8 + 1 INTO t7.
      t8 = t8 + 1.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      CLEAR t6.
      IF t7 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t9 ?= t7.
        DATA t10 TYPE REF TO object.
        t10 = t9->as_ref( ).
        t6 ?= t10.
      ELSE.
        t6 ?= t7.
      ENDIF.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t11.
      t11 = t6->get_matcher( )->first( ).
      t11->load( ).
      IF xsdbool( lines( t11->items ) = 0 ) = abap_true.
        DATA t19 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        DATA t20 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t24->has = abap_true.
        t24->value = |StatementMap, first must have contents|.
        t20 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t24 ).
        t19 = NEW #( ).
        t19->payload = t20.
        CLEAR t19->source_value.
        DATA t26 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t26.
        DATA t27 TYPE REF TO object.
        CLEAR t26.
        t27 = t20.
        TRY.
            t19->source_value ?= t27.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t19->source_value IS NOT BOUND.
          TRY.
              t26 ?= t20.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t26 IS BOUND.
            t19->source_value = t26->source( ).
          ENDIF.
          IF t19->source_value IS NOT BOUND.
            CREATE OBJECT t19->source_value.
            t19->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t19->source_value->oval = t20.
          ENDIF.
        ENDIF.
        RAISE EXCEPTION t19.
      ENDIF.
      DATA(t29) = VALUE string( ).
      t11->dense( ).
      DATA(t30) = VALUE i( ).
      DO.
        t11->load( ).
        IF t30 >= lines( t11->items ).
          EXIT.
        ENDIF.
        CLEAR t29.
        READ TABLE t11->items INDEX t30 + 1 INTO t29.
        IF t11->has( t30 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t30 = t30 + 1.
        DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t32 = me->map->get( p0 = t29 ).
        IF xsdbool( t32 IS BOUND ) = abap_true.
          DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t35 = me->map->get( p0 = t29 ).
          DATA t39 TYPE REF TO zcl_lnt_shape_1adc9d0c.
          DATA t40 TYPE REF TO zif_lnt_statement.
          CLEAR t40.
          t40 = t6.
          DATA t45 TYPE REF TO zif_lnt_statement_runnable.
          CLEAR t45.
          CLEAR t45.
          t39 = NEW zcl_lnt_shape_1adc9d0c( i_statement = t40 i_matcher = t45 ).
          CREATE OBJECT t39->zlnt_view_ownkeys_b0e8086400eb.
          t39->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t47.
          t39->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `statement` p1 = t47 ).
          CREATE OBJECT t39->zlnt_json_ownkeys_70e5fd461788.
          t39->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t49.
          t39->zlnt_json_ownkeys_70e5fd461788->put( p0 = |statement| p1 = t49 ).
          t35->load( ).
          APPEND t39 TO t35->items.
          t35->save( ).
        ELSE.
          DATA t50 TYPE REF TO zlnt_runtime_map__7946c121f0e1.
          DATA(t51) = me->map.
          DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t54.
          CREATE OBJECT t54.
          DATA t57 TYPE REF TO zcl_lnt_shape_1adc9d0c.
          DATA t58 TYPE REF TO zif_lnt_statement.
          CLEAR t58.
          t58 = t6.
          DATA t63 TYPE REF TO zif_lnt_statement_runnable.
          CLEAR t63.
          CLEAR t63.
          t57 = NEW zcl_lnt_shape_1adc9d0c( i_statement = t58 i_matcher = t63 ).
          CREATE OBJECT t57->zlnt_view_ownkeys_b0e8086400eb.
          t57->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t65.
          t57->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `statement` p1 = t65 ).
          CREATE OBJECT t57->zlnt_json_ownkeys_70e5fd461788.
          t57->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t67.
          t57->zlnt_json_ownkeys_70e5fd461788->put( p0 = |statement| p1 = t67 ).
          t54->load( ).
          APPEND t57 TO t54->items.
          t54->save( ).
          t50 = t51->set( p0 = t29 p1 = t54 ).
        ENDIF.
      ENDDO.
    ENDDO.
  ENDMETHOD.

  METHOD lookup.
    DATA(t1) = i_str.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = me->map.
    DATA t5 TYPE string.
    DATA(t7) = strlen( t1 ).
    t5 = t1.
    IF t5 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t5 TO UPPER CASE.
    ELSE.
      t5 = zlnt_runtime_uppe_91169605024d=>full( t5 ).
    ENDIF.
    t2 = t4->get( p0 = t5 ).
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    DATA t19 TYPE REF TO zcl_lnt_shape_1adc9d0c.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t20 = t2.
    DATA t22 TYPE REF TO object.
    t20->load( ).
    READ TABLE t20->items INDEX 1 INTO t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t22 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t23 ?= t22.
      DATA t24 TYPE REF TO object.
      t24 = t23->as_ref( ).
      t19 ?= t24.
    ELSE.
      t19 ?= t22.
    ENDIF.
    t18 = t19->matcher.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t18 IS INITIAL ) = abap_true.
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t29 = t2.
      DATA t31 TYPE REF TO zcl_lnt_shape_1adc9d0c.
      DATA t32 TYPE REF TO object.
      DATA(t33) = VALUE i( ).
      DO.
        t29->load( ).
        IF t33 >= lines( t29->items ).
          EXIT.
        ENDIF.
        CLEAR t32.
        READ TABLE t29->items INDEX t33 + 1 INTO t32.
        t33 = t33 + 1.
        DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t34.
        CLEAR t31.
        IF t32 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t34 ?= t32.
          DATA t35 TYPE REF TO object.
          t35 = t34->as_ref( ).
          t31 ?= t35.
        ELSE.
          t31 ?= t32.
        ENDIF.
        t31->matcher = t31->statement->get_matcher( ).
        DELETE t31->zlnt_record_delet_0597644d88b4 WHERE table_line = `matcher`.
        DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t43.
        IF t31->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t31->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `matcher` p1 = t43 ).
        ENDIF.
        DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t45.
        IF t31->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t31->zlnt_json_ownkeys_70e5fd461788->put( p0 = |matcher| p1 = t45 ).
        ENDIF.
      ENDDO.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d359_ec67911716eb.
  ENDMETHOD.
ENDCLASS.
