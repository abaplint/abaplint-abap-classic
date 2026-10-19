* TS: src/abap/types/basic/table_type.ts:31:1 TableType
CLASS zcl_lnt_ty_table_type DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_type CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_89dd54d5.
    INTERFACES zif_lnt_union_2724f734.
    INTERFACES zif_lnt_union_297610d4.
    INTERFACES zif_lnt_union_60f022dd.
    INTERFACES zif_lnt_union_72e2c467.
    DATA row_type TYPE REF TO zcl_lnt_abstract_type.
    DATA options TYPE REF TO zcl_lnt_itable_options.
    METHODS constructor IMPORTING i_row_type TYPE REF TO zcl_lnt_abstract_type i_options TYPE REF TO zcl_lnt_itable_options i_qualified_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_description TYPE REF TO
    zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    METHODS get_options RETURNING VALUE(result) TYPE REF TO zcl_lnt_itable_options.
    METHODS is_with_header RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_access_type RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_row_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS to_abap REDEFINITION.
    METHODS to_text REDEFINITION.
    METHODS is_generic REDEFINITION.
    METHODS contains_void REDEFINITION.
    METHODS to_cds REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ty_table_type IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_row_type.
    DATA(t2) = i_options.
    DATA t5 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t7 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t8 = i_qualified_name.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t10 = i_description.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t14 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t7 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t8 i_conversion_exit = t12 i_derived_from_constant = t14 i_ddic_name = t16 i_rtti_name = t18 i_description = t10 ).
    CREATE OBJECT t7->zlnt_view_ownkeys_b0e8086400eb.
    t7->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t20 ).
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t7->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t7->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t21 ).
    ENDIF.
    CREATE OBJECT t7->zlnt_json_ownkeys_70e5fd461788.
    t7->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t22) = |qualifiedName|.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = t22 p1 = t23 ).
    DATA(t24) = |description|.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t7->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t7->zlnt_json_ownkeys_70e5fd461788->put( p0 = t24 p1 = t25 ).
    ENDIF.
    t5 = t7.
    super->constructor( i_input_967e = t5 ).
    me->row_type = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `rowType`.
    me->options = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `options`.
    DATA(t29) = VALUE abap_bool( ).
    DATA(t30) = VALUE abap_bool( ).
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t32 TYPE REF TO zcl_lnt_itable_key.
    DATA t33 TYPE REF TO zcl_lnt_itable_key.
    t33 = t2->zlnt_view_read_sr_48b89cc62ab9( ).
    t32 = t33.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t36) = xsdbool( t32 IS INITIAL ).
    IF t36 = abap_true.
    ELSE.
      DATA(t39) = VALUE string( ).
      DATA t40 TYPE REF TO zcl_lnt_itable_key.
      t40 = t32.
      t39 = t40->zlnt_view_read_sr_f361ef311f50( ).
      DATA(t42) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t42->has = abap_true.
      t42->value = t39.
      t35 = t42.
    ENDIF.
    t31 = t35.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t45) = |STANDARD|.
    DATA(t46) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t46->has = abap_true.
    t46->value = t45.
    t43 = t46.
    DATA(t48) = VALUE abap_bool( ).
    DATA(t49) = VALUE abap_bool( ).
    IF t31 IS BOUND.
      t48 = t31->has.
    ENDIF.
    IF t43 IS BOUND.
      t49 = t43->has.
    ENDIF.
    IF t48 = t49.
      IF t48 = abap_false.
        t30 = abap_true.
      ELSEIF t31->value = t43->value.
        t30 = abap_true.
      ENDIF.
    ENDIF.
    t29 = t30.
    IF t30 = abap_true.
      DATA(t50) = VALUE abap_bool( ).
      DATA(t51) = VALUE abap_bool( ).
      DATA t52 TYPE REF TO zcl_lnt_itable_key.
      DATA t53 TYPE REF TO zcl_lnt_itable_key.
      t53 = t2->zlnt_view_read_sr_48b89cc62ab9( ).
      t52 = t53.
      t51 = t52->zlnt_view_read_sr_3206010d7211( ).
      t50 = xsdbool( t51 = abap_true ).
      t29 = t50.
    ENDIF.
    IF t29 = abap_true.
      DATA t56 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t57 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t60) = |STANDARD tables cannot have UNIQUE key|.
      DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t61->has = abap_true.
      t61->value = t60.
      t58 = t61.
      t57 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t58 ).
      t56 = NEW #( ).
      t56->payload = t57.
      CLEAR t56->source_value.
      DATA t63 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t64 TYPE REF TO object.
      t64 = t57.
      TRY.
          t56->source_value ?= t64.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t56->source_value IS NOT BOUND.
        TRY.
            t63 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t63 IS BOUND.
          t56->source_value = t63->source( ).
        ENDIF.
        IF t56->source_value IS NOT BOUND.
          CREATE OBJECT t56->source_value.
          t56->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t56->source_value->oval = t57.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t56.
    ENDIF.
  ENDMETHOD.

  METHOD get_options.
    result = me->options.

  ENDMETHOD.

  METHOD is_with_header.
    DATA t1 TYPE abap_bool.
    t1 = me->options->zlnt_view_read_sr_ec4602663c93( ).
    result = t1.

  ENDMETHOD.

  METHOD get_access_type.
    DATA t2 TYPE REF TO zcl_lnt_itable_key.
    DATA t3 TYPE REF TO zcl_lnt_itable_key.
    t3 = me->options->zlnt_view_read_sr_48b89cc62ab9( ).
    t2 = t3.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = xsdbool( t2 IS INITIAL ).
    IF t6 = abap_true.
    ELSE.
      DATA t9 TYPE string.
      DATA t10 TYPE REF TO zcl_lnt_itable_key.
      t10 = t2.
      t9 = t10->zlnt_view_read_sr_f361ef311f50( ).
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = t9.
      t5 = t12.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD get_row_type.
    result = me->row_type.

  ENDMETHOD.

  METHOD to_abap.
    DATA t1 TYPE string.
    DATA t2 TYPE string.
    DATA(t3) = |STANDARD TABLE OF |.
    DATA t4 TYPE string.
    t4 = me->row_type->to_abap( ).
    DATA(t6) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t7) = | WITH DEFAULT KEY|.
    DATA(t8) = strlen( t2 ).
    t1 = |{ t2 }{ t7 }|.
    result = t1.

  ENDMETHOD.

  METHOD to_text.
    DATA(t1) = i_level.
    DATA t2 TYPE REF TO zcl_lnt_abstract_type.
    t2 = me->row_type.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    t5 = me->options->zlnt_view_read_sr_ec4602663c93( ).
    t4 = xsdbool( t5 = abap_true ).
    IF t4 = abap_true.
      DATA t8 TYPE string.
      DATA(t9) = |Table with header of |.
      DATA t10 TYPE string.
      DATA t12 TYPE f.
      DATA(t14) = CONV f( 1 ).
      t12 = t1 + t14.
      t10 = t2->to_text( i_level = t12 ).
      DATA(t15) = strlen( t9 ).
      t8 = |{ t9 }{ t10 }|.
      result = t8.
      RETURN.
    ELSE.
      DATA t16 TYPE string.
      DATA(t17) = |Table of |.
      DATA t18 TYPE string.
      DATA t20 TYPE f.
      DATA(t22) = CONV f( 1 ).
      t20 = t1 + t22.
      t18 = t2->to_text( i_level = t20 ).
      DATA(t23) = strlen( t17 ).
      t16 = |{ t17 }{ t18 }|.
      result = t16.

    ENDIF.
  ENDMETHOD.

  METHOD is_generic.
    DATA(t1) = VALUE abap_bool( ).
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t5 TYPE REF TO zcl_lnt_itable_key.
    DATA t6 TYPE REF TO zcl_lnt_itable_key.
    t6 = me->options->zlnt_view_read_sr_48b89cc62ab9( ).
    t5 = t6.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t9) = xsdbool( t5 IS INITIAL ).
    IF t9 = abap_true.
    ELSE.
      DATA t12 TYPE string.
      DATA t13 TYPE REF TO zcl_lnt_itable_key.
      t13 = t5.
      t12 = t13->zlnt_view_read_sr_f361ef311f50( ).
      DATA(t15) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t15->has = abap_true.
      t15->value = t12.
      t8 = t15.
    ENDIF.
    t4 = t8.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t18) = |STANDARD|.
    DATA(t19) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t19->has = abap_true.
    t19->value = t18.
    t16 = t19.
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = VALUE abap_bool( ).
    IF t4 IS BOUND.
      t21 = t4->has.
    ENDIF.
    IF t16 IS BOUND.
      t22 = t16->has.
    ENDIF.
    IF t21 = t22.
      IF t21 = abap_false.
        t3 = abap_true.
      ELSEIF t4->value = t16->value.
        t3 = abap_true.
      ENDIF.
    ENDIF.
    IF t3 = abap_true.
      t3 = abap_false.
    ELSE.
      t3 = abap_true.
    ENDIF.
    t2 = t3.
    IF t3 = abap_true.
      DATA t23 TYPE abap_bool.
      DATA t24 TYPE string.
      t24 = me->options->zlnt_view_read_sr_79d5aa355dd3( ).
      DATA(t26) = |USER|.
      t23 = xsdbool( t24 = t26 ).
      t2 = t23.
    ENDIF.
    t1 = t2.
    IF t2 = abap_true.
      DATA(t27) = VALUE abap_bool( ).
      DATA t28 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t31 TYPE REF TO zcl_lnt_itable_key.
      DATA t32 TYPE REF TO zcl_lnt_itable_key.
      t32 = me->options->zlnt_view_read_sr_48b89cc62ab9( ).
      t31 = t32.
      DATA t34 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t35) = xsdbool( t31 IS INITIAL ).
      IF t35 = abap_true.
      ELSE.
        DATA t38 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t39 TYPE REF TO zcl_lnt_itable_key.
        t39 = t31.
        t38 = t39->zlnt_view_read_sr_e0192e283129( ).
        t34 = t38.
      ENDIF.
      t29 = t34.
      DATA t41 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t42) = xsdbool( t29 IS INITIAL ).
      IF t42 = abap_true.
      ELSE.
        DATA t45 TYPE f.
        DATA t46 TYPE i.
        DATA t47 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t47 = t29.
        t47->load( ).
        t46 = lines( t47->items ).
        t45 = t46.
        DATA(t49) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t49->has = abap_true.
        t49->value = t45.
        t41 = t49.
      ENDIF.
      t28 = t41.
      DATA t50 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t52) = CONV f( 0 ).
      DATA(t53) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t53->has = abap_true.
      t53->value = t52.
      t50 = t53.
      DATA(t55) = VALUE abap_bool( ).
      DATA(t56) = VALUE abap_bool( ).
      IF t28 IS BOUND.
        t55 = t28->has.
      ENDIF.
      IF t50 IS BOUND.
        t56 = t50->has.
      ENDIF.
      IF t55 = t56.
        IF t55 = abap_false.
          t27 = abap_true.
        ELSE.
          IF t28->number_special <> 0 OR t50->number_special <> 0.
            t27 = xsdbool( t28->number_special = t50->number_special AND t28->number_special <> 1 ).
          ELSE.
            t27 = xsdbool( t28->value = t50->value ).
          ENDIF.
        ENDIF.
      ENDIF.
      t1 = t27.
    ENDIF.
    IF t1 = abap_true.
      result = abap_true.
      RETURN.
    ENDIF.
    DATA t58 TYPE abap_bool.
    t58 = me->row_type->is_generic( ).
    result = t58.

  ENDMETHOD.

  METHOD contains_void.
    DATA t1 TYPE abap_bool.
    t1 = me->row_type->contains_void( ).
    result = t1.

  ENDMETHOD.

  METHOD to_cds.
    result = |abap.TODO_TABLE|.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1043_18fb8ae33dc3.
  ENDMETHOD.

  METHOD zif_lnt_union_89dd54d5~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_89dd54d5~contains_void.
    result = me->contains_void( ).
  ENDMETHOD.

  METHOD zif_lnt_union_89dd54d5~get_abstract_type_data.
    result = me->get_abstract_type_data( ).
  ENDMETHOD.

  METHOD zif_lnt_union_89dd54d5~get_conversion_exit.
    result = me->get_conversion_exit( ).
  ENDMETHOD.

  METHOD zif_lnt_union_89dd54d5~get_ddic_name.
    result = me->get_ddic_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_89dd54d5~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_89dd54d5~get_qualified_name.
    result = me->get_qualified_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_89dd54d5~get_rtti_name.
    result = me->get_rtti_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_89dd54d5~is_generic.
    result = me->is_generic( ).
  ENDMETHOD.

  METHOD zif_lnt_union_89dd54d5~to_abap.
    result = me->to_abap( ).
  ENDMETHOD.

  METHOD zif_lnt_union_89dd54d5~to_cds.
    result = me->to_cds( ).
  ENDMETHOD.

  METHOD zif_lnt_union_89dd54d5~to_text.
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

  METHOD zif_lnt_union_297610d4~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_297610d4~contains_void.
    result = me->contains_void( ).
  ENDMETHOD.

  METHOD zif_lnt_union_297610d4~get_abstract_type_data.
    result = me->get_abstract_type_data( ).
  ENDMETHOD.

  METHOD zif_lnt_union_297610d4~get_conversion_exit.
    result = me->get_conversion_exit( ).
  ENDMETHOD.

  METHOD zif_lnt_union_297610d4~get_ddic_name.
    result = me->get_ddic_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_297610d4~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_297610d4~get_qualified_name.
    result = me->get_qualified_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_297610d4~get_rtti_name.
    result = me->get_rtti_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_297610d4~is_generic.
    result = me->is_generic( ).
  ENDMETHOD.

  METHOD zif_lnt_union_297610d4~to_abap.
    result = me->to_abap( ).
  ENDMETHOD.

  METHOD zif_lnt_union_297610d4~to_cds.
    result = me->to_cds( ).
  ENDMETHOD.

  METHOD zif_lnt_union_297610d4~to_text.
    result = me->to_text( i_level = i_level ).
  ENDMETHOD.

  METHOD zif_lnt_union_60f022dd~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_60f022dd~contains_void.
    result = me->contains_void( ).
  ENDMETHOD.

  METHOD zif_lnt_union_60f022dd~get_abstract_type_data.
    result = me->get_abstract_type_data( ).
  ENDMETHOD.

  METHOD zif_lnt_union_60f022dd~get_conversion_exit.
    result = me->get_conversion_exit( ).
  ENDMETHOD.

  METHOD zif_lnt_union_60f022dd~get_ddic_name.
    result = me->get_ddic_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_60f022dd~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_60f022dd~get_qualified_name.
    result = me->get_qualified_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_60f022dd~get_rtti_name.
    result = me->get_rtti_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_60f022dd~is_generic.
    result = me->is_generic( ).
  ENDMETHOD.

  METHOD zif_lnt_union_60f022dd~to_abap.
    result = me->to_abap( ).
  ENDMETHOD.

  METHOD zif_lnt_union_60f022dd~to_cds.
    result = me->to_cds( ).
  ENDMETHOD.

  METHOD zif_lnt_union_60f022dd~to_text.
    result = me->to_text( i_level = i_level ).
  ENDMETHOD.

  METHOD zif_lnt_union_72e2c467~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_72e2c467~contains_void.
    result = me->contains_void( ).
  ENDMETHOD.

  METHOD zif_lnt_union_72e2c467~get_abstract_type_data.
    result = me->get_abstract_type_data( ).
  ENDMETHOD.

  METHOD zif_lnt_union_72e2c467~get_conversion_exit.
    result = me->get_conversion_exit( ).
  ENDMETHOD.

  METHOD zif_lnt_union_72e2c467~get_ddic_name.
    result = me->get_ddic_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_72e2c467~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_72e2c467~get_qualified_name.
    result = me->get_qualified_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_72e2c467~get_rtti_name.
    result = me->get_rtti_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_72e2c467~is_generic.
    result = me->is_generic( ).
  ENDMETHOD.

  METHOD zif_lnt_union_72e2c467~to_abap.
    result = me->to_abap( ).
  ENDMETHOD.

  METHOD zif_lnt_union_72e2c467~to_cds.
    result = me->to_cds( ).
  ENDMETHOD.

  METHOD zif_lnt_union_72e2c467~to_text.
    result = me->to_text( i_level = i_level ).
  ENDMETHOD.
ENDCLASS.
