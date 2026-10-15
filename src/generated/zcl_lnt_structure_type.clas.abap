* TS: src/abap/types/basic/structure_type.ts:10:1 StructureType
CLASS zcl_lnt_structure_type DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_type CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_48da8d64.
    INTERFACES zif_lnt_union_2724f734.
    DATA indexed TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA components TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_components TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_qualified_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_ddic_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_description
    TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    METHODS get_components RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_component_by_name IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS to_text REDEFINITION.
    METHODS is_generic REDEFINITION.
    METHODS to_abap REDEFINITION.
    METHODS contains_void REDEFINITION.
    METHODS to_cds REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_structure_type IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_components.
    DATA(t2) = i_qualified_name.
    DATA(t3) = i_ddic_name.
    DATA(t4) = i_description.
    DATA t5 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA t7 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t7.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t8.
      DATA(t9) = t2.
      t8 = t9.
      DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t10.
      DATA(t11) = t3.
      t10 = t11.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t12.
      DATA(t13) = t4.
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t14.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t15.
      t14 = t15.
      DATA t16 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t16.
      DATA t17 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t17.
      t16 = t17.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      t18 = t19.
      t7 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t8 i_conversion_exit = t14 i_derived_from_constant = t16 i_ddic_name = t10 i_rtti_name = t18 i_description = t12 ).
      CREATE OBJECT t7->zlnt_view_ownkeys_b0e8086400eb.
      t7->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t20.
      IF t7->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t20 ).
      ENDIF.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      IF t7->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ddicName` p1 = t21 ).
      ENDIF.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t22.
      IF t7->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t22 ).
      ENDIF.
      CREATE OBJECT t7->zlnt_json_ownkeys_70e5fd461788.
      t7->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t23) = |qualifiedName|.
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t24.
      IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = t23 p1 = t24 ).
      ENDIF.
      DATA(t25) = |ddicName|.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t26.
      IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = t25 p1 = t26 ).
      ENDIF.
      DATA(t27) = |description|.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t28.
      IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = t27 p1 = t28 ).
      ENDIF.
      t5 = t7.
    ELSE.
      DATA t29 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t29.
      t5 = t29.
    ENDIF.
    super->constructor( i_input_967e = t5 ).
    DATA(t30) = VALUE abap_bool( ).
    DATA(t31) = VALUE i( ).
    DATA(t32) = t1.
    t32->load( ).
    t31 = lines( t32->items ).
    DATA(t33) = 0.
    t30 = xsdbool( t31 = t33 ).
    IF t30 = abap_true.
      DATA t34 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t34.
      DATA t35 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t35.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t36.
      DATA(t37) = abap_true.
      IF t37 = abap_true.
        DATA(t38) = |Structure does not contain any components|.
        DATA(t39) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t39->has = abap_true.
        t39->value = t38.
        t36 = t39.
      ELSE.
        DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t40.
        t36 = t40.
      ENDIF.
      t35 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t36 ).
      t34 = NEW #( ).
      t34->payload = t35.
      CLEAR t34->source_value.
      IF t35 IS BOUND.
        DATA t41 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t41.
        DATA t42 TYPE REF TO object.
        CLEAR t42.
        CLEAR t41.
        t42 = t35.
        TRY.
            t34->source_value ?= t42.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t34->source_value IS NOT BOUND.
          TRY.
              t41 ?= t35.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t41 IS BOUND.
            t34->source_value = t41->source( ).
          ENDIF.
          IF t34->source_value IS NOT BOUND.
            CREATE OBJECT t34->source_value.
            t34->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t34->source_value->oval = t35.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t34.
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    CLEAR t44.
    DATA(t45) = NEW zlnt_runtime_map__41b3bb94df3d( ).
    t44 = t45.
    DATA(t46) = t44.
    t43 = t46.
    me->indexed = t43.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `indexed`.
    DATA(t47) = t1.
    DATA t48 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t48.
    DATA t49 TYPE REF TO object.
    CLEAR t49.
    DATA(t50) = VALUE i( ).
    DO.
      t47->load( ).
      IF t50 >= lines( t47->items ).
        EXIT.
      ENDIF.
      CLEAR t49.
      READ TABLE t47->items INDEX t50 + 1 INTO t49.
      t50 = t50 + 1.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t51.
      CLEAR t48.
      IF t49 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t51 ?= t49.
        CLEAR t48.
        IF t51 IS BOUND.
          IF t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                t48 ?= t51->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF t48 IS NOT BOUND.
            IF t51->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t51->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t51->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t51->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
              DATA t52 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t52.
              IF t51->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t52 ?= t51->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t52->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA(t53) = VALUE string( ).
            DATA t54 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t54.
            DATA t55 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t55.
            DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t56.
            t48 = NEW zcl_lnt_istructure_component( view_source = t51 i_name = t53 i_type_9913 = t54 i_as_include = t55 i_suffix = t56 ).
          ENDIF.
        ENDIF.
      ELSE.
        t48 ?= t49.
      ENDIF.
      DATA(t57) = VALUE string( ).
      DATA(t58) = VALUE string( ).
      DATA(t59) = VALUE string( ).
      DATA(t60) = t48.
      t59 = t60->zlnt_view_read_sr_dae473e680bd( ).
      DATA(t61) = strlen( t59 ).
      t58 = t59.
      IF t58 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t58 TO UPPER CASE.
      ELSE.
        t58 = zlnt_runtime_uppe_91169605024d=>full( t58 ).
      ENDIF.
      t57 = t58.
      DATA(t62) = VALUE abap_bool( ).
      DATA t63 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t63.
      DATA t64 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t64.
      DATA(t65) = me->indexed.
      DATA(t66) = t57.
      t64 = t65->get( p0 = t66 ).
      t63 = t64.
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t67.
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t68.
      t67 = t68.
      DATA(t69) = VALUE abap_bool( ).
      DATA(t70) = VALUE abap_bool( ).
      DATA(t71) = t63.
      IF t71 IS INITIAL.
        t70 = abap_true.
      ENDIF.
      t69 = xsdbool( t70 = abap_false ).
      t62 = t69.
      IF t62 = abap_true.
        DATA t72 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t72.
        DATA t73 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        CLEAR t73.
        DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t74.
        DATA(t75) = abap_true.
        IF t75 = abap_true.
          DATA(t76) = VALUE string( ).
          DATA(t77) = VALUE string( ).
          DATA(t78) = VALUE string( ).
          DATA(t79) = |Structure, duplicate field name "|.
          DATA(t80) = t57.
          DATA(t81) = strlen( t79 ).
          t78 = |{ t79 }{ t80 }|.
          DATA(t82) = |", |.
          DATA(t83) = strlen( t78 ).
          t77 = |{ t78 }{ t82 }|.
          DATA(t84) = VALUE string( ).
          DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t85.
          DATA(t86) = t2.
          t85 = t86.
          DATA(t87) = VALUE string( ).
          DATA(t88) = VALUE abap_bool( ).
          DATA(t89) = t85.
          IF t89 IS INITIAL.
            t88 = abap_true.
          ELSEIF t89->has = abap_false.
            t88 = abap_true.
          ENDIF.
          IF t88 = abap_true.
            DATA(t90) = |undefined|.
            t87 = t90.
          ELSE.
            DATA(t91) = VALUE string( ).
            DATA(t92) = t85.
            t91 = t92->value.
            t87 = t91.
          ENDIF.
          t84 = t87.
          DATA(t93) = strlen( t77 ).
          t76 = |{ t77 }{ t84 }|.
          DATA(t94) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t94->has = abap_true.
          t94->value = t76.
          t74 = t94.
        ELSE.
          DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t95.
          t74 = t95.
        ENDIF.
        t73 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t74 ).
        t72 = NEW #( ).
        t72->payload = t73.
        CLEAR t72->source_value.
        IF t73 IS BOUND.
          DATA t96 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t96.
          DATA t97 TYPE REF TO object.
          CLEAR t97.
          CLEAR t96.
          t97 = t73.
          TRY.
              t72->source_value ?= t97.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t72->source_value IS NOT BOUND.
            TRY.
                t96 ?= t73.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t96 IS BOUND.
              t72->source_value = t96->source( ).
            ENDIF.
            IF t72->source_value IS NOT BOUND.
              CREATE OBJECT t72->source_value.
              t72->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t72->source_value->oval = t73.
            ENDIF.
          ENDIF.
        ENDIF.
        RAISE EXCEPTION t72.
      ENDIF.
      DATA t98 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      CLEAR t98.
      DATA(t99) = me->indexed.
      DATA(t100) = t57.
      DATA t101 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t101.
      DATA(t102) = t48.
      t101 = t102->zlnt_view_read_sr_455340cd1e80( ).
      t98 = t99->set( p0 = t100 p1 = t101 ).
    ENDDO.
    DATA(t103) = t1.
    me->components = t103.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `components`.
  ENDMETHOD.

  METHOD get_components.
    DATA(t1) = me->components.
    result = t1.

  ENDMETHOD.

  METHOD get_component_by_name.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t2.
    DATA(t3) = me->indexed.
    DATA t4 TYPE string.
    DATA(t5) = t1.
    DATA(t6) = strlen( t5 ).
    t4 = t5.
    IF t4 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t4 TO UPPER CASE.
    ELSE.
      t4 = zlnt_runtime_uppe_91169605024d=>full( t4 ).
    ENDIF.
    t2 = t3->get( p0 = t4 ).
    result = t2.

  ENDMETHOD.

  METHOD to_text.
    DATA(t1) = i_level.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = me->components.
    DATA t5 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    DATA(t7) = VALUE i( ).
    DO.
      t4->load( ).
      IF t7 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t4->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        CLEAR t5.
        IF t8 IS BOUND.
          IF t8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                t5 ?= t8->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF t5 IS NOT BOUND.
            IF t8->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t8->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t8->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t8->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
              DATA t9 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t9.
              IF t8->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t9 ?= t8->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t9->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA(t10) = VALUE string( ).
            DATA t11 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t11.
            DATA t12 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t12.
            DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t13.
            t5 = NEW zcl_lnt_istructure_component( view_source = t8 i_name = t10 i_type_9913 = t11 i_as_include = t12 i_suffix = t13 ).
          ENDIF.
        ENDIF.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA(t14) = t2.
      DATA(t15) = VALUE string( ).
      DATA(t16) = VALUE string( ).
      DATA(t17) = VALUE string( ).
      DATA(t18) = t5.
      t17 = t18->zlnt_view_read_sr_dae473e680bd( ).
      DATA(t19) = | TYPE |.
      DATA(t20) = strlen( t17 ).
      t16 = |{ t17 }{ t19 }|.
      DATA(t21) = VALUE string( ).
      DATA t22 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t22.
      DATA(t23) = t5.
      t22 = t23->zlnt_view_read_sr_455340cd1e80( ).
      DATA(t24) = VALUE f( ).
      DATA(t25) = t1.
      DATA(t26) = CONV f( 1 ).
      t24 = t25 + t26.
      t21 = t22->to_text( i_level = t24 ).
      DATA(t27) = strlen( t16 ).
      t15 = |{ t16 }{ t21 }|.
      t14->load( ).
      APPEND t15 TO t14->items.
      t14->save( ).
    ENDDO.
    DATA(t28) = VALUE string( ).
    DATA(t29) = VALUE string( ).
    DATA(t30) = VALUE string( ).
    DATA(t31) = |  |.
    t30 = t31.
    DATA(t32) = VALUE string( ).
    DATA(t33) = t30.
    DATA(t34) = t1.
    DATA(t35) = strlen( t33 ).
    DATA(t36) = CONV f( trunc( t34 ) ).
    IF t36 < 0.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    CLEAR t32.
    IF t33 IS NOT INITIAL.
      IF t36 > 2147483647 OR t36 * strlen( t33 ) > 2147483647.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t32 = repeat( val = t33 occ = CONV i( t36 ) ).
    ENDIF.
    t29 = t32.
    t28 = t29.
    DATA(t37) = VALUE string( ).
    DATA(t38) = VALUE string( ).
    DATA(t39) = VALUE string( ).
    DATA(t40) = |Structure\n|.
    DATA(t41) = t28.
    DATA(t42) = strlen( t40 ).
    t39 = |{ t40 }{ t41 }|.
    DATA(t43) = |* |.
    DATA(t44) = strlen( t39 ).
    t38 = |{ t39 }{ t43 }|.
    DATA(t45) = VALUE string( ).
    DATA(t46) = t2.
    DATA(t47) = VALUE string( ).
    DATA(t48) = VALUE string( ).
    DATA(t49) = |\n|.
    DATA(t50) = t28.
    DATA(t51) = strlen( t49 ).
    t48 = |{ t49 }{ t50 }|.
    DATA(t52) = |* |.
    DATA(t53) = strlen( t48 ).
    t47 = |{ t48 }{ t52 }|.
    DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t54->has = abap_true.
    t54->value = t47.
    t45 = t46->join( p0 = t54 ).
    DATA(t55) = strlen( t38 ).
    t37 = |{ t38 }{ t45 }|.
    result = t37.

  ENDMETHOD.

  METHOD is_generic.
    DATA(t1) = abap_false.
    result = t1.

  ENDMETHOD.

  METHOD to_abap.
    DATA t1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t4) = me.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t7 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t8) = t3.
    t7 = t8->data_56cc.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = t6.
    IF t11 IS INITIAL.
      t10 = abap_true.
    ENDIF.
    IF t10 = abap_true.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t12.
      t9 = t12.
    ELSE.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t14 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA(t15) = t6.
      t14 = t15.
      t13 = t14->zlnt_view_read_sr_c978da49ae47( ).
      t9 = t13.
    ENDIF.
    t5 = t9.
    t2 = t5.
    t1 = t2.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = t1.
    IF t17 IS BOUND.
      IF t17->has = abap_true.
        t16 = xsdbool( strlen( t17->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t16 = abap_true.
      DATA t18 TYPE string.
      DATA(t19) = t1.
      t18 = t19->value.
      result = t18.
      RETURN.
    ENDIF.
    DATA(t20) = |StructureTypetoABAPtodo|.
    result = t20.

  ENDMETHOD.

  METHOD contains_void.
    DATA(t1) = VALUE abap_bool( ).
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = abap_false.
    t2 = t3.
    DATA(t4) = me->components.
    DATA t5 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    DATA(t7) = VALUE i( ).
    DO.
      t4->load( ).
      IF t7 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t4->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        CLEAR t5.
        IF t8 IS BOUND.
          IF t8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                t5 ?= t8->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF t5 IS NOT BOUND.
            IF t8->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t8->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t8->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t8->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
              DATA t9 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t9.
              IF t8->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t9 ?= t8->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t9->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA(t10) = VALUE string( ).
            DATA t11 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t11.
            DATA t12 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t12.
            DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t13.
            t5 = NEW zcl_lnt_istructure_component( view_source = t8 i_name = t10 i_type_9913 = t11 i_as_include = t12 i_suffix = t13 ).
          ENDIF.
        ENDIF.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA(t14) = VALUE abap_bool( ).
      DATA t15 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t15.
      DATA(t16) = t5.
      t15 = t16->zlnt_view_read_sr_455340cd1e80( ).
      t14 = t15->contains_void( ).
      IF t14 = abap_true.
        DATA(t17) = abap_true.
        t2 = t17.
        EXIT.
      ENDIF.
    ENDDO.
    DATA(t18) = t2.
    t1 = t18.
    result = t1.

  ENDMETHOD.

  METHOD to_cds.
    DATA(t1) = |abap.TODO_STRUCTURE|.
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1042_57ec2010231a.
  ENDMETHOD.

  METHOD zif_lnt_union_48da8d64~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_48da8d64~contains_void.
    result = me->contains_void( ).
  ENDMETHOD.

  METHOD zif_lnt_union_48da8d64~get_abstract_type_data.
    result = me->get_abstract_type_data( ).
  ENDMETHOD.

  METHOD zif_lnt_union_48da8d64~get_conversion_exit.
    result = me->get_conversion_exit( ).
  ENDMETHOD.

  METHOD zif_lnt_union_48da8d64~get_ddic_name.
    result = me->get_ddic_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_48da8d64~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_48da8d64~get_qualified_name.
    result = me->get_qualified_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_48da8d64~get_rtti_name.
    result = me->get_rtti_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_48da8d64~is_generic.
    result = me->is_generic( ).
  ENDMETHOD.

  METHOD zif_lnt_union_48da8d64~to_abap.
    result = me->to_abap( ).
  ENDMETHOD.

  METHOD zif_lnt_union_48da8d64~to_cds.
    result = me->to_cds( ).
  ENDMETHOD.

  METHOD zif_lnt_union_48da8d64~to_text.
    result = me->to_text( i_level = i_level ).
  ENDMETHOD.

  METHOD zif_lnt_union_2724f734~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_2724f734~contains_void.
    result = me->contains_void( ).
  ENDMETHOD.

  METHOD zif_lnt_union_2724f734~get_abstract_type_data.
    result = me->get_abstract_type_data( ).
  ENDMETHOD.

  METHOD zif_lnt_union_2724f734~get_conversion_exit.
    result = me->get_conversion_exit( ).
  ENDMETHOD.

  METHOD zif_lnt_union_2724f734~get_ddic_name.
    result = me->get_ddic_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_2724f734~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_2724f734~get_qualified_name.
    result = me->get_qualified_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_2724f734~get_rtti_name.
    result = me->get_rtti_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_2724f734~is_generic.
    result = me->is_generic( ).
  ENDMETHOD.

  METHOD zif_lnt_union_2724f734~to_abap.
    result = me->to_abap( ).
  ENDMETHOD.

  METHOD zif_lnt_union_2724f734~to_cds.
    result = me->to_cds( ).
  ENDMETHOD.

  METHOD zif_lnt_union_2724f734~to_text.
    result = me->to_text( i_level = i_level ).
  ENDMETHOD.
ENDCLASS.
