* TS: src/version.ts:163:64 shape.bea6dfcae2ad34dd0cf1f350c0ec1982425260a29ce5430df09eea2988f91f45
CLASS zcl_lnt_shape_4d146093 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zlnt_own_storage_4c72afe8366e.
    INTERFACES zlnt_view_storage_74017ca272ac.
    DATA zlnt_view_extras_47272813ead1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_view_ownkeys_b0e8086400eb TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA zlnt_json_ownkeys_70e5fd461788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA v750 TYPE REF TO zcl_lnt_abap_release.
    DATA v751 TYPE REF TO zcl_lnt_abap_release.
    DATA v752 TYPE REF TO zcl_lnt_abap_release.
    DATA v753 TYPE REF TO zcl_lnt_abap_release.
    DATA v754 TYPE REF TO zcl_lnt_abap_release.
    DATA v755 TYPE REF TO zcl_lnt_abap_release.
    DATA v756 TYPE REF TO zcl_lnt_abap_release.
    DATA v757 TYPE REF TO zcl_lnt_abap_release.
    DATA v758 TYPE REF TO zcl_lnt_abap_release.
    DATA v816 TYPE REF TO zcl_lnt_abap_release.
    METHODS constructor IMPORTING i_v750 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v751 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v752 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v753 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v754
    TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v755 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v756 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v757 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v758 TYPE REF TO zcl_lnt_abap_release
    OPTIONAL i_v816 TYPE REF TO zcl_lnt_abap_release OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_4d146093 IMPLEMENTATION.
  METHOD constructor.
    DATA(t2) = i_v751.
    DATA(t3) = i_v752.
    DATA(t4) = i_v753.
    DATA(t5) = i_v754.
    DATA(t6) = i_v755.
    DATA(t7) = i_v756.
    DATA(t8) = i_v757.
    DATA(t9) = i_v758.
    DATA(t10) = i_v816.
    me->v750 = i_v750.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v750`.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `v750` p1 = t13 ).
    ENDIF.
    DATA(t14) = |v750|.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t14 p1 = t15 ).
    ENDIF.
    me->v751 = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v751`.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `v751` p1 = t18 ).
    ENDIF.
    DATA(t19) = |v751|.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t19 p1 = t20 ).
    ENDIF.
    me->v752 = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v752`.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `v752` p1 = t23 ).
    ENDIF.
    DATA(t24) = |v752|.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t24 p1 = t25 ).
    ENDIF.
    me->v753 = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v753`.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `v753` p1 = t28 ).
    ENDIF.
    DATA(t29) = |v753|.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t29 p1 = t30 ).
    ENDIF.
    me->v754 = t5.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v754`.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `v754` p1 = t33 ).
    ENDIF.
    DATA(t34) = |v754|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
    ENDIF.
    me->v755 = t6.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v755`.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `v755` p1 = t38 ).
    ENDIF.
    DATA(t39) = |v755|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
    ENDIF.
    me->v756 = t7.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v756`.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `v756` p1 = t43 ).
    ENDIF.
    DATA(t44) = |v756|.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
    ENDIF.
    me->v757 = t8.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v757`.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `v757` p1 = t48 ).
    ENDIF.
    DATA(t49) = |v757|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    me->v758 = t9.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v758`.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `v758` p1 = t53 ).
    ENDIF.
    DATA(t54) = |v758|.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
    ENDIF.
    me->v816 = t10.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v816`.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `v816` p1 = t58 ).
    ENDIF.
    DATA(t59) = |v816|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1994_a7c264afdba8.
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
      WHEN `v750`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `v751`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `v752`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `v753`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `v754`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `v755`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `v756`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `v757`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `v758`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `v816`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
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
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get shape.bea6dfcae2ad34dd0cf1f350c0ec1982425260a29ce5430df09eea2988f91f45: structural own-key metadata absent`.
    ENDIF.
    READ TABLE me->zlnt_view_ownkeys_b0e8086400eb->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `v750`.
        CLEAR result.
        IF me->v750 IS BOUND.
          DATA t1 TYPE REF TO zlnt_view_storage_74017ca272ac.
          DATA t2 TYPE REF TO object.
          t2 = me->v750.
          TRY.
              result ?= t2.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t1 ?= me->v750.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t1 IS BOUND.
              result = t1->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->v750.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `v751`.
        CLEAR result.
        IF me->v751 IS BOUND.
          DATA t3 TYPE REF TO zlnt_view_storage_74017ca272ac.
          DATA t4 TYPE REF TO object.
          t4 = me->v751.
          TRY.
              result ?= t4.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t3 ?= me->v751.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t3 IS BOUND.
              result = t3->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->v751.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `v752`.
        CLEAR result.
        IF me->v752 IS BOUND.
          DATA t5 TYPE REF TO zlnt_view_storage_74017ca272ac.
          DATA t6 TYPE REF TO object.
          t6 = me->v752.
          TRY.
              result ?= t6.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t5 ?= me->v752.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t5 IS BOUND.
              result = t5->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->v752.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `v753`.
        CLEAR result.
        IF me->v753 IS BOUND.
          DATA t7 TYPE REF TO zlnt_view_storage_74017ca272ac.
          DATA t8 TYPE REF TO object.
          t8 = me->v753.
          TRY.
              result ?= t8.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t7 ?= me->v753.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t7 IS BOUND.
              result = t7->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->v753.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `v754`.
        CLEAR result.
        IF me->v754 IS BOUND.
          DATA t9 TYPE REF TO zlnt_view_storage_74017ca272ac.
          DATA t10 TYPE REF TO object.
          t10 = me->v754.
          TRY.
              result ?= t10.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t9 ?= me->v754.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t9 IS BOUND.
              result = t9->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->v754.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `v755`.
        CLEAR result.
        IF me->v755 IS BOUND.
          DATA t11 TYPE REF TO zlnt_view_storage_74017ca272ac.
          DATA t12 TYPE REF TO object.
          t12 = me->v755.
          TRY.
              result ?= t12.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t11 ?= me->v755.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t11 IS BOUND.
              result = t11->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->v755.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `v756`.
        CLEAR result.
        IF me->v756 IS BOUND.
          DATA t13 TYPE REF TO zlnt_view_storage_74017ca272ac.
          DATA t14 TYPE REF TO object.
          t14 = me->v756.
          TRY.
              result ?= t14.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t13 ?= me->v756.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t13 IS BOUND.
              result = t13->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->v756.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `v757`.
        CLEAR result.
        IF me->v757 IS BOUND.
          DATA t15 TYPE REF TO zlnt_view_storage_74017ca272ac.
          DATA t16 TYPE REF TO object.
          t16 = me->v757.
          TRY.
              result ?= t16.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t15 ?= me->v757.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t15 IS BOUND.
              result = t15->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->v757.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `v758`.
        CLEAR result.
        IF me->v758 IS BOUND.
          DATA t17 TYPE REF TO zlnt_view_storage_74017ca272ac.
          DATA t18 TYPE REF TO object.
          t18 = me->v758.
          TRY.
              result ?= t18.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t17 ?= me->v758.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t17 IS BOUND.
              result = t17->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->v758.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `v816`.
        CLEAR result.
        IF me->v816 IS BOUND.
          DATA t19 TYPE REF TO zlnt_view_storage_74017ca272ac.
          DATA t20 TYPE REF TO object.
          t20 = me->v816.
          TRY.
              result ?= t20.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t19 ?= me->v816.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t19 IS BOUND.
              result = t19->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->v816.
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
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put shape.bea6dfcae2ad34dd0cf1f350c0ec1982425260a29ce5430df09eea2988f91f45: structural own-key metadata absent`.
    ENDIF.
    CASE p0.
      WHEN `v750`.
        CLEAR me->v750.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->v750 ?= p1->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF me->v750 IS NOT BOUND.
            IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t1 TYPE REF TO zlnt_view_storage_74017ca272ac.
              IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t1 ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t1->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA(t2) = VALUE string( ).
            DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t8) = VALUE f( ).
            me->v750 = NEW zcl_lnt_abap_release( view_source = p1 i_name = t2 i_abap = t3 i_kernel = t4 i_op = t5 i_cloud_47cd = t6 i_ce = t7 i_ordinal = t8 ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v750`.
      WHEN `v751`.
        CLEAR me->v751.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->v751 ?= p1->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF me->v751 IS NOT BOUND.
            IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t9 TYPE REF TO zlnt_view_storage_74017ca272ac.
              IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t9 ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t9->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA(t10) = VALUE string( ).
            DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t16) = VALUE f( ).
            me->v751 = NEW zcl_lnt_abap_release( view_source = p1 i_name = t10 i_abap = t11 i_kernel = t12 i_op = t13 i_cloud_47cd = t14 i_ce = t15 i_ordinal = t16 ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v751`.
      WHEN `v752`.
        CLEAR me->v752.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->v752 ?= p1->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF me->v752 IS NOT BOUND.
            IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t17 TYPE REF TO zlnt_view_storage_74017ca272ac.
              IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t17 ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t17->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA(t18) = VALUE string( ).
            DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t24) = VALUE f( ).
            me->v752 = NEW zcl_lnt_abap_release( view_source = p1 i_name = t18 i_abap = t19 i_kernel = t20 i_op = t21 i_cloud_47cd = t22 i_ce = t23 i_ordinal = t24 ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v752`.
      WHEN `v753`.
        CLEAR me->v753.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->v753 ?= p1->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF me->v753 IS NOT BOUND.
            IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t25 TYPE REF TO zlnt_view_storage_74017ca272ac.
              IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t25 ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t25->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA(t26) = VALUE string( ).
            DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t32) = VALUE f( ).
            me->v753 = NEW zcl_lnt_abap_release( view_source = p1 i_name = t26 i_abap = t27 i_kernel = t28 i_op = t29 i_cloud_47cd = t30 i_ce = t31 i_ordinal = t32 ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v753`.
      WHEN `v754`.
        CLEAR me->v754.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->v754 ?= p1->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF me->v754 IS NOT BOUND.
            IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t33 TYPE REF TO zlnt_view_storage_74017ca272ac.
              IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t33 ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t33->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA(t34) = VALUE string( ).
            DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t40) = VALUE f( ).
            me->v754 = NEW zcl_lnt_abap_release( view_source = p1 i_name = t34 i_abap = t35 i_kernel = t36 i_op = t37 i_cloud_47cd = t38 i_ce = t39 i_ordinal = t40 ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v754`.
      WHEN `v755`.
        CLEAR me->v755.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->v755 ?= p1->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF me->v755 IS NOT BOUND.
            IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t41 TYPE REF TO zlnt_view_storage_74017ca272ac.
              IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t41 ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t41->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA(t42) = VALUE string( ).
            DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t48) = VALUE f( ).
            me->v755 = NEW zcl_lnt_abap_release( view_source = p1 i_name = t42 i_abap = t43 i_kernel = t44 i_op = t45 i_cloud_47cd = t46 i_ce = t47 i_ordinal = t48 ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v755`.
      WHEN `v756`.
        CLEAR me->v756.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->v756 ?= p1->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF me->v756 IS NOT BOUND.
            IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t49 TYPE REF TO zlnt_view_storage_74017ca272ac.
              IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t49 ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t49->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA(t50) = VALUE string( ).
            DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t56) = VALUE f( ).
            me->v756 = NEW zcl_lnt_abap_release( view_source = p1 i_name = t50 i_abap = t51 i_kernel = t52 i_op = t53 i_cloud_47cd = t54 i_ce = t55 i_ordinal = t56 ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v756`.
      WHEN `v757`.
        CLEAR me->v757.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->v757 ?= p1->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF me->v757 IS NOT BOUND.
            IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t57 TYPE REF TO zlnt_view_storage_74017ca272ac.
              IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t57 ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t57->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA(t58) = VALUE string( ).
            DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t64) = VALUE f( ).
            me->v757 = NEW zcl_lnt_abap_release( view_source = p1 i_name = t58 i_abap = t59 i_kernel = t60 i_op = t61 i_cloud_47cd = t62 i_ce = t63 i_ordinal = t64 ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v757`.
      WHEN `v758`.
        CLEAR me->v758.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->v758 ?= p1->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF me->v758 IS NOT BOUND.
            IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t65 TYPE REF TO zlnt_view_storage_74017ca272ac.
              IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t65 ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t65->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA(t66) = VALUE string( ).
            DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t72) = VALUE f( ).
            me->v758 = NEW zcl_lnt_abap_release( view_source = p1 i_name = t66 i_abap = t67 i_kernel = t68 i_op = t69 i_cloud_47cd = t70 i_ce = t71 i_ordinal = t72 ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v758`.
      WHEN `v816`.
        CLEAR me->v816.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->v816 ?= p1->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF me->v816 IS NOT BOUND.
            IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t73 TYPE REF TO zlnt_view_storage_74017ca272ac.
              IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t73 ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t73->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA(t74) = VALUE string( ).
            DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t80) = VALUE f( ).
            me->v816 = NEW zcl_lnt_abap_release( view_source = p1 i_name = t74 i_abap = t75 i_kernel = t76 i_op = t77 i_cloud_47cd = t78 i_ce = t79 i_ordinal = t80 ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v816`.
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
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = p0 p1 = t81 ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
