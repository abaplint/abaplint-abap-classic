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
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ty_table_type IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_abstract_type( i_row_type ).
    DATA(t2) = CAST zcl_lnt_itable_options( i_options ).
    DATA(t3) = CAST zlnt_runtime_opti_4ba3bdccd169( i_qualified_name ).
    DATA(t4) = CAST zlnt_runtime_opti_4ba3bdccd169( i_description ).
    DATA t5 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA t7 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA(t8) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t9.
      DATA t10 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t10.
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t11.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t12.
      DATA(t13) = CAST zlnt_runtime_opti_4ba3bdccd169( t4 ).
      t7 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t8 i_conversion_exit = t9 i_derived_from_constant = t10 i_ddic_name = t11 i_rtti_name = t12 i_description = t13 ).
      t5 = t7.
    ELSE.
      DATA t14 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t14.
      t5 = t14.
    ENDIF.
    super->constructor( i_input_967e = t5 ).
    DATA(t15) = CAST zcl_lnt_abstract_type( t1 ).
    me->row_type = t15.
    DATA(t16) = CAST zcl_lnt_itable_options( t2 ).
    me->options = t16.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = VALUE abap_bool( ).
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_itable_key.
    DATA t21 TYPE REF TO zcl_lnt_itable_key.
    DATA(t22) = CAST zcl_lnt_itable_options( t2 ).
    t21 = t22->primary_key.
    t20 = t21.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    DATA(t24) = VALUE abap_bool( ).
    DATA(t25) = CAST zcl_lnt_itable_key( t20 ).
    IF t25 IS INITIAL.
      t24 = abap_true.
    ENDIF.
    IF t24 = abap_true.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t26.
      t23 = t26.
    ELSE.
      DATA t27 TYPE string.
      DATA t28 TYPE REF TO zcl_lnt_itable_key.
      DATA(t29) = CAST zcl_lnt_itable_key( t20 ).
      t28 = t29.
      t27 = t28->type_cba0.
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = t27.
      t23 = t30.
    ENDIF.
    t19 = t23.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    DATA(t32) = abap_true.
    IF t32 = abap_true.
      DATA(t33) = |STANDARD|.
      DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t34->has = abap_true.
      t34->value = t33.
      t31 = t34.
    ELSE.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      t31 = t35.
    ENDIF.
    DATA(t36) = VALUE abap_bool( ).
    DATA(t37) = VALUE abap_bool( ).
    IF t19 IS BOUND.
      t36 = t19->has.
    ENDIF.
    IF t31 IS BOUND.
      t37 = t31->has.
    ENDIF.
    IF t36 = t37.
      IF t36 = abap_false.
        t18 = abap_true.
      ELSEIF t19->value = t31->value.
        t18 = abap_true.
      ENDIF.
    ENDIF.
    t17 = t18.
    IF t18 = abap_true.
      DATA t38 TYPE abap_bool.
      DATA t39 TYPE abap_bool.
      DATA t40 TYPE REF TO zcl_lnt_itable_key.
      DATA t41 TYPE REF TO zcl_lnt_itable_key.
      DATA(t42) = CAST zcl_lnt_itable_options( t2 ).
      t41 = t42->primary_key.
      t40 = t41.
      t39 = t40->is_unique.
      DATA(t43) = abap_true.
      t38 = xsdbool( t39 = t43 ).
      t17 = t38.
    ENDIF.
    IF t17 = abap_true.
      DATA t44 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t44.
      DATA t45 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t45.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t46.
      DATA(t47) = abap_true.
      IF t47 = abap_true.
        DATA(t48) = |STANDARD tables cannot have UNIQUE key|.
        DATA(t49) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t49->has = abap_true.
        t49->value = t48.
        t46 = t49.
      ELSE.
        DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t50.
        t46 = t50.
      ENDIF.
      t45 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t46 ).
      t44 = NEW #( ).
      t44->payload = t45.
      RAISE EXCEPTION t44.
    ENDIF.
  ENDMETHOD.
  METHOD get_options.
    DATA(t1) = CAST zcl_lnt_itable_options( me->options ).
    result = t1.

  ENDMETHOD.
  METHOD is_with_header.
    DATA t1 TYPE abap_bool.
    DATA(t2) = CAST zcl_lnt_itable_options( me->options ).
    t1 = t2->with_header.
    result = t1.

  ENDMETHOD.
  METHOD get_access_type.
    DATA t1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1.
    DATA t2 TYPE REF TO zcl_lnt_itable_key.
    DATA t3 TYPE REF TO zcl_lnt_itable_key.
    DATA(t4) = CAST zcl_lnt_itable_options( me->options ).
    t3 = t4->primary_key.
    t2 = t3.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = CAST zcl_lnt_itable_key( t2 ).
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    IF t6 = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t8.
      t5 = t8.
    ELSE.
      DATA t9 TYPE string.
      DATA t10 TYPE REF TO zcl_lnt_itable_key.
      DATA(t11) = CAST zcl_lnt_itable_key( t2 ).
      t10 = t11.
      t9 = t10->type_cba0.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = t9.
      t5 = t12.
    ENDIF.
    t1 = t5.
    result = t1.

  ENDMETHOD.
  METHOD get_row_type.
    DATA(t1) = CAST zcl_lnt_abstract_type( me->row_type ).
    result = t1.

  ENDMETHOD.
  METHOD to_abap.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/table_type.ts:63|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD to_text.
    DATA(t1) = i_level.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/types/basic/table_type.ts:68|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD is_generic.
    DATA(t1) = VALUE abap_bool( ).
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_itable_key.
    DATA t6 TYPE REF TO zcl_lnt_itable_key.
    DATA(t7) = CAST zcl_lnt_itable_options( me->options ).
    t6 = t7->primary_key.
    t5 = t6.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = CAST zcl_lnt_itable_key( t5 ).
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    IF t9 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t11.
      t8 = t11.
    ELSE.
      DATA t12 TYPE string.
      DATA t13 TYPE REF TO zcl_lnt_itable_key.
      DATA(t14) = CAST zcl_lnt_itable_key( t5 ).
      t13 = t14.
      t12 = t13->type_cba0.
      DATA(t15) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t15->has = abap_true.
      t15->value = t12.
      t8 = t15.
    ENDIF.
    t4 = t8.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t16.
    DATA(t17) = abap_true.
    IF t17 = abap_true.
      DATA(t18) = |STANDARD|.
      DATA(t19) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t19->has = abap_true.
      t19->value = t18.
      t16 = t19.
    ELSE.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      t16 = t20.
    ENDIF.
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
      DATA(t25) = CAST zcl_lnt_itable_options( me->options ).
      t24 = t25->key_type.
      DATA(t26) = |USER|.
      t23 = xsdbool( t24 = t26 ).
      t2 = t23.
    ENDIF.
    t1 = t2.
    IF t2 = abap_true.
      DATA(t27) = VALUE abap_bool( ).
      DATA t28 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
      CLEAR t28.
      DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t29.
      DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t30.
      DATA t31 TYPE REF TO zcl_lnt_itable_key.
      DATA t32 TYPE REF TO zcl_lnt_itable_key.
      DATA(t33) = CAST zcl_lnt_itable_options( me->options ).
      t32 = t33->primary_key.
      t31 = t32.
      DATA t34 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t34.
      DATA(t35) = VALUE abap_bool( ).
      DATA(t36) = CAST zcl_lnt_itable_key( t31 ).
      IF t36 IS INITIAL.
        t35 = abap_true.
      ENDIF.
      IF t35 = abap_true.
        DATA t37 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t37.
        t34 = t37.
      ELSE.
        DATA t38 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t39 TYPE REF TO zcl_lnt_itable_key.
        DATA(t40) = CAST zcl_lnt_itable_key( t31 ).
        t39 = t40.
        t38 = t39->key_fields.
        t34 = t38.
      ENDIF.
      t30 = t34.
      t29 = t30.
      DATA t41 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
      CLEAR t41.
      DATA(t42) = VALUE abap_bool( ).
      DATA(t43) = CAST zlnt_runtime_arra_8ecd6afe19e0( t29 ).
      IF t43 IS INITIAL.
        t42 = abap_true.
      ENDIF.
      IF t42 = abap_true.
        DATA t44 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
        CLEAR t44.
        t41 = t44.
      ELSE.
        DATA t45 TYPE int8.
        DATA t46 TYPE i.
        DATA t47 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t48) = CAST zlnt_runtime_arra_8ecd6afe19e0( t29 ).
        t47 = t48.
        t46 = lines( t47->items ).
        t45 = t46.
        DATA(t49) = NEW zlnt_runtime_opti_4a236cd5714d( ).
        t49->has = abap_true.
        t49->value = t45.
        t41 = t49.
      ENDIF.
      t28 = t41.
      DATA t50 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
      CLEAR t50.
      DATA(t51) = abap_true.
      IF t51 = abap_true.
        DATA(t52) = CONV int8( 0 ).
        DATA(t53) = NEW zlnt_runtime_opti_4a236cd5714d( ).
        t53->has = abap_true.
        t53->value = t52.
        t50 = t53.
      ELSE.
        DATA t54 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
        CLEAR t54.
        t50 = t54.
      ENDIF.
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
        ELSEIF t28->value = t50->value.
          t27 = abap_true.
        ENDIF.
      ENDIF.
      t1 = t27.
    ENDIF.
    IF t1 = abap_true.
      DATA(t57) = abap_true.
      result = t57.
      RETURN.
    ENDIF.
    DATA t58 TYPE abap_bool.
    DATA(t59) = CAST zcl_lnt_abstract_type( me->row_type ).
    t58 = t59->is_generic( ).
    result = t58.

  ENDMETHOD.
  METHOD contains_void.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/table_type.ts:87|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD to_cds.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/table_type.ts:91|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1021_1105e16557a8.
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
