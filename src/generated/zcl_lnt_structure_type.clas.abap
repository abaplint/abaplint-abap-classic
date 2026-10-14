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
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_structure_type IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_components ).
    DATA(t2) = CAST zlnt_runtime_opti_4ba3bdccd169( i_qualified_name ).
    DATA(t3) = CAST zlnt_runtime_opti_4ba3bdccd169( i_ddic_name ).
    DATA(t4) = CAST zlnt_runtime_opti_4ba3bdccd169( i_description ).
    DATA t5 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA t7 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA(t8) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t9.
      DATA t10 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t10.
      DATA(t11) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
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
    DATA t15 TYPE abap_bool.
    DATA t16 TYPE i.
    DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
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
        DATA(t23) = |Structure does not contain any components|.
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
      RAISE EXCEPTION t19.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA t27 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA(t28) = NEW zlnt_runtime_map__41b3bb94df3d(  ).
    t27 = t28.
    DATA(t29) = CAST zlnt_runtime_map__41b3bb94df3d( t27 ).
    t26 = t29.
    me->indexed = t26.
    DATA(t30) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t31 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t31.
    DATA t32 TYPE REF TO object.
    CLEAR t32.
    LOOP AT t30->items INTO t32.
      t31 ?= t32.
      DATA(t33) = VALUE string( ).
      DATA t34 TYPE string.
      DATA t35 TYPE string.
      DATA(t36) = CAST zcl_lnt_istructure_component( t31 ).
      t35 = t36->name.
      DATA(t37) = strlen( t35 ).
      t34 = t35.
      IF t34 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t34 TO UPPER CASE.
      ELSE.
        t34 = zlnt_runtime_uppe_91169605024d=>full( t34 ).
      ENDIF.
      t33 = t34.
      DATA(t38) = VALUE abap_bool( ).
      DATA t39 TYPE REF TO zcl_lnt_abstract_type.
      DATA t40 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t41) = CAST zlnt_runtime_map__41b3bb94df3d( me->indexed ).
      DATA(t42) = t33.
      t40 = t41->get( p0 = t42 ).
      t39 = t40.
      DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t44.
      t43 = t44.
      DATA(t45) = VALUE abap_bool( ).
      DATA(t46) = VALUE abap_bool( ).
      DATA(t47) = CAST zcl_lnt_abstract_type( t39 ).
      IF t47 IS INITIAL.
        t46 = abap_true.
      ENDIF.
      t45 = xsdbool( t46 = abap_false ).
      t38 = t45.
      IF t38 = abap_true.
        DATA t48 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t48.
        DATA t49 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        CLEAR t49.
        DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t50.
        DATA(t51) = abap_true.
        IF t51 = abap_true.
          DATA(t52) = VALUE string( ).
          DATA t53 TYPE string.
          DATA t54 TYPE string.
          DATA(t55) = |Structure, duplicate field name "|.
          DATA(t56) = t33.
          DATA(t57) = strlen( t55 ).
          t54 = |{ t55 }{ t56 }|.
          DATA(t58) = |", |.
          DATA(t59) = strlen( t54 ).
          t53 = |{ t54 }{ t58 }|.
          DATA(t60) = VALUE string( ).
          DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t62) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
          t61 = t62.
          DATA(t63) = VALUE string( ).
          DATA(t64) = VALUE abap_bool( ).
          DATA(t65) = CAST zlnt_runtime_opti_4ba3bdccd169( t61 ).
          IF t65 IS INITIAL.
            t64 = abap_true.
          ELSEIF t65->has = abap_false.
            t64 = abap_true.
          ENDIF.
          IF t64 = abap_true.
            DATA(t66) = |undefined|.
            t63 = t66.
          ELSE.
            DATA t67 TYPE string.
            DATA(t68) = CAST zlnt_runtime_opti_4ba3bdccd169( t61 ).
            t67 = t68->value.
            t63 = t67.
          ENDIF.
          t60 = t63.
          DATA(t69) = strlen( t53 ).
          t52 = |{ t53 }{ t60 }|.
          DATA(t70) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t70->has = abap_true.
          t70->value = t52.
          t50 = t70.
        ELSE.
          DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t71.
          t50 = t71.
        ENDIF.
        t49 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t50 ).
        t48 = NEW #( ).
        t48->payload = t49.
        RAISE EXCEPTION t48.
      ENDIF.
      DATA t72 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      DATA(t73) = CAST zlnt_runtime_map__41b3bb94df3d( me->indexed ).
      DATA(t74) = t33.
      DATA t75 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t76) = CAST zcl_lnt_istructure_component( t31 ).
      t75 = t76->type_cba0.
      t72 = t73->set( p0 = t74 p1 = t75 ).
    ENDLOOP.
    DATA(t77) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    me->components = t77.
  ENDMETHOD.
  METHOD get_components.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->components ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_component_by_name.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t2.
    DATA(t3) = CAST zlnt_runtime_map__41b3bb94df3d( me->indexed ).
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
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/types/basic/structure_type.ts:43|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD is_generic.
    DATA(t1) = abap_false.
    result = t1.
    
  ENDMETHOD.
  METHOD to_abap.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/structure_type.ts:56|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD contains_void.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE abap_bool.
    DATA(t3) = abap_false.
    t2 = t3.
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( me->components ).
    DATA t5 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    LOOP AT t4->items INTO t6.
      t5 ?= t6.
      DATA t7 TYPE abap_bool.
      DATA t8 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t9) = CAST zcl_lnt_istructure_component( t5 ).
      t8 = t9->type_cba0.
      t7 = t8->contains_void(  ).
      IF t7 = abap_true.
        DATA(t10) = abap_true.
        t2 = t10.
        EXIT.
      ENDIF.
    ENDLOOP.
    DATA(t11) = t2.
    t1 = t11.
    result = t1.
    
  ENDMETHOD.
  METHOD to_cds.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/structure_type.ts:68|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1020_58ef07ed54a1.
  ENDMETHOD.
  METHOD zif_lnt_union_48da8d64~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_union_48da8d64~contains_void.
    result = me->contains_void(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_48da8d64~get_abstract_type_data.
    result = me->get_abstract_type_data(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_48da8d64~get_conversion_exit.
    result = me->get_conversion_exit(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_48da8d64~get_ddic_name.
    result = me->get_ddic_name(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_48da8d64~get_description.
    result = me->get_description(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_48da8d64~get_qualified_name.
    result = me->get_qualified_name(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_48da8d64~get_rtti_name.
    result = me->get_rtti_name(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_48da8d64~is_generic.
    result = me->is_generic(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_48da8d64~to_abap.
    result = me->to_abap(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_48da8d64~to_cds.
    result = me->to_cds(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_48da8d64~to_text.
    result = me->to_text(  i_level = i_level ).
  ENDMETHOD.
  METHOD zif_lnt_union_2724f734~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_union_2724f734~contains_void.
    result = me->contains_void(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_2724f734~get_abstract_type_data.
    result = me->get_abstract_type_data(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_2724f734~get_conversion_exit.
    result = me->get_conversion_exit(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_2724f734~get_ddic_name.
    result = me->get_ddic_name(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_2724f734~get_description.
    result = me->get_description(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_2724f734~get_qualified_name.
    result = me->get_qualified_name(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_2724f734~get_rtti_name.
    result = me->get_rtti_name(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_2724f734~is_generic.
    result = me->is_generic(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_2724f734~to_abap.
    result = me->to_abap(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_2724f734~to_cds.
    result = me->to_cds(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_2724f734~to_text.
    result = me->to_text(  i_level = i_level ).
  ENDMETHOD.
ENDCLASS.
