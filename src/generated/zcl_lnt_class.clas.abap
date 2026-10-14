* TS: src/objects/class.ts:15:1 Class
CLASS zcl_lnt_class DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_object CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_291f04b3.
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
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_class IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
    DATA t3 TYPE REF TO zif_lnt_class_definition.
    CLEAR t3.
    me->def = t3.
    DATA t4 TYPE REF TO zcl_lnt_shape_e272b380.
    CLEAR t4.
    me->parsed_xml = t4.
  ENDMETHOD.
  METHOD get_type.
    DATA(t1) = |CLAS|.
    result = t1.

  ENDMETHOD.
  METHOD get_sequenced_files.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abap_object.
    DATA(t6) = CAST zcl_lnt_class( me ).
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = CAST zcl_lnt_abap_object( t5 ).
    t7 = t8->parsed.
    t4 = t7.
    t3 = t4->slice0( ).
    t2 = t3.
    DATA t9 TYPE i.
    DATA t10 TYPE i.
    DATA(t11) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    t10 = lines( t11->items ).
    t9 = t10.
    DATA t12 TYPE i.
    DATA(t13) = 1.
    t12 = t13.
    DO.
      DATA t14 TYPE abap_bool.
      DATA(t15) = t12.
      DATA(t16) = t9.
      t14 = xsdbool( t15 < t16 ).
      IF t14 = abap_false.
        EXIT.
      ENDIF.
      DATA t17 TYPE REF TO zcl_lnt_abap_file.
      DATA t18 TYPE REF TO zcl_lnt_abap_file.
      DATA t19 TYPE REF TO zcl_lnt_abap_file.
      DATA(t20) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      DATA(t21) = t12.
      DATA t22 TYPE REF TO object.
      t22 = t20->get( p0 = t21 ).
      t19 ?= t22.
      t18 = t19.
      t17 = t18.
      DATA t23 TYPE i.
      DATA(t24) = t12.
      t23 = t24.
      DO.
        DATA t25 TYPE abap_bool.
        DATA(t26) = t23.
        DATA(t27) = 0.
        t25 = xsdbool( t26 > t27 ).
        IF t25 = abap_false.
          EXIT.
        ENDIF.
        DATA t28 TYPE REF TO zcl_lnt_abap_file.
        DATA t29 TYPE REF TO zcl_lnt_abap_file.
        DATA t30 TYPE REF TO zcl_lnt_abap_file.
        DATA(t31) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA t32 TYPE i.
        DATA(t33) = t23.
        DATA(t34) = 1.
        t32 = t33 - t34.
        DATA t35 TYPE REF TO object.
        t35 = t31->get( p0 = t32 ).
        t30 ?= t35.
        t29 = t30.
        t28 = t29.
        DATA(t36) = VALUE abap_bool( ).
        DATA(t37) = VALUE i( ).
        DATA(t38) = VALUE i( ).
        DATA(t39) = VALUE abap_bool( ).
        DATA t40 TYPE string.
        DATA t41 TYPE REF TO zcl_lnt_abstract_file.
        DATA(t42) = CAST zcl_lnt_abap_file( t28 ).
        t41 = t42.
        DATA t43 TYPE string.
        DATA(t44) = CAST zcl_lnt_abstract_file( t41 ).
        t43 = t44->filename.
        t40 = t43.
        DATA(t45) = |.clas.locals_def.abap|.
        DATA(t46) = strlen( t40 ).
        DATA t47 TYPE i.
        DATA(t48) = VALUE i( ).
        DATA(t49) = VALUE string( ).
        t47 = strlen( t45 ).
        IF t47 = 0.
          t39 = abap_true.
        ELSEIF t47 <= t46.
          t48 = 0.
          t48 = t46 - t47.
          t49 = t40+t48(t47).
          IF t49 = t45.
            t39 = abap_true.
          ENDIF.
        ENDIF.
        IF t39 = abap_true.
          DATA(t50) = 0.
          t38 = t50.
        ELSE.
          DATA(t51) = VALUE i( ).
          DATA(t52) = VALUE abap_bool( ).
          DATA t53 TYPE string.
          DATA t54 TYPE REF TO zcl_lnt_abstract_file.
          DATA(t55) = CAST zcl_lnt_abap_file( t28 ).
          t54 = t55.
          DATA t56 TYPE string.
          DATA(t57) = CAST zcl_lnt_abstract_file( t54 ).
          t56 = t57->filename.
          t53 = t56.
          DATA(t58) = |.clas.locals_imp.abap|.
          DATA(t59) = strlen( t53 ).
          DATA t60 TYPE i.
          DATA(t61) = VALUE i( ).
          DATA(t62) = VALUE string( ).
          t60 = strlen( t58 ).
          IF t60 = 0.
            t52 = abap_true.
          ELSEIF t60 <= t59.
            t61 = 0.
            t61 = t59 - t60.
            t62 = t53+t61(t60).
            IF t62 = t58.
              t52 = abap_true.
            ENDIF.
          ENDIF.
          IF t52 = abap_true.
            DATA(t63) = 1.
            t51 = t63.
          ELSE.
            DATA(t64) = VALUE i( ).
            DATA(t65) = VALUE abap_bool( ).
            DATA t66 TYPE string.
            DATA t67 TYPE REF TO zcl_lnt_abstract_file.
            DATA(t68) = CAST zcl_lnt_abap_file( t28 ).
            t67 = t68.
            DATA t69 TYPE string.
            DATA(t70) = CAST zcl_lnt_abstract_file( t67 ).
            t69 = t70->filename.
            t66 = t69.
            DATA(t71) = |.clas.abap|.
            DATA(t72) = strlen( t66 ).
            DATA t73 TYPE i.
            DATA(t74) = VALUE i( ).
            DATA(t75) = VALUE string( ).
            t73 = strlen( t71 ).
            IF t73 = 0.
              t65 = abap_true.
            ELSEIF t73 <= t72.
              t74 = 0.
              t74 = t72 - t73.
              t75 = t66+t74(t73).
              IF t75 = t71.
                t65 = abap_true.
              ENDIF.
            ENDIF.
            IF t65 = abap_true.
              DATA(t76) = 2.
              t64 = t76.
            ELSE.
              DATA(t77) = VALUE i( ).
              DATA(t78) = VALUE abap_bool( ).
              DATA t79 TYPE string.
              DATA t80 TYPE REF TO zcl_lnt_abstract_file.
              DATA(t81) = CAST zcl_lnt_abap_file( t28 ).
              t80 = t81.
              DATA t82 TYPE string.
              DATA(t83) = CAST zcl_lnt_abstract_file( t80 ).
              t82 = t83->filename.
              t79 = t82.
              DATA(t84) = |.clas.testclasses.abap|.
              DATA(t85) = strlen( t79 ).
              DATA t86 TYPE i.
              DATA(t87) = VALUE i( ).
              DATA(t88) = VALUE string( ).
              t86 = strlen( t84 ).
              IF t86 = 0.
                t78 = abap_true.
              ELSEIF t86 <= t85.
                t87 = 0.
                t87 = t85 - t86.
                t88 = t79+t87(t86).
                IF t88 = t84.
                  t78 = abap_true.
                ENDIF.
              ENDIF.
              IF t78 = abap_true.
                DATA(t89) = 3.
                t77 = t89.
              ELSE.
                DATA(t90) = -1.
                t77 = t90.
              ENDIF.
              t64 = t77.
            ENDIF.
            t51 = t64.
          ENDIF.
          t38 = t51.
        ENDIF.
        DATA(t91) = VALUE i( ).
        DATA(t92) = VALUE abap_bool( ).
        DATA t93 TYPE string.
        DATA t94 TYPE REF TO zcl_lnt_abstract_file.
        DATA(t95) = CAST zcl_lnt_abap_file( t17 ).
        t94 = t95.
        DATA t96 TYPE string.
        DATA(t97) = CAST zcl_lnt_abstract_file( t94 ).
        t96 = t97->filename.
        t93 = t96.
        DATA(t98) = |.clas.locals_def.abap|.
        DATA(t99) = strlen( t93 ).
        DATA t100 TYPE i.
        DATA(t101) = VALUE i( ).
        DATA(t102) = VALUE string( ).
        t100 = strlen( t98 ).
        IF t100 = 0.
          t92 = abap_true.
        ELSEIF t100 <= t99.
          t101 = 0.
          t101 = t99 - t100.
          t102 = t93+t101(t100).
          IF t102 = t98.
            t92 = abap_true.
          ENDIF.
        ENDIF.
        IF t92 = abap_true.
          DATA(t103) = 0.
          t91 = t103.
        ELSE.
          DATA(t104) = VALUE i( ).
          DATA(t105) = VALUE abap_bool( ).
          DATA t106 TYPE string.
          DATA t107 TYPE REF TO zcl_lnt_abstract_file.
          DATA(t108) = CAST zcl_lnt_abap_file( t17 ).
          t107 = t108.
          DATA t109 TYPE string.
          DATA(t110) = CAST zcl_lnt_abstract_file( t107 ).
          t109 = t110->filename.
          t106 = t109.
          DATA(t111) = |.clas.locals_imp.abap|.
          DATA(t112) = strlen( t106 ).
          DATA t113 TYPE i.
          DATA(t114) = VALUE i( ).
          DATA(t115) = VALUE string( ).
          t113 = strlen( t111 ).
          IF t113 = 0.
            t105 = abap_true.
          ELSEIF t113 <= t112.
            t114 = 0.
            t114 = t112 - t113.
            t115 = t106+t114(t113).
            IF t115 = t111.
              t105 = abap_true.
            ENDIF.
          ENDIF.
          IF t105 = abap_true.
            DATA(t116) = 1.
            t104 = t116.
          ELSE.
            DATA(t117) = VALUE i( ).
            DATA(t118) = VALUE abap_bool( ).
            DATA t119 TYPE string.
            DATA t120 TYPE REF TO zcl_lnt_abstract_file.
            DATA(t121) = CAST zcl_lnt_abap_file( t17 ).
            t120 = t121.
            DATA t122 TYPE string.
            DATA(t123) = CAST zcl_lnt_abstract_file( t120 ).
            t122 = t123->filename.
            t119 = t122.
            DATA(t124) = |.clas.abap|.
            DATA(t125) = strlen( t119 ).
            DATA t126 TYPE i.
            DATA(t127) = VALUE i( ).
            DATA(t128) = VALUE string( ).
            t126 = strlen( t124 ).
            IF t126 = 0.
              t118 = abap_true.
            ELSEIF t126 <= t125.
              t127 = 0.
              t127 = t125 - t126.
              t128 = t119+t127(t126).
              IF t128 = t124.
                t118 = abap_true.
              ENDIF.
            ENDIF.
            IF t118 = abap_true.
              DATA(t129) = 2.
              t117 = t129.
            ELSE.
              DATA(t130) = VALUE i( ).
              DATA(t131) = VALUE abap_bool( ).
              DATA t132 TYPE string.
              DATA t133 TYPE REF TO zcl_lnt_abstract_file.
              DATA(t134) = CAST zcl_lnt_abap_file( t17 ).
              t133 = t134.
              DATA t135 TYPE string.
              DATA(t136) = CAST zcl_lnt_abstract_file( t133 ).
              t135 = t136->filename.
              t132 = t135.
              DATA(t137) = |.clas.testclasses.abap|.
              DATA(t138) = strlen( t132 ).
              DATA t139 TYPE i.
              DATA(t140) = VALUE i( ).
              DATA(t141) = VALUE string( ).
              t139 = strlen( t137 ).
              IF t139 = 0.
                t131 = abap_true.
              ELSEIF t139 <= t138.
                t140 = 0.
                t140 = t138 - t139.
                t141 = t132+t140(t139).
                IF t141 = t137.
                  t131 = abap_true.
                ENDIF.
              ENDIF.
              IF t131 = abap_true.
                DATA(t142) = 3.
                t130 = t142.
              ELSE.
                DATA(t143) = -1.
                t130 = t143.
              ENDIF.
              t117 = t130.
            ENDIF.
            t104 = t117.
          ENDIF.
          t91 = t104.
        ENDIF.
        t37 = t38 - t91.
        DATA(t144) = 0.
        t36 = xsdbool( t37 <= t144 ).
        IF t36 = abap_true.
          EXIT.
        ENDIF.
        DATA(t145) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA(t146) = t23.
        DATA(t147) = CAST zcl_lnt_abap_file( t28 ).
        t146 = t146 + 1.
        DATA t148 TYPE REF TO object.
        CLEAR t148.
        CLEAR t148.
        WHILE lines( t145->items ) < t146.
          APPEND t148 TO t145->items.
        ENDWHILE.
        MODIFY t145->items FROM t147 INDEX t146.
        DATA t149 TYPE i.
        DATA(t150) = t23.
        DATA(t151) = 1.
        t149 = t150 - t151.
        t23 = t149.
      ENDDO.
      DATA(t152) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      DATA(t153) = t23.
      DATA(t154) = CAST zcl_lnt_abap_file( t17 ).
      t153 = t153 + 1.
      DATA t155 TYPE REF TO object.
      CLEAR t155.
      CLEAR t155.
      WHILE lines( t152->items ) < t153.
        APPEND t155 TO t152->items.
      ENDWHILE.
      MODIFY t152->items FROM t154 INDEX t153.
      DATA t156 TYPE i.
      DATA(t157) = t12.
      DATA(t158) = 1.
      t156 = t157 + t158.
      t12 = t156.
    ENDDO.
    DATA(t159) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    t1 = t159.
    result = t1.

  ENDMETHOD.
  METHOD set_definition.
    DATA(t1) = CAST zif_lnt_class_definition( i_def ).
    DATA(t2) = CAST zif_lnt_class_definition( t1 ).
    me->def = t2.
  ENDMETHOD.
  METHOD gt_dfn_ins_src_obj_cls_ts_clss.
    DATA(t1) = CAST zif_lnt_class_definition( me->def ).
    result = t1.

  ENDMETHOD.
  METHOD get_allowed_naming.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/class.ts:41|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD set_dirty.
    DATA t1 TYPE REF TO zif_lnt_class_definition.
    CLEAR t1.
    me->def = t1.
    DATA t2 TYPE REF TO zcl_lnt_shape_e272b380.
    CLEAR t2.
    me->parsed_xml = t2.
    super->set_dirty( ).
  ENDMETHOD.
  METHOD get_class_definition.
    DATA t1 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t2.
    DATA t3 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_abap_file.
    DATA(t5) = CAST zcl_lnt_abap_file( me->get_main_abap_file( ) ).
    t4 = t5.
    DATA t6 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = CAST zcl_lnt_abap_file( t4 ).
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    IF t7 = abap_true.
      DATA t9 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t9.
      t6 = t9.
    ELSE.
      DATA t10 TYPE REF TO zif_lnt_abap_file_information.
      DATA t11 TYPE REF TO zcl_lnt_abap_file.
      DATA t12 TYPE REF TO zcl_lnt_abap_file.
      DATA(t13) = CAST zcl_lnt_abap_file( t4 ).
      t12 = t13.
      t11 = t12.
      DATA t14 TYPE REF TO zif_lnt_abap_file_information.
      DATA(t15) = CAST zcl_lnt_abap_file( t11 ).
      t14 = t15->info.
      t10 = t14.
      t6 = t10.
    ENDIF.
    t3 = t6.
    t2 = t3.
    DATA t16 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t16.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = CAST zif_lnt_abap_file_information( t2 ).
    IF t18 IS INITIAL.
      t17 = abap_true.
    ENDIF.
    IF t17 = abap_true.
      DATA t19 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t19.
      t16 = t19.
    ELSE.
      DATA t20 TYPE REF TO zcl_lnt_info_class_definition.
      DATA t21 TYPE REF TO zif_lnt_abap_file_information.
      DATA(t22) = CAST zif_lnt_abap_file_information( t2 ).
      t21 = t22.
      DATA t23 TYPE string.
      DATA t24 TYPE REF TO zcl_lnt_abstract_object.
      DATA(t25) = CAST zcl_lnt_class( me ).
      t24 = t25.
      DATA t26 TYPE string.
      DATA(t27) = CAST zcl_lnt_abstract_object( t24 ).
      t26 = t27->name.
      t23 = t26.
      t20 = t21->get_class_definition_by_name( i_name = t23 ).
      t16 = t20.
    ENDIF.
    t1 = t16.
    result = t1.

  ENDMETHOD.
  METHOD get_identifier.
    DATA t1 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t1.
    DATA t2 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t3.
    DATA t4 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t4.
    DATA t5 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_abap_file.
    DATA(t7) = CAST zcl_lnt_abap_file( me->get_main_abap_file( ) ).
    t6 = t7.
    DATA t8 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = CAST zcl_lnt_abap_file( t6 ).
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    IF t9 = abap_true.
      DATA t11 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t11.
      t8 = t11.
    ELSE.
      DATA t12 TYPE REF TO zif_lnt_abap_file_information.
      DATA t13 TYPE REF TO zcl_lnt_abap_file.
      DATA t14 TYPE REF TO zcl_lnt_abap_file.
      DATA(t15) = CAST zcl_lnt_abap_file( t6 ).
      t14 = t15.
      t13 = t14.
      DATA t16 TYPE REF TO zif_lnt_abap_file_information.
      DATA(t17) = CAST zcl_lnt_abap_file( t13 ).
      t16 = t17->info.
      t12 = t16.
      t8 = t12.
    ENDIF.
    t5 = t8.
    t4 = t5.
    DATA t18 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t18.
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = CAST zif_lnt_abap_file_information( t4 ).
    IF t20 IS INITIAL.
      t19 = abap_true.
    ENDIF.
    IF t19 = abap_true.
      DATA t21 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t21.
      t18 = t21.
    ELSE.
      DATA t22 TYPE REF TO zcl_lnt_info_class_definition.
      DATA t23 TYPE REF TO zif_lnt_abap_file_information.
      DATA(t24) = CAST zif_lnt_abap_file_information( t4 ).
      t23 = t24.
      DATA t25 TYPE string.
      DATA t26 TYPE REF TO zcl_lnt_abstract_object.
      DATA(t27) = CAST zcl_lnt_class( me ).
      t26 = t27.
      DATA t28 TYPE string.
      DATA(t29) = CAST zcl_lnt_abstract_object( t26 ).
      t28 = t29->name.
      t25 = t28.
      t22 = t23->get_class_definition_by_name( i_name = t25 ).
      t18 = t22.
    ENDIF.
    t3 = t18.
    t2 = t3.
    DATA t30 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t30.
    DATA(t31) = VALUE abap_bool( ).
    DATA(t32) = CAST zcl_lnt_info_class_definition( t2 ).
    IF t32 IS INITIAL.
      t31 = abap_true.
    ENDIF.
    IF t31 = abap_true.
      DATA t33 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t33.
      t30 = t33.
    ELSE.
      DATA t34 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t35 TYPE REF TO zcl_lnt_info_class_definition.
      DATA(t36) = CAST zcl_lnt_info_class_definition( t2 ).
      t35 = t36.
      t34 = t35->identifier.
      t30 = t34.
    ENDIF.
    t1 = t30.
    result = t1.

  ENDMETHOD.
  METHOD get_description.
    me->parse_xml( ).
    DATA t1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1.
    DATA t2 TYPE REF TO zcl_lnt_shape_e272b380.
    DATA(t3) = CAST zcl_lnt_shape_e272b380( me->parsed_xml ).
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t4.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = CAST zcl_lnt_shape_e272b380( t2 ).
    IF t6 IS INITIAL.
      t5 = abap_true.
    ENDIF.
    IF t5 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t7.
      t4 = t7.
    ELSE.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t9 TYPE REF TO zcl_lnt_shape_e272b380.
      DATA(t10) = CAST zcl_lnt_shape_e272b380( t2 ).
      t9 = t10.
      t8 = t9->description.
      t4 = t8.
    ENDIF.
    t1 = t4.
    result = t1.

  ENDMETHOD.
  METHOD get_name_from_xml.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/class.ts:69|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_category.
    me->parse_xml( ).
    DATA t1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1.
    DATA t2 TYPE REF TO zcl_lnt_shape_e272b380.
    DATA(t3) = CAST zcl_lnt_shape_e272b380( me->parsed_xml ).
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t4.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = CAST zcl_lnt_shape_e272b380( t2 ).
    IF t6 IS INITIAL.
      t5 = abap_true.
    ENDIF.
    IF t5 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t7.
      t4 = t7.
    ELSE.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t9 TYPE REF TO zcl_lnt_shape_e272b380.
      DATA(t10) = CAST zcl_lnt_shape_e272b380( t2 ).
      t9 = t10.
      t8 = t9->category.
      t4 = t8.
    ENDIF.
    t1 = t4.
    result = t1.

  ENDMETHOD.
  METHOD get_locals_imp_file.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/class.ts:80|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_testclass_file.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/class.ts:89|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD parse_xml.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zcl_lnt_shape_e272b380.
    DATA(t3) = CAST zcl_lnt_shape_e272b380( me->parsed_xml ).
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = CAST zcl_lnt_shape_e272b380( t2 ).
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t6 = xsdbool( t7 = abap_false ).
    t1 = t6.
    IF t1 = abap_true.
      RETURN.
    ENDIF.
    DATA t9 TYPE REF TO zcl_lnt_shape_e272b380.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_shape_e272b380.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t12.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t14.
      t11 = NEW zcl_lnt_shape_e272b380( i_name = t12 i_description = t13 i_category = t14 ).
      t9 = t11.
    ELSE.
      DATA t15 TYPE REF TO zcl_lnt_shape_e272b380.
      CLEAR t15.
      t9 = t15.
    ENDIF.
    me->parsed_xml = t9.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t17) = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    t16 = t17.
    DATA(t18) = VALUE abap_bool( ).
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t26) = CAST zlnt_runtime_dyna_a429568d5be8( t16 ).
    t25 = t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA(t28) = VALUE abap_bool( ).
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    DATA(t30) = CAST zlnt_runtime_dyna_a429568d5be8( t25 ).
    IF t30 IS BOUND.
      t29 = t30.
    ENDIF.
    IF t29 IS NOT BOUND.
      t28 = abap_true.
    ELSE.
      t28 = xsdbool( t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t28 = abap_true.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      t27 = t31.
    ELSE.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t34) = CAST zlnt_runtime_dyna_a429568d5be8( t25 ).
      t33 = t34.
      DATA(t35) = |abapGit|.
      t32 = t33->get( p0 = t35 ).
      t27 = t32.
    ENDIF.
    t24 = t27.
    t23 = t24.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    DATA(t37) = VALUE abap_bool( ).
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA(t39) = CAST zlnt_runtime_dyna_a429568d5be8( t23 ).
    IF t39 IS BOUND.
      t38 = t39.
    ENDIF.
    IF t38 IS NOT BOUND.
      t37 = abap_true.
    ELSE.
      t37 = xsdbool( t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t37 = abap_true.
      DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t40.
      t36 = t40.
    ELSE.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t43) = CAST zlnt_runtime_dyna_a429568d5be8( t23 ).
      t42 = t43.
      DATA(t44) = |asx:abap|.
      t41 = t42->get( p0 = t44 ).
      t36 = t41.
    ENDIF.
    t22 = t36.
    t21 = t22.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA(t46) = VALUE abap_bool( ).
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA(t48) = CAST zlnt_runtime_dyna_a429568d5be8( t21 ).
    IF t48 IS BOUND.
      t47 = t48.
    ENDIF.
    IF t47 IS NOT BOUND.
      t46 = abap_true.
    ELSE.
      t46 = xsdbool( t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t46 = abap_true.
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t49.
      t45 = t49.
    ELSE.
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t52) = CAST zlnt_runtime_dyna_a429568d5be8( t21 ).
      t51 = t52.
      DATA(t53) = |asx:values|.
      t50 = t51->get( p0 = t53 ).
      t45 = t50.
    ENDIF.
    t20 = t45.
    t19 = t20.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    t54 = t55.
    DATA(t56) = VALUE abap_bool( ).
    DATA(t57) = CAST zlnt_runtime_dyna_a429568d5be8( t19 ).
    IF t57 IS INITIAL.
      t56 = abap_true.
    ENDIF.
    t18 = t56.
    IF t18 = abap_true.
      RETURN.
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t67) = CAST zlnt_runtime_dyna_a429568d5be8( t16 ).
    t66 = t67.
    DATA(t68) = |abapGit|.
    t65 = t66->get( p0 = t68 ).
    t64 = t65.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA(t70) = VALUE abap_bool( ).
    DATA(t71) = CAST zlnt_runtime_dyna_a429568d5be8( t64 ).
    IF t71 IS NOT BOUND.
      t70 = abap_true.
    ELSE.
      t70 = xsdbool( t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t70 = abap_true.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t72.
      t69 = t72.
    ELSE.
      DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t74) = CAST zlnt_runtime_dyna_a429568d5be8( t64 ).
      DATA(t75) = |asx:abap|.
      t73 = t74->get( p0 = t75 ).
      t69 = t73.
    ENDIF.
    t63 = t69.
    t62 = t63.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA(t77) = VALUE abap_bool( ).
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA(t79) = CAST zlnt_runtime_dyna_a429568d5be8( t62 ).
    IF t79 IS BOUND.
      t78 = t79.
    ENDIF.
    IF t78 IS NOT BOUND.
      t77 = abap_true.
    ELSE.
      t77 = xsdbool( t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t77 = abap_true.
      DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t80.
      t76 = t80.
    ELSE.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t83) = CAST zlnt_runtime_dyna_a429568d5be8( t62 ).
      t82 = t83.
      DATA(t84) = |asx:values|.
      t81 = t82->get( p0 = t84 ).
      t76 = t81.
    ENDIF.
    t61 = t76.
    t60 = t61.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA(t86) = VALUE abap_bool( ).
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA(t88) = CAST zlnt_runtime_dyna_a429568d5be8( t60 ).
    IF t88 IS BOUND.
      t87 = t88.
    ENDIF.
    IF t87 IS NOT BOUND.
      t86 = abap_true.
    ELSE.
      t86 = xsdbool( t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t86 = abap_true.
      DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t89.
      t85 = t89.
    ELSE.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t92) = CAST zlnt_runtime_dyna_a429568d5be8( t60 ).
      t91 = t92.
      DATA(t93) = |VSEOCLASS|.
      t90 = t91->get( p0 = t93 ).
      t85 = t90.
    ENDIF.
    t59 = t85.
    t58 = t59.
    DATA(t94) = VALUE abap_bool( ).
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t96) = CAST zlnt_runtime_dyna_a429568d5be8( t58 ).
    t95 = t96.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    t97 = t98.
    DATA(t99) = VALUE abap_bool( ).
    DATA(t100) = CAST zlnt_runtime_dyna_a429568d5be8( t95 ).
    IF t100 IS INITIAL.
      t99 = abap_true.
    ENDIF.
    t94 = t99.
    IF t94 = abap_true.
      RETURN.
    ENDIF.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t104) = CAST zlnt_runtime_dyna_a429568d5be8( t58 ).
    t103 = t104.
    DATA(t105) = |CATEGORY|.
    t102 = t103->get( p0 = t105 ).
    t101 = t102.
    DATA t106 TYPE REF TO zcl_lnt_shape_e272b380.
    DATA(t107) = CAST zcl_lnt_shape_e272b380( me->parsed_xml ).
    t106 = t107.
    DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t108.
    DATA(t109) = VALUE abap_bool( ).
    DATA(t110) = CAST zlnt_runtime_dyna_a429568d5be8( t101 ).
    IF t110 IS INITIAL.
      t109 = abap_true.
    ENDIF.
    IF t109 = abap_true.
      DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t111.
      t108 = t111.
    ELSE.
      DATA t112 TYPE string.
      DATA(t113) = CAST zlnt_runtime_dyna_a429568d5be8( t101 ).
      t112 = t113->as_string( ).
      DATA(t114) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t114->has = abap_true.
      t114->value = t112.
      t108 = t114.
    ENDIF.
    t106->category = t108.
    DATA t115 TYPE REF TO zcl_lnt_shape_e272b380.
    DATA(t116) = CAST zcl_lnt_shape_e272b380( me->parsed_xml ).
    t115 = t116.
    DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t117.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t121) = CAST zlnt_runtime_dyna_a429568d5be8( t58 ).
    t120 = t121.
    DATA(t122) = |DESCRIPT|.
    t119 = t120->get( p0 = t122 ).
    t118 = t119.
    DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t123.
    DATA(t124) = VALUE abap_bool( ).
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t127) = CAST zlnt_runtime_dyna_a429568d5be8( t58 ).
    t126 = t127.
    DATA(t128) = |DESCRIPT|.
    t125 = t126->get( p0 = t128 ).
    IF t125 IS BOUND.
      t124 = t125->truth( ).
    ENDIF.
    IF t124 = abap_true.
      DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t129.
      DATA(t130) = VALUE abap_bool( ).
      DATA(t131) = CAST zlnt_runtime_dyna_a429568d5be8( t118 ).
      IF t131 IS INITIAL.
        t130 = abap_true.
      ENDIF.
      IF t130 = abap_true.
        DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t132.
        t129 = t132.
      ELSE.
        DATA t133 TYPE string.
        DATA(t134) = CAST zlnt_runtime_dyna_a429568d5be8( t118 ).
        t133 = t134->as_string( ).
        DATA(t135) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t135->has = abap_true.
        t135->value = t133.
        t129 = t135.
      ENDIF.
      t123 = t129.
    ELSE.
      DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t136.
      DATA(t137) = abap_true.
      IF t137 = abap_true.
        DATA(t138) = ||.
        DATA(t139) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t139->has = abap_true.
        t139->value = t138.
        t136 = t139.
      ELSE.
        DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t140.
        t136 = t140.
      ENDIF.
      t123 = t136.
    ENDIF.
    t117 = t123.
    t115->description = t117.
    DATA t141 TYPE REF TO zcl_lnt_shape_e272b380.
    DATA(t142) = CAST zcl_lnt_shape_e272b380( me->parsed_xml ).
    t141 = t142.
    DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t143.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t147) = CAST zlnt_runtime_dyna_a429568d5be8( t58 ).
    t146 = t147.
    DATA(t148) = |CLSNAME|.
    t145 = t146->get( p0 = t148 ).
    t144 = t145.
    DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t149.
    DATA(t150) = VALUE abap_bool( ).
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t153) = CAST zlnt_runtime_dyna_a429568d5be8( t58 ).
    t152 = t153.
    DATA(t154) = |CLSNAME|.
    t151 = t152->get( p0 = t154 ).
    IF t151 IS BOUND.
      t150 = t151->truth( ).
    ENDIF.
    IF t150 = abap_true.
      DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t155.
      DATA(t156) = VALUE abap_bool( ).
      DATA(t157) = CAST zlnt_runtime_dyna_a429568d5be8( t144 ).
      IF t157 IS INITIAL.
        t156 = abap_true.
      ENDIF.
      IF t156 = abap_true.
        DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t158.
        t155 = t158.
      ELSE.
        DATA t159 TYPE string.
        DATA(t160) = CAST zlnt_runtime_dyna_a429568d5be8( t144 ).
        t159 = t160->as_string( ).
        DATA(t161) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t161->has = abap_true.
        t161->value = t159.
        t155 = t161.
      ENDIF.
      t149 = t155.
    ELSE.
      DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t162.
      DATA(t163) = abap_true.
      IF t163 = abap_true.
        DATA(t164) = ||.
        DATA(t165) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t165->has = abap_true.
        t165->value = t164.
        t162 = t165.
      ELSE.
        DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t166.
        t162 = t166.
      ENDIF.
      t149 = t162.
    ENDIF.
    t143 = t149.
    t141->name = t143.
  ENDMETHOD.
  METHOD get_definition.
    DATA(t1) = CAST zif_lnt_class_definition( me->gt_dfn_ins_src_obj_cls_ts_clss( ) ).
    DATA t2 TYPE REF TO object.
    t2 = t1.
    DATA t3 TYPE REF TO zif_lnt_interface_definition.
    t3 ?= t2.
    result = t3.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1126_5825bd45ea27.
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
ENDCLASS.
