* TS: src/version.ts:66:7 shape.3a89b1f69a0e16c8c20a2b047fca9cd512ac778b3c9fb6e3b05d84429557c65e
CLASS zcl_lnt_shape_dfeb56fd DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zlnt_own_storage_4c72afe8366e.
    INTERFACES zlnt_view_storage_74017ca272ac.
    DATA zlnt_view_extras_47272813ead1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_view_ownkeys_b0e8086400eb TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA zlnt_json_ownkeys_70e5fd461788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA abap TYPE REF TO object.
    DATA kernel TYPE REF TO object.
    DATA op TYPE REF TO object.
    DATA cloud_669f TYPE REF TO object.
    DATA ce TYPE REF TO object.
    METHODS constructor IMPORTING i_abap TYPE REF TO object OPTIONAL i_kernel TYPE REF TO object OPTIONAL i_op TYPE REF TO object OPTIONAL i_cloud_47cd TYPE REF TO object OPTIONAL i_ce TYPE REF TO object OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_dfeb56fd IMPLEMENTATION.
  METHOD constructor.
    DATA t1 TYPE REF TO object.
    t1 = i_abap.
    DATA t2 TYPE REF TO object.
    t2 = i_kernel.
    DATA t3 TYPE REF TO object.
    t3 = i_op.
    DATA t4 TYPE REF TO object.
    t4 = i_cloud_47cd.
    DATA t5 TYPE REF TO object.
    t5 = i_ce.
    DATA t6 TYPE REF TO object.
    t6 = t1.
    me->abap = t6.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `abap`.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t7 ).
    ENDIF.
    DATA(t8) = |abap|.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t8 p1 = t9 ).
    ENDIF.
    DATA t10 TYPE REF TO object.
    t10 = t2.
    me->kernel = t10.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `kernel`.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t11 ).
    ENDIF.
    DATA(t12) = |kernel|.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t12 p1 = t13 ).
    ENDIF.
    DATA t14 TYPE REF TO object.
    t14 = t3.
    me->op = t14.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `op`.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t15 ).
    ENDIF.
    DATA(t16) = |op|.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t16 p1 = t17 ).
    ENDIF.
    DATA t18 TYPE REF TO object.
    t18 = t4.
    me->cloud_669f = t18.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `cloud`.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t19 ).
    ENDIF.
    DATA(t20) = |cloud|.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t20 p1 = t21 ).
    ENDIF.
    DATA t22 TYPE REF TO object.
    t22 = t5.
    me->ce = t22.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ce`.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t23 ).
    ENDIF.
    DATA(t24) = |ce|.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t24 p1 = t25 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1987_e184f53245ae.
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
      WHEN `abap`.
        CLEAR me->abap.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `kernel`.
        CLEAR me->kernel.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `op`.
        CLEAR me->op.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `cloud`.
        CLEAR me->cloud_669f.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `ce`.
        CLEAR me->ce.
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
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get shape.3a89b1f69a0e16c8c20a2b047fca9cd512ac778b3c9fb6e3b05d84429557c65e: structural own-key metadata absent`.
    ENDIF.
    READ TABLE me->zlnt_view_ownkeys_b0e8086400eb->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `abap`.
        CLEAR result.
        IF me->abap IS BOUND.
          CLEAR result.
          IF me->abap IS BOUND.
            DATA t1 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t1.
            DATA t2 TYPE REF TO object.
            CLEAR t2.
            CLEAR t1.
            t2 = me->abap.
            TRY.
                result ?= t2.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t1 ?= me->abap.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t1 IS BOUND.
                result = t1->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->abap.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `kernel`.
        CLEAR result.
        IF me->kernel IS BOUND.
          CLEAR result.
          IF me->kernel IS BOUND.
            DATA t3 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t3.
            DATA t4 TYPE REF TO object.
            CLEAR t4.
            CLEAR t3.
            t4 = me->kernel.
            TRY.
                result ?= t4.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t3 ?= me->kernel.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t3 IS BOUND.
                result = t3->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->kernel.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `op`.
        CLEAR result.
        IF me->op IS BOUND.
          CLEAR result.
          IF me->op IS BOUND.
            DATA t5 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t5.
            DATA t6 TYPE REF TO object.
            CLEAR t6.
            CLEAR t5.
            t6 = me->op.
            TRY.
                result ?= t6.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t5 ?= me->op.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t5 IS BOUND.
                result = t5->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->op.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `cloud`.
        CLEAR result.
        IF me->cloud_669f IS BOUND.
          CLEAR result.
          IF me->cloud_669f IS BOUND.
            DATA t7 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t7.
            DATA t8 TYPE REF TO object.
            CLEAR t8.
            CLEAR t7.
            t8 = me->cloud_669f.
            TRY.
                result ?= t8.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t7 ?= me->cloud_669f.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t7 IS BOUND.
                result = t7->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->cloud_669f.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `ce`.
        CLEAR result.
        IF me->ce IS BOUND.
          CLEAR result.
          IF me->ce IS BOUND.
            DATA t9 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t9.
            DATA t10 TYPE REF TO object.
            CLEAR t10.
            CLEAR t9.
            t10 = me->ce.
            TRY.
                result ?= t10.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t9 ?= me->ce.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t9 IS BOUND.
                result = t9->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->ce.
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
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put shape.3a89b1f69a0e16c8c20a2b047fca9cd512ac778b3c9fb6e3b05d84429557c65e: structural own-key metadata absent`.
    ENDIF.
    CASE p0.
      WHEN `abap`.
        CLEAR me->abap.
        IF p1 IS BOUND.
          DATA t1 TYPE REF TO object.
          t1 = p1->as_ref( ).
          me->abap ?= t1.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `abap`.
      WHEN `kernel`.
        CLEAR me->kernel.
        IF p1 IS BOUND.
          DATA t2 TYPE REF TO object.
          t2 = p1->as_ref( ).
          me->kernel ?= t2.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `kernel`.
      WHEN `op`.
        CLEAR me->op.
        IF p1 IS BOUND.
          DATA t3 TYPE REF TO object.
          t3 = p1->as_ref( ).
          me->op ?= t3.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `op`.
      WHEN `cloud`.
        CLEAR me->cloud_669f.
        IF p1 IS BOUND.
          DATA t4 TYPE REF TO object.
          t4 = p1->as_ref( ).
          me->cloud_669f ?= t4.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `cloud`.
      WHEN `ce`.
        CLEAR me->ce.
        IF p1 IS BOUND.
          DATA t5 TYPE REF TO object.
          t5 = p1->as_ref( ).
          me->ce ?= t5.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ce`.
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
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = p0 p1 = t6 ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
