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
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD is_exception.
    DATA(t1) = i_def.
    DATA(t2) = i_obj_ac26.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA t12 TYPE string.
    DATA t13 TYPE string.
    t13 = t1->name.
    DATA(t16) = strlen( t13 ).
    t12 = t13.
    IF t12 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t12 TO UPPER CASE.
    ELSE.
      t12 = zlnt_runtime_uppe_91169605024d=>full( t12 ).
    ENDIF.
    IF xsdbool( t12 = |CX_ROOT| ) = abap_true.
      result = abap_true.
      RETURN.
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t19 = t1->super_class_name.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t24 = t19.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t28) = VALUE abap_bool( ).
    IF t24 IS INITIAL.
      t28 = abap_true.
    ELSEIF t24->has = abap_false.
      t28 = abap_true.
    ENDIF.
    IF t28 = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA t31 TYPE f.
    t31 = CONV f( 0 ).
    DO.
      DATA t33 TYPE abap_bool.
      DATA t34 TYPE abap_bool.
      DATA t36 TYPE f.
      t36 = t31.
      DATA(t40) = CONV f( 1 ).
      t31 = t36 + t40.
      t34 = xsdbool( t36 < CONV f( 10 ) ).
      t33 = t34.
      IF t34 = abap_true.
        DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t44 = t19.
        DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t46.
        DATA(t49) = VALUE abap_bool( ).
        IF t44 IS INITIAL.
          t49 = abap_true.
        ELSEIF t44->has = abap_false.
          t49 = abap_true.
        ENDIF.
        t33 = xsdbool( t49 = abap_false ).
      ENDIF.
      IF t33 = abap_false.
        EXIT.
      ENDIF.
      DATA t51 TYPE REF TO zcl_lnt_abap_object.
      CLEAR t51.
      DATA t52 TYPE REF TO zcl_lnt_abap_object.
      CLEAR t52.
      DATA(t54) = me->reg.
      DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t55.
      DATA(t58) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t58->has = abap_true.
      t58->value = |CLAS|.
      t55 = t58.
      DATA t62 TYPE string.
      t62 = t19->value.
      DATA(t64) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t64->has = abap_true.
      t64->value = t62.
      DATA t66 TYPE REF TO object.
      t66 = t54->get_object( i_type_9913 = t55 i_name = t64 ).
      t52 ?= t66.
      t51 = t52.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t70.
      IF xsdbool( t51 IS INITIAL ) = abap_true.
        EXIT.
      ENDIF.
      DATA t74 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t74.
      DATA t76 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t76.
      DATA t78 TYPE REF TO zcl_lnt_abap_file.
      t78 = t51->get_main_abap_file( ).
      DATA t82 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t82.
      IF xsdbool( t78 IS INITIAL ) = abap_true.
        CLEAR t82.
      ELSE.
        t82 = t78->info.
      ENDIF.
      t76 = t82.
      DATA t92 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t92.
      IF xsdbool( t76 IS INITIAL ) = abap_true.
        CLEAR t92.
      ELSE.
        DATA t97 TYPE REF TO zif_lnt_abap_file_information.
        t97 = t76.
        DATA t99 TYPE string.
        t99 = t19->value.
        t92 = t97->get_class_definition_by_name( i_name = t99 ).
      ENDIF.
      t74 = t92.
      DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t104.
      IF xsdbool( t74 IS INITIAL ) = abap_true.
        EXIT.
      ENDIF.
      DATA(t108) = VALUE abap_bool( ).
      DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t109 = t74->super_class_name.
      IF t109 IS BOUND.
        IF t109->has = abap_true.
          t108 = xsdbool( strlen( t109->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t108 = abap_true.
        DATA t114 TYPE string.
        t114 = t74->super_class_name->value.
        DATA(t118) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t118->has = abap_true.
        t118->value = t114.
        t19 = t118.
      ELSE.
        EXIT.
      ENDIF.
    ENDDO.
    DATA(t121) = VALUE abap_bool( ).
    DATA t122 TYPE abap_bool.
    DATA t123 TYPE abap_bool.
    DATA t124 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t126 TYPE string.
    t126 = t19->value.
    DATA t130 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t132) = |^[^\n\r|.
    DATA t133 TYPE c LENGTH 1.
    t133 = cl_abap_conv_in_ce=>uccpi( 8232 ).
    CONCATENATE t132 t133 INTO t132 RESPECTING BLANKS.
    DATA t134 TYPE c LENGTH 1.
    t134 = cl_abap_conv_in_ce=>uccpi( 8233 ).
    CONCATENATE t132 t134 INTO t132 RESPECTING BLANKS.
    t132 = t132 && |]?cx_[^\n\r|.
    DATA t135 TYPE c LENGTH 1.
    t135 = cl_abap_conv_in_ce=>uccpi( 8232 ).
    CONCATENATE t132 t135 INTO t132 RESPECTING BLANKS.
    DATA t136 TYPE c LENGTH 1.
    t136 = cl_abap_conv_in_ce=>uccpi( 8233 ).
    CONCATENATE t132 t136 INTO t132 RESPECTING BLANKS.
    t132 = t132 && |]*$|.
    CREATE OBJECT t130 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t132 flags = |i|.
    t130->source = |^.?cx_.*$|.
    t124 = t130->match( t126 ).
    t123 = xsdbool( t124 IS BOUND ).
    t122 = t123.
    IF t123 = abap_false.
      DATA t139 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t141 TYPE string.
      t141 = t19->value.
      DATA t145 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      DATA(t147) = `^\/[^`.
      t147 = t147 && |\n\r|.
      DATA t148 TYPE c LENGTH 1.
      t148 = cl_abap_conv_in_ce=>uccpi( 8232 ).
      CONCATENATE t147 t148 INTO t147 RESPECTING BLANKS.
      DATA t149 TYPE c LENGTH 1.
      t149 = cl_abap_conv_in_ce=>uccpi( 8233 ).
      CONCATENATE t147 t149 INTO t147 RESPECTING BLANKS.
      t147 = t147 && `]+\/cx_[^`.
      t147 = t147 && |\n\r|.
      DATA t150 TYPE c LENGTH 1.
      t150 = cl_abap_conv_in_ce=>uccpi( 8232 ).
      CONCATENATE t147 t150 INTO t147 RESPECTING BLANKS.
      DATA t151 TYPE c LENGTH 1.
      t151 = cl_abap_conv_in_ce=>uccpi( 8233 ).
      CONCATENATE t147 t151 INTO t147 RESPECTING BLANKS.
      t147 = t147 && |]*$|.
      CREATE OBJECT t145 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t147 flags = |i|.
      t145->source = `^\/.+\/cx_.*$`.
      t139 = t145->match( t141 ).
      t122 = xsdbool( t139 IS BOUND ).
    ENDIF.
    IF t122 = abap_true.
      t121 = abap_true.
    ELSE.
      t121 = abap_false.
    ENDIF.
    result = t121.

  ENDMETHOD.

  METHOD lookup_builtin_type.
    DATA(t1) = i_name.
    DATA(t2) = i_length.
    DATA(t3) = i_decimals_2eed.
    DATA(t4) = i_qualified_name.
    IF xsdbool( t1 = |STRING| ) = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t16 = t4.
      DATA(t18) = VALUE string( ).
      DATA(t19) = VALUE abap_bool( ).
      IF t16 IS BOUND.
        IF t16->has = abap_true.
          t19 = xsdbool( strlen( t16->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t19 = abap_true.
        t18 = t16->value.
      ELSE.
        t18 = t1.
      ENDIF.
      DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t24->has = abap_true.
      t24->value = t18.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t28 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t11 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t24 i_conversion_exit = t26 i_derived_from_constant = t28 i_ddic_name = t30 i_rtti_name = t32 i_description = t34 ).
      CREATE OBJECT t11->zlnt_view_ownkeys_b0e8086400eb.
      t11->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t11->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t36 ).
      CREATE OBJECT t11->zlnt_json_ownkeys_70e5fd461788.
      t11->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t11->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t38 ).
      result = zcl_lnt_string_type=>get_db65( i_input_967e = t11 ).
      RETURN.
    ELSE.
      IF xsdbool( t1 = |XSTRING| ) = abap_true.
        DATA t46 TYPE REF TO zcl_lnt_abstract_type_data.
        DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t51 = t4.
        DATA(t53) = VALUE string( ).
        DATA(t54) = VALUE abap_bool( ).
        IF t51 IS BOUND.
          IF t51->has = abap_true.
            t54 = xsdbool( strlen( t51->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t54 = abap_true.
          t53 = t51->value.
        ELSE.
          t53 = t1.
        ENDIF.
        DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t59->has = abap_true.
        t59->value = t53.
        DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t63 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t46 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t59 i_conversion_exit = t61 i_derived_from_constant = t63 i_ddic_name = t65 i_rtti_name = t67 i_description = t69 ).
        CREATE OBJECT t46->zlnt_view_ownkeys_b0e8086400eb.
        t46->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t71 ).
        CREATE OBJECT t46->zlnt_json_ownkeys_70e5fd461788.
        t46->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t73 ).
        result = zcl_lnt_x_string_type=>get_db65( i_input_967e = t46 ).
        RETURN.
      ELSE.
        IF xsdbool( t1 = |D| ) = abap_true.
          DATA t81 TYPE REF TO zcl_lnt_abstract_type_data.
          DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t86 = t4.
          DATA(t88) = VALUE string( ).
          DATA(t89) = VALUE abap_bool( ).
          IF t86 IS BOUND.
            IF t86->has = abap_true.
              t89 = xsdbool( strlen( t86->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t89 = abap_true.
            t88 = t86->value.
          ELSE.
            t88 = t1.
          ENDIF.
          DATA(t94) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t94->has = abap_true.
          t94->value = t88.
          DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t98 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t81 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t94 i_conversion_exit = t96 i_derived_from_constant = t98 i_ddic_name = t100 i_rtti_name = t102 i_description = t104 ).
          CREATE OBJECT t81->zlnt_view_ownkeys_b0e8086400eb.
          t81->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t106 ).
          CREATE OBJECT t81->zlnt_json_ownkeys_70e5fd461788.
          t81->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t108 ).
          result = NEW zcl_lnt_date_type( i_input_967e = t81 ).
          RETURN.
        ELSE.
          IF xsdbool( t1 = |T| ) = abap_true.
            DATA t116 TYPE REF TO zcl_lnt_abstract_type_data.
            DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t121 = t4.
            DATA(t123) = VALUE string( ).
            DATA(t124) = VALUE abap_bool( ).
            IF t121 IS BOUND.
              IF t121->has = abap_true.
                t124 = xsdbool( strlen( t121->value ) > 0 ).
              ENDIF.
            ENDIF.
            IF t124 = abap_true.
              t123 = t121->value.
            ELSE.
              t123 = t1.
            ENDIF.
            DATA(t129) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t129->has = abap_true.
            t129->value = t123.
            DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t133 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t116 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t129 i_conversion_exit = t131 i_derived_from_constant = t133 i_ddic_name = t135 i_rtti_name = t137 i_description = t139 ).
            CREATE OBJECT t116->zlnt_view_ownkeys_b0e8086400eb.
            t116->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t141 ).
            CREATE OBJECT t116->zlnt_json_ownkeys_70e5fd461788.
            t116->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t143 ).
            result = NEW zcl_lnt_time_type( i_input_967e = t116 ).
            RETURN.
          ELSE.
            IF xsdbool( t1 = |XSEQUENCE| ) = abap_true.
              DATA t151 TYPE REF TO zcl_lnt_abstract_type_data.
              DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t156 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t151 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t4 i_conversion_exit = t154 i_derived_from_constant = t156 i_ddic_name = t158 i_rtti_name = t160 i_description = t162 ).
              CREATE OBJECT t151->zlnt_view_ownkeys_b0e8086400eb.
              t151->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t151->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t164 ).
              CREATE OBJECT t151->zlnt_json_ownkeys_70e5fd461788.
              t151->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t151->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t166 ).
              result = NEW zcl_lnt_x_sequence_type( i_input_967e = t151 ).
              RETURN.
            ELSE.
              IF xsdbool( t1 = |CLIKE| ) = abap_true.
                result = CAST zcl_lnt_c_like_type( zcl_lnt_c_like_type=>get_db65( ) ).
                RETURN.
              ELSE.
                IF xsdbool( t1 = |DECFLOAT| ) = abap_true.
                  DATA t178 TYPE REF TO zcl_lnt_abstract_type_data.
                  DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA t183 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  t178 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t4 i_conversion_exit = t181 i_derived_from_constant = t183 i_ddic_name = t185 i_rtti_name = t187 i_description = t189 ).
                  CREATE OBJECT t178->zlnt_view_ownkeys_b0e8086400eb.
                  t178->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  t178->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t191 ).
                  CREATE OBJECT t178->zlnt_json_ownkeys_70e5fd461788.
                  t178->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  t178->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t193 ).
                  result = NEW zcl_lnt_dec_float_type( i_input_967e = t178 ).
                  RETURN.
                ELSE.
                  IF xsdbool( t1 = |ANY| ) = abap_true.
                    DATA t201 TYPE REF TO zcl_lnt_abstract_type_data.
                    DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t206 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    DATA t208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    t201 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t4 i_conversion_exit = t204 i_derived_from_constant = t206 i_ddic_name = t208 i_rtti_name = t210 i_description = t212 ).
                    CREATE OBJECT t201->zlnt_view_ownkeys_b0e8086400eb.
                    t201->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t201->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t214 ).
                    CREATE OBJECT t201->zlnt_json_ownkeys_70e5fd461788.
                    t201->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t201->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t216 ).
                    result = zcl_lnt_any_type=>get_db65( i_input_967e = t201 ).
                    RETURN.
                  ELSE.
                    IF xsdbool( t1 = |SIMPLE| ) = abap_true.
                      result = CAST zcl_lnt_simple_type( zcl_lnt_simple_type=>get_db65( ) ).
                      RETURN.
                    ELSE.
                      IF xsdbool( t1 = |%_C_POINTER| ) = abap_true.
                        result = NEW zcl_lnt_hex_type( i_length = CONV f( 8 ) i_qualified_name = t4 ).
                        RETURN.
                      ELSE.
                        IF xsdbool( t1 = |TABLE| ) = abap_true.
                          DATA t232 TYPE REF TO zcl_lnt_any_type.
                          DATA t233 TYPE REF TO zcl_lnt_abstract_type_data.
                          t232 = zcl_lnt_any_type=>get_db65( i_input_967e = t233 ).
                          DATA t234 TYPE REF TO zcl_lnt_itable_options.
                          DATA t239 TYPE REF TO zcl_lnt_itable_key.
                          DATA t241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                          t234 = NEW zcl_lnt_itable_options( i_with_header = abap_false i_key_type = |DEFAULT| i_primary_key = t239 i_secondary = t241 ).
                          CREATE OBJECT t234->zlnt_view_ownkeys_b0e8086400eb.
                          t234->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                          DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          t234->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t243 ).
                          DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          IF t234->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                            t234->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t244 ).
                          ENDIF.
                          CREATE OBJECT t234->zlnt_json_ownkeys_70e5fd461788.
                          t234->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                          DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          t234->zlnt_json_ownkeys_70e5fd461788->put( p0 = |withHeader| p1 = t246 ).
                          DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          IF t234->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                            t234->zlnt_json_ownkeys_70e5fd461788->put( p0 = |keyType| p1 = t248 ).
                          ENDIF.
                          DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          DATA t250 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          result = NEW zcl_lnt_ty_table_type( i_row_type = t232 i_options = t234 i_qualified_name = t249 i_description = t250 ).
                          RETURN.
                        ELSE.
                          IF xsdbool( t1 = |DATA| ) = abap_true.
                            DATA t257 TYPE REF TO zcl_lnt_abstract_type_data.
                            DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            DATA t262 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                            DATA t264 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            DATA t266 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            DATA t268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            t257 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t4 i_conversion_exit = t260 i_derived_from_constant = t262 i_ddic_name = t264 i_rtti_name = t266 i_description = t268 ).
                            CREATE OBJECT t257->zlnt_view_ownkeys_b0e8086400eb.
                            t257->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                            DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            t257->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t270 ).
                            CREATE OBJECT t257->zlnt_json_ownkeys_70e5fd461788.
                            t257->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                            DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            t257->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t272 ).
                            result = NEW zcl_lnt_data_type( i_input_967e = t257 ).
                            RETURN.
                          ELSE.
                            IF xsdbool( t1 = |NUMERIC| ) = abap_true.
                              DATA t280 TYPE REF TO zcl_lnt_abstract_type_data.
                              DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              DATA t285 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                              DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              DATA t289 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              t280 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t4 i_conversion_exit = t283 i_derived_from_constant = t285 i_ddic_name = t287 i_rtti_name = t289 i_description = t291 ).
                              CREATE OBJECT t280->zlnt_view_ownkeys_b0e8086400eb.
                              t280->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                              DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              t280->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t293 ).
                              CREATE OBJECT t280->zlnt_json_ownkeys_70e5fd461788.
                              t280->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                              DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                              t280->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t295 ).
                              result = NEW zcl_lnt_numeric_generic_type( i_input_967e = t280 ).
                              RETURN.
                            ELSE.
                              IF xsdbool( t1 = |UTCLONG| ) = abap_true.
                                DATA t303 TYPE REF TO zcl_lnt_abstract_type_data.
                                DATA t306 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                DATA t308 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                DATA t310 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                DATA t312 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                DATA t314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                t303 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t4 i_conversion_exit = t306 i_derived_from_constant = t308 i_ddic_name = t310 i_rtti_name = t312 i_description = t314 ).
                                CREATE OBJECT t303->zlnt_view_ownkeys_b0e8086400eb.
                                t303->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                t303->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t316 ).
                                CREATE OBJECT t303->zlnt_json_ownkeys_70e5fd461788.
                                t303->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                t303->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t318 ).
                                result = NEW zcl_lnt_utc_long_type( i_input_967e = t303 ).
                                RETURN.
                              ELSE.
                                IF xsdbool( t1 = |DECFLOAT16| ) = abap_true.
                                  DATA t326 TYPE REF TO zcl_lnt_abstract_type_data.
                                  DATA t329 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  DATA t331 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                  DATA t333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  DATA t335 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  DATA t337 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  t326 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t4 i_conversion_exit = t329 i_derived_from_constant = t331 i_ddic_name = t333 i_rtti_name = t335 i_description = t337 ).
                                  CREATE OBJECT t326->zlnt_view_ownkeys_b0e8086400eb.
                                  t326->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                  DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                  t326->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t339 ).
                                  CREATE OBJECT t326->zlnt_json_ownkeys_70e5fd461788.
                                  t326->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                  DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                  t326->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t341 ).
                                  result = NEW zcl_lnt_dec_float16_type( i_input_967e = t326 ).
                                  RETURN.
                                ELSE.
                                  IF xsdbool( t1 = |DECFLOAT34| ) = abap_true.
                                    DATA t349 TYPE REF TO zcl_lnt_abstract_type_data.
                                    DATA t352 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                    DATA t354 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                    DATA t356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                    DATA t358 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                    DATA t360 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                    t349 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t4 i_conversion_exit = t352 i_derived_from_constant = t354 i_ddic_name = t356 i_rtti_name = t358 i_description = t360 ).
                                    CREATE OBJECT t349->zlnt_view_ownkeys_b0e8086400eb.
                                    t349->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                    DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                    t349->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t362 ).
                                    CREATE OBJECT t349->zlnt_json_ownkeys_70e5fd461788.
                                    t349->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                    DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                    t349->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t364 ).
                                    result = NEW zcl_lnt_dec_float34_type( i_input_967e = t349 ).
                                    RETURN.
                                  ELSE.
                                    IF xsdbool( t1 = |CSEQUENCE| ) = abap_true.
                                      DATA t372 TYPE REF TO zcl_lnt_abstract_type_data.
                                      DATA t375 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                      DATA t377 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                      DATA t379 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                      DATA t381 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                      DATA t383 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                      t372 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t4 i_conversion_exit = t375 i_derived_from_constant = t377 i_ddic_name = t379 i_rtti_name = t381 i_description = t383 ).
                                      CREATE OBJECT t372->zlnt_view_ownkeys_b0e8086400eb.
                                      t372->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                      DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                      t372->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t385 ).
                                      CREATE OBJECT t372->zlnt_json_ownkeys_70e5fd461788.
                                      t372->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                      DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                      t372->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t387 ).
                                      result = NEW zcl_lnt_c_sequence_type( i_input_967e = t372 ).
                                      RETURN.
                                    ELSE.
                                      IF xsdbool( t1 = |I| ) = abap_true.
                                        DATA t395 TYPE REF TO zcl_lnt_abstract_type_data.
                                        DATA t400 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                        t400 = t4.
                                        DATA(t402) = VALUE string( ).
                                        DATA(t403) = VALUE abap_bool( ).
                                        IF t400 IS BOUND.
                                          IF t400->has = abap_true.
                                            t403 = xsdbool( strlen( t400->value ) > 0 ).
                                          ENDIF.
                                        ENDIF.
                                        IF t403 = abap_true.
                                          t402 = t400->value.
                                        ELSE.
                                          t402 = t1.
                                        ENDIF.
                                        DATA(t408) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                        t408->has = abap_true.
                                        t408->value = t402.
                                        DATA t410 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                        DATA t412 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                        DATA t414 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                        DATA t416 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                        DATA t418 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                        t395 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t408 i_conversion_exit = t410 i_derived_from_constant = t412 i_ddic_name = t414 i_rtti_name = t416 i_description = t418 ).
                                        CREATE OBJECT t395->zlnt_view_ownkeys_b0e8086400eb.
                                        t395->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                        DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                        t395->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t420 ).
                                        CREATE OBJECT t395->zlnt_json_ownkeys_70e5fd461788.
                                        t395->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                        DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                        t395->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t422 ).
                                        result = zcl_lnt_integer_type=>get_db65( i_input_967e = t395 ).
                                        RETURN.
                                      ELSE.
                                        IF xsdbool( t1 = |INT8| ) = abap_true.
                                          DATA t430 TYPE REF TO zcl_lnt_abstract_type_data.
                                          DATA t435 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                          t435 = t4.
                                          DATA(t437) = VALUE string( ).
                                          DATA(t438) = VALUE abap_bool( ).
                                          IF t435 IS BOUND.
                                            IF t435->has = abap_true.
                                              t438 = xsdbool( strlen( t435->value ) > 0 ).
                                            ENDIF.
                                          ENDIF.
                                          IF t438 = abap_true.
                                            t437 = t435->value.
                                          ELSE.
                                            t437 = t1.
                                          ENDIF.
                                          DATA(t443) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                          t443->has = abap_true.
                                          t443->value = t437.
                                          DATA t445 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                          DATA t447 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                          DATA t449 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                          DATA t451 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                          DATA t453 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                          t430 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t443 i_conversion_exit = t445 i_derived_from_constant = t447 i_ddic_name = t449 i_rtti_name = t451 i_description = t453 ).
                                          CREATE OBJECT t430->zlnt_view_ownkeys_b0e8086400eb.
                                          t430->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                          DATA t455 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                          t430->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t455 ).
                                          CREATE OBJECT t430->zlnt_json_ownkeys_70e5fd461788.
                                          t430->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                          DATA t457 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                          t430->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t457 ).
                                          result = NEW zcl_lnt_integer8_type( i_input_967e = t430 ).
                                          RETURN.
                                        ELSE.
                                          IF xsdbool( t1 = |F| ) = abap_true.
                                            DATA t465 TYPE REF TO zcl_lnt_abstract_type_data.
                                            DATA t470 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                            t470 = t4.
                                            DATA(t472) = VALUE string( ).
                                            DATA(t473) = VALUE abap_bool( ).
                                            IF t470 IS BOUND.
                                              IF t470->has = abap_true.
                                                t473 = xsdbool( strlen( t470->value ) > 0 ).
                                              ENDIF.
                                            ENDIF.
                                            IF t473 = abap_true.
                                              t472 = t470->value.
                                            ELSE.
                                              t472 = t1.
                                            ENDIF.
                                            DATA(t478) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                            t478->has = abap_true.
                                            t478->value = t472.
                                            DATA t480 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                            DATA t482 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                            DATA t484 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                            DATA t486 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                            DATA t488 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                            t465 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t478 i_conversion_exit = t480 i_derived_from_constant = t482 i_ddic_name = t484 i_rtti_name = t486 i_description = t488 ).
                                            CREATE OBJECT t465->zlnt_view_ownkeys_b0e8086400eb.
                                            t465->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                            DATA t490 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                            t465->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t490 ).
                                            CREATE OBJECT t465->zlnt_json_ownkeys_70e5fd461788.
                                            t465->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                            DATA t492 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                            t465->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t492 ).
                                            result = NEW zcl_lnt_float_type( i_input_967e = t465 ).
                                            RETURN.
                                          ELSE.
                                            IF xsdbool( t1 = |P| ) = abap_true.
                                              DATA(t497) = VALUE abap_bool( ).
                                              DATA(t498) = VALUE abap_bool( ).
                                              IF t2 IS BOUND.
                                                IF t2->has = abap_true.
                                                  IF t2->number_special <> 0.
                                                    t498 = xsdbool( t2->number_special <> 1 ).
                                                  ELSE.
                                                    t498 = xsdbool( t2->value IS NOT INITIAL ).
                                                  ENDIF.
                                                ENDIF.
                                              ENDIF.
                                              t497 = t498.
                                              IF t498 = abap_true.
                                                DATA(t500) = VALUE abap_bool( ).
                                                IF t3 IS BOUND.
                                                  IF t3->has = abap_true.
                                                    IF t3->number_special <> 0.
                                                      t500 = xsdbool( t3->number_special <> 1 ).
                                                    ELSE.
                                                      t500 = xsdbool( t3->value IS NOT INITIAL ).
                                                    ENDIF.
                                                  ENDIF.
                                                ENDIF.
                                                t497 = t500.
                                              ENDIF.
                                              IF t497 = abap_true.
                                                DATA(t503) = VALUE f( ).
                                                IF t2->number_special <> 0.
                                                  RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                                                ENDIF.
                                                t503 = t2->value.
                                                DATA(t505) = VALUE f( ).
                                                IF t3->number_special <> 0.
                                                  RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                                                ENDIF.
                                                t505 = t3->value.
                                                DATA t509 TYPE REF TO zcl_lnt_abstract_type_data.
                                                DATA t512 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                DATA t514 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                DATA t516 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                DATA t518 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                DATA t520 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                t509 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t4 i_conversion_exit = t512 i_derived_from_constant = t514 i_ddic_name = t516 i_rtti_name = t518 i_description = t520 ).
                                                CREATE OBJECT t509->zlnt_view_ownkeys_b0e8086400eb.
                                                t509->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                DATA t522 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                t509->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t522 ).
                                                CREATE OBJECT t509->zlnt_json_ownkeys_70e5fd461788.
                                                t509->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                DATA t524 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                t509->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t524 ).
                                                result = NEW zcl_lnt_packed_type( i_length = t503 i_decimals_2eed = t505 i_extra = t509 ).
                                                RETURN.
                                              ELSE.
                                                DATA(t526) = VALUE abap_bool( ).
                                                IF t2 IS BOUND.
                                                  IF t2->has = abap_true.
                                                    IF t2->number_special <> 0.
                                                      t526 = xsdbool( t2->number_special <> 1 ).
                                                    ELSE.
                                                      t526 = xsdbool( t2->value IS NOT INITIAL ).
                                                    ENDIF.
                                                  ENDIF.
                                                ENDIF.
                                                IF t526 = abap_true.
                                                  DATA(t529) = VALUE f( ).
                                                  IF t2->number_special <> 0.
                                                    RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                                                  ENDIF.
                                                  t529 = t2->value.
                                                  DATA t534 TYPE REF TO zcl_lnt_abstract_type_data.
                                                  DATA t537 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  DATA t539 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                  DATA t541 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  DATA t543 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  DATA t545 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  t534 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t4 i_conversion_exit = t537 i_derived_from_constant = t539 i_ddic_name = t541 i_rtti_name = t543 i_description = t545 ).
                                                  CREATE OBJECT t534->zlnt_view_ownkeys_b0e8086400eb.
                                                  t534->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                  DATA t547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                  t534->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t547 ).
                                                  CREATE OBJECT t534->zlnt_json_ownkeys_70e5fd461788.
                                                  t534->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                  DATA t549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                  t534->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t549 ).
                                                  result = NEW zcl_lnt_packed_type( i_length = t529 i_decimals_2eed = CONV f( 0 ) i_extra = t534 ).
                                                  RETURN.
                                                ELSE.
                                                  DATA t556 TYPE REF TO zcl_lnt_abstract_type_data.
                                                  DATA t559 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  DATA t561 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                  DATA t563 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  DATA t565 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  DATA t567 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  t556 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t4 i_conversion_exit = t559 i_derived_from_constant = t561 i_ddic_name = t563 i_rtti_name = t565 i_description = t567 ).
                                                  CREATE OBJECT t556->zlnt_view_ownkeys_b0e8086400eb.
                                                  t556->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                  DATA t569 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                  t556->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t569 ).
                                                  CREATE OBJECT t556->zlnt_json_ownkeys_70e5fd461788.
                                                  t556->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                  DATA t571 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                  t556->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t571 ).
                                                  result = NEW zcl_lnt_packed_type( i_length = CONV f( 8 ) i_decimals_2eed = CONV f( 0 ) i_extra = t556 ).
                                                  RETURN.
                                                ENDIF.
                                              ENDIF.
                                            ELSE.
                                              IF xsdbool( t1 = |C| ) = abap_true.
                                                DATA(t576) = VALUE abap_bool( ).
                                                IF t2 IS BOUND.
                                                  IF t2->has = abap_true.
                                                    IF t2->number_special <> 0.
                                                      t576 = xsdbool( t2->number_special <> 1 ).
                                                    ELSE.
                                                      t576 = xsdbool( t2->value IS NOT INITIAL ).
                                                    ENDIF.
                                                  ENDIF.
                                                ENDIF.
                                                IF t576 = abap_true.
                                                  DATA(t579) = VALUE f( ).
                                                  IF t2->number_special <> 0.
                                                    RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                                                  ENDIF.
                                                  t579 = t2->value.
                                                  DATA t583 TYPE REF TO zcl_lnt_abstract_type_data.
                                                  DATA t586 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  DATA t588 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                  DATA t590 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  DATA t592 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  DATA t594 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  t583 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t4 i_conversion_exit = t586 i_derived_from_constant = t588 i_ddic_name = t590 i_rtti_name = t592 i_description = t594 ).
                                                  CREATE OBJECT t583->zlnt_view_ownkeys_b0e8086400eb.
                                                  t583->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                  DATA t596 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                  t583->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t596 ).
                                                  CREATE OBJECT t583->zlnt_json_ownkeys_70e5fd461788.
                                                  t583->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                  DATA t598 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                  t583->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t598 ).
                                                  result = NEW zcl_lnt_character_type( i_length = t579 i_extra = t583 ).
                                                  RETURN.
                                                ELSE.
                                                  DATA t604 TYPE REF TO zcl_lnt_abstract_type_data.
                                                  DATA t607 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  DATA t609 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                  DATA t611 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  DATA t613 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  DATA t615 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  t604 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t4 i_conversion_exit = t607 i_derived_from_constant = t609 i_ddic_name = t611 i_rtti_name = t613 i_description = t615 ).
                                                  CREATE OBJECT t604->zlnt_view_ownkeys_b0e8086400eb.
                                                  t604->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                  DATA t617 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                  t604->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t617 ).
                                                  CREATE OBJECT t604->zlnt_json_ownkeys_70e5fd461788.
                                                  t604->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                  DATA t619 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                  t604->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t619 ).
                                                  result = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t604 ).
                                                  RETURN.
                                                ENDIF.
                                              ELSE.
                                                IF xsdbool( t1 = |X| ) = abap_true.
                                                  DATA(t624) = VALUE abap_bool( ).
                                                  IF t2 IS BOUND.
                                                    IF t2->has = abap_true.
                                                      IF t2->number_special <> 0.
                                                        t624 = xsdbool( t2->number_special <> 1 ).
                                                      ELSE.
                                                        t624 = xsdbool( t2->value IS NOT INITIAL ).
                                                      ENDIF.
                                                    ENDIF.
                                                  ENDIF.
                                                  IF t624 = abap_true.
                                                    DATA(t627) = VALUE f( ).
                                                    IF t2->number_special <> 0.
                                                      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                                                    ENDIF.
                                                    t627 = t2->value.
                                                    result = NEW zcl_lnt_hex_type( i_length = t627 i_qualified_name = t4 ).
                                                    RETURN.
                                                  ELSE.
                                                    result = NEW zcl_lnt_hex_type( i_length = CONV f( 1 ) i_qualified_name = t4 ).
                                                    RETURN.
                                                  ENDIF.
                                                ELSE.
                                                  IF xsdbool( t1 = |N| ) = abap_true.
                                                    DATA(t636) = VALUE abap_bool( ).
                                                    IF t2 IS BOUND.
                                                      IF t2->has = abap_true.
                                                        IF t2->number_special <> 0.
                                                          t636 = xsdbool( t2->number_special <> 1 ).
                                                        ELSE.
                                                          t636 = xsdbool( t2->value IS NOT INITIAL ).
                                                        ENDIF.
                                                      ENDIF.
                                                    ENDIF.
                                                    IF t636 = abap_true.
                                                      DATA(t639) = VALUE f( ).
                                                      IF t2->number_special <> 0.
                                                        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                                                      ENDIF.
                                                      t639 = t2->value.
                                                      result = NEW zcl_lnt_numeric_type( i_length = t639 i_qualified_name = t4 ).
                                                      RETURN.
                                                    ELSE.
                                                      result = NEW zcl_lnt_numeric_type( i_length = CONV f( 1 ) i_qualified_name = t4 ).
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
    CLEAR result.

  ENDMETHOD.

  METHOD in_error_namespace.
    DATA(t1) = i_name.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3 = t1.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = VALUE abap_bool( ).
    IF t3 IS INITIAL.
      t7 = abap_true.
    ELSEIF t3->has = abap_false.
      t7 = abap_true.
    ENDIF.
    IF t7 = abap_true.
      result = abap_true.
      RETURN.
    ENDIF.
    DATA t12 TYPE string.
    t12 = t1->value.
    result = me->reg->in_error_namespace( i_name = t12 ).

  ENDMETHOD.

  METHOD lookup_object.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zif_lnt_object.
    DATA(t4) = me->reg.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t8) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t8->has = abap_true.
    t8->value = |CLAS|.
    t5 = t8.
    DATA(t13) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t13->has = abap_true.
    t13->value = t1.
    t2 = t4->get_object( i_type_9913 = t5 i_name = t13 ).
    DATA t15 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t17 TYPE REF TO zif_lnt_object.
    t17 = t2.
    DATA t19 TYPE REF TO zcl_lnt_fi_identifier.
    IF xsdbool( t17 IS INITIAL ) = abap_true.
    ELSE.
      t19 = t17->get_identifier( ).
    ENDIF.
    t15 = t19.
    IF xsdbool( t15 IS BOUND ) = abap_true.
      DATA t28 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t29 TYPE REF TO zcl_lnt_abstract_type.
      DATA t31 TYPE REF TO zcl_lnt_fi_identifier.
      t31 = t15.
      DATA t35 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t40->has = abap_true.
      t40->value = t1.
      t36 = t40.
      DATA t45 TYPE string.
      DATA(t46) = `\CLASS=`.
      DATA(t48) = strlen( t46 ).
      t45 = |{ t46 }{ t1 }|.
      DATA(t49) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t49->has = abap_true.
      t49->value = t45.
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t53 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t35 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t36 i_conversion_exit = t51 i_derived_from_constant = t53 i_ddic_name = t55 i_rtti_name = t49 i_description = t57 ).
      CREATE OBJECT t35->zlnt_view_ownkeys_b0e8086400eb.
      t35->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t59 ).
      DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `RTTIName` p1 = t60 ).
      ENDIF.
      CREATE OBJECT t35->zlnt_json_ownkeys_70e5fd461788.
      t35->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t62 ).
      DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = |RTTIName| p1 = t64 ).
      ENDIF.
      t29 = NEW zcl_lnt_object_reference_type( i_id = t31 i_extra = t35 ).
      t28 = NEW zcl_lnt_ilookup_result( i_type_9913 = t29 i_object_19cd = t2 ).
      CREATE OBJECT t28->zlnt_view_ownkeys_b0e8086400eb.
      t28->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t28->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t68 ).
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t28->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t28->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t69 ).
      ENDIF.
      CREATE OBJECT t28->zlnt_json_ownkeys_70e5fd461788.
      t28->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t28->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t71 ).
      DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t28->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t28->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t73 ).
      ENDIF.
      result = t28.
      RETURN.
    ENDIF.
    DATA t74 TYPE REF TO zif_lnt_object.
    DATA(t76) = me->reg.
    DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t80) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t80->has = abap_true.
    t80->value = |INTF|.
    t77 = t80.
    DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t85->has = abap_true.
    t85->value = t1.
    t74 = t76->get_object( i_type_9913 = t77 i_name = t85 ).
    DATA t87 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t89 TYPE REF TO zif_lnt_object.
    t89 = t74.
    DATA t91 TYPE REF TO zcl_lnt_fi_identifier.
    IF xsdbool( t89 IS INITIAL ) = abap_true.
    ELSE.
      t91 = t89->get_identifier( ).
    ENDIF.
    t87 = t91.
    IF xsdbool( t87 IS BOUND ) = abap_true.
      DATA t100 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t101 TYPE REF TO zcl_lnt_abstract_type.
      DATA t103 TYPE REF TO zcl_lnt_fi_identifier.
      t103 = t87.
      DATA t107 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t112) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t112->has = abap_true.
      t112->value = t1.
      t108 = t112.
      DATA t117 TYPE string.
      DATA(t118) = `\INTERFACE=`.
      DATA(t120) = strlen( t118 ).
      t117 = |{ t118 }{ t1 }|.
      DATA(t121) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t121->has = abap_true.
      t121->value = t117.
      DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t125 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t107 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t108 i_conversion_exit = t123 i_derived_from_constant = t125 i_ddic_name = t127 i_rtti_name = t121 i_description = t129 ).
      CREATE OBJECT t107->zlnt_view_ownkeys_b0e8086400eb.
      t107->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t107->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t131 ).
      DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t107->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t107->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `RTTIName` p1 = t132 ).
      ENDIF.
      CREATE OBJECT t107->zlnt_json_ownkeys_70e5fd461788.
      t107->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t107->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t134 ).
      DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t107->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t107->zlnt_json_ownkeys_70e5fd461788->put( p0 = |RTTIName| p1 = t136 ).
      ENDIF.
      t101 = NEW zcl_lnt_object_reference_type( i_id = t103 i_extra = t107 ).
      t100 = NEW zcl_lnt_ilookup_result( i_type_9913 = t101 i_object_19cd = t74 ).
      CREATE OBJECT t100->zlnt_view_ownkeys_b0e8086400eb.
      t100->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t140 ).
      DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t100->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t100->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t141 ).
      ENDIF.
      CREATE OBJECT t100->zlnt_json_ownkeys_70e5fd461788.
      t100->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t143 ).
      DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t100->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t100->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t145 ).
      ENDIF.
      result = t100.
      RETURN.
    ENDIF.
    DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t152) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t152->has = abap_true.
    t152->value = t1.
    t148 = t152.
    DATA(t154) = VALUE abap_bool( ).
    DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t156 = t148.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t160) = VALUE abap_bool( ).
    IF t156 IS INITIAL.
      t160 = abap_true.
    ELSEIF t156->has = abap_false.
      t160 = abap_true.
    ENDIF.
    IF t160 = abap_true.
      t154 = abap_true.
    ELSE.
      DATA t165 TYPE string.
      t165 = t148->value.
      t154 = me->reg->in_error_namespace( i_name = t165 ).
    ENDIF.
    IF xsdbool( t154 = abap_true ) = abap_true.
      DATA t168 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t169 TYPE REF TO zcl_lnt_abstract_type.
      DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t169 = NEW zcl_lnt_unknown_type( i_error = t1 i_qualified_name = t172 ).
      DATA t173 TYPE REF TO zif_lnt_object.
      t168 = NEW zcl_lnt_ilookup_result( i_type_9913 = t169 i_object_19cd = t173 ).
      CREATE OBJECT t168->zlnt_view_ownkeys_b0e8086400eb.
      t168->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t168->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t175 ).
      CREATE OBJECT t168->zlnt_json_ownkeys_70e5fd461788.
      t168->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t168->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t177 ).
      result = t168.
      RETURN.
    ELSE.
      DATA t178 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t179 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t184) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t184->has = abap_true.
      t184->value = t1.
      DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t179 = zcl_lnt_void_type=>get_db65( i_voided = t184 i_qualified_name = t186 ).
      DATA t187 TYPE REF TO zif_lnt_object.
      t178 = NEW zcl_lnt_ilookup_result( i_type_9913 = t179 i_object_19cd = t187 ).
      CREATE OBJECT t178->zlnt_view_ownkeys_b0e8086400eb.
      t178->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t178->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t189 ).
      CREATE OBJECT t178->zlnt_json_ownkeys_70e5fd461788.
      t178->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t178->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t191 ).
      result = t178.

    ENDIF.
  ENDMETHOD.

  METHOD lookup_no_void.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_table.
    DATA t3 TYPE REF TO zcl_lnt_table.
    DATA(t5) = me->reg.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t9) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t9->has = abap_true.
    t9->value = |TABL|.
    t6 = t9.
    DATA(t14) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t14->has = abap_true.
    t14->value = t1.
    DATA t16 TYPE REF TO object.
    t16 = t5->get_object( i_type_9913 = t6 i_name = t14 ).
    t3 ?= t16.
    t2 = t3.
    IF xsdbool( t2 IS BOUND ) = abap_true.
      DATA t21 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t22 TYPE REF TO zcl_lnt_abstract_type.
      DATA t24 TYPE REF TO zcl_lnt_table.
      t24 = t2.
      DATA(t26) = me->reg.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t22 = t24->parse_type( i_reg_f149 = t26 i_data_element = t27 i_description = t28 ).
      DATA t29 TYPE REF TO zif_lnt_object.
      t29 = t2.
      t21 = NEW zcl_lnt_ilookup_result( i_type_9913 = t22 i_object_19cd = t29 ).
      CREATE OBJECT t21->zlnt_view_ownkeys_b0e8086400eb.
      t21->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t32 ).
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t33 ).
      ENDIF.
      CREATE OBJECT t21->zlnt_json_ownkeys_70e5fd461788.
      t21->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t35 ).
      DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t37 ).
      ENDIF.
      result = t21.
      RETURN.
    ENDIF.
    DATA t39 TYPE REF TO zcl_lnt_table.
    DATA t40 TYPE REF TO zcl_lnt_table.
    DATA(t42) = me->reg.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t46) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t46->has = abap_true.
    t46->value = |VIEW|.
    t43 = t46.
    DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t51->has = abap_true.
    t51->value = t1.
    DATA t53 TYPE REF TO object.
    t53 = t42->get_object( i_type_9913 = t43 i_name = t51 ).
    t40 ?= t53.
    t39 = t40.
    IF xsdbool( t39 IS BOUND ) = abap_true.
      DATA t58 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t59 TYPE REF TO zcl_lnt_abstract_type.
      DATA t61 TYPE REF TO zcl_lnt_table.
      t61 = t39.
      DATA(t63) = me->reg.
      DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t59 = t61->parse_type( i_reg_f149 = t63 i_data_element = t64 i_description = t65 ).
      DATA t66 TYPE REF TO zif_lnt_object.
      t66 = t39.
      t58 = NEW zcl_lnt_ilookup_result( i_type_9913 = t59 i_object_19cd = t66 ).
      CREATE OBJECT t58->zlnt_view_ownkeys_b0e8086400eb.
      t58->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t58->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t69 ).
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t58->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t58->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t70 ).
      ENDIF.
      CREATE OBJECT t58->zlnt_json_ownkeys_70e5fd461788.
      t58->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t72 ).
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t58->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t74 ).
      ENDIF.
      result = t58.
      RETURN.
    ENDIF.
    DATA t76 TYPE REF TO zcl_lnt_ob_table_type.
    DATA t77 TYPE REF TO zcl_lnt_ob_table_type.
    DATA(t79) = me->reg.
    DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t83) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t83->has = abap_true.
    t83->value = |TTYP|.
    t80 = t83.
    DATA(t88) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t88->has = abap_true.
    t88->value = t1.
    DATA t90 TYPE REF TO object.
    t90 = t79->get_object( i_type_9913 = t80 i_name = t88 ).
    t77 ?= t90.
    t76 = t77.
    IF xsdbool( t76 IS BOUND ) = abap_true.
      DATA t95 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t96 TYPE REF TO zcl_lnt_abstract_type.
      DATA t98 TYPE REF TO zcl_lnt_ob_table_type.
      t98 = t76.
      DATA(t100) = me->reg.
      DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t96 = t98->parse_type( i_reg_f149 = t100 i_data_element = t101 i_description = t102 ).
      DATA t103 TYPE REF TO zif_lnt_object.
      t103 = t76.
      t95 = NEW zcl_lnt_ilookup_result( i_type_9913 = t96 i_object_19cd = t103 ).
      CREATE OBJECT t95->zlnt_view_ownkeys_b0e8086400eb.
      t95->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t95->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t106 ).
      DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t95->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t95->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t107 ).
      ENDIF.
      CREATE OBJECT t95->zlnt_json_ownkeys_70e5fd461788.
      t95->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t95->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t109 ).
      DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t95->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t95->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t111 ).
      ENDIF.
      result = t95.
      RETURN.
    ENDIF.
    DATA t113 TYPE REF TO zcl_lnt_data_element.
    DATA t114 TYPE REF TO zcl_lnt_data_element.
    DATA(t116) = me->reg.
    DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t120) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t120->has = abap_true.
    t120->value = |DTEL|.
    t117 = t120.
    DATA(t125) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t125->has = abap_true.
    t125->value = t1.
    DATA t127 TYPE REF TO object.
    t127 = t116->get_object( i_type_9913 = t117 i_name = t125 ).
    t114 ?= t127.
    t113 = t114.
    IF xsdbool( t113 IS BOUND ) = abap_true.
      DATA t132 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t133 TYPE REF TO zcl_lnt_abstract_type.
      DATA t135 TYPE REF TO zcl_lnt_data_element.
      t135 = t113.
      DATA(t137) = me->reg.
      DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t133 = t135->parse_type( i_reg_f149 = t137 i_data_element = t138 i_description = t139 ).
      DATA t140 TYPE REF TO zif_lnt_object.
      t140 = t113.
      t132 = NEW zcl_lnt_ilookup_result( i_type_9913 = t133 i_object_19cd = t140 ).
      CREATE OBJECT t132->zlnt_view_ownkeys_b0e8086400eb.
      t132->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t132->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t143 ).
      DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t132->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t132->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t144 ).
      ENDIF.
      CREATE OBJECT t132->zlnt_json_ownkeys_70e5fd461788.
      t132->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t132->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t146 ).
      DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t132->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t132->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t148 ).
      ENDIF.
      result = t132.
      RETURN.
    ENDIF.
    DATA t150 TYPE REF TO zcl_lnt_ilookup_result.
    DATA(t155) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t155->has = abap_true.
    t155->value = t1.
    t150 = me->lookup_ddls( i_name = t155 ).
    IF xsdbool( t150 IS BOUND ) = abap_true.
      result = t150.
      RETURN.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD lookup_ddls.
    DATA(t1) = i_name.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3 = t1.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = VALUE abap_bool( ).
    IF t3 IS INITIAL.
      t7 = abap_true.
    ELSEIF t3->has = abap_false.
      t7 = abap_true.
    ENDIF.
    IF t7 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA(t10) = VALUE string( ).
    DATA(t11) = VALUE string( ).
    DATA(t12) = VALUE string( ).
    t12 = t1->value.
    DATA(t14) = strlen( t12 ).
    t11 = t12.
    IF t11 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t11 TO UPPER CASE.
    ELSE.
      t11 = zlnt_runtime_uppe_91169605024d=>full( t11 ).
    ENDIF.
    t10 = t11.
    DATA t15 TYPE REF TO zif_lnt_generator_8f73cd1c.
    t15 = me->reg->get_objects_by_type( i_type_9913 = |DDLS| )->iterate( ).
    DO.
      DATA t21 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t21.
      t21 = t15->next( ).
      IF t21->done = abap_true.
        EXIT.
      ENDIF.
      DATA t28 TYPE REF TO zif_lnt_object.
      CLEAR t28.
      t28 = t21->value.
      DATA t30 TYPE REF TO zcl_lnt_ob_data_definition.
      CLEAR t30.
      DATA t32 TYPE REF TO zcl_lnt_ob_data_definition.
      CLEAR t32.
      DATA(t33) = VALUE abap_bool( ).
      t33 = abap_false.
      DATA t35 TYPE REF TO cx_root.
      CLEAR t35.
      TRY.
          DATA t36 TYPE REF TO zcl_lnt_ob_data_definition.
          CLEAR t36.
          t36 ?= t28.
          t32 = t36.
          t33 = abap_true.
        CATCH cx_root INTO t35.
          IF xsdbool( t33 = abap_false ) = abap_true.
            t15->close( ).
          ENDIF.
          RAISE EXCEPTION t35.
      ENDTRY.
      IF xsdbool( t33 = abap_false ) = abap_true.
        t15->close( ).
      ENDIF.
      t30 = t32.
      DATA(t47) = VALUE abap_bool( ).
      DATA(t48) = VALUE abap_bool( ).
      t48 = abap_false.
      DATA t50 TYPE REF TO cx_root.
      CLEAR t50.
      TRY.
          DATA(t51) = VALUE abap_bool( ).
          DATA(t52) = VALUE abap_bool( ).
          DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t53.
          DATA t54 TYPE REF TO zcl_lnt_ob_data_definition.
          CLEAR t54.
          t54 = t30.
          DATA t57 TYPE REF TO zcl_lnt_iparse_result.
          CLEAR t57.
          t57 = t54->pr_in_src_obj_dt_dfn_ts_dt_dfn( ).
          DATA t60 TYPE REF TO zcl_lnt_parsed_data_definition.
          CLEAR t60.
          t60 = t54->parsed_data.
          DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t63.
          IF xsdbool( t60 IS INITIAL ) = abap_true.
            CLEAR t63.
          ELSE.
            t63 = t60->sql_view_name.
          ENDIF.
          t53 = t63.
          DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t70.
          DATA(t73) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t73->has = abap_true.
          t73->value = t10.
          t70 = t73.
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
            DATA t81 TYPE REF TO zcl_lnt_ob_data_definition.
            CLEAR t81.
            t81 = t30.
            DATA t84 TYPE REF TO zcl_lnt_iparse_result.
            CLEAR t84.
            t84 = t81->pr_in_src_obj_dt_dfn_ts_dt_dfn( ).
            DATA t87 TYPE REF TO zcl_lnt_parsed_data_definition.
            CLEAR t87.
            t87 = t81->parsed_data.
            DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t90.
            IF xsdbool( t87 IS INITIAL ) = abap_true.
              CLEAR t90.
            ELSE.
              t90 = t87->definition_name.
            ENDIF.
            t79 = t90.
            DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t97.
            DATA(t98) = VALUE abap_bool( ).
            IF t79 IS INITIAL.
              t98 = abap_true.
            ELSEIF t79->has = abap_false.
              t98 = abap_true.
            ENDIF.
            IF t98 = abap_true.
              CLEAR t97.
            ELSE.
              DATA(t101) = VALUE string( ).
              DATA(t102) = VALUE string( ).
              t102 = t79->value.
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
            DATA(t109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t109->has = abap_true.
            t109->value = t10.
            t106 = t109.
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
          t48 = abap_true.
        CATCH cx_root INTO t50.
          IF xsdbool( t48 = abap_false ) = abap_true.
            t15->close( ).
          ENDIF.
          RAISE EXCEPTION t50.
      ENDTRY.
      IF xsdbool( t48 = abap_false ) = abap_true.
        t15->close( ).
      ENDIF.
      IF t47 = abap_true.
        DATA t123 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t123.
        DATA(t124) = VALUE abap_bool( ).
        t124 = abap_false.
        DATA t126 TYPE REF TO cx_root.
        CLEAR t126.
        TRY.
            DATA t129 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t129.
            DATA t130 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t130.
            DATA(t133) = me->reg.
            DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t134.
            DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t135.
            t130 = t30->parse_type( i_reg_f149 = t133 i_data_element = t134 i_description = t135 ).
            DATA t136 TYPE REF TO zif_lnt_object.
            CLEAR t136.
            t136 = t30.
            t129 = NEW zcl_lnt_ilookup_result( i_type_9913 = t130 i_object_19cd = t136 ).
            CREATE OBJECT t129->zlnt_view_ownkeys_b0e8086400eb.
            t129->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t138.
            t129->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t138 ).
            DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t139.
            IF t129->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t129->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t139 ).
            ENDIF.
            CREATE OBJECT t129->zlnt_json_ownkeys_70e5fd461788.
            t129->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t141.
            t129->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t141 ).
            DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t143.
            IF t129->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t129->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t143 ).
            ENDIF.
            t123 = t129.
            t124 = abap_true.
          CATCH cx_root INTO t126.
            IF xsdbool( t124 = abap_false ) = abap_true.
              t15->close( ).
            ENDIF.
            RAISE EXCEPTION t126.
        ENDTRY.
        IF xsdbool( t124 = abap_false ) = abap_true.
          t15->close( ).
        ENDIF.
        t15->close( ).
        result = t123.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD lookup.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zcl_lnt_ilookup_result.
    t2 = me->lookup_no_void( i_name = t1 ).
    IF xsdbool( t2 IS BOUND ) = abap_true.
      result = t2.
      RETURN.
    ENDIF.
    IF me->reg->in_error_namespace( i_name = t1 ) = abap_true.
      DATA t12 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t13 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t18) = strlen( t1 ).
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t13 = NEW zcl_lnt_unknown_type( i_error = |{ t1 }{ | not found, lookup| }| i_qualified_name = t19 ).
      DATA t20 TYPE REF TO zif_lnt_object.
      t12 = NEW zcl_lnt_ilookup_result( i_type_9913 = t13 i_object_19cd = t20 ).
      CREATE OBJECT t12->zlnt_view_ownkeys_b0e8086400eb.
      t12->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t12->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t22 ).
      CREATE OBJECT t12->zlnt_json_ownkeys_70e5fd461788.
      t12->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t12->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t24 ).
      result = t12.
      RETURN.
    ELSE.
      DATA t25 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t26 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t31->has = abap_true.
      t31->value = t1.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t26 = zcl_lnt_void_type=>get_db65( i_voided = t31 i_qualified_name = t33 ).
      DATA t34 TYPE REF TO zif_lnt_object.
      t25 = NEW zcl_lnt_ilookup_result( i_type_9913 = t26 i_object_19cd = t34 ).
      CREATE OBJECT t25->zlnt_view_ownkeys_b0e8086400eb.
      t25->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t25->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t36 ).
      CREATE OBJECT t25->zlnt_json_ownkeys_70e5fd461788.
      t25->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t25->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t38 ).
      result = t25.

    ENDIF.
  ENDMETHOD.

  METHOD lookup_domain.
    DATA(t1) = i_name.
    DATA(t2) = i_data_element.
    DATA(t3) = i_description.
    DATA t4 TYPE REF TO zcl_lnt_domain.
    DATA t5 TYPE REF TO zcl_lnt_domain.
    DATA(t7) = me->reg.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t11->has = abap_true.
    t11->value = |DOMA|.
    t8 = t11.
    DATA(t16) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t16->has = abap_true.
    t16->value = t1.
    DATA t18 TYPE REF TO object.
    t18 = t7->get_object( i_type_9913 = t8 i_name = t16 ).
    t5 ?= t18.
    t4 = t5.
    IF xsdbool( t4 IS BOUND ) = abap_true.
      DATA t21 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t22 TYPE REF TO zcl_lnt_abstract_type.
      DATA t24 TYPE REF TO zcl_lnt_domain.
      t24 = t4.
      DATA(t26) = me->reg.
      t22 = t24->parse_type( i_reg_f149 = t26 i_data_element = t2 i_description = t3 ).
      DATA t29 TYPE REF TO zif_lnt_object.
      t29 = t4.
      t21 = NEW zcl_lnt_ilookup_result( i_type_9913 = t22 i_object_19cd = t29 ).
      CREATE OBJECT t21->zlnt_view_ownkeys_b0e8086400eb.
      t21->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t32 ).
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t33 ).
      ENDIF.
      CREATE OBJECT t21->zlnt_json_ownkeys_70e5fd461788.
      t21->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t35 ).
      DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t37 ).
      ENDIF.
      result = t21.
      RETURN.
    ELSE.
      IF me->reg->in_error_namespace( i_name = t1 ) = abap_true.
        DATA t41 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t42 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t47) = strlen( t1 ).
        DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t42 = NEW zcl_lnt_unknown_type( i_error = |{ t1 }{ |, lookupDomain| }| i_qualified_name = t48 ).
        DATA t49 TYPE REF TO zif_lnt_object.
        t41 = NEW zcl_lnt_ilookup_result( i_type_9913 = t42 i_object_19cd = t49 ).
        CREATE OBJECT t41->zlnt_view_ownkeys_b0e8086400eb.
        t41->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t41->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t51 ).
        DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t41->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t41->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t52 ).
        ENDIF.
        CREATE OBJECT t41->zlnt_json_ownkeys_70e5fd461788.
        t41->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t41->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t54 ).
        DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t41->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t41->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t56 ).
        ENDIF.
        result = t41.
        RETURN.
      ELSE.
        DATA t57 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t58 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t63) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t63->has = abap_true.
        t63->value = t1.
        DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t58 = zcl_lnt_void_type=>get_db65( i_voided = t63 i_qualified_name = t65 ).
        DATA t66 TYPE REF TO zif_lnt_object.
        t57 = NEW zcl_lnt_ilookup_result( i_type_9913 = t58 i_object_19cd = t66 ).
        CREATE OBJECT t57->zlnt_view_ownkeys_b0e8086400eb.
        t57->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t57->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t68 ).
        DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t57->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t57->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t69 ).
        ENDIF.
        CREATE OBJECT t57->zlnt_json_ownkeys_70e5fd461788.
        t57->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t57->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t71 ).
        DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t57->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t57->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t73 ).
        ENDIF.
        result = t57.
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD lookup_data_element.
    DATA(t1) = i_name.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3 = t1.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = VALUE abap_bool( ).
    IF t3 IS INITIAL.
      t7 = abap_true.
    ELSEIF t3->has = abap_false.
      t7 = abap_true.
    ENDIF.
    IF t7 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t10 TYPE REF TO zcl_lnt_abstract_type.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t10 = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupDataElement| i_qualified_name = t13 ).
      DATA t14 TYPE REF TO zif_lnt_object.
      t9 = NEW zcl_lnt_ilookup_result( i_type_9913 = t10 i_object_19cd = t14 ).
      CREATE OBJECT t9->zlnt_view_ownkeys_b0e8086400eb.
      t9->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t9->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t16 ).
      CREATE OBJECT t9->zlnt_json_ownkeys_70e5fd461788.
      t9->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t9->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t18 ).
      result = t9.
      RETURN.
    ENDIF.
    DATA t19 TYPE REF TO zcl_lnt_data_element.
    DATA t20 TYPE REF TO zcl_lnt_data_element.
    DATA(t22) = me->reg.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t26->has = abap_true.
    t26->value = |DTEL|.
    t23 = t26.
    DATA t30 TYPE string.
    t30 = t1->value.
    DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t32->has = abap_true.
    t32->value = t30.
    DATA t34 TYPE REF TO object.
    t34 = t22->get_object( i_type_9913 = t23 i_name = t32 ).
    t20 ?= t34.
    t19 = t20.
    IF xsdbool( t19 IS BOUND ) = abap_true.
      DATA t37 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t38 TYPE REF TO zcl_lnt_abstract_type.
      DATA t40 TYPE REF TO zcl_lnt_data_element.
      t40 = t19.
      DATA(t42) = me->reg.
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t38 = t40->parse_type( i_reg_f149 = t42 i_data_element = t43 i_description = t44 ).
      DATA t45 TYPE REF TO zif_lnt_object.
      t45 = t19.
      t37 = NEW zcl_lnt_ilookup_result( i_type_9913 = t38 i_object_19cd = t45 ).
      CREATE OBJECT t37->zlnt_view_ownkeys_b0e8086400eb.
      t37->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t37->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t48 ).
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t37->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t37->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t49 ).
      ENDIF.
      CREATE OBJECT t37->zlnt_json_ownkeys_70e5fd461788.
      t37->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t37->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t51 ).
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t37->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t37->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t53 ).
      ENDIF.
      result = t37.
      RETURN.
    ELSE.
      DATA t56 TYPE string.
      t56 = t1->value.
      IF me->reg->in_error_namespace( i_name = t56 ) = abap_true.
        DATA t58 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t59 TYPE REF TO zcl_lnt_abstract_type.
        DATA t62 TYPE string.
        t62 = t1->value.
        DATA(t65) = strlen( t62 ).
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t59 = NEW zcl_lnt_unknown_type( i_error = |{ t62 }{ | not found, lookupDataElement| }| i_qualified_name = t66 ).
        DATA t67 TYPE REF TO zif_lnt_object.
        t58 = NEW zcl_lnt_ilookup_result( i_type_9913 = t59 i_object_19cd = t67 ).
        CREATE OBJECT t58->zlnt_view_ownkeys_b0e8086400eb.
        t58->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t58->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t69 ).
        CREATE OBJECT t58->zlnt_json_ownkeys_70e5fd461788.
        t58->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t71 ).
        result = t58.
        RETURN.
      ELSE.
        DATA t72 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t73 TYPE REF TO zcl_lnt_abstract_type.
        DATA t77 TYPE string.
        t77 = t1->value.
        DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t79->has = abap_true.
        t79->value = t77.
        DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t73 = zcl_lnt_void_type=>get_db65( i_voided = t79 i_qualified_name = t81 ).
        DATA t82 TYPE REF TO zif_lnt_object.
        t72 = NEW zcl_lnt_ilookup_result( i_type_9913 = t73 i_object_19cd = t82 ).
        CREATE OBJECT t72->zlnt_view_ownkeys_b0e8086400eb.
        t72->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t72->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t84 ).
        CREATE OBJECT t72->zlnt_json_ownkeys_70e5fd461788.
        t72->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t72->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t86 ).
        result = t72.
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD lookup_table_or_view.
    DATA(t1) = i_name.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3 = t1.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = VALUE abap_bool( ).
    IF t3 IS INITIAL.
      t7 = abap_true.
    ELSEIF t3->has = abap_false.
      t7 = abap_true.
    ENDIF.
    IF t7 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t10 TYPE REF TO zcl_lnt_abstract_type.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t10 = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupTableOrView| i_qualified_name = t13 ).
      DATA t14 TYPE REF TO zif_lnt_object.
      t9 = NEW zcl_lnt_ilookup_result( i_type_9913 = t10 i_object_19cd = t14 ).
      CREATE OBJECT t9->zlnt_view_ownkeys_b0e8086400eb.
      t9->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t9->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t16 ).
      CREATE OBJECT t9->zlnt_json_ownkeys_70e5fd461788.
      t9->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t9->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t18 ).
      result = t9.
      RETURN.
    ENDIF.
    DATA t19 TYPE REF TO zcl_lnt_table.
    DATA t20 TYPE REF TO zcl_lnt_table.
    DATA(t22) = me->reg.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t26->has = abap_true.
    t26->value = |TABL|.
    t23 = t26.
    DATA t30 TYPE string.
    t30 = t1->value.
    DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t32->has = abap_true.
    t32->value = t30.
    DATA t34 TYPE REF TO object.
    t34 = t22->get_object( i_type_9913 = t23 i_name = t32 ).
    t20 ?= t34.
    t19 = t20.
    IF xsdbool( t19 IS BOUND ) = abap_true.
      DATA t37 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t38 TYPE REF TO zcl_lnt_abstract_type.
      DATA t40 TYPE REF TO zcl_lnt_table.
      t40 = t19.
      DATA(t42) = me->reg.
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t38 = t40->parse_type( i_reg_f149 = t42 i_data_element = t43 i_description = t44 ).
      DATA t45 TYPE REF TO zif_lnt_object.
      t45 = t19.
      t37 = NEW zcl_lnt_ilookup_result( i_type_9913 = t38 i_object_19cd = t45 ).
      CREATE OBJECT t37->zlnt_view_ownkeys_b0e8086400eb.
      t37->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t37->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t48 ).
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t37->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t37->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t49 ).
      ENDIF.
      CREATE OBJECT t37->zlnt_json_ownkeys_70e5fd461788.
      t37->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t37->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t51 ).
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t37->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t37->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t53 ).
      ENDIF.
      result = t37.
      RETURN.
    ENDIF.
    DATA t54 TYPE REF TO zcl_lnt_ilookup_result.
    DATA t58 TYPE string.
    t58 = t1->value.
    DATA(t60) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t60->has = abap_true.
    t60->value = t58.
    t54 = me->lookup_ddls( i_name = t60 ).
    IF xsdbool( t54 IS BOUND ) = abap_true.
      result = t54.
      RETURN.
    ENDIF.
    DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t70 TYPE string.
    t70 = t1->value.
    DATA(t72) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t72->has = abap_true.
    t72->value = t70.
    t67 = t72.
    DATA t74 TYPE REF TO zcl_lnt_ilookup_result.
    DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t76 = t67.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t80) = VALUE abap_bool( ).
    IF t76 IS INITIAL.
      t80 = abap_true.
    ELSEIF t76->has = abap_false.
      t80 = abap_true.
    ENDIF.
    IF t80 = abap_true.
      DATA t82 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t83 TYPE REF TO zcl_lnt_abstract_type.
      DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t83 = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupView| i_qualified_name = t86 ).
      DATA t87 TYPE REF TO zif_lnt_object.
      t82 = NEW zcl_lnt_ilookup_result( i_type_9913 = t83 i_object_19cd = t87 ).
      CREATE OBJECT t82->zlnt_view_ownkeys_b0e8086400eb.
      t82->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t82->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t89 ).
      CREATE OBJECT t82->zlnt_json_ownkeys_70e5fd461788.
      t82->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t91 ).
      t74 = t82.
    ELSE.
      DATA t93 TYPE REF TO zcl_lnt_table.
      DATA t94 TYPE REF TO zcl_lnt_table.
      DATA(t96) = me->reg.
      DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t100) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t100->has = abap_true.
      t100->value = |VIEW|.
      t97 = t100.
      DATA t104 TYPE string.
      t104 = t67->value.
      DATA(t106) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t106->has = abap_true.
      t106->value = t104.
      DATA t108 TYPE REF TO object.
      t108 = t96->get_object( i_type_9913 = t97 i_name = t106 ).
      t94 ?= t108.
      t93 = t94.
      DATA t109 TYPE REF TO zcl_lnt_ilookup_result.
      IF xsdbool( t93 IS BOUND ) = abap_true.
        DATA t112 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t113 TYPE REF TO zcl_lnt_abstract_type.
        DATA t115 TYPE REF TO zcl_lnt_table.
        t115 = t93.
        DATA(t117) = me->reg.
        DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t113 = t115->parse_type( i_reg_f149 = t117 i_data_element = t118 i_description = t119 ).
        DATA t120 TYPE REF TO zif_lnt_object.
        t120 = t93.
        t112 = NEW zcl_lnt_ilookup_result( i_type_9913 = t113 i_object_19cd = t120 ).
        CREATE OBJECT t112->zlnt_view_ownkeys_b0e8086400eb.
        t112->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t112->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t123 ).
        DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t112->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t112->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t124 ).
        ENDIF.
        CREATE OBJECT t112->zlnt_json_ownkeys_70e5fd461788.
        t112->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t112->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t126 ).
        DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t112->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t112->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t128 ).
        ENDIF.
        t109 = t112.
      ELSE.
        DATA t129 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t132 TYPE string.
        t132 = t67->value.
        IF me->reg->in_error_namespace( i_name = t132 ) = abap_true.
          DATA t134 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t135 TYPE REF TO zcl_lnt_abstract_type.
          DATA t138 TYPE string.
          t138 = t67->value.
          DATA(t141) = strlen( t138 ).
          DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t135 = NEW zcl_lnt_unknown_type( i_error = |{ t138 }{ | not found, lookupView| }| i_qualified_name = t142 ).
          DATA t143 TYPE REF TO zif_lnt_object.
          t134 = NEW zcl_lnt_ilookup_result( i_type_9913 = t135 i_object_19cd = t143 ).
          CREATE OBJECT t134->zlnt_view_ownkeys_b0e8086400eb.
          t134->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t134->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t145 ).
          CREATE OBJECT t134->zlnt_json_ownkeys_70e5fd461788.
          t134->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t134->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t147 ).
          t129 = t134.
        ELSE.
          DATA t148 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t149 TYPE REF TO zcl_lnt_abstract_type.
          DATA t153 TYPE string.
          t153 = t67->value.
          DATA(t155) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t155->has = abap_true.
          t155->value = t153.
          DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t149 = zcl_lnt_void_type=>get_db65( i_voided = t155 i_qualified_name = t157 ).
          DATA t158 TYPE REF TO zif_lnt_object.
          t148 = NEW zcl_lnt_ilookup_result( i_type_9913 = t149 i_object_19cd = t158 ).
          CREATE OBJECT t148->zlnt_view_ownkeys_b0e8086400eb.
          t148->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t148->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t160 ).
          CREATE OBJECT t148->zlnt_json_ownkeys_70e5fd461788.
          t148->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t148->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t162 ).
          t129 = t148.
        ENDIF.
        t109 = t129.
      ENDIF.
      t74 = t109.
    ENDIF.
    result = t74.

  ENDMETHOD.

  METHOD lookup_table_or_view2.
    DATA(t1) = i_name.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3 = t1.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = VALUE abap_bool( ).
    IF t3 IS INITIAL.
      t7 = abap_true.
    ELSEIF t3->has = abap_false.
      t7 = abap_true.
    ENDIF.
    IF t7 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zcl_lnt_table.
    DATA t11 TYPE REF TO zcl_lnt_table.
    DATA(t13) = me->reg.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t17) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t17->has = abap_true.
    t17->value = |TABL|.
    t14 = t17.
    DATA t21 TYPE string.
    t21 = t1->value.
    DATA(t23) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t23->has = abap_true.
    t23->value = t21.
    DATA t25 TYPE REF TO object.
    t25 = t13->get_object( i_type_9913 = t14 i_name = t23 ).
    t11 ?= t25.
    t10 = t11.
    IF xsdbool( t10 IS BOUND ) = abap_true.
      result = t10.
      RETURN.
    ENDIF.
    DATA t30 TYPE REF TO zcl_lnt_view.
    DATA t31 TYPE REF TO zcl_lnt_view.
    DATA(t33) = me->reg.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t37) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t37->has = abap_true.
    t37->value = |VIEW|.
    t34 = t37.
    DATA t41 TYPE string.
    t41 = t1->value.
    DATA(t43) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t43->has = abap_true.
    t43->value = t41.
    DATA t45 TYPE REF TO object.
    t45 = t33->get_object( i_type_9913 = t34 i_name = t43 ).
    t31 ?= t45.
    t30 = t31.
    IF xsdbool( t30 IS BOUND ) = abap_true.
      result = t30.
      RETURN.
    ENDIF.
    DATA t50 TYPE REF TO zcl_lnt_ilookup_result.
    DATA t54 TYPE string.
    t54 = t1->value.
    DATA(t56) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t56->has = abap_true.
    t56->value = t54.
    t50 = me->lookup_ddls( i_name = t56 ).
    IF xsdbool( t50 IS BOUND ) = abap_true.
      DATA t60 TYPE REF TO zcl_lnt_ob_data_definition.
      DATA t64 TYPE REF TO object.
      t64 = t50->zlnt_view_read_sr_2de0200e6505( ).
      t60 ?= t64.
      result = t60.
      RETURN.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD lookup_table.
    DATA(t1) = i_name.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3 = t1.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = VALUE abap_bool( ).
    IF t3 IS INITIAL.
      t7 = abap_true.
    ELSEIF t3->has = abap_false.
      t7 = abap_true.
    ENDIF.
    IF t7 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      result = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupTable| i_qualified_name = t11 ).
      RETURN.
    ENDIF.
    DATA t12 TYPE REF TO zcl_lnt_table.
    DATA t13 TYPE REF TO zcl_lnt_table.
    DATA(t15) = me->reg.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t19) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t19->has = abap_true.
    t19->value = |TABL|.
    t16 = t19.
    DATA t23 TYPE string.
    t23 = t1->value.
    DATA(t25) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t25->has = abap_true.
    t25->value = t23.
    DATA t27 TYPE REF TO object.
    t27 = t15->get_object( i_type_9913 = t16 i_name = t25 ).
    t13 ?= t27.
    t12 = t13.
    IF xsdbool( t12 IS BOUND ) = abap_true.
      DATA t31 TYPE REF TO zcl_lnt_table.
      t31 = t12.
      DATA(t33) = me->reg.
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      result = t31->parse_type( i_reg_f149 = t33 i_data_element = t34 i_description = t35 ).
      RETURN.
    ELSE.
      DATA t38 TYPE string.
      t38 = t1->value.
      IF me->reg->in_error_namespace( i_name = t38 ) = abap_true.
        DATA t42 TYPE string.
        t42 = t1->value.
        DATA(t45) = strlen( t42 ).
        DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        result = NEW zcl_lnt_unknown_type( i_error = |{ t42 }{ | not found, lookupTable| }| i_qualified_name = t46 ).
        RETURN.
      ELSE.
        DATA t50 TYPE string.
        t50 = t1->value.
        DATA(t52) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t52->has = abap_true.
        t52->value = t50.
        DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        result = zcl_lnt_void_type=>get_db65( i_voided = t52 i_qualified_name = t54 ).
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD lookup_view.
    DATA(t1) = i_name.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3 = t1.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = VALUE abap_bool( ).
    IF t3 IS INITIAL.
      t7 = abap_true.
    ELSEIF t3->has = abap_false.
      t7 = abap_true.
    ENDIF.
    IF t7 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t10 TYPE REF TO zcl_lnt_abstract_type.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t10 = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupView| i_qualified_name = t13 ).
      DATA t14 TYPE REF TO zif_lnt_object.
      t9 = NEW zcl_lnt_ilookup_result( i_type_9913 = t10 i_object_19cd = t14 ).
      CREATE OBJECT t9->zlnt_view_ownkeys_b0e8086400eb.
      t9->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t9->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t16 ).
      CREATE OBJECT t9->zlnt_json_ownkeys_70e5fd461788.
      t9->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t9->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t18 ).
      result = t9.
      RETURN.
    ENDIF.
    DATA t19 TYPE REF TO zcl_lnt_table.
    DATA t20 TYPE REF TO zcl_lnt_table.
    DATA(t22) = me->reg.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t26->has = abap_true.
    t26->value = |VIEW|.
    t23 = t26.
    DATA t30 TYPE string.
    t30 = t1->value.
    DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t32->has = abap_true.
    t32->value = t30.
    DATA t34 TYPE REF TO object.
    t34 = t22->get_object( i_type_9913 = t23 i_name = t32 ).
    t20 ?= t34.
    t19 = t20.
    IF xsdbool( t19 IS BOUND ) = abap_true.
      DATA t37 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t38 TYPE REF TO zcl_lnt_abstract_type.
      DATA t40 TYPE REF TO zcl_lnt_table.
      t40 = t19.
      DATA(t42) = me->reg.
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t38 = t40->parse_type( i_reg_f149 = t42 i_data_element = t43 i_description = t44 ).
      DATA t45 TYPE REF TO zif_lnt_object.
      t45 = t19.
      t37 = NEW zcl_lnt_ilookup_result( i_type_9913 = t38 i_object_19cd = t45 ).
      CREATE OBJECT t37->zlnt_view_ownkeys_b0e8086400eb.
      t37->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t37->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t48 ).
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t37->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t37->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t49 ).
      ENDIF.
      CREATE OBJECT t37->zlnt_json_ownkeys_70e5fd461788.
      t37->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t37->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t51 ).
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t37->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t37->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t53 ).
      ENDIF.
      result = t37.
      RETURN.
    ELSE.
      DATA t56 TYPE string.
      t56 = t1->value.
      IF me->reg->in_error_namespace( i_name = t56 ) = abap_true.
        DATA t58 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t59 TYPE REF TO zcl_lnt_abstract_type.
        DATA t62 TYPE string.
        t62 = t1->value.
        DATA(t65) = strlen( t62 ).
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t59 = NEW zcl_lnt_unknown_type( i_error = |{ t62 }{ | not found, lookupView| }| i_qualified_name = t66 ).
        DATA t67 TYPE REF TO zif_lnt_object.
        t58 = NEW zcl_lnt_ilookup_result( i_type_9913 = t59 i_object_19cd = t67 ).
        CREATE OBJECT t58->zlnt_view_ownkeys_b0e8086400eb.
        t58->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t58->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t69 ).
        CREATE OBJECT t58->zlnt_json_ownkeys_70e5fd461788.
        t58->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t71 ).
        result = t58.
        RETURN.
      ELSE.
        DATA t72 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t73 TYPE REF TO zcl_lnt_abstract_type.
        DATA t77 TYPE string.
        t77 = t1->value.
        DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t79->has = abap_true.
        t79->value = t77.
        DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t73 = zcl_lnt_void_type=>get_db65( i_voided = t79 i_qualified_name = t81 ).
        DATA t82 TYPE REF TO zif_lnt_object.
        t72 = NEW zcl_lnt_ilookup_result( i_type_9913 = t73 i_object_19cd = t82 ).
        CREATE OBJECT t72->zlnt_view_ownkeys_b0e8086400eb.
        t72->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t72->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t84 ).
        CREATE OBJECT t72->zlnt_json_ownkeys_70e5fd461788.
        t72->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t72->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t86 ).
        result = t72.
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD lookup_table_type.
    DATA(t1) = i_name.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3 = t1.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = VALUE abap_bool( ).
    IF t3 IS INITIAL.
      t7 = abap_true.
    ELSEIF t3->has = abap_false.
      t7 = abap_true.
    ENDIF.
    IF t7 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t10 TYPE REF TO zcl_lnt_abstract_type.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t10 = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupTableType| i_qualified_name = t13 ).
      DATA t14 TYPE REF TO zif_lnt_object.
      t9 = NEW zcl_lnt_ilookup_result( i_type_9913 = t10 i_object_19cd = t14 ).
      CREATE OBJECT t9->zlnt_view_ownkeys_b0e8086400eb.
      t9->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t9->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t16 ).
      CREATE OBJECT t9->zlnt_json_ownkeys_70e5fd461788.
      t9->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t9->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t18 ).
      result = t9.
      RETURN.
    ENDIF.
    DATA t19 TYPE REF TO zcl_lnt_ob_table_type.
    DATA t20 TYPE REF TO zcl_lnt_ob_table_type.
    DATA(t22) = me->reg.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t26->has = abap_true.
    t26->value = |TTYP|.
    t23 = t26.
    DATA t30 TYPE string.
    t30 = t1->value.
    DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t32->has = abap_true.
    t32->value = t30.
    DATA t34 TYPE REF TO object.
    t34 = t22->get_object( i_type_9913 = t23 i_name = t32 ).
    t20 ?= t34.
    t19 = t20.
    IF xsdbool( t19 IS BOUND ) = abap_true.
      DATA t37 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t38 TYPE REF TO zcl_lnt_abstract_type.
      DATA t40 TYPE REF TO zcl_lnt_ob_table_type.
      t40 = t19.
      DATA(t42) = me->reg.
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t38 = t40->parse_type( i_reg_f149 = t42 i_data_element = t43 i_description = t44 ).
      DATA t45 TYPE REF TO zif_lnt_object.
      t45 = t19.
      t37 = NEW zcl_lnt_ilookup_result( i_type_9913 = t38 i_object_19cd = t45 ).
      CREATE OBJECT t37->zlnt_view_ownkeys_b0e8086400eb.
      t37->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t37->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t48 ).
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t37->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t37->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t49 ).
      ENDIF.
      CREATE OBJECT t37->zlnt_json_ownkeys_70e5fd461788.
      t37->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t37->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t51 ).
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t37->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t37->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t53 ).
      ENDIF.
      result = t37.
      RETURN.
    ELSE.
      DATA t56 TYPE string.
      t56 = t1->value.
      IF me->reg->in_error_namespace( i_name = t56 ) = abap_true.
        DATA t58 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t59 TYPE REF TO zcl_lnt_abstract_type.
        DATA t62 TYPE string.
        t62 = t1->value.
        DATA(t65) = strlen( t62 ).
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t59 = NEW zcl_lnt_unknown_type( i_error = |{ t62 }{ | not found, lookupTableType| }| i_qualified_name = t66 ).
        DATA t67 TYPE REF TO zif_lnt_object.
        t58 = NEW zcl_lnt_ilookup_result( i_type_9913 = t59 i_object_19cd = t67 ).
        CREATE OBJECT t58->zlnt_view_ownkeys_b0e8086400eb.
        t58->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t58->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t69 ).
        CREATE OBJECT t58->zlnt_json_ownkeys_70e5fd461788.
        t58->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t71 ).
        result = t58.
        RETURN.
      ELSE.
        DATA t72 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t73 TYPE REF TO zcl_lnt_abstract_type.
        DATA t77 TYPE string.
        t77 = t1->value.
        DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t79->has = abap_true.
        t79->value = t77.
        DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t73 = zcl_lnt_void_type=>get_db65( i_voided = t79 i_qualified_name = t81 ).
        DATA t82 TYPE REF TO zif_lnt_object.
        t72 = NEW zcl_lnt_ilookup_result( i_type_9913 = t73 i_object_19cd = t82 ).
        CREATE OBJECT t72->zlnt_view_ownkeys_b0e8086400eb.
        t72->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t72->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t84 ).
        CREATE OBJECT t72->zlnt_json_ownkeys_70e5fd461788.
        t72->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t72->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t86 ).
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
    DATA t3 TYPE REF TO zcl_lnt_abstract_type_data.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t4 = t1->qualified_name.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t7 = t1->conversion_exit.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t10 = t1->ddic_name.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t14 = t1->description.
    DATA t16 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t4 i_conversion_exit = t7 i_derived_from_constant = t16 i_ddic_name = t10 i_rtti_name = t18 i_description = t14 ).
    CREATE OBJECT t3->zlnt_view_ownkeys_b0e8086400eb.
    t3->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t20 ).
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `conversionExit` p1 = t21 ).
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ddicName` p1 = t22 ).
    ENDIF.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t23 ).
    ENDIF.
    CREATE OBJECT t3->zlnt_json_ownkeys_70e5fd461788.
    t3->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t25 ).
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = |conversionExit| p1 = t27 ).
    ENDIF.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ddicName| p1 = t29 ).
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t31 ).
    ENDIF.
    t2 = t3.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t32 = t1->text.
    DATA(t35) = VALUE abap_bool( ).
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t40->has = abap_true.
    t40->value = |DEC|.
    t37 = t40.
    DATA(t42) = VALUE abap_bool( ).
    DATA(t43) = VALUE abap_bool( ).
    IF t32 IS BOUND.
      t42 = t32->has.
    ENDIF.
    IF t37 IS BOUND.
      t43 = t37->has.
    ENDIF.
    IF t42 = t43.
      IF t42 = abap_false.
        t35 = abap_true.
      ELSEIF t32->value = t37->value.
        t35 = abap_true.
      ENDIF.
    ENDIF.
    IF t35 = abap_true.
      DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t45 = t1->length.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t50) = VALUE abap_bool( ).
      IF t45 IS INITIAL.
        t50 = abap_true.
      ELSEIF t45->has = abap_false.
        t50 = abap_true.
      ENDIF.
      IF t50 = abap_true.
        DATA t53 TYPE string.
        DATA t54 TYPE string.
        DATA t55 TYPE string.
        t55 = t1->text->value.
        DATA(t59) = strlen( t55 ).
        t54 = |{ t55 }{ | unknown length, | }|.
        DATA t60 TYPE string.
        t60 = t1->info_text.
        DATA(t62) = strlen( t54 ).
        t53 = |{ t54 }{ t60 }|.
        DATA t65 TYPE string.
        t65 = t1->info_text.
        DATA(t67) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t67->has = abap_true.
        t67->value = t65.
        result = NEW zcl_lnt_unknown_type( i_error = t53 i_qualified_name = t67 ).
        RETURN.
      ENDIF.
      DATA(t69) = VALUE f( ).
      DATA(t70) = VALUE f( ).
      DATA(t71) = VALUE f( ).
      DATA(t72) = VALUE f( ).
      DATA(t73) = VALUE f( ).
      DATA t74 TYPE string.
      t74 = t1->length->value.
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
      DATA(t95) = VALUE f( ).
      DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t97 = t1->decimals_29bf.
      DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t102) = VALUE abap_bool( ).
      IF t97 IS INITIAL.
        t102 = abap_true.
      ELSEIF t97->has = abap_false.
        t102 = abap_true.
      ENDIF.
      IF t102 = abap_true.
        t95 = CONV f( 0 ).
      ELSE.
        DATA(t105) = VALUE f( ).
        DATA t106 TYPE string.
        t106 = t1->decimals_29bf->value.
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
      result = NEW zcl_lnt_packed_type( i_length = t69 i_decimals_2eed = t95 i_extra = t2 ).
      RETURN.
    ELSE.
      DATA(t131) = VALUE abap_bool( ).
      DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t136) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t136->has = abap_true.
      t136->value = |D16F|.
      t133 = t136.
      DATA(t138) = VALUE abap_bool( ).
      DATA(t139) = VALUE abap_bool( ).
      IF t32 IS BOUND.
        t138 = t32->has.
      ENDIF.
      IF t133 IS BOUND.
        t139 = t133->has.
      ENDIF.
      IF t138 = t139.
        IF t138 = abap_false.
          t131 = abap_true.
        ELSEIF t32->value = t133->value.
          t131 = abap_true.
        ENDIF.
      ENDIF.
      IF t131 = abap_true.
        DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t141 = t1->length.
        DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t146) = VALUE abap_bool( ).
        IF t141 IS INITIAL.
          t146 = abap_true.
        ELSEIF t141->has = abap_false.
          t146 = abap_true.
        ENDIF.
        IF t146 = abap_true.
          DATA t149 TYPE string.
          DATA t150 TYPE string.
          DATA t151 TYPE string.
          t151 = t1->text->value.
          DATA(t155) = strlen( t151 ).
          t150 = |{ t151 }{ | unknown length, | }|.
          DATA t156 TYPE string.
          t156 = t1->info_text.
          DATA(t158) = strlen( t150 ).
          t149 = |{ t150 }{ t156 }|.
          DATA t161 TYPE string.
          t161 = t1->info_text.
          DATA(t163) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t163->has = abap_true.
          t163->value = t161.
          result = NEW zcl_lnt_unknown_type( i_error = t149 i_qualified_name = t163 ).
          RETURN.
        ENDIF.
        DATA(t165) = VALUE f( ).
        DATA(t166) = VALUE f( ).
        DATA(t167) = VALUE f( ).
        DATA(t168) = VALUE f( ).
        DATA(t169) = VALUE f( ).
        DATA t170 TYPE string.
        t170 = t1->length->value.
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
        DATA(t191) = VALUE f( ).
        DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t193 = t1->decimals_29bf.
        DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t198) = VALUE abap_bool( ).
        IF t193 IS INITIAL.
          t198 = abap_true.
        ELSEIF t193->has = abap_false.
          t198 = abap_true.
        ENDIF.
        IF t198 = abap_true.
          t191 = CONV f( 0 ).
        ELSE.
          DATA(t201) = VALUE f( ).
          DATA t202 TYPE string.
          t202 = t1->decimals_29bf->value.
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
        result = NEW zcl_lnt_packed_type( i_length = t165 i_decimals_2eed = t191 i_extra = t2 ).
        RETURN.
      ELSE.
        DATA(t227) = VALUE abap_bool( ).
        DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t232) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t232->has = abap_true.
        t232->value = |D16D|.
        t229 = t232.
        DATA(t234) = VALUE abap_bool( ).
        DATA(t235) = VALUE abap_bool( ).
        IF t32 IS BOUND.
          t234 = t32->has.
        ENDIF.
        IF t229 IS BOUND.
          t235 = t229->has.
        ENDIF.
        IF t234 = t235.
          IF t234 = abap_false.
            t227 = abap_true.
          ELSEIF t32->value = t229->value.
            t227 = abap_true.
          ENDIF.
        ENDIF.
        IF t227 = abap_true.
          DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t237 = t1->length.
          DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t242) = VALUE abap_bool( ).
          IF t237 IS INITIAL.
            t242 = abap_true.
          ELSEIF t237->has = abap_false.
            t242 = abap_true.
          ENDIF.
          IF t242 = abap_true.
            DATA t245 TYPE string.
            DATA t246 TYPE string.
            DATA t247 TYPE string.
            t247 = t1->text->value.
            DATA(t251) = strlen( t247 ).
            t246 = |{ t247 }{ | unknown length, | }|.
            DATA t252 TYPE string.
            t252 = t1->info_text.
            DATA(t254) = strlen( t246 ).
            t245 = |{ t246 }{ t252 }|.
            DATA t257 TYPE string.
            t257 = t1->info_text.
            DATA(t259) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t259->has = abap_true.
            t259->value = t257.
            result = NEW zcl_lnt_unknown_type( i_error = t245 i_qualified_name = t259 ).
            RETURN.
          ENDIF.
          DATA(t261) = VALUE f( ).
          DATA(t262) = VALUE f( ).
          DATA(t263) = VALUE f( ).
          DATA(t264) = VALUE f( ).
          DATA(t265) = VALUE f( ).
          DATA t266 TYPE string.
          t266 = t1->length->value.
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
          DATA(t287) = VALUE f( ).
          DATA t289 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t289 = t1->decimals_29bf.
          DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t294) = VALUE abap_bool( ).
          IF t289 IS INITIAL.
            t294 = abap_true.
          ELSEIF t289->has = abap_false.
            t294 = abap_true.
          ENDIF.
          IF t294 = abap_true.
            t287 = CONV f( 0 ).
          ELSE.
            DATA(t297) = VALUE f( ).
            DATA t298 TYPE string.
            t298 = t1->decimals_29bf->value.
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
          result = NEW zcl_lnt_packed_type( i_length = t261 i_decimals_2eed = t287 i_extra = t2 ).
          RETURN.
        ELSE.
          DATA(t323) = VALUE abap_bool( ).
          DATA t325 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t328) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t328->has = abap_true.
          t328->value = |D34D|.
          t325 = t328.
          DATA(t330) = VALUE abap_bool( ).
          DATA(t331) = VALUE abap_bool( ).
          IF t32 IS BOUND.
            t330 = t32->has.
          ENDIF.
          IF t325 IS BOUND.
            t331 = t325->has.
          ENDIF.
          IF t330 = t331.
            IF t330 = abap_false.
              t323 = abap_true.
            ELSEIF t32->value = t325->value.
              t323 = abap_true.
            ENDIF.
          ENDIF.
          IF t323 = abap_true.
            DATA t333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t333 = t1->length.
            DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t338) = VALUE abap_bool( ).
            IF t333 IS INITIAL.
              t338 = abap_true.
            ELSEIF t333->has = abap_false.
              t338 = abap_true.
            ENDIF.
            IF t338 = abap_true.
              DATA t341 TYPE string.
              DATA t342 TYPE string.
              DATA t343 TYPE string.
              t343 = t1->text->value.
              DATA(t347) = strlen( t343 ).
              t342 = |{ t343 }{ | unknown length, | }|.
              DATA t348 TYPE string.
              t348 = t1->info_text.
              DATA(t350) = strlen( t342 ).
              t341 = |{ t342 }{ t348 }|.
              DATA t353 TYPE string.
              t353 = t1->info_text.
              DATA(t355) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t355->has = abap_true.
              t355->value = t353.
              result = NEW zcl_lnt_unknown_type( i_error = t341 i_qualified_name = t355 ).
              RETURN.
            ENDIF.
            DATA(t357) = VALUE f( ).
            DATA(t358) = VALUE f( ).
            DATA(t359) = VALUE f( ).
            DATA(t360) = VALUE f( ).
            DATA(t361) = VALUE f( ).
            DATA t362 TYPE string.
            t362 = t1->length->value.
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
            DATA(t383) = VALUE f( ).
            DATA t385 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t385 = t1->decimals_29bf.
            DATA t388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t390) = VALUE abap_bool( ).
            IF t385 IS INITIAL.
              t390 = abap_true.
            ELSEIF t385->has = abap_false.
              t390 = abap_true.
            ENDIF.
            IF t390 = abap_true.
              t383 = CONV f( 0 ).
            ELSE.
              DATA(t393) = VALUE f( ).
              DATA t394 TYPE string.
              t394 = t1->decimals_29bf->value.
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
            result = NEW zcl_lnt_packed_type( i_length = t357 i_decimals_2eed = t383 i_extra = t2 ).
            RETURN.
          ELSE.
            DATA(t419) = VALUE abap_bool( ).
            DATA t421 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t424) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t424->has = abap_true.
            t424->value = |D34F|.
            t421 = t424.
            DATA(t426) = VALUE abap_bool( ).
            DATA(t427) = VALUE abap_bool( ).
            IF t32 IS BOUND.
              t426 = t32->has.
            ENDIF.
            IF t421 IS BOUND.
              t427 = t421->has.
            ENDIF.
            IF t426 = t427.
              IF t426 = abap_false.
                t419 = abap_true.
              ELSEIF t32->value = t421->value.
                t419 = abap_true.
              ENDIF.
            ENDIF.
            IF t419 = abap_true.
              DATA t429 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t429 = t1->length.
              DATA t432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA(t434) = VALUE abap_bool( ).
              IF t429 IS INITIAL.
                t434 = abap_true.
              ELSEIF t429->has = abap_false.
                t434 = abap_true.
              ENDIF.
              IF t434 = abap_true.
                DATA t437 TYPE string.
                DATA t438 TYPE string.
                DATA t439 TYPE string.
                t439 = t1->text->value.
                DATA(t443) = strlen( t439 ).
                t438 = |{ t439 }{ | unknown length, | }|.
                DATA t444 TYPE string.
                t444 = t1->info_text.
                DATA(t446) = strlen( t438 ).
                t437 = |{ t438 }{ t444 }|.
                DATA t449 TYPE string.
                t449 = t1->info_text.
                DATA(t451) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t451->has = abap_true.
                t451->value = t449.
                result = NEW zcl_lnt_unknown_type( i_error = t437 i_qualified_name = t451 ).
                RETURN.
              ENDIF.
              DATA(t453) = VALUE f( ).
              DATA(t454) = VALUE f( ).
              DATA(t455) = VALUE f( ).
              DATA(t456) = VALUE f( ).
              DATA(t457) = VALUE f( ).
              DATA t458 TYPE string.
              t458 = t1->length->value.
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
              DATA(t479) = VALUE f( ).
              DATA t481 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t481 = t1->decimals_29bf.
              DATA t484 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA(t486) = VALUE abap_bool( ).
              IF t481 IS INITIAL.
                t486 = abap_true.
              ELSEIF t481->has = abap_false.
                t486 = abap_true.
              ENDIF.
              IF t486 = abap_true.
                t479 = CONV f( 0 ).
              ELSE.
                DATA(t489) = VALUE f( ).
                DATA t490 TYPE string.
                t490 = t1->decimals_29bf->value.
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
              result = NEW zcl_lnt_packed_type( i_length = t453 i_decimals_2eed = t479 i_extra = t2 ).
              RETURN.
            ELSE.
              DATA(t515) = VALUE abap_bool( ).
              DATA t517 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t520) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t520->has = abap_true.
              t520->value = |DF16_DEC|.
              t517 = t520.
              DATA(t522) = VALUE abap_bool( ).
              DATA(t523) = VALUE abap_bool( ).
              IF t32 IS BOUND.
                t522 = t32->has.
              ENDIF.
              IF t517 IS BOUND.
                t523 = t517->has.
              ENDIF.
              IF t522 = t523.
                IF t522 = abap_false.
                  t515 = abap_true.
                ELSEIF t32->value = t517->value.
                  t515 = abap_true.
                ENDIF.
              ENDIF.
              IF t515 = abap_true.
                DATA t525 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t525 = t1->length.
                DATA t528 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA(t530) = VALUE abap_bool( ).
                IF t525 IS INITIAL.
                  t530 = abap_true.
                ELSEIF t525->has = abap_false.
                  t530 = abap_true.
                ENDIF.
                IF t530 = abap_true.
                  DATA t533 TYPE string.
                  DATA t534 TYPE string.
                  DATA t535 TYPE string.
                  t535 = t1->text->value.
                  DATA(t539) = strlen( t535 ).
                  t534 = |{ t535 }{ | unknown length, | }|.
                  DATA t540 TYPE string.
                  t540 = t1->info_text.
                  DATA(t542) = strlen( t534 ).
                  t533 = |{ t534 }{ t540 }|.
                  DATA t545 TYPE string.
                  t545 = t1->info_text.
                  DATA(t547) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t547->has = abap_true.
                  t547->value = t545.
                  result = NEW zcl_lnt_unknown_type( i_error = t533 i_qualified_name = t547 ).
                  RETURN.
                ENDIF.
                DATA(t549) = VALUE f( ).
                DATA(t550) = VALUE f( ).
                DATA(t551) = VALUE f( ).
                DATA(t552) = VALUE f( ).
                DATA(t553) = VALUE f( ).
                DATA t554 TYPE string.
                t554 = t1->length->value.
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
                DATA(t575) = VALUE f( ).
                DATA t577 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t577 = t1->decimals_29bf.
                DATA t580 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA(t582) = VALUE abap_bool( ).
                IF t577 IS INITIAL.
                  t582 = abap_true.
                ELSEIF t577->has = abap_false.
                  t582 = abap_true.
                ENDIF.
                IF t582 = abap_true.
                  t575 = CONV f( 0 ).
                ELSE.
                  DATA(t585) = VALUE f( ).
                  DATA t586 TYPE string.
                  t586 = t1->decimals_29bf->value.
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
                result = NEW zcl_lnt_packed_type( i_length = t549 i_decimals_2eed = t575 i_extra = t2 ).
                RETURN.
              ELSE.
                DATA(t611) = VALUE abap_bool( ).
                DATA t613 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t616) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t616->has = abap_true.
                t616->value = |DF34_DEC|.
                t613 = t616.
                DATA(t618) = VALUE abap_bool( ).
                DATA(t619) = VALUE abap_bool( ).
                IF t32 IS BOUND.
                  t618 = t32->has.
                ENDIF.
                IF t613 IS BOUND.
                  t619 = t613->has.
                ENDIF.
                IF t618 = t619.
                  IF t618 = abap_false.
                    t611 = abap_true.
                  ELSEIF t32->value = t613->value.
                    t611 = abap_true.
                  ENDIF.
                ENDIF.
                IF t611 = abap_true.
                  DATA t621 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  t621 = t1->length.
                  DATA t624 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  DATA(t626) = VALUE abap_bool( ).
                  IF t621 IS INITIAL.
                    t626 = abap_true.
                  ELSEIF t621->has = abap_false.
                    t626 = abap_true.
                  ENDIF.
                  IF t626 = abap_true.
                    DATA t629 TYPE string.
                    DATA t630 TYPE string.
                    DATA t631 TYPE string.
                    t631 = t1->text->value.
                    DATA(t635) = strlen( t631 ).
                    t630 = |{ t631 }{ | unknown length, | }|.
                    DATA t636 TYPE string.
                    t636 = t1->info_text.
                    DATA(t638) = strlen( t630 ).
                    t629 = |{ t630 }{ t636 }|.
                    DATA t641 TYPE string.
                    t641 = t1->info_text.
                    DATA(t643) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t643->has = abap_true.
                    t643->value = t641.
                    result = NEW zcl_lnt_unknown_type( i_error = t629 i_qualified_name = t643 ).
                    RETURN.
                  ENDIF.
                  DATA(t645) = VALUE f( ).
                  DATA(t646) = VALUE f( ).
                  DATA(t647) = VALUE f( ).
                  DATA(t648) = VALUE f( ).
                  DATA(t649) = VALUE f( ).
                  DATA t650 TYPE string.
                  t650 = t1->length->value.
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
                  DATA(t671) = VALUE f( ).
                  DATA t673 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  t673 = t1->decimals_29bf.
                  DATA t676 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  DATA(t678) = VALUE abap_bool( ).
                  IF t673 IS INITIAL.
                    t678 = abap_true.
                  ELSEIF t673->has = abap_false.
                    t678 = abap_true.
                  ENDIF.
                  IF t678 = abap_true.
                    t671 = CONV f( 0 ).
                  ELSE.
                    DATA(t681) = VALUE f( ).
                    DATA t682 TYPE string.
                    t682 = t1->decimals_29bf->value.
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
                  result = NEW zcl_lnt_packed_type( i_length = t645 i_decimals_2eed = t671 i_extra = t2 ).
                  RETURN.
                ELSE.
                  DATA(t707) = VALUE abap_bool( ).
                  DATA t709 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t712) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t712->has = abap_true.
                  t712->value = |CURR|.
                  t709 = t712.
                  DATA(t714) = VALUE abap_bool( ).
                  DATA(t715) = VALUE abap_bool( ).
                  IF t32 IS BOUND.
                    t714 = t32->has.
                  ENDIF.
                  IF t709 IS BOUND.
                    t715 = t709->has.
                  ENDIF.
                  IF t714 = t715.
                    IF t714 = abap_false.
                      t707 = abap_true.
                    ELSEIF t32->value = t709->value.
                      t707 = abap_true.
                    ENDIF.
                  ENDIF.
                  IF t707 = abap_true.
                    DATA t717 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    t717 = t1->length.
                    DATA t720 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    DATA(t722) = VALUE abap_bool( ).
                    IF t717 IS INITIAL.
                      t722 = abap_true.
                    ELSEIF t717->has = abap_false.
                      t722 = abap_true.
                    ENDIF.
                    IF t722 = abap_true.
                      DATA t725 TYPE string.
                      DATA t726 TYPE string.
                      DATA t727 TYPE string.
                      t727 = t1->text->value.
                      DATA(t731) = strlen( t727 ).
                      t726 = |{ t727 }{ | unknown length, | }|.
                      DATA t732 TYPE string.
                      t732 = t1->info_text.
                      DATA(t734) = strlen( t726 ).
                      t725 = |{ t726 }{ t732 }|.
                      DATA t737 TYPE string.
                      t737 = t1->info_text.
                      DATA(t739) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t739->has = abap_true.
                      t739->value = t737.
                      result = NEW zcl_lnt_unknown_type( i_error = t725 i_qualified_name = t739 ).
                      RETURN.
                    ENDIF.
                    DATA(t741) = VALUE f( ).
                    DATA(t742) = VALUE f( ).
                    DATA(t743) = VALUE f( ).
                    DATA(t744) = VALUE f( ).
                    DATA(t745) = VALUE f( ).
                    DATA t746 TYPE string.
                    t746 = t1->length->value.
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
                    DATA(t767) = VALUE f( ).
                    DATA t769 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    t769 = t1->decimals_29bf.
                    DATA t772 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    DATA(t774) = VALUE abap_bool( ).
                    IF t769 IS INITIAL.
                      t774 = abap_true.
                    ELSEIF t769->has = abap_false.
                      t774 = abap_true.
                    ENDIF.
                    IF t774 = abap_true.
                      t767 = CONV f( 0 ).
                    ELSE.
                      DATA(t777) = VALUE f( ).
                      DATA t778 TYPE string.
                      t778 = t1->decimals_29bf->value.
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
                    result = NEW zcl_lnt_packed_type( i_length = t741 i_decimals_2eed = t767 i_extra = t2 ).
                    RETURN.
                  ELSE.
                    DATA(t803) = VALUE abap_bool( ).
                    DATA t805 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA(t808) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t808->has = abap_true.
                    t808->value = |QUAN|.
                    t805 = t808.
                    DATA(t810) = VALUE abap_bool( ).
                    DATA(t811) = VALUE abap_bool( ).
                    IF t32 IS BOUND.
                      t810 = t32->has.
                    ENDIF.
                    IF t805 IS BOUND.
                      t811 = t805->has.
                    ENDIF.
                    IF t810 = t811.
                      IF t810 = abap_false.
                        t803 = abap_true.
                      ELSEIF t32->value = t805->value.
                        t803 = abap_true.
                      ENDIF.
                    ENDIF.
                    IF t803 = abap_true.
                      DATA t813 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      t813 = t1->length.
                      DATA t816 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      DATA(t818) = VALUE abap_bool( ).
                      IF t813 IS INITIAL.
                        t818 = abap_true.
                      ELSEIF t813->has = abap_false.
                        t818 = abap_true.
                      ENDIF.
                      IF t818 = abap_true.
                        DATA t821 TYPE string.
                        DATA t822 TYPE string.
                        DATA t823 TYPE string.
                        t823 = t1->text->value.
                        DATA(t827) = strlen( t823 ).
                        t822 = |{ t823 }{ | unknown length, | }|.
                        DATA t828 TYPE string.
                        t828 = t1->info_text.
                        DATA(t830) = strlen( t822 ).
                        t821 = |{ t822 }{ t828 }|.
                        DATA t833 TYPE string.
                        t833 = t1->info_text.
                        DATA(t835) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t835->has = abap_true.
                        t835->value = t833.
                        result = NEW zcl_lnt_unknown_type( i_error = t821 i_qualified_name = t835 ).
                        RETURN.
                      ENDIF.
                      DATA(t837) = VALUE f( ).
                      DATA(t838) = VALUE f( ).
                      DATA(t839) = VALUE f( ).
                      DATA(t840) = VALUE f( ).
                      DATA(t841) = VALUE f( ).
                      DATA t842 TYPE string.
                      t842 = t1->length->value.
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
                      DATA(t863) = VALUE f( ).
                      DATA t865 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      t865 = t1->decimals_29bf.
                      DATA t868 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      DATA(t870) = VALUE abap_bool( ).
                      IF t865 IS INITIAL.
                        t870 = abap_true.
                      ELSEIF t865->has = abap_false.
                        t870 = abap_true.
                      ENDIF.
                      IF t870 = abap_true.
                        t863 = CONV f( 0 ).
                      ELSE.
                        DATA(t873) = VALUE f( ).
                        DATA t874 TYPE string.
                        t874 = t1->decimals_29bf->value.
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
                      result = NEW zcl_lnt_packed_type( i_length = t837 i_decimals_2eed = t863 i_extra = t2 ).
                      RETURN.
                    ELSE.
                      DATA(t899) = VALUE abap_bool( ).
                      DATA t901 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA(t904) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t904->has = abap_true.
                      t904->value = |ACCP|.
                      t901 = t904.
                      DATA(t906) = VALUE abap_bool( ).
                      DATA(t907) = VALUE abap_bool( ).
                      IF t32 IS BOUND.
                        t906 = t32->has.
                      ENDIF.
                      IF t901 IS BOUND.
                        t907 = t901->has.
                      ENDIF.
                      IF t906 = t907.
                        IF t906 = abap_false.
                          t899 = abap_true.
                        ELSEIF t32->value = t901->value.
                          t899 = abap_true.
                        ENDIF.
                      ENDIF.
                      IF t899 = abap_true.
                        result = NEW zcl_lnt_character_type( i_length = CONV f( 6 ) i_extra = t2 ).
                        RETURN.
                      ELSE.
                        DATA(t914) = VALUE abap_bool( ).
                        DATA t916 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        DATA(t919) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t919->has = abap_true.
                        t919->value = |LANG|.
                        t916 = t919.
                        DATA(t921) = VALUE abap_bool( ).
                        DATA(t922) = VALUE abap_bool( ).
                        IF t32 IS BOUND.
                          t921 = t32->has.
                        ENDIF.
                        IF t916 IS BOUND.
                          t922 = t916->has.
                        ENDIF.
                        IF t921 = t922.
                          IF t921 = abap_false.
                            t914 = abap_true.
                          ELSEIF t32->value = t916->value.
                            t914 = abap_true.
                          ENDIF.
                        ENDIF.
                        IF t914 = abap_true.
                          result = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t2 ).
                          RETURN.
                        ELSE.
                          DATA(t929) = VALUE abap_bool( ).
                          DATA t931 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          DATA(t934) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t934->has = abap_true.
                          t934->value = |CLNT|.
                          t931 = t934.
                          DATA(t936) = VALUE abap_bool( ).
                          DATA(t937) = VALUE abap_bool( ).
                          IF t32 IS BOUND.
                            t936 = t32->has.
                          ENDIF.
                          IF t931 IS BOUND.
                            t937 = t931->has.
                          ENDIF.
                          IF t936 = t937.
                            IF t936 = abap_false.
                              t929 = abap_true.
                            ELSEIF t32->value = t931->value.
                              t929 = abap_true.
                            ENDIF.
                          ENDIF.
                          IF t929 = abap_true.
                            result = NEW zcl_lnt_character_type( i_length = CONV f( 3 ) i_extra = t2 ).
                            RETURN.
                          ELSE.
                            DATA(t944) = VALUE abap_bool( ).
                            DATA t946 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            DATA(t949) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                            t949->has = abap_true.
                            t949->value = |CUKY|.
                            t946 = t949.
                            DATA(t951) = VALUE abap_bool( ).
                            DATA(t952) = VALUE abap_bool( ).
                            IF t32 IS BOUND.
                              t951 = t32->has.
                            ENDIF.
                            IF t946 IS BOUND.
                              t952 = t946->has.
                            ENDIF.
                            IF t951 = t952.
                              IF t951 = abap_false.
                                t944 = abap_true.
                              ELSEIF t32->value = t946->value.
                                t944 = abap_true.
                              ENDIF.
                            ENDIF.
                            IF t944 = abap_true.
                              result = NEW zcl_lnt_character_type( i_length = CONV f( 5 ) i_extra = t2 ).
                              RETURN.
                            ELSE.
                              DATA(t959) = VALUE abap_bool( ).
                              DATA t961 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              DATA(t964) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                              t964->has = abap_true.
                              t964->value = |UNIT|.
                              t961 = t964.
                              DATA(t966) = VALUE abap_bool( ).
                              DATA(t967) = VALUE abap_bool( ).
                              IF t32 IS BOUND.
                                t966 = t32->has.
                              ENDIF.
                              IF t961 IS BOUND.
                                t967 = t961->has.
                              ENDIF.
                              IF t966 = t967.
                                IF t966 = abap_false.
                                  t959 = abap_true.
                                ELSEIF t32->value = t961->value.
                                  t959 = abap_true.
                                ENDIF.
                              ENDIF.
                              IF t959 = abap_true.
                                result = NEW zcl_lnt_character_type( i_length = CONV f( 3 ) i_extra = t2 ).
                                RETURN.
                              ELSE.
                                DATA(t974) = VALUE abap_bool( ).
                                DATA t976 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                DATA(t979) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                t979->has = abap_true.
                                t979->value = |UTCL|.
                                t976 = t979.
                                DATA(t981) = VALUE abap_bool( ).
                                DATA(t982) = VALUE abap_bool( ).
                                IF t32 IS BOUND.
                                  t981 = t32->has.
                                ENDIF.
                                IF t976 IS BOUND.
                                  t982 = t976->has.
                                ENDIF.
                                IF t981 = t982.
                                  IF t981 = abap_false.
                                    t974 = abap_true.
                                  ELSEIF t32->value = t976->value.
                                    t974 = abap_true.
                                  ENDIF.
                                ENDIF.
                                IF t974 = abap_true.
                                  result = NEW zcl_lnt_character_type( i_length = CONV f( 27 ) i_extra = t2 ).
                                  RETURN.
                                ELSE.
                                  DATA(t989) = VALUE abap_bool( ).
                                  DATA t991 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                  DATA(t994) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                  t994->has = abap_true.
                                  t994->value = |UTCLONG|.
                                  t991 = t994.
                                  DATA(t996) = VALUE abap_bool( ).
                                  DATA(t997) = VALUE abap_bool( ).
                                  IF t32 IS BOUND.
                                    t996 = t32->has.
                                  ENDIF.
                                  IF t991 IS BOUND.
                                    t997 = t991->has.
                                  ENDIF.
                                  IF t996 = t997.
                                    IF t996 = abap_false.
                                      t989 = abap_true.
                                    ELSEIF t32->value = t991->value.
                                      t989 = abap_true.
                                    ENDIF.
                                  ENDIF.
                                  IF t989 = abap_true.
                                    result = NEW zcl_lnt_character_type( i_length = CONV f( 27 ) i_extra = t2 ).
                                    RETURN.
                                  ELSE.
                                    DATA(t1004) = VALUE abap_bool( ).
                                    DATA t1006 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                    DATA(t1009) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                    t1009->has = abap_true.
                                    t1009->value = |NUMC|.
                                    t1006 = t1009.
                                    DATA(t1011) = VALUE abap_bool( ).
                                    DATA(t1012) = VALUE abap_bool( ).
                                    IF t32 IS BOUND.
                                      t1011 = t32->has.
                                    ENDIF.
                                    IF t1006 IS BOUND.
                                      t1012 = t1006->has.
                                    ENDIF.
                                    IF t1011 = t1012.
                                      IF t1011 = abap_false.
                                        t1004 = abap_true.
                                      ELSEIF t32->value = t1006->value.
                                        t1004 = abap_true.
                                      ENDIF.
                                    ENDIF.
                                    IF t1004 = abap_true.
                                      DATA t1014 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                      t1014 = t1->length.
                                      DATA t1017 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                      DATA(t1019) = VALUE abap_bool( ).
                                      IF t1014 IS INITIAL.
                                        t1019 = abap_true.
                                      ELSEIF t1014->has = abap_false.
                                        t1019 = abap_true.
                                      ENDIF.
                                      IF t1019 = abap_true.
                                        DATA t1022 TYPE string.
                                        DATA t1023 TYPE string.
                                        t1023 = t1->text->value.
                                        DATA(t1027) = strlen( t1023 ).
                                        t1022 = |{ t1023 }{ | unknown length| }|.
                                        DATA t1030 TYPE string.
                                        t1030 = t1->info_text.
                                        DATA(t1032) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                        t1032->has = abap_true.
                                        t1032->value = t1030.
                                        result = NEW zcl_lnt_unknown_type( i_error = t1022 i_qualified_name = t1032 ).
                                        RETURN.
                                      ENDIF.
                                      DATA(t1035) = VALUE f( ).
                                      DATA t1036 TYPE string.
                                      t1036 = t1->length->value.
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
                                      t1054 = t1->qualified_name.
                                      result = NEW zcl_lnt_numeric_type( i_length = t1035 i_qualified_name = t1054 ).
                                      RETURN.
                                    ELSE.
                                      DATA(t1056) = VALUE abap_bool( ).
                                      DATA t1058 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                      DATA(t1061) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                      t1061->has = abap_true.
                                      t1061->value = |CHAR|.
                                      t1058 = t1061.
                                      DATA(t1063) = VALUE abap_bool( ).
                                      DATA(t1064) = VALUE abap_bool( ).
                                      IF t32 IS BOUND.
                                        t1063 = t32->has.
                                      ENDIF.
                                      IF t1058 IS BOUND.
                                        t1064 = t1058->has.
                                      ENDIF.
                                      IF t1063 = t1064.
                                        IF t1063 = abap_false.
                                          t1056 = abap_true.
                                        ELSEIF t32->value = t1058->value.
                                          t1056 = abap_true.
                                        ENDIF.
                                      ENDIF.
                                      IF t1056 = abap_true.
                                        DATA t1066 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                        t1066 = t1->length.
                                        DATA t1069 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                        DATA(t1071) = VALUE abap_bool( ).
                                        IF t1066 IS INITIAL.
                                          t1071 = abap_true.
                                        ELSEIF t1066->has = abap_false.
                                          t1071 = abap_true.
                                        ENDIF.
                                        IF t1071 = abap_true.
                                          DATA t1074 TYPE string.
                                          DATA t1075 TYPE string.
                                          t1075 = t1->text->value.
                                          DATA(t1079) = strlen( t1075 ).
                                          t1074 = |{ t1075 }{ | unknown length| }|.
                                          DATA t1082 TYPE string.
                                          t1082 = t1->info_text.
                                          DATA(t1084) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                          t1084->has = abap_true.
                                          t1084->value = t1082.
                                          result = NEW zcl_lnt_unknown_type( i_error = t1074 i_qualified_name = t1084 ).
                                          RETURN.
                                        ENDIF.
                                        DATA(t1087) = VALUE f( ).
                                        DATA t1088 TYPE string.
                                        t1088 = t1->length->value.
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
                                        result = NEW zcl_lnt_character_type( i_length = t1087 i_extra = t2 ).
                                        RETURN.
                                      ELSE.
                                        DATA(t1110) = VALUE abap_bool( ).
                                        DATA t1112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                        DATA(t1115) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                        t1115->has = abap_true.
                                        t1115->value = |LCHR|.
                                        t1112 = t1115.
                                        DATA(t1117) = VALUE abap_bool( ).
                                        DATA(t1118) = VALUE abap_bool( ).
                                        IF t32 IS BOUND.
                                          t1117 = t32->has.
                                        ENDIF.
                                        IF t1112 IS BOUND.
                                          t1118 = t1112->has.
                                        ENDIF.
                                        IF t1117 = t1118.
                                          IF t1117 = abap_false.
                                            t1110 = abap_true.
                                          ELSEIF t32->value = t1112->value.
                                            t1110 = abap_true.
                                          ENDIF.
                                        ENDIF.
                                        IF t1110 = abap_true.
                                          DATA t1120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                          t1120 = t1->length.
                                          DATA t1123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                          DATA(t1125) = VALUE abap_bool( ).
                                          IF t1120 IS INITIAL.
                                            t1125 = abap_true.
                                          ELSEIF t1120->has = abap_false.
                                            t1125 = abap_true.
                                          ENDIF.
                                          IF t1125 = abap_true.
                                            DATA t1128 TYPE string.
                                            DATA t1129 TYPE string.
                                            t1129 = t1->text->value.
                                            DATA(t1133) = strlen( t1129 ).
                                            t1128 = |{ t1129 }{ | unknown length| }|.
                                            DATA t1136 TYPE string.
                                            t1136 = t1->info_text.
                                            DATA(t1138) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                            t1138->has = abap_true.
                                            t1138->value = t1136.
                                            result = NEW zcl_lnt_unknown_type( i_error = t1128 i_qualified_name = t1138 ).
                                            RETURN.
                                          ENDIF.
                                          DATA(t1141) = VALUE f( ).
                                          DATA t1142 TYPE string.
                                          t1142 = t1->length->value.
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
                                          result = NEW zcl_lnt_character_type( i_length = t1141 i_extra = t2 ).
                                          RETURN.
                                        ELSE.
                                          DATA(t1164) = VALUE abap_bool( ).
                                          DATA t1166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                          DATA(t1169) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                          t1169->has = abap_true.
                                          t1169->value = |RAW|.
                                          t1166 = t1169.
                                          DATA(t1171) = VALUE abap_bool( ).
                                          DATA(t1172) = VALUE abap_bool( ).
                                          IF t32 IS BOUND.
                                            t1171 = t32->has.
                                          ENDIF.
                                          IF t1166 IS BOUND.
                                            t1172 = t1166->has.
                                          ENDIF.
                                          IF t1171 = t1172.
                                            IF t1171 = abap_false.
                                              t1164 = abap_true.
                                            ELSEIF t32->value = t1166->value.
                                              t1164 = abap_true.
                                            ENDIF.
                                          ENDIF.
                                          IF t1164 = abap_true.
                                            DATA t1174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                            t1174 = t1->length.
                                            DATA t1177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                            DATA(t1179) = VALUE abap_bool( ).
                                            IF t1174 IS INITIAL.
                                              t1179 = abap_true.
                                            ELSEIF t1174->has = abap_false.
                                              t1179 = abap_true.
                                            ENDIF.
                                            IF t1179 = abap_true.
                                              DATA t1182 TYPE string.
                                              DATA t1183 TYPE string.
                                              t1183 = t1->text->value.
                                              DATA(t1187) = strlen( t1183 ).
                                              t1182 = |{ t1183 }{ | unknown length| }|.
                                              DATA t1190 TYPE string.
                                              t1190 = t1->info_text.
                                              DATA(t1192) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                              t1192->has = abap_true.
                                              t1192->value = t1190.
                                              result = NEW zcl_lnt_unknown_type( i_error = t1182 i_qualified_name = t1192 ).
                                              RETURN.
                                            ENDIF.
                                            DATA(t1195) = VALUE f( ).
                                            DATA t1196 TYPE string.
                                            t1196 = t1->length->value.
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
                                            t1214 = t1->qualified_name.
                                            result = NEW zcl_lnt_hex_type( i_length = t1195 i_qualified_name = t1214 ).
                                            RETURN.
                                          ELSE.
                                            DATA(t1216) = VALUE abap_bool( ).
                                            DATA t1218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                            DATA(t1221) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                            t1221->has = abap_true.
                                            t1221->value = |LRAW|.
                                            t1218 = t1221.
                                            DATA(t1223) = VALUE abap_bool( ).
                                            DATA(t1224) = VALUE abap_bool( ).
                                            IF t32 IS BOUND.
                                              t1223 = t32->has.
                                            ENDIF.
                                            IF t1218 IS BOUND.
                                              t1224 = t1218->has.
                                            ENDIF.
                                            IF t1223 = t1224.
                                              IF t1223 = abap_false.
                                                t1216 = abap_true.
                                              ELSEIF t32->value = t1218->value.
                                                t1216 = abap_true.
                                              ENDIF.
                                            ENDIF.
                                            IF t1216 = abap_true.
                                              DATA t1226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                              t1226 = t1->length.
                                              DATA t1229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                              DATA(t1231) = VALUE abap_bool( ).
                                              IF t1226 IS INITIAL.
                                                t1231 = abap_true.
                                              ELSEIF t1226->has = abap_false.
                                                t1231 = abap_true.
                                              ENDIF.
                                              IF t1231 = abap_true.
                                                DATA t1234 TYPE string.
                                                DATA t1235 TYPE string.
                                                t1235 = t1->text->value.
                                                DATA(t1239) = strlen( t1235 ).
                                                t1234 = |{ t1235 }{ | unknown length| }|.
                                                DATA t1242 TYPE string.
                                                t1242 = t1->info_text.
                                                DATA(t1244) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                t1244->has = abap_true.
                                                t1244->value = t1242.
                                                result = NEW zcl_lnt_unknown_type( i_error = t1234 i_qualified_name = t1244 ).
                                                RETURN.
                                              ENDIF.
                                              DATA(t1247) = VALUE f( ).
                                              DATA t1248 TYPE string.
                                              t1248 = t1->length->value.
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
                                              t1266 = t1->qualified_name.
                                              result = NEW zcl_lnt_hex_type( i_length = t1247 i_qualified_name = t1266 ).
                                              RETURN.
                                            ELSE.
                                              DATA(t1268) = VALUE abap_bool( ).
                                              DATA t1270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                              DATA(t1273) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                              t1273->has = abap_true.
                                              t1273->value = |TIMN|.
                                              t1270 = t1273.
                                              DATA(t1275) = VALUE abap_bool( ).
                                              DATA(t1276) = VALUE abap_bool( ).
                                              IF t32 IS BOUND.
                                                t1275 = t32->has.
                                              ENDIF.
                                              IF t1270 IS BOUND.
                                                t1276 = t1270->has.
                                              ENDIF.
                                              IF t1275 = t1276.
                                                IF t1275 = abap_false.
                                                  t1268 = abap_true.
                                                ELSEIF t32->value = t1270->value.
                                                  t1268 = abap_true.
                                                ENDIF.
                                              ENDIF.
                                              IF t1268 = abap_true.
                                                DATA t1280 TYPE REF TO zcl_lnt_abstract_type_data.
                                                DATA t1282 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                t1282 = t1->qualified_name.
                                                DATA t1284 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                DATA t1286 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                DATA t1288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                DATA t1290 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                DATA t1292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                t1280 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1282 i_conversion_exit = t1284 i_derived_from_constant = t1286 i_ddic_name = t1288 i_rtti_name = t1290 i_description = t1292 ).
                                                CREATE OBJECT t1280->zlnt_view_ownkeys_b0e8086400eb.
                                                t1280->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                DATA t1294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                t1280->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1294 ).
                                                CREATE OBJECT t1280->zlnt_json_ownkeys_70e5fd461788.
                                                t1280->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                DATA t1296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                t1280->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t1296 ).
                                                result = NEW zcl_lnt_time_type( i_input_967e = t1280 ).
                                                RETURN.
                                              ELSE.
                                                DATA(t1298) = VALUE abap_bool( ).
                                                DATA t1300 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                DATA(t1303) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                t1303->has = abap_true.
                                                t1303->value = |TIMS|.
                                                t1300 = t1303.
                                                DATA(t1305) = VALUE abap_bool( ).
                                                DATA(t1306) = VALUE abap_bool( ).
                                                IF t32 IS BOUND.
                                                  t1305 = t32->has.
                                                ENDIF.
                                                IF t1300 IS BOUND.
                                                  t1306 = t1300->has.
                                                ENDIF.
                                                IF t1305 = t1306.
                                                  IF t1305 = abap_false.
                                                    t1298 = abap_true.
                                                  ELSEIF t32->value = t1300->value.
                                                    t1298 = abap_true.
                                                  ENDIF.
                                                ENDIF.
                                                IF t1298 = abap_true.
                                                  DATA t1310 TYPE REF TO zcl_lnt_abstract_type_data.
                                                  DATA t1312 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  t1312 = t1->qualified_name.
                                                  DATA t1314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  DATA t1316 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                  DATA t1318 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  DATA t1320 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  DATA t1322 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  t1310 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1312 i_conversion_exit = t1314 i_derived_from_constant = t1316 i_ddic_name = t1318 i_rtti_name = t1320 i_description = t1322 ).
                                                  CREATE OBJECT t1310->zlnt_view_ownkeys_b0e8086400eb.
                                                  t1310->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                  DATA t1324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                  t1310->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1324 ).
                                                  CREATE OBJECT t1310->zlnt_json_ownkeys_70e5fd461788.
                                                  t1310->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                  DATA t1326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                  t1310->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t1326 ).
                                                  result = NEW zcl_lnt_time_type( i_input_967e = t1310 ).
                                                  RETURN.
                                                ELSE.
                                                  DATA(t1328) = VALUE abap_bool( ).
                                                  DATA t1330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                  DATA(t1333) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                  t1333->has = abap_true.
                                                  t1333->value = |DECFLOAT16|.
                                                  t1330 = t1333.
                                                  DATA(t1335) = VALUE abap_bool( ).
                                                  DATA(t1336) = VALUE abap_bool( ).
                                                  IF t32 IS BOUND.
                                                    t1335 = t32->has.
                                                  ENDIF.
                                                  IF t1330 IS BOUND.
                                                    t1336 = t1330->has.
                                                  ENDIF.
                                                  IF t1335 = t1336.
                                                    IF t1335 = abap_false.
                                                      t1328 = abap_true.
                                                    ELSEIF t32->value = t1330->value.
                                                      t1328 = abap_true.
                                                    ENDIF.
                                                  ENDIF.
                                                  IF t1328 = abap_true.
                                                    DATA t1338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    t1338 = t1->length.
                                                    DATA t1341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                    DATA(t1343) = VALUE abap_bool( ).
                                                    IF t1338 IS INITIAL.
                                                      t1343 = abap_true.
                                                    ELSEIF t1338->has = abap_false.
                                                      t1343 = abap_true.
                                                    ENDIF.
                                                    IF t1343 = abap_true.
                                                      DATA t1346 TYPE string.
                                                      DATA t1347 TYPE string.
                                                      t1347 = t1->text->value.
                                                      DATA(t1351) = strlen( t1347 ).
                                                      t1346 = |{ t1347 }{ | unknown length| }|.
                                                      DATA t1354 TYPE string.
                                                      t1354 = t1->info_text.
                                                      DATA(t1356) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                      t1356->has = abap_true.
                                                      t1356->value = t1354.
                                                      result = NEW zcl_lnt_unknown_type( i_error = t1346 i_qualified_name = t1356 ).
                                                      RETURN.
                                                    ENDIF.
                                                    DATA(t1359) = VALUE f( ).
                                                    DATA t1360 TYPE string.
                                                    t1360 = t1->length->value.
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
                                                    t1378 = t1->qualified_name.
                                                    result = NEW zcl_lnt_floating_point_type( i_length = t1359 i_qualified_name = t1378 ).
                                                    RETURN.
                                                  ELSE.
                                                    DATA(t1380) = VALUE abap_bool( ).
                                                    DATA t1382 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                    DATA(t1385) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                    t1385->has = abap_true.
                                                    t1385->value = |DECFLOAT34|.
                                                    t1382 = t1385.
                                                    DATA(t1387) = VALUE abap_bool( ).
                                                    DATA(t1388) = VALUE abap_bool( ).
                                                    IF t32 IS BOUND.
                                                      t1387 = t32->has.
                                                    ENDIF.
                                                    IF t1382 IS BOUND.
                                                      t1388 = t1382->has.
                                                    ENDIF.
                                                    IF t1387 = t1388.
                                                      IF t1387 = abap_false.
                                                        t1380 = abap_true.
                                                      ELSEIF t32->value = t1382->value.
                                                        t1380 = abap_true.
                                                      ENDIF.
                                                    ENDIF.
                                                    IF t1380 = abap_true.
                                                      DATA t1390 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                      t1390 = t1->length.
                                                      DATA t1393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                      DATA(t1395) = VALUE abap_bool( ).
                                                      IF t1390 IS INITIAL.
                                                        t1395 = abap_true.
                                                      ELSEIF t1390->has = abap_false.
                                                        t1395 = abap_true.
                                                      ENDIF.
                                                      IF t1395 = abap_true.
                                                        DATA t1398 TYPE string.
                                                        DATA t1399 TYPE string.
                                                        t1399 = t1->text->value.
                                                        DATA(t1403) = strlen( t1399 ).
                                                        t1398 = |{ t1399 }{ | unknown length| }|.
                                                        DATA t1406 TYPE string.
                                                        t1406 = t1->info_text.
                                                        DATA(t1408) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                        t1408->has = abap_true.
                                                        t1408->value = t1406.
                                                        result = NEW zcl_lnt_unknown_type( i_error = t1398 i_qualified_name = t1408 ).
                                                        RETURN.
                                                      ENDIF.
                                                      DATA(t1411) = VALUE f( ).
                                                      DATA t1412 TYPE string.
                                                      t1412 = t1->length->value.
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
                                                      t1430 = t1->qualified_name.
                                                      result = NEW zcl_lnt_floating_point_type( i_length = t1411 i_qualified_name = t1430 ).
                                                      RETURN.
                                                    ELSE.
                                                      DATA(t1432) = VALUE abap_bool( ).
                                                      DATA t1434 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                      DATA(t1437) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                      t1437->has = abap_true.
                                                      t1437->value = |D16R|.
                                                      t1434 = t1437.
                                                      DATA(t1439) = VALUE abap_bool( ).
                                                      DATA(t1440) = VALUE abap_bool( ).
                                                      IF t32 IS BOUND.
                                                        t1439 = t32->has.
                                                      ENDIF.
                                                      IF t1434 IS BOUND.
                                                        t1440 = t1434->has.
                                                      ENDIF.
                                                      IF t1439 = t1440.
                                                        IF t1439 = abap_false.
                                                          t1432 = abap_true.
                                                        ELSEIF t32->value = t1434->value.
                                                          t1432 = abap_true.
                                                        ENDIF.
                                                      ENDIF.
                                                      IF t1432 = abap_true.
                                                        DATA t1442 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                        t1442 = t1->length.
                                                        DATA t1445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                        DATA(t1447) = VALUE abap_bool( ).
                                                        IF t1442 IS INITIAL.
                                                          t1447 = abap_true.
                                                        ELSEIF t1442->has = abap_false.
                                                          t1447 = abap_true.
                                                        ENDIF.
                                                        IF t1447 = abap_true.
                                                          DATA t1450 TYPE string.
                                                          DATA t1451 TYPE string.
                                                          t1451 = t1->text->value.
                                                          DATA(t1455) = strlen( t1451 ).
                                                          t1450 = |{ t1451 }{ | unknown length| }|.
                                                          DATA t1458 TYPE string.
                                                          t1458 = t1->info_text.
                                                          DATA(t1460) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                          t1460->has = abap_true.
                                                          t1460->value = t1458.
                                                          result = NEW zcl_lnt_unknown_type( i_error = t1450 i_qualified_name = t1460 ).
                                                          RETURN.
                                                        ENDIF.
                                                        DATA(t1463) = VALUE f( ).
                                                        DATA t1464 TYPE string.
                                                        t1464 = t1->length->value.
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
                                                        t1482 = t1->qualified_name.
                                                        result = NEW zcl_lnt_floating_point_type( i_length = t1463 i_qualified_name = t1482 ).
                                                        RETURN.
                                                      ELSE.
                                                        DATA(t1484) = VALUE abap_bool( ).
                                                        DATA t1486 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                        DATA(t1489) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                        t1489->has = abap_true.
                                                        t1489->value = |D34R|.
                                                        t1486 = t1489.
                                                        DATA(t1491) = VALUE abap_bool( ).
                                                        DATA(t1492) = VALUE abap_bool( ).
                                                        IF t32 IS BOUND.
                                                          t1491 = t32->has.
                                                        ENDIF.
                                                        IF t1486 IS BOUND.
                                                          t1492 = t1486->has.
                                                        ENDIF.
                                                        IF t1491 = t1492.
                                                          IF t1491 = abap_false.
                                                            t1484 = abap_true.
                                                          ELSEIF t32->value = t1486->value.
                                                            t1484 = abap_true.
                                                          ENDIF.
                                                        ENDIF.
                                                        IF t1484 = abap_true.
                                                          DATA t1494 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                          t1494 = t1->length.
                                                          DATA t1497 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                          DATA(t1499) = VALUE abap_bool( ).
                                                          IF t1494 IS INITIAL.
                                                            t1499 = abap_true.
                                                          ELSEIF t1494->has = abap_false.
                                                            t1499 = abap_true.
                                                          ENDIF.
                                                          IF t1499 = abap_true.
                                                            DATA t1502 TYPE string.
                                                            DATA t1503 TYPE string.
                                                            t1503 = t1->text->value.
                                                            DATA(t1507) = strlen( t1503 ).
                                                            t1502 = |{ t1503 }{ | unknown length| }|.
                                                            DATA t1510 TYPE string.
                                                            t1510 = t1->info_text.
                                                            DATA(t1512) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                            t1512->has = abap_true.
                                                            t1512->value = t1510.
                                                            result = NEW zcl_lnt_unknown_type( i_error = t1502 i_qualified_name = t1512 ).
                                                            RETURN.
                                                          ENDIF.
                                                          DATA(t1515) = VALUE f( ).
                                                          DATA t1516 TYPE string.
                                                          t1516 = t1->length->value.
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
                                                          t1534 = t1->qualified_name.
                                                          result = NEW zcl_lnt_floating_point_type( i_length = t1515 i_qualified_name = t1534 ).
                                                          RETURN.
                                                        ELSE.
                                                          DATA(t1536) = VALUE abap_bool( ).
                                                          DATA t1538 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                          DATA(t1541) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                          t1541->has = abap_true.
                                                          t1541->value = |DF16_RAW|.
                                                          t1538 = t1541.
                                                          DATA(t1543) = VALUE abap_bool( ).
                                                          DATA(t1544) = VALUE abap_bool( ).
                                                          IF t32 IS BOUND.
                                                            t1543 = t32->has.
                                                          ENDIF.
                                                          IF t1538 IS BOUND.
                                                            t1544 = t1538->has.
                                                          ENDIF.
                                                          IF t1543 = t1544.
                                                            IF t1543 = abap_false.
                                                              t1536 = abap_true.
                                                            ELSEIF t32->value = t1538->value.
                                                              t1536 = abap_true.
                                                            ENDIF.
                                                          ENDIF.
                                                          IF t1536 = abap_true.
                                                            DATA t1546 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                            t1546 = t1->length.
                                                            DATA t1549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                            DATA(t1551) = VALUE abap_bool( ).
                                                            IF t1546 IS INITIAL.
                                                              t1551 = abap_true.
                                                            ELSEIF t1546->has = abap_false.
                                                              t1551 = abap_true.
                                                            ENDIF.
                                                            IF t1551 = abap_true.
                                                              DATA t1554 TYPE string.
                                                              DATA t1555 TYPE string.
                                                              t1555 = t1->text->value.
                                                              DATA(t1559) = strlen( t1555 ).
                                                              t1554 = |{ t1555 }{ | unknown length| }|.
                                                              DATA t1562 TYPE string.
                                                              t1562 = t1->info_text.
                                                              DATA(t1564) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                              t1564->has = abap_true.
                                                              t1564->value = t1562.
                                                              result = NEW zcl_lnt_unknown_type( i_error = t1554 i_qualified_name = t1564 ).
                                                              RETURN.
                                                            ENDIF.
                                                            DATA(t1567) = VALUE f( ).
                                                            DATA t1568 TYPE string.
                                                            t1568 = t1->length->value.
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
                                                            t1586 = t1->qualified_name.
                                                            result = NEW zcl_lnt_floating_point_type( i_length = t1567 i_qualified_name = t1586 ).
                                                            RETURN.
                                                          ELSE.
                                                            DATA(t1588) = VALUE abap_bool( ).
                                                            DATA t1590 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                            DATA(t1593) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                            t1593->has = abap_true.
                                                            t1593->value = |DF34_RAW|.
                                                            t1590 = t1593.
                                                            DATA(t1595) = VALUE abap_bool( ).
                                                            DATA(t1596) = VALUE abap_bool( ).
                                                            IF t32 IS BOUND.
                                                              t1595 = t32->has.
                                                            ENDIF.
                                                            IF t1590 IS BOUND.
                                                              t1596 = t1590->has.
                                                            ENDIF.
                                                            IF t1595 = t1596.
                                                              IF t1595 = abap_false.
                                                                t1588 = abap_true.
                                                              ELSEIF t32->value = t1590->value.
                                                                t1588 = abap_true.
                                                              ENDIF.
                                                            ENDIF.
                                                            IF t1588 = abap_true.
                                                              DATA t1598 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                              t1598 = t1->length.
                                                              DATA t1601 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                              DATA(t1603) = VALUE abap_bool( ).
                                                              IF t1598 IS INITIAL.
                                                                t1603 = abap_true.
                                                              ELSEIF t1598->has = abap_false.
                                                                t1603 = abap_true.
                                                              ENDIF.
                                                              IF t1603 = abap_true.
                                                                DATA t1606 TYPE string.
                                                                DATA t1607 TYPE string.
                                                                t1607 = t1->text->value.
                                                                DATA(t1611) = strlen( t1607 ).
                                                                t1606 = |{ t1607 }{ | unknown length| }|.
                                                                DATA t1614 TYPE string.
                                                                t1614 = t1->info_text.
                                                                DATA(t1616) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                t1616->has = abap_true.
                                                                t1616->value = t1614.
                                                                result = NEW zcl_lnt_unknown_type( i_error = t1606 i_qualified_name = t1616 ).
                                                                RETURN.
                                                              ENDIF.
                                                              DATA(t1619) = VALUE f( ).
                                                              DATA t1620 TYPE string.
                                                              t1620 = t1->length->value.
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
                                                              t1638 = t1->qualified_name.
                                                              result = NEW zcl_lnt_floating_point_type( i_length = t1619 i_qualified_name = t1638 ).
                                                              RETURN.
                                                            ELSE.
                                                              DATA(t1640) = VALUE abap_bool( ).
                                                              DATA t1642 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                              DATA(t1645) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                              t1645->has = abap_true.
                                                              t1645->value = |FLTP|.
                                                              t1642 = t1645.
                                                              DATA(t1647) = VALUE abap_bool( ).
                                                              DATA(t1648) = VALUE abap_bool( ).
                                                              IF t32 IS BOUND.
                                                                t1647 = t32->has.
                                                              ENDIF.
                                                              IF t1642 IS BOUND.
                                                                t1648 = t1642->has.
                                                              ENDIF.
                                                              IF t1647 = t1648.
                                                                IF t1647 = abap_false.
                                                                  t1640 = abap_true.
                                                                ELSEIF t32->value = t1642->value.
                                                                  t1640 = abap_true.
                                                                ENDIF.
                                                              ENDIF.
                                                              IF t1640 = abap_true.
                                                                DATA t1650 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                t1650 = t1->length.
                                                                DATA t1653 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                DATA(t1655) = VALUE abap_bool( ).
                                                                IF t1650 IS INITIAL.
                                                                  t1655 = abap_true.
                                                                ELSEIF t1650->has = abap_false.
                                                                  t1655 = abap_true.
                                                                ENDIF.
                                                                IF t1655 = abap_true.
                                                                  DATA t1658 TYPE string.
                                                                  DATA t1659 TYPE string.
                                                                  t1659 = t1->text->value.
                                                                  DATA(t1663) = strlen( t1659 ).
                                                                  t1658 = |{ t1659 }{ | unknown length| }|.
                                                                  DATA t1666 TYPE string.
                                                                  t1666 = t1->info_text.
                                                                  DATA(t1668) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                  t1668->has = abap_true.
                                                                  t1668->value = t1666.
                                                                  result = NEW zcl_lnt_unknown_type( i_error = t1658 i_qualified_name = t1668 ).
                                                                  RETURN.
                                                                ENDIF.
                                                                DATA(t1671) = VALUE f( ).
                                                                DATA t1672 TYPE string.
                                                                t1672 = t1->length->value.
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
                                                                t1690 = t1->qualified_name.
                                                                result = NEW zcl_lnt_floating_point_type( i_length = t1671 i_qualified_name = t1690 ).
                                                                RETURN.
                                                              ELSE.
                                                                DATA(t1692) = VALUE abap_bool( ).
                                                                DATA t1694 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                DATA(t1697) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                t1697->has = abap_true.
                                                                t1697->value = |DATN|.
                                                                t1694 = t1697.
                                                                DATA(t1699) = VALUE abap_bool( ).
                                                                DATA(t1700) = VALUE abap_bool( ).
                                                                IF t32 IS BOUND.
                                                                  t1699 = t32->has.
                                                                ENDIF.
                                                                IF t1694 IS BOUND.
                                                                  t1700 = t1694->has.
                                                                ENDIF.
                                                                IF t1699 = t1700.
                                                                  IF t1699 = abap_false.
                                                                    t1692 = abap_true.
                                                                  ELSEIF t32->value = t1694->value.
                                                                    t1692 = abap_true.
                                                                  ENDIF.
                                                                ENDIF.
                                                                IF t1692 = abap_true.
                                                                  DATA t1704 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                  DATA t1706 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                  t1706 = t1->qualified_name.
                                                                  DATA t1708 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                  DATA t1710 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                  DATA t1712 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                  DATA t1714 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                  DATA t1716 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                  t1704 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1706 i_conversion_exit = t1708 i_derived_from_constant = t1710 i_ddic_name = t1712 i_rtti_name = t1714 i_description = t1716 ).
                                                                  CREATE OBJECT t1704->zlnt_view_ownkeys_b0e8086400eb.
                                                                  t1704->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                  DATA t1718 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                  t1704->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1718 ).
                                                                  CREATE OBJECT t1704->zlnt_json_ownkeys_70e5fd461788.
                                                                  t1704->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                  DATA t1720 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                  t1704->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t1720 ).
                                                                  result = NEW zcl_lnt_date_type( i_input_967e = t1704 ).
                                                                  RETURN.
                                                                ELSE.
                                                                  DATA(t1722) = VALUE abap_bool( ).
                                                                  DATA t1724 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                  DATA(t1727) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                  t1727->has = abap_true.
                                                                  t1727->value = |DATS|.
                                                                  t1724 = t1727.
                                                                  DATA(t1729) = VALUE abap_bool( ).
                                                                  DATA(t1730) = VALUE abap_bool( ).
                                                                  IF t32 IS BOUND.
                                                                    t1729 = t32->has.
                                                                  ENDIF.
                                                                  IF t1724 IS BOUND.
                                                                    t1730 = t1724->has.
                                                                  ENDIF.
                                                                  IF t1729 = t1730.
                                                                    IF t1729 = abap_false.
                                                                      t1722 = abap_true.
                                                                    ELSEIF t32->value = t1724->value.
                                                                      t1722 = abap_true.
                                                                    ENDIF.
                                                                  ENDIF.
                                                                  IF t1722 = abap_true.
                                                                    DATA t1734 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                    DATA t1736 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                    t1736 = t1->qualified_name.
                                                                    DATA t1738 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                    DATA t1740 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                    DATA t1742 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                    DATA t1744 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                    DATA t1746 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                    t1734 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1736 i_conversion_exit = t1738 i_derived_from_constant = t1740 i_ddic_name = t1742 i_rtti_name = t1744
                                                                      i_description = t1746 ).
                                                                    CREATE OBJECT t1734->zlnt_view_ownkeys_b0e8086400eb.
                                                                    t1734->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                    DATA t1748 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                    t1734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1748 ).
                                                                    CREATE OBJECT t1734->zlnt_json_ownkeys_70e5fd461788.
                                                                    t1734->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                    DATA t1750 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                    t1734->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t1750 ).
                                                                    result = NEW zcl_lnt_date_type( i_input_967e = t1734 ).
                                                                    RETURN.
                                                                  ELSE.
                                                                    DATA(t1752) = VALUE abap_bool( ).
                                                                    DATA t1754 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                    DATA(t1757) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                    t1757->has = abap_true.
                                                                    t1757->value = |INT1|.
                                                                    t1754 = t1757.
                                                                    DATA(t1759) = VALUE abap_bool( ).
                                                                    DATA(t1760) = VALUE abap_bool( ).
                                                                    IF t32 IS BOUND.
                                                                      t1759 = t32->has.
                                                                    ENDIF.
                                                                    IF t1754 IS BOUND.
                                                                      t1760 = t1754->has.
                                                                    ENDIF.
                                                                    IF t1759 = t1760.
                                                                      IF t1759 = abap_false.
                                                                        t1752 = abap_true.
                                                                      ELSEIF t32->value = t1754->value.
                                                                        t1752 = abap_true.
                                                                      ENDIF.
                                                                    ENDIF.
                                                                    IF t1752 = abap_true.
                                                                      DATA t1764 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                      DATA t1766 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                      t1766 = t1->qualified_name.
                                                                      DATA t1768 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                      DATA t1770 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                      DATA t1772 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                      DATA t1774 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                      DATA t1776 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                      t1764 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1766 i_conversion_exit = t1768 i_derived_from_constant = t1770 i_ddic_name = t1772 i_rtti_name = t1774
                                                                        i_description = t1776 ).
                                                                      CREATE OBJECT t1764->zlnt_view_ownkeys_b0e8086400eb.
                                                                      t1764->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                      DATA t1778 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                      t1764->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1778 ).
                                                                      CREATE OBJECT t1764->zlnt_json_ownkeys_70e5fd461788.
                                                                      t1764->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                      DATA t1780 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                      t1764->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t1780 ).
                                                                      result = zcl_lnt_integer_type=>get_db65( i_input_967e = t1764 ).
                                                                      RETURN.
                                                                    ELSE.
                                                                      DATA(t1782) = VALUE abap_bool( ).
                                                                      DATA t1784 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                      DATA(t1787) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                      t1787->has = abap_true.
                                                                      t1787->value = |INT2|.
                                                                      t1784 = t1787.
                                                                      DATA(t1789) = VALUE abap_bool( ).
                                                                      DATA(t1790) = VALUE abap_bool( ).
                                                                      IF t32 IS BOUND.
                                                                        t1789 = t32->has.
                                                                      ENDIF.
                                                                      IF t1784 IS BOUND.
                                                                        t1790 = t1784->has.
                                                                      ENDIF.
                                                                      IF t1789 = t1790.
                                                                        IF t1789 = abap_false.
                                                                          t1782 = abap_true.
                                                                        ELSEIF t32->value = t1784->value.
                                                                          t1782 = abap_true.
                                                                        ENDIF.
                                                                      ENDIF.
                                                                      IF t1782 = abap_true.
                                                                        DATA t1794 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                        DATA t1796 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                        t1796 = t1->qualified_name.
                                                                        DATA t1798 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                        DATA t1800 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                        DATA t1802 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                        DATA t1804 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                        DATA t1806 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                        t1794 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1796 i_conversion_exit = t1798 i_derived_from_constant = t1800 i_ddic_name = t1802 i_rtti_name = t1804
                                                                          i_description = t1806 ).
                                                                        CREATE OBJECT t1794->zlnt_view_ownkeys_b0e8086400eb.
                                                                        t1794->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                        DATA t1808 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                        t1794->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1808 ).
                                                                        CREATE OBJECT t1794->zlnt_json_ownkeys_70e5fd461788.
                                                                        t1794->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                        DATA t1810 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                        t1794->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t1810 ).
                                                                        result = zcl_lnt_integer_type=>get_db65( i_input_967e = t1794 ).
                                                                        RETURN.
                                                                      ELSE.
                                                                        DATA(t1812) = VALUE abap_bool( ).
                                                                        DATA t1814 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                        DATA(t1817) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                        t1817->has = abap_true.
                                                                        t1817->value = |INT4|.
                                                                        t1814 = t1817.
                                                                        DATA(t1819) = VALUE abap_bool( ).
                                                                        DATA(t1820) = VALUE abap_bool( ).
                                                                        IF t32 IS BOUND.
                                                                          t1819 = t32->has.
                                                                        ENDIF.
                                                                        IF t1814 IS BOUND.
                                                                          t1820 = t1814->has.
                                                                        ENDIF.
                                                                        IF t1819 = t1820.
                                                                          IF t1819 = abap_false.
                                                                            t1812 = abap_true.
                                                                          ELSEIF t32->value = t1814->value.
                                                                            t1812 = abap_true.
                                                                          ENDIF.
                                                                        ENDIF.
                                                                        IF t1812 = abap_true.
                                                                          DATA t1824 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                          DATA t1826 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                          t1826 = t1->qualified_name.
                                                                          DATA t1828 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                          DATA t1830 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                          DATA t1832 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                          DATA t1834 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                          DATA t1836 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                          t1824 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1826 i_conversion_exit = t1828 i_derived_from_constant = t1830 i_ddic_name = t1832 i_rtti_name = t1834
                                                                            i_description = t1836 ).
                                                                          CREATE OBJECT t1824->zlnt_view_ownkeys_b0e8086400eb.
                                                                          t1824->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                          DATA t1838 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                          t1824->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1838 ).
                                                                          CREATE OBJECT t1824->zlnt_json_ownkeys_70e5fd461788.
                                                                          t1824->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                          DATA t1840 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                          t1824->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t1840 ).
                                                                          result = zcl_lnt_integer_type=>get_db65( i_input_967e = t1824 ).
                                                                          RETURN.
                                                                        ELSE.
                                                                          DATA(t1842) = VALUE abap_bool( ).
                                                                          DATA t1844 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                          DATA(t1847) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                          t1847->has = abap_true.
                                                                          t1847->value = |INT8|.
                                                                          t1844 = t1847.
                                                                          DATA(t1849) = VALUE abap_bool( ).
                                                                          DATA(t1850) = VALUE abap_bool( ).
                                                                          IF t32 IS BOUND.
                                                                            t1849 = t32->has.
                                                                          ENDIF.
                                                                          IF t1844 IS BOUND.
                                                                            t1850 = t1844->has.
                                                                          ENDIF.
                                                                          IF t1849 = t1850.
                                                                            IF t1849 = abap_false.
                                                                              t1842 = abap_true.
                                                                            ELSEIF t32->value = t1844->value.
                                                                              t1842 = abap_true.
                                                                            ENDIF.
                                                                          ENDIF.
                                                                          IF t1842 = abap_true.
                                                                            DATA t1854 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                            DATA t1856 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                            t1856 = t1->qualified_name.
                                                                            DATA t1858 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                            DATA t1860 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                            DATA t1862 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                            DATA t1864 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                            DATA t1866 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                            t1854 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1856 i_conversion_exit = t1858 i_derived_from_constant = t1860 i_ddic_name = t1862 i_rtti_name = t1864
                                                                              i_description = t1866 ).
                                                                            CREATE OBJECT t1854->zlnt_view_ownkeys_b0e8086400eb.
                                                                            t1854->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                            DATA t1868 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                            t1854->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1868 ).
                                                                            CREATE OBJECT t1854->zlnt_json_ownkeys_70e5fd461788.
                                                                            t1854->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                            DATA t1870 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                            t1854->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t1870 ).
                                                                            result = NEW zcl_lnt_integer8_type( i_input_967e = t1854 ).
                                                                            RETURN.
                                                                          ELSE.
                                                                            DATA(t1872) = VALUE abap_bool( ).
                                                                            DATA t1874 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                            DATA(t1877) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                            t1877->has = abap_true.
                                                                            t1877->value = |SSTR|.
                                                                            t1874 = t1877.
                                                                            DATA(t1879) = VALUE abap_bool( ).
                                                                            DATA(t1880) = VALUE abap_bool( ).
                                                                            IF t32 IS BOUND.
                                                                              t1879 = t32->has.
                                                                            ENDIF.
                                                                            IF t1874 IS BOUND.
                                                                              t1880 = t1874->has.
                                                                            ENDIF.
                                                                            IF t1879 = t1880.
                                                                              IF t1879 = abap_false.
                                                                                t1872 = abap_true.
                                                                              ELSEIF t32->value = t1874->value.
                                                                                t1872 = abap_true.
                                                                              ENDIF.
                                                                            ENDIF.
                                                                            IF t1872 = abap_true.
                                                                              DATA t1884 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                              DATA t1886 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                              t1886 = t1->qualified_name.
                                                                              DATA t1888 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                              DATA t1890 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                              DATA t1892 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                              DATA t1894 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                              DATA t1896 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                              t1884 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1886 i_conversion_exit = t1888 i_derived_from_constant = t1890 i_ddic_name = t1892 i_rtti_name =
                                                                                t1894 i_description = t1896 ).
                                                                              CREATE OBJECT t1884->zlnt_view_ownkeys_b0e8086400eb.
                                                                              t1884->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                              DATA t1898 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                              t1884->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1898 ).
                                                                              CREATE OBJECT t1884->zlnt_json_ownkeys_70e5fd461788.
                                                                              t1884->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                              DATA t1900 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                              t1884->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t1900 ).
                                                                              result = zcl_lnt_string_type=>get_db65( i_input_967e = t1884 ).
                                                                              RETURN.
                                                                            ELSE.
                                                                              DATA(t1902) = VALUE abap_bool( ).
                                                                              DATA t1904 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                              DATA(t1907) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                              t1907->has = abap_true.
                                                                              t1907->value = |SSTRING|.
                                                                              t1904 = t1907.
                                                                              DATA(t1909) = VALUE abap_bool( ).
                                                                              DATA(t1910) = VALUE abap_bool( ).
                                                                              IF t32 IS BOUND.
                                                                                t1909 = t32->has.
                                                                              ENDIF.
                                                                              IF t1904 IS BOUND.
                                                                                t1910 = t1904->has.
                                                                              ENDIF.
                                                                              IF t1909 = t1910.
                                                                                IF t1909 = abap_false.
                                                                                  t1902 = abap_true.
                                                                                ELSEIF t32->value = t1904->value.
                                                                                  t1902 = abap_true.
                                                                                ENDIF.
                                                                              ENDIF.
                                                                              IF t1902 = abap_true.
                                                                                DATA t1914 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                                DATA t1916 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                t1916 = t1->qualified_name.
                                                                                DATA t1918 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                DATA t1920 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                                DATA t1922 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                DATA t1924 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                DATA t1926 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                t1914 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1916 i_conversion_exit = t1918 i_derived_from_constant = t1920 i_ddic_name = t1922 i_rtti_name =
                                                                                  t1924 i_description = t1926 ).
                                                                                CREATE OBJECT t1914->zlnt_view_ownkeys_b0e8086400eb.
                                                                                t1914->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                                DATA t1928 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                                t1914->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1928 ).
                                                                                CREATE OBJECT t1914->zlnt_json_ownkeys_70e5fd461788.
                                                                                t1914->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                                DATA t1930 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                                t1914->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t1930 ).
                                                                                result = zcl_lnt_string_type=>get_db65( i_input_967e = t1914 ).
                                                                                RETURN.
                                                                              ELSE.
                                                                                DATA(t1932) = VALUE abap_bool( ).
                                                                                DATA t1934 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                DATA(t1937) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                t1937->has = abap_true.
                                                                                t1937->value = |STRG|.
                                                                                t1934 = t1937.
                                                                                DATA(t1939) = VALUE abap_bool( ).
                                                                                DATA(t1940) = VALUE abap_bool( ).
                                                                                IF t32 IS BOUND.
                                                                                  t1939 = t32->has.
                                                                                ENDIF.
                                                                                IF t1934 IS BOUND.
                                                                                  t1940 = t1934->has.
                                                                                ENDIF.
                                                                                IF t1939 = t1940.
                                                                                  IF t1939 = abap_false.
                                                                                    t1932 = abap_true.
                                                                                  ELSEIF t32->value = t1934->value.
                                                                                    t1932 = abap_true.
                                                                                  ENDIF.
                                                                                ENDIF.
                                                                                IF t1932 = abap_true.
                                                                                  DATA t1944 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                                  DATA t1946 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                  t1946 = t1->qualified_name.
                                                                                  DATA t1948 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                  DATA t1950 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                                  DATA t1952 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                  DATA t1954 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                  DATA t1956 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                  t1944 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1946 i_conversion_exit = t1948 i_derived_from_constant = t1950 i_ddic_name = t1952 i_rtti_name =
                                                                                    t1954 i_description = t1956 ).
                                                                                  CREATE OBJECT t1944->zlnt_view_ownkeys_b0e8086400eb.
                                                                                  t1944->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                                  DATA t1958 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                                  t1944->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1958 ).
                                                                                  CREATE OBJECT t1944->zlnt_json_ownkeys_70e5fd461788.
                                                                                  t1944->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                                  DATA t1960 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                                  t1944->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t1960 ).
                                                                                  result = zcl_lnt_string_type=>get_db65( i_input_967e = t1944 ).
                                                                                  RETURN.
                                                                                ELSE.
                                                                                  DATA(t1962) = VALUE abap_bool( ).
                                                                                  DATA t1964 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                  DATA(t1967) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                  t1967->has = abap_true.
                                                                                  t1967->value = |STRING|.
                                                                                  t1964 = t1967.
                                                                                  DATA(t1969) = VALUE abap_bool( ).
                                                                                  DATA(t1970) = VALUE abap_bool( ).
                                                                                  IF t32 IS BOUND.
                                                                                    t1969 = t32->has.
                                                                                  ENDIF.
                                                                                  IF t1964 IS BOUND.
                                                                                    t1970 = t1964->has.
                                                                                  ENDIF.
                                                                                  IF t1969 = t1970.
                                                                                    IF t1969 = abap_false.
                                                                                      t1962 = abap_true.
                                                                                    ELSEIF t32->value = t1964->value.
                                                                                      t1962 = abap_true.
                                                                                    ENDIF.
                                                                                  ENDIF.
                                                                                  IF t1962 = abap_true.
                                                                                    DATA t1974 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                                    DATA t1976 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                    t1976 = t1->qualified_name.
                                                                                    DATA t1978 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                    DATA t1980 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                                    DATA t1982 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                    DATA t1984 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                    DATA t1986 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                    t1974 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t1976 i_conversion_exit = t1978 i_derived_from_constant = t1980 i_ddic_name = t1982 i_rtti_name
                                                                                      = t1984 i_description = t1986 ).
                                                                                    CREATE OBJECT t1974->zlnt_view_ownkeys_b0e8086400eb.
                                                                                    t1974->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                                    DATA t1988 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                                    t1974->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1988 ).
                                                                                    CREATE OBJECT t1974->zlnt_json_ownkeys_70e5fd461788.
                                                                                    t1974->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                                    DATA t1990 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                                    t1974->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t1990 ).
                                                                                    result = zcl_lnt_string_type=>get_db65( i_input_967e = t1974 ).
                                                                                    RETURN.
                                                                                  ELSE.
                                                                                    DATA(t1992) = VALUE abap_bool( ).
                                                                                    DATA t1994 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                    DATA(t1997) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                    t1997->has = abap_true.
                                                                                    t1997->value = |RSTR|.
                                                                                    t1994 = t1997.
                                                                                    DATA(t1999) = VALUE abap_bool( ).
                                                                                    DATA(t2000) = VALUE abap_bool( ).
                                                                                    IF t32 IS BOUND.
                                                                                      t1999 = t32->has.
                                                                                    ENDIF.
                                                                                    IF t1994 IS BOUND.
                                                                                      t2000 = t1994->has.
                                                                                    ENDIF.
                                                                                    IF t1999 = t2000.
                                                                                      IF t1999 = abap_false.
                                                                                        t1992 = abap_true.
                                                                                      ELSEIF t32->value = t1994->value.
                                                                                        t1992 = abap_true.
                                                                                      ENDIF.
                                                                                    ENDIF.
                                                                                    IF t1992 = abap_true.
                                                                                      DATA t2004 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                                      DATA t2006 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                      t2006 = t1->qualified_name.
                                                                                      DATA t2008 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                      DATA t2010 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                                      DATA t2012 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                      DATA t2014 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                      DATA t2016 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                      t2004 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2006 i_conversion_exit = t2008 i_derived_from_constant = t2010 i_ddic_name = t2012
                                                                                        i_rtti_name = t2014 i_description = t2016 ).
                                                                                      CREATE OBJECT t2004->zlnt_view_ownkeys_b0e8086400eb.
                                                                                      t2004->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                                      DATA t2018 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                                      t2004->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t2018 ).
                                                                                      CREATE OBJECT t2004->zlnt_json_ownkeys_70e5fd461788.
                                                                                      t2004->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                                      DATA t2020 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                                      t2004->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t2020 ).
                                                                                      result = zcl_lnt_x_string_type=>get_db65( i_input_967e = t2004 ).
                                                                                      RETURN.
                                                                                    ELSE.
                                                                                      DATA(t2022) = VALUE abap_bool( ).
                                                                                      DATA t2024 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                      DATA(t2027) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                      t2027->has = abap_true.
                                                                                      t2027->value = |RAWSTRING|.
                                                                                      t2024 = t2027.
                                                                                      DATA(t2029) = VALUE abap_bool( ).
                                                                                      DATA(t2030) = VALUE abap_bool( ).
                                                                                      IF t32 IS BOUND.
                                                                                        t2029 = t32->has.
                                                                                      ENDIF.
                                                                                      IF t2024 IS BOUND.
                                                                                        t2030 = t2024->has.
                                                                                      ENDIF.
                                                                                      IF t2029 = t2030.
                                                                                        IF t2029 = abap_false.
                                                                                          t2022 = abap_true.
                                                                                        ELSEIF t32->value = t2024->value.
                                                                                          t2022 = abap_true.
                                                                                        ENDIF.
                                                                                      ENDIF.
                                                                                      IF t2022 = abap_true.
                                                                                        DATA t2034 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                                        DATA t2036 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                        t2036 = t1->qualified_name.
                                                                                        DATA t2038 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                        DATA t2040 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                                        DATA t2042 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                        DATA t2044 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                        DATA t2046 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                        t2034 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2036 i_conversion_exit = t2038 i_derived_from_constant = t2040 i_ddic_name = t2042
                                                                                          i_rtti_name = t2044 i_description = t2046 ).
                                                                                        CREATE OBJECT t2034->zlnt_view_ownkeys_b0e8086400eb.
                                                                                        t2034->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                                        DATA t2048 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                                        t2034->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t2048 ).
                                                                                        CREATE OBJECT t2034->zlnt_json_ownkeys_70e5fd461788.
                                                                                        t2034->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                                        DATA t2050 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                                        t2034->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t2050 ).
                                                                                        result = zcl_lnt_x_string_type=>get_db65( i_input_967e = t2034 ).
                                                                                        RETURN.
                                                                                      ELSE.
                                                                                        DATA(t2052) = VALUE abap_bool( ).
                                                                                        DATA t2054 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                        DATA(t2057) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                        t2057->has = abap_true.
                                                                                        t2057->value = |GEOM_EWKB|.
                                                                                        t2054 = t2057.
                                                                                        DATA(t2059) = VALUE abap_bool( ).
                                                                                        DATA(t2060) = VALUE abap_bool( ).
                                                                                        IF t32 IS BOUND.
                                                                                          t2059 = t32->has.
                                                                                        ENDIF.
                                                                                        IF t2054 IS BOUND.
                                                                                          t2060 = t2054->has.
                                                                                        ENDIF.
                                                                                        IF t2059 = t2060.
                                                                                          IF t2059 = abap_false.
                                                                                            t2052 = abap_true.
                                                                                          ELSEIF t32->value = t2054->value.
                                                                                            t2052 = abap_true.
                                                                                          ENDIF.
                                                                                        ENDIF.
                                                                                        IF t2052 = abap_true.
                                                                                          DATA t2064 TYPE REF TO zcl_lnt_abstract_type_data.
                                                                                          DATA t2066 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                          t2066 = t1->qualified_name.
                                                                                          DATA t2068 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                          DATA t2070 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                                                                          DATA t2072 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                          DATA t2074 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                          DATA t2076 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                          t2064 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2066 i_conversion_exit = t2068 i_derived_from_constant = t2070 i_ddic_name = t2072
                                                                                            i_rtti_name = t2074 i_description = t2076 ).
                                                                                          CREATE OBJECT t2064->zlnt_view_ownkeys_b0e8086400eb.
                                                                                          t2064->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                                          DATA t2078 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                                          t2064->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t2078 ).
                                                                                          CREATE OBJECT t2064->zlnt_json_ownkeys_70e5fd461788.
                                                                                          t2064->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                                                                                          DATA t2080 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                                                                                          t2064->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t2080 ).
                                                                                          result = zcl_lnt_x_string_type=>get_db65( i_input_967e = t2064 ).
                                                                                          RETURN.
                                                                                        ELSE.
                                                                                          DATA(t2082) = VALUE abap_bool( ).
                                                                                          DATA t2084 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                          DATA(t2087) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                          t2087->has = abap_true.
                                                                                          t2087->value = |D16S|.
                                                                                          t2084 = t2087.
                                                                                          DATA(t2089) = VALUE abap_bool( ).
                                                                                          DATA(t2090) = VALUE abap_bool( ).
                                                                                          IF t32 IS BOUND.
                                                                                            t2089 = t32->has.
                                                                                          ENDIF.
                                                                                          IF t2084 IS BOUND.
                                                                                            t2090 = t2084->has.
                                                                                          ENDIF.
                                                                                          IF t2089 = t2090.
                                                                                            IF t2089 = abap_false.
                                                                                              t2082 = abap_true.
                                                                                            ELSEIF t32->value = t2084->value.
                                                                                              t2082 = abap_true.
                                                                                            ENDIF.
                                                                                          ENDIF.
                                                                                          IF t2082 = abap_true.
                                                                                            DATA t2092 TYPE string.
                                                                                            DATA t2093 TYPE string.
                                                                                            t2093 = t1->text->value.
                                                                                            DATA(t2097) = strlen( t2093 ).
                                                                                            t2092 = |{ t2093 }{ | is an obsolete data type| }|.
                                                                                            DATA t2100 TYPE string.
                                                                                            t2100 = t1->info_text.
                                                                                            DATA(t2102) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                            t2102->has = abap_true.
                                                                                            t2102->value = t2100.
                                                                                            result = NEW zcl_lnt_unknown_type( i_error = t2092 i_qualified_name = t2102 ).
                                                                                            RETURN.
                                                                                          ELSE.
                                                                                            DATA(t2104) = VALUE abap_bool( ).
                                                                                            DATA t2106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                            DATA(t2109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                            t2109->has = abap_true.
                                                                                            t2109->value = |D34S|.
                                                                                            t2106 = t2109.
                                                                                            DATA(t2111) = VALUE abap_bool( ).
                                                                                            DATA(t2112) = VALUE abap_bool( ).
                                                                                            IF t32 IS BOUND.
                                                                                              t2111 = t32->has.
                                                                                            ENDIF.
                                                                                            IF t2106 IS BOUND.
                                                                                              t2112 = t2106->has.
                                                                                            ENDIF.
                                                                                            IF t2111 = t2112.
                                                                                              IF t2111 = abap_false.
                                                                                                t2104 = abap_true.
                                                                                              ELSEIF t32->value = t2106->value.
                                                                                                t2104 = abap_true.
                                                                                              ENDIF.
                                                                                            ENDIF.
                                                                                            IF t2104 = abap_true.
                                                                                              DATA t2114 TYPE string.
                                                                                              DATA t2115 TYPE string.
                                                                                              t2115 = t1->text->value.
                                                                                              DATA(t2119) = strlen( t2115 ).
                                                                                              t2114 = |{ t2115 }{ | is an obsolete data type| }|.
                                                                                              DATA t2122 TYPE string.
                                                                                              t2122 = t1->info_text.
                                                                                              DATA(t2124) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                              t2124->has = abap_true.
                                                                                              t2124->value = t2122.
                                                                                              result = NEW zcl_lnt_unknown_type( i_error = t2114 i_qualified_name = t2124 ).
                                                                                              RETURN.
                                                                                            ELSE.
                                                                                              DATA(t2126) = VALUE abap_bool( ).
                                                                                              DATA t2128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                              DATA(t2131) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                              t2131->has = abap_true.
                                                                                              t2131->value = |DF16_SCL|.
                                                                                              t2128 = t2131.
                                                                                              DATA(t2133) = VALUE abap_bool( ).
                                                                                              DATA(t2134) = VALUE abap_bool( ).
                                                                                              IF t32 IS BOUND.
                                                                                                t2133 = t32->has.
                                                                                              ENDIF.
                                                                                              IF t2128 IS BOUND.
                                                                                                t2134 = t2128->has.
                                                                                              ENDIF.
                                                                                              IF t2133 = t2134.
                                                                                                IF t2133 = abap_false.
                                                                                                  t2126 = abap_true.
                                                                                                ELSEIF t32->value = t2128->value.
                                                                                                  t2126 = abap_true.
                                                                                                ENDIF.
                                                                                              ENDIF.
                                                                                              IF t2126 = abap_true.
                                                                                                DATA t2136 TYPE string.
                                                                                                DATA t2137 TYPE string.
                                                                                                t2137 = t1->text->value.
                                                                                                DATA(t2141) = strlen( t2137 ).
                                                                                                t2136 = |{ t2137 }{ | is an obsolete data type| }|.
                                                                                                DATA t2144 TYPE string.
                                                                                                t2144 = t1->info_text.
                                                                                                DATA(t2146) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                                t2146->has = abap_true.
                                                                                                t2146->value = t2144.
                                                                                                result = NEW zcl_lnt_unknown_type( i_error = t2136 i_qualified_name = t2146 ).
                                                                                                RETURN.
                                                                                              ELSE.
                                                                                                DATA(t2148) = VALUE abap_bool( ).
                                                                                                DATA t2150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                                DATA(t2153) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                                t2153->has = abap_true.
                                                                                                t2153->value = |DF34_SCL|.
                                                                                                t2150 = t2153.
                                                                                                DATA(t2155) = VALUE abap_bool( ).
                                                                                                DATA(t2156) = VALUE abap_bool( ).
                                                                                                IF t32 IS BOUND.
                                                                                                  t2155 = t32->has.
                                                                                                ENDIF.
                                                                                                IF t2150 IS BOUND.
                                                                                                  t2156 = t2150->has.
                                                                                                ENDIF.
                                                                                                IF t2155 = t2156.
                                                                                                  IF t2155 = abap_false.
                                                                                                    t2148 = abap_true.
                                                                                                  ELSEIF t32->value = t2150->value.
                                                                                                    t2148 = abap_true.
                                                                                                  ENDIF.
                                                                                                ENDIF.
                                                                                                IF t2148 = abap_true.
                                                                                                  DATA t2158 TYPE string.
                                                                                                  DATA t2159 TYPE string.
                                                                                                  t2159 = t1->text->value.
                                                                                                  DATA(t2163) = strlen( t2159 ).
                                                                                                  t2158 = |{ t2159 }{ | is an obsolete data type| }|.
                                                                                                  DATA t2166 TYPE string.
                                                                                                  t2166 = t1->info_text.
                                                                                                  DATA(t2168) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                                  t2168->has = abap_true.
                                                                                                  t2168->value = t2166.
                                                                                                  result = NEW zcl_lnt_unknown_type( i_error = t2158 i_qualified_name = t2168 ).
                                                                                                  RETURN.
                                                                                                ELSE.
                                                                                                  DATA(t2170) = VALUE abap_bool( ).
                                                                                                  DATA t2172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                                  DATA(t2175) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                                  t2175->has = abap_true.
                                                                                                  t2175->value = |PREC|.
                                                                                                  t2172 = t2175.
                                                                                                  DATA(t2177) = VALUE abap_bool( ).
                                                                                                  DATA(t2178) = VALUE abap_bool( ).
                                                                                                  IF t32 IS BOUND.
                                                                                                    t2177 = t32->has.
                                                                                                  ENDIF.
                                                                                                  IF t2172 IS BOUND.
                                                                                                    t2178 = t2172->has.
                                                                                                  ENDIF.
                                                                                                  IF t2177 = t2178.
                                                                                                    IF t2177 = abap_false.
                                                                                                      t2170 = abap_true.
                                                                                                    ELSEIF t32->value = t2172->value.
                                                                                                      t2170 = abap_true.
                                                                                                    ENDIF.
                                                                                                  ENDIF.
                                                                                                  IF t2170 = abap_true.
                                                                                                    DATA t2180 TYPE string.
                                                                                                    DATA t2181 TYPE string.
                                                                                                    t2181 = t1->text->value.
                                                                                                    DATA(t2185) = strlen( t2181 ).
                                                                                                    t2180 = |{ t2181 }{ | is an obsolete data type| }|.
                                                                                                    DATA t2188 TYPE string.
                                                                                                    t2188 = t1->info_text.
                                                                                                    DATA(t2190) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                                    t2190->has = abap_true.
                                                                                                    t2190->value = t2188.
                                                                                                    result = NEW zcl_lnt_unknown_type( i_error = t2180 i_qualified_name = t2190 ).
                                                                                                    RETURN.
                                                                                                  ELSE.
                                                                                                    DATA(t2192) = VALUE abap_bool( ).
                                                                                                    DATA t2194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                                    DATA(t2197) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                                    t2197->has = abap_true.
                                                                                                    t2197->value = |VARC|.
                                                                                                    t2194 = t2197.
                                                                                                    DATA(t2199) = VALUE abap_bool( ).
                                                                                                    DATA(t2200) = VALUE abap_bool( ).
                                                                                                    IF t32 IS BOUND.
                                                                                                      t2199 = t32->has.
                                                                                                    ENDIF.
                                                                                                    IF t2194 IS BOUND.
                                                                                                      t2200 = t2194->has.
                                                                                                    ENDIF.
                                                                                                    IF t2199 = t2200.
                                                                                                      IF t2199 = abap_false.
                                                                                                        t2192 = abap_true.
                                                                                                      ELSEIF t32->value = t2194->value.
                                                                                                        t2192 = abap_true.
                                                                                                      ENDIF.
                                                                                                    ENDIF.
                                                                                                    IF t2192 = abap_true.
                                                                                                      DATA t2202 TYPE string.
                                                                                                      DATA t2203 TYPE string.
                                                                                                      t2203 = t1->text->value.
                                                                                                      DATA(t2207) = strlen( t2203 ).
                                                                                                      t2202 = |{ t2203 }{ | is an obsolete data type| }|.
                                                                                                      DATA t2210 TYPE string.
                                                                                                      t2210 = t1->info_text.
                                                                                                      DATA(t2212) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                                      t2212->has = abap_true.
                                                                                                      t2212->value = t2210.
                                                                                                      result = NEW zcl_lnt_unknown_type( i_error = t2202 i_qualified_name = t2212 ).
                                                                                                      RETURN.
                                                                                                    ELSE.
                                                                                                      DATA(t2215) = VALUE string( ).
                                                                                                      DATA(t2216) = VALUE string( ).
                                                                                                      DATA t2217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                                                                                      t2217 = t1->text.
                                                                                                      DATA(t2220) = VALUE string( ).
                                                                                                      DATA(t2221) = VALUE abap_bool( ).
                                                                                                      IF t2217 IS INITIAL.
                                                                                                        t2221 = abap_true.
                                                                                                      ELSEIF t2217->has = abap_false.
                                                                                                        t2221 = abap_true.
                                                                                                      ENDIF.
                                                                                                      IF t2221 = abap_true.
                                                                                                        t2220 = |undefined|.
                                                                                                      ELSE.
                                                                                                        t2220 = t2217->value.
                                                                                                      ENDIF.
                                                                                                      t2216 = t2220.
                                                                                                      DATA(t2227) = strlen( t2216 ).
                                                                                                      t2215 = |{ t2216 }{ | unknown basic ddic type| }|.
                                                                                                      DATA t2230 TYPE string.
                                                                                                      t2230 = t1->info_text.
                                                                                                      DATA(t2232) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                                                                                                      t2232->has = abap_true.
                                                                                                      t2232->value = t2230.
                                                                                                      result = NEW zcl_lnt_unknown_type( i_error = t2215 i_qualified_name = t2232 ).
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
