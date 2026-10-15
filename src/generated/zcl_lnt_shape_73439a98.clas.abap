* TS: src/lsp/code_actions.ts:34:11 shape.10e112fef32e358082396deb51d9cae00bff7265114e72ab0e5263652c7c4107
CLASS zcl_lnt_shape_73439a98 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zlnt_own_storage_4c72afe8366e.
    INTERFACES zlnt_view_storage_74017ca272ac.
    DATA zlnt_view_extras_47272813ead1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_view_ownkeys_b0e8086400eb TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA zlnt_json_ownkeys_70e5fd461788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA title TYPE string.
    DATA kind TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA diagnostics TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA is_preferred TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA disabled TYPE REF TO zcl_lnt_code_action_disabled.
    DATA edit TYPE REF TO zcl_lnt_shape_36bc2e57.
    DATA command TYPE REF TO zcl_lnt_command.
    DATA data_56cc TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA tags TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    METHODS constructor IMPORTING i_title TYPE string i_kind TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_diagnostics TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL i_is_preferred TYPE REF TO zlnt_runtime_opti_7f2541396f43
    OPTIONAL i_disabled TYPE REF TO zcl_lnt_code_action_disabled OPTIONAL i_edit TYPE REF TO zcl_lnt_shape_36bc2e57 OPTIONAL i_command TYPE REF TO zcl_lnt_command OPTIONAL i_data_dc02 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL
    i_tags TYPE REF TO zlnt_runtime_arra_595b0cb55f64 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_73439a98 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_title.
    DATA(t2) = i_kind.
    DATA(t3) = i_diagnostics.
    DATA(t4) = i_is_preferred.
    DATA(t5) = i_disabled.
    DATA(t6) = i_edit.
    DATA(t7) = i_command.
    DATA(t8) = i_data_dc02.
    DATA(t9) = i_tags.
    DATA(t10) = t1.
    me->title = t10.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `title`.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t11 ).
    ENDIF.
    DATA(t12) = |title|.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t12 p1 = t13 ).
    ENDIF.
    DATA(t14) = t2.
    me->kind = t14.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `kind`.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kind` p1 = t15 ).
    ENDIF.
    DATA(t16) = |kind|.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t16 p1 = t17 ).
    ENDIF.
    DATA(t18) = t3.
    me->diagnostics = t18.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `diagnostics`.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `diagnostics` p1 = t19 ).
    ENDIF.
    DATA(t20) = |diagnostics|.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t20 p1 = t21 ).
    ENDIF.
    DATA(t22) = t4.
    me->is_preferred = t22.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `isPreferred`.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isPreferred` p1 = t23 ).
    ENDIF.
    DATA(t24) = |isPreferred|.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t24 p1 = t25 ).
    ENDIF.
    DATA(t26) = t5.
    me->disabled = t26.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `disabled`.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `disabled` p1 = t27 ).
    ENDIF.
    DATA(t28) = |disabled|.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t28 p1 = t29 ).
    ENDIF.
    DATA(t30) = t6.
    me->edit = t30.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `edit`.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edit` p1 = t31 ).
    ENDIF.
    DATA(t32) = |edit|.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t32 p1 = t33 ).
    ENDIF.
    DATA(t34) = t7.
    me->command = t34.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `command`.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `command` p1 = t35 ).
    ENDIF.
    DATA(t36) = |command|.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
    ENDIF.
    DATA(t38) = t8.
    me->data_56cc = t38.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `data`.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `data` p1 = t39 ).
    ENDIF.
    DATA(t40) = |data|.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t40 p1 = t41 ).
    ENDIF.
    DATA(t42) = t9.
    me->tags = t42.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `tags`.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t43 ).
    ENDIF.
    DATA(t44) = |tags|.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1999_a2b051170d88.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~structural.
    result = abap_true.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~source.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~has.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.has: own-key metadata absent`.
    ENDIF.
    result = me->zlnt_view_ownkeys_b0e8086400eb->has( p0 ).
    IF result = abap_false AND me->zlnt_view_extras_47272813ead1 IS BOUND.
      result = me->zlnt_view_extras_47272813ead1->has( p0 ).
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~delete.
    DATA ignored TYPE abap_bool.
    CASE p0.
      WHEN `title`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `kind`.
        CLEAR me->kind.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `diagnostics`.
        CLEAR me->diagnostics.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `isPreferred`.
        CLEAR me->is_preferred.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `disabled`.
        CLEAR me->disabled.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `edit`.
        CLEAR me->edit.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `command`.
        CLEAR me->command.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `data`.
        CLEAR me->data_56cc.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `tags`.
        CLEAR me->tags.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN OTHERS.
        ignored = zlnt_runtime_nati_be494c0b072c=>run( p0 = me key = p0 ).
        IF me->zlnt_view_extras_47272813ead1 IS BOUND.
          ignored = me->zlnt_view_extras_47272813ead1->delete( p0 ).
        ENDIF.
    ENDCASE.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      ignored = me->zlnt_view_ownkeys_b0e8086400eb->delete( p0 ).
    ENDIF.
    result = abap_true.
  ENDMETHOD.

  METHOD zlnt_own_storage_4c72afe8366e~keys.
    DATA(t1) = me->zlnt_view_ownkeys_b0e8086400eb.
    IF t1 IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: keys: structural own-key metadata absent`.
    ENDIF.
    result = zlnt_runtime_ownk_4497b85e405d=>keys( t1 ).
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~get.
    IF p0 = `constructor` OR p0 = `toString` OR p0 = `toLocaleString` OR p0 = `valueOf` OR p0 = `hasOwnProperty` OR p0 = `isPrototypeOf` OR p0 = `propertyIsEnumerable` OR p0 = `__proto__` OR p0 = `__defineGetter__` OR p0 =
    `__defineSetter__` OR p0 = `__lookupGetter__` OR p0 = `__lookupSetter__`.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: prototype presence metadata absent`.
      ENDIF.
      READ TABLE me->zlnt_view_ownkeys_b0e8086400eb->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
      IF sy-subrc <> 0.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: inherited prototype value unavailable from native slots`.
      ENDIF.
    ENDIF.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get shape.10e112fef32e358082396deb51d9cae00bff7265114e72ab0e5263652c7c4107: structural own-key metadata absent`.
    ENDIF.
    READ TABLE me->zlnt_view_ownkeys_b0e8086400eb->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `title`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        result->sval = me->title.
      WHEN `kind`.
        CLEAR result.
        IF me->kind IS BOUND AND me->kind->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->kind->value.
        ENDIF.
      WHEN `diagnostics`.
        CLEAR result.
        IF me->diagnostics IS BOUND.
          CLEAR result.
          IF me->diagnostics IS BOUND.
            DATA t1 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t1.
            DATA t2 TYPE REF TO object.
            CLEAR t2.
            CLEAR t1.
            t2 = me->diagnostics.
            TRY.
                result ?= t2.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t1 ?= me->diagnostics.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t1 IS BOUND.
                result = t1->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->diagnostics.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `isPreferred`.
        CLEAR result.
        IF me->is_preferred IS BOUND AND me->is_preferred->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->is_preferred->value.
        ENDIF.
      WHEN `disabled`.
        CLEAR result.
        IF me->disabled IS BOUND.
          CLEAR result.
          IF me->disabled IS BOUND.
            DATA t3 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t3.
            DATA t4 TYPE REF TO object.
            CLEAR t4.
            CLEAR t3.
            t4 = me->disabled.
            TRY.
                result ?= t4.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t3 ?= me->disabled.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t3 IS BOUND.
                result = t3->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->disabled.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `edit`.
        CLEAR result.
        IF me->edit IS BOUND.
          CLEAR result.
          IF me->edit IS BOUND.
            DATA t5 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t5.
            DATA t6 TYPE REF TO object.
            CLEAR t6.
            CLEAR t5.
            t6 = me->edit.
            TRY.
                result ?= t6.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t5 ?= me->edit.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t5 IS BOUND.
                result = t5->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->edit.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `command`.
        CLEAR result.
        IF me->command IS BOUND.
          CLEAR result.
          IF me->command IS BOUND.
            DATA t7 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t7.
            DATA t8 TYPE REF TO object.
            CLEAR t8.
            CLEAR t7.
            t8 = me->command.
            TRY.
                result ?= t8.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t7 ?= me->command.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t7 IS BOUND.
                result = t7->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->command.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `data`.
        CLEAR result.
        IF me->data_56cc IS BOUND.
          result = me->data_56cc.
        ENDIF.
      WHEN `tags`.
        CLEAR result.
        IF me->tags IS BOUND.
          CLEAR result.
          IF me->tags IS BOUND.
            DATA t9 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t9.
            DATA t10 TYPE REF TO object.
            CLEAR t10.
            CLEAR t9.
            t10 = me->tags.
            TRY.
                result ?= t10.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t9 ?= me->tags.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t9 IS BOUND.
                result = t9->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->tags.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN OTHERS.
        IF me->zlnt_view_extras_47272813ead1 IS BOUND.
          result = me->zlnt_view_extras_47272813ead1->get( p0 ).
        ENDIF.
    ENDCASE.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~put.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put shape.10e112fef32e358082396deb51d9cae00bff7265114e72ab0e5263652c7c4107: structural own-key metadata absent`.
    ENDIF.
    CASE p0.
      WHEN `title`.
        me->title = p1->as_string( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `title`.
      WHEN `kind`.
        CLEAR me->kind.
        IF p1 IS BOUND.
          me->kind = NEW #( ).
          me->kind->has = abap_true.
          me->kind->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `kind`.
      WHEN `diagnostics`.
        CLEAR me->diagnostics.
        IF p1 IS BOUND.
          CLEAR me->diagnostics.
          IF p1 IS BOUND.
            IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  me->diagnostics ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
              ENDTRY.
            ELSEIF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
              CREATE OBJECT me->diagnostics.
              me->diagnostics->source = p1.
            ELSE.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
            ENDIF.
            me->diagnostics->load( ).
            DATA t1 TYPE REF TO object.
            CLEAR t1.
            DATA t2 TYPE REF TO zcl_lnt_shape_9c8b3027.
            CLEAR t2.
            LOOP AT me->diagnostics->items INTO t1.
              DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t3.
              CLEAR t2.
              IF t1 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t3 ?= t1.
                DATA t4 TYPE REF TO object.
                CLEAR t4.
                t4 = t3->as_ref( ).
                t2 ?= t4.
              ELSE.
                t2 ?= t1.
              ENDIF.
            ENDLOOP.
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `diagnostics`.
      WHEN `isPreferred`.
        CLEAR me->is_preferred.
        IF p1 IS BOUND.
          me->is_preferred = NEW #( ).
          me->is_preferred->has = abap_true.
          me->is_preferred->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `isPreferred`.
      WHEN `disabled`.
        CLEAR me->disabled.
        IF p1 IS BOUND.
          DATA t5 TYPE REF TO object.
          CLEAR t5.
          t5 = p1->as_ref( ).
          me->disabled ?= t5.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `disabled`.
      WHEN `edit`.
        CLEAR me->edit.
        IF p1 IS BOUND.
          DATA t6 TYPE REF TO object.
          CLEAR t6.
          t6 = p1->as_ref( ).
          me->edit ?= t6.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `edit`.
      WHEN `command`.
        CLEAR me->command.
        IF p1 IS BOUND.
          DATA t7 TYPE REF TO object.
          CLEAR t7.
          t7 = p1->as_ref( ).
          me->command ?= t7.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `command`.
      WHEN `data`.
        CLEAR me->data_56cc.
        IF p1 IS BOUND.
          me->data_56cc = p1.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `data`.
      WHEN `tags`.
        CLEAR me->tags.
        IF p1 IS BOUND.
          CLEAR me->tags.
          IF p1 IS BOUND.
            IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  me->tags ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
              ENDTRY.
            ELSEIF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
              CREATE OBJECT me->tags.
              me->tags->source = p1.
            ELSE.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
            ENDIF.
            me->tags->load( ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `tags`.
      WHEN OTHERS.
        IF p0 = `__proto__`.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put: prototype mutation unavailable`.
        ENDIF.
        IF me->zlnt_view_extras_47272813ead1 IS NOT BOUND.
          me->zlnt_view_extras_47272813ead1 = NEW #( ).
          me->zlnt_view_extras_47272813ead1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        ENDIF.
        me->zlnt_view_extras_47272813ead1->put( p0 = p0 p1 = p1 ).
    ENDCASE.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = p0 p1 = VALUE #( ) ).
    ENDIF.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = p0 p1 = t8 ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
