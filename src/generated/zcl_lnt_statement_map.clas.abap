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
    DATA t1 TYPE REF TO zlnt_runtime_map__7946c121f0e1.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_map__7946c121f0e1.
    CLEAR t2.
    DATA(t3) = NEW zlnt_runtime_map__7946c121f0e1( ).
    t2 = t3.
    DATA(t4) = t2.
    t1 = t4.
    me->map = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `map`.
    DATA(t5) = CAST zlnt_runtime_arra_c22708faf2e3( zcl_lnt_artifacts_abap=>get_statements( ) ).
    DATA t6 TYPE REF TO zif_lnt_statement.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
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
        CLEAR t10.
        t10 = t9->as_ref( ).
        t6 ?= t10.
      ELSE.
        t6 ?= t7.
      ENDIF.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t11.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t12.
      DATA t13 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t13.
      DATA(t14) = t6.
      t13 = t14->get_matcher( ).
      t12 = t13->first( ).
      t11 = t12.
      DATA(t15) = VALUE abap_bool( ).
      DATA(t16) = VALUE i( ).
      DATA(t17) = t11.
      t17->load( ).
      t16 = lines( t17->items ).
      DATA(t18) = 0.
      t15 = xsdbool( t16 = t18 ).
      IF t15 = abap_true.
        DATA t19 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t19.
        DATA t20 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        CLEAR t20.
        DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t21.
        DATA(t22) = abap_true.
        IF t22 = abap_true.
          DATA(t23) = |StatementMap, first must have contents|.
          DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t24->has = abap_true.
          t24->value = t23.
          t21 = t24.
        ELSE.
          DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t25.
          t21 = t25.
        ENDIF.
        t20 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t21 ).
        t19 = NEW #( ).
        t19->payload = t20.
        CLEAR t19->source_value.
        IF t20 IS BOUND.
          DATA t26 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t26.
          DATA t27 TYPE REF TO object.
          CLEAR t27.
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
        ENDIF.
        RAISE EXCEPTION t19.
      ENDIF.
      DATA(t28) = t11.
      DATA(t29) = VALUE string( ).
      t28->dense( ).
      DATA(t30) = VALUE i( ).
      DO.
        t28->load( ).
        IF t30 >= lines( t28->items ).
          EXIT.
        ENDIF.
        CLEAR t29.
        READ TABLE t28->items INDEX t30 + 1 INTO t29.
        IF t28->has( t30 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t30 = t30 + 1.
        DATA(t31) = VALUE abap_bool( ).
        DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t32.
        DATA(t33) = me->map.
        DATA(t34) = t29.
        t32 = t33->get( p0 = t34 ).
        t31 = xsdbool( t32 IS BOUND ).
        IF t31 = abap_true.
          DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t35.
          DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t36.
          DATA(t37) = me->map.
          DATA(t38) = t29.
          t36 = t37->get( p0 = t38 ).
          t35 = t36.
          DATA t39 TYPE REF TO zcl_lnt_shape_1adc9d0c.
          CLEAR t39.
          DATA t40 TYPE REF TO zif_lnt_statement.
          CLEAR t40.
          DATA t41 TYPE REF TO zif_lnt_statement.
          CLEAR t41.
          DATA(t42) = abap_true.
          IF t42 = abap_true.
            DATA(t43) = t6.
            t41 = t43.
          ELSE.
            DATA t44 TYPE REF TO zif_lnt_statement.
            CLEAR t44.
            t41 = t44.
          ENDIF.
          t40 = t41.
          DATA t45 TYPE REF TO zif_lnt_statement_runnable.
          CLEAR t45.
          DATA t46 TYPE REF TO zif_lnt_statement_runnable.
          CLEAR t46.
          t45 = t46.
          t39 = NEW zcl_lnt_shape_1adc9d0c( i_statement = t40 i_matcher = t45 ).
          CREATE OBJECT t39->zlnt_view_ownkeys_b0e8086400eb.
          t39->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t47.
          IF t39->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t39->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `statement` p1 = t47 ).
          ENDIF.
          CREATE OBJECT t39->zlnt_json_ownkeys_70e5fd461788.
          t39->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t48) = |statement|.
          DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t49.
          IF t39->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t39->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
          ENDIF.
          t35->load( ).
          APPEND t39 TO t35->items.
          t35->save( ).
        ELSE.
          DATA t50 TYPE REF TO zlnt_runtime_map__7946c121f0e1.
          CLEAR t50.
          DATA(t51) = me->map.
          DATA(t52) = t29.
          DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t53.
          DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t54.
          DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t55.
          CREATE OBJECT t55.
          t54 = t55.
          DATA(t56) = t54.
          DATA t57 TYPE REF TO zcl_lnt_shape_1adc9d0c.
          CLEAR t57.
          DATA t58 TYPE REF TO zif_lnt_statement.
          CLEAR t58.
          DATA t59 TYPE REF TO zif_lnt_statement.
          CLEAR t59.
          DATA(t60) = abap_true.
          IF t60 = abap_true.
            DATA(t61) = t6.
            t59 = t61.
          ELSE.
            DATA t62 TYPE REF TO zif_lnt_statement.
            CLEAR t62.
            t59 = t62.
          ENDIF.
          t58 = t59.
          DATA t63 TYPE REF TO zif_lnt_statement_runnable.
          CLEAR t63.
          DATA t64 TYPE REF TO zif_lnt_statement_runnable.
          CLEAR t64.
          t63 = t64.
          t57 = NEW zcl_lnt_shape_1adc9d0c( i_statement = t58 i_matcher = t63 ).
          CREATE OBJECT t57->zlnt_view_ownkeys_b0e8086400eb.
          t57->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t65.
          IF t57->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t57->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `statement` p1 = t65 ).
          ENDIF.
          CREATE OBJECT t57->zlnt_json_ownkeys_70e5fd461788.
          t57->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t66) = |statement|.
          DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t67.
          IF t57->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t57->zlnt_json_ownkeys_70e5fd461788->put( p0 = t66 p1 = t67 ).
          ENDIF.
          t56->load( ).
          APPEND t57 TO t56->items.
          t56->save( ).
          DATA(t68) = t54.
          t53 = t68.
          t50 = t51->set( p0 = t52 p1 = t53 ).
        ENDIF.
      ENDDO.
    ENDDO.
  ENDMETHOD.

  METHOD lookup.
    DATA(t1) = i_str.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA(t4) = me->map.
    DATA t5 TYPE string.
    DATA(t6) = t1.
    DATA(t7) = strlen( t6 ).
    t5 = t6.
    IF t5 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t5 TO UPPER CASE.
    ELSE.
      t5 = zlnt_runtime_uppe_91169605024d=>full( t5 ).
    ENDIF.
    t3 = t4->get( p0 = t5 ).
    t2 = t3.
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t10) = t2.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    t11 = t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = t9.
    IF t14 IS INITIAL.
      t13 = abap_true.
    ENDIF.
    t8 = t13.
    IF t8 = abap_true.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t15.
      result = t15.
      RETURN.
    ENDIF.
    DATA(t16) = VALUE abap_bool( ).
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t17.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t18.
    DATA t19 TYPE REF TO zcl_lnt_shape_1adc9d0c.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t21) = t2.
    t20 = t21.
    DATA t22 TYPE REF TO object.
    CLEAR t22.
    t20->load( ).
    CLEAR t22.
    READ TABLE t20->items INDEX 1 INTO t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    CLEAR t19.
    IF t22 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t23 ?= t22.
      DATA t24 TYPE REF TO object.
      t24 = t23->as_ref( ).
      t19 ?= t24.
    ELSE.
      t19 ?= t22.
    ENDIF.
    t18 = t19->matcher.
    t17 = t18.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    t25 = t26.
    DATA(t27) = VALUE abap_bool( ).
    DATA(t28) = t17.
    IF t28 IS INITIAL.
      t27 = abap_true.
    ENDIF.
    t16 = t27.
    IF t16 = abap_true.
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t30) = t2.
      t29 = t30.
      DATA t31 TYPE REF TO zcl_lnt_shape_1adc9d0c.
      CLEAR t31.
      DATA t32 TYPE REF TO object.
      CLEAR t32.
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
        DATA(t36) = t31.
        DATA t37 TYPE REF TO zif_lnt_statement_runnable.
        CLEAR t37.
        DATA(t38) = abap_true.
        IF t38 = abap_true.
          DATA t39 TYPE REF TO zif_lnt_statement_runnable.
          DATA t40 TYPE REF TO zif_lnt_statement.
          DATA(t41) = t31.
          t40 = t41->statement.
          t39 = t40->get_matcher( ).
          t37 = t39.
        ELSE.
          DATA t42 TYPE REF TO zif_lnt_statement_runnable.
          CLEAR t42.
          t37 = t42.
        ENDIF.
        t36->matcher = t37.
        DELETE t36->zlnt_record_delet_0597644d88b4 WHERE table_line = `matcher`.
        DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t43.
        IF t36->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t36->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `matcher` p1 = t43 ).
        ENDIF.
        DATA(t44) = |matcher|.
        DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t45.
        IF t36->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t36->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
        ENDIF.
      ENDDO.
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t47) = t2.
    t46 = t47.
    result = t46.

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
