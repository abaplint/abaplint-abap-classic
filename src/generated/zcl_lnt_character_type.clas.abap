* TS: src/abap/types/basic/character_type.ts:3:1 CharacterType
CLASS zcl_lnt_character_type DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_type CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_f16d2839.
    DATA length TYPE f.
    METHODS constructor IMPORTING i_length TYPE f i_extra TYPE REF TO zcl_lnt_abstract_type_data OPTIONAL.
    METHODS clone_type IMPORTING i_input_967e TYPE REF TO zcl_lnt_abstract_type_data RETURNING VALUE(result) TYPE REF TO zcl_lnt_character_type.
    METHODS get_length RETURNING VALUE(result) TYPE f.
    METHODS t_t_i_s_a_ty_bs_ch_ty_ts_ch_ty RETURNING VALUE(result) TYPE string.
    METHODS to_abap REDEFINITION.
    METHODS is_generic REDEFINITION.
    METHODS contains_void REDEFINITION.
    METHODS get_identifier RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS to_cds REDEFINITION.
    METHODS to_text REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_character_type IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_length.
    DATA(t2) = i_extra.
    DATA(t3) = t2.
    super->constructor( i_input_967e = t3 ).
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = t1.
    DATA(t6) = CONV f( 0 ).
    t4 = xsdbool( t5 <= t6 ).
    IF t4 = abap_true.
      DATA t7 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t7.
      DATA t8 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t8.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t9.
      DATA(t10) = abap_true.
      IF t10 = abap_true.
        DATA(t11) = |Bad LENGTH, Character|.
        DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t12->has = abap_true.
        t12->value = t11.
        t9 = t12.
      ELSE.
        DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t13.
        t9 = t13.
      ENDIF.
      t8 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t9 ).
      t7 = NEW #( ).
      t7->payload = t8.
      CLEAR t7->source_value.
      IF t8 IS BOUND.
        DATA t14 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t14.
        DATA t15 TYPE REF TO object.
        CLEAR t15.
        CLEAR t14.
        t15 = t8.
        TRY.
            t7->source_value ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t7->source_value IS NOT BOUND.
          TRY.
              t14 ?= t8.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t14 IS BOUND.
            t7->source_value = t14->source( ).
          ENDIF.
          IF t7->source_value IS NOT BOUND.
            CREATE OBJECT t7->source_value.
            t7->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t7->source_value->oval = t8.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t7.
    ENDIF.
    DATA(t16) = t1.
    me->length = t16.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `length`.
  ENDMETHOD.

  METHOD clone_type.
    DATA(t1) = i_input_967e.
    DATA t2 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    DATA(t6) = |\{\}|.
    TRY.
        t5 = zlnt_runtime_json_7c6b3012af76=>parse( t6 ).
      CATCH zlnt_exception_js_ebcc2df7d5e4.
        DATA(t7) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t7->has = abap_true.
        t7->value = `Invalid JSON`.
        DATA(t8) = NEW zcx_lnt_builtin_4c6a1223( i_message_26cb = t7 ).
        DATA(t9) = NEW zlnt_exception_cl_30eec8e8805d( ).
        t9->payload = t8.
        DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t10.
        CLEAR t10.
        IF t8 IS BOUND.
          DATA t11 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t11.
          DATA t12 TYPE REF TO object.
          CLEAR t12.
          CLEAR t11.
          t12 = t8.
          TRY.
              t10 ?= t12.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t10 IS NOT BOUND.
            TRY.
                t11 ?= t8.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t11 IS BOUND.
              t10 = t11->source( ).
            ENDIF.
            IF t10 IS NOT BOUND.
              CREATE OBJECT t10.
              t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t10->oval = t8.
            ENDIF.
          ENDIF.
        ENDIF.
        t9->source_value = t10.
        RAISE EXCEPTION t9.
    ENDTRY.
    t4 = t5.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t15.
    DATA t16 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t16.
    DATA(t17) = me.
    t16 = t17.
    DATA t18 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t18.
    DATA(t19) = t16.
    t18 = t19->data_56cc.
    t15 = t18.
    CLEAR t14.
    IF t15 IS BOUND.
      CLEAR t14.
      IF t15 IS BOUND.
        DATA t20 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t20.
        DATA t21 TYPE REF TO object.
        CLEAR t21.
        CLEAR t20.
        t21 = t15.
        TRY.
            t14 ?= t21.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t14 IS NOT BOUND.
          TRY.
              t20 ?= t15.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t20 IS BOUND.
            t14 = t20->source( ).
          ENDIF.
          IF t14 IS NOT BOUND.
            CREATE OBJECT t14.
            t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t14->oval = t15.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    t13 = t14.
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = t13.
    IF t24 IS NOT BOUND.
      t23 = abap_true.
    ELSE.
      t23 = xsdbool( t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    t22 = xsdbool( t23 = abap_false ).
    IF t22 = abap_true.
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t25.
      DATA(t26) = t13.
      t25 = zlnt_runtime_ownk_4497b85e405d=>keys( t26 ).
      DATA(t27) = VALUE string( ).
      t25->dense( ).
      DATA(t28) = VALUE i( ).
      DO.
        t25->load( ).
        IF t28 >= lines( t25->items ).
          EXIT.
        ENDIF.
        CLEAR t27.
        READ TABLE t25->items INDEX t28 + 1 INTO t27.
        IF t25->has( t28 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t28 = t28 + 1.
        DATA(t29) = t4.
        DATA(t30) = t27.
        DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t31.
        DATA(t32) = t13.
        DATA(t33) = t27.
        t31 = t32->get( p0 = t33 ).
        t29->put( p0 = t30 p1 = t31 ).
      ENDDO.
    ENDIF.
    DATA t34 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t34.
    DATA(t35) = t4.
    CLEAR t34.
    IF t35 IS BOUND.
      IF t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t34 ?= t35->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t34 IS NOT BOUND.
        IF t35->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t36 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t36.
          IF t35->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t36 ?= t35->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t36->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t37.
        DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t38.
        DATA t39 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t39.
        DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t40.
        DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t41.
        DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t42.
        t34 = NEW zcl_lnt_abstract_type_data( view_source = t35 i_qualified_name = t37 i_conversion_exit = t38 i_derived_from_constant = t39 i_ddic_name = t40 i_rtti_name = t41 i_description = t42 ).
      ENDIF.
    ENDIF.
    t3 = t34.
    t2 = t3.
    DATA(t43) = VALUE abap_bool( ).
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t44.
    DATA(t45) = t1.
    t44 = t45->zlnt_view_read_sr_c978da49ae47( ).
    IF t44 IS BOUND.
      IF t44->has = abap_true.
        t43 = xsdbool( strlen( t44->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t43 = abap_true.
      DATA(t46) = t2.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t47.
      DATA(t48) = abap_true.
      IF t48 = abap_true.
        DATA(t49) = VALUE string( ).
        DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t50.
        DATA(t51) = t1.
        t50 = t51->zlnt_view_read_sr_c978da49ae47( ).
        t49 = t50->value.
        DATA(t52) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t52->has = abap_true.
        t52->value = t49.
        t47 = t52.
      ELSE.
        DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t53.
        t47 = t53.
      ENDIF.
      t46->zlnt_view_write_s_97a0b5bff1fc( p0 = t47 ).
    ENDIF.
    DATA(t54) = VALUE abap_bool( ).
    DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t55.
    DATA(t56) = t1.
    t55 = t56->zlnt_view_read_sr_19ee0de30d00( ).
    IF t55 IS BOUND.
      IF t55->has = abap_true.
        t54 = xsdbool( strlen( t55->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t54 = abap_true.
      DATA(t57) = t2.
      DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t58.
      DATA(t59) = abap_true.
      IF t59 = abap_true.
        DATA(t60) = VALUE string( ).
        DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t61.
        DATA(t62) = t1.
        t61 = t62->zlnt_view_read_sr_19ee0de30d00( ).
        t60 = t61->value.
        DATA(t63) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t63->has = abap_true.
        t63->value = t60.
        t58 = t63.
      ELSE.
        DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t64.
        t58 = t64.
      ENDIF.
      t57->zlnt_view_write_s_8e32d930c893( p0 = t58 ).
    ENDIF.
    DATA(t65) = VALUE abap_bool( ).
    DATA t66 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t66.
    DATA(t67) = t1.
    t66 = t67->zlnt_view_read_sr_b01015468803( ).
    IF t66 IS BOUND.
      IF t66->has = abap_true.
        t65 = xsdbool( t66->value IS NOT INITIAL ).
      ENDIF.
    ENDIF.
    IF t65 = abap_true.
      DATA(t68) = t2.
      DATA t69 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t69.
      DATA(t70) = abap_true.
      IF t70 = abap_true.
        DATA(t71) = VALUE abap_bool( ).
        DATA t72 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t72.
        DATA(t73) = t1.
        t72 = t73->zlnt_view_read_sr_b01015468803( ).
        t71 = t72->value.
        DATA(t74) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t74->has = abap_true.
        t74->value = t71.
        t69 = t74.
      ELSE.
        DATA t75 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t75.
        t69 = t75.
      ENDIF.
      t68->zlnt_view_write_s_f5f18077e8ab( p0 = t69 ).
    ENDIF.
    DATA t76 TYPE REF TO zcl_lnt_character_type.
    CLEAR t76.
    DATA(t77) = CONV f( me->length ).
    DATA t78 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t78.
    DATA(t79) = abap_true.
    IF t79 = abap_true.
      DATA(t80) = t2.
      t78 = t80.
    ELSE.
      DATA t81 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t81.
      t78 = t81.
    ENDIF.
    t76 = NEW zcl_lnt_character_type( i_length = t77 i_extra = t78 ).
    result = t76.

  ENDMETHOD.

  METHOD get_length.
    DATA(t1) = CONV f( me->length ).
    result = t1.

  ENDMETHOD.

  METHOD t_t_i_s_a_ty_bs_ch_ty_ts_ch_ty.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = VALUE string( ).
    DATA(t2) = VALUE string( ).
    DATA(t3) = |```c LENGTH |.
    DATA(t4) = VALUE string( ).
    DATA(t5) = CONV f( me->length ).
    IF t5 <> trunc( t5 ) OR t5 > range_safe_integer OR t5 < 0 - range_safe_integer.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t6) = CONV int8( t5 ).
    t4 = |{ t6 }|.
    DATA(t7) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t8) = |```|.
    DATA(t9) = strlen( t2 ).
    t1 = |{ t2 }{ t8 }|.
    result = t1.

  ENDMETHOD.

  METHOD to_abap.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = VALUE string( ).
    DATA(t2) = |c LENGTH |.
    DATA(t3) = VALUE string( ).
    DATA(t4) = CONV f( me->length ).
    IF t4 <> trunc( t4 ) OR t4 > range_safe_integer OR t4 < 0 - range_safe_integer.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t5) = CONV int8( t4 ).
    t3 = |{ t5 }|.
    DATA(t6) = strlen( t2 ).
    t1 = |{ t2 }{ t3 }|.
    result = t1.

  ENDMETHOD.

  METHOD is_generic.
    DATA(t1) = abap_false.
    result = t1.

  ENDMETHOD.

  METHOD contains_void.
    DATA(t1) = abap_false.
    result = t1.

  ENDMETHOD.

  METHOD get_identifier.
    DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1.
    result = t1.

  ENDMETHOD.

  METHOD to_cds.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = VALUE string( ).
    DATA(t2) = VALUE string( ).
    DATA(t3) = |abap.char( |.
    DATA(t4) = VALUE string( ).
    DATA(t5) = CONV f( me->length ).
    IF t5 <> trunc( t5 ) OR t5 > range_safe_integer OR t5 < 0 - range_safe_integer.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t6) = CONV int8( t5 ).
    t4 = |{ t6 }|.
    DATA(t7) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t8) = | )|.
    DATA(t9) = strlen( t2 ).
    t1 = |{ t2 }{ t8 }|.
    result = t1.

  ENDMETHOD.

  METHOD to_text.
    DATA(t1) = CONV string( me->t_t_i_s_a_ty_bs_ch_ty_ts_ch_ty( ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1018_f355f9fcb893.
  ENDMETHOD.

  METHOD zif_lnt_union_f16d2839~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_f16d2839~contains_void.
    result = me->contains_void( ).
  ENDMETHOD.

  METHOD zif_lnt_union_f16d2839~get_abstract_type_data.
    result = me->get_abstract_type_data( ).
  ENDMETHOD.

  METHOD zif_lnt_union_f16d2839~get_conversion_exit.
    result = me->get_conversion_exit( ).
  ENDMETHOD.

  METHOD zif_lnt_union_f16d2839~get_ddic_name.
    result = me->get_ddic_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_f16d2839~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_f16d2839~get_qualified_name.
    result = me->get_qualified_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_f16d2839~get_rtti_name.
    result = me->get_rtti_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_f16d2839~is_generic.
    result = me->is_generic( ).
  ENDMETHOD.

  METHOD zif_lnt_union_f16d2839~to_abap.
    result = me->to_abap( ).
  ENDMETHOD.

  METHOD zif_lnt_union_f16d2839~to_cds.
    result = me->to_cds( ).
  ENDMETHOD.

  METHOD zif_lnt_union_f16d2839~to_text.
    result = me->to_text( i_level = i_level ).
  ENDMETHOD.
ENDCLASS.
