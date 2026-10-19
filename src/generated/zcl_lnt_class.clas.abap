* TS: src/objects/class.ts:15:1 Class
CLASS zcl_lnt_class DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_object CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_291f04b3.
    INTERFACES zif_lnt_union_35a9fad2.
    DATA def TYPE REF TO zif_lnt_class_definition.
    DATA parsed_xml TYPE REF TO zcl_lnt_shape_e272b380.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_sequenced_files REDEFINITION.
    METHODS set_definition IMPORTING i_def TYPE REF TO zif_lnt_class_definition.
    METHODS gt_dfn_ins_src_obj_cls_ts_clss RETURNING VALUE(result) TYPE REF TO zif_lnt_class_definition.
    METHODS get_allowed_naming REDEFINITION.
    METHODS set_dirty REDEFINITION.
    METHODS get_class_definition RETURNING VALUE(result) TYPE REF TO zcl_lnt_info_class_definition.
    METHODS get_identifier REDEFINITION.
    METHODS get_description REDEFINITION.
    METHODS get_name_from_xml RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_category RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_locals_imp_file RETURNING VALUE(result) TYPE REF TO zcl_lnt_abap_file.
    METHODS get_testclass_file RETURNING VALUE(result) TYPE REF TO zcl_lnt_abap_file.
    METHODS parse_xml.
    METHODS get_definition RETURNING VALUE(result) TYPE REF TO zif_lnt_interface_definition.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_class IMPLEMENTATION.
  METHOD constructor.
    DATA(t2) = i_name.
    super->constructor( i_name = t2 ).
    CLEAR me->def.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `def`.
    CLEAR me->parsed_xml.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
  ENDMETHOD.

  METHOD get_type.
    result = |CLAS|.

  ENDMETHOD.

  METHOD get_sequenced_files.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abap_object.
    t5 = me.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t7 = t5->parsed.
    t4 = t7.
    t3 = t4->slice0( ).
    t2 = t3.
    DATA t9 TYPE i.
    DATA t10 TYPE i.
    t2->load( ).
    t10 = lines( t2->items ).
    t9 = t10.
    DATA t12 TYPE i.
    t12 = 1.
    DO.
      DATA t14 TYPE abap_bool.
      t14 = xsdbool( t12 < t9 ).
      IF t14 = abap_false.
        EXIT.
      ENDIF.
      DATA t17 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t17.
      DATA t19 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t19.
      DATA t22 TYPE REF TO object.
      t22 = t2->get( p0 = t12 ).
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      CLEAR t19.
      IF t22 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t23 ?= t22.
        DATA t24 TYPE REF TO object.
        t24 = t23->as_ref( ).
        t19 ?= t24.
      ELSE.
        t19 ?= t22.
      ENDIF.
      t17 = t19.
      DATA t25 TYPE i.
      t25 = t12.
      DO.
        DATA t27 TYPE abap_bool.
        DATA(t29) = 0.
        t27 = xsdbool( t25 > t29 ).
        IF t27 = abap_false.
          EXIT.
        ENDIF.
        DATA t30 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t30.
        DATA t32 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t32.
        DATA t34 TYPE i.
        DATA(t36) = 1.
        t34 = t25 - t36.
        DATA t37 TYPE REF TO object.
        t37 = t2->get( p0 = t34 ).
        DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t38.
        CLEAR t32.
        IF t37 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t38 ?= t37.
          DATA t39 TYPE REF TO object.
          t39 = t38->as_ref( ).
          t32 ?= t39.
        ELSE.
          t32 ?= t37.
        ENDIF.
        t30 = t32.
        DATA(t40) = VALUE abap_bool( ).
        DATA(t41) = VALUE i( ).
        DATA(t42) = VALUE i( ).
        DATA(t43) = VALUE abap_bool( ).
        DATA t44 TYPE string.
        DATA t45 TYPE REF TO zcl_lnt_abstract_file.
        t45 = t30.
        DATA t47 TYPE string.
        t47 = t45->filename.
        t44 = t47.
        DATA(t49) = |.clas.locals_def.abap|.
        DATA(t50) = strlen( t44 ).
        DATA t51 TYPE i.
        DATA(t52) = VALUE i( ).
        DATA(t53) = VALUE string( ).
        t51 = strlen( t49 ).
        IF t51 = 0.
          t43 = abap_true.
        ELSEIF t51 <= t50.
          t52 = 0.
          t52 = t50 - t51.
          t53 = t44+t52(t51).
          IF t53 = t49.
            t43 = abap_true.
          ENDIF.
        ENDIF.
        IF t43 = abap_true.
          t42 = 0.
        ELSE.
          DATA(t55) = VALUE i( ).
          DATA(t56) = VALUE abap_bool( ).
          DATA t57 TYPE string.
          DATA t58 TYPE REF TO zcl_lnt_abstract_file.
          t58 = t30.
          DATA t60 TYPE string.
          t60 = t58->filename.
          t57 = t60.
          DATA(t62) = |.clas.locals_imp.abap|.
          DATA(t63) = strlen( t57 ).
          DATA t64 TYPE i.
          DATA(t65) = VALUE i( ).
          DATA(t66) = VALUE string( ).
          t64 = strlen( t62 ).
          IF t64 = 0.
            t56 = abap_true.
          ELSEIF t64 <= t63.
            t65 = 0.
            t65 = t63 - t64.
            t66 = t57+t65(t64).
            IF t66 = t62.
              t56 = abap_true.
            ENDIF.
          ENDIF.
          IF t56 = abap_true.
            t55 = 1.
          ELSE.
            DATA(t68) = VALUE i( ).
            DATA(t69) = VALUE abap_bool( ).
            DATA t70 TYPE string.
            DATA t71 TYPE REF TO zcl_lnt_abstract_file.
            t71 = t30.
            DATA t73 TYPE string.
            t73 = t71->filename.
            t70 = t73.
            DATA(t75) = |.clas.abap|.
            DATA(t76) = strlen( t70 ).
            DATA t77 TYPE i.
            DATA(t78) = VALUE i( ).
            DATA(t79) = VALUE string( ).
            t77 = strlen( t75 ).
            IF t77 = 0.
              t69 = abap_true.
            ELSEIF t77 <= t76.
              t78 = 0.
              t78 = t76 - t77.
              t79 = t70+t78(t77).
              IF t79 = t75.
                t69 = abap_true.
              ENDIF.
            ENDIF.
            IF t69 = abap_true.
              t68 = 2.
            ELSE.
              DATA(t81) = VALUE i( ).
              DATA(t82) = VALUE abap_bool( ).
              DATA t83 TYPE string.
              DATA t84 TYPE REF TO zcl_lnt_abstract_file.
              t84 = t30.
              DATA t86 TYPE string.
              t86 = t84->filename.
              t83 = t86.
              DATA(t88) = |.clas.testclasses.abap|.
              DATA(t89) = strlen( t83 ).
              DATA t90 TYPE i.
              DATA(t91) = VALUE i( ).
              DATA(t92) = VALUE string( ).
              t90 = strlen( t88 ).
              IF t90 = 0.
                t82 = abap_true.
              ELSEIF t90 <= t89.
                t91 = 0.
                t91 = t89 - t90.
                t92 = t83+t91(t90).
                IF t92 = t88.
                  t82 = abap_true.
                ENDIF.
              ENDIF.
              IF t82 = abap_true.
                t81 = 3.
              ELSE.
                t81 = -1.
              ENDIF.
              t68 = t81.
            ENDIF.
            t55 = t68.
          ENDIF.
          t42 = t55.
        ENDIF.
        DATA(t95) = VALUE i( ).
        DATA(t96) = VALUE abap_bool( ).
        DATA t97 TYPE string.
        DATA t98 TYPE REF TO zcl_lnt_abstract_file.
        t98 = t17.
        DATA t100 TYPE string.
        t100 = t98->filename.
        t97 = t100.
        DATA(t102) = |.clas.locals_def.abap|.
        DATA(t103) = strlen( t97 ).
        DATA t104 TYPE i.
        DATA(t105) = VALUE i( ).
        DATA(t106) = VALUE string( ).
        t104 = strlen( t102 ).
        IF t104 = 0.
          t96 = abap_true.
        ELSEIF t104 <= t103.
          t105 = 0.
          t105 = t103 - t104.
          t106 = t97+t105(t104).
          IF t106 = t102.
            t96 = abap_true.
          ENDIF.
        ENDIF.
        IF t96 = abap_true.
          t95 = 0.
        ELSE.
          DATA(t108) = VALUE i( ).
          DATA(t109) = VALUE abap_bool( ).
          DATA t110 TYPE string.
          DATA t111 TYPE REF TO zcl_lnt_abstract_file.
          t111 = t17.
          DATA t113 TYPE string.
          t113 = t111->filename.
          t110 = t113.
          DATA(t115) = |.clas.locals_imp.abap|.
          DATA(t116) = strlen( t110 ).
          DATA t117 TYPE i.
          DATA(t118) = VALUE i( ).
          DATA(t119) = VALUE string( ).
          t117 = strlen( t115 ).
          IF t117 = 0.
            t109 = abap_true.
          ELSEIF t117 <= t116.
            t118 = 0.
            t118 = t116 - t117.
            t119 = t110+t118(t117).
            IF t119 = t115.
              t109 = abap_true.
            ENDIF.
          ENDIF.
          IF t109 = abap_true.
            t108 = 1.
          ELSE.
            DATA(t121) = VALUE i( ).
            DATA(t122) = VALUE abap_bool( ).
            DATA t123 TYPE string.
            DATA t124 TYPE REF TO zcl_lnt_abstract_file.
            t124 = t17.
            DATA t126 TYPE string.
            t126 = t124->filename.
            t123 = t126.
            DATA(t128) = |.clas.abap|.
            DATA(t129) = strlen( t123 ).
            DATA t130 TYPE i.
            DATA(t131) = VALUE i( ).
            DATA(t132) = VALUE string( ).
            t130 = strlen( t128 ).
            IF t130 = 0.
              t122 = abap_true.
            ELSEIF t130 <= t129.
              t131 = 0.
              t131 = t129 - t130.
              t132 = t123+t131(t130).
              IF t132 = t128.
                t122 = abap_true.
              ENDIF.
            ENDIF.
            IF t122 = abap_true.
              t121 = 2.
            ELSE.
              DATA(t134) = VALUE i( ).
              DATA(t135) = VALUE abap_bool( ).
              DATA t136 TYPE string.
              DATA t137 TYPE REF TO zcl_lnt_abstract_file.
              t137 = t17.
              DATA t139 TYPE string.
              t139 = t137->filename.
              t136 = t139.
              DATA(t141) = |.clas.testclasses.abap|.
              DATA(t142) = strlen( t136 ).
              DATA t143 TYPE i.
              DATA(t144) = VALUE i( ).
              DATA(t145) = VALUE string( ).
              t143 = strlen( t141 ).
              IF t143 = 0.
                t135 = abap_true.
              ELSEIF t143 <= t142.
                t144 = 0.
                t144 = t142 - t143.
                t145 = t136+t144(t143).
                IF t145 = t141.
                  t135 = abap_true.
                ENDIF.
              ENDIF.
              IF t135 = abap_true.
                t134 = 3.
              ELSE.
                t134 = -1.
              ENDIF.
              t121 = t134.
            ENDIF.
            t108 = t121.
          ENDIF.
          t95 = t108.
        ENDIF.
        t41 = t42 - t95.
        DATA(t148) = 0.
        t40 = xsdbool( t41 <= t148 ).
        IF t40 = abap_true.
          EXIT.
        ENDIF.
        t2->put( p0 = t25 p1 = t30 ).
        DATA t152 TYPE i.
        DATA(t154) = 1.
        t152 = t25 - t154.
        t25 = t152.
      ENDDO.
      t2->put( p0 = t25 p1 = t17 ).
      DATA t158 TYPE i.
      DATA(t160) = 1.
      t158 = t12 + t160.
      t12 = t158.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD set_definition.
    me->def = i_def.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `def`.
  ENDMETHOD.

  METHOD gt_dfn_ins_src_obj_cls_ts_clss.
    result = me->def.

  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t2 TYPE f.
    DATA(t3) = CONV f( 30 ).
    t2 = t3.
    DATA t4 TYPE abap_bool.
    t4 = abap_true.
    DATA t6 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    t1 = NEW zcl_lnt_iallowed_naming( i_max_length = t2 i_allow_namespace = t4 i_custom_regex = t6 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `maxLength` p1 = t8 ).
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `allowNamespace` p1 = t9 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t10) = |maxLength|.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t10 p1 = t11 ).
    DATA(t12) = |allowNamespace|.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t12 p1 = t13 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD set_dirty.
    CLEAR me->def.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `def`.
    CLEAR me->parsed_xml.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD get_class_definition.
    DATA t2 TYPE REF TO zif_lnt_abap_file_information.
    DATA t4 TYPE REF TO zcl_lnt_abap_file.
    t4 = CAST zcl_lnt_abap_file( me->get_main_abap_file( ) ).
    DATA t6 TYPE REF TO zif_lnt_abap_file_information.
    DATA(t7) = xsdbool( t4 IS INITIAL ).
    IF t7 = abap_true.
    ELSE.
      DATA t14 TYPE REF TO zif_lnt_abap_file_information.
      t14 = t4->info.
      t6 = t14.
    ENDIF.
    t2 = t6.
    DATA t16 TYPE REF TO zcl_lnt_info_class_definition.
    DATA(t17) = xsdbool( t2 IS INITIAL ).
    IF t17 = abap_true.
    ELSE.
      DATA t20 TYPE REF TO zcl_lnt_info_class_definition.
      DATA t21 TYPE REF TO zif_lnt_abap_file_information.
      t21 = t2.
      DATA t23 TYPE string.
      DATA t24 TYPE REF TO zcl_lnt_abstract_object.
      t24 = me.
      DATA t26 TYPE string.
      t26 = t24->name.
      t23 = t26.
      t20 = t21->get_class_definition_by_name( i_name = t23 ).
      t16 = t20.
    ENDIF.
    result = t16.

  ENDMETHOD.

  METHOD get_identifier.
    DATA t2 TYPE REF TO zcl_lnt_info_class_definition.
    DATA t4 TYPE REF TO zif_lnt_abap_file_information.
    DATA t6 TYPE REF TO zcl_lnt_abap_file.
    t6 = CAST zcl_lnt_abap_file( me->get_main_abap_file( ) ).
    DATA t8 TYPE REF TO zif_lnt_abap_file_information.
    DATA(t9) = xsdbool( t6 IS INITIAL ).
    IF t9 = abap_true.
    ELSE.
      DATA t16 TYPE REF TO zif_lnt_abap_file_information.
      t16 = t6->info.
      t8 = t16.
    ENDIF.
    t4 = t8.
    DATA t18 TYPE REF TO zcl_lnt_info_class_definition.
    DATA(t19) = xsdbool( t4 IS INITIAL ).
    IF t19 = abap_true.
    ELSE.
      DATA t22 TYPE REF TO zcl_lnt_info_class_definition.
      DATA t23 TYPE REF TO zif_lnt_abap_file_information.
      t23 = t4.
      DATA t25 TYPE string.
      DATA t26 TYPE REF TO zcl_lnt_abstract_object.
      t26 = me.
      DATA t28 TYPE string.
      t28 = t26->name.
      t25 = t28.
      t22 = t23->get_class_definition_by_name( i_name = t25 ).
      t18 = t22.
    ENDIF.
    t2 = t18.
    DATA t30 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t31) = xsdbool( t2 IS INITIAL ).
    IF t31 = abap_true.
    ELSE.
      DATA t34 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t35 TYPE REF TO zcl_lnt_info_class_definition.
      t35 = t2.
      t34 = t35->identifier.
      t30 = t34.
    ENDIF.
    result = t30.

  ENDMETHOD.

  METHOD get_description.
    me->parse_xml( ).
    DATA t2 TYPE REF TO zcl_lnt_shape_e272b380.
    t2 = me->parsed_xml.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t5) = xsdbool( t2 IS INITIAL ).
    IF t5 = abap_true.
    ELSE.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t9 TYPE REF TO zcl_lnt_shape_e272b380.
      t9 = t2.
      t8 = t9->description.
      t4 = t8.
    ENDIF.
    result = t4.

  ENDMETHOD.

  METHOD get_name_from_xml.
    me->parse_xml( ).
    DATA t2 TYPE REF TO zcl_lnt_shape_e272b380.
    t2 = me->parsed_xml.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t5) = xsdbool( t2 IS INITIAL ).
    IF t5 = abap_true.
    ELSE.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t9 TYPE REF TO zcl_lnt_shape_e272b380.
      t9 = t2.
      t8 = t9->name.
      t4 = t8.
    ENDIF.
    result = t4.

  ENDMETHOD.

  METHOD get_category.
    me->parse_xml( ).
    DATA t2 TYPE REF TO zcl_lnt_shape_e272b380.
    t2 = me->parsed_xml.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t5) = xsdbool( t2 IS INITIAL ).
    IF t5 = abap_true.
    ELSE.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t9 TYPE REF TO zcl_lnt_shape_e272b380.
      t9 = t2.
      t8 = t9->category.
      t4 = t8.
    ENDIF.
    result = t4.

  ENDMETHOD.

  METHOD get_locals_imp_file.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zcl_lnt_abap_object.
    t2 = me.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t4 = t2->parsed.
    t1 = t4.
    DATA t6 TYPE REF TO zcl_lnt_abap_file.
    DATA t7 TYPE REF TO object.
    DATA(t8) = VALUE i( ).
    DO.
      t1->load( ).
      IF t8 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t1->items INDEX t8 + 1 INTO t7.
      t8 = t8 + 1.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      CLEAR t6.
      IF t7 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t9 ?= t7.
        DATA t10 TYPE REF TO object.
        t10 = t9->as_ref( ).
        t6 ?= t10.
      ELSE.
        t6 ?= t7.
      ENDIF.
      DATA(t11) = VALUE abap_bool( ).
      DATA t12 TYPE string.
      DATA t13 TYPE REF TO zcl_lnt_abstract_file.
      t13 = t6.
      DATA t15 TYPE string.
      t15 = t13->filename.
      t12 = t15.
      DATA(t17) = |.clas.locals_imp.abap|.
      DATA(t18) = strlen( t12 ).
      DATA t19 TYPE i.
      DATA(t20) = VALUE i( ).
      DATA(t21) = VALUE string( ).
      t19 = strlen( t17 ).
      IF t19 = 0.
        t11 = abap_true.
      ELSEIF t19 <= t18.
        t20 = 0.
        t20 = t18 - t19.
        t21 = t12+t20(t19).
        IF t21 = t17.
          t11 = abap_true.
        ENDIF.
      ENDIF.
      IF t11 = abap_true.
        result = t6.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD get_testclass_file.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zcl_lnt_abap_object.
    t2 = me.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t4 = t2->parsed.
    t1 = t4.
    DATA t6 TYPE REF TO zcl_lnt_abap_file.
    DATA t7 TYPE REF TO object.
    DATA(t8) = VALUE i( ).
    DO.
      t1->load( ).
      IF t8 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t1->items INDEX t8 + 1 INTO t7.
      t8 = t8 + 1.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      CLEAR t6.
      IF t7 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t9 ?= t7.
        DATA t10 TYPE REF TO object.
        t10 = t9->as_ref( ).
        t6 ?= t10.
      ELSE.
        t6 ?= t7.
      ENDIF.
      DATA(t11) = VALUE abap_bool( ).
      DATA t12 TYPE string.
      DATA t13 TYPE REF TO zcl_lnt_abstract_file.
      t13 = t6.
      DATA t15 TYPE string.
      t15 = t13->filename.
      t12 = t15.
      DATA(t17) = |.clas.testclasses.abap|.
      DATA(t18) = strlen( t12 ).
      DATA t19 TYPE i.
      DATA(t20) = VALUE i( ).
      DATA(t21) = VALUE string( ).
      t19 = strlen( t17 ).
      IF t19 = 0.
        t11 = abap_true.
      ELSEIF t19 <= t18.
        t20 = 0.
        t20 = t18 - t19.
        t21 = t12+t20(t19).
        IF t21 = t17.
          t11 = abap_true.
        ENDIF.
      ENDIF.
      IF t11 = abap_true.
        result = t6.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD parse_xml.
    DATA(t1) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = xsdbool( me->parsed_xml IS INITIAL ).
    t6 = xsdbool( t7 = abap_false ).
    t1 = t6.
    IF t1 = abap_true.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zcl_lnt_shape_e272b380.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t11 = NEW zcl_lnt_shape_e272b380( i_name = t12 i_description = t14 i_category = t16 ).
    CREATE OBJECT t11->zlnt_view_ownkeys_b0e8086400eb.
    t11->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    CREATE OBJECT t11->zlnt_json_ownkeys_70e5fd461788.
    t11->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    me->parsed_xml = t11.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t19 = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t23) = xsdbool( t19 IS INITIAL ).
    IF t23 = abap_true.
    ELSE.
      t22 = t19.
    ENDIF.
    t21 = t22.
    DATA(t28) = VALUE abap_bool( ).
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t35 = t21.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t38) = VALUE abap_bool( ).
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t35 IS BOUND.
      t39 = t35.
    ENDIF.
    IF t39 IS NOT BOUND.
      t38 = abap_true.
    ELSE.
      t38 = xsdbool( t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t38 = abap_true.
    ELSE.
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t43 = t35.
      DATA(t45) = |abapGit|.
      t42 = t43->get( p0 = t45 ).
      t37 = t42.
    ENDIF.
    t33 = t37.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t47) = VALUE abap_bool( ).
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t33 IS BOUND.
      t48 = t33.
    ENDIF.
    IF t48 IS NOT BOUND.
      t47 = abap_true.
    ELSE.
      t47 = xsdbool( t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t47 = abap_true.
    ELSE.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t52 = t33.
      DATA(t54) = |asx:abap|.
      t51 = t52->get( p0 = t54 ).
      t46 = t51.
    ENDIF.
    t31 = t46.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t56) = VALUE abap_bool( ).
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t31 IS BOUND.
      t57 = t31.
    ENDIF.
    IF t57 IS NOT BOUND.
      t56 = abap_true.
    ELSE.
      t56 = xsdbool( t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t56 = abap_true.
    ELSE.
      DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t61 = t31.
      DATA(t63) = |asx:values|.
      t60 = t61->get( p0 = t63 ).
      t55 = t60.
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t28 = xsdbool( t55 IS INITIAL ).
    IF t28 = abap_true.
      RETURN.
    ENDIF.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t76 = t21.
    DATA(t78) = |abapGit|.
    t75 = t76->get( p0 = t78 ).
    t74 = t75.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t80) = VALUE abap_bool( ).
    IF t74 IS NOT BOUND.
      t80 = abap_true.
    ELSE.
      t80 = xsdbool( t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t80 = abap_true.
    ELSE.
      DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t85) = |asx:abap|.
      t83 = t74->get( p0 = t85 ).
      t79 = t83.
    ENDIF.
    t72 = t79.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t87) = VALUE abap_bool( ).
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t72 IS BOUND.
      t88 = t72.
    ENDIF.
    IF t88 IS NOT BOUND.
      t87 = abap_true.
    ELSE.
      t87 = xsdbool( t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t87 = abap_true.
    ELSE.
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t92 = t72.
      DATA(t94) = |asx:values|.
      t91 = t92->get( p0 = t94 ).
      t86 = t91.
    ENDIF.
    t70 = t86.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t96) = VALUE abap_bool( ).
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t70 IS BOUND.
      t97 = t70.
    ENDIF.
    IF t97 IS NOT BOUND.
      t96 = abap_true.
    ELSE.
      t96 = xsdbool( t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t96 = abap_true.
    ELSE.
      DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t101 = t70.
      DATA(t103) = |VSEOCLASS|.
      t100 = t101->get( p0 = t103 ).
      t95 = t100.
    ENDIF.
    t68 = t95.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t106) = xsdbool( t68 IS INITIAL ).
    IF t106 = abap_true.
    ELSE.
      t105 = t68.
    ENDIF.
    t104 = t105.
    DATA(t111) = VALUE abap_bool( ).
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t111 = xsdbool( t104 IS INITIAL ).
    IF t111 = abap_true.
      RETURN.
    ENDIF.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t120 = t104.
    DATA(t122) = |CATEGORY|.
    t119 = t120->get( p0 = t122 ).
    t118 = t119.
    DATA t123 TYPE REF TO zcl_lnt_shape_e272b380.
    t123 = me->parsed_xml.
    DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t126) = xsdbool( t118 IS INITIAL ).
    IF t126 = abap_true.
    ELSE.
      DATA t129 TYPE string.
      t129 = t118->as_string( ).
      DATA(t131) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t131->has = abap_true.
      t131->value = t129.
      t125 = t131.
    ENDIF.
    t123->category = t125.
    DELETE t123->zlnt_record_delet_0597644d88b4 WHERE table_line = `category`.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t123->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `category` p1 = t132 ).
    ENDIF.
    DATA(t133) = |category|.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = t133 p1 = t134 ).
    ENDIF.
    DATA t135 TYPE REF TO zcl_lnt_shape_e272b380.
    t135 = me->parsed_xml.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t140 = t104.
    DATA(t142) = |DESCRIPT|.
    t139 = t140->get( p0 = t142 ).
    t138 = t139.
    DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t144) = VALUE abap_bool( ).
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t146 = t104.
    DATA(t148) = |DESCRIPT|.
    t145 = t146->get( p0 = t148 ).
    IF t145 IS BOUND.
      t144 = t145->truth( ).
    ENDIF.
    IF t144 = abap_true.
      DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t150) = xsdbool( t138 IS INITIAL ).
      IF t150 = abap_true.
      ELSE.
        DATA t153 TYPE string.
        t153 = t138->as_string( ).
        DATA(t155) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t155->has = abap_true.
        t155->value = t153.
        t149 = t155.
      ENDIF.
      t143 = t149.
    ELSE.
      DATA(t158) = ||.
      DATA(t159) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t159->has = abap_true.
      t159->value = t158.
      t143 = t159.
    ENDIF.
    t135->description = t143.
    DELETE t135->zlnt_record_delet_0597644d88b4 WHERE table_line = `description`.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t135->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t135->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t161 ).
    ENDIF.
    DATA(t162) = |description|.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t135->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t135->zlnt_json_ownkeys_70e5fd461788->put( p0 = t162 p1 = t163 ).
    ENDIF.
    DATA t164 TYPE REF TO zcl_lnt_shape_e272b380.
    t164 = me->parsed_xml.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t169 = t104.
    DATA(t171) = |CLSNAME|.
    t168 = t169->get( p0 = t171 ).
    t167 = t168.
    DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t173) = VALUE abap_bool( ).
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t175 = t104.
    DATA(t177) = |CLSNAME|.
    t174 = t175->get( p0 = t177 ).
    IF t174 IS BOUND.
      t173 = t174->truth( ).
    ENDIF.
    IF t173 = abap_true.
      DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t179) = xsdbool( t167 IS INITIAL ).
      IF t179 = abap_true.
      ELSE.
        DATA t182 TYPE string.
        t182 = t167->as_string( ).
        DATA(t184) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t184->has = abap_true.
        t184->value = t182.
        t178 = t184.
      ENDIF.
      t172 = t178.
    ELSE.
      DATA(t187) = ||.
      DATA(t188) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t188->has = abap_true.
      t188->value = t187.
      t172 = t188.
    ENDIF.
    t164->name = t172.
    DELETE t164->zlnt_record_delet_0597644d88b4 WHERE table_line = `name`.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t164->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t164->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t190 ).
    ENDIF.
    DATA(t191) = |name|.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t164->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t164->zlnt_json_ownkeys_70e5fd461788->put( p0 = t191 p1 = t192 ).
    ENDIF.
  ENDMETHOD.

  METHOD get_definition.
    DATA(t1) = CAST zif_lnt_class_definition( me->gt_dfn_ins_src_obj_cls_ts_clss( ) ).
    DATA t2 TYPE REF TO object.
    t2 = t1.
    DATA t3 TYPE REF TO zif_lnt_interface_definition.
    t3 ?= t2.
    result = t3.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1224_79bf9124506a.
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~add_file.
    me->add_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~contains_file.
    result = me->contains_file( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~debug_description.
    result = me->debug_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~get_abap_file_by_name.
    result = me->get_abap_file_by_name( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~get_abap_files.
    result = me->get_abap_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~get_allowed_naming.
    result = me->get_allowed_naming( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~get_definition.
    result = me->get_definition( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~get_files.
    result = me->get_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~get_identifier.
    result = me->get_identifier( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~get_main_abap_file.
    result = me->get_main_abap_file( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~get_name_from_xml.
    result = me->get_name_from_xml( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~get_parsing_issues.
    result = me->get_parsing_issues( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~get_sequenced_files.
    result = me->get_sequenced_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~get_text_elements.
    result = me->get_text_elements( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~get_text_elements_translations.
    result = me->get_text_elements_translations( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~get_text_symbols.
    result = me->get_text_symbols( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~get_type.
    result = me->get_type( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~get_xml.
    result = me->get_xml( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~get_xml_file.
    result = me->get_xml_file( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~is_dirty.
    result = me->is_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~parse.
    result = me->parse( i_release_7928 = i_release_7928 i_global_macros_5535 = i_global_macros_5535 i_reg_f149 = i_reg_f149 i_language_version_0e1d = i_language_version_0e1d ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~remove_file.
    me->remove_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~set_definition.
    me->set_definition( i_def = i_def ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~set_dirty.
    me->set_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_291f04b3~update_file.
    me->update_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~add_file.
    me->add_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~contains_file.
    result = me->contains_file( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~debug_description.
    result = me->debug_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_abap_file_by_name.
    result = me->get_abap_file_by_name( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_abap_files.
    result = me->get_abap_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_allowed_naming.
    result = me->get_allowed_naming( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_files.
    result = me->get_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_identifier.
    result = me->get_identifier( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_main_abap_file.
    result = me->get_main_abap_file( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_parsing_issues.
    result = me->get_parsing_issues( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_sequenced_files.
    result = me->get_sequenced_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_text_elements.
    result = me->get_text_elements( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_text_elements_translations.
    result = me->get_text_elements_translations( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_text_symbols.
    result = me->get_text_symbols( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_type.
    result = me->get_type( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_xml.
    result = me->get_xml( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_xml_file.
    result = me->get_xml_file( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~is_dirty.
    result = me->is_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~parse.
    result = me->parse( i_release_7928 = i_release_7928 i_global_macros_5535 = i_global_macros_5535 i_reg_f149 = i_reg_f149 i_language_version_0e1d = i_language_version_0e1d ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~remove_file.
    me->remove_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~set_dirty.
    me->set_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~update_file.
    me->update_file( i_file = i_file ).
  ENDMETHOD.
ENDCLASS.
