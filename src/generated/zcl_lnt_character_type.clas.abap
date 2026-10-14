* TS: src/abap/types/basic/character_type.ts:3:1 CharacterType
CLASS zcl_lnt_character_type DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_type CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_f16d2839.
    DATA length TYPE int8.
    METHODS constructor IMPORTING i_length TYPE int8 i_extra TYPE REF TO zcl_lnt_abstract_type_data OPTIONAL.
    METHODS clone_type IMPORTING i_input_967e TYPE REF TO zcl_lnt_abstract_type_data RETURNING VALUE(result) TYPE REF TO zcl_lnt_character_type.
    METHODS get_length RETURNING VALUE(result) TYPE int8.
    METHODS t_t_i_s_a_ty_bs_ch_ty_ts_ch_ty RETURNING VALUE(result) TYPE string.
    METHODS to_abap REDEFINITION.
    METHODS is_generic REDEFINITION.
    METHODS contains_void REDEFINITION.
    METHODS get_identifier RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS to_cds REDEFINITION.
    METHODS to_text REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_character_type IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_length.
    DATA(t2) = CAST zcl_lnt_abstract_type_data( i_extra ).
    DATA(t3) = CAST zcl_lnt_abstract_type_data( t2 ).
    super->constructor( i_input_967e = t3 ).
    DATA t4 TYPE abap_bool.
    DATA(t5) = t1.
    DATA(t6) = CONV int8( 0 ).
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
      RAISE EXCEPTION t7.
    ENDIF.
    DATA(t14) = t1.
    me->length = t14.
  ENDMETHOD.

  METHOD clone_type.
    DATA(t1) = CAST zcl_lnt_abstract_type_data( i_input_967e ).
    DATA t2 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t5 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t6 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t7) = CAST zcl_lnt_character_type( me ).
    t6 = t7.
    DATA t8 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA(t9) = CAST zcl_lnt_abstract_type( t6 ).
    t8 = t9->data_56cc.
    t5 = t8.
    t4 = t5.
    DATA t10 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = CAST zcl_lnt_abstract_type_data( t4 ).
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    IF t12 = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t14.
      t11 = t14.
    ELSE.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t16 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA(t17) = CAST zcl_lnt_abstract_type_data( t4 ).
      t16 = t17.
      t15 = t16->qualified_name.
      t11 = t15.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t18.
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = CAST zcl_lnt_abstract_type_data( t4 ).
    IF t20 IS INITIAL.
      t19 = abap_true.
    ENDIF.
    IF t19 = abap_true.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t21.
      t18 = t21.
    ELSE.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t23 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA(t24) = CAST zcl_lnt_abstract_type_data( t4 ).
      t23 = t24.
      t22 = t23->conversion_exit.
      t18 = t22.
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t25.
    DATA(t26) = VALUE abap_bool( ).
    DATA(t27) = CAST zcl_lnt_abstract_type_data( t4 ).
    IF t27 IS INITIAL.
      t26 = abap_true.
    ENDIF.
    IF t26 = abap_true.
      DATA t28 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t28.
      t25 = t28.
    ELSE.
      DATA t29 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t30 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA(t31) = CAST zcl_lnt_abstract_type_data( t4 ).
      t30 = t31.
      t29 = t30->derived_from_constant.
      t25 = t29.
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t32.
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = CAST zcl_lnt_abstract_type_data( t4 ).
    IF t34 IS INITIAL.
      t33 = abap_true.
    ENDIF.
    IF t33 = abap_true.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      t32 = t35.
    ELSE.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t37 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA(t38) = CAST zcl_lnt_abstract_type_data( t4 ).
      t37 = t38.
      t36 = t37->ddic_name.
      t32 = t36.
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    DATA(t40) = VALUE abap_bool( ).
    DATA(t41) = CAST zcl_lnt_abstract_type_data( t4 ).
    IF t41 IS INITIAL.
      t40 = abap_true.
    ENDIF.
    IF t40 = abap_true.
      DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t42.
      t39 = t42.
    ELSE.
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t44 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA(t45) = CAST zcl_lnt_abstract_type_data( t4 ).
      t44 = t45.
      t43 = t44->rtti_name.
      t39 = t43.
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t46.
    DATA(t47) = VALUE abap_bool( ).
    DATA(t48) = CAST zcl_lnt_abstract_type_data( t4 ).
    IF t48 IS INITIAL.
      t47 = abap_true.
    ENDIF.
    IF t47 = abap_true.
      DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t49.
      t46 = t49.
    ELSE.
      DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t51 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA(t52) = CAST zcl_lnt_abstract_type_data( t4 ).
      t51 = t52.
      t50 = t51->description.
      t46 = t50.
    ENDIF.
    t10 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t11 i_conversion_exit = t18 i_derived_from_constant = t25 i_ddic_name = t32 i_rtti_name = t39 i_description = t46 ).
    t3 = t10.
    t2 = t3.
    DATA(t53) = VALUE abap_bool( ).
    DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t55) = CAST zcl_lnt_abstract_type_data( t1 ).
    t54 = t55->qualified_name.
    IF t54 IS BOUND.
      IF t54->has = abap_true.
        t53 = xsdbool( strlen( t54->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t53 = abap_true.
      DATA(t56) = CAST zcl_lnt_abstract_type_data( t2 ).
      DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t57.
      DATA(t58) = abap_true.
      IF t58 = abap_true.
        DATA t59 TYPE string.
        DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t61) = CAST zcl_lnt_abstract_type_data( t1 ).
        t60 = t61->qualified_name.
        t59 = t60->value.
        DATA(t62) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t62->has = abap_true.
        t62->value = t59.
        t57 = t62.
      ELSE.
        DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t63.
        t57 = t63.
      ENDIF.
      t56->qualified_name = t57.
    ENDIF.
    DATA(t64) = VALUE abap_bool( ).
    DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t66) = CAST zcl_lnt_abstract_type_data( t1 ).
    t65 = t66->ddic_name.
    IF t65 IS BOUND.
      IF t65->has = abap_true.
        t64 = xsdbool( strlen( t65->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t64 = abap_true.
      DATA(t67) = CAST zcl_lnt_abstract_type_data( t2 ).
      DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t68.
      DATA(t69) = abap_true.
      IF t69 = abap_true.
        DATA t70 TYPE string.
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t72) = CAST zcl_lnt_abstract_type_data( t1 ).
        t71 = t72->ddic_name.
        t70 = t71->value.
        DATA(t73) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t73->has = abap_true.
        t73->value = t70.
        t68 = t73.
      ELSE.
        DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t74.
        t68 = t74.
      ENDIF.
      t67->ddic_name = t68.
    ENDIF.
    DATA(t75) = VALUE abap_bool( ).
    DATA t76 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t77) = CAST zcl_lnt_abstract_type_data( t1 ).
    t76 = t77->derived_from_constant.
    IF t76 IS BOUND.
      IF t76->has = abap_true.
        t75 = xsdbool( t76->value IS NOT INITIAL ).
      ENDIF.
    ENDIF.
    IF t75 = abap_true.
      DATA(t78) = CAST zcl_lnt_abstract_type_data( t2 ).
      DATA t79 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t79.
      DATA(t80) = abap_true.
      IF t80 = abap_true.
        DATA t81 TYPE abap_bool.
        DATA t82 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA(t83) = CAST zcl_lnt_abstract_type_data( t1 ).
        t82 = t83->derived_from_constant.
        t81 = t82->value.
        DATA(t84) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t84->has = abap_true.
        t84->value = t81.
        t79 = t84.
      ELSE.
        DATA t85 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t85.
        t79 = t85.
      ENDIF.
      t78->derived_from_constant = t79.
    ENDIF.
    DATA t86 TYPE REF TO zcl_lnt_character_type.
    CLEAR t86.
    DATA(t87) = CONV int8( me->length ).
    DATA t88 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t88.
    DATA(t89) = abap_true.
    IF t89 = abap_true.
      DATA(t90) = CAST zcl_lnt_abstract_type_data( t2 ).
      t88 = t90.
    ELSE.
      DATA t91 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t91.
      t88 = t91.
    ENDIF.
    t86 = NEW zcl_lnt_character_type( i_length = t87 i_extra = t88 ).
    result = t86.

  ENDMETHOD.

  METHOD get_length.
    DATA(t1) = CONV int8( me->length ).
    result = t1.

  ENDMETHOD.

  METHOD t_t_i_s_a_ty_bs_ch_ty_ts_ch_ty.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/character_type.ts:32|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD to_abap.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/character_type.ts:36|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD is_generic.
    DATA(t1) = abap_false.
    result = t1.

  ENDMETHOD.

  METHOD contains_void.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/character_type.ts:44|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_identifier.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/character_type.ts:48|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD to_cds.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/character_type.ts:52|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD to_text.
    DATA(t1) = CONV string( me->t_t_i_s_a_ty_bs_ch_ty_ts_ch_ty( ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d996_4db7887f8eb3.
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
