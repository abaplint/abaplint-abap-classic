* TS: src/ddic.ts:21:1 DDIC
CLASS zcl_lnt_ddic DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS is_exception IMPORTING i_def TYPE REF TO zcl_lnt_info_class_definition i_obj_ac26 TYPE REF TO zcl_lnt_abap_object RETURNING VALUE(result) TYPE abap_bool.
    METHODS lookup_builtin_type IMPORTING i_name TYPE string i_length TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a i_decimals_2eed TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a i_qualified_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169
    RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS in_error_namespace IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE abap_bool.
    METHODS lookup_object IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_ilookup_result.
    METHODS lookup_no_void IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_ilookup_result.
    METHODS lookup_ddls IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_ilookup_result.
    METHODS lookup IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_ilookup_result.
    METHODS lookup_domain IMPORTING i_name TYPE string i_data_element TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_ilookup_result.
    METHODS lookup_data_element IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_ilookup_result.
    METHODS lookup_table_or_view IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_ilookup_result.
    METHODS lookup_table_or_view2 IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zif_lnt_union_c74a232f.
    METHODS lookup_table IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS lookup_view IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_ilookup_result.
    METHODS lookup_table_type IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_ilookup_result.
    METHODS text_to_type IMPORTING i_input_967e TYPE REF TO zcl_lnt_shape_4a88086c RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA zlnt_builtin_code_15236315dde7 TYPE REF TO cl_abap_conv_out_ce.
ENDCLASS.
CLASS zcl_lnt_ddic IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD is_exception.
    DATA(t1) = i_def.
    DATA(t2) = i_obj_ac26.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zcl_lnt_info_class_definition.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t4.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    t3 = t8.
    IF t3 = abap_true.
      DATA(t10) = abap_false.
      result = t10.
      RETURN.
    ENDIF.
    DATA(t11) = VALUE abap_bool( ).
    DATA t12 TYPE string.
    DATA t13 TYPE string.
    DATA t14 TYPE REF TO zcl_lnt_info_class_definition.
    DATA(t15) = t1.
    t14 = t15.
    t13 = t14->name.
    DATA(t16) = strlen( t13 ).
    t12 = t13.
    IF t12 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t12 TO UPPER CASE.
    ELSE.
      t12 = zlnt_runtime_uppe_91169605024d=>full( t12 ).
    ENDIF.
    DATA(t17) = |CX_ROOT|.
    t11 = xsdbool( t12 = t17 ).
    IF t11 = abap_true.
      DATA(t18) = abap_true.
      result = t18.
      RETURN.
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t21 TYPE REF TO zcl_lnt_info_class_definition.
    DATA(t22) = t1.
    t21 = t22.
    t20 = t21->super_class_name.
    t19 = t20.
    DATA(t23) = VALUE abap_bool( ).
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t25) = t19.
    t24 = t25.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    t26 = t27.
    DATA(t28) = VALUE abap_bool( ).
    DATA(t29) = t24.
    IF t29 IS INITIAL.
      t28 = abap_true.
    ELSEIF t29->has = abap_false.
      t28 = abap_true.
    ENDIF.
    t23 = t28.
    IF t23 = abap_true.
      DATA(t30) = abap_false.
      result = t30.
      RETURN.
    ENDIF.
    DATA t31 TYPE f.
    DATA(t32) = CONV f( 0 ).
    t31 = t32.
    DO.
      DATA t33 TYPE abap_bool.
      DATA t34 TYPE abap_bool.
      DATA t35 TYPE f.
      DATA t36 TYPE f.
      DATA(t37) = t31.
      t36 = t37.
      DATA t38 TYPE f.
      DATA(t39) = t36.
      DATA(t40) = CONV f( 1 ).
      t38 = t39 + t40.
      t31 = t38.
      DATA(t41) = t36.
      t35 = t41.
      DATA(t42) = CONV f( 10 ).
      t34 = xsdbool( t35 < t42 ).
      t33 = t34.
      IF t34 = abap_true.
        DATA(t43) = VALUE abap_bool( ).
        DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t45) = t19.
        t44 = t45.
        DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t47.
        t46 = t47.
        DATA(t48) = VALUE abap_bool( ).
        DATA(t49) = VALUE abap_bool( ).
        DATA(t50) = t44.
        IF t50 IS INITIAL.
          t49 = abap_true.
        ELSEIF t50->has = abap_false.
          t49 = abap_true.
        ENDIF.
        t48 = xsdbool( t49 = abap_false ).
        t43 = t48.
        t33 = t43.
      ENDIF.
      IF t33 = abap_false.
        EXIT.
      ENDIF.
      DATA t51 TYPE REF TO zcl_lnt_abap_object.
      CLEAR t51.
      DATA t52 TYPE REF TO zcl_lnt_abap_object.
      CLEAR t52.
      DATA t53 TYPE REF TO zif_lnt_object.
      CLEAR t53.
      DATA(t54) = me->reg.
      DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t55.
      DATA(t56) = abap_true.
      IF t56 = abap_true.
        DATA(t57) = |CLAS|.
        DATA(t58) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t58->has = abap_true.
        t58->value = t57.
        t55 = t58.
      ELSE.
        DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t59.
        t55 = t59.
      ENDIF.
      DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t60.
      DATA(t61) = abap_true.
      IF t61 = abap_true.
        DATA t62 TYPE string.
        DATA(t63) = t19.
        t62 = t63->value.
        DATA(t64) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t64->has = abap_true.
        t64->value = t62.
        t60 = t64.
      ELSE.
        DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t65.
        t60 = t65.
      ENDIF.
      t53 = t54->get_object( i_type_9913 = t55 i_name = t60 ).
      DATA t66 TYPE REF TO object.
      t66 = t53.
      t52 ?= t66.
      t51 = t52.
      DATA(t67) = VALUE abap_bool( ).
      DATA t68 TYPE REF TO zcl_lnt_abap_object.
      DATA(t69) = t51.
      t68 = t69.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t71.
      t70 = t71.
      DATA(t72) = VALUE abap_bool( ).
      DATA(t73) = t68.
      IF t73 IS INITIAL.
        t72 = abap_true.
      ENDIF.
      t67 = t72.
      IF t67 = abap_true.
        EXIT.
      ENDIF.
      DATA t74 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t74.
      DATA t75 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t75.
      DATA t76 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t76.
      DATA t77 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t77.
      DATA t78 TYPE REF TO zcl_lnt_abap_file.
      DATA t79 TYPE REF TO zcl_lnt_abap_file.
      DATA t80 TYPE REF TO zcl_lnt_abap_object.
      DATA(t81) = t51.
      t80 = t81.
      t79 = t80->get_main_abap_file( ).
      t78 = t79.
      DATA t82 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t82.
      DATA(t83) = VALUE abap_bool( ).
      DATA(t84) = t78.
      IF t84 IS INITIAL.
        t83 = abap_true.
      ENDIF.
      IF t83 = abap_true.
        DATA t85 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t85.
        t82 = t85.
      ELSE.
        DATA t86 TYPE REF TO zif_lnt_abap_file_information.
        DATA t87 TYPE REF TO zcl_lnt_abap_file.
        DATA t88 TYPE REF TO zcl_lnt_abap_file.
        DATA(t89) = t78.
        t88 = t89.
        t87 = t88.
        DATA t90 TYPE REF TO zif_lnt_abap_file_information.
        DATA(t91) = t87.
        t90 = t91->info.
        t86 = t90.
        t82 = t86.
      ENDIF.
      t77 = t82.
      t76 = t77.
      DATA t92 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t92.
      DATA(t93) = VALUE abap_bool( ).
      DATA(t94) = t76.
      IF t94 IS INITIAL.
        t93 = abap_true.
      ENDIF.
      IF t93 = abap_true.
        DATA t95 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t95.
        t92 = t95.
      ELSE.
        DATA t96 TYPE REF TO zcl_lnt_info_class_definition.
        DATA t97 TYPE REF TO zif_lnt_abap_file_information.
        DATA(t98) = t76.
        t97 = t98.
        DATA t99 TYPE string.
        DATA(t100) = t19.
        t99 = t100->value.
        t96 = t97->get_class_definition_by_name( i_name = t99 ).
        t92 = t96.
      ENDIF.
      t75 = t92.
      t74 = t75.
      DATA(t101) = VALUE abap_bool( ).
      DATA t102 TYPE REF TO zcl_lnt_info_class_definition.
      DATA(t103) = t74.
      t102 = t103.
      DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t105.
      t104 = t105.
      DATA(t106) = VALUE abap_bool( ).
      DATA(t107) = t102.
      IF t107 IS INITIAL.
        t106 = abap_true.
      ENDIF.
      t101 = t106.
      IF t101 = abap_true.
        EXIT.
      ENDIF.
      DATA(t108) = VALUE abap_bool( ).
      DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t110 TYPE REF TO zcl_lnt_info_class_definition.
      DATA(t111) = t74.
      t110 = t111.
      t109 = t110->super_class_name.
      IF t109 IS BOUND.
        IF t109->has = abap_true.
          t108 = xsdbool( strlen( t109->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t108 = abap_true.
        DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t112.
        DATA(t113) = abap_true.
        IF t113 = abap_true.
          DATA t114 TYPE string.
          DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t116 TYPE REF TO zcl_lnt_info_class_definition.
          DATA(t117) = t74.
          t116 = t117.
          t115 = t116->super_class_name.
          t114 = t115->value.
          DATA(t118) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t118->has = abap_true.
          t118->value = t114.
          t112 = t118.
        ELSE.
          DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t119.
          t112 = t119.
        ENDIF.
        t19 = t112.
      ELSE.
        EXIT.
      ENDIF.
    ENDDO.
    DATA(t120) = VALUE abap_bool( ).
    DATA(t121) = VALUE abap_bool( ).
    DATA t122 TYPE abap_bool.
    DATA t123 TYPE abap_bool.
    DATA t124 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t125 TYPE string.
    DATA t126 TYPE string.
    DATA(t127) = t19.
    t126 = t127->value.
    t125 = t126.
    DATA t128 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t129) = t125.
    DATA t130 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t130.
    DATA(t131) = |^.?cx_.*$|.
    DATA(t132) = |^[^\n\r|.
    DATA t133 TYPE c LENGTH 1.
    CLEAR t133.
    t133 = cl_abap_conv_in_ce=>uccpi( 8232 ).
    CONCATENATE t132 t133 INTO t132 RESPECTING BLANKS.
    DATA t134 TYPE c LENGTH 1.
    CLEAR t134.
    t134 = cl_abap_conv_in_ce=>uccpi( 8233 ).
    CONCATENATE t132 t134 INTO t132 RESPECTING BLANKS.
    t132 = t132 && |]?cx_[^\n\r|.
    DATA t135 TYPE c LENGTH 1.
    CLEAR t135.
    t135 = cl_abap_conv_in_ce=>uccpi( 8232 ).
    CONCATENATE t132 t135 INTO t132 RESPECTING BLANKS.
    DATA t136 TYPE c LENGTH 1.
    CLEAR t136.
    t136 = cl_abap_conv_in_ce=>uccpi( 8233 ).
    CONCATENATE t132 t136 INTO t132 RESPECTING BLANKS.
    t132 = t132 && |]*$|.
    DATA(t137) = |i|.
    CREATE OBJECT t130 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t132 flags = t137.
    t130->source = t131.
    t128 = t130->match( t129 ).
    t124 = t128.
    t123 = xsdbool( t124 IS BOUND ).
    t122 = t123.
    IF t123 = abap_false.
      DATA t138 TYPE abap_bool.
      DATA t139 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t140 TYPE string.
      DATA t141 TYPE string.
      DATA(t142) = t19.
      t141 = t142->value.
      t140 = t141.
      DATA t143 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t144) = t140.
      DATA t145 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t145.
      DATA(t146) = `^\/.+\/cx_.*$`.
      DATA(t147) = `^\/[^`.
      t147 = t147 && |\n\r|.
      DATA t148 TYPE c LENGTH 1.
      CLEAR t148.
      t148 = cl_abap_conv_in_ce=>uccpi( 8232 ).
      CONCATENATE t147 t148 INTO t147 RESPECTING BLANKS.
      DATA t149 TYPE c LENGTH 1.
      CLEAR t149.
      t149 = cl_abap_conv_in_ce=>uccpi( 8233 ).
      CONCATENATE t147 t149 INTO t147 RESPECTING BLANKS.
      t147 = t147 && `]+\/cx_[^`.
      t147 = t147 && |\n\r|.
      DATA t150 TYPE c LENGTH 1.
      CLEAR t150.
      t150 = cl_abap_conv_in_ce=>uccpi( 8232 ).
      CONCATENATE t147 t150 INTO t147 RESPECTING BLANKS.
      DATA t151 TYPE c LENGTH 1.
      CLEAR t151.
      t151 = cl_abap_conv_in_ce=>uccpi( 8233 ).
      CONCATENATE t147 t151 INTO t147 RESPECTING BLANKS.
      t147 = t147 && |]*$|.
      DATA(t152) = |i|.
      CREATE OBJECT t145 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t147 flags = t152.
      t145->source = t146.
      t143 = t145->match( t144 ).
      t139 = t143.
      t138 = xsdbool( t139 IS BOUND ).
      t122 = t138.
    ENDIF.
    IF t122 = abap_true.
      DATA(t153) = abap_true.
      t121 = t153.
    ELSE.
      DATA(t154) = abap_false.
      t121 = t154.
    ENDIF.
    t120 = t121.
    DATA(t155) = t120.
    result = t155.

  ENDMETHOD.

  METHOD lookup_builtin_type.
    DATA(t1) = i_name.
    DATA(t2) = i_length.
    DATA(t3) = i_decimals_2eed.
    DATA(t4) = i_qualified_name.
    DATA t5 TYPE abap_bool.
    DATA(t6) = t1.
    DATA(t7) = |STRING|.
    t5 = xsdbool( t6 = t7 ).
    IF t5 = abap_true.
      DATA t8 TYPE REF TO zcl_lnt_string_type.
      CLEAR t8.
      DATA t9 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t9.
      DATA(t10) = abap_true.
      IF t10 = abap_true.
        DATA t11 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t11.
        DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t12.
        DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t13.
        DATA(t14) = abap_true.
        IF t14 = abap_true.
          DATA(t15) = VALUE string( ).
          DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t17) = t4.
          t16 = t17.
          DATA(t18) = VALUE string( ).
          DATA(t19) = VALUE abap_bool( ).
          DATA(t20) = t16.
          IF t20 IS BOUND.
            IF t20->has = abap_true.
              t19 = xsdbool( strlen( t20->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t19 = abap_true.
            DATA t21 TYPE string.
            DATA(t22) = t16.
            t21 = t22->value.
            t18 = t21.
          ELSE.
            DATA(t23) = t1.
            t18 = t23.
          ENDIF.
          t15 = t18.
          DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t24->has = abap_true.
          t24->value = t15.
          t13 = t24.
        ELSE.
          DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t25.
          t13 = t25.
        ENDIF.
        t12 = t13.
        DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t27.
        t26 = t27.
        DATA t28 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t29 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t29.
        t28 = t29.
        DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t31.
        t30 = t31.
        DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t33.
        t32 = t33.
        DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t35.
        t34 = t35.
        t11 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t12 i_conversion_exit = t26 i_derived_from_constant = t28 i_ddic_name = t30 i_rtti_name = t32 i_description = t34 ).
        CREATE OBJECT t11->zlnt_view_ownkeys_b0e8086400eb.
        t11->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t36.
        IF t11->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t11->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t36 ).
        ENDIF.
        CREATE OBJECT t11->zlnt_json_ownkeys_70e5fd461788.
        t11->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t37) = |qualifiedName|.
        DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t38.
        IF t11->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t11->zlnt_json_ownkeys_70e5fd461788->put( p0 = t37 p1 = t38 ).
        ENDIF.
        t9 = t11.
      ELSE.
        DATA t39 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t39.
        t9 = t39.
      ENDIF.
      t8 = zcl_lnt_string_type=>get_db65( i_input_967e = t9 ).
      result = t8.
      RETURN.
    ELSE.
      DATA t40 TYPE abap_bool.
      DATA(t41) = t1.
      DATA(t42) = |XSTRING|.
      t40 = xsdbool( t41 = t42 ).
      IF t40 = abap_true.
        DATA t43 TYPE REF TO zcl_lnt_x_string_type.
        CLEAR t43.
        DATA t44 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t44.
        DATA(t45) = abap_true.
        IF t45 = abap_true.
          DATA t46 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t46.
          DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t47.
          DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t48.
          DATA(t49) = abap_true.
          IF t49 = abap_true.
            DATA(t50) = VALUE string( ).
            DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t52) = t4.
            t51 = t52.
            DATA(t53) = VALUE string( ).
            DATA(t54) = VALUE abap_bool( ).
            DATA(t55) = t51.
            IF t55 IS BOUND.
              IF t55->has = abap_true.
                t54 = xsdbool( strlen( t55->value ) > 0 ).
              ENDIF.
            ENDIF.
            IF t54 = abap_true.
              DATA t56 TYPE string.
              DATA(t57) = t51.
              t56 = t57->value.
              t53 = t56.
            ELSE.
              DATA(t58) = t1.
              t53 = t58.
            ENDIF.
            t50 = t53.
            DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t59->has = abap_true.
            t59->value = t50.
            t48 = t59.
          ELSE.
            DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t60.
            t48 = t60.
          ENDIF.
          t47 = t48.
          DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t62.
          t61 = t62.
          DATA t63 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA t64 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t64.
          t63 = t64.
          DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t66.
          t65 = t66.
          DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t68.
          t67 = t68.
          DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t70.
          t69 = t70.
          t46 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t47 i_conversion_exit = t61 i_derived_from_constant = t63 i_ddic_name = t65 i_rtti_name = t67 i_description = t69 ).
          CREATE OBJECT t46->zlnt_view_ownkeys_b0e8086400eb.
          t46->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t71.
          IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t71 ).
          ENDIF.
          CREATE OBJECT t46->zlnt_json_ownkeys_70e5fd461788.
          t46->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t72) = |qualifiedName|.
          DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t73.
          IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t72 p1 = t73 ).
          ENDIF.
          t44 = t46.
        ELSE.
          DATA t74 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t74.
          t44 = t74.
        ENDIF.
        t43 = zcl_lnt_x_string_type=>get_db65( i_input_967e = t44 ).
        result = t43.
        RETURN.
      ELSE.
        DATA t75 TYPE abap_bool.
        DATA(t76) = t1.
        DATA(t77) = |D|.
        t75 = xsdbool( t76 = t77 ).
        IF t75 = abap_true.
          DATA t78 TYPE REF TO zcl_lnt_date_type.
          CLEAR t78.
          DATA t79 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t79.
          DATA(t80) = abap_true.
          IF t80 = abap_true.
            DATA t81 TYPE REF TO zcl_lnt_abstract_type_data.
            CLEAR t81.
            DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t82.
            DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t83.
            DATA(t84) = abap_true.
            IF t84 = abap_true.
              DATA(t85) = VALUE string( ).
              DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t87) = t4.
              t86 = t87.
              DATA(t88) = VALUE string( ).
              DATA(t89) = VALUE abap_bool( ).
              DATA(t90) = t86.
              IF t90 IS BOUND.
                IF t90->has = abap_true.
                  t89 = xsdbool( strlen( t90->value ) > 0 ).
                ENDIF.
              ENDIF.
              IF t89 = abap_true.
                DATA t91 TYPE string.
                DATA(t92) = t86.
                t91 = t92->value.
                t88 = t91.
              ELSE.
                DATA(t93) = t1.
                t88 = t93.
              ENDIF.
              t85 = t88.
              DATA(t94) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t94->has = abap_true.
              t94->value = t85.
              t83 = t94.
            ELSE.
              DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t95.
              t83 = t95.
            ENDIF.
            t82 = t83.
            DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t97.
            t96 = t97.
            DATA t98 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            DATA t99 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t99.
            t98 = t99.
            DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t101.
            t100 = t101.
            DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t103.
            t102 = t103.
            DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t105.
            t104 = t105.
            t81 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t82 i_conversion_exit = t96 i_derived_from_constant = t98 i_ddic_name = t100 i_rtti_name = t102 i_description = t104 ).
            CREATE OBJECT t81->zlnt_view_ownkeys_b0e8086400eb.
            t81->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t106.
            IF t81->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t106 ).
            ENDIF.
            CREATE OBJECT t81->zlnt_json_ownkeys_70e5fd461788.
            t81->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t107) = |qualifiedName|.
            DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t108.
            IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = t107 p1 = t108 ).
            ENDIF.
            t79 = t81.
          ELSE.
            DATA t109 TYPE REF TO zcl_lnt_abstract_type_data.
            CLEAR t109.
            t79 = t109.
          ENDIF.
          t78 = NEW zcl_lnt_date_type( i_input_967e = t79 ).
          result = t78.
          RETURN.
        ELSE.
          DATA t110 TYPE abap_bool.
          DATA(t111) = t1.
          DATA(t112) = |T|.
          t110 = xsdbool( t111 = t112 ).
          IF t110 = abap_true.
            DATA t113 TYPE REF TO zcl_lnt_time_type.
            CLEAR t113.
            DATA t114 TYPE REF TO zcl_lnt_abstract_type_data.
            CLEAR t114.
            DATA(t115) = abap_true.
            IF t115 = abap_true.
              DATA t116 TYPE REF TO zcl_lnt_abstract_type_data.
              CLEAR t116.
              DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t117.
              DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t118.
              DATA(t119) = abap_true.
              IF t119 = abap_true.
                DATA(t120) = VALUE string( ).
                DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t122) = t4.
                t121 = t122.
                DATA(t123) = VALUE string( ).
                DATA(t124) = VALUE abap_bool( ).
                DATA(t125) = t121.
                IF t125 IS BOUND.
                  IF t125->has = abap_true.
                    t124 = xsdbool( strlen( t125->value ) > 0 ).
                  ENDIF.
                ENDIF.
                IF t124 = abap_true.
                  DATA t126 TYPE string.
                  DATA(t127) = t121.
                  t126 = t127->value.
                  t123 = t126.
                ELSE.
                  DATA(t128) = t1.
                  t123 = t128.
                ENDIF.
                t120 = t123.
                DATA(t129) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t129->has = abap_true.
                t129->value = t120.
                t118 = t129.
              ELSE.
                DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t130.
                t118 = t130.
              ENDIF.
              t117 = t118.
              DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t132.
              t131 = t132.
              DATA t133 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              DATA t134 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t134.
              t133 = t134.
              DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t136.
              t135 = t136.
              DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t138.
              t137 = t138.
              DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t140.
              t139 = t140.
              t116 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t117 i_conversion_exit = t131 i_derived_from_constant = t133 i_ddic_name = t135 i_rtti_name = t137 i_description = t139 ).
              CREATE OBJECT t116->zlnt_view_ownkeys_b0e8086400eb.
              t116->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t141.
              IF t116->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t141 ).
              ENDIF.
              CREATE OBJECT t116->zlnt_json_ownkeys_70e5fd461788.
              t116->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t142) = |qualifiedName|.
              DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t143.
              IF t116->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = t142 p1 = t143 ).
              ENDIF.
              t114 = t116.
            ELSE.
              DATA t144 TYPE REF TO zcl_lnt_abstract_type_data.
              CLEAR t144.
              t114 = t144.
            ENDIF.
            t113 = NEW zcl_lnt_time_type( i_input_967e = t114 ).
            result = t113.
            RETURN.
          ELSE.
            DATA t145 TYPE abap_bool.
            DATA(t146) = t1.
            DATA(t147) = |XSEQUENCE|.
            t145 = xsdbool( t146 = t147 ).
            IF t145 = abap_true.
              DATA t148 TYPE REF TO zcl_lnt_x_sequence_type.
              CLEAR t148.
              DATA t149 TYPE REF TO zcl_lnt_abstract_type_data.
              CLEAR t149.
              DATA(t150) = abap_true.
              IF t150 = abap_true.
                DATA t151 TYPE REF TO zcl_lnt_abstract_type_data.
                DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t153) = t4.
                t152 = t153.
                DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t155.
                t154 = t155.
                DATA t156 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                DATA t157 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t157.
                t156 = t157.
                DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t159.
                t158 = t159.
                DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t161.
                t160 = t161.
                DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t163.
                t162 = t163.
                t151 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t152 i_conversion_exit = t154 i_derived_from_constant = t156 i_ddic_name = t158 i_rtti_name = t160 i_description = t162 ).
                CREATE OBJECT t151->zlnt_view_ownkeys_b0e8086400eb.
                t151->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t164.
                IF t151->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t151->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t164 ).
                ENDIF.
                CREATE OBJECT t151->zlnt_json_ownkeys_70e5fd461788.
                t151->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t165) = |qualifiedName|.
                DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t166.
                IF t151->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t151->zlnt_json_ownkeys_70e5fd461788->put( p0 = t165 p1 = t166 ).
                ENDIF.
                t149 = t151.
              ELSE.
                DATA t167 TYPE REF TO zcl_lnt_abstract_type_data.
                CLEAR t167.
                t149 = t167.
              ENDIF.
              t148 = NEW zcl_lnt_x_sequence_type( i_input_967e = t149 ).
              result = t148.
              RETURN.
            ELSE.
              DATA t168 TYPE abap_bool.
              DATA(t169) = t1.
              DATA(t170) = |CLIKE|.
              t168 = xsdbool( t169 = t170 ).
              IF t168 = abap_true.
                DATA(t171) = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
                result = t171.
                RETURN.
              ELSE.
                DATA t172 TYPE abap_bool.
                DATA(t173) = t1.
                DATA(t174) = |DECFLOAT|.
                t172 = xsdbool( t173 = t174 ).
                IF t172 = abap_true.
                  DATA t175 TYPE REF TO zcl_lnt_dec_float_type.
                  CLEAR t175.
                  DATA t176 TYPE REF TO zcl_lnt_abstract_type_data.
                  CLEAR t176.
                  DATA(t177) = abap_true.
                  IF t177 = abap_true.
                    DATA t178 TYPE REF TO zcl_lnt_abstract_type_data.
                    DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA(t180) = t4.
                    t179 = t180.
                    DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t182.
                    t181 = t182.
                    DATA t183 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    DATA t184 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t184.
                    t183 = t184.
                    DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t186.
                    t185 = t186.
                    DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t188.
                    t187 = t188.
                    DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t190.
                    t189 = t190.
                    t178 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t179 i_conversion_exit = t181 i_derived_from_constant = t183 i_ddic_name = t185 i_rtti_name = t187 i_description = t189 ).
                    CREATE OBJECT t178->zlnt_view_ownkeys_b0e8086400eb.
                    t178->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t191.
                    IF t178->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t178->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t191 ).
                    ENDIF.
                    CREATE OBJECT t178->zlnt_json_ownkeys_70e5fd461788.
                    t178->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA(t192) = |qualifiedName|.
                    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t193.
                    IF t178->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t178->zlnt_json_ownkeys_70e5fd461788->put( p0 = t192 p1 = t193 ).
                    ENDIF.
                    t176 = t178.
                  ELSE.
                    DATA t194 TYPE REF TO zcl_lnt_abstract_type_data.
                    CLEAR t194.
                    t176 = t194.
                  ENDIF.
                  t175 = NEW zcl_lnt_dec_float_type( i_input_967e = t176 ).
                  result = t175.
                  RETURN.
                ELSE.
                  DATA t195 TYPE abap_bool.
                  DATA(t196) = t1.
                  DATA(t197) = |ANY|.
                  t195 = xsdbool( t196 = t197 ).
                  IF t195 = abap_true.
                    DATA t198 TYPE REF TO zcl_lnt_any_type.
                    CLEAR t198.
                    DATA t199 TYPE REF TO zcl_lnt_abstract_type_data.
                    CLEAR t199.
                    DATA(t200) = abap_true.
                    IF t200 = abap_true.
                      DATA t201 TYPE REF TO zcl_lnt_abstract_type_data.
                      DATA t202 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA(t203) = t4.
                      t202 = t203.
                      DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t205.
                      t204 = t205.
                      DATA t206 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                      DATA t207 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                      CLEAR t207.
                      t206 = t207.
                      DATA t208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t209.
                      t208 = t209.
                      DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t211.
                      t210 = t211.
                      DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t213.
                      t212 = t213.
                      t201 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t202 i_conversion_exit = t204 i_derived_from_constant = t206 i_ddic_name = t208 i_rtti_name = t210 i_description = t212 ).
                      CREATE OBJECT t201->zlnt_view_ownkeys_b0e8086400eb.
                      t201->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t214.
                      IF t201->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t201->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t214 ).
                      ENDIF.
                      CREATE OBJECT t201->zlnt_json_ownkeys_70e5fd461788.
                      t201->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA(t215) = |qualifiedName|.
                      DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t216.
                      IF t201->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t201->zlnt_json_ownkeys_70e5fd461788->put( p0 = t215 p1 = t216 ).
                      ENDIF.
                      t199 = t201.
                    ELSE.
                      DATA t217 TYPE REF TO zcl_lnt_abstract_type_data.
                      CLEAR t217.
                      t199 = t217.
                    ENDIF.
                    t198 = zcl_lnt_any_type=>get_db65( i_input_967e = t199 ).
                    result = t198.
                    RETURN.
                  ELSE.
                    DATA t218 TYPE abap_bool.
                    DATA(t219) = t1.
                    DATA(t220) = |SIMPLE|.
                    t218 = xsdbool( t219 = t220 ).
                    IF t218 = abap_true.
                      DATA(t221) = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
                      result = t221.
                      RETURN.
                    ELSE.
                      DATA t222 TYPE abap_bool.
                      DATA(t223) = t1.
                      DATA(t224) = |%_C_POINTER|.
                      t222 = xsdbool( t223 = t224 ).
                      IF t222 = abap_true.
                        DATA t225 TYPE REF TO zcl_lnt_hex_type.
                        DATA(t226) = CONV f( 8 ).
                        DATA(t227) = t4.
                        t225 = NEW zcl_lnt_hex_type( i_length = t226 i_qualified_name = t227 ).
                        result = t225.
                        RETURN.
                      ELSE.
                        DATA t228 TYPE abap_bool.
                        DATA(t229) = t1.
                        DATA(t230) = |TABLE|.
                        t228 = xsdbool( t229 = t230 ).
                        IF t228 = abap_true.
                          DATA t231 TYPE REF TO zcl_lnt_ty_table_type.
                          CLEAR t231.
                          DATA t232 TYPE REF TO zcl_lnt_any_type.
                          DATA t233 TYPE REF TO zcl_lnt_abstract_type_data.
                          CLEAR t233.
                          t232 = zcl_lnt_any_type=>get_db65( i_input_967e = t233 ).
                          DATA t234 TYPE REF TO zcl_lnt_itable_options.
                          DATA t235 TYPE abap_bool.
                          DATA(t236) = abap_false.
                          t235 = t236.
                          DATA t237 TYPE string.
                          DATA(t238) = |DEFAULT|.
                          t237 = t238.
                          DATA t239 TYPE REF TO zcl_lnt_itable_key.
                          DATA t240 TYPE REF TO zcl_lnt_itable_key.
                          CLEAR t240.
                          t239 = t240.
                          DATA t241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                          DATA t242 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                          CLEAR t242.
                          t241 = t242.
                          t234 = NEW zcl_lnt_itable_options( i_with_header = t235 i_key_type = t237 i_primary_key = t239 i_secondary = t241 ).
                          CREATE OBJECT t234->zlnt_view_ownkeys_b0e8086400eb.
                          t234->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                          DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t243.
                          IF t234->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                            t234->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t243 ).
                          ENDIF.
                          DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t244.
                          IF t234->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                            t234->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t244 ).
                          ENDIF.
                          CREATE OBJECT t234->zlnt_json_ownkeys_70e5fd461788.
                          t234->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                          DATA(t245) = |withHeader|.
                          DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t246.
                          IF t234->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                            t234->zlnt_json_ownkeys_70e5fd461788->put( p0 = t245 p1 = t246 ).
                          ENDIF.
                          DATA(t247) = |keyType|.
                          DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t248.
                          IF t234->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                            t234->zlnt_json_ownkeys_70e5fd461788->put( p0 = t247 p1 = t248 ).
                          ENDIF.
                          DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t249.
                          DATA t250 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t250.
                          t231 = NEW zcl_lnt_ty_table_type( i_row_type = t232 i_options = t234 i_qualified_name = t249 i_description = t250 ).
                          result = t231.
                          RETURN.
                        ELSE.
                          DATA t251 TYPE abap_bool.
                          DATA(t252) = t1.
                          DATA(t253) = |DATA|.
                          t251 = xsdbool( t252 = t253 ).
                          IF t251 = abap_true.
                            DATA t254 TYPE REF TO zcl_lnt_data_type.
                            CLEAR t254.
                            DATA t255 TYPE REF TO zcl_lnt_abstract_type_data.
                            CLEAR t255.
                            DATA(t256) = abap_true.
                            IF t256 = abap_true.
                              DATA t257 TYPE REF TO zcl_lnt_abstract_type_data.
                              DATA t258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              DATA(t259) = t4.
                              t258 = t259.
                              DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t261.
                              t260 = t261.
                              DATA t262 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                              DATA t263 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                              CLEAR t263.
                              t262 = t263.
                              DATA t264 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              DATA t265 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t265.
                              t264 = t265.
                              DATA t266 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t267.
                              t266 = t267.
                              DATA t268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t269.
                              t268 = t269.
                              t257 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t258 i_conversion_exit = t260 i_derived_from_constant = t262 i_ddic_name = t264 i_rtti_name = t266 i_description = t268 ).
                              CREATE OBJECT t257->zlnt_view_ownkeys_b0e8086400eb.
                              t257->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                              DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              CLEAR t270.
                              IF t257->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                                t257->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t270 ).
                              ENDIF.
                              CREATE OBJECT t257->zlnt_json_ownkeys_70e5fd461788.
                              t257->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                              DATA(t271) = |qualifiedName|.
                              DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              CLEAR t272.
                              IF t257->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                                t257->zlnt_json_ownkeys_70e5fd461788->put( p0 = t271 p1 = t272 ).
                              ENDIF.
                              t255 = t257.
                            ELSE.
                              DATA t273 TYPE REF TO zcl_lnt_abstract_type_data.
                              CLEAR t273.
                              t255 = t273.
                            ENDIF.
                            t254 = NEW zcl_lnt_data_type( i_input_967e = t255 ).
                            result = t254.
                            RETURN.
                          ELSE.
                            DATA t274 TYPE abap_bool.
                            DATA(t275) = t1.
                            DATA(t276) = |NUMERIC|.
                            t274 = xsdbool( t275 = t276 ).
                            IF t274 = abap_true.
                              DATA t277 TYPE REF TO zcl_lnt_numeric_generic_type.
                              CLEAR t277.
                              DATA t278 TYPE REF TO zcl_lnt_abstract_type_data.
                              CLEAR t278.
                              DATA(t279) = abap_true.
                              IF t279 = abap_true.
                                DATA t280 TYPE REF TO zcl_lnt_abstract_type_data.
                                DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                DATA(t282) = t4.
                                t281 = t282.
                                DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                DATA t284 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                CLEAR t284.
                                t283 = t284.
                                DATA t285 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                DATA t286 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                CLEAR t286.
                                t285 = t286.
                                DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                CLEAR t288.
                                t287 = t288.
                                DATA t289 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                DATA t290 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                CLEAR t290.
                                t289 = t290.
                                DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                DATA t292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                CLEAR t292.
                                t291 = t292.
                                t280 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t281 i_conversion_exit = t283 i_derived_from_constant = t285 i_ddic_name = t287 i_rtti_name = t289 i_description = t291 ).
                                CREATE OBJECT t280->zlnt_view_ownkeys_b0e8086400eb.
                                t280->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                CLEAR t293.
                                IF t280->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                                  t280->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t293 ).
                                ENDIF.
                                CREATE OBJECT t280->zlnt_json_ownkeys_70e5fd461788.
                                t280->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                DATA(t294) = |qualifiedName|.
                                DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                CLEAR t295.
                                IF t280->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                                  t280->zlnt_json_ownkeys_70e5fd461788->put( p0 = t294 p1 = t295 ).
                                ENDIF.
                                t278 = t280.
                              ELSE.
                                DATA t296 TYPE REF TO zcl_lnt_abstract_type_data.
                                CLEAR t296.
                                t278 = t296.
                              ENDIF.
                              t277 = NEW zcl_lnt_numeric_generic_type( i_input_967e = t278 ).
                              result = t277.
                              RETURN.
                            ELSE.
                              DATA t297 TYPE abap_bool.
                              DATA(t298) = t1.
                              DATA(t299) = |UTCLONG|.
                              t297 = xsdbool( t298 = t299 ).
                              IF t297 = abap_true.
                                DATA t300 TYPE REF TO zcl_lnt_utc_long_type.
                                CLEAR t300.
                                DATA t301 TYPE REF TO zcl_lnt_abstract_type_data.
                                CLEAR t301.
                                DATA(t302) = abap_true.
                                IF t302 = abap_true.
                                  DATA t303 TYPE REF TO zcl_lnt_abstract_type_data.
                                  DATA t304 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  DATA(t305) = t4.
                                  t304 = t305.
                                  DATA t306 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  DATA t307 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  CLEAR t307.
                                  t306 = t307.
                                  DATA t308 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                  DATA t309 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                  CLEAR t309.
                                  t308 = t309.
                                  DATA t310 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  CLEAR t311.
                                  t310 = t311.
                                  DATA t312 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  DATA t313 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  CLEAR t313.
                                  t312 = t313.
                                  DATA t314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  DATA t315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  CLEAR t315.
                                  t314 = t315.
                                  t303 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t304 i_conversion_exit = t306 i_derived_from_constant = t308 i_ddic_name = t310 i_rtti_name = t312 i_description = t314 ).
                                  CREATE OBJECT t303->zlnt_view_ownkeys_b0e8086400eb.
                                  t303->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                  DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                  CLEAR t316.
                                  IF t303->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                                    t303->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t316 ).
                                  ENDIF.
                                  CREATE OBJECT t303->zlnt_json_ownkeys_70e5fd461788.
                                  t303->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                  DATA(t317) = |qualifiedName|.
                                  DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                  CLEAR t318.
                                  IF t303->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                                    t303->zlnt_json_ownkeys_70e5fd461788->put( p0 = t317 p1 = t318 ).
                                  ENDIF.
                                  t301 = t303.
                                ELSE.
                                  DATA t319 TYPE REF TO zcl_lnt_abstract_type_data.
                                  CLEAR t319.
                                  t301 = t319.
                                ENDIF.
                                t300 = NEW zcl_lnt_utc_long_type( i_input_967e = t301 ).
                                result = t300.
                                RETURN.
                              ELSE.
                                DATA t320 TYPE abap_bool.
                                DATA(t321) = t1.
                                DATA(t322) = |DECFLOAT16|.
                                t320 = xsdbool( t321 = t322 ).
                                IF t320 = abap_true.
                                  DATA t323 TYPE REF TO zcl_lnt_dec_float16_type.
                                  CLEAR t323.
                                  DATA t324 TYPE REF TO zcl_lnt_abstract_type_data.
                                  CLEAR t324.
                                  DATA(t325) = abap_true.
                                  IF t325 = abap_true.
                                    DATA t326 TYPE REF TO zcl_lnt_abstract_type_data.
                                    DATA t327 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                    DATA(t328) = t4.
                                    t327 = t328.
                                    DATA t329 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                    DATA t330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                    CLEAR t330.
                                    t329 = t330.
                                    DATA t331 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                    DATA t332 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                    CLEAR t332.
                                    t331 = t332.
                                    DATA t333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                    DATA t334 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                    CLEAR t334.
                                    t333 = t334.
                                    DATA t335 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                    DATA t336 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                    CLEAR t336.
                                    t335 = t336.
                                    DATA t337 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                    DATA t338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                    CLEAR t338.
                                    t337 = t338.
                                    t326 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t327 i_conversion_exit = t329 i_derived_from_constant = t331 i_ddic_name = t333 i_rtti_name = t335 i_description = t337 ).
                                    CREATE OBJECT t326->zlnt_view_ownkeys_b0e8086400eb.
                                    t326->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                    DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                    CLEAR t339.
                                    IF t326->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                                      t326->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t339 ).
                                    ENDIF.
                                    CREATE OBJECT t326->zlnt_json_ownkeys_70e5fd461788.
                                    t326->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                    DATA(t340) = |qualifiedName|.
                                    DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                    CLEAR t341.
                                    IF t326->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                                      t326->zlnt_json_ownkeys_70e5fd461788->put( p0 = t340 p1 = t341 ).
                                    ENDIF.
                                    t324 = t326.
                                  ELSE.
                                    DATA t342 TYPE REF TO zcl_lnt_abstract_type_data.
                                    CLEAR t342.
                                    t324 = t342.
                                  ENDIF.
                                  t323 = NEW zcl_lnt_dec_float16_type( i_input_967e = t324 ).
                                  result = t323.
                                  RETURN.
                                ELSE.
                                  DATA t343 TYPE abap_bool.
                                  DATA(t344) = t1.
                                  DATA(t345) = |DECFLOAT34|.
                                  t343 = xsdbool( t344 = t345 ).
                                  IF t343 = abap_true.
                                    DATA t346 TYPE REF TO zcl_lnt_dec_float34_type.
                                    CLEAR t346.
                                    DATA t347 TYPE REF TO zcl_lnt_abstract_type_data.
                                    CLEAR t347.
                                    DATA(t348) = abap_true.
                                    IF t348 = abap_true.
                                      DATA t349 TYPE REF TO zcl_lnt_abstract_type_data.
                                      DATA t350 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                      DATA(t351) = t4.
                                      t350 = t351.
                                      DATA t352 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                      DATA t353 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                      CLEAR t353.
                                      t352 = t353.
                                      DATA t354 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                      DATA t355 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                      CLEAR t355.
                                      t354 = t355.
                                      DATA t356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                      DATA t357 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                      CLEAR t357.
                                      t356 = t357.
                                      DATA t358 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                      DATA t359 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                      CLEAR t359.
                                      t358 = t359.
                                      DATA t360 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                      DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                      CLEAR t361.
                                      t360 = t361.
                                      t349 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t350 i_conversion_exit = t352 i_derived_from_constant = t354 i_ddic_name = t356 i_rtti_name = t358 i_description = t360 ).
                                      CREATE OBJECT t349->zlnt_view_ownkeys_b0e8086400eb.
                                      t349->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                      DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                      CLEAR t362.
                                      IF t349->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                                        t349->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t362 ).
                                      ENDIF.
                                      CREATE OBJECT t349->zlnt_json_ownkeys_70e5fd461788.
                                      t349->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                      DATA(t363) = |qualifiedName|.
                                      DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                      CLEAR t364.
                                      IF t349->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                                        t349->zlnt_json_ownkeys_70e5fd461788->put( p0 = t363 p1 = t364 ).
                                      ENDIF.
                                      t347 = t349.
                                    ELSE.
                                      DATA t365 TYPE REF TO zcl_lnt_abstract_type_data.
                                      CLEAR t365.
                                      t347 = t365.
                                    ENDIF.
                                    t346 = NEW zcl_lnt_dec_float34_type( i_input_967e = t347 ).
                                    result = t346.
                                    RETURN.
                                  ELSE.
                                    DATA t366 TYPE abap_bool.
                                    DATA(t367) = t1.
                                    DATA(t368) = |CSEQUENCE|.
                                    t366 = xsdbool( t367 = t368 ).
                                    IF t366 = abap_true.
                                      DATA t369 TYPE REF TO zcl_lnt_c_sequence_type.
                                      CLEAR t369.
                                      DATA t370 TYPE REF TO zcl_lnt_abstract_type_data.
                                      CLEAR t370.
                                      DATA(t371) = abap_true.
                                      IF t371 = abap_true.
                                        DATA t372 TYPE REF TO zcl_lnt_abstract_type_data.
                                        DATA t373 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                        DATA(t374) = t4.
                                        t373 = t374.
                                        DATA t375 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                        DATA t376 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                        CLEAR t376.
                                        t375 = t376.
                                        DATA t377 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                        DATA t378 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                        CLEAR t378.
                                        t377 = t378.
                                        DATA t379 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                        DATA t380 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                        CLEAR t380.
                                        t379 = t380.
                                        DATA t381 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                        DATA t382 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                        CLEAR t382.
                                        t381 = t382.
                                        DATA t383 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                        DATA t384 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                        CLEAR t384.
                                        t383 = t384.
                                        t372 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t373 i_conversion_exit = t375 i_derived_from_constant = t377 i_ddic_name = t379 i_rtti_name = t381 i_description = t383 ).
                                        CREATE OBJECT t372->zlnt_view_ownkeys_b0e8086400eb.
                                        t372->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                        DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                        CLEAR t385.
                                        IF t372->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                                          t372->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t385 ).
                                        ENDIF.
                                        CREATE OBJECT t372->zlnt_json_ownkeys_70e5fd461788.
                                        t372->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                        DATA(t386) = |qualifiedName|.
                                        DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                        CLEAR t387.
                                        IF t372->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                                          t372->zlnt_json_ownkeys_70e5fd461788->put( p0 = t386 p1 = t387 ).
                                        ENDIF.
                                        t370 = t372.
                                      ELSE.
                                        DATA t388 TYPE REF TO zcl_lnt_abstract_type_data.
                                        CLEAR t388.
                                        t370 = t388.
                                      ENDIF.
                                      t369 = NEW zcl_lnt_c_sequence_type( i_input_967e = t370 ).
                                      result = t369.
                                      RETURN.
                                    ELSE.
                                      DATA t389 TYPE abap_bool.
                                      DATA(t390) = t1.
                                      DATA(t391) = |I|.
                                      t389 = xsdbool( t390 = t391 ).
                                      IF t389 = abap_true.
                                        DATA t392 TYPE REF TO zcl_lnt_integer_type.
                                        CLEAR t392.
                                        DATA t393 TYPE REF TO zcl_lnt_abstract_type_data.
                                        CLEAR t393.
                                        DATA(t394) = abap_true.
                                        IF t394 = abap_true.
                                          DATA t395 TYPE REF TO zcl_lnt_abstract_type_data.
                                          CLEAR t395.
                                          DATA t396 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                          CLEAR t396.
                                          DATA t397 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                          CLEAR t397.
                                          DATA(t398) = abap_true.
                                          IF t398 = abap_true.
                                            DATA(t399) = VALUE string( ).
                                            DATA t400 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                            DATA(t401) = t4.
                                            t400 = t401.
                                            DATA(t402) = VALUE string( ).
                                            DATA(t403) = VALUE abap_bool( ).
                                            DATA(t404) = t400.
                                            IF t404 IS BOUND.
                                              IF t404->has = abap_true.
                                                t403 = xsdbool( strlen( t404->value ) > 0 ).
                                              ENDIF.
                                            ENDIF.
                                            IF t403 = abap_true.
                                              DATA t405 TYPE string.
                                              DATA(t406) = t400.
                                              t405 = t406->value.
                                              t402 = t405.
                                            ELSE.
                                              DATA(t407) = t1.
                                              t402 = t407.
                                            ENDIF.
                                            t399 = t402.
                                            DATA(t408) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                            t408->has = abap_true.
                                            t408->value = t399.
                                            t397 = t408.
                                          ELSE.
                                            DATA t409 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                            CLEAR t409.
                                            t397 = t409.
                                          ENDIF.
                                          t396 = t397.
                                          DATA t410 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                          DATA t411 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                          CLEAR t411.
                                          t410 = t411.
                                          DATA t412 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                          DATA t413 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                          CLEAR t413.
                                          t412 = t413.
                                          DATA t414 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                          DATA t415 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                          CLEAR t415.
                                          t414 = t415.
                                          DATA t416 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                          DATA t417 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                          CLEAR t417.
                                          t416 = t417.
                                          DATA t418 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                          DATA t419 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                          CLEAR t419.
                                          t418 = t419.
                                          t395 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t396 i_conversion_exit = t410 i_derived_from_constant = t412 i_ddic_name = t414 i_rtti_name = t416 i_description = t418 ).
                                          CREATE OBJECT t395->zlnt_view_ownkeys_b0e8086400eb.
                                          t395->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                          DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                          CLEAR t420.
                                          IF t395->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                                            t395->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t420 ).
                                          ENDIF.
                                          CREATE OBJECT t395->zlnt_json_ownkeys_70e5fd461788.
                                          t395->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                          DATA(t421) = |qualifiedName|.
                                          DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                          CLEAR t422.
                                          IF t395->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                                            t395->zlnt_json_ownkeys_70e5fd461788->put( p0 = t421 p1 = t422 ).
                                          ENDIF.
                                          t393 = t395.
                                        ELSE.
                                          DATA t423 TYPE REF TO zcl_lnt_abstract_type_data.
                                          CLEAR t423.
                                          t393 = t423.
                                        ENDIF.
                                        t392 = zcl_lnt_integer_type=>get_db65( i_input_967e = t393 ).
                                        result = t392.
                                        RETURN.
                                      ELSE.
                                        DATA t424 TYPE abap_bool.
                                        DATA(t425) = t1.
                                        DATA(t426) = |INT8|.
                                        t424 = xsdbool( t425 = t426 ).
                                        IF t424 = abap_true.
                                          DATA t427 TYPE REF TO zcl_lnt_integer8_type.
                                          CLEAR t427.
                                          DATA t428 TYPE REF TO zcl_lnt_abstract_type_data.
                                          CLEAR t428.
                                          DATA(t429) = abap_true.
                                          IF t429 = abap_true.
                                            DATA t430 TYPE REF TO zcl_lnt_abstract_type_data.
                                            CLEAR t430.
                                            DATA t431 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                            CLEAR t431.
                                            DATA t432 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                            CLEAR t432.
                                            DATA(t433) = abap_true.
                                            IF t433 = abap_true.
                                              DATA(t434) = VALUE string( ).
                                              DATA t435 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                              DATA(t436) = t4.
                                              t435 = t436.
                                              DATA(t437) = VALUE string( ).
                                              DATA(t438) = VALUE abap_bool( ).
                                              DATA(t439) = t435.
                                              IF t439 IS BOUND.
                                                IF t439->has = abap_true.
                                                  t438 = xsdbool( strlen( t439->value ) > 0 ).
                                                ENDIF.
                                              ENDIF.
                                              IF t438 = abap_true.
                                                DATA t440 TYPE string.
                                                DATA(t441) = t435.
                                                t440 = t441->value.
                                                t437 = t440.
                                              ELSE.
                                                DATA(t442) = t1.
                                                t437 = t442.
                                              ENDIF.
                                              t434 = t437.
                                              DATA(t443) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                              t443->has = abap_true.
                                              t443->value = t434.
                                              t432 = t443.
                                            ELSE.
                                              DATA t444 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                              CLEAR t444.
                                              t432 = t444.
                                            ENDIF.
                                            t431 = t432.
                                            DATA t445 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                            DATA t446 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                            CLEAR t446.
                                            t445 = t446.
                                            DATA t447 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                            DATA t448 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                            CLEAR t448.
                                            t447 = t448.
                                            DATA t449 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                            DATA t450 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                            CLEAR t450.
                                            t449 = t450.
                                            DATA t451 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                            DATA t452 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                            CLEAR t452.
                                            t451 = t452.
                                            DATA t453 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                            DATA t454 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                            CLEAR t454.
                                            t453 = t454.
                                            t430 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t431 i_conversion_exit = t445 i_derived_from_constant = t447 i_ddic_name = t449 i_rtti_name = t451 i_description = t453 ).
                                            CREATE OBJECT t430->zlnt_view_ownkeys_b0e8086400eb.
                                            t430->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                            DATA t455 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                            CLEAR t455.
                                            IF t430->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                                              t430->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t455 ).
                                            ENDIF.
                                            CREATE OBJECT t430->zlnt_json_ownkeys_70e5fd461788.
                                            t430->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                            DATA(t456) = |qualifiedName|.
                                            DATA t457 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                            CLEAR t457.
                                            IF t430->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                                              t430->zlnt_json_ownkeys_70e5fd461788->put( p0 = t456 p1 = t457 ).
                                            ENDIF.
                                            t428 = t430.
                                          ELSE.
                                            DATA t458 TYPE REF TO zcl_lnt_abstract_type_data.
                                            CLEAR t458.
                                            t428 = t458.
                                          ENDIF.
                                          t427 = NEW zcl_lnt_integer8_type( i_input_967e = t428 ).
                                          result = t427.
                                          RETURN.
                                        ELSE.
                                          DATA t459 TYPE abap_bool.
                                          DATA(t460) = t1.
                                          DATA(t461) = |F|.
                                          t459 = xsdbool( t460 = t461 ).
                                          IF t459 = abap_true.
                                            DATA t462 TYPE REF TO zcl_lnt_float_type.
                                            CLEAR t462.
                                            DATA t463 TYPE REF TO zcl_lnt_abstract_type_data.
                                            CLEAR t463.
                                            DATA(t464) = abap_true.
                                            IF t464 = abap_true.
                                              DATA t465 TYPE REF TO zcl_lnt_abstract_type_data.
                                              CLEAR t465.
                                              DATA t466 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                              CLEAR t466.
                                              DATA t467 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                              CLEAR t467.
                                              DATA(t468) = abap_true.
                                              IF t468 = abap_true.
                                                DATA(t469) = VALUE string( ).
                                                DATA t470 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                DATA(t471) = t4.
                                                t470 = t471.
                                                DATA(t472) = VALUE string( ).
                                                DATA(t473) = VALUE abap_bool( ).
                                                DATA(t474) = t470.
                                                IF t474 IS BOUND.
                                                  IF t474->has = abap_true.
                                                    t473 = xsdbool( strlen( t474->value ) > 0 ).
                                                  ENDIF.
                                                ENDIF.
                                                IF t473 = abap_true.
                                                  DATA t475 TYPE string.
                                                  DATA(t476) = t470.
                                                  t475 = t476->value.
                                                  t472 = t475.
                                                ELSE.
                                                  DATA(t477) = t1.
                                                  t472 = t477.
                                                ENDIF.
                                                t469 = t472.
                                                DATA(t478) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                t478->has = abap_true.
                                                t478->value = t469.
                                                t467 = t478.
                                              ELSE.
                                                DATA t479 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                CLEAR t479.
                                                t467 = t479.
                                              ENDIF.
                                              t466 = t467.
                                              DATA t480 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                              DATA t481 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                              CLEAR t481.
                                              t480 = t481.
                                              DATA t482 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                              DATA t483 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                              CLEAR t483.
                                              t482 = t483.
                                              DATA t484 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                              DATA t485 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                              CLEAR t485.
                                              t484 = t485.
                                              DATA t486 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                              DATA t487 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                              CLEAR t487.
                                              t486 = t487.
                                              DATA t488 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                              DATA t489 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                              CLEAR t489.
                                              t488 = t489.
                                              t465 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t466 i_conversion_exit = t480 i_derived_from_constant = t482 i_ddic_name = t484 i_rtti_name = t486 i_description = t488 ).
                                              CREATE OBJECT t465->zlnt_view_ownkeys_b0e8086400eb.
                                              t465->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                              DATA t490 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                              CLEAR t490.
                                              IF t465->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                                                t465->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t490 ).
                                              ENDIF.
                                              CREATE OBJECT t465->zlnt_json_ownkeys_70e5fd461788.
                                              t465->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                              DATA(t491) = |qualifiedName|.
                                              DATA t492 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                              CLEAR t492.
                                              IF t465->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                                                t465->zlnt_json_ownkeys_70e5fd461788->put( p0 = t491 p1 = t492 ).
                                              ENDIF.
                                              t463 = t465.
                                            ELSE.
                                              DATA t493 TYPE REF TO zcl_lnt_abstract_type_data.
                                              CLEAR t493.
                                              t463 = t493.
                                            ENDIF.
                                            t462 = NEW zcl_lnt_float_type( i_input_967e = t463 ).
                                            result = t462.
                                            RETURN.
                                          ELSE.
                                            DATA t494 TYPE abap_bool.
                                            DATA(t495) = t1.
                                            DATA(t496) = |P|.
                                            t494 = xsdbool( t495 = t496 ).
                                            IF t494 = abap_true.
                                              DATA(t497) = VALUE abap_bool( ).
                                              DATA(t498) = VALUE abap_bool( ).
                                              DATA(t499) = t2.
                                              IF t499 IS BOUND.
                                                IF t499->has = abap_true.
                                                  IF t499->number_special <> 0.
                                                    t498 = xsdbool( t499->number_special <> 1 ).
                                                  ELSE.
                                                    t498 = xsdbool( t499->value IS NOT INITIAL ).
                                                  ENDIF.
                                                ENDIF.
                                              ENDIF.
                                              t497 = t498.
                                              IF t498 = abap_true.
                                                DATA(t500) = VALUE abap_bool( ).
                                                DATA(t501) = t3.
                                                IF t501 IS BOUND.
                                                  IF t501->has = abap_true.
                                                    IF t501->number_special <> 0.
                                                      t500 = xsdbool( t501->number_special <> 1 ).
                                                    ELSE.
                                                      t500 = xsdbool( t501->value IS NOT INITIAL ).
                                                    ENDIF.
                                                  ENDIF.
                                                ENDIF.
                                                t497 = t500.
                                              ENDIF.
                                              IF t497 = abap_true.
                                                DATA t502 TYPE REF TO zcl_lnt_packed_type.
                                                CLEAR t502.
                                                DATA(t503) = VALUE f( ).
                                                DATA(t504) = t2.
                                                IF t504->number_special <> 0.
                                                  RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                                                ENDIF.
                                                t503 = t504->value.
                                                DATA(t505) = VALUE f( ).
                                                DATA(t506) = t3.
                                                IF t506->number_special <> 0.
                                                  RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                                                ENDIF.
                                                t505 = t506->value.
                                                DATA t507 TYPE REF TO zcl_lnt_abstract_type_data.
                                                CLEAR t507.
                                                DATA(t508) = abap_true.
                                                IF t508 = abap_true.
                                                  DATA t509 TYPE REF TO zcl_lnt_abstract_type_data.
                                                  DATA t510 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  DATA(t511) = t4.
                                                  t510 = t511.
                                                  DATA t512 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  DATA t513 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  CLEAR t513.
                                                  t512 = t513.
                                                  DATA t514 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                  DATA t515 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                  CLEAR t515.
                                                  t514 = t515.
                                                  DATA t516 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  DATA t517 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  CLEAR t517.
                                                  t516 = t517.
                                                  DATA t518 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  DATA t519 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  CLEAR t519.
                                                  t518 = t519.
                                                  DATA t520 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  DATA t521 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  CLEAR t521.
                                                  t520 = t521.
                                                  t509 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t510 i_conversion_exit = t512 i_derived_from_constant = t514 i_ddic_name = t516 i_rtti_name = t518 i_description = t520 ).
                                                  CREATE OBJECT t509->zlnt_view_ownkeys_b0e8086400eb.
                                                  t509->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                  DATA t522 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                  CLEAR t522.
                                                  IF t509->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                                                    t509->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t522 ).
                                                  ENDIF.
                                                  CREATE OBJECT t509->zlnt_json_ownkeys_70e5fd461788.
                                                  t509->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                  DATA(t523) = |qualifiedName|.
                                                  DATA t524 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                  CLEAR t524.
                                                  IF t509->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                                                    t509->zlnt_json_ownkeys_70e5fd461788->put( p0 = t523 p1 = t524 ).
                                                  ENDIF.
                                                  t507 = t509.
                                                ELSE.
                                                  DATA t525 TYPE REF TO zcl_lnt_abstract_type_data.
                                                  CLEAR t525.
                                                  t507 = t525.
                                                ENDIF.
                                                t502 = NEW zcl_lnt_packed_type( i_length = t503 i_decimals_2eed = t505 i_extra = t507 ).
                                                result = t502.
                                                RETURN.
                                              ELSE.
                                                DATA(t526) = VALUE abap_bool( ).
                                                DATA(t527) = t2.
                                                IF t527 IS BOUND.
                                                  IF t527->has = abap_true.
                                                    IF t527->number_special <> 0.
                                                      t526 = xsdbool( t527->number_special <> 1 ).
                                                    ELSE.
                                                      t526 = xsdbool( t527->value IS NOT INITIAL ).
                                                    ENDIF.
                                                  ENDIF.
                                                ENDIF.
                                                IF t526 = abap_true.
                                                  DATA t528 TYPE REF TO zcl_lnt_packed_type.
                                                  CLEAR t528.
                                                  DATA(t529) = VALUE f( ).
                                                  DATA(t530) = t2.
                                                  IF t530->number_special <> 0.
                                                    RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                                                  ENDIF.
                                                  t529 = t530->value.
                                                  DATA(t531) = CONV f( 0 ).
                                                  DATA t532 TYPE REF TO zcl_lnt_abstract_type_data.
                                                  CLEAR t532.
                                                  DATA(t533) = abap_true.
                                                  IF t533 = abap_true.
                                                    DATA t534 TYPE REF TO zcl_lnt_abstract_type_data.
                                                    DATA t535 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    DATA(t536) = t4.
                                                    t535 = t536.
                                                    DATA t537 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    DATA t538 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t538.
                                                    t537 = t538.
                                                    DATA t539 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                    DATA t540 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                    CLEAR t540.
                                                    t539 = t540.
                                                    DATA t541 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    DATA t542 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t542.
                                                    t541 = t542.
                                                    DATA t543 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    DATA t544 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t544.
                                                    t543 = t544.
                                                    DATA t545 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    DATA t546 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t546.
                                                    t545 = t546.
                                                    t534 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t535 i_conversion_exit = t537 i_derived_from_constant = t539 i_ddic_name = t541 i_rtti_name = t543 i_description = t545 ).
                                                    CREATE OBJECT t534->zlnt_view_ownkeys_b0e8086400eb.
                                                    t534->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                    DATA t547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                    CLEAR t547.
                                                    IF t534->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                                                      t534->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t547 ).
                                                    ENDIF.
                                                    CREATE OBJECT t534->zlnt_json_ownkeys_70e5fd461788.
                                                    t534->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                    DATA(t548) = |qualifiedName|.
                                                    DATA t549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                    CLEAR t549.
                                                    IF t534->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                                                      t534->zlnt_json_ownkeys_70e5fd461788->put( p0 = t548 p1 = t549 ).
                                                    ENDIF.
                                                    t532 = t534.
                                                  ELSE.
                                                    DATA t550 TYPE REF TO zcl_lnt_abstract_type_data.
                                                    CLEAR t550.
                                                    t532 = t550.
                                                  ENDIF.
                                                  t528 = NEW zcl_lnt_packed_type( i_length = t529 i_decimals_2eed = t531 i_extra = t532 ).
                                                  result = t528.
                                                  RETURN.
                                                ELSE.
                                                  DATA t551 TYPE REF TO zcl_lnt_packed_type.
                                                  CLEAR t551.
                                                  DATA(t552) = CONV f( 8 ).
                                                  DATA(t553) = CONV f( 0 ).
                                                  DATA t554 TYPE REF TO zcl_lnt_abstract_type_data.
                                                  CLEAR t554.
                                                  DATA(t555) = abap_true.
                                                  IF t555 = abap_true.
                                                    DATA t556 TYPE REF TO zcl_lnt_abstract_type_data.
                                                    DATA t557 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    DATA(t558) = t4.
                                                    t557 = t558.
                                                    DATA t559 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    DATA t560 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t560.
                                                    t559 = t560.
                                                    DATA t561 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                    DATA t562 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                    CLEAR t562.
                                                    t561 = t562.
                                                    DATA t563 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    DATA t564 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t564.
                                                    t563 = t564.
                                                    DATA t565 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    DATA t566 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t566.
                                                    t565 = t566.
                                                    DATA t567 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    DATA t568 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t568.
                                                    t567 = t568.
                                                    t556 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t557 i_conversion_exit = t559 i_derived_from_constant = t561 i_ddic_name = t563 i_rtti_name = t565 i_description = t567 ).
                                                    CREATE OBJECT t556->zlnt_view_ownkeys_b0e8086400eb.
                                                    t556->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                    DATA t569 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                    CLEAR t569.
                                                    IF t556->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                                                      t556->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t569 ).
                                                    ENDIF.
                                                    CREATE OBJECT t556->zlnt_json_ownkeys_70e5fd461788.
                                                    t556->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                    DATA(t570) = |qualifiedName|.
                                                    DATA t571 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                    CLEAR t571.
                                                    IF t556->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                                                      t556->zlnt_json_ownkeys_70e5fd461788->put( p0 = t570 p1 = t571 ).
                                                    ENDIF.
                                                    t554 = t556.
                                                  ELSE.
                                                    DATA t572 TYPE REF TO zcl_lnt_abstract_type_data.
                                                    CLEAR t572.
                                                    t554 = t572.
                                                  ENDIF.
                                                  t551 = NEW zcl_lnt_packed_type( i_length = t552 i_decimals_2eed = t553 i_extra = t554 ).
                                                  result = t551.
                                                  RETURN.
                                                ENDIF.
                                              ENDIF.
                                            ELSE.
                                              DATA t573 TYPE abap_bool.
                                              DATA(t574) = t1.
                                              DATA(t575) = |C|.
                                              t573 = xsdbool( t574 = t575 ).
                                              IF t573 = abap_true.
                                                DATA(t576) = VALUE abap_bool( ).
                                                DATA(t577) = t2.
                                                IF t577 IS BOUND.
                                                  IF t577->has = abap_true.
                                                    IF t577->number_special <> 0.
                                                      t576 = xsdbool( t577->number_special <> 1 ).
                                                    ELSE.
                                                      t576 = xsdbool( t577->value IS NOT INITIAL ).
                                                    ENDIF.
                                                  ENDIF.
                                                ENDIF.
                                                IF t576 = abap_true.
                                                  DATA t578 TYPE REF TO zcl_lnt_character_type.
                                                  CLEAR t578.
                                                  DATA(t579) = VALUE f( ).
                                                  DATA(t580) = t2.
                                                  IF t580->number_special <> 0.
                                                    RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                                                  ENDIF.
                                                  t579 = t580->value.
                                                  DATA t581 TYPE REF TO zcl_lnt_abstract_type_data.
                                                  CLEAR t581.
                                                  DATA(t582) = abap_true.
                                                  IF t582 = abap_true.
                                                    DATA t583 TYPE REF TO zcl_lnt_abstract_type_data.
                                                    DATA t584 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    DATA(t585) = t4.
                                                    t584 = t585.
                                                    DATA t586 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    DATA t587 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t587.
                                                    t586 = t587.
                                                    DATA t588 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                    DATA t589 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                    CLEAR t589.
                                                    t588 = t589.
                                                    DATA t590 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    DATA t591 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t591.
                                                    t590 = t591.
                                                    DATA t592 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    DATA t593 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t593.
                                                    t592 = t593.
                                                    DATA t594 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    DATA t595 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t595.
                                                    t594 = t595.
                                                    t583 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t584 i_conversion_exit = t586 i_derived_from_constant = t588 i_ddic_name = t590 i_rtti_name = t592 i_description = t594 ).
                                                    CREATE OBJECT t583->zlnt_view_ownkeys_b0e8086400eb.
                                                    t583->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                    DATA t596 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                    CLEAR t596.
                                                    IF t583->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                                                      t583->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t596 ).
                                                    ENDIF.
                                                    CREATE OBJECT t583->zlnt_json_ownkeys_70e5fd461788.
                                                    t583->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                    DATA(t597) = |qualifiedName|.
                                                    DATA t598 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                    CLEAR t598.
                                                    IF t583->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                                                      t583->zlnt_json_ownkeys_70e5fd461788->put( p0 = t597 p1 = t598 ).
                                                    ENDIF.
                                                    t581 = t583.
                                                  ELSE.
                                                    DATA t599 TYPE REF TO zcl_lnt_abstract_type_data.
                                                    CLEAR t599.
                                                    t581 = t599.
                                                  ENDIF.
                                                  t578 = NEW zcl_lnt_character_type( i_length = t579 i_extra = t581 ).
                                                  result = t578.
                                                  RETURN.
                                                ELSE.
                                                  DATA t600 TYPE REF TO zcl_lnt_character_type.
                                                  CLEAR t600.
                                                  DATA(t601) = CONV f( 1 ).
                                                  DATA t602 TYPE REF TO zcl_lnt_abstract_type_data.
                                                  CLEAR t602.
                                                  DATA(t603) = abap_true.
                                                  IF t603 = abap_true.
                                                    DATA t604 TYPE REF TO zcl_lnt_abstract_type_data.
                                                    DATA t605 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    DATA(t606) = t4.
                                                    t605 = t606.
                                                    DATA t607 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    DATA t608 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t608.
                                                    t607 = t608.
                                                    DATA t609 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                    DATA t610 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                    CLEAR t610.
                                                    t609 = t610.
                                                    DATA t611 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    DATA t612 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t612.
                                                    t611 = t612.
                                                    DATA t613 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    DATA t614 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t614.
                                                    t613 = t614.
                                                    DATA t615 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    DATA t616 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t616.
                                                    t615 = t616.
                                                    t604 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t605 i_conversion_exit = t607 i_derived_from_constant = t609 i_ddic_name = t611 i_rtti_name = t613 i_description = t615 ).
                                                    CREATE OBJECT t604->zlnt_view_ownkeys_b0e8086400eb.
                                                    t604->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                    DATA t617 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                    CLEAR t617.
                                                    IF t604->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                                                      t604->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t617 ).
                                                    ENDIF.
                                                    CREATE OBJECT t604->zlnt_json_ownkeys_70e5fd461788.
                                                    t604->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                    DATA(t618) = |qualifiedName|.
                                                    DATA t619 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                    CLEAR t619.
                                                    IF t604->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                                                      t604->zlnt_json_ownkeys_70e5fd461788->put( p0 = t618 p1 = t619 ).
                                                    ENDIF.
                                                    t602 = t604.
                                                  ELSE.
                                                    DATA t620 TYPE REF TO zcl_lnt_abstract_type_data.
                                                    CLEAR t620.
                                                    t602 = t620.
                                                  ENDIF.
                                                  t600 = NEW zcl_lnt_character_type( i_length = t601 i_extra = t602 ).
                                                  result = t600.
                                                  RETURN.
                                                ENDIF.
                                              ELSE.
                                                DATA t621 TYPE abap_bool.
                                                DATA(t622) = t1.
                                                DATA(t623) = |X|.
                                                t621 = xsdbool( t622 = t623 ).
                                                IF t621 = abap_true.
                                                  DATA(t624) = VALUE abap_bool( ).
                                                  DATA(t625) = t2.
                                                  IF t625 IS BOUND.
                                                    IF t625->has = abap_true.
                                                      IF t625->number_special <> 0.
                                                        t624 = xsdbool( t625->number_special <> 1 ).
                                                      ELSE.
                                                        t624 = xsdbool( t625->value IS NOT INITIAL ).
                                                      ENDIF.
                                                    ENDIF.
                                                  ENDIF.
                                                  IF t624 = abap_true.
                                                    DATA t626 TYPE REF TO zcl_lnt_hex_type.
                                                    CLEAR t626.
                                                    DATA(t627) = VALUE f( ).
                                                    DATA(t628) = t2.
                                                    IF t628->number_special <> 0.
                                                      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                                                    ENDIF.
                                                    t627 = t628->value.
                                                    DATA(t629) = t4.
                                                    t626 = NEW zcl_lnt_hex_type( i_length = t627 i_qualified_name = t629 ).
                                                    result = t626.
                                                    RETURN.
                                                  ELSE.
                                                    DATA t630 TYPE REF TO zcl_lnt_hex_type.
                                                    DATA(t631) = CONV f( 1 ).
                                                    DATA(t632) = t4.
                                                    t630 = NEW zcl_lnt_hex_type( i_length = t631 i_qualified_name = t632 ).
                                                    result = t630.
                                                    RETURN.
                                                  ENDIF.
                                                ELSE.
                                                  DATA t633 TYPE abap_bool.
                                                  DATA(t634) = t1.
                                                  DATA(t635) = |N|.
                                                  t633 = xsdbool( t634 = t635 ).
                                                  IF t633 = abap_true.
                                                    DATA(t636) = VALUE abap_bool( ).
                                                    DATA(t637) = t2.
                                                    IF t637 IS BOUND.
                                                      IF t637->has = abap_true.
                                                        IF t637->number_special <> 0.
                                                          t636 = xsdbool( t637->number_special <> 1 ).
                                                        ELSE.
                                                          t636 = xsdbool( t637->value IS NOT INITIAL ).
                                                        ENDIF.
                                                      ENDIF.
                                                    ENDIF.
                                                    IF t636 = abap_true.
                                                      DATA t638 TYPE REF TO zcl_lnt_numeric_type.
                                                      CLEAR t638.
                                                      DATA(t639) = VALUE f( ).
                                                      DATA(t640) = t2.
                                                      IF t640->number_special <> 0.
                                                        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                                                      ENDIF.
                                                      t639 = t640->value.
                                                      DATA(t641) = t4.
                                                      t638 = NEW zcl_lnt_numeric_type( i_length = t639 i_qualified_name = t641 ).
                                                      result = t638.
                                                      RETURN.
                                                    ELSE.
                                                      DATA t642 TYPE REF TO zcl_lnt_numeric_type.
                                                      DATA(t643) = CONV f( 1 ).
                                                      DATA(t644) = t4.
                                                      t642 = NEW zcl_lnt_numeric_type( i_length = t643 i_qualified_name = t644 ).
                                                      result = t642.
                                                      RETURN.
                                                    ENDIF.
                                                  ENDIF.
                                                ENDIF.
                                              ENDIF.
                                            ENDIF.
                                          ENDIF.
                                        ENDIF.
                                      ENDIF.
                                    ENDIF.
                                  ENDIF.
                                ENDIF.
                              ENDIF.
                            ENDIF.
                          ENDIF.
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t645 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t645.
    result = t645.

  ENDMETHOD.

  METHOD in_error_namespace.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ELSEIF t8->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA(t9) = abap_true.
      result = t9.
      RETURN.
    ENDIF.
    DATA t10 TYPE abap_bool.
    DATA(t11) = me->reg.
    DATA t12 TYPE string.
    DATA(t13) = t1.
    t12 = t13->value.
    t10 = t11->in_error_namespace( i_name = t12 ).
    result = t10.

  ENDMETHOD.

  METHOD lookup_object.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zif_lnt_object.
    CLEAR t2.
    DATA t3 TYPE REF TO zif_lnt_object.
    CLEAR t3.
    DATA(t4) = me->reg.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = abap_true.
    IF t6 = abap_true.
      DATA(t7) = |CLAS|.
      DATA(t8) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t8->has = abap_true.
      t8->value = t7.
      t5 = t8.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t9.
      t5 = t9.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t10.
    DATA(t11) = abap_true.
    IF t11 = abap_true.
      DATA(t12) = t1.
      DATA(t13) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t13->has = abap_true.
      t13->value = t12.
      t10 = t13.
    ELSE.
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t14.
      t10 = t14.
    ENDIF.
    t3 = t4->get_object( i_type_9913 = t5 i_name = t10 ).
    t2 = t3.
    DATA t15 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t15.
    DATA t16 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t16.
    DATA t17 TYPE REF TO zif_lnt_object.
    DATA(t18) = t2.
    t17 = t18.
    DATA t19 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t19.
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = t17.
    IF t21 IS INITIAL.
      t20 = abap_true.
    ENDIF.
    IF t20 = abap_true.
      DATA t22 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t22.
      t19 = t22.
    ELSE.
      DATA t23 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t24 TYPE REF TO zif_lnt_object.
      DATA(t25) = t17.
      t24 = t25.
      t23 = t24->get_identifier( ).
      t19 = t23.
    ENDIF.
    t16 = t19.
    t15 = t16.
    DATA t26 TYPE abap_bool.
    DATA(t27) = t15.
    t26 = xsdbool( t27 IS BOUND ).
    IF t26 = abap_true.
      DATA t28 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t28.
      DATA t29 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t29.
      DATA t30 TYPE REF TO zcl_lnt_object_reference_type.
      CLEAR t30.
      DATA t31 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t32) = t15.
      t31 = t32.
      DATA t33 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t33.
      DATA(t34) = abap_true.
      IF t34 = abap_true.
        DATA t35 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t35.
        DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t36.
        DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t37.
        DATA(t38) = abap_true.
        IF t38 = abap_true.
          DATA(t39) = t1.
          DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t40->has = abap_true.
          t40->value = t39.
          t37 = t40.
        ELSE.
          DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t41.
          t37 = t41.
        ENDIF.
        t36 = t37.
        DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t42.
        DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t43.
        DATA(t44) = abap_true.
        IF t44 = abap_true.
          DATA t45 TYPE string.
          DATA(t46) = `\CLASS=`.
          DATA(t47) = t1.
          DATA(t48) = strlen( t46 ).
          t45 = |{ t46 }{ t47 }|.
          DATA(t49) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t49->has = abap_true.
          t49->value = t45.
          t43 = t49.
        ELSE.
          DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t50.
          t43 = t50.
        ENDIF.
        t42 = t43.
        DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t52.
        t51 = t52.
        DATA t53 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t54 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t54.
        t53 = t54.
        DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t56.
        t55 = t56.
        DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t58.
        t57 = t58.
        t35 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t36 i_conversion_exit = t51 i_derived_from_constant = t53 i_ddic_name = t55 i_rtti_name = t42 i_description = t57 ).
        CREATE OBJECT t35->zlnt_view_ownkeys_b0e8086400eb.
        t35->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t59.
        IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t59 ).
        ENDIF.
        DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t60.
        IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `RTTIName` p1 = t60 ).
        ENDIF.
        CREATE OBJECT t35->zlnt_json_ownkeys_70e5fd461788.
        t35->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t61) = |qualifiedName|.
        DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t62.
        IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
        ENDIF.
        DATA(t63) = |RTTIName|.
        DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t64.
        IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
        ENDIF.
        t33 = t35.
      ELSE.
        DATA t65 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t65.
        t33 = t65.
      ENDIF.
      t30 = NEW zcl_lnt_object_reference_type( i_id = t31 i_extra = t33 ).
      t29 = t30.
      DATA t66 TYPE REF TO zif_lnt_object.
      DATA(t67) = t2.
      t66 = t67.
      t28 = NEW zcl_lnt_ilookup_result( i_type_9913 = t29 i_object_19cd = t66 ).
      CREATE OBJECT t28->zlnt_view_ownkeys_b0e8086400eb.
      t28->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t68.
      IF t28->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t28->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t68 ).
      ENDIF.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t69.
      IF t28->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t28->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t69 ).
      ENDIF.
      CREATE OBJECT t28->zlnt_json_ownkeys_70e5fd461788.
      t28->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t70) = |type|.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t71.
      IF t28->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t28->zlnt_json_ownkeys_70e5fd461788->put( p0 = t70 p1 = t71 ).
      ENDIF.
      DATA(t72) = |object|.
      DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t73.
      IF t28->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t28->zlnt_json_ownkeys_70e5fd461788->put( p0 = t72 p1 = t73 ).
      ENDIF.
      result = t28.
      RETURN.
    ENDIF.
    DATA t74 TYPE REF TO zif_lnt_object.
    CLEAR t74.
    DATA t75 TYPE REF TO zif_lnt_object.
    CLEAR t75.
    DATA(t76) = me->reg.
    DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t77.
    DATA(t78) = abap_true.
    IF t78 = abap_true.
      DATA(t79) = |INTF|.
      DATA(t80) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t80->has = abap_true.
      t80->value = t79.
      t77 = t80.
    ELSE.
      DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t81.
      t77 = t81.
    ENDIF.
    DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t82.
    DATA(t83) = abap_true.
    IF t83 = abap_true.
      DATA(t84) = t1.
      DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t85->has = abap_true.
      t85->value = t84.
      t82 = t85.
    ELSE.
      DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t86.
      t82 = t86.
    ENDIF.
    t75 = t76->get_object( i_type_9913 = t77 i_name = t82 ).
    t74 = t75.
    DATA t87 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t87.
    DATA t88 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t88.
    DATA t89 TYPE REF TO zif_lnt_object.
    DATA(t90) = t74.
    t89 = t90.
    DATA t91 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t91.
    DATA(t92) = VALUE abap_bool( ).
    DATA(t93) = t89.
    IF t93 IS INITIAL.
      t92 = abap_true.
    ENDIF.
    IF t92 = abap_true.
      DATA t94 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t94.
      t91 = t94.
    ELSE.
      DATA t95 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t96 TYPE REF TO zif_lnt_object.
      DATA(t97) = t89.
      t96 = t97.
      t95 = t96->get_identifier( ).
      t91 = t95.
    ENDIF.
    t88 = t91.
    t87 = t88.
    DATA t98 TYPE abap_bool.
    DATA(t99) = t87.
    t98 = xsdbool( t99 IS BOUND ).
    IF t98 = abap_true.
      DATA t100 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t100.
      DATA t101 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t101.
      DATA t102 TYPE REF TO zcl_lnt_object_reference_type.
      CLEAR t102.
      DATA t103 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t104) = t87.
      t103 = t104.
      DATA t105 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t105.
      DATA(t106) = abap_true.
      IF t106 = abap_true.
        DATA t107 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t107.
        DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t108.
        DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t109.
        DATA(t110) = abap_true.
        IF t110 = abap_true.
          DATA(t111) = t1.
          DATA(t112) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t112->has = abap_true.
          t112->value = t111.
          t109 = t112.
        ELSE.
          DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t113.
          t109 = t113.
        ENDIF.
        t108 = t109.
        DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t114.
        DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t115.
        DATA(t116) = abap_true.
        IF t116 = abap_true.
          DATA t117 TYPE string.
          DATA(t118) = `\INTERFACE=`.
          DATA(t119) = t1.
          DATA(t120) = strlen( t118 ).
          t117 = |{ t118 }{ t119 }|.
          DATA(t121) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t121->has = abap_true.
          t121->value = t117.
          t115 = t121.
        ELSE.
          DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t122.
          t115 = t122.
        ENDIF.
        t114 = t115.
        DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t124.
        t123 = t124.
        DATA t125 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t126 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t126.
        t125 = t126.
        DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t128.
        t127 = t128.
        DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t130.
        t129 = t130.
        t107 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t108 i_conversion_exit = t123 i_derived_from_constant = t125 i_ddic_name = t127 i_rtti_name = t114 i_description = t129 ).
        CREATE OBJECT t107->zlnt_view_ownkeys_b0e8086400eb.
        t107->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t131.
        IF t107->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t107->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t131 ).
        ENDIF.
        DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t132.
        IF t107->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t107->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `RTTIName` p1 = t132 ).
        ENDIF.
        CREATE OBJECT t107->zlnt_json_ownkeys_70e5fd461788.
        t107->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t133) = |qualifiedName|.
        DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t134.
        IF t107->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t107->zlnt_json_ownkeys_70e5fd461788->put( p0 = t133 p1 = t134 ).
        ENDIF.
        DATA(t135) = |RTTIName|.
        DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t136.
        IF t107->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t107->zlnt_json_ownkeys_70e5fd461788->put( p0 = t135 p1 = t136 ).
        ENDIF.
        t105 = t107.
      ELSE.
        DATA t137 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t137.
        t105 = t137.
      ENDIF.
      t102 = NEW zcl_lnt_object_reference_type( i_id = t103 i_extra = t105 ).
      t101 = t102.
      DATA t138 TYPE REF TO zif_lnt_object.
      DATA(t139) = t74.
      t138 = t139.
      t100 = NEW zcl_lnt_ilookup_result( i_type_9913 = t101 i_object_19cd = t138 ).
      CREATE OBJECT t100->zlnt_view_ownkeys_b0e8086400eb.
      t100->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t140.
      IF t100->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t140 ).
      ENDIF.
      DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t141.
      IF t100->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t141 ).
      ENDIF.
      CREATE OBJECT t100->zlnt_json_ownkeys_70e5fd461788.
      t100->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t142) = |type|.
      DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t143.
      IF t100->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = t142 p1 = t143 ).
      ENDIF.
      DATA(t144) = |object|.
      DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t145.
      IF t100->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = t144 p1 = t145 ).
      ENDIF.
      result = t100.
      RETURN.
    ENDIF.
    DATA(t146) = VALUE abap_bool( ).
    DATA(t147) = VALUE abap_bool( ).
    DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t148.
    DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t149.
    DATA(t150) = abap_true.
    IF t150 = abap_true.
      DATA(t151) = t1.
      DATA(t152) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t152->has = abap_true.
      t152->value = t151.
      t149 = t152.
    ELSE.
      DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t153.
      t149 = t153.
    ENDIF.
    t148 = t149.
    DATA(t154) = VALUE abap_bool( ).
    DATA(t155) = VALUE abap_bool( ).
    DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t157) = t148.
    t156 = t157.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t159.
    t158 = t159.
    DATA(t160) = VALUE abap_bool( ).
    DATA(t161) = t156.
    IF t161 IS INITIAL.
      t160 = abap_true.
    ELSEIF t161->has = abap_false.
      t160 = abap_true.
    ENDIF.
    t155 = t160.
    IF t155 = abap_true.
      DATA(t162) = abap_true.
      t154 = t162.
    ELSE.
      DATA t163 TYPE abap_bool.
      DATA(t164) = me->reg.
      DATA t165 TYPE string.
      DATA(t166) = t148.
      t165 = t166->value.
      t163 = t164->in_error_namespace( i_name = t165 ).
      t154 = t163.
    ENDIF.
    t147 = t154.
    DATA(t167) = abap_true.
    t146 = xsdbool( t147 = t167 ).
    IF t146 = abap_true.
      DATA t168 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t169 TYPE REF TO zcl_lnt_abstract_type.
      DATA t170 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t171) = t1.
      DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t172.
      t170 = NEW zcl_lnt_unknown_type( i_error = t171 i_qualified_name = t172 ).
      t169 = t170.
      DATA t173 TYPE REF TO zif_lnt_object.
      DATA t174 TYPE REF TO zif_lnt_object.
      CLEAR t174.
      t173 = t174.
      t168 = NEW zcl_lnt_ilookup_result( i_type_9913 = t169 i_object_19cd = t173 ).
      CREATE OBJECT t168->zlnt_view_ownkeys_b0e8086400eb.
      t168->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t175.
      IF t168->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t168->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t175 ).
      ENDIF.
      CREATE OBJECT t168->zlnt_json_ownkeys_70e5fd461788.
      t168->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t176) = |type|.
      DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t177.
      IF t168->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t168->zlnt_json_ownkeys_70e5fd461788->put( p0 = t176 p1 = t177 ).
      ENDIF.
      result = t168.
      RETURN.
    ELSE.
      DATA t178 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t178.
      DATA t179 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t179.
      DATA t180 TYPE REF TO zcl_lnt_void_type.
      CLEAR t180.
      DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t181.
      DATA(t182) = abap_true.
      IF t182 = abap_true.
        DATA(t183) = t1.
        DATA(t184) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t184->has = abap_true.
        t184->value = t183.
        t181 = t184.
      ELSE.
        DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t185.
        t181 = t185.
      ENDIF.
      DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t186.
      t180 = zcl_lnt_void_type=>get_db65( i_voided = t181 i_qualified_name = t186 ).
      t179 = t180.
      DATA t187 TYPE REF TO zif_lnt_object.
      DATA t188 TYPE REF TO zif_lnt_object.
      CLEAR t188.
      t187 = t188.
      t178 = NEW zcl_lnt_ilookup_result( i_type_9913 = t179 i_object_19cd = t187 ).
      CREATE OBJECT t178->zlnt_view_ownkeys_b0e8086400eb.
      t178->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t189.
      IF t178->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t178->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t189 ).
      ENDIF.
      CREATE OBJECT t178->zlnt_json_ownkeys_70e5fd461788.
      t178->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t190) = |type|.
      DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t191.
      IF t178->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t178->zlnt_json_ownkeys_70e5fd461788->put( p0 = t190 p1 = t191 ).
      ENDIF.
      result = t178.

    ENDIF.
  ENDMETHOD.

  METHOD lookup_no_void.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_table.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_table.
    CLEAR t3.
    DATA t4 TYPE REF TO zif_lnt_object.
    CLEAR t4.
    DATA(t5) = me->reg.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA(t7) = abap_true.
    IF t7 = abap_true.
      DATA(t8) = |TABL|.
      DATA(t9) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t9->has = abap_true.
      t9->value = t8.
      t6 = t9.
    ELSE.
      DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t10.
      t6 = t10.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t11.
    DATA(t12) = abap_true.
    IF t12 = abap_true.
      DATA(t13) = t1.
      DATA(t14) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t14->has = abap_true.
      t14->value = t13.
      t11 = t14.
    ELSE.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t15.
      t11 = t15.
    ENDIF.
    t4 = t5->get_object( i_type_9913 = t6 i_name = t11 ).
    DATA t16 TYPE REF TO object.
    t16 = t4.
    t3 ?= t16.
    t2 = t3.
    DATA t17 TYPE abap_bool.
    DATA(t18) = t2.
    t17 = xsdbool( t18 IS BOUND ).
    IF t17 = abap_true.
      DATA t19 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t19.
      DATA(t20) = abap_true.
      IF t20 = abap_true.
        DATA t21 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t22 TYPE REF TO zcl_lnt_abstract_type.
        DATA t23 TYPE REF TO zcl_lnt_abstract_type.
        DATA t24 TYPE REF TO zcl_lnt_table.
        DATA(t25) = t2.
        t24 = t25.
        DATA(t26) = me->reg.
        DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t27.
        DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t28.
        t23 = t24->parse_type( i_reg_f149 = t26 i_data_element = t27 i_description = t28 ).
        t22 = t23.
        DATA t29 TYPE REF TO zif_lnt_object.
        DATA t30 TYPE REF TO zcl_lnt_table.
        DATA(t31) = t2.
        t30 = t31.
        t29 = t30.
        t21 = NEW zcl_lnt_ilookup_result( i_type_9913 = t22 i_object_19cd = t29 ).
        CREATE OBJECT t21->zlnt_view_ownkeys_b0e8086400eb.
        t21->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t32.
        IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t32 ).
        ENDIF.
        DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t33.
        IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t33 ).
        ENDIF.
        CREATE OBJECT t21->zlnt_json_ownkeys_70e5fd461788.
        t21->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t34) = |type|.
        DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t35.
        IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
        ENDIF.
        DATA(t36) = |object|.
        DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t37.
        IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
        ENDIF.
        t19 = t21.
      ELSE.
        DATA t38 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t38.
        t19 = t38.
      ENDIF.
      result = t19.
      RETURN.
    ENDIF.
    DATA t39 TYPE REF TO zcl_lnt_table.
    CLEAR t39.
    DATA t40 TYPE REF TO zcl_lnt_table.
    CLEAR t40.
    DATA t41 TYPE REF TO zif_lnt_object.
    CLEAR t41.
    DATA(t42) = me->reg.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t43.
    DATA(t44) = abap_true.
    IF t44 = abap_true.
      DATA(t45) = |VIEW|.
      DATA(t46) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t46->has = abap_true.
      t46->value = t45.
      t43 = t46.
    ELSE.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t47.
      t43 = t47.
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t48.
    DATA(t49) = abap_true.
    IF t49 = abap_true.
      DATA(t50) = t1.
      DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t51->has = abap_true.
      t51->value = t50.
      t48 = t51.
    ELSE.
      DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t52.
      t48 = t52.
    ENDIF.
    t41 = t42->get_object( i_type_9913 = t43 i_name = t48 ).
    DATA t53 TYPE REF TO object.
    t53 = t41.
    t40 ?= t53.
    t39 = t40.
    DATA t54 TYPE abap_bool.
    DATA(t55) = t39.
    t54 = xsdbool( t55 IS BOUND ).
    IF t54 = abap_true.
      DATA t56 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t56.
      DATA(t57) = abap_true.
      IF t57 = abap_true.
        DATA t58 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t59 TYPE REF TO zcl_lnt_abstract_type.
        DATA t60 TYPE REF TO zcl_lnt_abstract_type.
        DATA t61 TYPE REF TO zcl_lnt_table.
        DATA(t62) = t39.
        t61 = t62.
        DATA(t63) = me->reg.
        DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t64.
        DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t65.
        t60 = t61->parse_type( i_reg_f149 = t63 i_data_element = t64 i_description = t65 ).
        t59 = t60.
        DATA t66 TYPE REF TO zif_lnt_object.
        DATA t67 TYPE REF TO zcl_lnt_table.
        DATA(t68) = t39.
        t67 = t68.
        t66 = t67.
        t58 = NEW zcl_lnt_ilookup_result( i_type_9913 = t59 i_object_19cd = t66 ).
        CREATE OBJECT t58->zlnt_view_ownkeys_b0e8086400eb.
        t58->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t69.
        IF t58->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t58->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t69 ).
        ENDIF.
        DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t70.
        IF t58->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t58->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t70 ).
        ENDIF.
        CREATE OBJECT t58->zlnt_json_ownkeys_70e5fd461788.
        t58->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t71) = |type|.
        DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t72.
        IF t58->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = t71 p1 = t72 ).
        ENDIF.
        DATA(t73) = |object|.
        DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t74.
        IF t58->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = t73 p1 = t74 ).
        ENDIF.
        t56 = t58.
      ELSE.
        DATA t75 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t75.
        t56 = t75.
      ENDIF.
      result = t56.
      RETURN.
    ENDIF.
    DATA t76 TYPE REF TO zcl_lnt_ob_table_type.
    CLEAR t76.
    DATA t77 TYPE REF TO zcl_lnt_ob_table_type.
    CLEAR t77.
    DATA t78 TYPE REF TO zif_lnt_object.
    CLEAR t78.
    DATA(t79) = me->reg.
    DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t80.
    DATA(t81) = abap_true.
    IF t81 = abap_true.
      DATA(t82) = |TTYP|.
      DATA(t83) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t83->has = abap_true.
      t83->value = t82.
      t80 = t83.
    ELSE.
      DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t84.
      t80 = t84.
    ENDIF.
    DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t85.
    DATA(t86) = abap_true.
    IF t86 = abap_true.
      DATA(t87) = t1.
      DATA(t88) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t88->has = abap_true.
      t88->value = t87.
      t85 = t88.
    ELSE.
      DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t89.
      t85 = t89.
    ENDIF.
    t78 = t79->get_object( i_type_9913 = t80 i_name = t85 ).
    DATA t90 TYPE REF TO object.
    t90 = t78.
    t77 ?= t90.
    t76 = t77.
    DATA t91 TYPE abap_bool.
    DATA(t92) = t76.
    t91 = xsdbool( t92 IS BOUND ).
    IF t91 = abap_true.
      DATA t93 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t93.
      DATA(t94) = abap_true.
      IF t94 = abap_true.
        DATA t95 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t96 TYPE REF TO zcl_lnt_abstract_type.
        DATA t97 TYPE REF TO zcl_lnt_abstract_type.
        DATA t98 TYPE REF TO zcl_lnt_ob_table_type.
        DATA(t99) = t76.
        t98 = t99.
        DATA(t100) = me->reg.
        DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t101.
        DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t102.
        t97 = t98->parse_type( i_reg_f149 = t100 i_data_element = t101 i_description = t102 ).
        t96 = t97.
        DATA t103 TYPE REF TO zif_lnt_object.
        DATA t104 TYPE REF TO zcl_lnt_ob_table_type.
        DATA(t105) = t76.
        t104 = t105.
        t103 = t104.
        t95 = NEW zcl_lnt_ilookup_result( i_type_9913 = t96 i_object_19cd = t103 ).
        CREATE OBJECT t95->zlnt_view_ownkeys_b0e8086400eb.
        t95->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t106.
        IF t95->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t95->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t106 ).
        ENDIF.
        DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t107.
        IF t95->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t95->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t107 ).
        ENDIF.
        CREATE OBJECT t95->zlnt_json_ownkeys_70e5fd461788.
        t95->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t108) = |type|.
        DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t109.
        IF t95->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t95->zlnt_json_ownkeys_70e5fd461788->put( p0 = t108 p1 = t109 ).
        ENDIF.
        DATA(t110) = |object|.
        DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t111.
        IF t95->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t95->zlnt_json_ownkeys_70e5fd461788->put( p0 = t110 p1 = t111 ).
        ENDIF.
        t93 = t95.
      ELSE.
        DATA t112 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t112.
        t93 = t112.
      ENDIF.
      result = t93.
      RETURN.
    ENDIF.
    DATA t113 TYPE REF TO zcl_lnt_data_element.
    CLEAR t113.
    DATA t114 TYPE REF TO zcl_lnt_data_element.
    CLEAR t114.
    DATA t115 TYPE REF TO zif_lnt_object.
    CLEAR t115.
    DATA(t116) = me->reg.
    DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t117.
    DATA(t118) = abap_true.
    IF t118 = abap_true.
      DATA(t119) = |DTEL|.
      DATA(t120) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t120->has = abap_true.
      t120->value = t119.
      t117 = t120.
    ELSE.
      DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t121.
      t117 = t121.
    ENDIF.
    DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t122.
    DATA(t123) = abap_true.
    IF t123 = abap_true.
      DATA(t124) = t1.
      DATA(t125) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t125->has = abap_true.
      t125->value = t124.
      t122 = t125.
    ELSE.
      DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t126.
      t122 = t126.
    ENDIF.
    t115 = t116->get_object( i_type_9913 = t117 i_name = t122 ).
    DATA t127 TYPE REF TO object.
    t127 = t115.
    t114 ?= t127.
    t113 = t114.
    DATA t128 TYPE abap_bool.
    DATA(t129) = t113.
    t128 = xsdbool( t129 IS BOUND ).
    IF t128 = abap_true.
      DATA t130 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t130.
      DATA(t131) = abap_true.
      IF t131 = abap_true.
        DATA t132 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t133 TYPE REF TO zcl_lnt_abstract_type.
        DATA t134 TYPE REF TO zcl_lnt_abstract_type.
        DATA t135 TYPE REF TO zcl_lnt_data_element.
        DATA(t136) = t113.
        t135 = t136.
        DATA(t137) = me->reg.
        DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t138.
        DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t139.
        t134 = t135->parse_type( i_reg_f149 = t137 i_data_element = t138 i_description = t139 ).
        t133 = t134.
        DATA t140 TYPE REF TO zif_lnt_object.
        DATA t141 TYPE REF TO zcl_lnt_data_element.
        DATA(t142) = t113.
        t141 = t142.
        t140 = t141.
        t132 = NEW zcl_lnt_ilookup_result( i_type_9913 = t133 i_object_19cd = t140 ).
        CREATE OBJECT t132->zlnt_view_ownkeys_b0e8086400eb.
        t132->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t143.
        IF t132->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t132->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t143 ).
        ENDIF.
        DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t144.
        IF t132->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t132->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t144 ).
        ENDIF.
        CREATE OBJECT t132->zlnt_json_ownkeys_70e5fd461788.
        t132->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t145) = |type|.
        DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t146.
        IF t132->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t132->zlnt_json_ownkeys_70e5fd461788->put( p0 = t145 p1 = t146 ).
        ENDIF.
        DATA(t147) = |object|.
        DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t148.
        IF t132->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t132->zlnt_json_ownkeys_70e5fd461788->put( p0 = t147 p1 = t148 ).
        ENDIF.
        t130 = t132.
      ELSE.
        DATA t149 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t149.
        t130 = t149.
      ENDIF.
      result = t130.
      RETURN.
    ENDIF.
    DATA t150 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t150.
    DATA t151 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t151.
    DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t152.
    DATA(t153) = abap_true.
    IF t153 = abap_true.
      DATA(t154) = t1.
      DATA(t155) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t155->has = abap_true.
      t155->value = t154.
      t152 = t155.
    ELSE.
      DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t156.
      t152 = t156.
    ENDIF.
    t151 = me->lookup_ddls( i_name = t152 ).
    t150 = t151.
    DATA t157 TYPE abap_bool.
    DATA(t158) = t150.
    t157 = xsdbool( t158 IS BOUND ).
    IF t157 = abap_true.
      DATA t159 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t159.
      DATA(t160) = abap_true.
      IF t160 = abap_true.
        DATA t161 TYPE REF TO zcl_lnt_ilookup_result.
        DATA(t162) = t150.
        t161 = t162.
        t159 = t161.
      ELSE.
        DATA t163 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t163.
        t159 = t163.
      ENDIF.
      result = t159.
      RETURN.
    ENDIF.
    DATA t164 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t164.
    result = t164.

  ENDMETHOD.

  METHOD lookup_ddls.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t3.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ELSEIF t8->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t9.
      result = t9.
      RETURN.
    ENDIF.
    DATA(t10) = VALUE string( ).
    DATA(t11) = VALUE string( ).
    DATA(t12) = VALUE string( ).
    DATA(t13) = t1.
    t12 = t13->value.
    DATA(t14) = strlen( t12 ).
    t11 = t12.
    IF t11 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t11 TO UPPER CASE.
    ELSE.
      t11 = zlnt_runtime_uppe_91169605024d=>full( t11 ).
    ENDIF.
    t10 = t11.
    DATA t15 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t16.
    DATA t17 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t17.
    DATA(t18) = me->reg.
    DATA(t19) = |DDLS|.
    t17 = t18->get_objects_by_type( i_type_9913 = t19 ).
    t16 = t17->iterate( ).
    t15 = t16.
    DO.
      DATA(t20) = abap_true.
      IF t20 = abap_false.
        EXIT.
      ENDIF.
      DATA t21 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t21.
      DATA t22 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t22.
      DATA(t23) = t15.
      t22 = t23->next( ).
      t21 = t22.
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = t21.
      t24 = t25->done.
      IF t24 = abap_true.
        EXIT.
      ENDIF.
      DATA t26 TYPE REF TO zif_lnt_object.
      CLEAR t26.
      DATA t27 TYPE REF TO zif_lnt_object.
      CLEAR t27.
      DATA t28 TYPE REF TO zif_lnt_object.
      CLEAR t28.
      DATA(t29) = t21.
      t28 = t29->value.
      t27 = t28.
      t26 = t27.
      DATA t30 TYPE REF TO zcl_lnt_ob_data_definition.
      CLEAR t30.
      DATA t31 TYPE REF TO zcl_lnt_ob_data_definition.
      CLEAR t31.
      DATA t32 TYPE REF TO zcl_lnt_ob_data_definition.
      CLEAR t32.
      DATA(t33) = VALUE abap_bool( ).
      DATA(t34) = abap_false.
      t33 = t34.
      DATA t35 TYPE REF TO cx_root.
      CLEAR t35.
      TRY.
          DATA t36 TYPE REF TO zcl_lnt_ob_data_definition.
          CLEAR t36.
          DATA(t37) = t26.
          t36 ?= t37.
          t32 = t36.
          DATA(t38) = abap_true.
          t33 = t38.
        CATCH cx_root INTO t35.
          DATA(t39) = VALUE abap_bool( ).
          DATA(t40) = t33.
          t39 = xsdbool( t40 = abap_false ).
          IF t39 = abap_true.
            DATA(t41) = t15.
            t41->close( ).
          ENDIF.
          RAISE EXCEPTION t35.
      ENDTRY.
      DATA(t42) = VALUE abap_bool( ).
      DATA(t43) = t33.
      t42 = xsdbool( t43 = abap_false ).
      IF t42 = abap_true.
        DATA(t44) = t15.
        t44->close( ).
      ENDIF.
      DATA(t45) = t32.
      t31 = t45.
      t30 = t31.
      DATA(t46) = VALUE abap_bool( ).
      DATA(t47) = VALUE abap_bool( ).
      DATA(t48) = VALUE abap_bool( ).
      DATA(t49) = abap_false.
      t48 = t49.
      DATA t50 TYPE REF TO cx_root.
      CLEAR t50.
      TRY.
          DATA(t51) = VALUE abap_bool( ).
          DATA(t52) = VALUE abap_bool( ).
          DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t53.
          DATA t54 TYPE REF TO zcl_lnt_ob_data_definition.
          CLEAR t54.
          DATA(t55) = t30.
          t54 = t55.
          DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t56.
          DATA t57 TYPE REF TO zcl_lnt_iparse_result.
          CLEAR t57.
          DATA(t58) = t54.
          t57 = t58->pr_in_src_obj_dt_dfn_ts_dt_dfn( ).
          DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t59.
          DATA t60 TYPE REF TO zcl_lnt_parsed_data_definition.
          CLEAR t60.
          DATA t61 TYPE REF TO zcl_lnt_parsed_data_definition.
          CLEAR t61.
          DATA(t62) = t54.
          t61 = t62->parsed_data.
          t60 = t61.
          DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t63.
          DATA(t64) = VALUE abap_bool( ).
          DATA(t65) = t60.
          IF t65 IS INITIAL.
            t64 = abap_true.
          ENDIF.
          IF t64 = abap_true.
            DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t66.
            t63 = t66.
          ELSE.
            DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t67.
            DATA t68 TYPE REF TO zcl_lnt_parsed_data_definition.
            CLEAR t68.
            DATA(t69) = t60.
            t68 = t69.
            t67 = t68->sql_view_name.
            t63 = t67.
          ENDIF.
          t59 = t63.
          t56 = t59.
          t53 = t56.
          DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t70.
          DATA(t71) = abap_true.
          IF t71 = abap_true.
            DATA(t72) = t10.
            DATA(t73) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t73->has = abap_true.
            t73->value = t72.
            t70 = t73.
          ELSE.
            DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t74.
            t70 = t74.
          ENDIF.
          DATA(t75) = VALUE abap_bool( ).
          DATA(t76) = VALUE abap_bool( ).
          IF t53 IS BOUND.
            t75 = t53->has.
          ENDIF.
          IF t70 IS BOUND.
            t76 = t70->has.
          ENDIF.
          IF t75 = t76.
            IF t75 = abap_false.
              t52 = abap_true.
            ELSEIF t53->value = t70->value.
              t52 = abap_true.
            ENDIF.
          ENDIF.
          t51 = t52.
          IF t52 = abap_false.
            DATA(t77) = VALUE abap_bool( ).
            DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t78.
            DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t79.
            DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t80.
            DATA t81 TYPE REF TO zcl_lnt_ob_data_definition.
            CLEAR t81.
            DATA(t82) = t30.
            t81 = t82.
            DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t83.
            DATA t84 TYPE REF TO zcl_lnt_iparse_result.
            CLEAR t84.
            DATA(t85) = t81.
            t84 = t85->pr_in_src_obj_dt_dfn_ts_dt_dfn( ).
            DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t86.
            DATA t87 TYPE REF TO zcl_lnt_parsed_data_definition.
            CLEAR t87.
            DATA t88 TYPE REF TO zcl_lnt_parsed_data_definition.
            CLEAR t88.
            DATA(t89) = t81.
            t88 = t89->parsed_data.
            t87 = t88.
            DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t90.
            DATA(t91) = VALUE abap_bool( ).
            DATA(t92) = t87.
            IF t92 IS INITIAL.
              t91 = abap_true.
            ENDIF.
            IF t91 = abap_true.
              DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t93.
              t90 = t93.
            ELSE.
              DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t94.
              DATA t95 TYPE REF TO zcl_lnt_parsed_data_definition.
              CLEAR t95.
              DATA(t96) = t87.
              t95 = t96.
              t94 = t95->definition_name.
              t90 = t94.
            ENDIF.
            t86 = t90.
            t83 = t86.
            t80 = t83.
            t79 = t80.
            DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t97.
            DATA(t98) = VALUE abap_bool( ).
            DATA(t99) = t79.
            IF t99 IS INITIAL.
              t98 = abap_true.
            ELSEIF t99->has = abap_false.
              t98 = abap_true.
            ENDIF.
            IF t98 = abap_true.
              DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t100.
              t97 = t100.
            ELSE.
              DATA(t101) = VALUE string( ).
              DATA(t102) = VALUE string( ).
              DATA(t103) = t79.
              t102 = t103->value.
              DATA(t104) = strlen( t102 ).
              t101 = t102.
              IF t101 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t101 TO UPPER CASE.
              ELSE.
                t101 = zlnt_runtime_uppe_91169605024d=>full( t101 ).
              ENDIF.
              DATA(t105) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t105->has = abap_true.
              t105->value = t101.
              t97 = t105.
            ENDIF.
            t78 = t97.
            DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t106.
            DATA(t107) = abap_true.
            IF t107 = abap_true.
              DATA(t108) = t10.
              DATA(t109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t109->has = abap_true.
              t109->value = t108.
              t106 = t109.
            ELSE.
              DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t110.
              t106 = t110.
            ENDIF.
            DATA(t111) = VALUE abap_bool( ).
            DATA(t112) = VALUE abap_bool( ).
            IF t78 IS BOUND.
              t111 = t78->has.
            ENDIF.
            IF t106 IS BOUND.
              t112 = t106->has.
            ENDIF.
            IF t111 = t112.
              IF t111 = abap_false.
                t77 = abap_true.
              ELSEIF t78->value = t106->value.
                t77 = abap_true.
              ENDIF.
            ENDIF.
            t51 = t77.
          ENDIF.
          t47 = t51.
          DATA(t113) = abap_true.
          t48 = t113.
        CATCH cx_root INTO t50.
          DATA(t114) = VALUE abap_bool( ).
          DATA(t115) = t48.
          t114 = xsdbool( t115 = abap_false ).
          IF t114 = abap_true.
            DATA(t116) = t15.
            t116->close( ).
          ENDIF.
          RAISE EXCEPTION t50.
      ENDTRY.
      DATA(t117) = VALUE abap_bool( ).
      DATA(t118) = t48.
      t117 = xsdbool( t118 = abap_false ).
      IF t117 = abap_true.
        DATA(t119) = t15.
        t119->close( ).
      ENDIF.
      DATA(t120) = t47.
      t46 = t120.
      IF t46 = abap_true.
        DATA t121 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t121.
        DATA t122 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t122.
        DATA t123 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t123.
        DATA(t124) = VALUE abap_bool( ).
        DATA(t125) = abap_false.
        t124 = t125.
        DATA t126 TYPE REF TO cx_root.
        CLEAR t126.
        TRY.
            DATA t127 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t127.
            DATA(t128) = abap_true.
            IF t128 = abap_true.
              DATA t129 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t129.
              DATA t130 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t130.
              DATA t131 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t131.
              DATA(t132) = t30.
              DATA(t133) = me->reg.
              DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t134.
              DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t135.
              t131 = t132->parse_type( i_reg_f149 = t133 i_data_element = t134 i_description = t135 ).
              t130 = t131.
              DATA t136 TYPE REF TO zif_lnt_object.
              CLEAR t136.
              DATA(t137) = t30.
              t136 = t137.
              t129 = NEW zcl_lnt_ilookup_result( i_type_9913 = t130 i_object_19cd = t136 ).
              CREATE OBJECT t129->zlnt_view_ownkeys_b0e8086400eb.
              t129->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t138.
              IF t129->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t129->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t138 ).
              ENDIF.
              DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t139.
              IF t129->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t129->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t139 ).
              ENDIF.
              CREATE OBJECT t129->zlnt_json_ownkeys_70e5fd461788.
              t129->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t140) = |type|.
              DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t141.
              IF t129->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t129->zlnt_json_ownkeys_70e5fd461788->put( p0 = t140 p1 = t141 ).
              ENDIF.
              DATA(t142) = |object|.
              DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t143.
              IF t129->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t129->zlnt_json_ownkeys_70e5fd461788->put( p0 = t142 p1 = t143 ).
              ENDIF.
              t127 = t129.
            ELSE.
              DATA t144 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t144.
              t127 = t144.
            ENDIF.
            t123 = t127.
            DATA(t145) = abap_true.
            t124 = t145.
          CATCH cx_root INTO t126.
            DATA(t146) = VALUE abap_bool( ).
            DATA(t147) = t124.
            t146 = xsdbool( t147 = abap_false ).
            IF t146 = abap_true.
              DATA(t148) = t15.
              t148->close( ).
            ENDIF.
            RAISE EXCEPTION t126.
        ENDTRY.
        DATA(t149) = VALUE abap_bool( ).
        DATA(t150) = t124.
        t149 = xsdbool( t150 = abap_false ).
        IF t149 = abap_true.
          DATA(t151) = t15.
          t151->close( ).
        ENDIF.
        DATA(t152) = t123.
        t122 = t152.
        t121 = t122.
        DATA(t153) = t15.
        t153->close( ).
        DATA(t154) = t121.
        result = t154.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t155 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t155.
    result = t155.

  ENDMETHOD.

  METHOD lookup.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_ilookup_result.
    DATA t3 TYPE REF TO zcl_lnt_ilookup_result.
    DATA(t4) = t1.
    t3 = me->lookup_no_void( i_name = t4 ).
    t2 = t3.
    DATA t5 TYPE abap_bool.
    DATA(t6) = t2.
    t5 = xsdbool( t6 IS BOUND ).
    IF t5 = abap_true.
      DATA t7 TYPE REF TO zcl_lnt_ilookup_result.
      DATA(t8) = t2.
      t7 = t8.
      result = t7.
      RETURN.
    ENDIF.
    DATA t9 TYPE abap_bool.
    DATA(t10) = me->reg.
    DATA(t11) = t1.
    t9 = t10->in_error_namespace( i_name = t11 ).
    IF t9 = abap_true.
      DATA t12 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t13 TYPE REF TO zcl_lnt_abstract_type.
      DATA t14 TYPE REF TO zcl_lnt_unknown_type.
      DATA t15 TYPE string.
      DATA(t16) = t1.
      DATA(t17) = | not found, lookup|.
      DATA(t18) = strlen( t16 ).
      t15 = |{ t16 }{ t17 }|.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      t14 = NEW zcl_lnt_unknown_type( i_error = t15 i_qualified_name = t19 ).
      t13 = t14.
      DATA t20 TYPE REF TO zif_lnt_object.
      DATA t21 TYPE REF TO zif_lnt_object.
      CLEAR t21.
      t20 = t21.
      t12 = NEW zcl_lnt_ilookup_result( i_type_9913 = t13 i_object_19cd = t20 ).
      CREATE OBJECT t12->zlnt_view_ownkeys_b0e8086400eb.
      t12->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t22.
      IF t12->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t12->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t22 ).
      ENDIF.
      CREATE OBJECT t12->zlnt_json_ownkeys_70e5fd461788.
      t12->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t23) = |type|.
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t24.
      IF t12->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = t23 p1 = t24 ).
      ENDIF.
      result = t12.
      RETURN.
    ELSE.
      DATA t25 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t25.
      DATA t26 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t26.
      DATA t27 TYPE REF TO zcl_lnt_void_type.
      CLEAR t27.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t28.
      DATA(t29) = abap_true.
      IF t29 = abap_true.
        DATA(t30) = t1.
        DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t31->has = abap_true.
        t31->value = t30.
        t28 = t31.
      ELSE.
        DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t32.
        t28 = t32.
      ENDIF.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      t27 = zcl_lnt_void_type=>get_db65( i_voided = t28 i_qualified_name = t33 ).
      t26 = t27.
      DATA t34 TYPE REF TO zif_lnt_object.
      DATA t35 TYPE REF TO zif_lnt_object.
      CLEAR t35.
      t34 = t35.
      t25 = NEW zcl_lnt_ilookup_result( i_type_9913 = t26 i_object_19cd = t34 ).
      CREATE OBJECT t25->zlnt_view_ownkeys_b0e8086400eb.
      t25->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t36.
      IF t25->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t25->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t36 ).
      ENDIF.
      CREATE OBJECT t25->zlnt_json_ownkeys_70e5fd461788.
      t25->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t37) = |type|.
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t38.
      IF t25->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t25->zlnt_json_ownkeys_70e5fd461788->put( p0 = t37 p1 = t38 ).
      ENDIF.
      result = t25.

    ENDIF.
  ENDMETHOD.

  METHOD lookup_domain.
    DATA(t1) = i_name.
    DATA(t2) = i_data_element.
    DATA(t3) = i_description.
    DATA t4 TYPE REF TO zcl_lnt_domain.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_domain.
    CLEAR t5.
    DATA t6 TYPE REF TO zif_lnt_object.
    CLEAR t6.
    DATA(t7) = me->reg.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA(t9) = abap_true.
    IF t9 = abap_true.
      DATA(t10) = |DOMA|.
      DATA(t11) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t11->has = abap_true.
      t11->value = t10.
      t8 = t11.
    ELSE.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t12.
      t8 = t12.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t13.
    DATA(t14) = abap_true.
    IF t14 = abap_true.
      DATA(t15) = t1.
      DATA(t16) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t16->has = abap_true.
      t16->value = t15.
      t13 = t16.
    ELSE.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t17.
      t13 = t17.
    ENDIF.
    t6 = t7->get_object( i_type_9913 = t8 i_name = t13 ).
    DATA t18 TYPE REF TO object.
    t18 = t6.
    t5 ?= t18.
    t4 = t5.
    DATA t19 TYPE abap_bool.
    DATA(t20) = t4.
    t19 = xsdbool( t20 IS BOUND ).
    IF t19 = abap_true.
      DATA t21 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t22 TYPE REF TO zcl_lnt_abstract_type.
      DATA t23 TYPE REF TO zcl_lnt_abstract_type.
      DATA t24 TYPE REF TO zcl_lnt_domain.
      DATA(t25) = t4.
      t24 = t25.
      DATA(t26) = me->reg.
      DATA(t27) = t2.
      DATA(t28) = t3.
      t23 = t24->parse_type( i_reg_f149 = t26 i_data_element = t27 i_description = t28 ).
      t22 = t23.
      DATA t29 TYPE REF TO zif_lnt_object.
      DATA t30 TYPE REF TO zcl_lnt_domain.
      DATA(t31) = t4.
      t30 = t31.
      t29 = t30.
      t21 = NEW zcl_lnt_ilookup_result( i_type_9913 = t22 i_object_19cd = t29 ).
      CREATE OBJECT t21->zlnt_view_ownkeys_b0e8086400eb.
      t21->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t32.
      IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t32 ).
      ENDIF.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t33 ).
      ENDIF.
      CREATE OBJECT t21->zlnt_json_ownkeys_70e5fd461788.
      t21->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t34) = |type|.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t35.
      IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
      ENDIF.
      DATA(t36) = |object|.
      DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t37.
      IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
      ENDIF.
      result = t21.
      RETURN.
    ELSE.
      DATA t38 TYPE abap_bool.
      DATA(t39) = me->reg.
      DATA(t40) = t1.
      t38 = t39->in_error_namespace( i_name = t40 ).
      IF t38 = abap_true.
        DATA t41 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t42 TYPE REF TO zcl_lnt_abstract_type.
        DATA t43 TYPE REF TO zcl_lnt_unknown_type.
        DATA t44 TYPE string.
        DATA(t45) = t1.
        DATA(t46) = |, lookupDomain|.
        DATA(t47) = strlen( t45 ).
        t44 = |{ t45 }{ t46 }|.
        DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t48.
        t43 = NEW zcl_lnt_unknown_type( i_error = t44 i_qualified_name = t48 ).
        t42 = t43.
        DATA t49 TYPE REF TO zif_lnt_object.
        DATA t50 TYPE REF TO zif_lnt_object.
        CLEAR t50.
        t49 = t50.
        t41 = NEW zcl_lnt_ilookup_result( i_type_9913 = t42 i_object_19cd = t49 ).
        CREATE OBJECT t41->zlnt_view_ownkeys_b0e8086400eb.
        t41->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t51.
        IF t41->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t41->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t51 ).
        ENDIF.
        DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t52.
        IF t41->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t41->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t52 ).
        ENDIF.
        CREATE OBJECT t41->zlnt_json_ownkeys_70e5fd461788.
        t41->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t53) = |type|.
        DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t54.
        IF t41->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t41->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
        ENDIF.
        DATA(t55) = |object|.
        DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t56.
        IF t41->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t41->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
        ENDIF.
        result = t41.
        RETURN.
      ELSE.
        DATA t57 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t57.
        DATA t58 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t58.
        DATA t59 TYPE REF TO zcl_lnt_void_type.
        CLEAR t59.
        DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t60.
        DATA(t61) = abap_true.
        IF t61 = abap_true.
          DATA(t62) = t1.
          DATA(t63) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t63->has = abap_true.
          t63->value = t62.
          t60 = t63.
        ELSE.
          DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t64.
          t60 = t64.
        ENDIF.
        DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t65.
        t59 = zcl_lnt_void_type=>get_db65( i_voided = t60 i_qualified_name = t65 ).
        t58 = t59.
        DATA t66 TYPE REF TO zif_lnt_object.
        DATA t67 TYPE REF TO zif_lnt_object.
        CLEAR t67.
        t66 = t67.
        t57 = NEW zcl_lnt_ilookup_result( i_type_9913 = t58 i_object_19cd = t66 ).
        CREATE OBJECT t57->zlnt_view_ownkeys_b0e8086400eb.
        t57->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t68.
        IF t57->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t57->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t68 ).
        ENDIF.
        DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t69.
        IF t57->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t57->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t69 ).
        ENDIF.
        CREATE OBJECT t57->zlnt_json_ownkeys_70e5fd461788.
        t57->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t70) = |type|.
        DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t71.
        IF t57->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t57->zlnt_json_ownkeys_70e5fd461788->put( p0 = t70 p1 = t71 ).
        ENDIF.
        DATA(t72) = |object|.
        DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t73.
        IF t57->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t57->zlnt_json_ownkeys_70e5fd461788->put( p0 = t72 p1 = t73 ).
        ENDIF.
        result = t57.
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD lookup_data_element.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ELSEIF t8->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t10 TYPE REF TO zcl_lnt_abstract_type.
      DATA t11 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t12) = |undefined, lookupDataElement|.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t11 = NEW zcl_lnt_unknown_type( i_error = t12 i_qualified_name = t13 ).
      t10 = t11.
      DATA t14 TYPE REF TO zif_lnt_object.
      DATA t15 TYPE REF TO zif_lnt_object.
      CLEAR t15.
      t14 = t15.
      t9 = NEW zcl_lnt_ilookup_result( i_type_9913 = t10 i_object_19cd = t14 ).
      CREATE OBJECT t9->zlnt_view_ownkeys_b0e8086400eb.
      t9->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      IF t9->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t9->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t16 ).
      ENDIF.
      CREATE OBJECT t9->zlnt_json_ownkeys_70e5fd461788.
      t9->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t17) = |type|.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      IF t9->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t9->zlnt_json_ownkeys_70e5fd461788->put( p0 = t17 p1 = t18 ).
      ENDIF.
      result = t9.
      RETURN.
    ENDIF.
    DATA t19 TYPE REF TO zcl_lnt_data_element.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_data_element.
    CLEAR t20.
    DATA t21 TYPE REF TO zif_lnt_object.
    CLEAR t21.
    DATA(t22) = me->reg.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    DATA(t24) = abap_true.
    IF t24 = abap_true.
      DATA(t25) = |DTEL|.
      DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t26->has = abap_true.
      t26->value = t25.
      t23 = t26.
    ELSE.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      t23 = t27.
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    DATA(t29) = abap_true.
    IF t29 = abap_true.
      DATA t30 TYPE string.
      DATA(t31) = t1.
      t30 = t31->value.
      DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t32->has = abap_true.
      t32->value = t30.
      t28 = t32.
    ELSE.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      t28 = t33.
    ENDIF.
    t21 = t22->get_object( i_type_9913 = t23 i_name = t28 ).
    DATA t34 TYPE REF TO object.
    t34 = t21.
    t20 ?= t34.
    t19 = t20.
    DATA t35 TYPE abap_bool.
    DATA(t36) = t19.
    t35 = xsdbool( t36 IS BOUND ).
    IF t35 = abap_true.
      DATA t37 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t38 TYPE REF TO zcl_lnt_abstract_type.
      DATA t39 TYPE REF TO zcl_lnt_abstract_type.
      DATA t40 TYPE REF TO zcl_lnt_data_element.
      DATA(t41) = t19.
      t40 = t41.
      DATA(t42) = me->reg.
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t43.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t44.
      t39 = t40->parse_type( i_reg_f149 = t42 i_data_element = t43 i_description = t44 ).
      t38 = t39.
      DATA t45 TYPE REF TO zif_lnt_object.
      DATA t46 TYPE REF TO zcl_lnt_data_element.
      DATA(t47) = t19.
      t46 = t47.
      t45 = t46.
      t37 = NEW zcl_lnt_ilookup_result( i_type_9913 = t38 i_object_19cd = t45 ).
      CREATE OBJECT t37->zlnt_view_ownkeys_b0e8086400eb.
      t37->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t48.
      IF t37->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t37->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t48 ).
      ENDIF.
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t49.
      IF t37->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t37->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t49 ).
      ENDIF.
      CREATE OBJECT t37->zlnt_json_ownkeys_70e5fd461788.
      t37->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t50) = |type|.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t51.
      IF t37->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t37->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
      ENDIF.
      DATA(t52) = |object|.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t53.
      IF t37->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t37->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
      ENDIF.
      result = t37.
      RETURN.
    ELSE.
      DATA t54 TYPE abap_bool.
      DATA(t55) = me->reg.
      DATA t56 TYPE string.
      DATA(t57) = t1.
      t56 = t57->value.
      t54 = t55->in_error_namespace( i_name = t56 ).
      IF t54 = abap_true.
        DATA t58 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t59 TYPE REF TO zcl_lnt_abstract_type.
        DATA t60 TYPE REF TO zcl_lnt_unknown_type.
        DATA t61 TYPE string.
        DATA t62 TYPE string.
        DATA(t63) = t1.
        t62 = t63->value.
        DATA(t64) = | not found, lookupDataElement|.
        DATA(t65) = strlen( t62 ).
        t61 = |{ t62 }{ t64 }|.
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t66.
        t60 = NEW zcl_lnt_unknown_type( i_error = t61 i_qualified_name = t66 ).
        t59 = t60.
        DATA t67 TYPE REF TO zif_lnt_object.
        DATA t68 TYPE REF TO zif_lnt_object.
        CLEAR t68.
        t67 = t68.
        t58 = NEW zcl_lnt_ilookup_result( i_type_9913 = t59 i_object_19cd = t67 ).
        CREATE OBJECT t58->zlnt_view_ownkeys_b0e8086400eb.
        t58->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t69.
        IF t58->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t58->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t69 ).
        ENDIF.
        CREATE OBJECT t58->zlnt_json_ownkeys_70e5fd461788.
        t58->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t70) = |type|.
        DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t71.
        IF t58->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = t70 p1 = t71 ).
        ENDIF.
        result = t58.
        RETURN.
      ELSE.
        DATA t72 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t72.
        DATA t73 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t73.
        DATA t74 TYPE REF TO zcl_lnt_void_type.
        CLEAR t74.
        DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t75.
        DATA(t76) = abap_true.
        IF t76 = abap_true.
          DATA t77 TYPE string.
          DATA(t78) = t1.
          t77 = t78->value.
          DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t79->has = abap_true.
          t79->value = t77.
          t75 = t79.
        ELSE.
          DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t80.
          t75 = t80.
        ENDIF.
        DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t81.
        t74 = zcl_lnt_void_type=>get_db65( i_voided = t75 i_qualified_name = t81 ).
        t73 = t74.
        DATA t82 TYPE REF TO zif_lnt_object.
        DATA t83 TYPE REF TO zif_lnt_object.
        CLEAR t83.
        t82 = t83.
        t72 = NEW zcl_lnt_ilookup_result( i_type_9913 = t73 i_object_19cd = t82 ).
        CREATE OBJECT t72->zlnt_view_ownkeys_b0e8086400eb.
        t72->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t84.
        IF t72->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t72->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t84 ).
        ENDIF.
        CREATE OBJECT t72->zlnt_json_ownkeys_70e5fd461788.
        t72->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t85) = |type|.
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        IF t72->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t72->zlnt_json_ownkeys_70e5fd461788->put( p0 = t85 p1 = t86 ).
        ENDIF.
        result = t72.
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD lookup_table_or_view.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ELSEIF t8->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t10 TYPE REF TO zcl_lnt_abstract_type.
      DATA t11 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t12) = |undefined, lookupTableOrView|.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t11 = NEW zcl_lnt_unknown_type( i_error = t12 i_qualified_name = t13 ).
      t10 = t11.
      DATA t14 TYPE REF TO zif_lnt_object.
      DATA t15 TYPE REF TO zif_lnt_object.
      CLEAR t15.
      t14 = t15.
      t9 = NEW zcl_lnt_ilookup_result( i_type_9913 = t10 i_object_19cd = t14 ).
      CREATE OBJECT t9->zlnt_view_ownkeys_b0e8086400eb.
      t9->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      IF t9->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t9->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t16 ).
      ENDIF.
      CREATE OBJECT t9->zlnt_json_ownkeys_70e5fd461788.
      t9->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t17) = |type|.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      IF t9->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t9->zlnt_json_ownkeys_70e5fd461788->put( p0 = t17 p1 = t18 ).
      ENDIF.
      result = t9.
      RETURN.
    ENDIF.
    DATA t19 TYPE REF TO zcl_lnt_table.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_table.
    CLEAR t20.
    DATA t21 TYPE REF TO zif_lnt_object.
    CLEAR t21.
    DATA(t22) = me->reg.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    DATA(t24) = abap_true.
    IF t24 = abap_true.
      DATA(t25) = |TABL|.
      DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t26->has = abap_true.
      t26->value = t25.
      t23 = t26.
    ELSE.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      t23 = t27.
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    DATA(t29) = abap_true.
    IF t29 = abap_true.
      DATA t30 TYPE string.
      DATA(t31) = t1.
      t30 = t31->value.
      DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t32->has = abap_true.
      t32->value = t30.
      t28 = t32.
    ELSE.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      t28 = t33.
    ENDIF.
    t21 = t22->get_object( i_type_9913 = t23 i_name = t28 ).
    DATA t34 TYPE REF TO object.
    t34 = t21.
    t20 ?= t34.
    t19 = t20.
    DATA t35 TYPE abap_bool.
    DATA(t36) = t19.
    t35 = xsdbool( t36 IS BOUND ).
    IF t35 = abap_true.
      DATA t37 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t38 TYPE REF TO zcl_lnt_abstract_type.
      DATA t39 TYPE REF TO zcl_lnt_abstract_type.
      DATA t40 TYPE REF TO zcl_lnt_table.
      DATA(t41) = t19.
      t40 = t41.
      DATA(t42) = me->reg.
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t43.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t44.
      t39 = t40->parse_type( i_reg_f149 = t42 i_data_element = t43 i_description = t44 ).
      t38 = t39.
      DATA t45 TYPE REF TO zif_lnt_object.
      DATA t46 TYPE REF TO zcl_lnt_table.
      DATA(t47) = t19.
      t46 = t47.
      t45 = t46.
      t37 = NEW zcl_lnt_ilookup_result( i_type_9913 = t38 i_object_19cd = t45 ).
      CREATE OBJECT t37->zlnt_view_ownkeys_b0e8086400eb.
      t37->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t48.
      IF t37->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t37->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t48 ).
      ENDIF.
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t49.
      IF t37->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t37->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t49 ).
      ENDIF.
      CREATE OBJECT t37->zlnt_json_ownkeys_70e5fd461788.
      t37->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t50) = |type|.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t51.
      IF t37->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t37->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
      ENDIF.
      DATA(t52) = |object|.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t53.
      IF t37->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t37->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
      ENDIF.
      result = t37.
      RETURN.
    ENDIF.
    DATA t54 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t54.
    DATA t55 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t55.
    DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t56.
    DATA(t57) = abap_true.
    IF t57 = abap_true.
      DATA t58 TYPE string.
      DATA(t59) = t1.
      t58 = t59->value.
      DATA(t60) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t60->has = abap_true.
      t60->value = t58.
      t56 = t60.
    ELSE.
      DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t61.
      t56 = t61.
    ENDIF.
    t55 = me->lookup_ddls( i_name = t56 ).
    t54 = t55.
    DATA t62 TYPE abap_bool.
    DATA(t63) = t54.
    t62 = xsdbool( t63 IS BOUND ).
    IF t62 = abap_true.
      DATA t64 TYPE REF TO zcl_lnt_ilookup_result.
      DATA(t65) = t54.
      t64 = t65.
      result = t64.
      RETURN.
    ENDIF.
    DATA t66 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t67.
    DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t68.
    DATA(t69) = abap_true.
    IF t69 = abap_true.
      DATA t70 TYPE string.
      DATA(t71) = t1.
      t70 = t71->value.
      DATA(t72) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t72->has = abap_true.
      t72->value = t70.
      t68 = t72.
    ELSE.
      DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t73.
      t68 = t73.
    ENDIF.
    t67 = t68.
    DATA t74 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t74.
    DATA(t75) = VALUE abap_bool( ).
    DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t77) = t67.
    t76 = t77.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    t78 = t79.
    DATA(t80) = VALUE abap_bool( ).
    DATA(t81) = t76.
    IF t81 IS INITIAL.
      t80 = abap_true.
    ELSEIF t81->has = abap_false.
      t80 = abap_true.
    ENDIF.
    t75 = t80.
    IF t75 = abap_true.
      DATA t82 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t83 TYPE REF TO zcl_lnt_abstract_type.
      DATA t84 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t85) = |undefined, lookupView|.
      DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t86.
      t84 = NEW zcl_lnt_unknown_type( i_error = t85 i_qualified_name = t86 ).
      t83 = t84.
      DATA t87 TYPE REF TO zif_lnt_object.
      DATA t88 TYPE REF TO zif_lnt_object.
      CLEAR t88.
      t87 = t88.
      t82 = NEW zcl_lnt_ilookup_result( i_type_9913 = t83 i_object_19cd = t87 ).
      CREATE OBJECT t82->zlnt_view_ownkeys_b0e8086400eb.
      t82->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t89.
      IF t82->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t82->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t89 ).
      ENDIF.
      CREATE OBJECT t82->zlnt_json_ownkeys_70e5fd461788.
      t82->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t90) = |type|.
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t91.
      IF t82->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = t90 p1 = t91 ).
      ENDIF.
      t74 = t82.
    ELSE.
      DATA t92 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t92.
      DATA t93 TYPE REF TO zcl_lnt_table.
      CLEAR t93.
      DATA t94 TYPE REF TO zcl_lnt_table.
      CLEAR t94.
      DATA t95 TYPE REF TO zif_lnt_object.
      CLEAR t95.
      DATA(t96) = me->reg.
      DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t97.
      DATA(t98) = abap_true.
      IF t98 = abap_true.
        DATA(t99) = |VIEW|.
        DATA(t100) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t100->has = abap_true.
        t100->value = t99.
        t97 = t100.
      ELSE.
        DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t101.
        t97 = t101.
      ENDIF.
      DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t102.
      DATA(t103) = abap_true.
      IF t103 = abap_true.
        DATA t104 TYPE string.
        DATA(t105) = t67.
        t104 = t105->value.
        DATA(t106) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t106->has = abap_true.
        t106->value = t104.
        t102 = t106.
      ELSE.
        DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t107.
        t102 = t107.
      ENDIF.
      t95 = t96->get_object( i_type_9913 = t97 i_name = t102 ).
      DATA t108 TYPE REF TO object.
      t108 = t95.
      t94 ?= t108.
      t93 = t94.
      DATA t109 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t109.
      DATA t110 TYPE abap_bool.
      DATA(t111) = t93.
      t110 = xsdbool( t111 IS BOUND ).
      IF t110 = abap_true.
        DATA t112 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t113 TYPE REF TO zcl_lnt_abstract_type.
        DATA t114 TYPE REF TO zcl_lnt_abstract_type.
        DATA t115 TYPE REF TO zcl_lnt_table.
        DATA(t116) = t93.
        t115 = t116.
        DATA(t117) = me->reg.
        DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t118.
        DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t119.
        t114 = t115->parse_type( i_reg_f149 = t117 i_data_element = t118 i_description = t119 ).
        t113 = t114.
        DATA t120 TYPE REF TO zif_lnt_object.
        DATA t121 TYPE REF TO zcl_lnt_table.
        DATA(t122) = t93.
        t121 = t122.
        t120 = t121.
        t112 = NEW zcl_lnt_ilookup_result( i_type_9913 = t113 i_object_19cd = t120 ).
        CREATE OBJECT t112->zlnt_view_ownkeys_b0e8086400eb.
        t112->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t123.
        IF t112->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t112->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t123 ).
        ENDIF.
        DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t124.
        IF t112->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t112->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t124 ).
        ENDIF.
        CREATE OBJECT t112->zlnt_json_ownkeys_70e5fd461788.
        t112->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t125) = |type|.
        DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t126.
        IF t112->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t112->zlnt_json_ownkeys_70e5fd461788->put( p0 = t125 p1 = t126 ).
        ENDIF.
        DATA(t127) = |object|.
        DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t128.
        IF t112->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t112->zlnt_json_ownkeys_70e5fd461788->put( p0 = t127 p1 = t128 ).
        ENDIF.
        t109 = t112.
      ELSE.
        DATA t129 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t129.
        DATA t130 TYPE abap_bool.
        DATA(t131) = me->reg.
        DATA t132 TYPE string.
        DATA(t133) = t67.
        t132 = t133->value.
        t130 = t131->in_error_namespace( i_name = t132 ).
        IF t130 = abap_true.
          DATA t134 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t135 TYPE REF TO zcl_lnt_abstract_type.
          DATA t136 TYPE REF TO zcl_lnt_unknown_type.
          DATA t137 TYPE string.
          DATA t138 TYPE string.
          DATA(t139) = t67.
          t138 = t139->value.
          DATA(t140) = | not found, lookupView|.
          DATA(t141) = strlen( t138 ).
          t137 = |{ t138 }{ t140 }|.
          DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t142.
          t136 = NEW zcl_lnt_unknown_type( i_error = t137 i_qualified_name = t142 ).
          t135 = t136.
          DATA t143 TYPE REF TO zif_lnt_object.
          DATA t144 TYPE REF TO zif_lnt_object.
          CLEAR t144.
          t143 = t144.
          t134 = NEW zcl_lnt_ilookup_result( i_type_9913 = t135 i_object_19cd = t143 ).
          CREATE OBJECT t134->zlnt_view_ownkeys_b0e8086400eb.
          t134->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t145.
          IF t134->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t134->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t145 ).
          ENDIF.
          CREATE OBJECT t134->zlnt_json_ownkeys_70e5fd461788.
          t134->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t146) = |type|.
          DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t147.
          IF t134->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t134->zlnt_json_ownkeys_70e5fd461788->put( p0 = t146 p1 = t147 ).
          ENDIF.
          t129 = t134.
        ELSE.
          DATA t148 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t148.
          DATA t149 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t149.
          DATA t150 TYPE REF TO zcl_lnt_void_type.
          CLEAR t150.
          DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t151.
          DATA(t152) = abap_true.
          IF t152 = abap_true.
            DATA t153 TYPE string.
            DATA(t154) = t67.
            t153 = t154->value.
            DATA(t155) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t155->has = abap_true.
            t155->value = t153.
            t151 = t155.
          ELSE.
            DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t156.
            t151 = t156.
          ENDIF.
          DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t157.
          t150 = zcl_lnt_void_type=>get_db65( i_voided = t151 i_qualified_name = t157 ).
          t149 = t150.
          DATA t158 TYPE REF TO zif_lnt_object.
          DATA t159 TYPE REF TO zif_lnt_object.
          CLEAR t159.
          t158 = t159.
          t148 = NEW zcl_lnt_ilookup_result( i_type_9913 = t149 i_object_19cd = t158 ).
          CREATE OBJECT t148->zlnt_view_ownkeys_b0e8086400eb.
          t148->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t160.
          IF t148->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t148->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t160 ).
          ENDIF.
          CREATE OBJECT t148->zlnt_json_ownkeys_70e5fd461788.
          t148->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t161) = |type|.
          DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t162.
          IF t148->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t148->zlnt_json_ownkeys_70e5fd461788->put( p0 = t161 p1 = t162 ).
          ENDIF.
          t129 = t148.
        ENDIF.
        t109 = t129.
      ENDIF.
      t92 = t109.
      t74 = t92.
    ENDIF.
    t66 = t74.
    result = t66.

  ENDMETHOD.

  METHOD lookup_table_or_view2.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ELSEIF t8->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA t9 TYPE REF TO zif_lnt_union_c74a232f.
      CLEAR t9.
      result = t9.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zcl_lnt_table.
    CLEAR t10.
    DATA t11 TYPE REF TO zcl_lnt_table.
    CLEAR t11.
    DATA t12 TYPE REF TO zif_lnt_object.
    CLEAR t12.
    DATA(t13) = me->reg.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t14.
    DATA(t15) = abap_true.
    IF t15 = abap_true.
      DATA(t16) = |TABL|.
      DATA(t17) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t17->has = abap_true.
      t17->value = t16.
      t14 = t17.
    ELSE.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      t14 = t18.
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    DATA(t20) = abap_true.
    IF t20 = abap_true.
      DATA t21 TYPE string.
      DATA(t22) = t1.
      t21 = t22->value.
      DATA(t23) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t23->has = abap_true.
      t23->value = t21.
      t19 = t23.
    ELSE.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      t19 = t24.
    ENDIF.
    t12 = t13->get_object( i_type_9913 = t14 i_name = t19 ).
    DATA t25 TYPE REF TO object.
    t25 = t12.
    t11 ?= t25.
    t10 = t11.
    DATA t26 TYPE abap_bool.
    DATA(t27) = t10.
    t26 = xsdbool( t27 IS BOUND ).
    IF t26 = abap_true.
      DATA t28 TYPE REF TO zcl_lnt_table.
      DATA(t29) = t10.
      t28 = t29.
      result = t28.
      RETURN.
    ENDIF.
    DATA t30 TYPE REF TO zcl_lnt_view.
    CLEAR t30.
    DATA t31 TYPE REF TO zcl_lnt_view.
    CLEAR t31.
    DATA t32 TYPE REF TO zif_lnt_object.
    CLEAR t32.
    DATA(t33) = me->reg.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t34.
    DATA(t35) = abap_true.
    IF t35 = abap_true.
      DATA(t36) = |VIEW|.
      DATA(t37) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t37->has = abap_true.
      t37->value = t36.
      t34 = t37.
    ELSE.
      DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t38.
      t34 = t38.
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    DATA(t40) = abap_true.
    IF t40 = abap_true.
      DATA t41 TYPE string.
      DATA(t42) = t1.
      t41 = t42->value.
      DATA(t43) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t43->has = abap_true.
      t43->value = t41.
      t39 = t43.
    ELSE.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t44.
      t39 = t44.
    ENDIF.
    t32 = t33->get_object( i_type_9913 = t34 i_name = t39 ).
    DATA t45 TYPE REF TO object.
    t45 = t32.
    t31 ?= t45.
    t30 = t31.
    DATA t46 TYPE abap_bool.
    DATA(t47) = t30.
    t46 = xsdbool( t47 IS BOUND ).
    IF t46 = abap_true.
      DATA t48 TYPE REF TO zcl_lnt_view.
      DATA(t49) = t30.
      t48 = t49.
      result = t48.
      RETURN.
    ENDIF.
    DATA t50 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t50.
    DATA t51 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t51.
    DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t52.
    DATA(t53) = abap_true.
    IF t53 = abap_true.
      DATA t54 TYPE string.
      DATA(t55) = t1.
      t54 = t55->value.
      DATA(t56) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t56->has = abap_true.
      t56->value = t54.
      t52 = t56.
    ELSE.
      DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t57.
      t52 = t57.
    ENDIF.
    t51 = me->lookup_ddls( i_name = t52 ).
    t50 = t51.
    DATA t58 TYPE abap_bool.
    DATA(t59) = t50.
    t58 = xsdbool( t59 IS BOUND ).
    IF t58 = abap_true.
      DATA t60 TYPE REF TO zcl_lnt_ob_data_definition.
      DATA t61 TYPE REF TO zif_lnt_object.
      DATA t62 TYPE REF TO zcl_lnt_ilookup_result.
      DATA(t63) = t50.
      t62 = t63.
      t61 = t62->zlnt_view_read_sr_2de0200e6505( ).
      DATA t64 TYPE REF TO object.
      t64 = t61.
      t60 ?= t64.
      result = t60.
      RETURN.
    ENDIF.
    DATA t65 TYPE REF TO zif_lnt_union_c74a232f.
    CLEAR t65.
    result = t65.

  ENDMETHOD.

  METHOD lookup_table.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ELSEIF t8->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t10) = |undefined, lookupTable|.
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t11.
      t9 = NEW zcl_lnt_unknown_type( i_error = t10 i_qualified_name = t11 ).
      result = t9.
      RETURN.
    ENDIF.
    DATA t12 TYPE REF TO zcl_lnt_table.
    CLEAR t12.
    DATA t13 TYPE REF TO zcl_lnt_table.
    CLEAR t13.
    DATA t14 TYPE REF TO zif_lnt_object.
    CLEAR t14.
    DATA(t15) = me->reg.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t16.
    DATA(t17) = abap_true.
    IF t17 = abap_true.
      DATA(t18) = |TABL|.
      DATA(t19) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t19->has = abap_true.
      t19->value = t18.
      t16 = t19.
    ELSE.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      t16 = t20.
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    DATA(t22) = abap_true.
    IF t22 = abap_true.
      DATA t23 TYPE string.
      DATA(t24) = t1.
      t23 = t24->value.
      DATA(t25) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t25->has = abap_true.
      t25->value = t23.
      t21 = t25.
    ELSE.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t26.
      t21 = t26.
    ENDIF.
    t14 = t15->get_object( i_type_9913 = t16 i_name = t21 ).
    DATA t27 TYPE REF TO object.
    t27 = t14.
    t13 ?= t27.
    t12 = t13.
    DATA t28 TYPE abap_bool.
    DATA(t29) = t12.
    t28 = xsdbool( t29 IS BOUND ).
    IF t28 = abap_true.
      DATA t30 TYPE REF TO zcl_lnt_abstract_type.
      DATA t31 TYPE REF TO zcl_lnt_table.
      DATA(t32) = t12.
      t31 = t32.
      DATA(t33) = me->reg.
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t34.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      t30 = t31->parse_type( i_reg_f149 = t33 i_data_element = t34 i_description = t35 ).
      result = t30.
      RETURN.
    ELSE.
      DATA t36 TYPE abap_bool.
      DATA(t37) = me->reg.
      DATA t38 TYPE string.
      DATA(t39) = t1.
      t38 = t39->value.
      t36 = t37->in_error_namespace( i_name = t38 ).
      IF t36 = abap_true.
        DATA t40 TYPE REF TO zcl_lnt_unknown_type.
        DATA t41 TYPE string.
        DATA t42 TYPE string.
        DATA(t43) = t1.
        t42 = t43->value.
        DATA(t44) = | not found, lookupTable|.
        DATA(t45) = strlen( t42 ).
        t41 = |{ t42 }{ t44 }|.
        DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t46.
        t40 = NEW zcl_lnt_unknown_type( i_error = t41 i_qualified_name = t46 ).
        result = t40.
        RETURN.
      ELSE.
        DATA t47 TYPE REF TO zcl_lnt_void_type.
        CLEAR t47.
        DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t48.
        DATA(t49) = abap_true.
        IF t49 = abap_true.
          DATA t50 TYPE string.
          DATA(t51) = t1.
          t50 = t51->value.
          DATA(t52) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t52->has = abap_true.
          t52->value = t50.
          t48 = t52.
        ELSE.
          DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t53.
          t48 = t53.
        ENDIF.
        DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t54.
        t47 = zcl_lnt_void_type=>get_db65( i_voided = t48 i_qualified_name = t54 ).
        result = t47.
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD lookup_view.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ELSEIF t8->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t10 TYPE REF TO zcl_lnt_abstract_type.
      DATA t11 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t12) = |undefined, lookupView|.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t11 = NEW zcl_lnt_unknown_type( i_error = t12 i_qualified_name = t13 ).
      t10 = t11.
      DATA t14 TYPE REF TO zif_lnt_object.
      DATA t15 TYPE REF TO zif_lnt_object.
      CLEAR t15.
      t14 = t15.
      t9 = NEW zcl_lnt_ilookup_result( i_type_9913 = t10 i_object_19cd = t14 ).
      CREATE OBJECT t9->zlnt_view_ownkeys_b0e8086400eb.
      t9->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      IF t9->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t9->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t16 ).
      ENDIF.
      CREATE OBJECT t9->zlnt_json_ownkeys_70e5fd461788.
      t9->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t17) = |type|.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      IF t9->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t9->zlnt_json_ownkeys_70e5fd461788->put( p0 = t17 p1 = t18 ).
      ENDIF.
      result = t9.
      RETURN.
    ENDIF.
    DATA t19 TYPE REF TO zcl_lnt_table.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_table.
    CLEAR t20.
    DATA t21 TYPE REF TO zif_lnt_object.
    CLEAR t21.
    DATA(t22) = me->reg.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    DATA(t24) = abap_true.
    IF t24 = abap_true.
      DATA(t25) = |VIEW|.
      DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t26->has = abap_true.
      t26->value = t25.
      t23 = t26.
    ELSE.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      t23 = t27.
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    DATA(t29) = abap_true.
    IF t29 = abap_true.
      DATA t30 TYPE string.
      DATA(t31) = t1.
      t30 = t31->value.
      DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t32->has = abap_true.
      t32->value = t30.
      t28 = t32.
    ELSE.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      t28 = t33.
    ENDIF.
    t21 = t22->get_object( i_type_9913 = t23 i_name = t28 ).
    DATA t34 TYPE REF TO object.
    t34 = t21.
    t20 ?= t34.
    t19 = t20.
    DATA t35 TYPE abap_bool.
    DATA(t36) = t19.
    t35 = xsdbool( t36 IS BOUND ).
    IF t35 = abap_true.
      DATA t37 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t38 TYPE REF TO zcl_lnt_abstract_type.
      DATA t39 TYPE REF TO zcl_lnt_abstract_type.
      DATA t40 TYPE REF TO zcl_lnt_table.
      DATA(t41) = t19.
      t40 = t41.
      DATA(t42) = me->reg.
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t43.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t44.
      t39 = t40->parse_type( i_reg_f149 = t42 i_data_element = t43 i_description = t44 ).
      t38 = t39.
      DATA t45 TYPE REF TO zif_lnt_object.
      DATA t46 TYPE REF TO zcl_lnt_table.
      DATA(t47) = t19.
      t46 = t47.
      t45 = t46.
      t37 = NEW zcl_lnt_ilookup_result( i_type_9913 = t38 i_object_19cd = t45 ).
      CREATE OBJECT t37->zlnt_view_ownkeys_b0e8086400eb.
      t37->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t48.
      IF t37->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t37->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t48 ).
      ENDIF.
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t49.
      IF t37->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t37->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t49 ).
      ENDIF.
      CREATE OBJECT t37->zlnt_json_ownkeys_70e5fd461788.
      t37->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t50) = |type|.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t51.
      IF t37->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t37->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
      ENDIF.
      DATA(t52) = |object|.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t53.
      IF t37->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t37->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
      ENDIF.
      result = t37.
      RETURN.
    ELSE.
      DATA t54 TYPE abap_bool.
      DATA(t55) = me->reg.
      DATA t56 TYPE string.
      DATA(t57) = t1.
      t56 = t57->value.
      t54 = t55->in_error_namespace( i_name = t56 ).
      IF t54 = abap_true.
        DATA t58 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t59 TYPE REF TO zcl_lnt_abstract_type.
        DATA t60 TYPE REF TO zcl_lnt_unknown_type.
        DATA t61 TYPE string.
        DATA t62 TYPE string.
        DATA(t63) = t1.
        t62 = t63->value.
        DATA(t64) = | not found, lookupView|.
        DATA(t65) = strlen( t62 ).
        t61 = |{ t62 }{ t64 }|.
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t66.
        t60 = NEW zcl_lnt_unknown_type( i_error = t61 i_qualified_name = t66 ).
        t59 = t60.
        DATA t67 TYPE REF TO zif_lnt_object.
        DATA t68 TYPE REF TO zif_lnt_object.
        CLEAR t68.
        t67 = t68.
        t58 = NEW zcl_lnt_ilookup_result( i_type_9913 = t59 i_object_19cd = t67 ).
        CREATE OBJECT t58->zlnt_view_ownkeys_b0e8086400eb.
        t58->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t69.
        IF t58->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t58->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t69 ).
        ENDIF.
        CREATE OBJECT t58->zlnt_json_ownkeys_70e5fd461788.
        t58->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t70) = |type|.
        DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t71.
        IF t58->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = t70 p1 = t71 ).
        ENDIF.
        result = t58.
        RETURN.
      ELSE.
        DATA t72 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t72.
        DATA t73 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t73.
        DATA t74 TYPE REF TO zcl_lnt_void_type.
        CLEAR t74.
        DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t75.
        DATA(t76) = abap_true.
        IF t76 = abap_true.
          DATA t77 TYPE string.
          DATA(t78) = t1.
          t77 = t78->value.
          DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t79->has = abap_true.
          t79->value = t77.
          t75 = t79.
        ELSE.
          DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t80.
          t75 = t80.
        ENDIF.
        DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t81.
        t74 = zcl_lnt_void_type=>get_db65( i_voided = t75 i_qualified_name = t81 ).
        t73 = t74.
        DATA t82 TYPE REF TO zif_lnt_object.
        DATA t83 TYPE REF TO zif_lnt_object.
        CLEAR t83.
        t82 = t83.
        t72 = NEW zcl_lnt_ilookup_result( i_type_9913 = t73 i_object_19cd = t82 ).
        CREATE OBJECT t72->zlnt_view_ownkeys_b0e8086400eb.
        t72->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t84.
        IF t72->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t72->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t84 ).
        ENDIF.
        CREATE OBJECT t72->zlnt_json_ownkeys_70e5fd461788.
        t72->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t85) = |type|.
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        IF t72->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t72->zlnt_json_ownkeys_70e5fd461788->put( p0 = t85 p1 = t86 ).
        ENDIF.
        result = t72.
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD lookup_table_type.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ELSEIF t8->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t10 TYPE REF TO zcl_lnt_abstract_type.
      DATA t11 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t12) = |undefined, lookupTableType|.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t11 = NEW zcl_lnt_unknown_type( i_error = t12 i_qualified_name = t13 ).
      t10 = t11.
      DATA t14 TYPE REF TO zif_lnt_object.
      DATA t15 TYPE REF TO zif_lnt_object.
      CLEAR t15.
      t14 = t15.
      t9 = NEW zcl_lnt_ilookup_result( i_type_9913 = t10 i_object_19cd = t14 ).
      CREATE OBJECT t9->zlnt_view_ownkeys_b0e8086400eb.
      t9->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      IF t9->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t9->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t16 ).
      ENDIF.
      CREATE OBJECT t9->zlnt_json_ownkeys_70e5fd461788.
      t9->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t17) = |type|.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      IF t9->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t9->zlnt_json_ownkeys_70e5fd461788->put( p0 = t17 p1 = t18 ).
      ENDIF.
      result = t9.
      RETURN.
    ENDIF.
    DATA t19 TYPE REF TO zcl_lnt_ob_table_type.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_ob_table_type.
    CLEAR t20.
    DATA t21 TYPE REF TO zif_lnt_object.
    CLEAR t21.
    DATA(t22) = me->reg.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    DATA(t24) = abap_true.
    IF t24 = abap_true.
      DATA(t25) = |TTYP|.
      DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t26->has = abap_true.
      t26->value = t25.
      t23 = t26.
    ELSE.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      t23 = t27.
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    DATA(t29) = abap_true.
    IF t29 = abap_true.
      DATA t30 TYPE string.
      DATA(t31) = t1.
      t30 = t31->value.
      DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t32->has = abap_true.
      t32->value = t30.
      t28 = t32.
    ELSE.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      t28 = t33.
    ENDIF.
    t21 = t22->get_object( i_type_9913 = t23 i_name = t28 ).
    DATA t34 TYPE REF TO object.
    t34 = t21.
    t20 ?= t34.
    t19 = t20.
    DATA t35 TYPE abap_bool.
    DATA(t36) = t19.
    t35 = xsdbool( t36 IS BOUND ).
    IF t35 = abap_true.
      DATA t37 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t38 TYPE REF TO zcl_lnt_abstract_type.
      DATA t39 TYPE REF TO zcl_lnt_abstract_type.
      DATA t40 TYPE REF TO zcl_lnt_ob_table_type.
      DATA(t41) = t19.
      t40 = t41.
      DATA(t42) = me->reg.
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t43.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t44.
      t39 = t40->parse_type( i_reg_f149 = t42 i_data_element = t43 i_description = t44 ).
      t38 = t39.
      DATA t45 TYPE REF TO zif_lnt_object.
      DATA t46 TYPE REF TO zcl_lnt_ob_table_type.
      DATA(t47) = t19.
      t46 = t47.
      t45 = t46.
      t37 = NEW zcl_lnt_ilookup_result( i_type_9913 = t38 i_object_19cd = t45 ).
      CREATE OBJECT t37->zlnt_view_ownkeys_b0e8086400eb.
      t37->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t48.
      IF t37->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t37->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t48 ).
      ENDIF.
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t49.
      IF t37->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t37->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t49 ).
      ENDIF.
      CREATE OBJECT t37->zlnt_json_ownkeys_70e5fd461788.
      t37->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t50) = |type|.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t51.
      IF t37->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t37->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
      ENDIF.
      DATA(t52) = |object|.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t53.
      IF t37->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t37->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
      ENDIF.
      result = t37.
      RETURN.
    ELSE.
      DATA t54 TYPE abap_bool.
      DATA(t55) = me->reg.
      DATA t56 TYPE string.
      DATA(t57) = t1.
      t56 = t57->value.
      t54 = t55->in_error_namespace( i_name = t56 ).
      IF t54 = abap_true.
        DATA t58 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t59 TYPE REF TO zcl_lnt_abstract_type.
        DATA t60 TYPE REF TO zcl_lnt_unknown_type.
        DATA t61 TYPE string.
        DATA t62 TYPE string.
        DATA(t63) = t1.
        t62 = t63->value.
        DATA(t64) = | not found, lookupTableType|.
        DATA(t65) = strlen( t62 ).
        t61 = |{ t62 }{ t64 }|.
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t66.
        t60 = NEW zcl_lnt_unknown_type( i_error = t61 i_qualified_name = t66 ).
        t59 = t60.
        DATA t67 TYPE REF TO zif_lnt_object.
        DATA t68 TYPE REF TO zif_lnt_object.
        CLEAR t68.
        t67 = t68.
        t58 = NEW zcl_lnt_ilookup_result( i_type_9913 = t59 i_object_19cd = t67 ).
        CREATE OBJECT t58->zlnt_view_ownkeys_b0e8086400eb.
        t58->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t69.
        IF t58->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t58->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t69 ).
        ENDIF.
        CREATE OBJECT t58->zlnt_json_ownkeys_70e5fd461788.
        t58->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t70) = |type|.
        DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t71.
        IF t58->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = t70 p1 = t71 ).
        ENDIF.
        result = t58.
        RETURN.
      ELSE.
        DATA t72 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t72.
        DATA t73 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t73.
        DATA t74 TYPE REF TO zcl_lnt_void_type.
        CLEAR t74.
        DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t75.
        DATA(t76) = abap_true.
        IF t76 = abap_true.
          DATA t77 TYPE string.
          DATA(t78) = t1.
          t77 = t78->value.
          DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t79->has = abap_true.
          t79->value = t77.
          t75 = t79.
        ELSE.
          DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t80.
          t75 = t80.
        ENDIF.
        DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t81.
        t74 = zcl_lnt_void_type=>get_db65( i_voided = t75 i_qualified_name = t81 ).
        t73 = t74.
        DATA t82 TYPE REF TO zif_lnt_object.
        DATA t83 TYPE REF TO zif_lnt_object.
        CLEAR t83.
        t82 = t83.
        t72 = NEW zcl_lnt_ilookup_result( i_type_9913 = t73 i_object_19cd = t82 ).
        CREATE OBJECT t72->zlnt_view_ownkeys_b0e8086400eb.
        t72->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t84.
        IF t72->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t72->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t84 ).
        ENDIF.
        CREATE OBJECT t72->zlnt_json_ownkeys_70e5fd461788.
        t72->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t85) = |type|.
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        IF t72->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t72->zlnt_json_ownkeys_70e5fd461788->put( p0 = t85 p1 = t86 ).
        ENDIF.
        result = t72.
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD text_to_type.
    CONSTANTS range_ceil_finite TYPE f VALUE '1.7976931348623157E+308'.
    CONSTANTS range_ceil_integral TYPE f VALUE '4503599627370496'.
    CONSTANTS range_parse_safe_prefix TYPE int8 VALUE '900719925474099'.
    DATA(t1) = i_input_967e.
    DATA t2 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = t1.
    t5 = t6->qualified_name.
    t4 = t5.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t9) = t1.
    t8 = t9->conversion_exit.
    t7 = t8.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t12) = t1.
    t11 = t12->ddic_name.
    t10 = t11.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t15) = t1.
    t14 = t15->description.
    t13 = t14.
    DATA t16 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t17 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t17.
    t16 = t17.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    t18 = t19.
    t3 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t4 i_conversion_exit = t7 i_derived_from_constant = t16 i_ddic_name = t10 i_rtti_name = t18 i_description = t13 ).
    CREATE OBJECT t3->zlnt_view_ownkeys_b0e8086400eb.
    t3->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t20 ).
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `conversionExit` p1 = t21 ).
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ddicName` p1 = t22 ).
    ENDIF.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t23 ).
    ENDIF.
    CREATE OBJECT t3->zlnt_json_ownkeys_70e5fd461788.
    t3->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t24) = |qualifiedName|.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = t24 p1 = t25 ).
    ENDIF.
    DATA(t26) = |conversionExit|.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = t26 p1 = t27 ).
    ENDIF.
    DATA(t28) = |ddicName|.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = t28 p1 = t29 ).
    ENDIF.
    DATA(t30) = |description|.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = t30 p1 = t31 ).
    ENDIF.
    t2 = t3.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t34) = t1.
    t33 = t34->text.
    t32 = t33.
    DATA(t35) = VALUE abap_bool( ).
    DATA(t36) = t32.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    DATA(t38) = abap_true.
    IF t38 = abap_true.
      DATA(t39) = |DEC|.
      DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t40->has = abap_true.
      t40->value = t39.
      t37 = t40.
    ELSE.
      DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t41.
      t37 = t41.
    ENDIF.
    DATA(t42) = VALUE abap_bool( ).
    DATA(t43) = VALUE abap_bool( ).
    IF t36 IS BOUND.
      t42 = t36->has.
    ENDIF.
    IF t37 IS BOUND.
      t43 = t37->has.
    ENDIF.
    IF t42 = t43.
      IF t42 = abap_false.
        t35 = abap_true.
      ELSEIF t36->value = t37->value.
        t35 = abap_true.
      ENDIF.
    ENDIF.
    IF t35 = abap_true.
      DATA(t44) = VALUE abap_bool( ).
      DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t47) = t1.
      t46 = t47->length.
      t45 = t46.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t49.
      t48 = t49.
      DATA(t50) = VALUE abap_bool( ).
      DATA(t51) = t45.
      IF t51 IS INITIAL.
        t50 = abap_true.
      ELSEIF t51->has = abap_false.
        t50 = abap_true.
      ENDIF.
      t44 = t50.
      IF t44 = abap_true.
        DATA t52 TYPE REF TO zcl_lnt_unknown_type.
        CLEAR t52.
        DATA t53 TYPE string.
        DATA t54 TYPE string.
        DATA t55 TYPE string.
        DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t57) = t1.
        t56 = t57->text.
        t55 = t56->value.
        DATA(t58) = | unknown length, |.
        DATA(t59) = strlen( t55 ).
        t54 = |{ t55 }{ t58 }|.
        DATA t60 TYPE string.
        DATA(t61) = t1.
        t60 = t61->info_text.
        DATA(t62) = strlen( t54 ).
        t53 = |{ t54 }{ t60 }|.
        DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t63.
        DATA(t64) = abap_true.
        IF t64 = abap_true.
          DATA t65 TYPE string.
          DATA(t66) = t1.
          t65 = t66->info_text.
          DATA(t67) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t67->has = abap_true.
          t67->value = t65.
          t63 = t67.
        ELSE.
          DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t68.
          t63 = t68.
        ENDIF.
        t52 = NEW zcl_lnt_unknown_type( i_error = t53 i_qualified_name = t63 ).
        result = t52.
        RETURN.
      ENDIF.
      DATA(t69) = VALUE f( ).
      DATA(t70) = VALUE f( ).
      DATA(t71) = VALUE f( ).
      DATA(t72) = VALUE f( ).
      DATA(t73) = VALUE f( ).
      DATA t74 TYPE string.
      DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t76) = t1.
      t75 = t76->length.
      t74 = t75->value.
      DATA t77 TYPE i.
      DATA t78 TYPE i.
      DATA(t79) = VALUE string( ).
      DATA t80 TYPE abap_bool.
      DATA t81 TYPE abap_bool.
      DATA t82 TYPE int8.
      DATA(t83) = VALUE i( ).
      t77 = 0.
      t82 = 0.
      t80 = abap_false.
      t81 = abap_false.
      t78 = strlen( t74 ).
      DATA(t84) = VALUE i( ).
      DATA(t85) = VALUE i( ).
      DATA(t86) = VALUE string( ).
      WHILE t77 < t78.
        t85 = t77.
        t86 = t74+t85(1).
        DATA t87 TYPE c LENGTH 1.
        CLEAR t87.
        DATA(t88) = VALUE xstring( ).
        DATA t89 TYPE x LENGTH 1.
        CLEAR t89.
        DATA t90 TYPE x LENGTH 1.
        CLEAR t90.
        DATA(t91) = VALUE i( ).
        t87 = t86.
        t84 = cl_abap_conv_out_ce=>uccpi( t87 ).
        IF t84 >= 255.
          IF zlnt_builtin_code_15236315dde7 IS NOT BOUND.
            zlnt_builtin_code_15236315dde7 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
          ENDIF.
          zlnt_builtin_code_15236315dde7->convert( EXPORTING data = t86 IMPORTING buffer = t88 ).
          t89 = t88(1).
          t90 = t88+1(1).
          t84 = t89.
          t91 = t90.
          t84 = t84 + t91 * 256.
        ENDIF.
        IF t84 = 9 OR t84 = 10 OR t84 = 11 OR t84 = 12 OR t84 = 13 OR t84 = 32 OR t84 = 160 OR t84 = 5760 OR t84 = 8232 OR t84 = 8233 OR t84 = 8239 OR t84 = 8287 OR t84 = 12288 OR t84 = 65279 OR t84 >= 8192 AND t84 <= 8202.
          t77 = t77 + 1.
        ELSE.
          EXIT.
        ENDIF.
      ENDWHILE.
      IF t77 < t78.
        t79 = t74+t77(1).
        IF t79 = '-' OR t79 = '+'.
          t80 = xsdbool( t79 = '-' ).
          t77 = t77 + 1.
        ENDIF.
      ENDIF.
      WHILE t77 < t78.
        t79 = t74+t77(1).
        IF t79 CN '0123456789' OR t79 = ` `.
          EXIT.
        ENDIF.
        t83 = t79.
        IF t82 > range_parse_safe_prefix OR ( t82 = range_parse_safe_prefix AND t83 > 1 ).
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t82 = t82 * 10 + t83.
        t81 = abap_true.
        t77 = t77 + 1.
      ENDWHILE.
      IF t81 = abap_false OR ( t80 = abap_true AND t82 = 0 ).
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      IF t80 = abap_true.
        t82 = 0 - t82.
      ENDIF.
      t73 = t82.
      DATA(t92) = CONV f( 1 ).
      t72 = t73 + t92.
      DATA(t93) = CONV f( 2 ).
      t71 = t72 / t93.
      IF t71 <> t71 OR t71 > range_ceil_finite OR t71 < 0 - range_ceil_finite.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      IF t71 > -1 AND t71 <= 0.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      IF t71 >= range_ceil_integral OR t71 <= 0 - range_ceil_integral.
        t70 = t71.
      ELSE.
        t70 = trunc( t71 ).
        IF t71 > t70.
          t70 = t70 + 1.
        ENDIF.
      ENDIF.
      t69 = t70.
      DATA(t94) = VALUE f( ).
      DATA(t95) = VALUE f( ).
      DATA(t96) = VALUE abap_bool( ).
      DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t99) = t1.
      t98 = t99->decimals_29bf.
      t97 = t98.
      DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t101.
      t100 = t101.
      DATA(t102) = VALUE abap_bool( ).
      DATA(t103) = t97.
      IF t103 IS INITIAL.
        t102 = abap_true.
      ELSEIF t103->has = abap_false.
        t102 = abap_true.
      ENDIF.
      t96 = t102.
      IF t96 = abap_true.
        DATA(t104) = CONV f( 0 ).
        t95 = t104.
      ELSE.
        DATA(t105) = VALUE f( ).
        DATA t106 TYPE string.
        DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t108) = t1.
        t107 = t108->decimals_29bf.
        t106 = t107->value.
        DATA t109 TYPE i.
        DATA t110 TYPE i.
        DATA(t111) = VALUE string( ).
        DATA t112 TYPE abap_bool.
        DATA t113 TYPE abap_bool.
        DATA t114 TYPE int8.
        DATA(t115) = VALUE i( ).
        t109 = 0.
        t114 = 0.
        t112 = abap_false.
        t113 = abap_false.
        t110 = strlen( t106 ).
        DATA(t116) = VALUE i( ).
        DATA(t117) = VALUE i( ).
        DATA(t118) = VALUE string( ).
        WHILE t109 < t110.
          t117 = t109.
          t118 = t106+t117(1).
          DATA t119 TYPE c LENGTH 1.
          CLEAR t119.
          DATA(t120) = VALUE xstring( ).
          DATA t121 TYPE x LENGTH 1.
          CLEAR t121.
          DATA t122 TYPE x LENGTH 1.
          CLEAR t122.
          DATA(t123) = VALUE i( ).
          t119 = t118.
          t116 = cl_abap_conv_out_ce=>uccpi( t119 ).
          IF t116 >= 255.
            IF zlnt_builtin_code_15236315dde7 IS NOT BOUND.
              zlnt_builtin_code_15236315dde7 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_15236315dde7->convert( EXPORTING data = t118 IMPORTING buffer = t120 ).
            t121 = t120(1).
            t122 = t120+1(1).
            t116 = t121.
            t123 = t122.
            t116 = t116 + t123 * 256.
          ENDIF.
          IF t116 = 9 OR t116 = 10 OR t116 = 11 OR t116 = 12 OR t116 = 13 OR t116 = 32 OR t116 = 160 OR t116 = 5760 OR t116 = 8232 OR t116 = 8233 OR t116 = 8239 OR t116 = 8287 OR t116 = 12288 OR t116 = 65279 OR t116 >= 8192 AND t116 <= 8202.
            t109 = t109 + 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        IF t109 < t110.
          t111 = t106+t109(1).
          IF t111 = '-' OR t111 = '+'.
            t112 = xsdbool( t111 = '-' ).
            t109 = t109 + 1.
          ENDIF.
        ENDIF.
        WHILE t109 < t110.
          t111 = t106+t109(1).
          IF t111 CN '0123456789' OR t111 = ` `.
            EXIT.
          ENDIF.
          t115 = t111.
          IF t114 > range_parse_safe_prefix OR ( t114 = range_parse_safe_prefix AND t115 > 1 ).
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t114 = t114 * 10 + t115.
          t113 = abap_true.
          t109 = t109 + 1.
        ENDWHILE.
        IF t113 = abap_false OR ( t112 = abap_true AND t114 = 0 ).
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        IF t112 = abap_true.
          t114 = 0 - t114.
        ENDIF.
        t105 = t114.
        t95 = t105.
      ENDIF.
      t94 = t95.
      DATA t124 TYPE REF TO zcl_lnt_packed_type.
      CLEAR t124.
      DATA(t125) = t69.
      DATA(t126) = t94.
      DATA t127 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t127.
      DATA(t128) = abap_true.
      IF t128 = abap_true.
        DATA(t129) = t2.
        t127 = t129.
      ELSE.
        DATA t130 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t130.
        t127 = t130.
      ENDIF.
      t124 = NEW zcl_lnt_packed_type( i_length = t125 i_decimals_2eed = t126 i_extra = t127 ).
      result = t124.
      RETURN.
    ELSE.
      DATA(t131) = VALUE abap_bool( ).
      DATA(t132) = t32.
      DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t133.
      DATA(t134) = abap_true.
      IF t134 = abap_true.
        DATA(t135) = |D16F|.
        DATA(t136) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t136->has = abap_true.
        t136->value = t135.
        t133 = t136.
      ELSE.
        DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t137.
        t133 = t137.
      ENDIF.
      DATA(t138) = VALUE abap_bool( ).
      DATA(t139) = VALUE abap_bool( ).
      IF t132 IS BOUND.
        t138 = t132->has.
      ENDIF.
      IF t133 IS BOUND.
        t139 = t133->has.
      ENDIF.
      IF t138 = t139.
        IF t138 = abap_false.
          t131 = abap_true.
        ELSEIF t132->value = t133->value.
          t131 = abap_true.
        ENDIF.
      ENDIF.
      IF t131 = abap_true.
        DATA(t140) = VALUE abap_bool( ).
        DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t143) = t1.
        t142 = t143->length.
        t141 = t142.
        DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t145.
        t144 = t145.
        DATA(t146) = VALUE abap_bool( ).
        DATA(t147) = t141.
        IF t147 IS INITIAL.
          t146 = abap_true.
        ELSEIF t147->has = abap_false.
          t146 = abap_true.
        ENDIF.
        t140 = t146.
        IF t140 = abap_true.
          DATA t148 TYPE REF TO zcl_lnt_unknown_type.
          CLEAR t148.
          DATA t149 TYPE string.
          DATA t150 TYPE string.
          DATA t151 TYPE string.
          DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t153) = t1.
          t152 = t153->text.
          t151 = t152->value.
          DATA(t154) = | unknown length, |.
          DATA(t155) = strlen( t151 ).
          t150 = |{ t151 }{ t154 }|.
          DATA t156 TYPE string.
          DATA(t157) = t1.
          t156 = t157->info_text.
          DATA(t158) = strlen( t150 ).
          t149 = |{ t150 }{ t156 }|.
          DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t159.
          DATA(t160) = abap_true.
          IF t160 = abap_true.
            DATA t161 TYPE string.
            DATA(t162) = t1.
            t161 = t162->info_text.
            DATA(t163) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t163->has = abap_true.
            t163->value = t161.
            t159 = t163.
          ELSE.
            DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t164.
            t159 = t164.
          ENDIF.
          t148 = NEW zcl_lnt_unknown_type( i_error = t149 i_qualified_name = t159 ).
          result = t148.
          RETURN.
        ENDIF.
        DATA(t165) = VALUE f( ).
        DATA(t166) = VALUE f( ).
        DATA(t167) = VALUE f( ).
        DATA(t168) = VALUE f( ).
        DATA(t169) = VALUE f( ).
        DATA t170 TYPE string.
        DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t172) = t1.
        t171 = t172->length.
        t170 = t171->value.
        DATA t173 TYPE i.
        DATA t174 TYPE i.
        DATA(t175) = VALUE string( ).
        DATA t176 TYPE abap_bool.
        DATA t177 TYPE abap_bool.
        DATA t178 TYPE int8.
        DATA(t179) = VALUE i( ).
        t173 = 0.
        t178 = 0.
        t176 = abap_false.
        t177 = abap_false.
        t174 = strlen( t170 ).
        DATA(t180) = VALUE i( ).
        DATA(t181) = VALUE i( ).
        DATA(t182) = VALUE string( ).
        WHILE t173 < t174.
          t181 = t173.
          t182 = t170+t181(1).
          DATA t183 TYPE c LENGTH 1.
          CLEAR t183.
          DATA(t184) = VALUE xstring( ).
          DATA t185 TYPE x LENGTH 1.
          CLEAR t185.
          DATA t186 TYPE x LENGTH 1.
          CLEAR t186.
          DATA(t187) = VALUE i( ).
          t183 = t182.
          t180 = cl_abap_conv_out_ce=>uccpi( t183 ).
          IF t180 >= 255.
            IF zlnt_builtin_code_15236315dde7 IS NOT BOUND.
              zlnt_builtin_code_15236315dde7 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_15236315dde7->convert( EXPORTING data = t182 IMPORTING buffer = t184 ).
            t185 = t184(1).
            t186 = t184+1(1).
            t180 = t185.
            t187 = t186.
            t180 = t180 + t187 * 256.
          ENDIF.
          IF t180 = 9 OR t180 = 10 OR t180 = 11 OR t180 = 12 OR t180 = 13 OR t180 = 32 OR t180 = 160 OR t180 = 5760 OR t180 = 8232 OR t180 = 8233 OR t180 = 8239 OR t180 = 8287 OR t180 = 12288 OR t180 = 65279 OR t180 >= 8192 AND t180 <= 8202.
            t173 = t173 + 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        IF t173 < t174.
          t175 = t170+t173(1).
          IF t175 = '-' OR t175 = '+'.
            t176 = xsdbool( t175 = '-' ).
            t173 = t173 + 1.
          ENDIF.
        ENDIF.
        WHILE t173 < t174.
          t175 = t170+t173(1).
          IF t175 CN '0123456789' OR t175 = ` `.
            EXIT.
          ENDIF.
          t179 = t175.
          IF t178 > range_parse_safe_prefix OR ( t178 = range_parse_safe_prefix AND t179 > 1 ).
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t178 = t178 * 10 + t179.
          t177 = abap_true.
          t173 = t173 + 1.
        ENDWHILE.
        IF t177 = abap_false OR ( t176 = abap_true AND t178 = 0 ).
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        IF t176 = abap_true.
          t178 = 0 - t178.
        ENDIF.
        t169 = t178.
        DATA(t188) = CONV f( 1 ).
        t168 = t169 + t188.
        DATA(t189) = CONV f( 2 ).
        t167 = t168 / t189.
        IF t167 <> t167 OR t167 > range_ceil_finite OR t167 < 0 - range_ceil_finite.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        IF t167 > -1 AND t167 <= 0.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        IF t167 >= range_ceil_integral OR t167 <= 0 - range_ceil_integral.
          t166 = t167.
        ELSE.
          t166 = trunc( t167 ).
          IF t167 > t166.
            t166 = t166 + 1.
          ENDIF.
        ENDIF.
        t165 = t166.
        DATA(t190) = VALUE f( ).
        DATA(t191) = VALUE f( ).
        DATA(t192) = VALUE abap_bool( ).
        DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t195) = t1.
        t194 = t195->decimals_29bf.
        t193 = t194.
        DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t197.
        t196 = t197.
        DATA(t198) = VALUE abap_bool( ).
        DATA(t199) = t193.
        IF t199 IS INITIAL.
          t198 = abap_true.
        ELSEIF t199->has = abap_false.
          t198 = abap_true.
        ENDIF.
        t192 = t198.
        IF t192 = abap_true.
          DATA(t200) = CONV f( 0 ).
          t191 = t200.
        ELSE.
          DATA(t201) = VALUE f( ).
          DATA t202 TYPE string.
          DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t204) = t1.
          t203 = t204->decimals_29bf.
          t202 = t203->value.
          DATA t205 TYPE i.
          DATA t206 TYPE i.
          DATA(t207) = VALUE string( ).
          DATA t208 TYPE abap_bool.
          DATA t209 TYPE abap_bool.
          DATA t210 TYPE int8.
          DATA(t211) = VALUE i( ).
          t205 = 0.
          t210 = 0.
          t208 = abap_false.
          t209 = abap_false.
          t206 = strlen( t202 ).
          DATA(t212) = VALUE i( ).
          DATA(t213) = VALUE i( ).
          DATA(t214) = VALUE string( ).
          WHILE t205 < t206.
            t213 = t205.
            t214 = t202+t213(1).
            DATA t215 TYPE c LENGTH 1.
            CLEAR t215.
            DATA(t216) = VALUE xstring( ).
            DATA t217 TYPE x LENGTH 1.
            CLEAR t217.
            DATA t218 TYPE x LENGTH 1.
            CLEAR t218.
            DATA(t219) = VALUE i( ).
            t215 = t214.
            t212 = cl_abap_conv_out_ce=>uccpi( t215 ).
            IF t212 >= 255.
              IF zlnt_builtin_code_15236315dde7 IS NOT BOUND.
                zlnt_builtin_code_15236315dde7 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
              ENDIF.
              zlnt_builtin_code_15236315dde7->convert( EXPORTING data = t214 IMPORTING buffer = t216 ).
              t217 = t216(1).
              t218 = t216+1(1).
              t212 = t217.
              t219 = t218.
              t212 = t212 + t219 * 256.
            ENDIF.
            IF t212 = 9 OR t212 = 10 OR t212 = 11 OR t212 = 12 OR t212 = 13 OR t212 = 32 OR t212 = 160 OR t212 = 5760 OR t212 = 8232 OR t212 = 8233 OR t212 = 8239 OR t212 = 8287 OR t212 = 12288 OR t212 = 65279 OR t212 >= 8192 AND t212 <= 8202.
              t205 = t205 + 1.
            ELSE.
              EXIT.
            ENDIF.
          ENDWHILE.
          IF t205 < t206.
            t207 = t202+t205(1).
            IF t207 = '-' OR t207 = '+'.
              t208 = xsdbool( t207 = '-' ).
              t205 = t205 + 1.
            ENDIF.
          ENDIF.
          WHILE t205 < t206.
            t207 = t202+t205(1).
            IF t207 CN '0123456789' OR t207 = ` `.
              EXIT.
            ENDIF.
            t211 = t207.
            IF t210 > range_parse_safe_prefix OR ( t210 = range_parse_safe_prefix AND t211 > 1 ).
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t210 = t210 * 10 + t211.
            t209 = abap_true.
            t205 = t205 + 1.
          ENDWHILE.
          IF t209 = abap_false OR ( t208 = abap_true AND t210 = 0 ).
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          IF t208 = abap_true.
            t210 = 0 - t210.
          ENDIF.
          t201 = t210.
          t191 = t201.
        ENDIF.
        t190 = t191.
        DATA t220 TYPE REF TO zcl_lnt_packed_type.
        CLEAR t220.
        DATA(t221) = t165.
        DATA(t222) = t190.
        DATA t223 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t223.
        DATA(t224) = abap_true.
        IF t224 = abap_true.
          DATA(t225) = t2.
          t223 = t225.
        ELSE.
          DATA t226 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t226.
          t223 = t226.
        ENDIF.
        t220 = NEW zcl_lnt_packed_type( i_length = t221 i_decimals_2eed = t222 i_extra = t223 ).
        result = t220.
        RETURN.
      ELSE.
        DATA(t227) = VALUE abap_bool( ).
        DATA(t228) = t32.
        DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t229.
        DATA(t230) = abap_true.
        IF t230 = abap_true.
          DATA(t231) = |D16D|.
          DATA(t232) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t232->has = abap_true.
          t232->value = t231.
          t229 = t232.
        ELSE.
          DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t233.
          t229 = t233.
        ENDIF.
        DATA(t234) = VALUE abap_bool( ).
        DATA(t235) = VALUE abap_bool( ).
        IF t228 IS BOUND.
          t234 = t228->has.
        ENDIF.
        IF t229 IS BOUND.
          t235 = t229->has.
        ENDIF.
        IF t234 = t235.
          IF t234 = abap_false.
            t227 = abap_true.
          ELSEIF t228->value = t229->value.
            t227 = abap_true.
          ENDIF.
        ENDIF.
        IF t227 = abap_true.
          DATA(t236) = VALUE abap_bool( ).
          DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t239) = t1.
          t238 = t239->length.
          t237 = t238.
          DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t241.
          t240 = t241.
          DATA(t242) = VALUE abap_bool( ).
          DATA(t243) = t237.
          IF t243 IS INITIAL.
            t242 = abap_true.
          ELSEIF t243->has = abap_false.
            t242 = abap_true.
          ENDIF.
          t236 = t242.
          IF t236 = abap_true.
            DATA t244 TYPE REF TO zcl_lnt_unknown_type.
            CLEAR t244.
            DATA t245 TYPE string.
            DATA t246 TYPE string.
            DATA t247 TYPE string.
            DATA t248 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t249) = t1.
            t248 = t249->text.
            t247 = t248->value.
            DATA(t250) = | unknown length, |.
            DATA(t251) = strlen( t247 ).
            t246 = |{ t247 }{ t250 }|.
            DATA t252 TYPE string.
            DATA(t253) = t1.
            t252 = t253->info_text.
            DATA(t254) = strlen( t246 ).
            t245 = |{ t246 }{ t252 }|.
            DATA t255 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t255.
            DATA(t256) = abap_true.
            IF t256 = abap_true.
              DATA t257 TYPE string.
              DATA(t258) = t1.
              t257 = t258->info_text.
              DATA(t259) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t259->has = abap_true.
              t259->value = t257.
              t255 = t259.
            ELSE.
              DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t260.
              t255 = t260.
            ENDIF.
            t244 = NEW zcl_lnt_unknown_type( i_error = t245 i_qualified_name = t255 ).
            result = t244.
            RETURN.
          ENDIF.
          DATA(t261) = VALUE f( ).
          DATA(t262) = VALUE f( ).
          DATA(t263) = VALUE f( ).
          DATA(t264) = VALUE f( ).
          DATA(t265) = VALUE f( ).
          DATA t266 TYPE string.
          DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t268) = t1.
          t267 = t268->length.
          t266 = t267->value.
          DATA t269 TYPE i.
          DATA t270 TYPE i.
          DATA(t271) = VALUE string( ).
          DATA t272 TYPE abap_bool.
          DATA t273 TYPE abap_bool.
          DATA t274 TYPE int8.
          DATA(t275) = VALUE i( ).
          t269 = 0.
          t274 = 0.
          t272 = abap_false.
          t273 = abap_false.
          t270 = strlen( t266 ).
          DATA(t276) = VALUE i( ).
          DATA(t277) = VALUE i( ).
          DATA(t278) = VALUE string( ).
          WHILE t269 < t270.
            t277 = t269.
            t278 = t266+t277(1).
            DATA t279 TYPE c LENGTH 1.
            CLEAR t279.
            DATA(t280) = VALUE xstring( ).
            DATA t281 TYPE x LENGTH 1.
            CLEAR t281.
            DATA t282 TYPE x LENGTH 1.
            CLEAR t282.
            DATA(t283) = VALUE i( ).
            t279 = t278.
            t276 = cl_abap_conv_out_ce=>uccpi( t279 ).
            IF t276 >= 255.
              IF zlnt_builtin_code_15236315dde7 IS NOT BOUND.
                zlnt_builtin_code_15236315dde7 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
              ENDIF.
              zlnt_builtin_code_15236315dde7->convert( EXPORTING data = t278 IMPORTING buffer = t280 ).
              t281 = t280(1).
              t282 = t280+1(1).
              t276 = t281.
              t283 = t282.
              t276 = t276 + t283 * 256.
            ENDIF.
            IF t276 = 9 OR t276 = 10 OR t276 = 11 OR t276 = 12 OR t276 = 13 OR t276 = 32 OR t276 = 160 OR t276 = 5760 OR t276 = 8232 OR t276 = 8233 OR t276 = 8239 OR t276 = 8287 OR t276 = 12288 OR t276 = 65279 OR t276 >= 8192 AND t276 <= 8202.
              t269 = t269 + 1.
            ELSE.
              EXIT.
            ENDIF.
          ENDWHILE.
          IF t269 < t270.
            t271 = t266+t269(1).
            IF t271 = '-' OR t271 = '+'.
              t272 = xsdbool( t271 = '-' ).
              t269 = t269 + 1.
            ENDIF.
          ENDIF.
          WHILE t269 < t270.
            t271 = t266+t269(1).
            IF t271 CN '0123456789' OR t271 = ` `.
              EXIT.
            ENDIF.
            t275 = t271.
            IF t274 > range_parse_safe_prefix OR ( t274 = range_parse_safe_prefix AND t275 > 1 ).
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t274 = t274 * 10 + t275.
            t273 = abap_true.
            t269 = t269 + 1.
          ENDWHILE.
          IF t273 = abap_false OR ( t272 = abap_true AND t274 = 0 ).
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          IF t272 = abap_true.
            t274 = 0 - t274.
          ENDIF.
          t265 = t274.
          DATA(t284) = CONV f( 1 ).
          t264 = t265 + t284.
          DATA(t285) = CONV f( 2 ).
          t263 = t264 / t285.
          IF t263 <> t263 OR t263 > range_ceil_finite OR t263 < 0 - range_ceil_finite.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          IF t263 > -1 AND t263 <= 0.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          IF t263 >= range_ceil_integral OR t263 <= 0 - range_ceil_integral.
            t262 = t263.
          ELSE.
            t262 = trunc( t263 ).
            IF t263 > t262.
              t262 = t262 + 1.
            ENDIF.
          ENDIF.
          t261 = t262.
          DATA(t286) = VALUE f( ).
          DATA(t287) = VALUE f( ).
          DATA(t288) = VALUE abap_bool( ).
          DATA t289 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t290 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t291) = t1.
          t290 = t291->decimals_29bf.
          t289 = t290.
          DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t293.
          t292 = t293.
          DATA(t294) = VALUE abap_bool( ).
          DATA(t295) = t289.
          IF t295 IS INITIAL.
            t294 = abap_true.
          ELSEIF t295->has = abap_false.
            t294 = abap_true.
          ENDIF.
          t288 = t294.
          IF t288 = abap_true.
            DATA(t296) = CONV f( 0 ).
            t287 = t296.
          ELSE.
            DATA(t297) = VALUE f( ).
            DATA t298 TYPE string.
            DATA t299 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t300) = t1.
            t299 = t300->decimals_29bf.
            t298 = t299->value.
            DATA t301 TYPE i.
            DATA t302 TYPE i.
            DATA(t303) = VALUE string( ).
            DATA t304 TYPE abap_bool.
            DATA t305 TYPE abap_bool.
            DATA t306 TYPE int8.
            DATA(t307) = VALUE i( ).
            t301 = 0.
            t306 = 0.
            t304 = abap_false.
            t305 = abap_false.
            t302 = strlen( t298 ).
            DATA(t308) = VALUE i( ).
            DATA(t309) = VALUE i( ).
            DATA(t310) = VALUE string( ).
            WHILE t301 < t302.
              t309 = t301.
              t310 = t298+t309(1).
              DATA t311 TYPE c LENGTH 1.
              CLEAR t311.
              DATA(t312) = VALUE xstring( ).
              DATA t313 TYPE x LENGTH 1.
              CLEAR t313.
              DATA t314 TYPE x LENGTH 1.
              CLEAR t314.
              DATA(t315) = VALUE i( ).
              t311 = t310.
              t308 = cl_abap_conv_out_ce=>uccpi( t311 ).
              IF t308 >= 255.
                IF zlnt_builtin_code_15236315dde7 IS NOT BOUND.
                  zlnt_builtin_code_15236315dde7 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                ENDIF.
                zlnt_builtin_code_15236315dde7->convert( EXPORTING data = t310 IMPORTING buffer = t312 ).
                t313 = t312(1).
                t314 = t312+1(1).
                t308 = t313.
                t315 = t314.
                t308 = t308 + t315 * 256.
              ENDIF.
              IF t308 = 9 OR t308 = 10 OR t308 = 11 OR t308 = 12 OR t308 = 13 OR t308 = 32 OR t308 = 160 OR t308 = 5760 OR t308 = 8232 OR t308 = 8233 OR t308 = 8239 OR t308 = 8287 OR t308 = 12288 OR t308 = 65279 OR t308 >= 8192 AND t308 <= 8202.
                t301 = t301 + 1.
              ELSE.
                EXIT.
              ENDIF.
            ENDWHILE.
            IF t301 < t302.
              t303 = t298+t301(1).
              IF t303 = '-' OR t303 = '+'.
                t304 = xsdbool( t303 = '-' ).
                t301 = t301 + 1.
              ENDIF.
            ENDIF.
            WHILE t301 < t302.
              t303 = t298+t301(1).
              IF t303 CN '0123456789' OR t303 = ` `.
                EXIT.
              ENDIF.
              t307 = t303.
              IF t306 > range_parse_safe_prefix OR ( t306 = range_parse_safe_prefix AND t307 > 1 ).
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              t306 = t306 * 10 + t307.
              t305 = abap_true.
              t301 = t301 + 1.
            ENDWHILE.
            IF t305 = abap_false OR ( t304 = abap_true AND t306 = 0 ).
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            IF t304 = abap_true.
              t306 = 0 - t306.
            ENDIF.
            t297 = t306.
            t287 = t297.
          ENDIF.
          t286 = t287.
          DATA t316 TYPE REF TO zcl_lnt_packed_type.
          CLEAR t316.
          DATA(t317) = t261.
          DATA(t318) = t286.
          DATA t319 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t319.
          DATA(t320) = abap_true.
          IF t320 = abap_true.
            DATA(t321) = t2.
            t319 = t321.
          ELSE.
            DATA t322 TYPE REF TO zcl_lnt_abstract_type_data.
            CLEAR t322.
            t319 = t322.
          ENDIF.
          t316 = NEW zcl_lnt_packed_type( i_length = t317 i_decimals_2eed = t318 i_extra = t319 ).
          result = t316.
          RETURN.
        ELSE.
          DATA(t323) = VALUE abap_bool( ).
          DATA(t324) = t32.
          DATA t325 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t325.
          DATA(t326) = abap_true.
          IF t326 = abap_true.
            DATA(t327) = |D34D|.
            DATA(t328) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t328->has = abap_true.
            t328->value = t327.
            t325 = t328.
          ELSE.
            DATA t329 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t329.
            t325 = t329.
          ENDIF.
          DATA(t330) = VALUE abap_bool( ).
          DATA(t331) = VALUE abap_bool( ).
          IF t324 IS BOUND.
            t330 = t324->has.
          ENDIF.
          IF t325 IS BOUND.
            t331 = t325->has.
          ENDIF.
          IF t330 = t331.
            IF t330 = abap_false.
              t323 = abap_true.
            ELSEIF t324->value = t325->value.
              t323 = abap_true.
            ENDIF.
          ENDIF.
          IF t323 = abap_true.
            DATA(t332) = VALUE abap_bool( ).
            DATA t333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t334 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t335) = t1.
            t334 = t335->length.
            t333 = t334.
            DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t337.
            t336 = t337.
            DATA(t338) = VALUE abap_bool( ).
            DATA(t339) = t333.
            IF t339 IS INITIAL.
              t338 = abap_true.
            ELSEIF t339->has = abap_false.
              t338 = abap_true.
            ENDIF.
            t332 = t338.
            IF t332 = abap_true.
              DATA t340 TYPE REF TO zcl_lnt_unknown_type.
              CLEAR t340.
              DATA t341 TYPE string.
              DATA t342 TYPE string.
              DATA t343 TYPE string.
              DATA t344 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t345) = t1.
              t344 = t345->text.
              t343 = t344->value.
              DATA(t346) = | unknown length, |.
              DATA(t347) = strlen( t343 ).
              t342 = |{ t343 }{ t346 }|.
              DATA t348 TYPE string.
              DATA(t349) = t1.
              t348 = t349->info_text.
              DATA(t350) = strlen( t342 ).
              t341 = |{ t342 }{ t348 }|.
              DATA t351 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t351.
              DATA(t352) = abap_true.
              IF t352 = abap_true.
                DATA t353 TYPE string.
                DATA(t354) = t1.
                t353 = t354->info_text.
                DATA(t355) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t355->has = abap_true.
                t355->value = t353.
                t351 = t355.
              ELSE.
                DATA t356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t356.
                t351 = t356.
              ENDIF.
              t340 = NEW zcl_lnt_unknown_type( i_error = t341 i_qualified_name = t351 ).
              result = t340.
              RETURN.
            ENDIF.
            DATA(t357) = VALUE f( ).
            DATA(t358) = VALUE f( ).
            DATA(t359) = VALUE f( ).
            DATA(t360) = VALUE f( ).
            DATA(t361) = VALUE f( ).
            DATA t362 TYPE string.
            DATA t363 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t364) = t1.
            t363 = t364->length.
            t362 = t363->value.
            DATA t365 TYPE i.
            DATA t366 TYPE i.
            DATA(t367) = VALUE string( ).
            DATA t368 TYPE abap_bool.
            DATA t369 TYPE abap_bool.
            DATA t370 TYPE int8.
            DATA(t371) = VALUE i( ).
            t365 = 0.
            t370 = 0.
            t368 = abap_false.
            t369 = abap_false.
            t366 = strlen( t362 ).
            DATA(t372) = VALUE i( ).
            DATA(t373) = VALUE i( ).
            DATA(t374) = VALUE string( ).
            WHILE t365 < t366.
              t373 = t365.
              t374 = t362+t373(1).
              DATA t375 TYPE c LENGTH 1.
              CLEAR t375.
              DATA(t376) = VALUE xstring( ).
              DATA t377 TYPE x LENGTH 1.
              CLEAR t377.
              DATA t378 TYPE x LENGTH 1.
              CLEAR t378.
              DATA(t379) = VALUE i( ).
              t375 = t374.
              t372 = cl_abap_conv_out_ce=>uccpi( t375 ).
              IF t372 >= 255.
                IF zlnt_builtin_code_15236315dde7 IS NOT BOUND.
                  zlnt_builtin_code_15236315dde7 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                ENDIF.
                zlnt_builtin_code_15236315dde7->convert( EXPORTING data = t374 IMPORTING buffer = t376 ).
                t377 = t376(1).
                t378 = t376+1(1).
                t372 = t377.
                t379 = t378.
                t372 = t372 + t379 * 256.
              ENDIF.
              IF t372 = 9 OR t372 = 10 OR t372 = 11 OR t372 = 12 OR t372 = 13 OR t372 = 32 OR t372 = 160 OR t372 = 5760 OR t372 = 8232 OR t372 = 8233 OR t372 = 8239 OR t372 = 8287 OR t372 = 12288 OR t372 = 65279 OR t372 >= 8192 AND t372 <= 8202.
                t365 = t365 + 1.
              ELSE.
                EXIT.
              ENDIF.
            ENDWHILE.
            IF t365 < t366.
              t367 = t362+t365(1).
              IF t367 = '-' OR t367 = '+'.
                t368 = xsdbool( t367 = '-' ).
                t365 = t365 + 1.
              ENDIF.
            ENDIF.
            WHILE t365 < t366.
              t367 = t362+t365(1).
              IF t367 CN '0123456789' OR t367 = ` `.
                EXIT.
              ENDIF.
              t371 = t367.
              IF t370 > range_parse_safe_prefix OR ( t370 = range_parse_safe_prefix AND t371 > 1 ).
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              t370 = t370 * 10 + t371.
              t369 = abap_true.
              t365 = t365 + 1.
            ENDWHILE.
            IF t369 = abap_false OR ( t368 = abap_true AND t370 = 0 ).
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            IF t368 = abap_true.
              t370 = 0 - t370.
            ENDIF.
            t361 = t370.
            DATA(t380) = CONV f( 1 ).
            t360 = t361 + t380.
            DATA(t381) = CONV f( 2 ).
            t359 = t360 / t381.
            IF t359 <> t359 OR t359 > range_ceil_finite OR t359 < 0 - range_ceil_finite.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            IF t359 > -1 AND t359 <= 0.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            IF t359 >= range_ceil_integral OR t359 <= 0 - range_ceil_integral.
              t358 = t359.
            ELSE.
              t358 = trunc( t359 ).
              IF t359 > t358.
                t358 = t358 + 1.
              ENDIF.
            ENDIF.
            t357 = t358.
            DATA(t382) = VALUE f( ).
            DATA(t383) = VALUE f( ).
            DATA(t384) = VALUE abap_bool( ).
            DATA t385 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t386 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t387) = t1.
            t386 = t387->decimals_29bf.
            t385 = t386.
            DATA t388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t389.
            t388 = t389.
            DATA(t390) = VALUE abap_bool( ).
            DATA(t391) = t385.
            IF t391 IS INITIAL.
              t390 = abap_true.
            ELSEIF t391->has = abap_false.
              t390 = abap_true.
            ENDIF.
            t384 = t390.
            IF t384 = abap_true.
              DATA(t392) = CONV f( 0 ).
              t383 = t392.
            ELSE.
              DATA(t393) = VALUE f( ).
              DATA t394 TYPE string.
              DATA t395 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t396) = t1.
              t395 = t396->decimals_29bf.
              t394 = t395->value.
              DATA t397 TYPE i.
              DATA t398 TYPE i.
              DATA(t399) = VALUE string( ).
              DATA t400 TYPE abap_bool.
              DATA t401 TYPE abap_bool.
              DATA t402 TYPE int8.
              DATA(t403) = VALUE i( ).
              t397 = 0.
              t402 = 0.
              t400 = abap_false.
              t401 = abap_false.
              t398 = strlen( t394 ).
              DATA(t404) = VALUE i( ).
              DATA(t405) = VALUE i( ).
              DATA(t406) = VALUE string( ).
              WHILE t397 < t398.
                t405 = t397.
                t406 = t394+t405(1).
                DATA t407 TYPE c LENGTH 1.
                CLEAR t407.
                DATA(t408) = VALUE xstring( ).
                DATA t409 TYPE x LENGTH 1.
                CLEAR t409.
                DATA t410 TYPE x LENGTH 1.
                CLEAR t410.
                DATA(t411) = VALUE i( ).
                t407 = t406.
                t404 = cl_abap_conv_out_ce=>uccpi( t407 ).
                IF t404 >= 255.
                  IF zlnt_builtin_code_15236315dde7 IS NOT BOUND.
                    zlnt_builtin_code_15236315dde7 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                  ENDIF.
                  zlnt_builtin_code_15236315dde7->convert( EXPORTING data = t406 IMPORTING buffer = t408 ).
                  t409 = t408(1).
                  t410 = t408+1(1).
                  t404 = t409.
                  t411 = t410.
                  t404 = t404 + t411 * 256.
                ENDIF.
                IF t404 = 9 OR t404 = 10 OR t404 = 11 OR t404 = 12 OR t404 = 13 OR t404 = 32 OR t404 = 160 OR t404 = 5760 OR t404 = 8232 OR t404 = 8233 OR t404 = 8239 OR t404 = 8287 OR t404 = 12288 OR t404 = 65279 OR t404 >= 8192 AND t404 <= 8202.
                  t397 = t397 + 1.
                ELSE.
                  EXIT.
                ENDIF.
              ENDWHILE.
              IF t397 < t398.
                t399 = t394+t397(1).
                IF t399 = '-' OR t399 = '+'.
                  t400 = xsdbool( t399 = '-' ).
                  t397 = t397 + 1.
                ENDIF.
              ENDIF.
              WHILE t397 < t398.
                t399 = t394+t397(1).
                IF t399 CN '0123456789' OR t399 = ` `.
                  EXIT.
                ENDIF.
                t403 = t399.
                IF t402 > range_parse_safe_prefix OR ( t402 = range_parse_safe_prefix AND t403 > 1 ).
                  RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                ENDIF.
                t402 = t402 * 10 + t403.
                t401 = abap_true.
                t397 = t397 + 1.
              ENDWHILE.
              IF t401 = abap_false OR ( t400 = abap_true AND t402 = 0 ).
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              IF t400 = abap_true.
                t402 = 0 - t402.
              ENDIF.
              t393 = t402.
              t383 = t393.
            ENDIF.
            t382 = t383.
            DATA t412 TYPE REF TO zcl_lnt_packed_type.
            CLEAR t412.
            DATA(t413) = t357.
            DATA(t414) = t382.
            DATA t415 TYPE REF TO zcl_lnt_abstract_type_data.
            CLEAR t415.
            DATA(t416) = abap_true.
            IF t416 = abap_true.
              DATA(t417) = t2.
              t415 = t417.
            ELSE.
              DATA t418 TYPE REF TO zcl_lnt_abstract_type_data.
              CLEAR t418.
              t415 = t418.
            ENDIF.
            t412 = NEW zcl_lnt_packed_type( i_length = t413 i_decimals_2eed = t414 i_extra = t415 ).
            result = t412.
            RETURN.
          ELSE.
            DATA(t419) = VALUE abap_bool( ).
            DATA(t420) = t32.
            DATA t421 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t421.
            DATA(t422) = abap_true.
            IF t422 = abap_true.
              DATA(t423) = |D34F|.
              DATA(t424) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t424->has = abap_true.
              t424->value = t423.
              t421 = t424.
            ELSE.
              DATA t425 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t425.
              t421 = t425.
            ENDIF.
            DATA(t426) = VALUE abap_bool( ).
            DATA(t427) = VALUE abap_bool( ).
            IF t420 IS BOUND.
              t426 = t420->has.
            ENDIF.
            IF t421 IS BOUND.
              t427 = t421->has.
            ENDIF.
            IF t426 = t427.
              IF t426 = abap_false.
                t419 = abap_true.
              ELSEIF t420->value = t421->value.
                t419 = abap_true.
              ENDIF.
            ENDIF.
            IF t419 = abap_true.
              DATA(t428) = VALUE abap_bool( ).
              DATA t429 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t430 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t431) = t1.
              t430 = t431->length.
              t429 = t430.
              DATA t432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t433.
              t432 = t433.
              DATA(t434) = VALUE abap_bool( ).
              DATA(t435) = t429.
              IF t435 IS INITIAL.
                t434 = abap_true.
              ELSEIF t435->has = abap_false.
                t434 = abap_true.
              ENDIF.
              t428 = t434.
              IF t428 = abap_true.
                DATA t436 TYPE REF TO zcl_lnt_unknown_type.
                CLEAR t436.
                DATA t437 TYPE string.
                DATA t438 TYPE string.
                DATA t439 TYPE string.
                DATA t440 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t441) = t1.
                t440 = t441->text.
                t439 = t440->value.
                DATA(t442) = | unknown length, |.
                DATA(t443) = strlen( t439 ).
                t438 = |{ t439 }{ t442 }|.
                DATA t444 TYPE string.
                DATA(t445) = t1.
                t444 = t445->info_text.
                DATA(t446) = strlen( t438 ).
                t437 = |{ t438 }{ t444 }|.
                DATA t447 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t447.
                DATA(t448) = abap_true.
                IF t448 = abap_true.
                  DATA t449 TYPE string.
                  DATA(t450) = t1.
                  t449 = t450->info_text.
                  DATA(t451) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t451->has = abap_true.
                  t451->value = t449.
                  t447 = t451.
                ELSE.
                  DATA t452 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t452.
                  t447 = t452.
                ENDIF.
                t436 = NEW zcl_lnt_unknown_type( i_error = t437 i_qualified_name = t447 ).
                result = t436.
                RETURN.
              ENDIF.
              DATA(t453) = VALUE f( ).
              DATA(t454) = VALUE f( ).
              DATA(t455) = VALUE f( ).
              DATA(t456) = VALUE f( ).
              DATA(t457) = VALUE f( ).
              DATA t458 TYPE string.
              DATA t459 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t460) = t1.
              t459 = t460->length.
              t458 = t459->value.
              DATA t461 TYPE i.
              DATA t462 TYPE i.
              DATA(t463) = VALUE string( ).
              DATA t464 TYPE abap_bool.
              DATA t465 TYPE abap_bool.
              DATA t466 TYPE int8.
              DATA(t467) = VALUE i( ).
              t461 = 0.
              t466 = 0.
              t464 = abap_false.
              t465 = abap_false.
              t462 = strlen( t458 ).
              DATA(t468) = VALUE i( ).
              DATA(t469) = VALUE i( ).
              DATA(t470) = VALUE string( ).
              WHILE t461 < t462.
                t469 = t461.
                t470 = t458+t469(1).
                DATA t471 TYPE c LENGTH 1.
                CLEAR t471.
                DATA(t472) = VALUE xstring( ).
                DATA t473 TYPE x LENGTH 1.
                CLEAR t473.
                DATA t474 TYPE x LENGTH 1.
                CLEAR t474.
                DATA(t475) = VALUE i( ).
                t471 = t470.
                t468 = cl_abap_conv_out_ce=>uccpi( t471 ).
                IF t468 >= 255.
                  IF zlnt_builtin_code_15236315dde7 IS NOT BOUND.
                    zlnt_builtin_code_15236315dde7 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                  ENDIF.
                  zlnt_builtin_code_15236315dde7->convert( EXPORTING data = t470 IMPORTING buffer = t472 ).
                  t473 = t472(1).
                  t474 = t472+1(1).
                  t468 = t473.
                  t475 = t474.
                  t468 = t468 + t475 * 256.
                ENDIF.
                IF t468 = 9 OR t468 = 10 OR t468 = 11 OR t468 = 12 OR t468 = 13 OR t468 = 32 OR t468 = 160 OR t468 = 5760 OR t468 = 8232 OR t468 = 8233 OR t468 = 8239 OR t468 = 8287 OR t468 = 12288 OR t468 = 65279 OR t468 >= 8192 AND t468 <= 8202.
                  t461 = t461 + 1.
                ELSE.
                  EXIT.
                ENDIF.
              ENDWHILE.
              IF t461 < t462.
                t463 = t458+t461(1).
                IF t463 = '-' OR t463 = '+'.
                  t464 = xsdbool( t463 = '-' ).
                  t461 = t461 + 1.
                ENDIF.
              ENDIF.
              WHILE t461 < t462.
                t463 = t458+t461(1).
                IF t463 CN '0123456789' OR t463 = ` `.
                  EXIT.
                ENDIF.
                t467 = t463.
                IF t466 > range_parse_safe_prefix OR ( t466 = range_parse_safe_prefix AND t467 > 1 ).
                  RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                ENDIF.
                t466 = t466 * 10 + t467.
                t465 = abap_true.
                t461 = t461 + 1.
              ENDWHILE.
              IF t465 = abap_false OR ( t464 = abap_true AND t466 = 0 ).
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              IF t464 = abap_true.
                t466 = 0 - t466.
              ENDIF.
              t457 = t466.
              DATA(t476) = CONV f( 1 ).
              t456 = t457 + t476.
              DATA(t477) = CONV f( 2 ).
              t455 = t456 / t477.
              IF t455 <> t455 OR t455 > range_ceil_finite OR t455 < 0 - range_ceil_finite.
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              IF t455 > -1 AND t455 <= 0.
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              IF t455 >= range_ceil_integral OR t455 <= 0 - range_ceil_integral.
                t454 = t455.
              ELSE.
                t454 = trunc( t455 ).
                IF t455 > t454.
                  t454 = t454 + 1.
                ENDIF.
              ENDIF.
              t453 = t454.
              DATA(t478) = VALUE f( ).
              DATA(t479) = VALUE f( ).
              DATA(t480) = VALUE abap_bool( ).
              DATA t481 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t482 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t483) = t1.
              t482 = t483->decimals_29bf.
              t481 = t482.
              DATA t484 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t485 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t485.
              t484 = t485.
              DATA(t486) = VALUE abap_bool( ).
              DATA(t487) = t481.
              IF t487 IS INITIAL.
                t486 = abap_true.
              ELSEIF t487->has = abap_false.
                t486 = abap_true.
              ENDIF.
              t480 = t486.
              IF t480 = abap_true.
                DATA(t488) = CONV f( 0 ).
                t479 = t488.
              ELSE.
                DATA(t489) = VALUE f( ).
                DATA t490 TYPE string.
                DATA t491 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t492) = t1.
                t491 = t492->decimals_29bf.
                t490 = t491->value.
                DATA t493 TYPE i.
                DATA t494 TYPE i.
                DATA(t495) = VALUE string( ).
                DATA t496 TYPE abap_bool.
                DATA t497 TYPE abap_bool.
                DATA t498 TYPE int8.
                DATA(t499) = VALUE i( ).
                t493 = 0.
                t498 = 0.
                t496 = abap_false.
                t497 = abap_false.
                t494 = strlen( t490 ).
                DATA(t500) = VALUE i( ).
                DATA(t501) = VALUE i( ).
                DATA(t502) = VALUE string( ).
                WHILE t493 < t494.
                  t501 = t493.
                  t502 = t490+t501(1).
                  DATA t503 TYPE c LENGTH 1.
                  CLEAR t503.
                  DATA(t504) = VALUE xstring( ).
                  DATA t505 TYPE x LENGTH 1.
                  CLEAR t505.
                  DATA t506 TYPE x LENGTH 1.
                  CLEAR t506.
                  DATA(t507) = VALUE i( ).
                  t503 = t502.
                  t500 = cl_abap_conv_out_ce=>uccpi( t503 ).
                  IF t500 >= 255.
                    IF zlnt_builtin_code_15236315dde7 IS NOT BOUND.
                      zlnt_builtin_code_15236315dde7 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                    ENDIF.
                    zlnt_builtin_code_15236315dde7->convert( EXPORTING data = t502 IMPORTING buffer = t504 ).
                    t505 = t504(1).
                    t506 = t504+1(1).
                    t500 = t505.
                    t507 = t506.
                    t500 = t500 + t507 * 256.
                  ENDIF.
                  IF t500 = 9 OR t500 = 10 OR t500 = 11 OR t500 = 12 OR t500 = 13 OR t500 = 32 OR t500 = 160 OR t500 = 5760 OR t500 = 8232 OR t500 = 8233 OR t500 = 8239 OR t500 = 8287 OR t500 = 12288 OR t500 = 65279 OR t500 >= 8192 AND t500 <= 8202.
                    t493 = t493 + 1.
                  ELSE.
                    EXIT.
                  ENDIF.
                ENDWHILE.
                IF t493 < t494.
                  t495 = t490+t493(1).
                  IF t495 = '-' OR t495 = '+'.
                    t496 = xsdbool( t495 = '-' ).
                    t493 = t493 + 1.
                  ENDIF.
                ENDIF.
                WHILE t493 < t494.
                  t495 = t490+t493(1).
                  IF t495 CN '0123456789' OR t495 = ` `.
                    EXIT.
                  ENDIF.
                  t499 = t495.
                  IF t498 > range_parse_safe_prefix OR ( t498 = range_parse_safe_prefix AND t499 > 1 ).
                    RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                  ENDIF.
                  t498 = t498 * 10 + t499.
                  t497 = abap_true.
                  t493 = t493 + 1.
                ENDWHILE.
                IF t497 = abap_false OR ( t496 = abap_true AND t498 = 0 ).
                  RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                ENDIF.
                IF t496 = abap_true.
                  t498 = 0 - t498.
                ENDIF.
                t489 = t498.
                t479 = t489.
              ENDIF.
              t478 = t479.
              DATA t508 TYPE REF TO zcl_lnt_packed_type.
              CLEAR t508.
              DATA(t509) = t453.
              DATA(t510) = t478.
              DATA t511 TYPE REF TO zcl_lnt_abstract_type_data.
              CLEAR t511.
              DATA(t512) = abap_true.
              IF t512 = abap_true.
                DATA(t513) = t2.
                t511 = t513.
              ELSE.
                DATA t514 TYPE REF TO zcl_lnt_abstract_type_data.
                CLEAR t514.
                t511 = t514.
              ENDIF.
              t508 = NEW zcl_lnt_packed_type( i_length = t509 i_decimals_2eed = t510 i_extra = t511 ).
              result = t508.
              RETURN.
            ELSE.
              DATA(t515) = VALUE abap_bool( ).
              DATA(t516) = t32.
              DATA t517 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t517.
              DATA(t518) = abap_true.
              IF t518 = abap_true.
                DATA(t519) = |DF16_DEC|.
                DATA(t520) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t520->has = abap_true.
                t520->value = t519.
                t517 = t520.
              ELSE.
                DATA t521 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t521.
                t517 = t521.
              ENDIF.
              DATA(t522) = VALUE abap_bool( ).
              DATA(t523) = VALUE abap_bool( ).
              IF t516 IS BOUND.
                t522 = t516->has.
              ENDIF.
              IF t517 IS BOUND.
                t523 = t517->has.
              ENDIF.
              IF t522 = t523.
                IF t522 = abap_false.
                  t515 = abap_true.
                ELSEIF t516->value = t517->value.
                  t515 = abap_true.
                ENDIF.
              ENDIF.
              IF t515 = abap_true.
                DATA(t524) = VALUE abap_bool( ).
                DATA t525 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t526 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t527) = t1.
                t526 = t527->length.
                t525 = t526.
                DATA t528 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA t529 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t529.
                t528 = t529.
                DATA(t530) = VALUE abap_bool( ).
                DATA(t531) = t525.
                IF t531 IS INITIAL.
                  t530 = abap_true.
                ELSEIF t531->has = abap_false.
                  t530 = abap_true.
                ENDIF.
                t524 = t530.
                IF t524 = abap_true.
                  DATA t532 TYPE REF TO zcl_lnt_unknown_type.
                  CLEAR t532.
                  DATA t533 TYPE string.
                  DATA t534 TYPE string.
                  DATA t535 TYPE string.
                  DATA t536 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t537) = t1.
                  t536 = t537->text.
                  t535 = t536->value.
                  DATA(t538) = | unknown length, |.
                  DATA(t539) = strlen( t535 ).
                  t534 = |{ t535 }{ t538 }|.
                  DATA t540 TYPE string.
                  DATA(t541) = t1.
                  t540 = t541->info_text.
                  DATA(t542) = strlen( t534 ).
                  t533 = |{ t534 }{ t540 }|.
                  DATA t543 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t543.
                  DATA(t544) = abap_true.
                  IF t544 = abap_true.
                    DATA t545 TYPE string.
                    DATA(t546) = t1.
                    t545 = t546->info_text.
                    DATA(t547) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t547->has = abap_true.
                    t547->value = t545.
                    t543 = t547.
                  ELSE.
                    DATA t548 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t548.
                    t543 = t548.
                  ENDIF.
                  t532 = NEW zcl_lnt_unknown_type( i_error = t533 i_qualified_name = t543 ).
                  result = t532.
                  RETURN.
                ENDIF.
                DATA(t549) = VALUE f( ).
                DATA(t550) = VALUE f( ).
                DATA(t551) = VALUE f( ).
                DATA(t552) = VALUE f( ).
                DATA(t553) = VALUE f( ).
                DATA t554 TYPE string.
                DATA t555 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t556) = t1.
                t555 = t556->length.
                t554 = t555->value.
                DATA t557 TYPE i.
                DATA t558 TYPE i.
                DATA(t559) = VALUE string( ).
                DATA t560 TYPE abap_bool.
                DATA t561 TYPE abap_bool.
                DATA t562 TYPE int8.
                DATA(t563) = VALUE i( ).
                t557 = 0.
                t562 = 0.
                t560 = abap_false.
                t561 = abap_false.
                t558 = strlen( t554 ).
                DATA(t564) = VALUE i( ).
                DATA(t565) = VALUE i( ).
                DATA(t566) = VALUE string( ).
                WHILE t557 < t558.
                  t565 = t557.
                  t566 = t554+t565(1).
                  DATA t567 TYPE c LENGTH 1.
                  CLEAR t567.
                  DATA(t568) = VALUE xstring( ).
                  DATA t569 TYPE x LENGTH 1.
                  CLEAR t569.
                  DATA t570 TYPE x LENGTH 1.
                  CLEAR t570.
                  DATA(t571) = VALUE i( ).
                  t567 = t566.
                  t564 = cl_abap_conv_out_ce=>uccpi( t567 ).
                  IF t564 >= 255.
                    IF zlnt_builtin_code_15236315dde7 IS NOT BOUND.
                      zlnt_builtin_code_15236315dde7 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                    ENDIF.
                    zlnt_builtin_code_15236315dde7->convert( EXPORTING data = t566 IMPORTING buffer = t568 ).
                    t569 = t568(1).
                    t570 = t568+1(1).
                    t564 = t569.
                    t571 = t570.
                    t564 = t564 + t571 * 256.
                  ENDIF.
                  IF t564 = 9 OR t564 = 10 OR t564 = 11 OR t564 = 12 OR t564 = 13 OR t564 = 32 OR t564 = 160 OR t564 = 5760 OR t564 = 8232 OR t564 = 8233 OR t564 = 8239 OR t564 = 8287 OR t564 = 12288 OR t564 = 65279 OR t564 >= 8192 AND t564 <= 8202.
                    t557 = t557 + 1.
                  ELSE.
                    EXIT.
                  ENDIF.
                ENDWHILE.
                IF t557 < t558.
                  t559 = t554+t557(1).
                  IF t559 = '-' OR t559 = '+'.
                    t560 = xsdbool( t559 = '-' ).
                    t557 = t557 + 1.
                  ENDIF.
                ENDIF.
                WHILE t557 < t558.
                  t559 = t554+t557(1).
                  IF t559 CN '0123456789' OR t559 = ` `.
                    EXIT.
                  ENDIF.
                  t563 = t559.
                  IF t562 > range_parse_safe_prefix OR ( t562 = range_parse_safe_prefix AND t563 > 1 ).
                    RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                  ENDIF.
                  t562 = t562 * 10 + t563.
                  t561 = abap_true.
                  t557 = t557 + 1.
                ENDWHILE.
                IF t561 = abap_false OR ( t560 = abap_true AND t562 = 0 ).
                  RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                ENDIF.
                IF t560 = abap_true.
                  t562 = 0 - t562.
                ENDIF.
                t553 = t562.
                DATA(t572) = CONV f( 1 ).
                t552 = t553 + t572.
                DATA(t573) = CONV f( 2 ).
                t551 = t552 / t573.
                IF t551 <> t551 OR t551 > range_ceil_finite OR t551 < 0 - range_ceil_finite.
                  RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                ENDIF.
                IF t551 > -1 AND t551 <= 0.
                  RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                ENDIF.
                IF t551 >= range_ceil_integral OR t551 <= 0 - range_ceil_integral.
                  t550 = t551.
                ELSE.
                  t550 = trunc( t551 ).
                  IF t551 > t550.
                    t550 = t550 + 1.
                  ENDIF.
                ENDIF.
                t549 = t550.
                DATA(t574) = VALUE f( ).
                DATA(t575) = VALUE f( ).
                DATA(t576) = VALUE abap_bool( ).
                DATA t577 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t578 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t579) = t1.
                t578 = t579->decimals_29bf.
                t577 = t578.
                DATA t580 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA t581 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t581.
                t580 = t581.
                DATA(t582) = VALUE abap_bool( ).
                DATA(t583) = t577.
                IF t583 IS INITIAL.
                  t582 = abap_true.
                ELSEIF t583->has = abap_false.
                  t582 = abap_true.
                ENDIF.
                t576 = t582.
                IF t576 = abap_true.
                  DATA(t584) = CONV f( 0 ).
                  t575 = t584.
                ELSE.
                  DATA(t585) = VALUE f( ).
                  DATA t586 TYPE string.
                  DATA t587 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t588) = t1.
                  t587 = t588->decimals_29bf.
                  t586 = t587->value.
                  DATA t589 TYPE i.
                  DATA t590 TYPE i.
                  DATA(t591) = VALUE string( ).
                  DATA t592 TYPE abap_bool.
                  DATA t593 TYPE abap_bool.
                  DATA t594 TYPE int8.
                  DATA(t595) = VALUE i( ).
                  t589 = 0.
                  t594 = 0.
                  t592 = abap_false.
                  t593 = abap_false.
                  t590 = strlen( t586 ).
                  DATA(t596) = VALUE i( ).
                  DATA(t597) = VALUE i( ).
                  DATA(t598) = VALUE string( ).
                  WHILE t589 < t590.
                    t597 = t589.
                    t598 = t586+t597(1).
                    DATA t599 TYPE c LENGTH 1.
                    CLEAR t599.
                    DATA(t600) = VALUE xstring( ).
                    DATA t601 TYPE x LENGTH 1.
                    CLEAR t601.
                    DATA t602 TYPE x LENGTH 1.
                    CLEAR t602.
                    DATA(t603) = VALUE i( ).
                    t599 = t598.
                    t596 = cl_abap_conv_out_ce=>uccpi( t599 ).
                    IF t596 >= 255.
                      IF zlnt_builtin_code_15236315dde7 IS NOT BOUND.
                        zlnt_builtin_code_15236315dde7 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                      ENDIF.
                      zlnt_builtin_code_15236315dde7->convert( EXPORTING data = t598 IMPORTING buffer = t600 ).
                      t601 = t600(1).
                      t602 = t600+1(1).
                      t596 = t601.
                      t603 = t602.
                      t596 = t596 + t603 * 256.
                    ENDIF.
                    IF t596 = 9 OR t596 = 10 OR t596 = 11 OR t596 = 12 OR t596 = 13 OR t596 = 32 OR t596 = 160 OR t596 = 5760 OR t596 = 8232 OR t596 = 8233 OR t596 = 8239 OR t596 = 8287 OR t596 = 12288 OR t596 = 65279 OR t596 >= 8192 AND t596 <= 8202.
                      t589 = t589 + 1.
                    ELSE.
                      EXIT.
                    ENDIF.
                  ENDWHILE.
                  IF t589 < t590.
                    t591 = t586+t589(1).
                    IF t591 = '-' OR t591 = '+'.
                      t592 = xsdbool( t591 = '-' ).
                      t589 = t589 + 1.
                    ENDIF.
                  ENDIF.
                  WHILE t589 < t590.
                    t591 = t586+t589(1).
                    IF t591 CN '0123456789' OR t591 = ` `.
                      EXIT.
                    ENDIF.
                    t595 = t591.
                    IF t594 > range_parse_safe_prefix OR ( t594 = range_parse_safe_prefix AND t595 > 1 ).
                      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                    ENDIF.
                    t594 = t594 * 10 + t595.
                    t593 = abap_true.
                    t589 = t589 + 1.
                  ENDWHILE.
                  IF t593 = abap_false OR ( t592 = abap_true AND t594 = 0 ).
                    RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                  ENDIF.
                  IF t592 = abap_true.
                    t594 = 0 - t594.
                  ENDIF.
                  t585 = t594.
                  t575 = t585.
                ENDIF.
                t574 = t575.
                DATA t604 TYPE REF TO zcl_lnt_packed_type.
                CLEAR t604.
                DATA(t605) = t549.
                DATA(t606) = t574.
                DATA t607 TYPE REF TO zcl_lnt_abstract_type_data.
                CLEAR t607.
                DATA(t608) = abap_true.
                IF t608 = abap_true.
                  DATA(t609) = t2.
                  t607 = t609.
                ELSE.
                  DATA t610 TYPE REF TO zcl_lnt_abstract_type_data.
                  CLEAR t610.
                  t607 = t610.
                ENDIF.
                t604 = NEW zcl_lnt_packed_type( i_length = t605 i_decimals_2eed = t606 i_extra = t607 ).
                result = t604.
                RETURN.
              ELSE.
                DATA(t611) = VALUE abap_bool( ).
                DATA(t612) = t32.
                DATA t613 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t613.
                DATA(t614) = abap_true.
                IF t614 = abap_true.
                  DATA(t615) = |DF34_DEC|.
                  DATA(t616) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t616->has = abap_true.
                  t616->value = t615.
                  t613 = t616.
                ELSE.
                  DATA t617 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t617.
                  t613 = t617.
                ENDIF.
                DATA(t618) = VALUE abap_bool( ).
                DATA(t619) = VALUE abap_bool( ).
                IF t612 IS BOUND.
                  t618 = t612->has.
                ENDIF.
                IF t613 IS BOUND.
                  t619 = t613->has.
                ENDIF.
                IF t618 = t619.
                  IF t618 = abap_false.
                    t611 = abap_true.
                  ELSEIF t612->value = t613->value.
                    t611 = abap_true.
                  ENDIF.
                ENDIF.
                IF t611 = abap_true.
                  DATA(t620) = VALUE abap_bool( ).
                  DATA t621 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA t622 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t623) = t1.
                  t622 = t623->length.
                  t621 = t622.
                  DATA t624 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  DATA t625 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t625.
                  t624 = t625.
                  DATA(t626) = VALUE abap_bool( ).
                  DATA(t627) = t621.
                  IF t627 IS INITIAL.
                    t626 = abap_true.
                  ELSEIF t627->has = abap_false.
                    t626 = abap_true.
                  ENDIF.
                  t620 = t626.
                  IF t620 = abap_true.
                    DATA t628 TYPE REF TO zcl_lnt_unknown_type.
                    CLEAR t628.
                    DATA t629 TYPE string.
                    DATA t630 TYPE string.
                    DATA t631 TYPE string.
                    DATA t632 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA(t633) = t1.
                    t632 = t633->text.
                    t631 = t632->value.
                    DATA(t634) = | unknown length, |.
                    DATA(t635) = strlen( t631 ).
                    t630 = |{ t631 }{ t634 }|.
                    DATA t636 TYPE string.
                    DATA(t637) = t1.
                    t636 = t637->info_text.
                    DATA(t638) = strlen( t630 ).
                    t629 = |{ t630 }{ t636 }|.
                    DATA t639 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t639.
                    DATA(t640) = abap_true.
                    IF t640 = abap_true.
                      DATA t641 TYPE string.
                      DATA(t642) = t1.
                      t641 = t642->info_text.
                      DATA(t643) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t643->has = abap_true.
                      t643->value = t641.
                      t639 = t643.
                    ELSE.
                      DATA t644 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t644.
                      t639 = t644.
                    ENDIF.
                    t628 = NEW zcl_lnt_unknown_type( i_error = t629 i_qualified_name = t639 ).
                    result = t628.
                    RETURN.
                  ENDIF.
                  DATA(t645) = VALUE f( ).
                  DATA(t646) = VALUE f( ).
                  DATA(t647) = VALUE f( ).
                  DATA(t648) = VALUE f( ).
                  DATA(t649) = VALUE f( ).
                  DATA t650 TYPE string.
                  DATA t651 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t652) = t1.
                  t651 = t652->length.
                  t650 = t651->value.
                  DATA t653 TYPE i.
                  DATA t654 TYPE i.
                  DATA(t655) = VALUE string( ).
                  DATA t656 TYPE abap_bool.
                  DATA t657 TYPE abap_bool.
                  DATA t658 TYPE int8.
                  DATA(t659) = VALUE i( ).
                  t653 = 0.
                  t658 = 0.
                  t656 = abap_false.
                  t657 = abap_false.
                  t654 = strlen( t650 ).
                  DATA(t660) = VALUE i( ).
                  DATA(t661) = VALUE i( ).
                  DATA(t662) = VALUE string( ).
                  WHILE t653 < t654.
                    t661 = t653.
                    t662 = t650+t661(1).
                    DATA t663 TYPE c LENGTH 1.
                    CLEAR t663.
                    DATA(t664) = VALUE xstring( ).
                    DATA t665 TYPE x LENGTH 1.
                    CLEAR t665.
                    DATA t666 TYPE x LENGTH 1.
                    CLEAR t666.
                    DATA(t667) = VALUE i( ).
                    t663 = t662.
                    t660 = cl_abap_conv_out_ce=>uccpi( t663 ).
                    IF t660 >= 255.
                      IF zlnt_builtin_code_15236315dde7 IS NOT BOUND.
                        zlnt_builtin_code_15236315dde7 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                      ENDIF.
                      zlnt_builtin_code_15236315dde7->convert( EXPORTING data = t662 IMPORTING buffer = t664 ).
                      t665 = t664(1).
                      t666 = t664+1(1).
                      t660 = t665.
                      t667 = t666.
                      t660 = t660 + t667 * 256.
                    ENDIF.
                    IF t660 = 9 OR t660 = 10 OR t660 = 11 OR t660 = 12 OR t660 = 13 OR t660 = 32 OR t660 = 160 OR t660 = 5760 OR t660 = 8232 OR t660 = 8233 OR t660 = 8239 OR t660 = 8287 OR t660 = 12288 OR t660 = 65279 OR t660 >= 8192 AND t660 <= 8202.
                      t653 = t653 + 1.
                    ELSE.
                      EXIT.
                    ENDIF.
                  ENDWHILE.
                  IF t653 < t654.
                    t655 = t650+t653(1).
                    IF t655 = '-' OR t655 = '+'.
                      t656 = xsdbool( t655 = '-' ).
                      t653 = t653 + 1.
                    ENDIF.
                  ENDIF.
                  WHILE t653 < t654.
                    t655 = t650+t653(1).
                    IF t655 CN '0123456789' OR t655 = ` `.
                      EXIT.
                    ENDIF.
                    t659 = t655.
                    IF t658 > range_parse_safe_prefix OR ( t658 = range_parse_safe_prefix AND t659 > 1 ).
                      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                    ENDIF.
                    t658 = t658 * 10 + t659.
                    t657 = abap_true.
                    t653 = t653 + 1.
                  ENDWHILE.
                  IF t657 = abap_false OR ( t656 = abap_true AND t658 = 0 ).
                    RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                  ENDIF.
                  IF t656 = abap_true.
                    t658 = 0 - t658.
                  ENDIF.
                  t649 = t658.
                  DATA(t668) = CONV f( 1 ).
                  t648 = t649 + t668.
                  DATA(t669) = CONV f( 2 ).
                  t647 = t648 / t669.
                  IF t647 <> t647 OR t647 > range_ceil_finite OR t647 < 0 - range_ceil_finite.
                    RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                  ENDIF.
                  IF t647 > -1 AND t647 <= 0.
                    RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                  ENDIF.
                  IF t647 >= range_ceil_integral OR t647 <= 0 - range_ceil_integral.
                    t646 = t647.
                  ELSE.
                    t646 = trunc( t647 ).
                    IF t647 > t646.
                      t646 = t646 + 1.
                    ENDIF.
                  ENDIF.
                  t645 = t646.
                  DATA(t670) = VALUE f( ).
                  DATA(t671) = VALUE f( ).
                  DATA(t672) = VALUE abap_bool( ).
                  DATA t673 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA t674 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t675) = t1.
                  t674 = t675->decimals_29bf.
                  t673 = t674.
                  DATA t676 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  DATA t677 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t677.
                  t676 = t677.
                  DATA(t678) = VALUE abap_bool( ).
                  DATA(t679) = t673.
                  IF t679 IS INITIAL.
                    t678 = abap_true.
                  ELSEIF t679->has = abap_false.
                    t678 = abap_true.
                  ENDIF.
                  t672 = t678.
                  IF t672 = abap_true.
                    DATA(t680) = CONV f( 0 ).
                    t671 = t680.
                  ELSE.
                    DATA(t681) = VALUE f( ).
                    DATA t682 TYPE string.
                    DATA t683 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA(t684) = t1.
                    t683 = t684->decimals_29bf.
                    t682 = t683->value.
                    DATA t685 TYPE i.
                    DATA t686 TYPE i.
                    DATA(t687) = VALUE string( ).
                    DATA t688 TYPE abap_bool.
                    DATA t689 TYPE abap_bool.
                    DATA t690 TYPE int8.
                    DATA(t691) = VALUE i( ).
                    t685 = 0.
                    t690 = 0.
                    t688 = abap_false.
                    t689 = abap_false.
                    t686 = strlen( t682 ).
                    DATA(t692) = VALUE i( ).
                    DATA(t693) = VALUE i( ).
                    DATA(t694) = VALUE string( ).
                    WHILE t685 < t686.
                      t693 = t685.
                      t694 = t682+t693(1).
                      DATA t695 TYPE c LENGTH 1.
                      CLEAR t695.
                      DATA(t696) = VALUE xstring( ).
                      DATA t697 TYPE x LENGTH 1.
                      CLEAR t697.
                      DATA t698 TYPE x LENGTH 1.
                      CLEAR t698.
                      DATA(t699) = VALUE i( ).
                      t695 = t694.
                      t692 = cl_abap_conv_out_ce=>uccpi( t695 ).
                      IF t692 >= 255.
                        IF zlnt_builtin_code_15236315dde7 IS NOT BOUND.
                          zlnt_builtin_code_15236315dde7 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                        ENDIF.
                        zlnt_builtin_code_15236315dde7->convert( EXPORTING data = t694 IMPORTING buffer = t696 ).
                        t697 = t696(1).
                        t698 = t696+1(1).
                        t692 = t697.
                        t699 = t698.
                        t692 = t692 + t699 * 256.
                      ENDIF.
                      IF t692 = 9 OR t692 = 10 OR t692 = 11 OR t692 = 12 OR t692 = 13 OR t692 = 32 OR t692 = 160 OR t692 = 5760 OR t692 = 8232 OR t692 = 8233 OR t692 = 8239 OR t692 = 8287 OR t692 = 12288 OR t692 = 65279 OR t692 >= 8192 AND t692 <= 8202.
                        t685 = t685 + 1.
                      ELSE.
                        EXIT.
                      ENDIF.
                    ENDWHILE.
                    IF t685 < t686.
                      t687 = t682+t685(1).
                      IF t687 = '-' OR t687 = '+'.
                        t688 = xsdbool( t687 = '-' ).
                        t685 = t685 + 1.
                      ENDIF.
                    ENDIF.
                    WHILE t685 < t686.
                      t687 = t682+t685(1).
                      IF t687 CN '0123456789' OR t687 = ` `.
                        EXIT.
                      ENDIF.
                      t691 = t687.
                      IF t690 > range_parse_safe_prefix OR ( t690 = range_parse_safe_prefix AND t691 > 1 ).
                        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                      ENDIF.
                      t690 = t690 * 10 + t691.
                      t689 = abap_true.
                      t685 = t685 + 1.
                    ENDWHILE.
                    IF t689 = abap_false OR ( t688 = abap_true AND t690 = 0 ).
                      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                    ENDIF.
                    IF t688 = abap_true.
                      t690 = 0 - t690.
                    ENDIF.
                    t681 = t690.
                    t671 = t681.
                  ENDIF.
                  t670 = t671.
                  DATA t700 TYPE REF TO zcl_lnt_packed_type.
                  CLEAR t700.
                  DATA(t701) = t645.
                  DATA(t702) = t670.
                  DATA t703 TYPE REF TO zcl_lnt_abstract_type_data.
                  CLEAR t703.
                  DATA(t704) = abap_true.
                  IF t704 = abap_true.
                    DATA(t705) = t2.
                    t703 = t705.
                  ELSE.
                    DATA t706 TYPE REF TO zcl_lnt_abstract_type_data.
                    CLEAR t706.
                    t703 = t706.
                  ENDIF.
                  t700 = NEW zcl_lnt_packed_type( i_length = t701 i_decimals_2eed = t702 i_extra = t703 ).
                  result = t700.
                  RETURN.
                ELSE.
                  DATA(t707) = VALUE abap_bool( ).
                  DATA(t708) = t32.
                  DATA t709 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t709.
                  DATA(t710) = abap_true.
                  IF t710 = abap_true.
                    DATA(t711) = |CURR|.
                    DATA(t712) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t712->has = abap_true.
                    t712->value = t711.
                    t709 = t712.
                  ELSE.
                    DATA t713 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t713.
                    t709 = t713.
                  ENDIF.
                  DATA(t714) = VALUE abap_bool( ).
                  DATA(t715) = VALUE abap_bool( ).
                  IF t708 IS BOUND.
                    t714 = t708->has.
                  ENDIF.
                  IF t709 IS BOUND.
                    t715 = t709->has.
                  ENDIF.
                  IF t714 = t715.
                    IF t714 = abap_false.
                      t707 = abap_true.
                    ELSEIF t708->value = t709->value.
                      t707 = abap_true.
                    ENDIF.
                  ENDIF.
                  IF t707 = abap_true.
                    DATA(t716) = VALUE abap_bool( ).
                    DATA t717 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t718 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA(t719) = t1.
                    t718 = t719->length.
                    t717 = t718.
                    DATA t720 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    DATA t721 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t721.
                    t720 = t721.
                    DATA(t722) = VALUE abap_bool( ).
                    DATA(t723) = t717.
                    IF t723 IS INITIAL.
                      t722 = abap_true.
                    ELSEIF t723->has = abap_false.
                      t722 = abap_true.
                    ENDIF.
                    t716 = t722.
                    IF t716 = abap_true.
                      DATA t724 TYPE REF TO zcl_lnt_unknown_type.
                      CLEAR t724.
                      DATA t725 TYPE string.
                      DATA t726 TYPE string.
                      DATA t727 TYPE string.
                      DATA t728 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA(t729) = t1.
                      t728 = t729->text.
                      t727 = t728->value.
                      DATA(t730) = | unknown length, |.
                      DATA(t731) = strlen( t727 ).
                      t726 = |{ t727 }{ t730 }|.
                      DATA t732 TYPE string.
                      DATA(t733) = t1.
                      t732 = t733->info_text.
                      DATA(t734) = strlen( t726 ).
                      t725 = |{ t726 }{ t732 }|.
                      DATA t735 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t735.
                      DATA(t736) = abap_true.
                      IF t736 = abap_true.
                        DATA t737 TYPE string.
                        DATA(t738) = t1.
                        t737 = t738->info_text.
                        DATA(t739) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t739->has = abap_true.
                        t739->value = t737.
                        t735 = t739.
                      ELSE.
                        DATA t740 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t740.
                        t735 = t740.
                      ENDIF.
                      t724 = NEW zcl_lnt_unknown_type( i_error = t725 i_qualified_name = t735 ).
                      result = t724.
                      RETURN.
                    ENDIF.
                    DATA(t741) = VALUE f( ).
                    DATA(t742) = VALUE f( ).
                    DATA(t743) = VALUE f( ).
                    DATA(t744) = VALUE f( ).
                    DATA(t745) = VALUE f( ).
                    DATA t746 TYPE string.
                    DATA t747 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA(t748) = t1.
                    t747 = t748->length.
                    t746 = t747->value.
                    DATA t749 TYPE i.
                    DATA t750 TYPE i.
                    DATA(t751) = VALUE string( ).
                    DATA t752 TYPE abap_bool.
                    DATA t753 TYPE abap_bool.
                    DATA t754 TYPE int8.
                    DATA(t755) = VALUE i( ).
                    t749 = 0.
                    t754 = 0.
                    t752 = abap_false.
                    t753 = abap_false.
                    t750 = strlen( t746 ).
                    DATA(t756) = VALUE i( ).
                    DATA(t757) = VALUE i( ).
                    DATA(t758) = VALUE string( ).
                    WHILE t749 < t750.
                      t757 = t749.
                      t758 = t746+t757(1).
                      DATA t759 TYPE c LENGTH 1.
                      CLEAR t759.
                      DATA(t760) = VALUE xstring( ).
                      DATA t761 TYPE x LENGTH 1.
                      CLEAR t761.
                      DATA t762 TYPE x LENGTH 1.
                      CLEAR t762.
                      DATA(t763) = VALUE i( ).
                      t759 = t758.
                      t756 = cl_abap_conv_out_ce=>uccpi( t759 ).
                      IF t756 >= 255.
                        IF zlnt_builtin_code_15236315dde7 IS NOT BOUND.
                          zlnt_builtin_code_15236315dde7 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                        ENDIF.
                        zlnt_builtin_code_15236315dde7->convert( EXPORTING data = t758 IMPORTING buffer = t760 ).
                        t761 = t760(1).
                        t762 = t760+1(1).
                        t756 = t761.
                        t763 = t762.
                        t756 = t756 + t763 * 256.
                      ENDIF.
                      IF t756 = 9 OR t756 = 10 OR t756 = 11 OR t756 = 12 OR t756 = 13 OR t756 = 32 OR t756 = 160 OR t756 = 5760 OR t756 = 8232 OR t756 = 8233 OR t756 = 8239 OR t756 = 8287 OR t756 = 12288 OR t756 = 65279 OR t756 >= 8192 AND t756 <= 8202.
                        t749 = t749 + 1.
                      ELSE.
                        EXIT.
                      ENDIF.
                    ENDWHILE.
                    IF t749 < t750.
                      t751 = t746+t749(1).
                      IF t751 = '-' OR t751 = '+'.
                        t752 = xsdbool( t751 = '-' ).
                        t749 = t749 + 1.
                      ENDIF.
                    ENDIF.
                    WHILE t749 < t750.
                      t751 = t746+t749(1).
                      IF t751 CN '0123456789' OR t751 = ` `.
                        EXIT.
                      ENDIF.
                      t755 = t751.
                      IF t754 > range_parse_safe_prefix OR ( t754 = range_parse_safe_prefix AND t755 > 1 ).
                        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                      ENDIF.
                      t754 = t754 * 10 + t755.
                      t753 = abap_true.
                      t749 = t749 + 1.
                    ENDWHILE.
                    IF t753 = abap_false OR ( t752 = abap_true AND t754 = 0 ).
                      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                    ENDIF.
                    IF t752 = abap_true.
                      t754 = 0 - t754.
                    ENDIF.
                    t745 = t754.
                    DATA(t764) = CONV f( 1 ).
                    t744 = t745 + t764.
                    DATA(t765) = CONV f( 2 ).
                    t743 = t744 / t765.
                    IF t743 <> t743 OR t743 > range_ceil_finite OR t743 < 0 - range_ceil_finite.
                      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                    ENDIF.
                    IF t743 > -1 AND t743 <= 0.
                      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                    ENDIF.
                    IF t743 >= range_ceil_integral OR t743 <= 0 - range_ceil_integral.
                      t742 = t743.
                    ELSE.
                      t742 = trunc( t743 ).
                      IF t743 > t742.
                        t742 = t742 + 1.
                      ENDIF.
                    ENDIF.
                    t741 = t742.
                    DATA(t766) = VALUE f( ).
                    DATA(t767) = VALUE f( ).
                    DATA(t768) = VALUE abap_bool( ).
                    DATA t769 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t770 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA(t771) = t1.
                    t770 = t771->decimals_29bf.
                    t769 = t770.
                    DATA t772 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    DATA t773 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t773.
                    t772 = t773.
                    DATA(t774) = VALUE abap_bool( ).
                    DATA(t775) = t769.
                    IF t775 IS INITIAL.
                      t774 = abap_true.
                    ELSEIF t775->has = abap_false.
                      t774 = abap_true.
                    ENDIF.
                    t768 = t774.
                    IF t768 = abap_true.
                      DATA(t776) = CONV f( 0 ).
                      t767 = t776.
                    ELSE.
                      DATA(t777) = VALUE f( ).
                      DATA t778 TYPE string.
                      DATA t779 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA(t780) = t1.
                      t779 = t780->decimals_29bf.
                      t778 = t779->value.
                      DATA t781 TYPE i.
                      DATA t782 TYPE i.
                      DATA(t783) = VALUE string( ).
                      DATA t784 TYPE abap_bool.
                      DATA t785 TYPE abap_bool.
                      DATA t786 TYPE int8.
                      DATA(t787) = VALUE i( ).
                      t781 = 0.
                      t786 = 0.
                      t784 = abap_false.
                      t785 = abap_false.
                      t782 = strlen( t778 ).
                      DATA(t788) = VALUE i( ).
                      DATA(t789) = VALUE i( ).
                      DATA(t790) = VALUE string( ).
                      WHILE t781 < t782.
                        t789 = t781.
                        t790 = t778+t789(1).
                        DATA t791 TYPE c LENGTH 1.
                        CLEAR t791.
                        DATA(t792) = VALUE xstring( ).
                        DATA t793 TYPE x LENGTH 1.
                        CLEAR t793.
                        DATA t794 TYPE x LENGTH 1.
                        CLEAR t794.
                        DATA(t795) = VALUE i( ).
                        t791 = t790.
                        t788 = cl_abap_conv_out_ce=>uccpi( t791 ).
                        IF t788 >= 255.
                          IF zlnt_builtin_code_15236315dde7 IS NOT BOUND.
                            zlnt_builtin_code_15236315dde7 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                          ENDIF.
                          zlnt_builtin_code_15236315dde7->convert( EXPORTING data = t790 IMPORTING buffer = t792 ).
                          t793 = t792(1).
                          t794 = t792+1(1).
                          t788 = t793.
                          t795 = t794.
                          t788 = t788 + t795 * 256.
                        ENDIF.
                        IF t788 = 9 OR t788 = 10 OR t788 = 11 OR t788 = 12 OR t788 = 13 OR t788 = 32 OR t788 = 160 OR t788 = 5760 OR t788 = 8232 OR t788 = 8233 OR t788 = 8239 OR t788 = 8287 OR t788 = 12288 OR t788 = 65279 OR t788 >= 8192 AND t788 <= 8202.
                          t781 = t781 + 1.
                        ELSE.
                          EXIT.
                        ENDIF.
                      ENDWHILE.
                      IF t781 < t782.
                        t783 = t778+t781(1).
                        IF t783 = '-' OR t783 = '+'.
                          t784 = xsdbool( t783 = '-' ).
                          t781 = t781 + 1.
                        ENDIF.
                      ENDIF.
                      WHILE t781 < t782.
                        t783 = t778+t781(1).
                        IF t783 CN '0123456789' OR t783 = ` `.
                          EXIT.
                        ENDIF.
                        t787 = t783.
                        IF t786 > range_parse_safe_prefix OR ( t786 = range_parse_safe_prefix AND t787 > 1 ).
                          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                        ENDIF.
                        t786 = t786 * 10 + t787.
                        t785 = abap_true.
                        t781 = t781 + 1.
                      ENDWHILE.
                      IF t785 = abap_false OR ( t784 = abap_true AND t786 = 0 ).
                        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                      ENDIF.
                      IF t784 = abap_true.
                        t786 = 0 - t786.
                      ENDIF.
                      t777 = t786.
                      t767 = t777.
                    ENDIF.
                    t766 = t767.
                    DATA t796 TYPE REF TO zcl_lnt_packed_type.
                    CLEAR t796.
                    DATA(t797) = t741.
                    DATA(t798) = t766.
                    DATA t799 TYPE REF TO zcl_lnt_abstract_type_data.
                    CLEAR t799.
                    DATA(t800) = abap_true.
                    IF t800 = abap_true.
                      DATA(t801) = t2.
                      t799 = t801.
                    ELSE.
                      DATA t802 TYPE REF TO zcl_lnt_abstract_type_data.
                      CLEAR t802.
                      t799 = t802.
                    ENDIF.
                    t796 = NEW zcl_lnt_packed_type( i_length = t797 i_decimals_2eed = t798 i_extra = t799 ).
                    result = t796.
                    RETURN.
                  ELSE.
                    DATA(t803) = VALUE abap_bool( ).
                    DATA(t804) = t32.
                    DATA t805 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t805.
                    DATA(t806) = abap_true.
                    IF t806 = abap_true.
                      DATA(t807) = |QUAN|.
                      DATA(t808) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t808->has = abap_true.
                      t808->value = t807.
                      t805 = t808.
                    ELSE.
                      DATA t809 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t809.
                      t805 = t809.
                    ENDIF.
                    DATA(t810) = VALUE abap_bool( ).
                    DATA(t811) = VALUE abap_bool( ).
                    IF t804 IS BOUND.
                      t810 = t804->has.
                    ENDIF.
                    IF t805 IS BOUND.
                      t811 = t805->has.
                    ENDIF.
                    IF t810 = t811.
                      IF t810 = abap_false.
                        t803 = abap_true.
                      ELSEIF t804->value = t805->value.
                        t803 = abap_true.
                      ENDIF.
                    ENDIF.
                    IF t803 = abap_true.
                      DATA(t812) = VALUE abap_bool( ).
                      DATA t813 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA t814 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA(t815) = t1.
                      t814 = t815->length.
                      t813 = t814.
                      DATA t816 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      DATA t817 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t817.
                      t816 = t817.
                      DATA(t818) = VALUE abap_bool( ).
                      DATA(t819) = t813.
                      IF t819 IS INITIAL.
                        t818 = abap_true.
                      ELSEIF t819->has = abap_false.
                        t818 = abap_true.
                      ENDIF.
                      t812 = t818.
                      IF t812 = abap_true.
                        DATA t820 TYPE REF TO zcl_lnt_unknown_type.
                        CLEAR t820.
                        DATA t821 TYPE string.
                        DATA t822 TYPE string.
                        DATA t823 TYPE string.
                        DATA t824 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        DATA(t825) = t1.
                        t824 = t825->text.
                        t823 = t824->value.
                        DATA(t826) = | unknown length, |.
                        DATA(t827) = strlen( t823 ).
                        t822 = |{ t823 }{ t826 }|.
                        DATA t828 TYPE string.
                        DATA(t829) = t1.
                        t828 = t829->info_text.
                        DATA(t830) = strlen( t822 ).
                        t821 = |{ t822 }{ t828 }|.
                        DATA t831 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t831.
                        DATA(t832) = abap_true.
                        IF t832 = abap_true.
                          DATA t833 TYPE string.
                          DATA(t834) = t1.
                          t833 = t834->info_text.
                          DATA(t835) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t835->has = abap_true.
                          t835->value = t833.
                          t831 = t835.
                        ELSE.
                          DATA t836 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t836.
                          t831 = t836.
                        ENDIF.
                        t820 = NEW zcl_lnt_unknown_type( i_error = t821 i_qualified_name = t831 ).
                        result = t820.
                        RETURN.
                      ENDIF.
                      DATA(t837) = VALUE f( ).
                      DATA(t838) = VALUE f( ).
                      DATA(t839) = VALUE f( ).
                      DATA(t840) = VALUE f( ).
                      DATA(t841) = VALUE f( ).
                      DATA t842 TYPE string.
                      DATA t843 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA(t844) = t1.
                      t843 = t844->length.
                      t842 = t843->value.
                      DATA t845 TYPE i.
                      DATA t846 TYPE i.
                      DATA(t847) = VALUE string( ).
                      DATA t848 TYPE abap_bool.
                      DATA t849 TYPE abap_bool.
                      DATA t850 TYPE int8.
                      DATA(t851) = VALUE i( ).
                      t845 = 0.
                      t850 = 0.
                      t848 = abap_false.
                      t849 = abap_false.
                      t846 = strlen( t842 ).
                      DATA(t852) = VALUE i( ).
                      DATA(t853) = VALUE i( ).
                      DATA(t854) = VALUE string( ).
                      WHILE t845 < t846.
                        t853 = t845.
                        t854 = t842+t853(1).
                        DATA t855 TYPE c LENGTH 1.
                        CLEAR t855.
                        DATA(t856) = VALUE xstring( ).
                        DATA t857 TYPE x LENGTH 1.
                        CLEAR t857.
                        DATA t858 TYPE x LENGTH 1.
                        CLEAR t858.
                        DATA(t859) = VALUE i( ).
                        t855 = t854.
                        t852 = cl_abap_conv_out_ce=>uccpi( t855 ).
                        IF t852 >= 255.
                          IF zlnt_builtin_code_15236315dde7 IS NOT BOUND.
                            zlnt_builtin_code_15236315dde7 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                          ENDIF.
                          zlnt_builtin_code_15236315dde7->convert( EXPORTING data = t854 IMPORTING buffer = t856 ).
                          t857 = t856(1).
                          t858 = t856+1(1).
                          t852 = t857.
                          t859 = t858.
                          t852 = t852 + t859 * 256.
                        ENDIF.
                        IF t852 = 9 OR t852 = 10 OR t852 = 11 OR t852 = 12 OR t852 = 13 OR t852 = 32 OR t852 = 160 OR t852 = 5760 OR t852 = 8232 OR t852 = 8233 OR t852 = 8239 OR t852 = 8287 OR t852 = 12288 OR t852 = 65279 OR t852 >= 8192 AND t852 <= 8202.
                          t845 = t845 + 1.
                        ELSE.
                          EXIT.
                        ENDIF.
                      ENDWHILE.
                      IF t845 < t846.
                        t847 = t842+t845(1).
                        IF t847 = '-' OR t847 = '+'.
                          t848 = xsdbool( t847 = '-' ).
                          t845 = t845 + 1.
                        ENDIF.
                      ENDIF.
                      WHILE t845 < t846.
                        t847 = t842+t845(1).
                        IF t847 CN '0123456789' OR t847 = ` `.
                          EXIT.
                        ENDIF.
                        t851 = t847.
                        IF t850 > range_parse_safe_prefix OR ( t850 = range_parse_safe_prefix AND t851 > 1 ).
                          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                        ENDIF.
                        t850 = t850 * 10 + t851.
                        t849 = abap_true.
                        t845 = t845 + 1.
                      ENDWHILE.
                      IF t849 = abap_false OR ( t848 = abap_true AND t850 = 0 ).
                        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                      ENDIF.
                      IF t848 = abap_true.
                        t850 = 0 - t850.
                      ENDIF.
                      t841 = t850.
                      DATA(t860) = CONV f( 1 ).
                      t840 = t841 + t860.
                      DATA(t861) = CONV f( 2 ).
                      t839 = t840 / t861.
                      IF t839 <> t839 OR t839 > range_ceil_finite OR t839 < 0 - range_ceil_finite.
                        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                      ENDIF.
                      IF t839 > -1 AND t839 <= 0.
                        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                      ENDIF.
                      IF t839 >= range_ceil_integral OR t839 <= 0 - range_ceil_integral.
                        t838 = t839.
                      ELSE.
                        t838 = trunc( t839 ).
                        IF t839 > t838.
                          t838 = t838 + 1.
                        ENDIF.
                      ENDIF.
                      t837 = t838.
                      DATA(t862) = VALUE f( ).
                      DATA(t863) = VALUE f( ).
                      DATA(t864) = VALUE abap_bool( ).
                      DATA t865 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA t866 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA(t867) = t1.
                      t866 = t867->decimals_29bf.
                      t865 = t866.
                      DATA t868 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      DATA t869 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t869.
                      t868 = t869.
                      DATA(t870) = VALUE abap_bool( ).
                      DATA(t871) = t865.
                      IF t871 IS INITIAL.
                        t870 = abap_true.
                      ELSEIF t871->has = abap_false.
                        t870 = abap_true.
                      ENDIF.
                      t864 = t870.
                      IF t864 = abap_true.
                        DATA(t872) = CONV f( 0 ).
                        t863 = t872.
                      ELSE.
                        DATA(t873) = VALUE f( ).
                        DATA t874 TYPE string.
                        DATA t875 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        DATA(t876) = t1.
                        t875 = t876->decimals_29bf.
                        t874 = t875->value.
                        DATA t877 TYPE i.
                        DATA t878 TYPE i.
                        DATA(t879) = VALUE string( ).
                        DATA t880 TYPE abap_bool.
                        DATA t881 TYPE abap_bool.
                        DATA t882 TYPE int8.
                        DATA(t883) = VALUE i( ).
                        t877 = 0.
                        t882 = 0.
                        t880 = abap_false.
                        t881 = abap_false.
                        t878 = strlen( t874 ).
                        DATA(t884) = VALUE i( ).
                        DATA(t885) = VALUE i( ).
                        DATA(t886) = VALUE string( ).
                        WHILE t877 < t878.
                          t885 = t877.
                          t886 = t874+t885(1).
                          DATA t887 TYPE c LENGTH 1.
                          CLEAR t887.
                          DATA(t888) = VALUE xstring( ).
                          DATA t889 TYPE x LENGTH 1.
                          CLEAR t889.
                          DATA t890 TYPE x LENGTH 1.
                          CLEAR t890.
                          DATA(t891) = VALUE i( ).
                          t887 = t886.
                          t884 = cl_abap_conv_out_ce=>uccpi( t887 ).
                          IF t884 >= 255.
                            IF zlnt_builtin_code_15236315dde7 IS NOT BOUND.
                              zlnt_builtin_code_15236315dde7 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                            ENDIF.
                            zlnt_builtin_code_15236315dde7->convert( EXPORTING data = t886 IMPORTING buffer = t888 ).
                            t889 = t888(1).
                            t890 = t888+1(1).
                            t884 = t889.
                            t891 = t890.
                            t884 = t884 + t891 * 256.
                          ENDIF.
                          IF t884 = 9 OR t884 = 10 OR t884 = 11 OR t884 = 12 OR t884 = 13 OR t884 = 32 OR t884 = 160 OR t884 = 5760 OR t884 = 8232 OR t884 = 8233 OR t884 = 8239 OR t884 = 8287 OR t884 = 12288 OR t884 = 65279 OR t884 >= 8192
                          AND t884 <= 8202.
                            t877 = t877 + 1.
                          ELSE.
                            EXIT.
                          ENDIF.
                        ENDWHILE.
                        IF t877 < t878.
                          t879 = t874+t877(1).
                          IF t879 = '-' OR t879 = '+'.
                            t880 = xsdbool( t879 = '-' ).
                            t877 = t877 + 1.
                          ENDIF.
                        ENDIF.
                        WHILE t877 < t878.
                          t879 = t874+t877(1).
                          IF t879 CN '0123456789' OR t879 = ` `.
                            EXIT.
                          ENDIF.
                          t883 = t879.
                          IF t882 > range_parse_safe_prefix OR ( t882 = range_parse_safe_prefix AND t883 > 1 ).
                            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                          ENDIF.
                          t882 = t882 * 10 + t883.
                          t881 = abap_true.
                          t877 = t877 + 1.
                        ENDWHILE.
                        IF t881 = abap_false OR ( t880 = abap_true AND t882 = 0 ).
                          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                        ENDIF.
                        IF t880 = abap_true.
                          t882 = 0 - t882.
                        ENDIF.
                        t873 = t882.
                        t863 = t873.
                      ENDIF.
                      t862 = t863.
                      DATA t892 TYPE REF TO zcl_lnt_packed_type.
                      CLEAR t892.
                      DATA(t893) = t837.
                      DATA(t894) = t862.
                      DATA t895 TYPE REF TO zcl_lnt_abstract_type_data.
                      CLEAR t895.
                      DATA(t896) = abap_true.
                      IF t896 = abap_true.
                        DATA(t897) = t2.
                        t895 = t897.
                      ELSE.
                        DATA t898 TYPE REF TO zcl_lnt_abstract_type_data.
                        CLEAR t898.
                        t895 = t898.
                      ENDIF.
                      t892 = NEW zcl_lnt_packed_type( i_length = t893 i_decimals_2eed = t894 i_extra = t895 ).
                      result = t892.
                      RETURN.
                    ELSE.
                      DATA(t899) = VALUE abap_bool( ).
                      DATA(t900) = t32.
                      DATA t901 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t901.
                      DATA(t902) = abap_true.
                      IF t902 = abap_true.
                        DATA(t903) = |ACCP|.
                        DATA(t904) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t904->has = abap_true.
                        t904->value = t903.
                        t901 = t904.
                      ELSE.
                        DATA t905 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t905.
                        t901 = t905.
                      ENDIF.
                      DATA(t906) = VALUE abap_bool( ).
                      DATA(t907) = VALUE abap_bool( ).
                      IF t900 IS BOUND.
                        t906 = t900->has.
                      ENDIF.
                      IF t901 IS BOUND.
                        t907 = t901->has.
                      ENDIF.
                      IF t906 = t907.
                        IF t906 = abap_false.
                          t899 = abap_true.
                        ELSEIF t900->value = t901->value.
                          t899 = abap_true.
                        ENDIF.
                      ENDIF.
                      IF t899 = abap_true.
                        DATA t908 TYPE REF TO zcl_lnt_character_type.
                        CLEAR t908.
                        DATA(t909) = CONV f( 6 ).
                        DATA t910 TYPE REF TO zcl_lnt_abstract_type_data.
                        CLEAR t910.
                        DATA(t911) = abap_true.
                        IF t911 = abap_true.
                          DATA(t912) = t2.
                          t910 = t912.
                        ELSE.
                          DATA t913 TYPE REF TO zcl_lnt_abstract_type_data.
                          CLEAR t913.
                          t910 = t913.
                        ENDIF.
                        t908 = NEW zcl_lnt_character_type( i_length = t909 i_extra = t910 ).
                        result = t908.
                        RETURN.
                      ELSE.
                        DATA(t914) = VALUE abap_bool( ).
                        DATA(t915) = t32.
                        DATA t916 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t916.
                        DATA(t917) = abap_true.
                        IF t917 = abap_true.
                          DATA(t918) = |LANG|.
                          DATA(t919) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t919->has = abap_true.
                          t919->value = t918.
                          t916 = t919.
                        ELSE.
                          DATA t920 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t920.
                          t916 = t920.
                        ENDIF.
                        DATA(t921) = VALUE abap_bool( ).
                        DATA(t922) = VALUE abap_bool( ).
                        IF t915 IS BOUND.
                          t921 = t915->has.
                        ENDIF.
                        IF t916 IS BOUND.
                          t922 = t916->has.
                        ENDIF.
                        IF t921 = t922.
                          IF t921 = abap_false.
                            t914 = abap_true.
                          ELSEIF t915->value = t916->value.
                            t914 = abap_true.
                          ENDIF.
                        ENDIF.
                        IF t914 = abap_true.
                          DATA t923 TYPE REF TO zcl_lnt_character_type.
                          CLEAR t923.
                          DATA(t924) = CONV f( 1 ).
                          DATA t925 TYPE REF TO zcl_lnt_abstract_type_data.
                          CLEAR t925.
                          DATA(t926) = abap_true.
                          IF t926 = abap_true.
                            DATA(t927) = t2.
                            t925 = t927.
                          ELSE.
                            DATA t928 TYPE REF TO zcl_lnt_abstract_type_data.
                            CLEAR t928.
                            t925 = t928.
                          ENDIF.
                          t923 = NEW zcl_lnt_character_type( i_length = t924 i_extra = t925 ).
                          result = t923.
                          RETURN.
                        ELSE.
                          DATA(t929) = VALUE abap_bool( ).
                          DATA(t930) = t32.
                          DATA t931 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t931.
                          DATA(t932) = abap_true.
                          IF t932 = abap_true.
                            DATA(t933) = |CLNT|.
                            DATA(t934) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                            t934->has = abap_true.
                            t934->value = t933.
                            t931 = t934.
                          ELSE.
                            DATA t935 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t935.
                            t931 = t935.
                          ENDIF.
                          DATA(t936) = VALUE abap_bool( ).
                          DATA(t937) = VALUE abap_bool( ).
                          IF t930 IS BOUND.
                            t936 = t930->has.
                          ENDIF.
                          IF t931 IS BOUND.
                            t937 = t931->has.
                          ENDIF.
                          IF t936 = t937.
                            IF t936 = abap_false.
                              t929 = abap_true.
                            ELSEIF t930->value = t931->value.
                              t929 = abap_true.
                            ENDIF.
                          ENDIF.
                          IF t929 = abap_true.
                            DATA t938 TYPE REF TO zcl_lnt_character_type.
                            CLEAR t938.
                            DATA(t939) = CONV f( 3 ).
                            DATA t940 TYPE REF TO zcl_lnt_abstract_type_data.
                            CLEAR t940.
                            DATA(t941) = abap_true.
                            IF t941 = abap_true.
                              DATA(t942) = t2.
                              t940 = t942.
                            ELSE.
                              DATA t943 TYPE REF TO zcl_lnt_abstract_type_data.
                              CLEAR t943.
                              t940 = t943.
                            ENDIF.
                            t938 = NEW zcl_lnt_character_type( i_length = t939 i_extra = t940 ).
                            result = t938.
                            RETURN.
                          ELSE.
                            DATA(t944) = VALUE abap_bool( ).
                            DATA(t945) = t32.
                            DATA t946 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t946.
                            DATA(t947) = abap_true.
                            IF t947 = abap_true.
                              DATA(t948) = |CUKY|.
                              DATA(t949) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                              t949->has = abap_true.
                              t949->value = t948.
                              t946 = t949.
                            ELSE.
                              DATA t950 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t950.
                              t946 = t950.
                            ENDIF.
                            DATA(t951) = VALUE abap_bool( ).
                            DATA(t952) = VALUE abap_bool( ).
                            IF t945 IS BOUND.
                              t951 = t945->has.
                            ENDIF.
                            IF t946 IS BOUND.
                              t952 = t946->has.
                            ENDIF.
                            IF t951 = t952.
                              IF t951 = abap_false.
                                t944 = abap_true.
                              ELSEIF t945->value = t946->value.
                                t944 = abap_true.
                              ENDIF.
                            ENDIF.
                            IF t944 = abap_true.
                              DATA t953 TYPE REF TO zcl_lnt_character_type.
                              CLEAR t953.
                              DATA(t954) = CONV f( 5 ).
                              DATA t955 TYPE REF TO zcl_lnt_abstract_type_data.
                              CLEAR t955.
                              DATA(t956) = abap_true.
                              IF t956 = abap_true.
                                DATA(t957) = t2.
                                t955 = t957.
                              ELSE.
                                DATA t958 TYPE REF TO zcl_lnt_abstract_type_data.
                                CLEAR t958.
                                t955 = t958.
                              ENDIF.
                              t953 = NEW zcl_lnt_character_type( i_length = t954 i_extra = t955 ).
                              result = t953.
                              RETURN.
                            ELSE.
                              DATA(t959) = VALUE abap_bool( ).
                              DATA(t960) = t32.
                              DATA t961 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t961.
                              DATA(t962) = abap_true.
                              IF t962 = abap_true.
                                DATA(t963) = |UNIT|.
                                DATA(t964) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                t964->has = abap_true.
                                t964->value = t963.
                                t961 = t964.
                              ELSE.
                                DATA t965 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                CLEAR t965.
                                t961 = t965.
                              ENDIF.
                              DATA(t966) = VALUE abap_bool( ).
                              DATA(t967) = VALUE abap_bool( ).
                              IF t960 IS BOUND.
                                t966 = t960->has.
                              ENDIF.
                              IF t961 IS BOUND.
                                t967 = t961->has.
                              ENDIF.
                              IF t966 = t967.
                                IF t966 = abap_false.
                                  t959 = abap_true.
                                ELSEIF t960->value = t961->value.
                                  t959 = abap_true.
                                ENDIF.
                              ENDIF.
                              IF t959 = abap_true.
                                DATA t968 TYPE REF TO zcl_lnt_character_type.
                                CLEAR t968.
                                DATA(t969) = CONV f( 3 ).
                                DATA t970 TYPE REF TO zcl_lnt_abstract_type_data.
                                CLEAR t970.
                                DATA(t971) = abap_true.
                                IF t971 = abap_true.
                                  DATA(t972) = t2.
                                  t970 = t972.
                                ELSE.
                                  DATA t973 TYPE REF TO zcl_lnt_abstract_type_data.
                                  CLEAR t973.
                                  t970 = t973.
                                ENDIF.
                                t968 = NEW zcl_lnt_character_type( i_length = t969 i_extra = t970 ).
                                result = t968.
                                RETURN.
                              ELSE.
                                DATA(t974) = VALUE abap_bool( ).
                                DATA(t975) = t32.
                                DATA t976 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                CLEAR t976.
                                DATA(t977) = abap_true.
                                IF t977 = abap_true.
                                  DATA(t978) = |UTCL|.
                                  DATA(t979) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                  t979->has = abap_true.
                                  t979->value = t978.
                                  t976 = t979.
                                ELSE.
                                  DATA t980 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  CLEAR t980.
                                  t976 = t980.
                                ENDIF.
                                DATA(t981) = VALUE abap_bool( ).
                                DATA(t982) = VALUE abap_bool( ).
                                IF t975 IS BOUND.
                                  t981 = t975->has.
                                ENDIF.
                                IF t976 IS BOUND.
                                  t982 = t976->has.
                                ENDIF.
                                IF t981 = t982.
                                  IF t981 = abap_false.
                                    t974 = abap_true.
                                  ELSEIF t975->value = t976->value.
                                    t974 = abap_true.
                                  ENDIF.
                                ENDIF.
                                IF t974 = abap_true.
                                  DATA t983 TYPE REF TO zcl_lnt_character_type.
                                  CLEAR t983.
                                  DATA(t984) = CONV f( 27 ).
                                  DATA t985 TYPE REF TO zcl_lnt_abstract_type_data.
                                  CLEAR t985.
                                  DATA(t986) = abap_true.
                                  IF t986 = abap_true.
                                    DATA(t987) = t2.
                                    t985 = t987.
                                  ELSE.
                                    DATA t988 TYPE REF TO zcl_lnt_abstract_type_data.
                                    CLEAR t988.
                                    t985 = t988.
                                  ENDIF.
                                  t983 = NEW zcl_lnt_character_type( i_length = t984 i_extra = t985 ).
                                  result = t983.
                                  RETURN.
                                ELSE.
                                  DATA(t989) = VALUE abap_bool( ).
                                  DATA(t990) = t32.
                                  DATA t991 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  CLEAR t991.
                                  DATA(t992) = abap_true.
                                  IF t992 = abap_true.
                                    DATA(t993) = |UTCLONG|.
                                    DATA(t994) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                    t994->has = abap_true.
                                    t994->value = t993.
                                    t991 = t994.
                                  ELSE.
                                    DATA t995 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                    CLEAR t995.
                                    t991 = t995.
                                  ENDIF.
                                  DATA(t996) = VALUE abap_bool( ).
                                  DATA(t997) = VALUE abap_bool( ).
                                  IF t990 IS BOUND.
                                    t996 = t990->has.
                                  ENDIF.
                                  IF t991 IS BOUND.
                                    t997 = t991->has.
                                  ENDIF.
                                  IF t996 = t997.
                                    IF t996 = abap_false.
                                      t989 = abap_true.
                                    ELSEIF t990->value = t991->value.
                                      t989 = abap_true.
                                    ENDIF.
                                  ENDIF.
                                  IF t989 = abap_true.
                                    DATA t998 TYPE REF TO zcl_lnt_character_type.
                                    CLEAR t998.
                                    DATA(t999) = CONV f( 27 ).
                                    DATA t1000 TYPE REF TO zcl_lnt_abstract_type_data.
                                    CLEAR t1000.
                                    DATA(t1001) = abap_true.
                                    IF t1001 = abap_true.
                                      DATA(t1002) = t2.
                                      t1000 = t1002.
                                    ELSE.
                                      DATA t1003 TYPE REF TO zcl_lnt_abstract_type_data.
                                      CLEAR t1003.
                                      t1000 = t1003.
                                    ENDIF.
                                    t998 = NEW zcl_lnt_character_type( i_length = t999 i_extra = t1000 ).
                                    result = t998.
                                    RETURN.
                                  ELSE.
                                    DATA(t1004) = VALUE abap_bool( ).
                                    DATA(t1005) = t32.
                                    DATA t1006 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                    CLEAR t1006.
                                    DATA(t1007) = abap_true.
                                    IF t1007 = abap_true.
                                      DATA(t1008) = |NUMC|.
                                      DATA(t1009) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                      t1009->has = abap_true.
                                      t1009->value = t1008.
                                      t1006 = t1009.
                                    ELSE.
                                      DATA t1010 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                      CLEAR t1010.
                                      t1006 = t1010.
                                    ENDIF.
                                    DATA(t1011) = VALUE abap_bool( ).
                                    DATA(t1012) = VALUE abap_bool( ).
                                    IF t1005 IS BOUND.
                                      t1011 = t1005->has.
                                    ENDIF.
                                    IF t1006 IS BOUND.
                                      t1012 = t1006->has.
                                    ENDIF.
                                    IF t1011 = t1012.
                                      IF t1011 = abap_false.
                                        t1004 = abap_true.
                                      ELSEIF t1005->value = t1006->value.
                                        t1004 = abap_true.
                                      ENDIF.
                                    ENDIF.
                                    IF t1004 = abap_true.
                                      DATA(t1013) = VALUE abap_bool( ).
                                      DATA t1014 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                      DATA t1015 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                      DATA(t1016) = t1.
                                      t1015 = t1016->length.
                                      t1014 = t1015.
                                      DATA t1017 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                      DATA t1018 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                      CLEAR t1018.
                                      t1017 = t1018.
                                      DATA(t1019) = VALUE abap_bool( ).
                                      DATA(t1020) = t1014.
                                      IF t1020 IS INITIAL.
                                        t1019 = abap_true.
                                      ELSEIF t1020->has = abap_false.
                                        t1019 = abap_true.
                                      ENDIF.
                                      t1013 = t1019.
                                      IF t1013 = abap_true.
                                        DATA t1021 TYPE REF TO zcl_lnt_unknown_type.
                                        CLEAR t1021.
                                        DATA t1022 TYPE string.
                                        DATA t1023 TYPE string.
                                        DATA t1024 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                        DATA(t1025) = t1.
                                        t1024 = t1025->text.
                                        t1023 = t1024->value.
                                        DATA(t1026) = | unknown length|.
                                        DATA(t1027) = strlen( t1023 ).
                                        t1022 = |{ t1023 }{ t1026 }|.
                                        DATA t1028 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                        CLEAR t1028.
                                        DATA(t1029) = abap_true.
                                        IF t1029 = abap_true.
                                          DATA t1030 TYPE string.
                                          DATA(t1031) = t1.
                                          t1030 = t1031->info_text.
                                          DATA(t1032) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                          t1032->has = abap_true.
                                          t1032->value = t1030.
                                          t1028 = t1032.
                                        ELSE.
                                          DATA t1033 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                          CLEAR t1033.
                                          t1028 = t1033.
                                        ENDIF.
                                        t1021 = NEW zcl_lnt_unknown_type( i_error = t1022 i_qualified_name = t1028 ).
                                        result = t1021.
                                        RETURN.
                                      ENDIF.
                                      DATA t1034 TYPE REF TO zcl_lnt_numeric_type.
                                      CLEAR t1034.
                                      DATA(t1035) = VALUE f( ).
                                      DATA t1036 TYPE string.
                                      DATA t1037 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                      DATA(t1038) = t1.
                                      t1037 = t1038->length.
                                      t1036 = t1037->value.
                                      DATA t1039 TYPE i.
                                      DATA t1040 TYPE i.
                                      DATA(t1041) = VALUE string( ).
                                      DATA t1042 TYPE abap_bool.
                                      DATA t1043 TYPE abap_bool.
                                      DATA t1044 TYPE int8.
                                      DATA(t1045) = VALUE i( ).
                                      t1039 = 0.
                                      t1044 = 0.
                                      t1042 = abap_false.
                                      t1043 = abap_false.
                                      t1040 = strlen( t1036 ).
                                      DATA(t1046) = VALUE i( ).
                                      DATA(t1047) = VALUE i( ).
                                      DATA(t1048) = VALUE string( ).
                                      WHILE t1039 < t1040.
                                        t1047 = t1039.
                                        t1048 = t1036+t1047(1).
                                        DATA t1049 TYPE c LENGTH 1.
                                        CLEAR t1049.
                                        DATA(t1050) = VALUE xstring( ).
                                        DATA t1051 TYPE x LENGTH 1.
                                        CLEAR t1051.
                                        DATA t1052 TYPE x LENGTH 1.
                                        CLEAR t1052.
                                        DATA(t1053) = VALUE i( ).
                                        t1049 = t1048.
                                        t1046 = cl_abap_conv_out_ce=>uccpi( t1049 ).
                                        IF t1046 >= 255.
                                          IF zlnt_builtin_code_15236315dde7 IS NOT BOUND.
                                            zlnt_builtin_code_15236315dde7 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                                          ENDIF.
                                          zlnt_builtin_code_15236315dde7->convert( EXPORTING data = t1048 IMPORTING buffer = t1050 ).
                                          t1051 = t1050(1).
                                          t1052 = t1050+1(1).
                                          t1046 = t1051.
                                          t1053 = t1052.
                                          t1046 = t1046 + t1053 * 256.
                                        ENDIF.
                                        IF t1046 = 9 OR t1046 = 10 OR t1046 = 11 OR t1046 = 12 OR t1046 = 13 OR t1046 = 32 OR t1046 = 160 OR t1046 = 5760 OR t1046 = 8232 OR t1046 = 8233 OR t1046 = 8239 OR t1046 = 8287 OR t1046 = 12288 OR
                                        t1046 = 65279 OR t1046 >= 8192 AND t1046 <= 8202.
                                          t1039 = t1039 + 1.
                                        ELSE.
                                          EXIT.
                                        ENDIF.
                                      ENDWHILE.
                                      IF t1039 < t1040.
                                        t1041 = t1036+t1039(1).
                                        IF t1041 = '-' OR t1041 = '+'.
                                          t1042 = xsdbool( t1041 = '-' ).
                                          t1039 = t1039 + 1.
                                        ENDIF.
                                      ENDIF.
                                      WHILE t1039 < t1040.
                                        t1041 = t1036+t1039(1).
                                        IF t1041 CN '0123456789' OR t1041 = ` `.
                                          EXIT.
                                        ENDIF.
                                        t1045 = t1041.
                                        IF t1044 > range_parse_safe_prefix OR ( t1044 = range_parse_safe_prefix AND t1045 > 1 ).
                                          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                                        ENDIF.
                                        t1044 = t1044 * 10 + t1045.
                                        t1043 = abap_true.
                                        t1039 = t1039 + 1.
                                      ENDWHILE.
                                      IF t1043 = abap_false OR ( t1042 = abap_true AND t1044 = 0 ).
                                        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                                      ENDIF.
                                      IF t1042 = abap_true.
                                        t1044 = 0 - t1044.
                                      ENDIF.
                                      t1035 = t1044.
                                      DATA t1054 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                      DATA(t1055) = t1.
                                      t1054 = t1055->qualified_name.
                                      t1034 = NEW zcl_lnt_numeric_type( i_length = t1035 i_qualified_name = t1054 ).
                                      result = t1034.
                                      RETURN.
                                    ELSE.
                                      DATA(t1056) = VALUE abap_bool( ).
                                      DATA(t1057) = t32.
                                      DATA t1058 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                      CLEAR t1058.
                                      DATA(t1059) = abap_true.
                                      IF t1059 = abap_true.
                                        DATA(t1060) = |CHAR|.
                                        DATA(t1061) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                        t1061->has = abap_true.
                                        t1061->value = t1060.
                                        t1058 = t1061.
                                      ELSE.
                                        DATA t1062 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                        CLEAR t1062.
                                        t1058 = t1062.
                                      ENDIF.
                                      DATA(t1063) = VALUE abap_bool( ).
                                      DATA(t1064) = VALUE abap_bool( ).
                                      IF t1057 IS BOUND.
                                        t1063 = t1057->has.
                                      ENDIF.
                                      IF t1058 IS BOUND.
                                        t1064 = t1058->has.
                                      ENDIF.
                                      IF t1063 = t1064.
                                        IF t1063 = abap_false.
                                          t1056 = abap_true.
                                        ELSEIF t1057->value = t1058->value.
                                          t1056 = abap_true.
                                        ENDIF.
                                      ENDIF.
                                      IF t1056 = abap_true.
                                        DATA(t1065) = VALUE abap_bool( ).
                                        DATA t1066 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                        DATA t1067 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                        DATA(t1068) = t1.
                                        t1067 = t1068->length.
                                        t1066 = t1067.
                                        DATA t1069 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                        DATA t1070 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                        CLEAR t1070.
                                        t1069 = t1070.
                                        DATA(t1071) = VALUE abap_bool( ).
                                        DATA(t1072) = t1066.
                                        IF t1072 IS INITIAL.
                                          t1071 = abap_true.
                                        ELSEIF t1072->has = abap_false.
                                          t1071 = abap_true.
                                        ENDIF.
                                        t1065 = t1071.
                                        IF t1065 = abap_true.
                                          DATA t1073 TYPE REF TO zcl_lnt_unknown_type.
                                          CLEAR t1073.
                                          DATA t1074 TYPE string.
                                          DATA t1075 TYPE string.
                                          DATA t1076 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                          DATA(t1077) = t1.
                                          t1076 = t1077->text.
                                          t1075 = t1076->value.
                                          DATA(t1078) = | unknown length|.
                                          DATA(t1079) = strlen( t1075 ).
                                          t1074 = |{ t1075 }{ t1078 }|.
                                          DATA t1080 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                          CLEAR t1080.
                                          DATA(t1081) = abap_true.
                                          IF t1081 = abap_true.
                                            DATA t1082 TYPE string.
                                            DATA(t1083) = t1.
                                            t1082 = t1083->info_text.
                                            DATA(t1084) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                            t1084->has = abap_true.
                                            t1084->value = t1082.
                                            t1080 = t1084.
                                          ELSE.
                                            DATA t1085 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                            CLEAR t1085.
                                            t1080 = t1085.
                                          ENDIF.
                                          t1073 = NEW zcl_lnt_unknown_type( i_error = t1074 i_qualified_name = t1080 ).
                                          result = t1073.
                                          RETURN.
                                        ENDIF.
                                        DATA t1086 TYPE REF TO zcl_lnt_character_type.
                                        CLEAR t1086.
                                        DATA(t1087) = VALUE f( ).
                                        DATA t1088 TYPE string.
                                        DATA t1089 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                        DATA(t1090) = t1.
                                        t1089 = t1090->length.
                                        t1088 = t1089->value.
                                        DATA t1091 TYPE i.
                                        DATA t1092 TYPE i.
                                        DATA(t1093) = VALUE string( ).
                                        DATA t1094 TYPE abap_bool.
                                        DATA t1095 TYPE abap_bool.
                                        DATA t1096 TYPE int8.
                                        DATA(t1097) = VALUE i( ).
                                        t1091 = 0.
                                        t1096 = 0.
                                        t1094 = abap_false.
                                        t1095 = abap_false.
                                        t1092 = strlen( t1088 ).
                                        DATA(t1098) = VALUE i( ).
                                        DATA(t1099) = VALUE i( ).
                                        DATA(t1100) = VALUE string( ).
                                        WHILE t1091 < t1092.
                                          t1099 = t1091.
                                          t1100 = t1088+t1099(1).
                                          DATA t1101 TYPE c LENGTH 1.
                                          CLEAR t1101.
                                          DATA(t1102) = VALUE xstring( ).
                                          DATA t1103 TYPE x LENGTH 1.
                                          CLEAR t1103.
                                          DATA t1104 TYPE x LENGTH 1.
                                          CLEAR t1104.
                                          DATA(t1105) = VALUE i( ).
                                          t1101 = t1100.
                                          t1098 = cl_abap_conv_out_ce=>uccpi( t1101 ).
                                          IF t1098 >= 255.
                                            IF zlnt_builtin_code_15236315dde7 IS NOT BOUND.
                                              zlnt_builtin_code_15236315dde7 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                                            ENDIF.
                                            zlnt_builtin_code_15236315dde7->convert( EXPORTING data = t1100 IMPORTING buffer = t1102 ).
                                            t1103 = t1102(1).
                                            t1104 = t1102+1(1).
                                            t1098 = t1103.
                                            t1105 = t1104.
                                            t1098 = t1098 + t1105 * 256.
                                          ENDIF.
                                          IF t1098 = 9 OR t1098 = 10 OR t1098 = 11 OR t1098 = 12 OR t1098 = 13 OR t1098 = 32 OR t1098 = 160 OR t1098 = 5760 OR t1098 = 8232 OR t1098 = 8233 OR t1098 = 8239 OR t1098 = 8287 OR t1098 = 12288 OR
                                          t1098 = 65279 OR t1098 >= 8192 AND t1098 <= 8202.
                                            t1091 = t1091 + 1.
                                          ELSE.
                                            EXIT.
                                          ENDIF.
                                        ENDWHILE.
                                        IF t1091 < t1092.
                                          t1093 = t1088+t1091(1).
                                          IF t1093 = '-' OR t1093 = '+'.
                                            t1094 = xsdbool( t1093 = '-' ).
                                            t1091 = t1091 + 1.
                                          ENDIF.
                                        ENDIF.
                                        WHILE t1091 < t1092.
                                          t1093 = t1088+t1091(1).
                                          IF t1093 CN '0123456789' OR t1093 = ` `.
                                            EXIT.
                                          ENDIF.
                                          t1097 = t1093.
                                          IF t1096 > range_parse_safe_prefix OR ( t1096 = range_parse_safe_prefix AND t1097 > 1 ).
                                            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                                          ENDIF.
                                          t1096 = t1096 * 10 + t1097.
                                          t1095 = abap_true.
                                          t1091 = t1091 + 1.
                                        ENDWHILE.
                                        IF t1095 = abap_false OR ( t1094 = abap_true AND t1096 = 0 ).
                                          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                                        ENDIF.
                                        IF t1094 = abap_true.
                                          t1096 = 0 - t1096.
                                        ENDIF.
                                        t1087 = t1096.
                                        DATA t1106 TYPE REF TO zcl_lnt_abstract_type_data.
                                        CLEAR t1106.
                                        DATA(t1107) = abap_true.
                                        IF t1107 = abap_true.
                                          DATA(t1108) = t2.
                                          t1106 = t1108.
                                        ELSE.
                                          DATA t1109 TYPE REF TO zcl_lnt_abstract_type_data.
                                          CLEAR t1109.
                                          t1106 = t1109.
                                        ENDIF.
                                        t1086 = NEW zcl_lnt_character_type( i_length = t1087 i_extra = t1106 ).
                                        result = t1086.
                                        RETURN.
                                      ELSE.
                                        DATA(t1110) = VALUE abap_bool( ).
                                        DATA(t1111) = t32.
                                        DATA t1112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                        CLEAR t1112.
                                        DATA(t1113) = abap_true.
                                        IF t1113 = abap_true.
                                          DATA(t1114) = |LCHR|.
                                          DATA(t1115) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                          t1115->has = abap_true.
                                          t1115->value = t1114.
                                          t1112 = t1115.
                                        ELSE.
                                          DATA t1116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                          CLEAR t1116.
                                          t1112 = t1116.
                                        ENDIF.
                                        DATA(t1117) = VALUE abap_bool( ).
                                        DATA(t1118) = VALUE abap_bool( ).
                                        IF t1111 IS BOUND.
                                          t1117 = t1111->has.
                                        ENDIF.
                                        IF t1112 IS BOUND.
                                          t1118 = t1112->has.
                                        ENDIF.
                                        IF t1117 = t1118.
                                          IF t1117 = abap_false.
                                            t1110 = abap_true.
                                          ELSEIF t1111->value = t1112->value.
                                            t1110 = abap_true.
                                          ENDIF.
                                        ENDIF.
                                        IF t1110 = abap_true.
                                          DATA(t1119) = VALUE abap_bool( ).
                                          DATA t1120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                          DATA t1121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                          DATA(t1122) = t1.
                                          t1121 = t1122->length.
                                          t1120 = t1121.
                                          DATA t1123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                          DATA t1124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                          CLEAR t1124.
                                          t1123 = t1124.
                                          DATA(t1125) = VALUE abap_bool( ).
                                          DATA(t1126) = t1120.
                                          IF t1126 IS INITIAL.
                                            t1125 = abap_true.
                                          ELSEIF t1126->has = abap_false.
                                            t1125 = abap_true.
                                          ENDIF.
                                          t1119 = t1125.
                                          IF t1119 = abap_true.
                                            DATA t1127 TYPE REF TO zcl_lnt_unknown_type.
                                            CLEAR t1127.
                                            DATA t1128 TYPE string.
                                            DATA t1129 TYPE string.
                                            DATA t1130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                            DATA(t1131) = t1.
                                            t1130 = t1131->text.
                                            t1129 = t1130->value.
                                            DATA(t1132) = | unknown length|.
                                            DATA(t1133) = strlen( t1129 ).
                                            t1128 = |{ t1129 }{ t1132 }|.
                                            DATA t1134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                            CLEAR t1134.
                                            DATA(t1135) = abap_true.
                                            IF t1135 = abap_true.
                                              DATA t1136 TYPE string.
                                              DATA(t1137) = t1.
                                              t1136 = t1137->info_text.
                                              DATA(t1138) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                              t1138->has = abap_true.
                                              t1138->value = t1136.
                                              t1134 = t1138.
                                            ELSE.
                                              DATA t1139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                              CLEAR t1139.
                                              t1134 = t1139.
                                            ENDIF.
                                            t1127 = NEW zcl_lnt_unknown_type( i_error = t1128 i_qualified_name = t1134 ).
                                            result = t1127.
                                            RETURN.
                                          ENDIF.
                                          DATA t1140 TYPE REF TO zcl_lnt_character_type.
                                          CLEAR t1140.
                                          DATA(t1141) = VALUE f( ).
                                          DATA t1142 TYPE string.
                                          DATA t1143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                          DATA(t1144) = t1.
                                          t1143 = t1144->length.
                                          t1142 = t1143->value.
                                          DATA t1145 TYPE i.
                                          DATA t1146 TYPE i.
                                          DATA(t1147) = VALUE string( ).
                                          DATA t1148 TYPE abap_bool.
                                          DATA t1149 TYPE abap_bool.
                                          DATA t1150 TYPE int8.
                                          DATA(t1151) = VALUE i( ).
                                          t1145 = 0.
                                          t1150 = 0.
                                          t1148 = abap_false.
                                          t1149 = abap_false.
                                          t1146 = strlen( t1142 ).
                                          DATA(t1152) = VALUE i( ).
                                          DATA(t1153) = VALUE i( ).
                                          DATA(t1154) = VALUE string( ).
                                          WHILE t1145 < t1146.
                                            t1153 = t1145.
                                            t1154 = t1142+t1153(1).
                                            DATA t1155 TYPE c LENGTH 1.
                                            CLEAR t1155.
                                            DATA(t1156) = VALUE xstring( ).
                                            DATA t1157 TYPE x LENGTH 1.
                                            CLEAR t1157.
                                            DATA t1158 TYPE x LENGTH 1.
                                            CLEAR t1158.
                                            DATA(t1159) = VALUE i( ).
                                            t1155 = t1154.
                                            t1152 = cl_abap_conv_out_ce=>uccpi( t1155 ).
                                            IF t1152 >= 255.
                                              IF zlnt_builtin_code_15236315dde7 IS NOT BOUND.
                                                zlnt_builtin_code_15236315dde7 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                                              ENDIF.
                                              zlnt_builtin_code_15236315dde7->convert( EXPORTING data = t1154 IMPORTING buffer = t1156 ).
                                              t1157 = t1156(1).
                                              t1158 = t1156+1(1).
                                              t1152 = t1157.
                                              t1159 = t1158.
                                              t1152 = t1152 + t1159 * 256.
                                            ENDIF.
                                            IF t1152 = 9 OR t1152 = 10 OR t1152 = 11 OR t1152 = 12 OR t1152 = 13 OR t1152 = 32 OR t1152 = 160 OR t1152 = 5760 OR t1152 = 8232 OR t1152 = 8233 OR t1152 = 8239 OR t1152 = 8287 OR t1152 = 12288
                                            OR t1152 = 65279 OR t1152 >= 8192 AND t1152 <= 8202.
                                              t1145 = t1145 + 1.
                                            ELSE.
                                              EXIT.
                                            ENDIF.
                                          ENDWHILE.
                                          IF t1145 < t1146.
                                            t1147 = t1142+t1145(1).
                                            IF t1147 = '-' OR t1147 = '+'.
                                              t1148 = xsdbool( t1147 = '-' ).
                                              t1145 = t1145 + 1.
                                            ENDIF.
                                          ENDIF.
                                          WHILE t1145 < t1146.
                                            t1147 = t1142+t1145(1).
                                            IF t1147 CN '0123456789' OR t1147 = ` `.
                                              EXIT.
                                            ENDIF.
                                            t1151 = t1147.
                                            IF t1150 > range_parse_safe_prefix OR ( t1150 = range_parse_safe_prefix AND t1151 > 1 ).
                                              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                                            ENDIF.
                                            t1150 = t1150 * 10 + t1151.
                                            t1149 = abap_true.
                                            t1145 = t1145 + 1.
                                          ENDWHILE.
                                          IF t1149 = abap_false OR ( t1148 = abap_true AND t1150 = 0 ).
                                            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                                          ENDIF.
                                          IF t1148 = abap_true.
                                            t1150 = 0 - t1150.
                                          ENDIF.
                                          t1141 = t1150.
                                          DATA t1160 TYPE REF TO zcl_lnt_abstract_type_data.
                                          CLEAR t1160.
                                          DATA(t1161) = abap_true.
                                          IF t1161 = abap_true.
                                            DATA(t1162) = t2.
                                            t1160 = t1162.
                                          ELSE.
                                            DATA t1163 TYPE REF TO zcl_lnt_abstract_type_data.
                                            CLEAR t1163.
                                            t1160 = t1163.
                                          ENDIF.
                                          t1140 = NEW zcl_lnt_character_type( i_length = t1141 i_extra = t1160 ).
                                          result = t1140.
                                          RETURN.
                                        ELSE.
                                          DATA(t1164) = VALUE abap_bool( ).
                                          DATA(t1165) = t32.
                                          DATA t1166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                          CLEAR t1166.
                                          DATA(t1167) = abap_true.
                                          IF t1167 = abap_true.
                                            DATA(t1168) = |RAW|.
                                            DATA(t1169) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                            t1169->has = abap_true.
                                            t1169->value = t1168.
                                            t1166 = t1169.
                                          ELSE.
                                            DATA t1170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                            CLEAR t1170.
                                            t1166 = t1170.
                                          ENDIF.
                                          DATA(t1171) = VALUE abap_bool( ).
                                          DATA(t1172) = VALUE abap_bool( ).
                                          IF t1165 IS BOUND.
                                            t1171 = t1165->has.
                                          ENDIF.
                                          IF t1166 IS BOUND.
                                            t1172 = t1166->has.
                                          ENDIF.
                                          IF t1171 = t1172.
                                            IF t1171 = abap_false.
                                              t1164 = abap_true.
                                            ELSEIF t1165->value = t1166->value.
                                              t1164 = abap_true.
                                            ENDIF.
                                          ENDIF.
                                          IF t1164 = abap_true.
                                            DATA(t1173) = VALUE abap_bool( ).
                                            DATA t1174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                            DATA t1175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                            DATA(t1176) = t1.
                                            t1175 = t1176->length.
                                            t1174 = t1175.
                                            DATA t1177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                            DATA t1178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                            CLEAR t1178.
                                            t1177 = t1178.
                                            DATA(t1179) = VALUE abap_bool( ).
                                            DATA(t1180) = t1174.
                                            IF t1180 IS INITIAL.
                                              t1179 = abap_true.
                                            ELSEIF t1180->has = abap_false.
                                              t1179 = abap_true.
                                            ENDIF.
                                            t1173 = t1179.
                                            IF t1173 = abap_true.
                                              DATA t1181 TYPE REF TO zcl_lnt_unknown_type.
                                              CLEAR t1181.
                                              DATA t1182 TYPE string.
                                              DATA t1183 TYPE string.
                                              DATA t1184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                              DATA(t1185) = t1.
                                              t1184 = t1185->text.
                                              t1183 = t1184->value.
                                              DATA(t1186) = | unknown length|.
                                              DATA(t1187) = strlen( t1183 ).
                                              t1182 = |{ t1183 }{ t1186 }|.
                                              DATA t1188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                              CLEAR t1188.
                                              DATA(t1189) = abap_true.
                                              IF t1189 = abap_true.
                                                DATA t1190 TYPE string.
                                                DATA(t1191) = t1.
                                                t1190 = t1191->info_text.
                                                DATA(t1192) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                t1192->has = abap_true.
                                                t1192->value = t1190.
                                                t1188 = t1192.
                                              ELSE.
                                                DATA t1193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                CLEAR t1193.
                                                t1188 = t1193.
                                              ENDIF.
                                              t1181 = NEW zcl_lnt_unknown_type( i_error = t1182 i_qualified_name = t1188 ).
                                              result = t1181.
                                              RETURN.
                                            ENDIF.
                                            DATA t1194 TYPE REF TO zcl_lnt_hex_type.
                                            CLEAR t1194.
                                            DATA(t1195) = VALUE f( ).
                                            DATA t1196 TYPE string.
                                            DATA t1197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                            DATA(t1198) = t1.
                                            t1197 = t1198->length.
                                            t1196 = t1197->value.
                                            DATA t1199 TYPE i.
                                            DATA t1200 TYPE i.
                                            DATA(t1201) = VALUE string( ).
                                            DATA t1202 TYPE abap_bool.
                                            DATA t1203 TYPE abap_bool.
                                            DATA t1204 TYPE int8.
                                            DATA(t1205) = VALUE i( ).
                                            t1199 = 0.
                                            t1204 = 0.
                                            t1202 = abap_false.
                                            t1203 = abap_false.
                                            t1200 = strlen( t1196 ).
                                            DATA(t1206) = VALUE i( ).
                                            DATA(t1207) = VALUE i( ).
                                            DATA(t1208) = VALUE string( ).
                                            WHILE t1199 < t1200.
                                              t1207 = t1199.
                                              t1208 = t1196+t1207(1).
                                              DATA t1209 TYPE c LENGTH 1.
                                              CLEAR t1209.
                                              DATA(t1210) = VALUE xstring( ).
                                              DATA t1211 TYPE x LENGTH 1.
                                              CLEAR t1211.
                                              DATA t1212 TYPE x LENGTH 1.
                                              CLEAR t1212.
                                              DATA(t1213) = VALUE i( ).
                                              t1209 = t1208.
                                              t1206 = cl_abap_conv_out_ce=>uccpi( t1209 ).
                                              IF t1206 >= 255.
                                                IF zlnt_builtin_code_15236315dde7 IS NOT BOUND.
                                                  zlnt_builtin_code_15236315dde7 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                                                ENDIF.
                                                zlnt_builtin_code_15236315dde7->convert( EXPORTING data = t1208 IMPORTING buffer = t1210 ).
                                                t1211 = t1210(1).
                                                t1212 = t1210+1(1).
                                                t1206 = t1211.
                                                t1213 = t1212.
                                                t1206 = t1206 + t1213 * 256.
                                              ENDIF.
                                              IF t1206 = 9 OR t1206 = 10 OR t1206 = 11 OR t1206 = 12 OR t1206 = 13 OR t1206 = 32 OR t1206 = 160 OR t1206 = 5760 OR t1206 = 8232 OR t1206 = 8233 OR t1206 = 8239 OR t1206 = 8287 OR t1206 = 12288
                                              OR t1206 = 65279 OR t1206 >= 8192 AND t1206 <= 8202.
                                                t1199 = t1199 + 1.
                                              ELSE.
                                                EXIT.
                                              ENDIF.
                                            ENDWHILE.
                                            IF t1199 < t1200.
                                              t1201 = t1196+t1199(1).
                                              IF t1201 = '-' OR t1201 = '+'.
                                                t1202 = xsdbool( t1201 = '-' ).
                                                t1199 = t1199 + 1.
                                              ENDIF.
                                            ENDIF.
                                            WHILE t1199 < t1200.
                                              t1201 = t1196+t1199(1).
                                              IF t1201 CN '0123456789' OR t1201 = ` `.
                                                EXIT.
                                              ENDIF.
                                              t1205 = t1201.
                                              IF t1204 > range_parse_safe_prefix OR ( t1204 = range_parse_safe_prefix AND t1205 > 1 ).
                                                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                                              ENDIF.
                                              t1204 = t1204 * 10 + t1205.
                                              t1203 = abap_true.
                                              t1199 = t1199 + 1.
                                            ENDWHILE.
                                            IF t1203 = abap_false OR ( t1202 = abap_true AND t1204 = 0 ).
                                              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                                            ENDIF.
                                            IF t1202 = abap_true.
                                              t1204 = 0 - t1204.
                                            ENDIF.
                                            t1195 = t1204.
                                            DATA t1214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                            DATA(t1215) = t1.
                                            t1214 = t1215->qualified_name.
                                            t1194 = NEW zcl_lnt_hex_type( i_length = t1195 i_qualified_name = t1214 ).
                                            result = t1194.
                                            RETURN.
                                          ELSE.
                                            DATA(t1216) = VALUE abap_bool( ).
                                            DATA(t1217) = t32.
                                            DATA t1218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                            CLEAR t1218.
                                            DATA(t1219) = abap_true.
                                            IF t1219 = abap_true.
                                              DATA(t1220) = |LRAW|.
                                              DATA(t1221) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                              t1221->has = abap_true.
                                              t1221->value = t1220.
                                              t1218 = t1221.
                                            ELSE.
                                              DATA t1222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                              CLEAR t1222.
                                              t1218 = t1222.
                                            ENDIF.
                                            DATA(t1223) = VALUE abap_bool( ).
                                            DATA(t1224) = VALUE abap_bool( ).
                                            IF t1217 IS BOUND.
                                              t1223 = t1217->has.
                                            ENDIF.
                                            IF t1218 IS BOUND.
                                              t1224 = t1218->has.
                                            ENDIF.
                                            IF t1223 = t1224.
                                              IF t1223 = abap_false.
                                                t1216 = abap_true.
                                              ELSEIF t1217->value = t1218->value.
                                                t1216 = abap_true.
                                              ENDIF.
                                            ENDIF.
                                            IF t1216 = abap_true.
                                              DATA(t1225) = VALUE abap_bool( ).
                                              DATA t1226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                              DATA t1227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                              DATA(t1228) = t1.
                                              t1227 = t1228->length.
                                              t1226 = t1227.
                                              DATA t1229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                              DATA t1230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                              CLEAR t1230.
                                              t1229 = t1230.
                                              DATA(t1231) = VALUE abap_bool( ).
                                              DATA(t1232) = t1226.
                                              IF t1232 IS INITIAL.
                                                t1231 = abap_true.
                                              ELSEIF t1232->has = abap_false.
                                                t1231 = abap_true.
                                              ENDIF.
                                              t1225 = t1231.
                                              IF t1225 = abap_true.
                                                DATA t1233 TYPE REF TO zcl_lnt_unknown_type.
                                                CLEAR t1233.
                                                DATA t1234 TYPE string.
                                                DATA t1235 TYPE string.
                                                DATA t1236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                DATA(t1237) = t1.
                                                t1236 = t1237->text.
                                                t1235 = t1236->value.
                                                DATA(t1238) = | unknown length|.
                                                DATA(t1239) = strlen( t1235 ).
                                                t1234 = |{ t1235 }{ t1238 }|.
                                                DATA t1240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                CLEAR t1240.
                                                DATA(t1241) = abap_true.
                                                IF t1241 = abap_true.
                                                  DATA t1242 TYPE string.
                                                  DATA(t1243) = t1.
                                                  t1242 = t1243->info_text.
                                                  DATA(t1244) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                  t1244->has = abap_true.
                                                  t1244->value = t1242.
                                                  t1240 = t1244.
                                                ELSE.
                                                  DATA t1245 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  CLEAR t1245.
                                                  t1240 = t1245.
                                                ENDIF.
                                                t1233 = NEW zcl_lnt_unknown_type( i_error = t1234 i_qualified_name = t1240 ).
                                                result = t1233.
                                                RETURN.
                                              ENDIF.
                                              DATA t1246 TYPE REF TO zcl_lnt_hex_type.
                                              CLEAR t1246.
                                              DATA(t1247) = VALUE f( ).
                                              DATA t1248 TYPE string.
                                              DATA t1249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                              DATA(t1250) = t1.
                                              t1249 = t1250->length.
                                              t1248 = t1249->value.
                                              DATA t1251 TYPE i.
                                              DATA t1252 TYPE i.
                                              DATA(t1253) = VALUE string( ).
                                              DATA t1254 TYPE abap_bool.
                                              DATA t1255 TYPE abap_bool.
                                              DATA t1256 TYPE int8.
                                              DATA(t1257) = VALUE i( ).
                                              t1251 = 0.
                                              t1256 = 0.
                                              t1254 = abap_false.
                                              t1255 = abap_false.
                                              t1252 = strlen( t1248 ).
                                              DATA(t1258) = VALUE i( ).
                                              DATA(t1259) = VALUE i( ).
                                              DATA(t1260) = VALUE string( ).
                                              WHILE t1251 < t1252.
                                                t1259 = t1251.
                                                t1260 = t1248+t1259(1).
                                                DATA t1261 TYPE c LENGTH 1.
                                                CLEAR t1261.
                                                DATA(t1262) = VALUE xstring( ).
                                                DATA t1263 TYPE x LENGTH 1.
                                                CLEAR t1263.
                                                DATA t1264 TYPE x LENGTH 1.
                                                CLEAR t1264.
                                                DATA(t1265) = VALUE i( ).
                                                t1261 = t1260.
                                                t1258 = cl_abap_conv_out_ce=>uccpi( t1261 ).
                                                IF t1258 >= 255.
                                                  IF zlnt_builtin_code_15236315dde7 IS NOT BOUND.
                                                    zlnt_builtin_code_15236315dde7 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                                                  ENDIF.
                                                  zlnt_builtin_code_15236315dde7->convert( EXPORTING data = t1260 IMPORTING buffer = t1262 ).
                                                  t1263 = t1262(1).
                                                  t1264 = t1262+1(1).
                                                  t1258 = t1263.
                                                  t1265 = t1264.
                                                  t1258 = t1258 + t1265 * 256.
                                                ENDIF.
                                                IF t1258 = 9 OR t1258 = 10 OR t1258 = 11 OR t1258 = 12 OR t1258 = 13 OR t1258 = 32 OR t1258 = 160 OR t1258 = 5760 OR t1258 = 8232 OR t1258 = 8233 OR t1258 = 8239 OR t1258 = 8287 OR t1258 =
                                                12288 OR t1258 = 65279 OR t1258 >= 8192 AND t1258 <= 8202.
                                                  t1251 = t1251 + 1.
                                                ELSE.
                                                  EXIT.
                                                ENDIF.
                                              ENDWHILE.
                                              IF t1251 < t1252.
                                                t1253 = t1248+t1251(1).
                                                IF t1253 = '-' OR t1253 = '+'.
                                                  t1254 = xsdbool( t1253 = '-' ).
                                                  t1251 = t1251 + 1.
                                                ENDIF.
                                              ENDIF.
                                              WHILE t1251 < t1252.
                                                t1253 = t1248+t1251(1).
                                                IF t1253 CN '0123456789' OR t1253 = ` `.
                                                  EXIT.
                                                ENDIF.
                                                t1257 = t1253.
                                                IF t1256 > range_parse_safe_prefix OR ( t1256 = range_parse_safe_prefix AND t1257 > 1 ).
                                                  RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                                                ENDIF.
                                                t1256 = t1256 * 10 + t1257.
                                                t1255 = abap_true.
                                                t1251 = t1251 + 1.
                                              ENDWHILE.
                                              IF t1255 = abap_false OR ( t1254 = abap_true AND t1256 = 0 ).
                                                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                                              ENDIF.
                                              IF t1254 = abap_true.
                                                t1256 = 0 - t1256.
                                              ENDIF.
                                              t1247 = t1256.
                                              DATA t1266 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                              DATA(t1267) = t1.
                                              t1266 = t1267->qualified_name.
                                              t1246 = NEW zcl_lnt_hex_type( i_length = t1247 i_qualified_name = t1266 ).
                                              result = t1246.
                                              RETURN.
                                            ELSE.
                                              DATA(t1268) = VALUE abap_bool( ).
                                              DATA(t1269) = t32.
                                              DATA t1270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                              CLEAR t1270.
                                              DATA(t1271) = abap_true.
                                              IF t1271 = abap_true.
                                                DATA(t1272) = |TIMN|.
                                                DATA(t1273) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                t1273->has = abap_true.
                                                t1273->value = t1272.
                                                t1270 = t1273.
                                              ELSE.
                                                DATA t1274 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                CLEAR t1274.
                                                t1270 = t1274.
                                              ENDIF.
                                              DATA(t1275) = VALUE abap_bool( ).
                                              DATA(t1276) = VALUE abap_bool( ).
                                              IF t1269 IS BOUND.
                                                t1275 = t1269->has.
                                              ENDIF.
                                              IF t1270 IS BOUND.
                                                t1276 = t1270->has.
                                              ENDIF.
                                              IF t1275 = t1276.
                                                IF t1275 = abap_false.
                                                  t1268 = abap_true.
                                                ELSEIF t1269->value = t1270->value.
                                                  t1268 = abap_true.
                                                ENDIF.
                                              ENDIF.
                                              IF t1268 = abap_true.
                                                DATA t1277 TYPE REF TO zcl_lnt_time_type.
                                                CLEAR t1277.
                                                DATA t1278 TYPE REF TO zcl_lnt_abstract_type_data.
                                                CLEAR t1278.
                                                DATA(t1279) = abap_true.
                                                IF t1279 = abap_true.
                                                  DATA t1280 TYPE REF TO zcl_lnt_abstract_type_data.
                                                  DATA t1281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  DATA t1282 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  DATA(t1283) = t1.
                                                  t1282 = t1283->qualified_name.
                                                  t1281 = t1282.
                                                  DATA t1284 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  DATA t1285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  CLEAR t1285.
                                                  t1284 = t1285.
                                                  DATA t1286 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                  DATA t1287 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                  CLEAR t1287.
                                                  t1286 = t1287.
                                                  DATA t1288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  DATA t1289 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  CLEAR t1289.
                                                  t1288 = t1289.
                                                  DATA t1290 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  DATA t1291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  CLEAR t1291.
                                                  t1290 = t1291.
                                                  DATA t1292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  DATA t1293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  CLEAR t1293.
                                                  t1292 = t1293.
                                                  t1280 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1281 i_conversion_exit = t1284 i_derived_from_constant = t1286 i_ddic_name = t1288 i_rtti_name = t1290 i_description = t1292 ).
                                                  CREATE OBJECT t1280->zlnt_view_ownkeys_b0e8086400eb.
                                                  t1280->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                  DATA t1294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                  CLEAR t1294.
                                                  IF t1280->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                                                    t1280->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1294 ).
                                                  ENDIF.
                                                  CREATE OBJECT t1280->zlnt_json_ownkeys_70e5fd461788.
                                                  t1280->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                  DATA(t1295) = |qualifiedName|.
                                                  DATA t1296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                  CLEAR t1296.
                                                  IF t1280->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                                                    t1280->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1295 p1 = t1296 ).
                                                  ENDIF.
                                                  t1278 = t1280.
                                                ELSE.
                                                  DATA t1297 TYPE REF TO zcl_lnt_abstract_type_data.
                                                  CLEAR t1297.
                                                  t1278 = t1297.
                                                ENDIF.
                                                t1277 = NEW zcl_lnt_time_type( i_input_967e = t1278 ).
                                                result = t1277.
                                                RETURN.
                                              ELSE.
                                                DATA(t1298) = VALUE abap_bool( ).
                                                DATA(t1299) = t32.
                                                DATA t1300 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                CLEAR t1300.
                                                DATA(t1301) = abap_true.
                                                IF t1301 = abap_true.
                                                  DATA(t1302) = |TIMS|.
                                                  DATA(t1303) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                  t1303->has = abap_true.
                                                  t1303->value = t1302.
                                                  t1300 = t1303.
                                                ELSE.
                                                  DATA t1304 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  CLEAR t1304.
                                                  t1300 = t1304.
                                                ENDIF.
                                                DATA(t1305) = VALUE abap_bool( ).
                                                DATA(t1306) = VALUE abap_bool( ).
                                                IF t1299 IS BOUND.
                                                  t1305 = t1299->has.
                                                ENDIF.
                                                IF t1300 IS BOUND.
                                                  t1306 = t1300->has.
                                                ENDIF.
                                                IF t1305 = t1306.
                                                  IF t1305 = abap_false.
                                                    t1298 = abap_true.
                                                  ELSEIF t1299->value = t1300->value.
                                                    t1298 = abap_true.
                                                  ENDIF.
                                                ENDIF.
                                                IF t1298 = abap_true.
                                                  DATA t1307 TYPE REF TO zcl_lnt_time_type.
                                                  CLEAR t1307.
                                                  DATA t1308 TYPE REF TO zcl_lnt_abstract_type_data.
                                                  CLEAR t1308.
                                                  DATA(t1309) = abap_true.
                                                  IF t1309 = abap_true.
                                                    DATA t1310 TYPE REF TO zcl_lnt_abstract_type_data.
                                                    DATA t1311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    DATA t1312 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    DATA(t1313) = t1.
                                                    t1312 = t1313->qualified_name.
                                                    t1311 = t1312.
                                                    DATA t1314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    DATA t1315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t1315.
                                                    t1314 = t1315.
                                                    DATA t1316 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                    DATA t1317 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                    CLEAR t1317.
                                                    t1316 = t1317.
                                                    DATA t1318 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    DATA t1319 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t1319.
                                                    t1318 = t1319.
                                                    DATA t1320 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    DATA t1321 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t1321.
                                                    t1320 = t1321.
                                                    DATA t1322 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    DATA t1323 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t1323.
                                                    t1322 = t1323.
                                                    t1310 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1311 i_conversion_exit = t1314 i_derived_from_constant = t1316 i_ddic_name = t1318 i_rtti_name = t1320 i_description = t1322 ).
                                                    CREATE OBJECT t1310->zlnt_view_ownkeys_b0e8086400eb.
                                                    t1310->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                    DATA t1324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                    CLEAR t1324.
                                                    IF t1310->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                                                      t1310->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1324 ).
                                                    ENDIF.
                                                    CREATE OBJECT t1310->zlnt_json_ownkeys_70e5fd461788.
                                                    t1310->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                    DATA(t1325) = |qualifiedName|.
                                                    DATA t1326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                    CLEAR t1326.
                                                    IF t1310->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                                                      t1310->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1325 p1 = t1326 ).
                                                    ENDIF.
                                                    t1308 = t1310.
                                                  ELSE.
                                                    DATA t1327 TYPE REF TO zcl_lnt_abstract_type_data.
                                                    CLEAR t1327.
                                                    t1308 = t1327.
                                                  ENDIF.
                                                  t1307 = NEW zcl_lnt_time_type( i_input_967e = t1308 ).
                                                  result = t1307.
                                                  RETURN.
                                                ELSE.
                                                  DATA(t1328) = VALUE abap_bool( ).
                                                  DATA(t1329) = t32.
                                                  DATA t1330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  CLEAR t1330.
                                                  DATA(t1331) = abap_true.
                                                  IF t1331 = abap_true.
                                                    DATA(t1332) = |DECFLOAT16|.
                                                    DATA(t1333) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                    t1333->has = abap_true.
                                                    t1333->value = t1332.
                                                    t1330 = t1333.
                                                  ELSE.
                                                    DATA t1334 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t1334.
                                                    t1330 = t1334.
                                                  ENDIF.
                                                  DATA(t1335) = VALUE abap_bool( ).
                                                  DATA(t1336) = VALUE abap_bool( ).
                                                  IF t1329 IS BOUND.
                                                    t1335 = t1329->has.
                                                  ENDIF.
                                                  IF t1330 IS BOUND.
                                                    t1336 = t1330->has.
                                                  ENDIF.
                                                  IF t1335 = t1336.
                                                    IF t1335 = abap_false.
                                                      t1328 = abap_true.
                                                    ELSEIF t1329->value = t1330->value.
                                                      t1328 = abap_true.
                                                    ENDIF.
                                                  ENDIF.
                                                  IF t1328 = abap_true.
                                                    DATA(t1337) = VALUE abap_bool( ).
                                                    DATA t1338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    DATA t1339 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    DATA(t1340) = t1.
                                                    t1339 = t1340->length.
                                                    t1338 = t1339.
                                                    DATA t1341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                    DATA t1342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                    CLEAR t1342.
                                                    t1341 = t1342.
                                                    DATA(t1343) = VALUE abap_bool( ).
                                                    DATA(t1344) = t1338.
                                                    IF t1344 IS INITIAL.
                                                      t1343 = abap_true.
                                                    ELSEIF t1344->has = abap_false.
                                                      t1343 = abap_true.
                                                    ENDIF.
                                                    t1337 = t1343.
                                                    IF t1337 = abap_true.
                                                      DATA t1345 TYPE REF TO zcl_lnt_unknown_type.
                                                      CLEAR t1345.
                                                      DATA t1346 TYPE string.
                                                      DATA t1347 TYPE string.
                                                      DATA t1348 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                      DATA(t1349) = t1.
                                                      t1348 = t1349->text.
                                                      t1347 = t1348->value.
                                                      DATA(t1350) = | unknown length|.
                                                      DATA(t1351) = strlen( t1347 ).
                                                      t1346 = |{ t1347 }{ t1350 }|.
                                                      DATA t1352 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                      CLEAR t1352.
                                                      DATA(t1353) = abap_true.
                                                      IF t1353 = abap_true.
                                                        DATA t1354 TYPE string.
                                                        DATA(t1355) = t1.
                                                        t1354 = t1355->info_text.
                                                        DATA(t1356) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                        t1356->has = abap_true.
                                                        t1356->value = t1354.
                                                        t1352 = t1356.
                                                      ELSE.
                                                        DATA t1357 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                        CLEAR t1357.
                                                        t1352 = t1357.
                                                      ENDIF.
                                                      t1345 = NEW zcl_lnt_unknown_type( i_error = t1346 i_qualified_name = t1352 ).
                                                      result = t1345.
                                                      RETURN.
                                                    ENDIF.
                                                    DATA t1358 TYPE REF TO zcl_lnt_floating_point_type.
                                                    CLEAR t1358.
                                                    DATA(t1359) = VALUE f( ).
                                                    DATA t1360 TYPE string.
                                                    DATA t1361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    DATA(t1362) = t1.
                                                    t1361 = t1362->length.
                                                    t1360 = t1361->value.
                                                    DATA t1363 TYPE i.
                                                    DATA t1364 TYPE i.
                                                    DATA(t1365) = VALUE string( ).
                                                    DATA t1366 TYPE abap_bool.
                                                    DATA t1367 TYPE abap_bool.
                                                    DATA t1368 TYPE int8.
                                                    DATA(t1369) = VALUE i( ).
                                                    t1363 = 0.
                                                    t1368 = 0.
                                                    t1366 = abap_false.
                                                    t1367 = abap_false.
                                                    t1364 = strlen( t1360 ).
                                                    DATA(t1370) = VALUE i( ).
                                                    DATA(t1371) = VALUE i( ).
                                                    DATA(t1372) = VALUE string( ).
                                                    WHILE t1363 < t1364.
                                                      t1371 = t1363.
                                                      t1372 = t1360+t1371(1).
                                                      DATA t1373 TYPE c LENGTH 1.
                                                      CLEAR t1373.
                                                      DATA(t1374) = VALUE xstring( ).
                                                      DATA t1375 TYPE x LENGTH 1.
                                                      CLEAR t1375.
                                                      DATA t1376 TYPE x LENGTH 1.
                                                      CLEAR t1376.
                                                      DATA(t1377) = VALUE i( ).
                                                      t1373 = t1372.
                                                      t1370 = cl_abap_conv_out_ce=>uccpi( t1373 ).
                                                      IF t1370 >= 255.
                                                        IF zlnt_builtin_code_15236315dde7 IS NOT BOUND.
                                                          zlnt_builtin_code_15236315dde7 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                                                        ENDIF.
                                                        zlnt_builtin_code_15236315dde7->convert( EXPORTING data = t1372 IMPORTING buffer = t1374 ).
                                                        t1375 = t1374(1).
                                                        t1376 = t1374+1(1).
                                                        t1370 = t1375.
                                                        t1377 = t1376.
                                                        t1370 = t1370 + t1377 * 256.
                                                      ENDIF.
                                                      IF t1370 = 9 OR t1370 = 10 OR t1370 = 11 OR t1370 = 12 OR t1370 = 13 OR t1370 = 32 OR t1370 = 160 OR t1370 = 5760 OR t1370 = 8232 OR t1370 = 8233 OR t1370 = 8239 OR t1370 = 8287 OR t1370
                                                      = 12288 OR t1370 = 65279 OR t1370 >= 8192 AND t1370 <= 8202.
                                                        t1363 = t1363 + 1.
                                                      ELSE.
                                                        EXIT.
                                                      ENDIF.
                                                    ENDWHILE.
                                                    IF t1363 < t1364.
                                                      t1365 = t1360+t1363(1).
                                                      IF t1365 = '-' OR t1365 = '+'.
                                                        t1366 = xsdbool( t1365 = '-' ).
                                                        t1363 = t1363 + 1.
                                                      ENDIF.
                                                    ENDIF.
                                                    WHILE t1363 < t1364.
                                                      t1365 = t1360+t1363(1).
                                                      IF t1365 CN '0123456789' OR t1365 = ` `.
                                                        EXIT.
                                                      ENDIF.
                                                      t1369 = t1365.
                                                      IF t1368 > range_parse_safe_prefix OR ( t1368 = range_parse_safe_prefix AND t1369 > 1 ).
                                                        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                                                      ENDIF.
                                                      t1368 = t1368 * 10 + t1369.
                                                      t1367 = abap_true.
                                                      t1363 = t1363 + 1.
                                                    ENDWHILE.
                                                    IF t1367 = abap_false OR ( t1366 = abap_true AND t1368 = 0 ).
                                                      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                                                    ENDIF.
                                                    IF t1366 = abap_true.
                                                      t1368 = 0 - t1368.
                                                    ENDIF.
                                                    t1359 = t1368.
                                                    DATA t1378 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    DATA(t1379) = t1.
                                                    t1378 = t1379->qualified_name.
                                                    t1358 = NEW zcl_lnt_floating_point_type( i_length = t1359 i_qualified_name = t1378 ).
                                                    result = t1358.
                                                    RETURN.
                                                  ELSE.
                                                    DATA(t1380) = VALUE abap_bool( ).
                                                    DATA(t1381) = t32.
                                                    DATA t1382 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    CLEAR t1382.
                                                    DATA(t1383) = abap_true.
                                                    IF t1383 = abap_true.
                                                      DATA(t1384) = |DECFLOAT34|.
                                                      DATA(t1385) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                      t1385->has = abap_true.
                                                      t1385->value = t1384.
                                                      t1382 = t1385.
                                                    ELSE.
                                                      DATA t1386 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                      CLEAR t1386.
                                                      t1382 = t1386.
                                                    ENDIF.
                                                    DATA(t1387) = VALUE abap_bool( ).
                                                    DATA(t1388) = VALUE abap_bool( ).
                                                    IF t1381 IS BOUND.
                                                      t1387 = t1381->has.
                                                    ENDIF.
                                                    IF t1382 IS BOUND.
                                                      t1388 = t1382->has.
                                                    ENDIF.
                                                    IF t1387 = t1388.
                                                      IF t1387 = abap_false.
                                                        t1380 = abap_true.
                                                      ELSEIF t1381->value = t1382->value.
                                                        t1380 = abap_true.
                                                      ENDIF.
                                                    ENDIF.
                                                    IF t1380 = abap_true.
                                                      DATA(t1389) = VALUE abap_bool( ).
                                                      DATA t1390 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                      DATA t1391 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                      DATA(t1392) = t1.
                                                      t1391 = t1392->length.
                                                      t1390 = t1391.
                                                      DATA t1393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                      DATA t1394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                      CLEAR t1394.
                                                      t1393 = t1394.
                                                      DATA(t1395) = VALUE abap_bool( ).
                                                      DATA(t1396) = t1390.
                                                      IF t1396 IS INITIAL.
                                                        t1395 = abap_true.
                                                      ELSEIF t1396->has = abap_false.
                                                        t1395 = abap_true.
                                                      ENDIF.
                                                      t1389 = t1395.
                                                      IF t1389 = abap_true.
                                                        DATA t1397 TYPE REF TO zcl_lnt_unknown_type.
                                                        CLEAR t1397.
                                                        DATA t1398 TYPE string.
                                                        DATA t1399 TYPE string.
                                                        DATA t1400 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                        DATA(t1401) = t1.
                                                        t1400 = t1401->text.
                                                        t1399 = t1400->value.
                                                        DATA(t1402) = | unknown length|.
                                                        DATA(t1403) = strlen( t1399 ).
                                                        t1398 = |{ t1399 }{ t1402 }|.
                                                        DATA t1404 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                        CLEAR t1404.
                                                        DATA(t1405) = abap_true.
                                                        IF t1405 = abap_true.
                                                          DATA t1406 TYPE string.
                                                          DATA(t1407) = t1.
                                                          t1406 = t1407->info_text.
                                                          DATA(t1408) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                          t1408->has = abap_true.
                                                          t1408->value = t1406.
                                                          t1404 = t1408.
                                                        ELSE.
                                                          DATA t1409 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                          CLEAR t1409.
                                                          t1404 = t1409.
                                                        ENDIF.
                                                        t1397 = NEW zcl_lnt_unknown_type( i_error = t1398 i_qualified_name = t1404 ).
                                                        result = t1397.
                                                        RETURN.
                                                      ENDIF.
                                                      DATA t1410 TYPE REF TO zcl_lnt_floating_point_type.
                                                      CLEAR t1410.
                                                      DATA(t1411) = VALUE f( ).
                                                      DATA t1412 TYPE string.
                                                      DATA t1413 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                      DATA(t1414) = t1.
                                                      t1413 = t1414->length.
                                                      t1412 = t1413->value.
                                                      DATA t1415 TYPE i.
                                                      DATA t1416 TYPE i.
                                                      DATA(t1417) = VALUE string( ).
                                                      DATA t1418 TYPE abap_bool.
                                                      DATA t1419 TYPE abap_bool.
                                                      DATA t1420 TYPE int8.
                                                      DATA(t1421) = VALUE i( ).
                                                      t1415 = 0.
                                                      t1420 = 0.
                                                      t1418 = abap_false.
                                                      t1419 = abap_false.
                                                      t1416 = strlen( t1412 ).
                                                      DATA(t1422) = VALUE i( ).
                                                      DATA(t1423) = VALUE i( ).
                                                      DATA(t1424) = VALUE string( ).
                                                      WHILE t1415 < t1416.
                                                        t1423 = t1415.
                                                        t1424 = t1412+t1423(1).
                                                        DATA t1425 TYPE c LENGTH 1.
                                                        CLEAR t1425.
                                                        DATA(t1426) = VALUE xstring( ).
                                                        DATA t1427 TYPE x LENGTH 1.
                                                        CLEAR t1427.
                                                        DATA t1428 TYPE x LENGTH 1.
                                                        CLEAR t1428.
                                                        DATA(t1429) = VALUE i( ).
                                                        t1425 = t1424.
                                                        t1422 = cl_abap_conv_out_ce=>uccpi( t1425 ).
                                                        IF t1422 >= 255.
                                                          IF zlnt_builtin_code_15236315dde7 IS NOT BOUND.
                                                            zlnt_builtin_code_15236315dde7 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                                                          ENDIF.
                                                          zlnt_builtin_code_15236315dde7->convert( EXPORTING data = t1424 IMPORTING buffer = t1426 ).
                                                          t1427 = t1426(1).
                                                          t1428 = t1426+1(1).
                                                          t1422 = t1427.
                                                          t1429 = t1428.
                                                          t1422 = t1422 + t1429 * 256.
                                                        ENDIF.
                                                        IF t1422 = 9 OR t1422 = 10 OR t1422 = 11 OR t1422 = 12 OR t1422 = 13 OR t1422 = 32 OR t1422 = 160 OR t1422 = 5760 OR t1422 = 8232 OR t1422 = 8233 OR t1422 = 8239 OR t1422 = 8287 OR
                                                        t1422 = 12288 OR t1422 = 65279 OR t1422 >= 8192 AND t1422 <= 8202.
                                                          t1415 = t1415 + 1.
                                                        ELSE.
                                                          EXIT.
                                                        ENDIF.
                                                      ENDWHILE.
                                                      IF t1415 < t1416.
                                                        t1417 = t1412+t1415(1).
                                                        IF t1417 = '-' OR t1417 = '+'.
                                                          t1418 = xsdbool( t1417 = '-' ).
                                                          t1415 = t1415 + 1.
                                                        ENDIF.
                                                      ENDIF.
                                                      WHILE t1415 < t1416.
                                                        t1417 = t1412+t1415(1).
                                                        IF t1417 CN '0123456789' OR t1417 = ` `.
                                                          EXIT.
                                                        ENDIF.
                                                        t1421 = t1417.
                                                        IF t1420 > range_parse_safe_prefix OR ( t1420 = range_parse_safe_prefix AND t1421 > 1 ).
                                                          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                                                        ENDIF.
                                                        t1420 = t1420 * 10 + t1421.
                                                        t1419 = abap_true.
                                                        t1415 = t1415 + 1.
                                                      ENDWHILE.
                                                      IF t1419 = abap_false OR ( t1418 = abap_true AND t1420 = 0 ).
                                                        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                                                      ENDIF.
                                                      IF t1418 = abap_true.
                                                        t1420 = 0 - t1420.
                                                      ENDIF.
                                                      t1411 = t1420.
                                                      DATA t1430 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                      DATA(t1431) = t1.
                                                      t1430 = t1431->qualified_name.
                                                      t1410 = NEW zcl_lnt_floating_point_type( i_length = t1411 i_qualified_name = t1430 ).
                                                      result = t1410.
                                                      RETURN.
                                                    ELSE.
                                                      DATA(t1432) = VALUE abap_bool( ).
                                                      DATA(t1433) = t32.
                                                      DATA t1434 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                      CLEAR t1434.
                                                      DATA(t1435) = abap_true.
                                                      IF t1435 = abap_true.
                                                        DATA(t1436) = |D16R|.
                                                        DATA(t1437) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                        t1437->has = abap_true.
                                                        t1437->value = t1436.
                                                        t1434 = t1437.
                                                      ELSE.
                                                        DATA t1438 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                        CLEAR t1438.
                                                        t1434 = t1438.
                                                      ENDIF.
                                                      DATA(t1439) = VALUE abap_bool( ).
                                                      DATA(t1440) = VALUE abap_bool( ).
                                                      IF t1433 IS BOUND.
                                                        t1439 = t1433->has.
                                                      ENDIF.
                                                      IF t1434 IS BOUND.
                                                        t1440 = t1434->has.
                                                      ENDIF.
                                                      IF t1439 = t1440.
                                                        IF t1439 = abap_false.
                                                          t1432 = abap_true.
                                                        ELSEIF t1433->value = t1434->value.
                                                          t1432 = abap_true.
                                                        ENDIF.
                                                      ENDIF.
                                                      IF t1432 = abap_true.
                                                        DATA(t1441) = VALUE abap_bool( ).
                                                        DATA t1442 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                        DATA t1443 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                        DATA(t1444) = t1.
                                                        t1443 = t1444->length.
                                                        t1442 = t1443.
                                                        DATA t1445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                        DATA t1446 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                        CLEAR t1446.
                                                        t1445 = t1446.
                                                        DATA(t1447) = VALUE abap_bool( ).
                                                        DATA(t1448) = t1442.
                                                        IF t1448 IS INITIAL.
                                                          t1447 = abap_true.
                                                        ELSEIF t1448->has = abap_false.
                                                          t1447 = abap_true.
                                                        ENDIF.
                                                        t1441 = t1447.
                                                        IF t1441 = abap_true.
                                                          DATA t1449 TYPE REF TO zcl_lnt_unknown_type.
                                                          CLEAR t1449.
                                                          DATA t1450 TYPE string.
                                                          DATA t1451 TYPE string.
                                                          DATA t1452 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                          DATA(t1453) = t1.
                                                          t1452 = t1453->text.
                                                          t1451 = t1452->value.
                                                          DATA(t1454) = | unknown length|.
                                                          DATA(t1455) = strlen( t1451 ).
                                                          t1450 = |{ t1451 }{ t1454 }|.
                                                          DATA t1456 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                          CLEAR t1456.
                                                          DATA(t1457) = abap_true.
                                                          IF t1457 = abap_true.
                                                            DATA t1458 TYPE string.
                                                            DATA(t1459) = t1.
                                                            t1458 = t1459->info_text.
                                                            DATA(t1460) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                            t1460->has = abap_true.
                                                            t1460->value = t1458.
                                                            t1456 = t1460.
                                                          ELSE.
                                                            DATA t1461 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                            CLEAR t1461.
                                                            t1456 = t1461.
                                                          ENDIF.
                                                          t1449 = NEW zcl_lnt_unknown_type( i_error = t1450 i_qualified_name = t1456 ).
                                                          result = t1449.
                                                          RETURN.
                                                        ENDIF.
                                                        DATA t1462 TYPE REF TO zcl_lnt_floating_point_type.
                                                        CLEAR t1462.
                                                        DATA(t1463) = VALUE f( ).
                                                        DATA t1464 TYPE string.
                                                        DATA t1465 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                        DATA(t1466) = t1.
                                                        t1465 = t1466->length.
                                                        t1464 = t1465->value.
                                                        DATA t1467 TYPE i.
                                                        DATA t1468 TYPE i.
                                                        DATA(t1469) = VALUE string( ).
                                                        DATA t1470 TYPE abap_bool.
                                                        DATA t1471 TYPE abap_bool.
                                                        DATA t1472 TYPE int8.
                                                        DATA(t1473) = VALUE i( ).
                                                        t1467 = 0.
                                                        t1472 = 0.
                                                        t1470 = abap_false.
                                                        t1471 = abap_false.
                                                        t1468 = strlen( t1464 ).
                                                        DATA(t1474) = VALUE i( ).
                                                        DATA(t1475) = VALUE i( ).
                                                        DATA(t1476) = VALUE string( ).
                                                        WHILE t1467 < t1468.
                                                          t1475 = t1467.
                                                          t1476 = t1464+t1475(1).
                                                          DATA t1477 TYPE c LENGTH 1.
                                                          CLEAR t1477.
                                                          DATA(t1478) = VALUE xstring( ).
                                                          DATA t1479 TYPE x LENGTH 1.
                                                          CLEAR t1479.
                                                          DATA t1480 TYPE x LENGTH 1.
                                                          CLEAR t1480.
                                                          DATA(t1481) = VALUE i( ).
                                                          t1477 = t1476.
                                                          t1474 = cl_abap_conv_out_ce=>uccpi( t1477 ).
                                                          IF t1474 >= 255.
                                                            IF zlnt_builtin_code_15236315dde7 IS NOT BOUND.
                                                              zlnt_builtin_code_15236315dde7 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                                                            ENDIF.
                                                            zlnt_builtin_code_15236315dde7->convert( EXPORTING data = t1476 IMPORTING buffer = t1478 ).
                                                            t1479 = t1478(1).
                                                            t1480 = t1478+1(1).
                                                            t1474 = t1479.
                                                            t1481 = t1480.
                                                            t1474 = t1474 + t1481 * 256.
                                                          ENDIF.
                                                          IF t1474 = 9 OR t1474 = 10 OR t1474 = 11 OR t1474 = 12 OR t1474 = 13 OR t1474 = 32 OR t1474 = 160 OR t1474 = 5760 OR t1474 = 8232 OR t1474 = 8233 OR t1474 = 8239 OR t1474 = 8287 OR
                                                          t1474 = 12288 OR t1474 = 65279 OR t1474 >= 8192 AND t1474 <= 8202.
                                                            t1467 = t1467 + 1.
                                                          ELSE.
                                                            EXIT.
                                                          ENDIF.
                                                        ENDWHILE.
                                                        IF t1467 < t1468.
                                                          t1469 = t1464+t1467(1).
                                                          IF t1469 = '-' OR t1469 = '+'.
                                                            t1470 = xsdbool( t1469 = '-' ).
                                                            t1467 = t1467 + 1.
                                                          ENDIF.
                                                        ENDIF.
                                                        WHILE t1467 < t1468.
                                                          t1469 = t1464+t1467(1).
                                                          IF t1469 CN '0123456789' OR t1469 = ` `.
                                                            EXIT.
                                                          ENDIF.
                                                          t1473 = t1469.
                                                          IF t1472 > range_parse_safe_prefix OR ( t1472 = range_parse_safe_prefix AND t1473 > 1 ).
                                                            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                                                          ENDIF.
                                                          t1472 = t1472 * 10 + t1473.
                                                          t1471 = abap_true.
                                                          t1467 = t1467 + 1.
                                                        ENDWHILE.
                                                        IF t1471 = abap_false OR ( t1470 = abap_true AND t1472 = 0 ).
                                                          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                                                        ENDIF.
                                                        IF t1470 = abap_true.
                                                          t1472 = 0 - t1472.
                                                        ENDIF.
                                                        t1463 = t1472.
                                                        DATA t1482 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                        DATA(t1483) = t1.
                                                        t1482 = t1483->qualified_name.
                                                        t1462 = NEW zcl_lnt_floating_point_type( i_length = t1463 i_qualified_name = t1482 ).
                                                        result = t1462.
                                                        RETURN.
                                                      ELSE.
                                                        DATA(t1484) = VALUE abap_bool( ).
                                                        DATA(t1485) = t32.
                                                        DATA t1486 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                        CLEAR t1486.
                                                        DATA(t1487) = abap_true.
                                                        IF t1487 = abap_true.
                                                          DATA(t1488) = |D34R|.
                                                          DATA(t1489) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                          t1489->has = abap_true.
                                                          t1489->value = t1488.
                                                          t1486 = t1489.
                                                        ELSE.
                                                          DATA t1490 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                          CLEAR t1490.
                                                          t1486 = t1490.
                                                        ENDIF.
                                                        DATA(t1491) = VALUE abap_bool( ).
                                                        DATA(t1492) = VALUE abap_bool( ).
                                                        IF t1485 IS BOUND.
                                                          t1491 = t1485->has.
                                                        ENDIF.
                                                        IF t1486 IS BOUND.
                                                          t1492 = t1486->has.
                                                        ENDIF.
                                                        IF t1491 = t1492.
                                                          IF t1491 = abap_false.
                                                            t1484 = abap_true.
                                                          ELSEIF t1485->value = t1486->value.
                                                            t1484 = abap_true.
                                                          ENDIF.
                                                        ENDIF.
                                                        IF t1484 = abap_true.
                                                          DATA(t1493) = VALUE abap_bool( ).
                                                          DATA t1494 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                          DATA t1495 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                          DATA(t1496) = t1.
                                                          t1495 = t1496->length.
                                                          t1494 = t1495.
                                                          DATA t1497 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                          DATA t1498 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                          CLEAR t1498.
                                                          t1497 = t1498.
                                                          DATA(t1499) = VALUE abap_bool( ).
                                                          DATA(t1500) = t1494.
                                                          IF t1500 IS INITIAL.
                                                            t1499 = abap_true.
                                                          ELSEIF t1500->has = abap_false.
                                                            t1499 = abap_true.
                                                          ENDIF.
                                                          t1493 = t1499.
                                                          IF t1493 = abap_true.
                                                            DATA t1501 TYPE REF TO zcl_lnt_unknown_type.
                                                            CLEAR t1501.
                                                            DATA t1502 TYPE string.
                                                            DATA t1503 TYPE string.
                                                            DATA t1504 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                            DATA(t1505) = t1.
                                                            t1504 = t1505->text.
                                                            t1503 = t1504->value.
                                                            DATA(t1506) = | unknown length|.
                                                            DATA(t1507) = strlen( t1503 ).
                                                            t1502 = |{ t1503 }{ t1506 }|.
                                                            DATA t1508 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                            CLEAR t1508.
                                                            DATA(t1509) = abap_true.
                                                            IF t1509 = abap_true.
                                                              DATA t1510 TYPE string.
                                                              DATA(t1511) = t1.
                                                              t1510 = t1511->info_text.
                                                              DATA(t1512) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                              t1512->has = abap_true.
                                                              t1512->value = t1510.
                                                              t1508 = t1512.
                                                            ELSE.
                                                              DATA t1513 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                              CLEAR t1513.
                                                              t1508 = t1513.
                                                            ENDIF.
                                                            t1501 = NEW zcl_lnt_unknown_type( i_error = t1502 i_qualified_name = t1508 ).
                                                            result = t1501.
                                                            RETURN.
                                                          ENDIF.
                                                          DATA t1514 TYPE REF TO zcl_lnt_floating_point_type.
                                                          CLEAR t1514.
                                                          DATA(t1515) = VALUE f( ).
                                                          DATA t1516 TYPE string.
                                                          DATA t1517 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                          DATA(t1518) = t1.
                                                          t1517 = t1518->length.
                                                          t1516 = t1517->value.
                                                          DATA t1519 TYPE i.
                                                          DATA t1520 TYPE i.
                                                          DATA(t1521) = VALUE string( ).
                                                          DATA t1522 TYPE abap_bool.
                                                          DATA t1523 TYPE abap_bool.
                                                          DATA t1524 TYPE int8.
                                                          DATA(t1525) = VALUE i( ).
                                                          t1519 = 0.
                                                          t1524 = 0.
                                                          t1522 = abap_false.
                                                          t1523 = abap_false.
                                                          t1520 = strlen( t1516 ).
                                                          DATA(t1526) = VALUE i( ).
                                                          DATA(t1527) = VALUE i( ).
                                                          DATA(t1528) = VALUE string( ).
                                                          WHILE t1519 < t1520.
                                                            t1527 = t1519.
                                                            t1528 = t1516+t1527(1).
                                                            DATA t1529 TYPE c LENGTH 1.
                                                            CLEAR t1529.
                                                            DATA(t1530) = VALUE xstring( ).
                                                            DATA t1531 TYPE x LENGTH 1.
                                                            CLEAR t1531.
                                                            DATA t1532 TYPE x LENGTH 1.
                                                            CLEAR t1532.
                                                            DATA(t1533) = VALUE i( ).
                                                            t1529 = t1528.
                                                            t1526 = cl_abap_conv_out_ce=>uccpi( t1529 ).
                                                            IF t1526 >= 255.
                                                              IF zlnt_builtin_code_15236315dde7 IS NOT BOUND.
                                                                zlnt_builtin_code_15236315dde7 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                                                              ENDIF.
                                                              zlnt_builtin_code_15236315dde7->convert( EXPORTING data = t1528 IMPORTING buffer = t1530 ).
                                                              t1531 = t1530(1).
                                                              t1532 = t1530+1(1).
                                                              t1526 = t1531.
                                                              t1533 = t1532.
                                                              t1526 = t1526 + t1533 * 256.
                                                            ENDIF.
                                                            IF t1526 = 9 OR t1526 = 10 OR t1526 = 11 OR t1526 = 12 OR t1526 = 13 OR t1526 = 32 OR t1526 = 160 OR t1526 = 5760 OR t1526 = 8232 OR t1526 = 8233 OR t1526 = 8239 OR t1526 = 8287 OR
                                                            t1526 = 12288 OR t1526 = 65279 OR t1526 >= 8192 AND t1526 <= 8202.
                                                              t1519 = t1519 + 1.
                                                            ELSE.
                                                              EXIT.
                                                            ENDIF.
                                                          ENDWHILE.
                                                          IF t1519 < t1520.
                                                            t1521 = t1516+t1519(1).
                                                            IF t1521 = '-' OR t1521 = '+'.
                                                              t1522 = xsdbool( t1521 = '-' ).
                                                              t1519 = t1519 + 1.
                                                            ENDIF.
                                                          ENDIF.
                                                          WHILE t1519 < t1520.
                                                            t1521 = t1516+t1519(1).
                                                            IF t1521 CN '0123456789' OR t1521 = ` `.
                                                              EXIT.
                                                            ENDIF.
                                                            t1525 = t1521.
                                                            IF t1524 > range_parse_safe_prefix OR ( t1524 = range_parse_safe_prefix AND t1525 > 1 ).
                                                              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                                                            ENDIF.
                                                            t1524 = t1524 * 10 + t1525.
                                                            t1523 = abap_true.
                                                            t1519 = t1519 + 1.
                                                          ENDWHILE.
                                                          IF t1523 = abap_false OR ( t1522 = abap_true AND t1524 = 0 ).
                                                            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                                                          ENDIF.
                                                          IF t1522 = abap_true.
                                                            t1524 = 0 - t1524.
                                                          ENDIF.
                                                          t1515 = t1524.
                                                          DATA t1534 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                          DATA(t1535) = t1.
                                                          t1534 = t1535->qualified_name.
                                                          t1514 = NEW zcl_lnt_floating_point_type( i_length = t1515 i_qualified_name = t1534 ).
                                                          result = t1514.
                                                          RETURN.
                                                        ELSE.
                                                          DATA(t1536) = VALUE abap_bool( ).
                                                          DATA(t1537) = t32.
                                                          DATA t1538 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                          CLEAR t1538.
                                                          DATA(t1539) = abap_true.
                                                          IF t1539 = abap_true.
                                                            DATA(t1540) = |DF16_RAW|.
                                                            DATA(t1541) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                            t1541->has = abap_true.
                                                            t1541->value = t1540.
                                                            t1538 = t1541.
                                                          ELSE.
                                                            DATA t1542 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                            CLEAR t1542.
                                                            t1538 = t1542.
                                                          ENDIF.
                                                          DATA(t1543) = VALUE abap_bool( ).
                                                          DATA(t1544) = VALUE abap_bool( ).
                                                          IF t1537 IS BOUND.
                                                            t1543 = t1537->has.
                                                          ENDIF.
                                                          IF t1538 IS BOUND.
                                                            t1544 = t1538->has.
                                                          ENDIF.
                                                          IF t1543 = t1544.
                                                            IF t1543 = abap_false.
                                                              t1536 = abap_true.
                                                            ELSEIF t1537->value = t1538->value.
                                                              t1536 = abap_true.
                                                            ENDIF.
                                                          ENDIF.
                                                          IF t1536 = abap_true.
                                                            DATA(t1545) = VALUE abap_bool( ).
                                                            DATA t1546 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                            DATA t1547 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                            DATA(t1548) = t1.
                                                            t1547 = t1548->length.
                                                            t1546 = t1547.
                                                            DATA t1549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                            DATA t1550 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                            CLEAR t1550.
                                                            t1549 = t1550.
                                                            DATA(t1551) = VALUE abap_bool( ).
                                                            DATA(t1552) = t1546.
                                                            IF t1552 IS INITIAL.
                                                              t1551 = abap_true.
                                                            ELSEIF t1552->has = abap_false.
                                                              t1551 = abap_true.
                                                            ENDIF.
                                                            t1545 = t1551.
                                                            IF t1545 = abap_true.
                                                              DATA t1553 TYPE REF TO zcl_lnt_unknown_type.
                                                              CLEAR t1553.
                                                              DATA t1554 TYPE string.
                                                              DATA t1555 TYPE string.
                                                              DATA t1556 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                              DATA(t1557) = t1.
                                                              t1556 = t1557->text.
                                                              t1555 = t1556->value.
                                                              DATA(t1558) = | unknown length|.
                                                              DATA(t1559) = strlen( t1555 ).
                                                              t1554 = |{ t1555 }{ t1558 }|.
                                                              DATA t1560 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                              CLEAR t1560.
                                                              DATA(t1561) = abap_true.
                                                              IF t1561 = abap_true.
                                                                DATA t1562 TYPE string.
                                                                DATA(t1563) = t1.
                                                                t1562 = t1563->info_text.
                                                                DATA(t1564) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                t1564->has = abap_true.
                                                                t1564->value = t1562.
                                                                t1560 = t1564.
                                                              ELSE.
                                                                DATA t1565 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                CLEAR t1565.
                                                                t1560 = t1565.
                                                              ENDIF.
                                                              t1553 = NEW zcl_lnt_unknown_type( i_error = t1554 i_qualified_name = t1560 ).
                                                              result = t1553.
                                                              RETURN.
                                                            ENDIF.
                                                            DATA t1566 TYPE REF TO zcl_lnt_floating_point_type.
                                                            CLEAR t1566.
                                                            DATA(t1567) = VALUE f( ).
                                                            DATA t1568 TYPE string.
                                                            DATA t1569 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                            DATA(t1570) = t1.
                                                            t1569 = t1570->length.
                                                            t1568 = t1569->value.
                                                            DATA t1571 TYPE i.
                                                            DATA t1572 TYPE i.
                                                            DATA(t1573) = VALUE string( ).
                                                            DATA t1574 TYPE abap_bool.
                                                            DATA t1575 TYPE abap_bool.
                                                            DATA t1576 TYPE int8.
                                                            DATA(t1577) = VALUE i( ).
                                                            t1571 = 0.
                                                            t1576 = 0.
                                                            t1574 = abap_false.
                                                            t1575 = abap_false.
                                                            t1572 = strlen( t1568 ).
                                                            DATA(t1578) = VALUE i( ).
                                                            DATA(t1579) = VALUE i( ).
                                                            DATA(t1580) = VALUE string( ).
                                                            WHILE t1571 < t1572.
                                                              t1579 = t1571.
                                                              t1580 = t1568+t1579(1).
                                                              DATA t1581 TYPE c LENGTH 1.
                                                              CLEAR t1581.
                                                              DATA(t1582) = VALUE xstring( ).
                                                              DATA t1583 TYPE x LENGTH 1.
                                                              CLEAR t1583.
                                                              DATA t1584 TYPE x LENGTH 1.
                                                              CLEAR t1584.
                                                              DATA(t1585) = VALUE i( ).
                                                              t1581 = t1580.
                                                              t1578 = cl_abap_conv_out_ce=>uccpi( t1581 ).
                                                              IF t1578 >= 255.
                                                                IF zlnt_builtin_code_15236315dde7 IS NOT BOUND.
                                                                  zlnt_builtin_code_15236315dde7 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                                                                ENDIF.
                                                                zlnt_builtin_code_15236315dde7->convert( EXPORTING data = t1580 IMPORTING buffer = t1582 ).
                                                                t1583 = t1582(1).
                                                                t1584 = t1582+1(1).
                                                                t1578 = t1583.
                                                                t1585 = t1584.
                                                                t1578 = t1578 + t1585 * 256.
                                                              ENDIF.
                                                              IF t1578 = 9 OR t1578 = 10 OR t1578 = 11 OR t1578 = 12 OR t1578 = 13 OR t1578 = 32 OR t1578 = 160 OR t1578 = 5760 OR t1578 = 8232 OR t1578 = 8233 OR t1578 = 8239 OR t1578 = 8287
                                                              OR t1578 = 12288 OR t1578 = 65279 OR t1578 >= 8192 AND t1578 <= 8202.
                                                                t1571 = t1571 + 1.
                                                              ELSE.
                                                                EXIT.
                                                              ENDIF.
                                                            ENDWHILE.
                                                            IF t1571 < t1572.
                                                              t1573 = t1568+t1571(1).
                                                              IF t1573 = '-' OR t1573 = '+'.
                                                                t1574 = xsdbool( t1573 = '-' ).
                                                                t1571 = t1571 + 1.
                                                              ENDIF.
                                                            ENDIF.
                                                            WHILE t1571 < t1572.
                                                              t1573 = t1568+t1571(1).
                                                              IF t1573 CN '0123456789' OR t1573 = ` `.
                                                                EXIT.
                                                              ENDIF.
                                                              t1577 = t1573.
                                                              IF t1576 > range_parse_safe_prefix OR ( t1576 = range_parse_safe_prefix AND t1577 > 1 ).
                                                                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                                                              ENDIF.
                                                              t1576 = t1576 * 10 + t1577.
                                                              t1575 = abap_true.
                                                              t1571 = t1571 + 1.
                                                            ENDWHILE.
                                                            IF t1575 = abap_false OR ( t1574 = abap_true AND t1576 = 0 ).
                                                              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                                                            ENDIF.
                                                            IF t1574 = abap_true.
                                                              t1576 = 0 - t1576.
                                                            ENDIF.
                                                            t1567 = t1576.
                                                            DATA t1586 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                            DATA(t1587) = t1.
                                                            t1586 = t1587->qualified_name.
                                                            t1566 = NEW zcl_lnt_floating_point_type( i_length = t1567 i_qualified_name = t1586 ).
                                                            result = t1566.
                                                            RETURN.
                                                          ELSE.
                                                            DATA(t1588) = VALUE abap_bool( ).
                                                            DATA(t1589) = t32.
                                                            DATA t1590 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                            CLEAR t1590.
                                                            DATA(t1591) = abap_true.
                                                            IF t1591 = abap_true.
                                                              DATA(t1592) = |DF34_RAW|.
                                                              DATA(t1593) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                              t1593->has = abap_true.
                                                              t1593->value = t1592.
                                                              t1590 = t1593.
                                                            ELSE.
                                                              DATA t1594 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                              CLEAR t1594.
                                                              t1590 = t1594.
                                                            ENDIF.
                                                            DATA(t1595) = VALUE abap_bool( ).
                                                            DATA(t1596) = VALUE abap_bool( ).
                                                            IF t1589 IS BOUND.
                                                              t1595 = t1589->has.
                                                            ENDIF.
                                                            IF t1590 IS BOUND.
                                                              t1596 = t1590->has.
                                                            ENDIF.
                                                            IF t1595 = t1596.
                                                              IF t1595 = abap_false.
                                                                t1588 = abap_true.
                                                              ELSEIF t1589->value = t1590->value.
                                                                t1588 = abap_true.
                                                              ENDIF.
                                                            ENDIF.
                                                            IF t1588 = abap_true.
                                                              DATA(t1597) = VALUE abap_bool( ).
                                                              DATA t1598 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                              DATA t1599 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                              DATA(t1600) = t1.
                                                              t1599 = t1600->length.
                                                              t1598 = t1599.
                                                              DATA t1601 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                              DATA t1602 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                              CLEAR t1602.
                                                              t1601 = t1602.
                                                              DATA(t1603) = VALUE abap_bool( ).
                                                              DATA(t1604) = t1598.
                                                              IF t1604 IS INITIAL.
                                                                t1603 = abap_true.
                                                              ELSEIF t1604->has = abap_false.
                                                                t1603 = abap_true.
                                                              ENDIF.
                                                              t1597 = t1603.
                                                              IF t1597 = abap_true.
                                                                DATA t1605 TYPE REF TO zcl_lnt_unknown_type.
                                                                CLEAR t1605.
                                                                DATA t1606 TYPE string.
                                                                DATA t1607 TYPE string.
                                                                DATA t1608 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                DATA(t1609) = t1.
                                                                t1608 = t1609->text.
                                                                t1607 = t1608->value.
                                                                DATA(t1610) = | unknown length|.
                                                                DATA(t1611) = strlen( t1607 ).
                                                                t1606 = |{ t1607 }{ t1610 }|.
                                                                DATA t1612 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                CLEAR t1612.
                                                                DATA(t1613) = abap_true.
                                                                IF t1613 = abap_true.
                                                                  DATA t1614 TYPE string.
                                                                  DATA(t1615) = t1.
                                                                  t1614 = t1615->info_text.
                                                                  DATA(t1616) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                  t1616->has = abap_true.
                                                                  t1616->value = t1614.
                                                                  t1612 = t1616.
                                                                ELSE.
                                                                  DATA t1617 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                  CLEAR t1617.
                                                                  t1612 = t1617.
                                                                ENDIF.
                                                                t1605 = NEW zcl_lnt_unknown_type( i_error = t1606 i_qualified_name = t1612 ).
                                                                result = t1605.
                                                                RETURN.
                                                              ENDIF.
                                                              DATA t1618 TYPE REF TO zcl_lnt_floating_point_type.
                                                              CLEAR t1618.
                                                              DATA(t1619) = VALUE f( ).
                                                              DATA t1620 TYPE string.
                                                              DATA t1621 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                              DATA(t1622) = t1.
                                                              t1621 = t1622->length.
                                                              t1620 = t1621->value.
                                                              DATA t1623 TYPE i.
                                                              DATA t1624 TYPE i.
                                                              DATA(t1625) = VALUE string( ).
                                                              DATA t1626 TYPE abap_bool.
                                                              DATA t1627 TYPE abap_bool.
                                                              DATA t1628 TYPE int8.
                                                              DATA(t1629) = VALUE i( ).
                                                              t1623 = 0.
                                                              t1628 = 0.
                                                              t1626 = abap_false.
                                                              t1627 = abap_false.
                                                              t1624 = strlen( t1620 ).
                                                              DATA(t1630) = VALUE i( ).
                                                              DATA(t1631) = VALUE i( ).
                                                              DATA(t1632) = VALUE string( ).
                                                              WHILE t1623 < t1624.
                                                                t1631 = t1623.
                                                                t1632 = t1620+t1631(1).
                                                                DATA t1633 TYPE c LENGTH 1.
                                                                CLEAR t1633.
                                                                DATA(t1634) = VALUE xstring( ).
                                                                DATA t1635 TYPE x LENGTH 1.
                                                                CLEAR t1635.
                                                                DATA t1636 TYPE x LENGTH 1.
                                                                CLEAR t1636.
                                                                DATA(t1637) = VALUE i( ).
                                                                t1633 = t1632.
                                                                t1630 = cl_abap_conv_out_ce=>uccpi( t1633 ).
                                                                IF t1630 >= 255.
                                                                  IF zlnt_builtin_code_15236315dde7 IS NOT BOUND.
                                                                    zlnt_builtin_code_15236315dde7 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                                                                  ENDIF.
                                                                  zlnt_builtin_code_15236315dde7->convert( EXPORTING data = t1632 IMPORTING buffer = t1634 ).
                                                                  t1635 = t1634(1).
                                                                  t1636 = t1634+1(1).
                                                                  t1630 = t1635.
                                                                  t1637 = t1636.
                                                                  t1630 = t1630 + t1637 * 256.
                                                                ENDIF.
                                                                IF t1630 = 9 OR t1630 = 10 OR t1630 = 11 OR t1630 = 12 OR t1630 = 13 OR t1630 = 32 OR t1630 = 160 OR t1630 = 5760 OR t1630 = 8232 OR t1630 = 8233 OR t1630 = 8239 OR t1630 =
                                                                8287 OR t1630 = 12288 OR t1630 = 65279 OR t1630 >= 8192 AND t1630 <= 8202.
                                                                  t1623 = t1623 + 1.
                                                                ELSE.
                                                                  EXIT.
                                                                ENDIF.
                                                              ENDWHILE.
                                                              IF t1623 < t1624.
                                                                t1625 = t1620+t1623(1).
                                                                IF t1625 = '-' OR t1625 = '+'.
                                                                  t1626 = xsdbool( t1625 = '-' ).
                                                                  t1623 = t1623 + 1.
                                                                ENDIF.
                                                              ENDIF.
                                                              WHILE t1623 < t1624.
                                                                t1625 = t1620+t1623(1).
                                                                IF t1625 CN '0123456789' OR t1625 = ` `.
                                                                  EXIT.
                                                                ENDIF.
                                                                t1629 = t1625.
                                                                IF t1628 > range_parse_safe_prefix OR ( t1628 = range_parse_safe_prefix AND t1629 > 1 ).
                                                                  RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                                                                ENDIF.
                                                                t1628 = t1628 * 10 + t1629.
                                                                t1627 = abap_true.
                                                                t1623 = t1623 + 1.
                                                              ENDWHILE.
                                                              IF t1627 = abap_false OR ( t1626 = abap_true AND t1628 = 0 ).
                                                                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                                                              ENDIF.
                                                              IF t1626 = abap_true.
                                                                t1628 = 0 - t1628.
                                                              ENDIF.
                                                              t1619 = t1628.
                                                              DATA t1638 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                              DATA(t1639) = t1.
                                                              t1638 = t1639->qualified_name.
                                                              t1618 = NEW zcl_lnt_floating_point_type( i_length = t1619 i_qualified_name = t1638 ).
                                                              result = t1618.
                                                              RETURN.
                                                            ELSE.
                                                              DATA(t1640) = VALUE abap_bool( ).
                                                              DATA(t1641) = t32.
                                                              DATA t1642 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                              CLEAR t1642.
                                                              DATA(t1643) = abap_true.
                                                              IF t1643 = abap_true.
                                                                DATA(t1644) = |FLTP|.
                                                                DATA(t1645) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                t1645->has = abap_true.
                                                                t1645->value = t1644.
                                                                t1642 = t1645.
                                                              ELSE.
                                                                DATA t1646 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                CLEAR t1646.
                                                                t1642 = t1646.
                                                              ENDIF.
                                                              DATA(t1647) = VALUE abap_bool( ).
                                                              DATA(t1648) = VALUE abap_bool( ).
                                                              IF t1641 IS BOUND.
                                                                t1647 = t1641->has.
                                                              ENDIF.
                                                              IF t1642 IS BOUND.
                                                                t1648 = t1642->has.
                                                              ENDIF.
                                                              IF t1647 = t1648.
                                                                IF t1647 = abap_false.
                                                                  t1640 = abap_true.
                                                                ELSEIF t1641->value = t1642->value.
                                                                  t1640 = abap_true.
                                                                ENDIF.
                                                              ENDIF.
                                                              IF t1640 = abap_true.
                                                                DATA(t1649) = VALUE abap_bool( ).
                                                                DATA t1650 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                DATA t1651 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                DATA(t1652) = t1.
                                                                t1651 = t1652->length.
                                                                t1650 = t1651.
                                                                DATA t1653 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                DATA t1654 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                CLEAR t1654.
                                                                t1653 = t1654.
                                                                DATA(t1655) = VALUE abap_bool( ).
                                                                DATA(t1656) = t1650.
                                                                IF t1656 IS INITIAL.
                                                                  t1655 = abap_true.
                                                                ELSEIF t1656->has = abap_false.
                                                                  t1655 = abap_true.
                                                                ENDIF.
                                                                t1649 = t1655.
                                                                IF t1649 = abap_true.
                                                                  DATA t1657 TYPE REF TO zcl_lnt_unknown_type.
                                                                  CLEAR t1657.
                                                                  DATA t1658 TYPE string.
                                                                  DATA t1659 TYPE string.
                                                                  DATA t1660 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                  DATA(t1661) = t1.
                                                                  t1660 = t1661->text.
                                                                  t1659 = t1660->value.
                                                                  DATA(t1662) = | unknown length|.
                                                                  DATA(t1663) = strlen( t1659 ).
                                                                  t1658 = |{ t1659 }{ t1662 }|.
                                                                  DATA t1664 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                  CLEAR t1664.
                                                                  DATA(t1665) = abap_true.
                                                                  IF t1665 = abap_true.
                                                                    DATA t1666 TYPE string.
                                                                    DATA(t1667) = t1.
                                                                    t1666 = t1667->info_text.
                                                                    DATA(t1668) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                    t1668->has = abap_true.
                                                                    t1668->value = t1666.
                                                                    t1664 = t1668.
                                                                  ELSE.
                                                                    DATA t1669 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                    CLEAR t1669.
                                                                    t1664 = t1669.
                                                                  ENDIF.
                                                                  t1657 = NEW zcl_lnt_unknown_type( i_error = t1658 i_qualified_name = t1664 ).
                                                                  result = t1657.
                                                                  RETURN.
                                                                ENDIF.
                                                                DATA t1670 TYPE REF TO zcl_lnt_floating_point_type.
                                                                CLEAR t1670.
                                                                DATA(t1671) = VALUE f( ).
                                                                DATA t1672 TYPE string.
                                                                DATA t1673 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                DATA(t1674) = t1.
                                                                t1673 = t1674->length.
                                                                t1672 = t1673->value.
                                                                DATA t1675 TYPE i.
                                                                DATA t1676 TYPE i.
                                                                DATA(t1677) = VALUE string( ).
                                                                DATA t1678 TYPE abap_bool.
                                                                DATA t1679 TYPE abap_bool.
                                                                DATA t1680 TYPE int8.
                                                                DATA(t1681) = VALUE i( ).
                                                                t1675 = 0.
                                                                t1680 = 0.
                                                                t1678 = abap_false.
                                                                t1679 = abap_false.
                                                                t1676 = strlen( t1672 ).
                                                                DATA(t1682) = VALUE i( ).
                                                                DATA(t1683) = VALUE i( ).
                                                                DATA(t1684) = VALUE string( ).
                                                                WHILE t1675 < t1676.
                                                                  t1683 = t1675.
                                                                  t1684 = t1672+t1683(1).
                                                                  DATA t1685 TYPE c LENGTH 1.
                                                                  CLEAR t1685.
                                                                  DATA(t1686) = VALUE xstring( ).
                                                                  DATA t1687 TYPE x LENGTH 1.
                                                                  CLEAR t1687.
                                                                  DATA t1688 TYPE x LENGTH 1.
                                                                  CLEAR t1688.
                                                                  DATA(t1689) = VALUE i( ).
                                                                  t1685 = t1684.
                                                                  t1682 = cl_abap_conv_out_ce=>uccpi( t1685 ).
                                                                  IF t1682 >= 255.
                                                                    IF zlnt_builtin_code_15236315dde7 IS NOT BOUND.
                                                                      zlnt_builtin_code_15236315dde7 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                                                                    ENDIF.
                                                                    zlnt_builtin_code_15236315dde7->convert( EXPORTING data = t1684 IMPORTING buffer = t1686 ).
                                                                    t1687 = t1686(1).
                                                                    t1688 = t1686+1(1).
                                                                    t1682 = t1687.
                                                                    t1689 = t1688.
                                                                    t1682 = t1682 + t1689 * 256.
                                                                  ENDIF.
                                                                  IF t1682 = 9 OR t1682 = 10 OR t1682 = 11 OR t1682 = 12 OR t1682 = 13 OR t1682 = 32 OR t1682 = 160 OR t1682 = 5760 OR t1682 = 8232 OR t1682 = 8233 OR t1682 = 8239 OR t1682 =
                                                                  8287 OR t1682 = 12288 OR t1682 = 65279 OR t1682 >= 8192 AND t1682 <= 8202.
                                                                    t1675 = t1675 + 1.
                                                                  ELSE.
                                                                    EXIT.
                                                                  ENDIF.
                                                                ENDWHILE.
                                                                IF t1675 < t1676.
                                                                  t1677 = t1672+t1675(1).
                                                                  IF t1677 = '-' OR t1677 = '+'.
                                                                    t1678 = xsdbool( t1677 = '-' ).
                                                                    t1675 = t1675 + 1.
                                                                  ENDIF.
                                                                ENDIF.
                                                                WHILE t1675 < t1676.
                                                                  t1677 = t1672+t1675(1).
                                                                  IF t1677 CN '0123456789' OR t1677 = ` `.
                                                                    EXIT.
                                                                  ENDIF.
                                                                  t1681 = t1677.
                                                                  IF t1680 > range_parse_safe_prefix OR ( t1680 = range_parse_safe_prefix AND t1681 > 1 ).
                                                                    RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                                                                  ENDIF.
                                                                  t1680 = t1680 * 10 + t1681.
                                                                  t1679 = abap_true.
                                                                  t1675 = t1675 + 1.
                                                                ENDWHILE.
                                                                IF t1679 = abap_false OR ( t1678 = abap_true AND t1680 = 0 ).
                                                                  RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                                                                ENDIF.
                                                                IF t1678 = abap_true.
                                                                  t1680 = 0 - t1680.
                                                                ENDIF.
                                                                t1671 = t1680.
                                                                DATA t1690 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                DATA(t1691) = t1.
                                                                t1690 = t1691->qualified_name.
                                                                t1670 = NEW zcl_lnt_floating_point_type( i_length = t1671 i_qualified_name = t1690 ).
                                                                result = t1670.
                                                                RETURN.
                                                              ELSE.
                                                                DATA(t1692) = VALUE abap_bool( ).
                                                                DATA(t1693) = t32.
                                                                DATA t1694 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                CLEAR t1694.
                                                                DATA(t1695) = abap_true.
                                                                IF t1695 = abap_true.
                                                                  DATA(t1696) = |DATN|.
                                                                  DATA(t1697) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                  t1697->has = abap_true.
                                                                  t1697->value = t1696.
                                                                  t1694 = t1697.
                                                                ELSE.
                                                                  DATA t1698 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                  CLEAR t1698.
                                                                  t1694 = t1698.
                                                                ENDIF.
                                                                DATA(t1699) = VALUE abap_bool( ).
                                                                DATA(t1700) = VALUE abap_bool( ).
                                                                IF t1693 IS BOUND.
                                                                  t1699 = t1693->has.
                                                                ENDIF.
                                                                IF t1694 IS BOUND.
                                                                  t1700 = t1694->has.
                                                                ENDIF.
                                                                IF t1699 = t1700.
                                                                  IF t1699 = abap_false.
                                                                    t1692 = abap_true.
                                                                  ELSEIF t1693->value = t1694->value.
                                                                    t1692 = abap_true.
                                                                  ENDIF.
                                                                ENDIF.
                                                                IF t1692 = abap_true.
                                                                  DATA t1701 TYPE REF TO zcl_lnt_date_type.
                                                                  CLEAR t1701.
                                                                  DATA t1702 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                  CLEAR t1702.
                                                                  DATA(t1703) = abap_true.
                                                                  IF t1703 = abap_true.
                                                                    DATA t1704 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                    DATA t1705 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                    DATA t1706 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                    DATA(t1707) = t1.
                                                                    t1706 = t1707->qualified_name.
                                                                    t1705 = t1706.
                                                                    DATA t1708 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                    DATA t1709 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                    CLEAR t1709.
                                                                    t1708 = t1709.
                                                                    DATA t1710 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                    DATA t1711 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                    CLEAR t1711.
                                                                    t1710 = t1711.
                                                                    DATA t1712 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                    DATA t1713 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                    CLEAR t1713.
                                                                    t1712 = t1713.
                                                                    DATA t1714 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                    DATA t1715 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                    CLEAR t1715.
                                                                    t1714 = t1715.
                                                                    DATA t1716 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                    DATA t1717 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                    CLEAR t1717.
                                                                    t1716 = t1717.
                                                                    t1704 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1705 i_conversion_exit = t1708 i_derived_from_constant = t1710 i_ddic_name = t1712 i_rtti_name = t1714 i_description = t1716 ).
                                                                    CREATE OBJECT t1704->zlnt_view_ownkeys_b0e8086400eb.
                                                                    t1704->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                    DATA t1718 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                    CLEAR t1718.
                                                                    IF t1704->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                                                                      t1704->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1718 ).
                                                                    ENDIF.
                                                                    CREATE OBJECT t1704->zlnt_json_ownkeys_70e5fd461788.
                                                                    t1704->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                    DATA(t1719) = |qualifiedName|.
                                                                    DATA t1720 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                    CLEAR t1720.
                                                                    IF t1704->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                                                                      t1704->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1719 p1 = t1720 ).
                                                                    ENDIF.
                                                                    t1702 = t1704.
                                                                  ELSE.
                                                                    DATA t1721 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                    CLEAR t1721.
                                                                    t1702 = t1721.
                                                                  ENDIF.
                                                                  t1701 = NEW zcl_lnt_date_type( i_input_967e = t1702 ).
                                                                  result = t1701.
                                                                  RETURN.
                                                                ELSE.
                                                                  DATA(t1722) = VALUE abap_bool( ).
                                                                  DATA(t1723) = t32.
                                                                  DATA t1724 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                  CLEAR t1724.
                                                                  DATA(t1725) = abap_true.
                                                                  IF t1725 = abap_true.
                                                                    DATA(t1726) = |DATS|.
                                                                    DATA(t1727) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                    t1727->has = abap_true.
                                                                    t1727->value = t1726.
                                                                    t1724 = t1727.
                                                                  ELSE.
                                                                    DATA t1728 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                    CLEAR t1728.
                                                                    t1724 = t1728.
                                                                  ENDIF.
                                                                  DATA(t1729) = VALUE abap_bool( ).
                                                                  DATA(t1730) = VALUE abap_bool( ).
                                                                  IF t1723 IS BOUND.
                                                                    t1729 = t1723->has.
                                                                  ENDIF.
                                                                  IF t1724 IS BOUND.
                                                                    t1730 = t1724->has.
                                                                  ENDIF.
                                                                  IF t1729 = t1730.
                                                                    IF t1729 = abap_false.
                                                                      t1722 = abap_true.
                                                                    ELSEIF t1723->value = t1724->value.
                                                                      t1722 = abap_true.
                                                                    ENDIF.
                                                                  ENDIF.
                                                                  IF t1722 = abap_true.
                                                                    DATA t1731 TYPE REF TO zcl_lnt_date_type.
                                                                    CLEAR t1731.
                                                                    DATA t1732 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                    CLEAR t1732.
                                                                    DATA(t1733) = abap_true.
                                                                    IF t1733 = abap_true.
                                                                      DATA t1734 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                      DATA t1735 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                      DATA t1736 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                      DATA(t1737) = t1.
                                                                      t1736 = t1737->qualified_name.
                                                                      t1735 = t1736.
                                                                      DATA t1738 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                      DATA t1739 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                      CLEAR t1739.
                                                                      t1738 = t1739.
                                                                      DATA t1740 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                      DATA t1741 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                      CLEAR t1741.
                                                                      t1740 = t1741.
                                                                      DATA t1742 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                      DATA t1743 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                      CLEAR t1743.
                                                                      t1742 = t1743.
                                                                      DATA t1744 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                      DATA t1745 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                      CLEAR t1745.
                                                                      t1744 = t1745.
                                                                      DATA t1746 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                      DATA t1747 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                      CLEAR t1747.
                                                                      t1746 = t1747.
                                                                      t1734 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1735 i_conversion_exit = t1738 i_derived_from_constant = t1740 i_ddic_name = t1742 i_rtti_name = t1744
                                                                      i_description = t1746 ).
                                                                      CREATE OBJECT t1734->zlnt_view_ownkeys_b0e8086400eb.
                                                                      t1734->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                      DATA t1748 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                      CLEAR t1748.
                                                                      IF t1734->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                                                                        t1734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1748 ).
                                                                      ENDIF.
                                                                      CREATE OBJECT t1734->zlnt_json_ownkeys_70e5fd461788.
                                                                      t1734->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                      DATA(t1749) = |qualifiedName|.
                                                                      DATA t1750 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                      CLEAR t1750.
                                                                      IF t1734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                                                                        t1734->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1749 p1 = t1750 ).
                                                                      ENDIF.
                                                                      t1732 = t1734.
                                                                    ELSE.
                                                                      DATA t1751 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                      CLEAR t1751.
                                                                      t1732 = t1751.
                                                                    ENDIF.
                                                                    t1731 = NEW zcl_lnt_date_type( i_input_967e = t1732 ).
                                                                    result = t1731.
                                                                    RETURN.
                                                                  ELSE.
                                                                    DATA(t1752) = VALUE abap_bool( ).
                                                                    DATA(t1753) = t32.
                                                                    DATA t1754 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                    CLEAR t1754.
                                                                    DATA(t1755) = abap_true.
                                                                    IF t1755 = abap_true.
                                                                      DATA(t1756) = |INT1|.
                                                                      DATA(t1757) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                      t1757->has = abap_true.
                                                                      t1757->value = t1756.
                                                                      t1754 = t1757.
                                                                    ELSE.
                                                                      DATA t1758 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                      CLEAR t1758.
                                                                      t1754 = t1758.
                                                                    ENDIF.
                                                                    DATA(t1759) = VALUE abap_bool( ).
                                                                    DATA(t1760) = VALUE abap_bool( ).
                                                                    IF t1753 IS BOUND.
                                                                      t1759 = t1753->has.
                                                                    ENDIF.
                                                                    IF t1754 IS BOUND.
                                                                      t1760 = t1754->has.
                                                                    ENDIF.
                                                                    IF t1759 = t1760.
                                                                      IF t1759 = abap_false.
                                                                        t1752 = abap_true.
                                                                      ELSEIF t1753->value = t1754->value.
                                                                        t1752 = abap_true.
                                                                      ENDIF.
                                                                    ENDIF.
                                                                    IF t1752 = abap_true.
                                                                      DATA t1761 TYPE REF TO zcl_lnt_integer_type.
                                                                      CLEAR t1761.
                                                                      DATA t1762 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                      CLEAR t1762.
                                                                      DATA(t1763) = abap_true.
                                                                      IF t1763 = abap_true.
                                                                        DATA t1764 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                        DATA t1765 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                        DATA t1766 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                        DATA(t1767) = t1.
                                                                        t1766 = t1767->qualified_name.
                                                                        t1765 = t1766.
                                                                        DATA t1768 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                        DATA t1769 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                        CLEAR t1769.
                                                                        t1768 = t1769.
                                                                        DATA t1770 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                        DATA t1771 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                        CLEAR t1771.
                                                                        t1770 = t1771.
                                                                        DATA t1772 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                        DATA t1773 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                        CLEAR t1773.
                                                                        t1772 = t1773.
                                                                        DATA t1774 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                        DATA t1775 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                        CLEAR t1775.
                                                                        t1774 = t1775.
                                                                        DATA t1776 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                        DATA t1777 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                        CLEAR t1777.
                                                                        t1776 = t1777.
                                                                        t1764 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1765 i_conversion_exit = t1768 i_derived_from_constant = t1770 i_ddic_name = t1772 i_rtti_name = t1774
                                                                        i_description = t1776 ).
                                                                        CREATE OBJECT t1764->zlnt_view_ownkeys_b0e8086400eb.
                                                                        t1764->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                        DATA t1778 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                        CLEAR t1778.
                                                                        IF t1764->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                                                                          t1764->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1778 ).
                                                                        ENDIF.
                                                                        CREATE OBJECT t1764->zlnt_json_ownkeys_70e5fd461788.
                                                                        t1764->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                        DATA(t1779) = |qualifiedName|.
                                                                        DATA t1780 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                        CLEAR t1780.
                                                                        IF t1764->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                                                                          t1764->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1779 p1 = t1780 ).
                                                                        ENDIF.
                                                                        t1762 = t1764.
                                                                      ELSE.
                                                                        DATA t1781 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                        CLEAR t1781.
                                                                        t1762 = t1781.
                                                                      ENDIF.
                                                                      t1761 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1762 ).
                                                                      result = t1761.
                                                                      RETURN.
                                                                    ELSE.
                                                                      DATA(t1782) = VALUE abap_bool( ).
                                                                      DATA(t1783) = t32.
                                                                      DATA t1784 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                      CLEAR t1784.
                                                                      DATA(t1785) = abap_true.
                                                                      IF t1785 = abap_true.
                                                                        DATA(t1786) = |INT2|.
                                                                        DATA(t1787) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                        t1787->has = abap_true.
                                                                        t1787->value = t1786.
                                                                        t1784 = t1787.
                                                                      ELSE.
                                                                        DATA t1788 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                        CLEAR t1788.
                                                                        t1784 = t1788.
                                                                      ENDIF.
                                                                      DATA(t1789) = VALUE abap_bool( ).
                                                                      DATA(t1790) = VALUE abap_bool( ).
                                                                      IF t1783 IS BOUND.
                                                                        t1789 = t1783->has.
                                                                      ENDIF.
                                                                      IF t1784 IS BOUND.
                                                                        t1790 = t1784->has.
                                                                      ENDIF.
                                                                      IF t1789 = t1790.
                                                                        IF t1789 = abap_false.
                                                                          t1782 = abap_true.
                                                                        ELSEIF t1783->value = t1784->value.
                                                                          t1782 = abap_true.
                                                                        ENDIF.
                                                                      ENDIF.
                                                                      IF t1782 = abap_true.
                                                                        DATA t1791 TYPE REF TO zcl_lnt_integer_type.
                                                                        CLEAR t1791.
                                                                        DATA t1792 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                        CLEAR t1792.
                                                                        DATA(t1793) = abap_true.
                                                                        IF t1793 = abap_true.
                                                                          DATA t1794 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                          DATA t1795 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                          DATA t1796 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                          DATA(t1797) = t1.
                                                                          t1796 = t1797->qualified_name.
                                                                          t1795 = t1796.
                                                                          DATA t1798 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                          DATA t1799 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                          CLEAR t1799.
                                                                          t1798 = t1799.
                                                                          DATA t1800 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                          DATA t1801 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                          CLEAR t1801.
                                                                          t1800 = t1801.
                                                                          DATA t1802 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                          DATA t1803 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                          CLEAR t1803.
                                                                          t1802 = t1803.
                                                                          DATA t1804 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                          DATA t1805 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                          CLEAR t1805.
                                                                          t1804 = t1805.
                                                                          DATA t1806 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                          DATA t1807 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                          CLEAR t1807.
                                                                          t1806 = t1807.
                                                                          t1794 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1795 i_conversion_exit = t1798 i_derived_from_constant = t1800 i_ddic_name = t1802 i_rtti_name = t1804
                                                                          i_description = t1806 ).
                                                                          CREATE OBJECT t1794->zlnt_view_ownkeys_b0e8086400eb.
                                                                          t1794->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                          DATA t1808 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                          CLEAR t1808.
                                                                          IF t1794->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                                                                            t1794->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1808 ).
                                                                          ENDIF.
                                                                          CREATE OBJECT t1794->zlnt_json_ownkeys_70e5fd461788.
                                                                          t1794->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                          DATA(t1809) = |qualifiedName|.
                                                                          DATA t1810 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                          CLEAR t1810.
                                                                          IF t1794->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                                                                            t1794->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1809 p1 = t1810 ).
                                                                          ENDIF.
                                                                          t1792 = t1794.
                                                                        ELSE.
                                                                          DATA t1811 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                          CLEAR t1811.
                                                                          t1792 = t1811.
                                                                        ENDIF.
                                                                        t1791 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1792 ).
                                                                        result = t1791.
                                                                        RETURN.
                                                                      ELSE.
                                                                        DATA(t1812) = VALUE abap_bool( ).
                                                                        DATA(t1813) = t32.
                                                                        DATA t1814 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                        CLEAR t1814.
                                                                        DATA(t1815) = abap_true.
                                                                        IF t1815 = abap_true.
                                                                          DATA(t1816) = |INT4|.
                                                                          DATA(t1817) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                          t1817->has = abap_true.
                                                                          t1817->value = t1816.
                                                                          t1814 = t1817.
                                                                        ELSE.
                                                                          DATA t1818 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                          CLEAR t1818.
                                                                          t1814 = t1818.
                                                                        ENDIF.
                                                                        DATA(t1819) = VALUE abap_bool( ).
                                                                        DATA(t1820) = VALUE abap_bool( ).
                                                                        IF t1813 IS BOUND.
                                                                          t1819 = t1813->has.
                                                                        ENDIF.
                                                                        IF t1814 IS BOUND.
                                                                          t1820 = t1814->has.
                                                                        ENDIF.
                                                                        IF t1819 = t1820.
                                                                          IF t1819 = abap_false.
                                                                            t1812 = abap_true.
                                                                          ELSEIF t1813->value = t1814->value.
                                                                            t1812 = abap_true.
                                                                          ENDIF.
                                                                        ENDIF.
                                                                        IF t1812 = abap_true.
                                                                          DATA t1821 TYPE REF TO zcl_lnt_integer_type.
                                                                          CLEAR t1821.
                                                                          DATA t1822 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                          CLEAR t1822.
                                                                          DATA(t1823) = abap_true.
                                                                          IF t1823 = abap_true.
                                                                            DATA t1824 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                            DATA t1825 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                            DATA t1826 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                            DATA(t1827) = t1.
                                                                            t1826 = t1827->qualified_name.
                                                                            t1825 = t1826.
                                                                            DATA t1828 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                            DATA t1829 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                            CLEAR t1829.
                                                                            t1828 = t1829.
                                                                            DATA t1830 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                            DATA t1831 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                            CLEAR t1831.
                                                                            t1830 = t1831.
                                                                            DATA t1832 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                            DATA t1833 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                            CLEAR t1833.
                                                                            t1832 = t1833.
                                                                            DATA t1834 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                            DATA t1835 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                            CLEAR t1835.
                                                                            t1834 = t1835.
                                                                            DATA t1836 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                            DATA t1837 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                            CLEAR t1837.
                                                                            t1836 = t1837.
                                                                            t1824 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1825 i_conversion_exit = t1828 i_derived_from_constant = t1830 i_ddic_name = t1832 i_rtti_name = t1834
                                                                            i_description = t1836 ).
                                                                            CREATE OBJECT t1824->zlnt_view_ownkeys_b0e8086400eb.
                                                                            t1824->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                            DATA t1838 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                            CLEAR t1838.
                                                                            IF t1824->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                                                                              t1824->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1838 ).
                                                                            ENDIF.
                                                                            CREATE OBJECT t1824->zlnt_json_ownkeys_70e5fd461788.
                                                                            t1824->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                            DATA(t1839) = |qualifiedName|.
                                                                            DATA t1840 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                            CLEAR t1840.
                                                                            IF t1824->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                                                                              t1824->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1839 p1 = t1840 ).
                                                                            ENDIF.
                                                                            t1822 = t1824.
                                                                          ELSE.
                                                                            DATA t1841 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                            CLEAR t1841.
                                                                            t1822 = t1841.
                                                                          ENDIF.
                                                                          t1821 = zcl_lnt_integer_type=>get_db65( i_input_967e = t1822 ).
                                                                          result = t1821.
                                                                          RETURN.
                                                                        ELSE.
                                                                          DATA(t1842) = VALUE abap_bool( ).
                                                                          DATA(t1843) = t32.
                                                                          DATA t1844 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                          CLEAR t1844.
                                                                          DATA(t1845) = abap_true.
                                                                          IF t1845 = abap_true.
                                                                            DATA(t1846) = |INT8|.
                                                                            DATA(t1847) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                            t1847->has = abap_true.
                                                                            t1847->value = t1846.
                                                                            t1844 = t1847.
                                                                          ELSE.
                                                                            DATA t1848 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                            CLEAR t1848.
                                                                            t1844 = t1848.
                                                                          ENDIF.
                                                                          DATA(t1849) = VALUE abap_bool( ).
                                                                          DATA(t1850) = VALUE abap_bool( ).
                                                                          IF t1843 IS BOUND.
                                                                            t1849 = t1843->has.
                                                                          ENDIF.
                                                                          IF t1844 IS BOUND.
                                                                            t1850 = t1844->has.
                                                                          ENDIF.
                                                                          IF t1849 = t1850.
                                                                            IF t1849 = abap_false.
                                                                              t1842 = abap_true.
                                                                            ELSEIF t1843->value = t1844->value.
                                                                              t1842 = abap_true.
                                                                            ENDIF.
                                                                          ENDIF.
                                                                          IF t1842 = abap_true.
                                                                            DATA t1851 TYPE REF TO zcl_lnt_integer8_type.
                                                                            CLEAR t1851.
                                                                            DATA t1852 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                            CLEAR t1852.
                                                                            DATA(t1853) = abap_true.
                                                                            IF t1853 = abap_true.
                                                                              DATA t1854 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                              DATA t1855 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                              DATA t1856 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                              DATA(t1857) = t1.
                                                                              t1856 = t1857->qualified_name.
                                                                              t1855 = t1856.
                                                                              DATA t1858 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                              DATA t1859 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                              CLEAR t1859.
                                                                              t1858 = t1859.
                                                                              DATA t1860 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                              DATA t1861 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                              CLEAR t1861.
                                                                              t1860 = t1861.
                                                                              DATA t1862 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                              DATA t1863 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                              CLEAR t1863.
                                                                              t1862 = t1863.
                                                                              DATA t1864 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                              DATA t1865 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                              CLEAR t1865.
                                                                              t1864 = t1865.
                                                                              DATA t1866 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                              DATA t1867 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                              CLEAR t1867.
                                                                              t1866 = t1867.
                                                                              t1854 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1855 i_conversion_exit = t1858 i_derived_from_constant = t1860 i_ddic_name = t1862 i_rtti_name = t1864
                                                                              i_description = t1866 ).
                                                                              CREATE OBJECT t1854->zlnt_view_ownkeys_b0e8086400eb.
                                                                              t1854->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                              DATA t1868 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                              CLEAR t1868.
                                                                              IF t1854->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                                                                                t1854->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1868 ).
                                                                              ENDIF.
                                                                              CREATE OBJECT t1854->zlnt_json_ownkeys_70e5fd461788.
                                                                              t1854->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                              DATA(t1869) = |qualifiedName|.
                                                                              DATA t1870 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                              CLEAR t1870.
                                                                              IF t1854->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                                                                                t1854->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1869 p1 = t1870 ).
                                                                              ENDIF.
                                                                              t1852 = t1854.
                                                                            ELSE.
                                                                              DATA t1871 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                              CLEAR t1871.
                                                                              t1852 = t1871.
                                                                            ENDIF.
                                                                            t1851 = NEW zcl_lnt_integer8_type( i_input_967e = t1852 ).
                                                                            result = t1851.
                                                                            RETURN.
                                                                          ELSE.
                                                                            DATA(t1872) = VALUE abap_bool( ).
                                                                            DATA(t1873) = t32.
                                                                            DATA t1874 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                            CLEAR t1874.
                                                                            DATA(t1875) = abap_true.
                                                                            IF t1875 = abap_true.
                                                                              DATA(t1876) = |SSTR|.
                                                                              DATA(t1877) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                              t1877->has = abap_true.
                                                                              t1877->value = t1876.
                                                                              t1874 = t1877.
                                                                            ELSE.
                                                                              DATA t1878 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                              CLEAR t1878.
                                                                              t1874 = t1878.
                                                                            ENDIF.
                                                                            DATA(t1879) = VALUE abap_bool( ).
                                                                            DATA(t1880) = VALUE abap_bool( ).
                                                                            IF t1873 IS BOUND.
                                                                              t1879 = t1873->has.
                                                                            ENDIF.
                                                                            IF t1874 IS BOUND.
                                                                              t1880 = t1874->has.
                                                                            ENDIF.
                                                                            IF t1879 = t1880.
                                                                              IF t1879 = abap_false.
                                                                                t1872 = abap_true.
                                                                              ELSEIF t1873->value = t1874->value.
                                                                                t1872 = abap_true.
                                                                              ENDIF.
                                                                            ENDIF.
                                                                            IF t1872 = abap_true.
                                                                              DATA t1881 TYPE REF TO zcl_lnt_string_type.
                                                                              CLEAR t1881.
                                                                              DATA t1882 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                              CLEAR t1882.
                                                                              DATA(t1883) = abap_true.
                                                                              IF t1883 = abap_true.
                                                                                DATA t1884 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                                DATA t1885 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                DATA t1886 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                DATA(t1887) = t1.
                                                                                t1886 = t1887->qualified_name.
                                                                                t1885 = t1886.
                                                                                DATA t1888 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                DATA t1889 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                CLEAR t1889.
                                                                                t1888 = t1889.
                                                                                DATA t1890 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                                DATA t1891 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                                CLEAR t1891.
                                                                                t1890 = t1891.
                                                                                DATA t1892 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                DATA t1893 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                CLEAR t1893.
                                                                                t1892 = t1893.
                                                                                DATA t1894 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                DATA t1895 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                CLEAR t1895.
                                                                                t1894 = t1895.
                                                                                DATA t1896 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                DATA t1897 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                CLEAR t1897.
                                                                                t1896 = t1897.
                                                                                t1884 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1885 i_conversion_exit = t1888 i_derived_from_constant = t1890 i_ddic_name = t1892 i_rtti_name =
                                                                                t1894 i_description = t1896 ).
                                                                                CREATE OBJECT t1884->zlnt_view_ownkeys_b0e8086400eb.
                                                                                t1884->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                                DATA t1898 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                                CLEAR t1898.
                                                                                IF t1884->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                                                                                  t1884->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1898 ).
                                                                                ENDIF.
                                                                                CREATE OBJECT t1884->zlnt_json_ownkeys_70e5fd461788.
                                                                                t1884->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                                DATA(t1899) = |qualifiedName|.
                                                                                DATA t1900 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                                CLEAR t1900.
                                                                                IF t1884->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                                                                                  t1884->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1899 p1 = t1900 ).
                                                                                ENDIF.
                                                                                t1882 = t1884.
                                                                              ELSE.
                                                                                DATA t1901 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                                CLEAR t1901.
                                                                                t1882 = t1901.
                                                                              ENDIF.
                                                                              t1881 = zcl_lnt_string_type=>get_db65( i_input_967e = t1882 ).
                                                                              result = t1881.
                                                                              RETURN.
                                                                            ELSE.
                                                                              DATA(t1902) = VALUE abap_bool( ).
                                                                              DATA(t1903) = t32.
                                                                              DATA t1904 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                              CLEAR t1904.
                                                                              DATA(t1905) = abap_true.
                                                                              IF t1905 = abap_true.
                                                                                DATA(t1906) = |SSTRING|.
                                                                                DATA(t1907) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                t1907->has = abap_true.
                                                                                t1907->value = t1906.
                                                                                t1904 = t1907.
                                                                              ELSE.
                                                                                DATA t1908 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                CLEAR t1908.
                                                                                t1904 = t1908.
                                                                              ENDIF.
                                                                              DATA(t1909) = VALUE abap_bool( ).
                                                                              DATA(t1910) = VALUE abap_bool( ).
                                                                              IF t1903 IS BOUND.
                                                                                t1909 = t1903->has.
                                                                              ENDIF.
                                                                              IF t1904 IS BOUND.
                                                                                t1910 = t1904->has.
                                                                              ENDIF.
                                                                              IF t1909 = t1910.
                                                                                IF t1909 = abap_false.
                                                                                  t1902 = abap_true.
                                                                                ELSEIF t1903->value = t1904->value.
                                                                                  t1902 = abap_true.
                                                                                ENDIF.
                                                                              ENDIF.
                                                                              IF t1902 = abap_true.
                                                                                DATA t1911 TYPE REF TO zcl_lnt_string_type.
                                                                                CLEAR t1911.
                                                                                DATA t1912 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                                CLEAR t1912.
                                                                                DATA(t1913) = abap_true.
                                                                                IF t1913 = abap_true.
                                                                                  DATA t1914 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                                  DATA t1915 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                  DATA t1916 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                  DATA(t1917) = t1.
                                                                                  t1916 = t1917->qualified_name.
                                                                                  t1915 = t1916.
                                                                                  DATA t1918 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                  DATA t1919 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                  CLEAR t1919.
                                                                                  t1918 = t1919.
                                                                                  DATA t1920 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                                  DATA t1921 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                                  CLEAR t1921.
                                                                                  t1920 = t1921.
                                                                                  DATA t1922 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                  DATA t1923 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                  CLEAR t1923.
                                                                                  t1922 = t1923.
                                                                                  DATA t1924 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                  DATA t1925 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                  CLEAR t1925.
                                                                                  t1924 = t1925.
                                                                                  DATA t1926 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                  DATA t1927 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                  CLEAR t1927.
                                                                                  t1926 = t1927.
                                                                                  t1914 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1915 i_conversion_exit = t1918 i_derived_from_constant = t1920 i_ddic_name = t1922 i_rtti_name =
                                                                                  t1924 i_description = t1926 ).
                                                                                  CREATE OBJECT t1914->zlnt_view_ownkeys_b0e8086400eb.
                                                                                  t1914->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                                  DATA t1928 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                                  CLEAR t1928.
                                                                                  IF t1914->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                                                                                    t1914->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1928 ).
                                                                                  ENDIF.
                                                                                  CREATE OBJECT t1914->zlnt_json_ownkeys_70e5fd461788.
                                                                                  t1914->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                                  DATA(t1929) = |qualifiedName|.
                                                                                  DATA t1930 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                                  CLEAR t1930.
                                                                                  IF t1914->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                                                                                    t1914->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1929 p1 = t1930 ).
                                                                                  ENDIF.
                                                                                  t1912 = t1914.
                                                                                ELSE.
                                                                                  DATA t1931 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                                  CLEAR t1931.
                                                                                  t1912 = t1931.
                                                                                ENDIF.
                                                                                t1911 = zcl_lnt_string_type=>get_db65( i_input_967e = t1912 ).
                                                                                result = t1911.
                                                                                RETURN.
                                                                              ELSE.
                                                                                DATA(t1932) = VALUE abap_bool( ).
                                                                                DATA(t1933) = t32.
                                                                                DATA t1934 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                CLEAR t1934.
                                                                                DATA(t1935) = abap_true.
                                                                                IF t1935 = abap_true.
                                                                                  DATA(t1936) = |STRG|.
                                                                                  DATA(t1937) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                  t1937->has = abap_true.
                                                                                  t1937->value = t1936.
                                                                                  t1934 = t1937.
                                                                                ELSE.
                                                                                  DATA t1938 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                  CLEAR t1938.
                                                                                  t1934 = t1938.
                                                                                ENDIF.
                                                                                DATA(t1939) = VALUE abap_bool( ).
                                                                                DATA(t1940) = VALUE abap_bool( ).
                                                                                IF t1933 IS BOUND.
                                                                                  t1939 = t1933->has.
                                                                                ENDIF.
                                                                                IF t1934 IS BOUND.
                                                                                  t1940 = t1934->has.
                                                                                ENDIF.
                                                                                IF t1939 = t1940.
                                                                                  IF t1939 = abap_false.
                                                                                    t1932 = abap_true.
                                                                                  ELSEIF t1933->value = t1934->value.
                                                                                    t1932 = abap_true.
                                                                                  ENDIF.
                                                                                ENDIF.
                                                                                IF t1932 = abap_true.
                                                                                  DATA t1941 TYPE REF TO zcl_lnt_string_type.
                                                                                  CLEAR t1941.
                                                                                  DATA t1942 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                                  CLEAR t1942.
                                                                                  DATA(t1943) = abap_true.
                                                                                  IF t1943 = abap_true.
                                                                                    DATA t1944 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                                    DATA t1945 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                    DATA t1946 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                    DATA(t1947) = t1.
                                                                                    t1946 = t1947->qualified_name.
                                                                                    t1945 = t1946.
                                                                                    DATA t1948 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                    DATA t1949 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                    CLEAR t1949.
                                                                                    t1948 = t1949.
                                                                                    DATA t1950 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                                    DATA t1951 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                                    CLEAR t1951.
                                                                                    t1950 = t1951.
                                                                                    DATA t1952 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                    DATA t1953 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                    CLEAR t1953.
                                                                                    t1952 = t1953.
                                                                                    DATA t1954 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                    DATA t1955 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                    CLEAR t1955.
                                                                                    t1954 = t1955.
                                                                                    DATA t1956 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                    DATA t1957 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                    CLEAR t1957.
                                                                                    t1956 = t1957.
                                                                                    t1944 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1945 i_conversion_exit = t1948 i_derived_from_constant = t1950 i_ddic_name = t1952 i_rtti_name =
                                                                                    t1954 i_description = t1956 ).
                                                                                    CREATE OBJECT t1944->zlnt_view_ownkeys_b0e8086400eb.
                                                                                    t1944->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                                    DATA t1958 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                                    CLEAR t1958.
                                                                                    IF t1944->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                                                                                      t1944->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1958 ).
                                                                                    ENDIF.
                                                                                    CREATE OBJECT t1944->zlnt_json_ownkeys_70e5fd461788.
                                                                                    t1944->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                                    DATA(t1959) = |qualifiedName|.
                                                                                    DATA t1960 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                                    CLEAR t1960.
                                                                                    IF t1944->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                                                                                      t1944->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1959 p1 = t1960 ).
                                                                                    ENDIF.
                                                                                    t1942 = t1944.
                                                                                  ELSE.
                                                                                    DATA t1961 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                                    CLEAR t1961.
                                                                                    t1942 = t1961.
                                                                                  ENDIF.
                                                                                  t1941 = zcl_lnt_string_type=>get_db65( i_input_967e = t1942 ).
                                                                                  result = t1941.
                                                                                  RETURN.
                                                                                ELSE.
                                                                                  DATA(t1962) = VALUE abap_bool( ).
                                                                                  DATA(t1963) = t32.
                                                                                  DATA t1964 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                  CLEAR t1964.
                                                                                  DATA(t1965) = abap_true.
                                                                                  IF t1965 = abap_true.
                                                                                    DATA(t1966) = |STRING|.
                                                                                    DATA(t1967) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                    t1967->has = abap_true.
                                                                                    t1967->value = t1966.
                                                                                    t1964 = t1967.
                                                                                  ELSE.
                                                                                    DATA t1968 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                    CLEAR t1968.
                                                                                    t1964 = t1968.
                                                                                  ENDIF.
                                                                                  DATA(t1969) = VALUE abap_bool( ).
                                                                                  DATA(t1970) = VALUE abap_bool( ).
                                                                                  IF t1963 IS BOUND.
                                                                                    t1969 = t1963->has.
                                                                                  ENDIF.
                                                                                  IF t1964 IS BOUND.
                                                                                    t1970 = t1964->has.
                                                                                  ENDIF.
                                                                                  IF t1969 = t1970.
                                                                                    IF t1969 = abap_false.
                                                                                      t1962 = abap_true.
                                                                                    ELSEIF t1963->value = t1964->value.
                                                                                      t1962 = abap_true.
                                                                                    ENDIF.
                                                                                  ENDIF.
                                                                                  IF t1962 = abap_true.
                                                                                    DATA t1971 TYPE REF TO zcl_lnt_string_type.
                                                                                    CLEAR t1971.
                                                                                    DATA t1972 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                                    CLEAR t1972.
                                                                                    DATA(t1973) = abap_true.
                                                                                    IF t1973 = abap_true.
                                                                                      DATA t1974 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                                      DATA t1975 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                      DATA t1976 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                      DATA(t1977) = t1.
                                                                                      t1976 = t1977->qualified_name.
                                                                                      t1975 = t1976.
                                                                                      DATA t1978 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                      DATA t1979 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                      CLEAR t1979.
                                                                                      t1978 = t1979.
                                                                                      DATA t1980 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                                      DATA t1981 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                                      CLEAR t1981.
                                                                                      t1980 = t1981.
                                                                                      DATA t1982 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                      DATA t1983 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                      CLEAR t1983.
                                                                                      t1982 = t1983.
                                                                                      DATA t1984 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                      DATA t1985 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                      CLEAR t1985.
                                                                                      t1984 = t1985.
                                                                                      DATA t1986 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                      DATA t1987 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                      CLEAR t1987.
                                                                                      t1986 = t1987.
                                                                                      t1974 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1975 i_conversion_exit = t1978 i_derived_from_constant = t1980 i_ddic_name = t1982 i_rtti_name
                                                                                      = t1984 i_description = t1986 ).
                                                                                      CREATE OBJECT t1974->zlnt_view_ownkeys_b0e8086400eb.
                                                                                      t1974->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                                      DATA t1988 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                                      CLEAR t1988.
                                                                                      IF t1974->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                                                                                        t1974->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1988 ).
                                                                                      ENDIF.
                                                                                      CREATE OBJECT t1974->zlnt_json_ownkeys_70e5fd461788.
                                                                                      t1974->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                                      DATA(t1989) = |qualifiedName|.
                                                                                      DATA t1990 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                                      CLEAR t1990.
                                                                                      IF t1974->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                                                                                        t1974->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1989 p1 = t1990 ).
                                                                                      ENDIF.
                                                                                      t1972 = t1974.
                                                                                    ELSE.
                                                                                      DATA t1991 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                                      CLEAR t1991.
                                                                                      t1972 = t1991.
                                                                                    ENDIF.
                                                                                    t1971 = zcl_lnt_string_type=>get_db65( i_input_967e = t1972 ).
                                                                                    result = t1971.
                                                                                    RETURN.
                                                                                  ELSE.
                                                                                    DATA(t1992) = VALUE abap_bool( ).
                                                                                    DATA(t1993) = t32.
                                                                                    DATA t1994 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                    CLEAR t1994.
                                                                                    DATA(t1995) = abap_true.
                                                                                    IF t1995 = abap_true.
                                                                                      DATA(t1996) = |RSTR|.
                                                                                      DATA(t1997) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                      t1997->has = abap_true.
                                                                                      t1997->value = t1996.
                                                                                      t1994 = t1997.
                                                                                    ELSE.
                                                                                      DATA t1998 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                      CLEAR t1998.
                                                                                      t1994 = t1998.
                                                                                    ENDIF.
                                                                                    DATA(t1999) = VALUE abap_bool( ).
                                                                                    DATA(t2000) = VALUE abap_bool( ).
                                                                                    IF t1993 IS BOUND.
                                                                                      t1999 = t1993->has.
                                                                                    ENDIF.
                                                                                    IF t1994 IS BOUND.
                                                                                      t2000 = t1994->has.
                                                                                    ENDIF.
                                                                                    IF t1999 = t2000.
                                                                                      IF t1999 = abap_false.
                                                                                        t1992 = abap_true.
                                                                                      ELSEIF t1993->value = t1994->value.
                                                                                        t1992 = abap_true.
                                                                                      ENDIF.
                                                                                    ENDIF.
                                                                                    IF t1992 = abap_true.
                                                                                      DATA t2001 TYPE REF TO zcl_lnt_x_string_type.
                                                                                      CLEAR t2001.
                                                                                      DATA t2002 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                                      CLEAR t2002.
                                                                                      DATA(t2003) = abap_true.
                                                                                      IF t2003 = abap_true.
                                                                                        DATA t2004 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                                        DATA t2005 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                        DATA t2006 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                        DATA(t2007) = t1.
                                                                                        t2006 = t2007->qualified_name.
                                                                                        t2005 = t2006.
                                                                                        DATA t2008 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                        DATA t2009 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                        CLEAR t2009.
                                                                                        t2008 = t2009.
                                                                                        DATA t2010 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                                        DATA t2011 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                                        CLEAR t2011.
                                                                                        t2010 = t2011.
                                                                                        DATA t2012 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                        DATA t2013 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                        CLEAR t2013.
                                                                                        t2012 = t2013.
                                                                                        DATA t2014 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                        DATA t2015 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                        CLEAR t2015.
                                                                                        t2014 = t2015.
                                                                                        DATA t2016 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                        DATA t2017 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                        CLEAR t2017.
                                                                                        t2016 = t2017.
                                                                                        t2004 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2005 i_conversion_exit = t2008 i_derived_from_constant = t2010 i_ddic_name = t2012
                                                                                        i_rtti_name = t2014 i_description = t2016 ).
                                                                                        CREATE OBJECT t2004->zlnt_view_ownkeys_b0e8086400eb.
                                                                                        t2004->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                                        DATA t2018 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                                        CLEAR t2018.
                                                                                        IF t2004->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                                                                                          t2004->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t2018 ).
                                                                                        ENDIF.
                                                                                        CREATE OBJECT t2004->zlnt_json_ownkeys_70e5fd461788.
                                                                                        t2004->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                                        DATA(t2019) = |qualifiedName|.
                                                                                        DATA t2020 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                                        CLEAR t2020.
                                                                                        IF t2004->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                                                                                          t2004->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2019 p1 = t2020 ).
                                                                                        ENDIF.
                                                                                        t2002 = t2004.
                                                                                      ELSE.
                                                                                        DATA t2021 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                                        CLEAR t2021.
                                                                                        t2002 = t2021.
                                                                                      ENDIF.
                                                                                      t2001 = zcl_lnt_x_string_type=>get_db65( i_input_967e = t2002 ).
                                                                                      result = t2001.
                                                                                      RETURN.
                                                                                    ELSE.
                                                                                      DATA(t2022) = VALUE abap_bool( ).
                                                                                      DATA(t2023) = t32.
                                                                                      DATA t2024 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                      CLEAR t2024.
                                                                                      DATA(t2025) = abap_true.
                                                                                      IF t2025 = abap_true.
                                                                                        DATA(t2026) = |RAWSTRING|.
                                                                                        DATA(t2027) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                        t2027->has = abap_true.
                                                                                        t2027->value = t2026.
                                                                                        t2024 = t2027.
                                                                                      ELSE.
                                                                                        DATA t2028 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                        CLEAR t2028.
                                                                                        t2024 = t2028.
                                                                                      ENDIF.
                                                                                      DATA(t2029) = VALUE abap_bool( ).
                                                                                      DATA(t2030) = VALUE abap_bool( ).
                                                                                      IF t2023 IS BOUND.
                                                                                        t2029 = t2023->has.
                                                                                      ENDIF.
                                                                                      IF t2024 IS BOUND.
                                                                                        t2030 = t2024->has.
                                                                                      ENDIF.
                                                                                      IF t2029 = t2030.
                                                                                        IF t2029 = abap_false.
                                                                                          t2022 = abap_true.
                                                                                        ELSEIF t2023->value = t2024->value.
                                                                                          t2022 = abap_true.
                                                                                        ENDIF.
                                                                                      ENDIF.
                                                                                      IF t2022 = abap_true.
                                                                                        DATA t2031 TYPE REF TO zcl_lnt_x_string_type.
                                                                                        CLEAR t2031.
                                                                                        DATA t2032 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                                        CLEAR t2032.
                                                                                        DATA(t2033) = abap_true.
                                                                                        IF t2033 = abap_true.
                                                                                          DATA t2034 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                                          DATA t2035 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                          DATA t2036 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                          DATA(t2037) = t1.
                                                                                          t2036 = t2037->qualified_name.
                                                                                          t2035 = t2036.
                                                                                          DATA t2038 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                          DATA t2039 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                          CLEAR t2039.
                                                                                          t2038 = t2039.
                                                                                          DATA t2040 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                                          DATA t2041 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                                          CLEAR t2041.
                                                                                          t2040 = t2041.
                                                                                          DATA t2042 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                          DATA t2043 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                          CLEAR t2043.
                                                                                          t2042 = t2043.
                                                                                          DATA t2044 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                          DATA t2045 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                          CLEAR t2045.
                                                                                          t2044 = t2045.
                                                                                          DATA t2046 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                          DATA t2047 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                          CLEAR t2047.
                                                                                          t2046 = t2047.
                                                                                          t2034 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2035 i_conversion_exit = t2038 i_derived_from_constant = t2040 i_ddic_name = t2042
                                                                                          i_rtti_name = t2044 i_description = t2046 ).
                                                                                          CREATE OBJECT t2034->zlnt_view_ownkeys_b0e8086400eb.
                                                                                          t2034->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                                          DATA t2048 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                                          CLEAR t2048.
                                                                                          IF t2034->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                                                                                            t2034->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t2048 ).
                                                                                          ENDIF.
                                                                                          CREATE OBJECT t2034->zlnt_json_ownkeys_70e5fd461788.
                                                                                          t2034->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                                          DATA(t2049) = |qualifiedName|.
                                                                                          DATA t2050 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                                          CLEAR t2050.
                                                                                          IF t2034->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                                                                                            t2034->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2049 p1 = t2050 ).
                                                                                          ENDIF.
                                                                                          t2032 = t2034.
                                                                                        ELSE.
                                                                                          DATA t2051 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                                          CLEAR t2051.
                                                                                          t2032 = t2051.
                                                                                        ENDIF.
                                                                                        t2031 = zcl_lnt_x_string_type=>get_db65( i_input_967e = t2032 ).
                                                                                        result = t2031.
                                                                                        RETURN.
                                                                                      ELSE.
                                                                                        DATA(t2052) = VALUE abap_bool( ).
                                                                                        DATA(t2053) = t32.
                                                                                        DATA t2054 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                        CLEAR t2054.
                                                                                        DATA(t2055) = abap_true.
                                                                                        IF t2055 = abap_true.
                                                                                          DATA(t2056) = |GEOM_EWKB|.
                                                                                          DATA(t2057) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                          t2057->has = abap_true.
                                                                                          t2057->value = t2056.
                                                                                          t2054 = t2057.
                                                                                        ELSE.
                                                                                          DATA t2058 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                          CLEAR t2058.
                                                                                          t2054 = t2058.
                                                                                        ENDIF.
                                                                                        DATA(t2059) = VALUE abap_bool( ).
                                                                                        DATA(t2060) = VALUE abap_bool( ).
                                                                                        IF t2053 IS BOUND.
                                                                                          t2059 = t2053->has.
                                                                                        ENDIF.
                                                                                        IF t2054 IS BOUND.
                                                                                          t2060 = t2054->has.
                                                                                        ENDIF.
                                                                                        IF t2059 = t2060.
                                                                                          IF t2059 = abap_false.
                                                                                            t2052 = abap_true.
                                                                                          ELSEIF t2053->value = t2054->value.
                                                                                            t2052 = abap_true.
                                                                                          ENDIF.
                                                                                        ENDIF.
                                                                                        IF t2052 = abap_true.
                                                                                          DATA t2061 TYPE REF TO zcl_lnt_x_string_type.
                                                                                          CLEAR t2061.
                                                                                          DATA t2062 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                                          CLEAR t2062.
                                                                                          DATA(t2063) = abap_true.
                                                                                          IF t2063 = abap_true.
                                                                                            DATA t2064 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                                            DATA t2065 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                            DATA t2066 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                            DATA(t2067) = t1.
                                                                                            t2066 = t2067->qualified_name.
                                                                                            t2065 = t2066.
                                                                                            DATA t2068 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                            DATA t2069 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                            CLEAR t2069.
                                                                                            t2068 = t2069.
                                                                                            DATA t2070 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                                            DATA t2071 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                                            CLEAR t2071.
                                                                                            t2070 = t2071.
                                                                                            DATA t2072 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                            DATA t2073 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                            CLEAR t2073.
                                                                                            t2072 = t2073.
                                                                                            DATA t2074 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                            DATA t2075 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                            CLEAR t2075.
                                                                                            t2074 = t2075.
                                                                                            DATA t2076 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                            DATA t2077 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                            CLEAR t2077.
                                                                                            t2076 = t2077.
                                                                                            t2064 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2065 i_conversion_exit = t2068 i_derived_from_constant = t2070 i_ddic_name = t2072
                                                                                            i_rtti_name = t2074 i_description = t2076 ).
                                                                                            CREATE OBJECT t2064->zlnt_view_ownkeys_b0e8086400eb.
                                                                                            t2064->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                                            DATA t2078 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                                            CLEAR t2078.
                                                                                            IF t2064->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                                                                                              t2064->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t2078 ).
                                                                                            ENDIF.
                                                                                            CREATE OBJECT t2064->zlnt_json_ownkeys_70e5fd461788.
                                                                                            t2064->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                                            DATA(t2079) = |qualifiedName|.
                                                                                            DATA t2080 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                                            CLEAR t2080.
                                                                                            IF t2064->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                                                                                              t2064->zlnt_json_ownkeys_70e5fd461788->put( p0 = t2079 p1 = t2080 ).
                                                                                            ENDIF.
                                                                                            t2062 = t2064.
                                                                                          ELSE.
                                                                                            DATA t2081 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                                            CLEAR t2081.
                                                                                            t2062 = t2081.
                                                                                          ENDIF.
                                                                                          t2061 = zcl_lnt_x_string_type=>get_db65( i_input_967e = t2062 ).
                                                                                          result = t2061.
                                                                                          RETURN.
                                                                                        ELSE.
                                                                                          DATA(t2082) = VALUE abap_bool( ).
                                                                                          DATA(t2083) = t32.
                                                                                          DATA t2084 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                          CLEAR t2084.
                                                                                          DATA(t2085) = abap_true.
                                                                                          IF t2085 = abap_true.
                                                                                            DATA(t2086) = |D16S|.
                                                                                            DATA(t2087) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                            t2087->has = abap_true.
                                                                                            t2087->value = t2086.
                                                                                            t2084 = t2087.
                                                                                          ELSE.
                                                                                            DATA t2088 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                            CLEAR t2088.
                                                                                            t2084 = t2088.
                                                                                          ENDIF.
                                                                                          DATA(t2089) = VALUE abap_bool( ).
                                                                                          DATA(t2090) = VALUE abap_bool( ).
                                                                                          IF t2083 IS BOUND.
                                                                                            t2089 = t2083->has.
                                                                                          ENDIF.
                                                                                          IF t2084 IS BOUND.
                                                                                            t2090 = t2084->has.
                                                                                          ENDIF.
                                                                                          IF t2089 = t2090.
                                                                                            IF t2089 = abap_false.
                                                                                              t2082 = abap_true.
                                                                                            ELSEIF t2083->value = t2084->value.
                                                                                              t2082 = abap_true.
                                                                                            ENDIF.
                                                                                          ENDIF.
                                                                                          IF t2082 = abap_true.
                                                                                            DATA t2091 TYPE REF TO zcl_lnt_unknown_type.
                                                                                            CLEAR t2091.
                                                                                            DATA t2092 TYPE string.
                                                                                            DATA t2093 TYPE string.
                                                                                            DATA t2094 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                            DATA(t2095) = t1.
                                                                                            t2094 = t2095->text.
                                                                                            t2093 = t2094->value.
                                                                                            DATA(t2096) = | is an obsolete data type|.
                                                                                            DATA(t2097) = strlen( t2093 ).
                                                                                            t2092 = |{ t2093 }{ t2096 }|.
                                                                                            DATA t2098 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                            CLEAR t2098.
                                                                                            DATA(t2099) = abap_true.
                                                                                            IF t2099 = abap_true.
                                                                                              DATA t2100 TYPE string.
                                                                                              DATA(t2101) = t1.
                                                                                              t2100 = t2101->info_text.
                                                                                              DATA(t2102) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                              t2102->has = abap_true.
                                                                                              t2102->value = t2100.
                                                                                              t2098 = t2102.
                                                                                            ELSE.
                                                                                              DATA t2103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                              CLEAR t2103.
                                                                                              t2098 = t2103.
                                                                                            ENDIF.
                                                                                            t2091 = NEW zcl_lnt_unknown_type( i_error = t2092 i_qualified_name = t2098 ).
                                                                                            result = t2091.
                                                                                            RETURN.
                                                                                          ELSE.
                                                                                            DATA(t2104) = VALUE abap_bool( ).
                                                                                            DATA(t2105) = t32.
                                                                                            DATA t2106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                            CLEAR t2106.
                                                                                            DATA(t2107) = abap_true.
                                                                                            IF t2107 = abap_true.
                                                                                              DATA(t2108) = |D34S|.
                                                                                              DATA(t2109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                              t2109->has = abap_true.
                                                                                              t2109->value = t2108.
                                                                                              t2106 = t2109.
                                                                                            ELSE.
                                                                                              DATA t2110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                              CLEAR t2110.
                                                                                              t2106 = t2110.
                                                                                            ENDIF.
                                                                                            DATA(t2111) = VALUE abap_bool( ).
                                                                                            DATA(t2112) = VALUE abap_bool( ).
                                                                                            IF t2105 IS BOUND.
                                                                                              t2111 = t2105->has.
                                                                                            ENDIF.
                                                                                            IF t2106 IS BOUND.
                                                                                              t2112 = t2106->has.
                                                                                            ENDIF.
                                                                                            IF t2111 = t2112.
                                                                                              IF t2111 = abap_false.
                                                                                                t2104 = abap_true.
                                                                                              ELSEIF t2105->value = t2106->value.
                                                                                                t2104 = abap_true.
                                                                                              ENDIF.
                                                                                            ENDIF.
                                                                                            IF t2104 = abap_true.
                                                                                              DATA t2113 TYPE REF TO zcl_lnt_unknown_type.
                                                                                              CLEAR t2113.
                                                                                              DATA t2114 TYPE string.
                                                                                              DATA t2115 TYPE string.
                                                                                              DATA t2116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                              DATA(t2117) = t1.
                                                                                              t2116 = t2117->text.
                                                                                              t2115 = t2116->value.
                                                                                              DATA(t2118) = | is an obsolete data type|.
                                                                                              DATA(t2119) = strlen( t2115 ).
                                                                                              t2114 = |{ t2115 }{ t2118 }|.
                                                                                              DATA t2120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                              CLEAR t2120.
                                                                                              DATA(t2121) = abap_true.
                                                                                              IF t2121 = abap_true.
                                                                                                DATA t2122 TYPE string.
                                                                                                DATA(t2123) = t1.
                                                                                                t2122 = t2123->info_text.
                                                                                                DATA(t2124) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                                t2124->has = abap_true.
                                                                                                t2124->value = t2122.
                                                                                                t2120 = t2124.
                                                                                              ELSE.
                                                                                                DATA t2125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                                CLEAR t2125.
                                                                                                t2120 = t2125.
                                                                                              ENDIF.
                                                                                              t2113 = NEW zcl_lnt_unknown_type( i_error = t2114 i_qualified_name = t2120 ).
                                                                                              result = t2113.
                                                                                              RETURN.
                                                                                            ELSE.
                                                                                              DATA(t2126) = VALUE abap_bool( ).
                                                                                              DATA(t2127) = t32.
                                                                                              DATA t2128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                              CLEAR t2128.
                                                                                              DATA(t2129) = abap_true.
                                                                                              IF t2129 = abap_true.
                                                                                                DATA(t2130) = |DF16_SCL|.
                                                                                                DATA(t2131) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                                t2131->has = abap_true.
                                                                                                t2131->value = t2130.
                                                                                                t2128 = t2131.
                                                                                              ELSE.
                                                                                                DATA t2132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                                CLEAR t2132.
                                                                                                t2128 = t2132.
                                                                                              ENDIF.
                                                                                              DATA(t2133) = VALUE abap_bool( ).
                                                                                              DATA(t2134) = VALUE abap_bool( ).
                                                                                              IF t2127 IS BOUND.
                                                                                                t2133 = t2127->has.
                                                                                              ENDIF.
                                                                                              IF t2128 IS BOUND.
                                                                                                t2134 = t2128->has.
                                                                                              ENDIF.
                                                                                              IF t2133 = t2134.
                                                                                                IF t2133 = abap_false.
                                                                                                  t2126 = abap_true.
                                                                                                ELSEIF t2127->value = t2128->value.
                                                                                                  t2126 = abap_true.
                                                                                                ENDIF.
                                                                                              ENDIF.
                                                                                              IF t2126 = abap_true.
                                                                                                DATA t2135 TYPE REF TO zcl_lnt_unknown_type.
                                                                                                CLEAR t2135.
                                                                                                DATA t2136 TYPE string.
                                                                                                DATA t2137 TYPE string.
                                                                                                DATA t2138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                                DATA(t2139) = t1.
                                                                                                t2138 = t2139->text.
                                                                                                t2137 = t2138->value.
                                                                                                DATA(t2140) = | is an obsolete data type|.
                                                                                                DATA(t2141) = strlen( t2137 ).
                                                                                                t2136 = |{ t2137 }{ t2140 }|.
                                                                                                DATA t2142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                                CLEAR t2142.
                                                                                                DATA(t2143) = abap_true.
                                                                                                IF t2143 = abap_true.
                                                                                                  DATA t2144 TYPE string.
                                                                                                  DATA(t2145) = t1.
                                                                                                  t2144 = t2145->info_text.
                                                                                                  DATA(t2146) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                                  t2146->has = abap_true.
                                                                                                  t2146->value = t2144.
                                                                                                  t2142 = t2146.
                                                                                                ELSE.
                                                                                                  DATA t2147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                                  CLEAR t2147.
                                                                                                  t2142 = t2147.
                                                                                                ENDIF.
                                                                                                t2135 = NEW zcl_lnt_unknown_type( i_error = t2136 i_qualified_name = t2142 ).
                                                                                                result = t2135.
                                                                                                RETURN.
                                                                                              ELSE.
                                                                                                DATA(t2148) = VALUE abap_bool( ).
                                                                                                DATA(t2149) = t32.
                                                                                                DATA t2150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                                CLEAR t2150.
                                                                                                DATA(t2151) = abap_true.
                                                                                                IF t2151 = abap_true.
                                                                                                  DATA(t2152) = |DF34_SCL|.
                                                                                                  DATA(t2153) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                                  t2153->has = abap_true.
                                                                                                  t2153->value = t2152.
                                                                                                  t2150 = t2153.
                                                                                                ELSE.
                                                                                                  DATA t2154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                                  CLEAR t2154.
                                                                                                  t2150 = t2154.
                                                                                                ENDIF.
                                                                                                DATA(t2155) = VALUE abap_bool( ).
                                                                                                DATA(t2156) = VALUE abap_bool( ).
                                                                                                IF t2149 IS BOUND.
                                                                                                  t2155 = t2149->has.
                                                                                                ENDIF.
                                                                                                IF t2150 IS BOUND.
                                                                                                  t2156 = t2150->has.
                                                                                                ENDIF.
                                                                                                IF t2155 = t2156.
                                                                                                  IF t2155 = abap_false.
                                                                                                    t2148 = abap_true.
                                                                                                  ELSEIF t2149->value = t2150->value.
                                                                                                    t2148 = abap_true.
                                                                                                  ENDIF.
                                                                                                ENDIF.
                                                                                                IF t2148 = abap_true.
                                                                                                  DATA t2157 TYPE REF TO zcl_lnt_unknown_type.
                                                                                                  CLEAR t2157.
                                                                                                  DATA t2158 TYPE string.
                                                                                                  DATA t2159 TYPE string.
                                                                                                  DATA t2160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                                  DATA(t2161) = t1.
                                                                                                  t2160 = t2161->text.
                                                                                                  t2159 = t2160->value.
                                                                                                  DATA(t2162) = | is an obsolete data type|.
                                                                                                  DATA(t2163) = strlen( t2159 ).
                                                                                                  t2158 = |{ t2159 }{ t2162 }|.
                                                                                                  DATA t2164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                                  CLEAR t2164.
                                                                                                  DATA(t2165) = abap_true.
                                                                                                  IF t2165 = abap_true.
                                                                                                    DATA t2166 TYPE string.
                                                                                                    DATA(t2167) = t1.
                                                                                                    t2166 = t2167->info_text.
                                                                                                    DATA(t2168) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                                    t2168->has = abap_true.
                                                                                                    t2168->value = t2166.
                                                                                                    t2164 = t2168.
                                                                                                  ELSE.
                                                                                                    DATA t2169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                                    CLEAR t2169.
                                                                                                    t2164 = t2169.
                                                                                                  ENDIF.
                                                                                                  t2157 = NEW zcl_lnt_unknown_type( i_error = t2158 i_qualified_name = t2164 ).
                                                                                                  result = t2157.
                                                                                                  RETURN.
                                                                                                ELSE.
                                                                                                  DATA(t2170) = VALUE abap_bool( ).
                                                                                                  DATA(t2171) = t32.
                                                                                                  DATA t2172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                                  CLEAR t2172.
                                                                                                  DATA(t2173) = abap_true.
                                                                                                  IF t2173 = abap_true.
                                                                                                    DATA(t2174) = |PREC|.
                                                                                                    DATA(t2175) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                                    t2175->has = abap_true.
                                                                                                    t2175->value = t2174.
                                                                                                    t2172 = t2175.
                                                                                                  ELSE.
                                                                                                    DATA t2176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                                    CLEAR t2176.
                                                                                                    t2172 = t2176.
                                                                                                  ENDIF.
                                                                                                  DATA(t2177) = VALUE abap_bool( ).
                                                                                                  DATA(t2178) = VALUE abap_bool( ).
                                                                                                  IF t2171 IS BOUND.
                                                                                                    t2177 = t2171->has.
                                                                                                  ENDIF.
                                                                                                  IF t2172 IS BOUND.
                                                                                                    t2178 = t2172->has.
                                                                                                  ENDIF.
                                                                                                  IF t2177 = t2178.
                                                                                                    IF t2177 = abap_false.
                                                                                                      t2170 = abap_true.
                                                                                                    ELSEIF t2171->value = t2172->value.
                                                                                                      t2170 = abap_true.
                                                                                                    ENDIF.
                                                                                                  ENDIF.
                                                                                                  IF t2170 = abap_true.
                                                                                                    DATA t2179 TYPE REF TO zcl_lnt_unknown_type.
                                                                                                    CLEAR t2179.
                                                                                                    DATA t2180 TYPE string.
                                                                                                    DATA t2181 TYPE string.
                                                                                                    DATA t2182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                                    DATA(t2183) = t1.
                                                                                                    t2182 = t2183->text.
                                                                                                    t2181 = t2182->value.
                                                                                                    DATA(t2184) = | is an obsolete data type|.
                                                                                                    DATA(t2185) = strlen( t2181 ).
                                                                                                    t2180 = |{ t2181 }{ t2184 }|.
                                                                                                    DATA t2186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                                    CLEAR t2186.
                                                                                                    DATA(t2187) = abap_true.
                                                                                                    IF t2187 = abap_true.
                                                                                                      DATA t2188 TYPE string.
                                                                                                      DATA(t2189) = t1.
                                                                                                      t2188 = t2189->info_text.
                                                                                                      DATA(t2190) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                                      t2190->has = abap_true.
                                                                                                      t2190->value = t2188.
                                                                                                      t2186 = t2190.
                                                                                                    ELSE.
                                                                                                      DATA t2191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                                      CLEAR t2191.
                                                                                                      t2186 = t2191.
                                                                                                    ENDIF.
                                                                                                    t2179 = NEW zcl_lnt_unknown_type( i_error = t2180 i_qualified_name = t2186 ).
                                                                                                    result = t2179.
                                                                                                    RETURN.
                                                                                                  ELSE.
                                                                                                    DATA(t2192) = VALUE abap_bool( ).
                                                                                                    DATA(t2193) = t32.
                                                                                                    DATA t2194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                                    CLEAR t2194.
                                                                                                    DATA(t2195) = abap_true.
                                                                                                    IF t2195 = abap_true.
                                                                                                      DATA(t2196) = |VARC|.
                                                                                                      DATA(t2197) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                                      t2197->has = abap_true.
                                                                                                      t2197->value = t2196.
                                                                                                      t2194 = t2197.
                                                                                                    ELSE.
                                                                                                      DATA t2198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                                      CLEAR t2198.
                                                                                                      t2194 = t2198.
                                                                                                    ENDIF.
                                                                                                    DATA(t2199) = VALUE abap_bool( ).
                                                                                                    DATA(t2200) = VALUE abap_bool( ).
                                                                                                    IF t2193 IS BOUND.
                                                                                                      t2199 = t2193->has.
                                                                                                    ENDIF.
                                                                                                    IF t2194 IS BOUND.
                                                                                                      t2200 = t2194->has.
                                                                                                    ENDIF.
                                                                                                    IF t2199 = t2200.
                                                                                                      IF t2199 = abap_false.
                                                                                                        t2192 = abap_true.
                                                                                                      ELSEIF t2193->value = t2194->value.
                                                                                                        t2192 = abap_true.
                                                                                                      ENDIF.
                                                                                                    ENDIF.
                                                                                                    IF t2192 = abap_true.
                                                                                                      DATA t2201 TYPE REF TO zcl_lnt_unknown_type.
                                                                                                      CLEAR t2201.
                                                                                                      DATA t2202 TYPE string.
                                                                                                      DATA t2203 TYPE string.
                                                                                                      DATA t2204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                                      DATA(t2205) = t1.
                                                                                                      t2204 = t2205->text.
                                                                                                      t2203 = t2204->value.
                                                                                                      DATA(t2206) = | is an obsolete data type|.
                                                                                                      DATA(t2207) = strlen( t2203 ).
                                                                                                      t2202 = |{ t2203 }{ t2206 }|.
                                                                                                      DATA t2208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                                      CLEAR t2208.
                                                                                                      DATA(t2209) = abap_true.
                                                                                                      IF t2209 = abap_true.
                                                                                                        DATA t2210 TYPE string.
                                                                                                        DATA(t2211) = t1.
                                                                                                        t2210 = t2211->info_text.
                                                                                                        DATA(t2212) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                                        t2212->has = abap_true.
                                                                                                        t2212->value = t2210.
                                                                                                        t2208 = t2212.
                                                                                                      ELSE.
                                                                                                        DATA t2213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                                        CLEAR t2213.
                                                                                                        t2208 = t2213.
                                                                                                      ENDIF.
                                                                                                      t2201 = NEW zcl_lnt_unknown_type( i_error = t2202 i_qualified_name = t2208 ).
                                                                                                      result = t2201.
                                                                                                      RETURN.
                                                                                                    ELSE.
                                                                                                      DATA t2214 TYPE REF TO zcl_lnt_unknown_type.
                                                                                                      CLEAR t2214.
                                                                                                      DATA(t2215) = VALUE string( ).
                                                                                                      DATA(t2216) = VALUE string( ).
                                                                                                      DATA t2217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                                      DATA t2218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                                      DATA(t2219) = t1.
                                                                                                      t2218 = t2219->text.
                                                                                                      t2217 = t2218.
                                                                                                      DATA(t2220) = VALUE string( ).
                                                                                                      DATA(t2221) = VALUE abap_bool( ).
                                                                                                      DATA(t2222) = t2217.
                                                                                                      IF t2222 IS INITIAL.
                                                                                                        t2221 = abap_true.
                                                                                                      ELSEIF t2222->has = abap_false.
                                                                                                        t2221 = abap_true.
                                                                                                      ENDIF.
                                                                                                      IF t2221 = abap_true.
                                                                                                        DATA(t2223) = |undefined|.
                                                                                                        t2220 = t2223.
                                                                                                      ELSE.
                                                                                                        DATA t2224 TYPE string.
                                                                                                        DATA(t2225) = t2217.
                                                                                                        t2224 = t2225->value.
                                                                                                        t2220 = t2224.
                                                                                                      ENDIF.
                                                                                                      t2216 = t2220.
                                                                                                      DATA(t2226) = | unknown basic ddic type|.
                                                                                                      DATA(t2227) = strlen( t2216 ).
                                                                                                      t2215 = |{ t2216 }{ t2226 }|.
                                                                                                      DATA t2228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                                      CLEAR t2228.
                                                                                                      DATA(t2229) = abap_true.
                                                                                                      IF t2229 = abap_true.
                                                                                                        DATA t2230 TYPE string.
                                                                                                        DATA(t2231) = t1.
                                                                                                        t2230 = t2231->info_text.
                                                                                                        DATA(t2232) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                                        t2232->has = abap_true.
                                                                                                        t2232->value = t2230.
                                                                                                        t2228 = t2232.
                                                                                                      ELSE.
                                                                                                        DATA t2233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                                        CLEAR t2233.
                                                                                                        t2228 = t2233.
                                                                                                      ENDIF.
                                                                                                      t2214 = NEW zcl_lnt_unknown_type( i_error = t2215 i_qualified_name = t2228 ).
                                                                                                      result = t2214.
                                                                                                      RETURN.
                                                                                                    ENDIF.
                                                                                                  ENDIF.
                                                                                                ENDIF.
                                                                                              ENDIF.
                                                                                            ENDIF.
                                                                                          ENDIF.
                                                                                        ENDIF.
                                                                                      ENDIF.
                                                                                    ENDIF.
                                                                                  ENDIF.
                                                                                ENDIF.
                                                                              ENDIF.
                                                                            ENDIF.
                                                                          ENDIF.
                                                                        ENDIF.
                                                                      ENDIF.
                                                                    ENDIF.
                                                                  ENDIF.
                                                                ENDIF.
                                                              ENDIF.
                                                            ENDIF.
                                                          ENDIF.
                                                        ENDIF.
                                                      ENDIF.
                                                    ENDIF.
                                                  ENDIF.
                                                ENDIF.
                                              ENDIF.
                                            ENDIF.
                                          ENDIF.
                                        ENDIF.
                                      ENDIF.
                                    ENDIF.
                                  ENDIF.
                                ENDIF.
                              ENDIF.
                            ENDIF.
                          ENDIF.
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1121_899e29e083be.
  ENDMETHOD.
ENDCLASS.
