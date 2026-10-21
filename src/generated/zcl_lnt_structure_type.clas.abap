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
    DATA t7 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t8 = t2.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t10 = i_ddic_name.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t12 = i_description.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t16 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t7 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t8 i_conversion_exit = t14 i_derived_from_constant = t16 i_ddic_name = t10 i_rtti_name = t18 i_description = t12 ).
    CREATE OBJECT t7->zlnt_view_ownkeys_b0e8086400eb.
    t7->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t20 ).
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t7->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ddicName` p1 = t21 ).
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t7->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t22 ).
    ENDIF.
    CREATE OBJECT t7->zlnt_json_ownkeys_70e5fd461788.
    t7->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t24 ).
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ddicName| p1 = t26 ).
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t28 ).
    ENDIF.
    super->constructor( i_input_967e = t7 ).
    t1->load( ).
    IF xsdbool( lines( t1->items ) = 0 ) = abap_true.
      DATA t34 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t35 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t39) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t39->has = abap_true.
      t39->value = |Structure does not contain any components|.
      t35 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t39 ).
      t34 = NEW #( ).
      t34->payload = t35.
      CLEAR t34->source_value.
      DATA t41 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t42 TYPE REF TO object.
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
      RAISE EXCEPTION t34.
    ENDIF.
    me->indexed = NEW zlnt_runtime_map__41b3bb94df3d( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `indexed`.
    DATA t48 TYPE REF TO zcl_lnt_istructure_component.
    DATA t49 TYPE REF TO object.
    DATA(t50) = VALUE i( ).
    DO.
      t1->load( ).
      IF t50 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t49.
      READ TABLE t1->items INDEX t50 + 1 INTO t49.
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
      t59 = t48->zlnt_view_read_sr_dae473e680bd( ).
      DATA(t61) = strlen( t59 ).
      t58 = t59.
      IF t58 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t58 TO UPPER CASE.
      ELSE.
        t58 = zlnt_runtime_uppe_91169605024d=>full( t58 ).
      ENDIF.
      t57 = t58.
      DATA t64 TYPE REF TO zcl_lnt_abstract_type.
      t64 = me->indexed->get( p0 = t57 ).
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t67.
      CLEAR t67.
      IF xsdbool( xsdbool( t64 IS INITIAL ) = abap_false ) = abap_true.
        DATA t72 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t72.
        DATA t73 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        CLEAR t73.
        DATA(t76) = VALUE string( ).
        DATA(t77) = VALUE string( ).
        DATA(t78) = VALUE string( ).
        DATA(t79) = |Structure, duplicate field name "|.
        DATA(t81) = strlen( t79 ).
        t78 = |{ t79 }{ t57 }|.
        DATA(t83) = strlen( t78 ).
        t77 = |{ t78 }{ |", | }|.
        DATA(t84) = VALUE string( ).
        DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t85 = t2.
        DATA(t87) = VALUE string( ).
        DATA(t88) = VALUE abap_bool( ).
        IF t85 IS INITIAL.
          t88 = abap_true.
        ELSEIF t85->has = abap_false.
          t88 = abap_true.
        ENDIF.
        IF t88 = abap_true.
          t87 = |undefined|.
        ELSE.
          t87 = t85->value.
        ENDIF.
        t84 = t87.
        DATA(t93) = strlen( t77 ).
        t76 = |{ t77 }{ t84 }|.
        DATA(t94) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t94->has = abap_true.
        t94->value = t76.
        t73 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t94 ).
        t72 = NEW #( ).
        t72->payload = t73.
        CLEAR t72->source_value.
        DATA t96 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t96.
        DATA t97 TYPE REF TO object.
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
        RAISE EXCEPTION t72.
      ENDIF.
      DATA t98 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      t98 = me->indexed->set( p0 = t57 p1 = t48->zlnt_view_read_sr_455340cd1e80( ) ).
    ENDDO.
    me->components = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `components`.
  ENDMETHOD.

  METHOD get_components.
    result = me->components.

  ENDMETHOD.

  METHOD get_component_by_name.
    DATA(t1) = i_name.
    DATA(t3) = me->indexed.
    DATA t4 TYPE string.
    DATA(t6) = strlen( t1 ).
    t4 = t1.
    IF t4 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t4 TO UPPER CASE.
    ELSE.
      t4 = zlnt_runtime_uppe_91169605024d=>full( t4 ).
    ENDIF.
    result = t3->get( p0 = t4 ).

  ENDMETHOD.

  METHOD to_text.
    DATA(t1) = i_level.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t2.
    DATA(t4) = me->components.
    DATA t5 TYPE REF TO zcl_lnt_istructure_component.
    DATA t6 TYPE REF TO object.
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
      DATA(t15) = VALUE string( ).
      DATA(t16) = VALUE string( ).
      DATA(t17) = VALUE string( ).
      t17 = t5->zlnt_view_read_sr_dae473e680bd( ).
      DATA(t20) = strlen( t17 ).
      t16 = |{ t17 }{ | TYPE | }|.
      DATA(t21) = VALUE string( ).
      DATA t22 TYPE REF TO zcl_lnt_abstract_type.
      t22 = t5->zlnt_view_read_sr_455340cd1e80( ).
      DATA(t24) = VALUE f( ).
      DATA(t26) = CONV f( 1 ).
      t24 = t1 + t26.
      t21 = t22->to_text( i_level = t24 ).
      DATA(t27) = strlen( t16 ).
      t15 = |{ t16 }{ t21 }|.
      t2->load( ).
      APPEND t15 TO t2->items.
      t2->save( ).
    ENDDO.
    DATA(t28) = VALUE string( ).
    DATA(t30) = VALUE string( ).
    t30 = |  |.
    DATA(t32) = VALUE string( ).
    DATA(t35) = strlen( t30 ).
    DATA(t36) = CONV f( trunc( t1 ) ).
    IF t36 < 0.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    IF t30 IS NOT INITIAL.
      IF t36 > 2147483647 OR t36 * strlen( t30 ) > 2147483647.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t32 = repeat( val = t30 occ = CONV i( t36 ) ).
    ENDIF.
    t28 = t32.
    DATA(t38) = VALUE string( ).
    DATA(t39) = VALUE string( ).
    DATA(t40) = |Structure\n|.
    DATA(t42) = strlen( t40 ).
    t39 = |{ t40 }{ t28 }|.
    DATA(t44) = strlen( t39 ).
    t38 = |{ t39 }{ |* | }|.
    DATA(t45) = VALUE string( ).
    DATA(t47) = VALUE string( ).
    DATA(t48) = VALUE string( ).
    DATA(t49) = |\n|.
    DATA(t51) = strlen( t49 ).
    t48 = |{ t49 }{ t28 }|.
    DATA(t53) = strlen( t48 ).
    t47 = |{ t48 }{ |* | }|.
    DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t54->has = abap_true.
    t54->value = t47.
    t45 = t2->join( p0 = t54 ).
    DATA(t55) = strlen( t38 ).
    result = |{ t38 }{ t45 }|.

  ENDMETHOD.

  METHOD is_generic.
    result = abap_false.

  ENDMETHOD.

  METHOD to_abap.
    DATA t1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3 TYPE REF TO zcl_lnt_abstract_type.
    t3 = me.
    DATA t6 TYPE REF TO zcl_lnt_abstract_type_data.
    t6 = t3->data_56cc.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t6 IS INITIAL ) = abap_true.
    ELSE.
      t9 = t6->zlnt_view_read_sr_c978da49ae47( ).
    ENDIF.
    t1 = t9.
    DATA(t16) = VALUE abap_bool( ).
    IF t1 IS BOUND.
      IF t1->has = abap_true.
        t16 = xsdbool( strlen( t1->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t16 = abap_true.
      result = t1->value.
      RETURN.
    ENDIF.
    result = |StructureTypetoABAPtodo|.

  ENDMETHOD.

  METHOD contains_void.
    DATA(t2) = VALUE abap_bool( ).
    t2 = abap_false.
    DATA(t4) = me->components.
    DATA t5 TYPE REF TO zcl_lnt_istructure_component.
    DATA t6 TYPE REF TO object.
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
      IF t5->zlnt_view_read_sr_455340cd1e80( )->contains_void( ) = abap_true.
        t2 = abap_true.
        EXIT.
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD to_cds.
    result = |abap.TODO_STRUCTURE|.

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
