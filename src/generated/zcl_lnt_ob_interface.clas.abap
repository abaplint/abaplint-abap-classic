* TS: src/objects/interface.ts:7:1 Interface
CLASS zcl_lnt_ob_interface DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_object CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_291f04b3.
    DATA def TYPE REF TO zif_lnt_interface_definition.
    DATA parsed_xml TYPE REF TO zcl_lnt_shape_71a973d8.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS st_dfn_ins_src_obj_int_ts_intr IMPORTING i_def TYPE REF TO zif_lnt_interface_definition.
    METHODS get_sequenced_files REDEFINITION.
    METHODS get_definition RETURNING VALUE(result) TYPE REF TO zif_lnt_interface_definition.
    METHODS get_interface RETURNING VALUE(result) TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    METHODS get_identifier REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS set_dirty REDEFINITION.
    METHODS get_name_from_xml RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_description REDEFINITION.
    METHODS parse_xml.
    METHODS set_definition IMPORTING i_def TYPE REF TO zif_lnt_class_definition.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ob_interface IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
    DATA t3 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t3.
    me->def = t3.
    DATA t4 TYPE REF TO zcl_lnt_shape_71a973d8.
    CLEAR t4.
    me->parsed_xml = t4.
  ENDMETHOD.
  METHOD get_type.
    DATA(t1) = |INTF|.
    result = t1.
    
  ENDMETHOD.
  METHOD st_dfn_ins_src_obj_int_ts_intr.
    DATA(t1) = CAST zif_lnt_interface_definition( i_def ).
    DATA(t2) = CAST zif_lnt_interface_definition( t1 ).
    me->def = t2.
  ENDMETHOD.
  METHOD get_sequenced_files.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/interface.ts:19|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_definition.
    DATA(t1) = CAST zif_lnt_interface_definition( me->def ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_interface.
    DATA t1 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t2.
    DATA t3 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_abap_file.
    DATA(t5) = CAST zcl_lnt_abap_file( me->get_main_abap_file(  ) ).
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
    DATA t16 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    CLEAR t16.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = CAST zif_lnt_abap_file_information( t2 ).
    IF t18 IS INITIAL.
      t17 = abap_true.
    ENDIF.
    IF t17 = abap_true.
      DATA t19 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
      CLEAR t19.
      t16 = t19.
    ELSE.
      DATA t20 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
      DATA t21 TYPE REF TO zif_lnt_abap_file_information.
      DATA(t22) = CAST zif_lnt_abap_file_information( t2 ).
      t21 = t22.
      DATA t23 TYPE string.
      DATA t24 TYPE REF TO zcl_lnt_abstract_object.
      DATA(t25) = CAST zcl_lnt_ob_interface( me ).
      t24 = t25.
      DATA t26 TYPE string.
      DATA(t27) = CAST zcl_lnt_abstract_object( t24 ).
      t26 = t27->name.
      t23 = t26.
      t20 = t21->gt_intrfc_dfntn_by_nm( i_name = t23 ).
      t16 = t20.
    ENDIF.
    t1 = t16.
    result = t1.
    
  ENDMETHOD.
  METHOD get_identifier.
    DATA t1 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t1.
    DATA t2 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    CLEAR t3.
    DATA t4 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t4.
    DATA t5 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_abap_file.
    DATA(t7) = CAST zcl_lnt_abap_file( me->get_main_abap_file(  ) ).
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
    DATA t18 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    CLEAR t18.
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = CAST zif_lnt_abap_file_information( t4 ).
    IF t20 IS INITIAL.
      t19 = abap_true.
    ENDIF.
    IF t19 = abap_true.
      DATA t21 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
      CLEAR t21.
      t18 = t21.
    ELSE.
      DATA t22 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
      DATA t23 TYPE REF TO zif_lnt_abap_file_information.
      DATA(t24) = CAST zif_lnt_abap_file_information( t4 ).
      t23 = t24.
      DATA t25 TYPE string.
      DATA t26 TYPE REF TO zcl_lnt_abstract_object.
      DATA(t27) = CAST zcl_lnt_ob_interface( me ).
      t26 = t27.
      DATA t28 TYPE string.
      DATA(t29) = CAST zcl_lnt_abstract_object( t26 ).
      t28 = t29->name.
      t25 = t28.
      t22 = t23->gt_intrfc_dfntn_by_nm( i_name = t25 ).
      t18 = t22.
    ENDIF.
    t3 = t18.
    t2 = t3.
    DATA t30 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t30.
    DATA(t31) = VALUE abap_bool( ).
    DATA(t32) = CAST zcl_lnt_inf_intrfc_dfntn( t2 ).
    IF t32 IS INITIAL.
      t31 = abap_true.
    ENDIF.
    IF t31 = abap_true.
      DATA t33 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t33.
      t30 = t33.
    ELSE.
      DATA t34 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t35 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
      DATA(t36) = CAST zcl_lnt_inf_intrfc_dfntn( t2 ).
      t35 = t36.
      t34 = t35->identifier.
      t30 = t34.
    ENDIF.
    t1 = t30.
    result = t1.
    
  ENDMETHOD.
  METHOD get_allowed_naming.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/interface.ts:39|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD set_dirty.
    DATA t1 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t1.
    me->def = t1.
    DATA t2 TYPE REF TO zcl_lnt_shape_71a973d8.
    CLEAR t2.
    me->parsed_xml = t2.
    super->set_dirty(  ).
  ENDMETHOD.
  METHOD get_name_from_xml.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/interface.ts:52|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_description.
    me->parse_xml(  ).
    DATA t1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1.
    DATA t2 TYPE REF TO zcl_lnt_shape_71a973d8.
    DATA(t3) = CAST zcl_lnt_shape_71a973d8( me->parsed_xml ).
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t4.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = CAST zcl_lnt_shape_71a973d8( t2 ).
    IF t6 IS INITIAL.
      t5 = abap_true.
    ENDIF.
    IF t5 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t7.
      t4 = t7.
    ELSE.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t9 TYPE REF TO zcl_lnt_shape_71a973d8.
      DATA(t10) = CAST zcl_lnt_shape_71a973d8( t2 ).
      t9 = t10.
      t8 = t9->description.
      t4 = t8.
    ENDIF.
    t1 = t4.
    result = t1.
    
  ENDMETHOD.
  METHOD parse_xml.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zcl_lnt_shape_71a973d8.
    DATA(t3) = CAST zcl_lnt_shape_71a973d8( me->parsed_xml ).
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = CAST zcl_lnt_shape_71a973d8( t2 ).
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t6 = xsdbool( t7 = abap_false ).
    t1 = t6.
    IF t1 = abap_true.
      RETURN.
    ENDIF.
    DATA t9 TYPE REF TO zcl_lnt_shape_71a973d8.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_shape_71a973d8.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t12.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t11 = NEW zcl_lnt_shape_71a973d8( i_name = t12 i_description = t13 ).
      t9 = t11.
    ELSE.
      DATA t14 TYPE REF TO zcl_lnt_shape_71a973d8.
      CLEAR t14.
      t9 = t14.
    ENDIF.
    me->parsed_xml = t9.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t16) = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2(  ) ).
    t15 = t16.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = VALUE abap_bool( ).
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t20) = CAST zlnt_runtime_dyna_a429568d5be8( t15 ).
    t19 = t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    t21 = t22.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = CAST zlnt_runtime_dyna_a429568d5be8( t19 ).
    IF t24 IS INITIAL.
      t23 = abap_true.
    ENDIF.
    t18 = t23.
    t17 = t18.
    IF t18 = abap_false.
      DATA(t25) = VALUE abap_bool( ).
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t26.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t28.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t29.
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t30.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t33) = CAST zlnt_runtime_dyna_a429568d5be8( t15 ).
      t32 = t33.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      DATA(t35) = VALUE abap_bool( ).
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t36.
      DATA(t37) = CAST zlnt_runtime_dyna_a429568d5be8( t32 ).
      IF t37 IS BOUND.
        t36 = t37.
      ENDIF.
      IF t36 IS NOT BOUND.
        t35 = abap_true.
      ELSE.
        t35 = xsdbool( t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t35 = abap_true.
        DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t38.
        t34 = t38.
      ELSE.
        DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t41) = CAST zlnt_runtime_dyna_a429568d5be8( t32 ).
        t40 = t41.
        DATA(t42) = |abapGit|.
        t39 = t40->get( p0 = t42 ).
        t34 = t39.
      ENDIF.
      t31 = t34.
      t30 = t31.
      DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t43.
      DATA(t44) = VALUE abap_bool( ).
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t45.
      DATA(t46) = CAST zlnt_runtime_dyna_a429568d5be8( t30 ).
      IF t46 IS BOUND.
        t45 = t46.
      ENDIF.
      IF t45 IS NOT BOUND.
        t44 = abap_true.
      ELSE.
        t44 = xsdbool( t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t44 = abap_true.
        DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t47.
        t43 = t47.
      ELSE.
        DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t50) = CAST zlnt_runtime_dyna_a429568d5be8( t30 ).
        t49 = t50.
        DATA(t51) = |asx:abap|.
        t48 = t49->get( p0 = t51 ).
        t43 = t48.
      ENDIF.
      t29 = t43.
      t28 = t29.
      DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t52.
      DATA(t53) = VALUE abap_bool( ).
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t54.
      DATA(t55) = CAST zlnt_runtime_dyna_a429568d5be8( t28 ).
      IF t55 IS BOUND.
        t54 = t55.
      ENDIF.
      IF t54 IS NOT BOUND.
        t53 = abap_true.
      ELSE.
        t53 = xsdbool( t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t53 = abap_true.
        DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t56.
        t52 = t56.
      ELSE.
        DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t59) = CAST zlnt_runtime_dyna_a429568d5be8( t28 ).
        t58 = t59.
        DATA(t60) = |asx:values|.
        t57 = t58->get( p0 = t60 ).
        t52 = t57.
      ENDIF.
      t27 = t52.
      t26 = t27.
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t62.
      t61 = t62.
      DATA(t63) = VALUE abap_bool( ).
      DATA(t64) = CAST zlnt_runtime_dyna_a429568d5be8( t26 ).
      IF t64 IS INITIAL.
        t63 = abap_true.
      ENDIF.
      t25 = t63.
      t17 = t25.
    ENDIF.
    IF t17 = abap_true.
      RETURN.
    ENDIF.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t74) = CAST zlnt_runtime_dyna_a429568d5be8( t15 ).
    t73 = t74.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA(t76) = VALUE abap_bool( ).
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    DATA(t78) = CAST zlnt_runtime_dyna_a429568d5be8( t73 ).
    IF t78 IS BOUND.
      t77 = t78.
    ENDIF.
    IF t77 IS NOT BOUND.
      t76 = abap_true.
    ELSE.
      t76 = xsdbool( t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t76 = abap_true.
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t79.
      t75 = t79.
    ELSE.
      DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t82) = CAST zlnt_runtime_dyna_a429568d5be8( t73 ).
      t81 = t82.
      DATA(t83) = |abapGit|.
      t80 = t81->get( p0 = t83 ).
      t75 = t80.
    ENDIF.
    t72 = t75.
    t71 = t72.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA(t85) = VALUE abap_bool( ).
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA(t87) = CAST zlnt_runtime_dyna_a429568d5be8( t71 ).
    IF t87 IS BOUND.
      t86 = t87.
    ENDIF.
    IF t86 IS NOT BOUND.
      t85 = abap_true.
    ELSE.
      t85 = xsdbool( t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t85 = abap_true.
      DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t88.
      t84 = t88.
    ELSE.
      DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t91) = CAST zlnt_runtime_dyna_a429568d5be8( t71 ).
      t90 = t91.
      DATA(t92) = |asx:abap|.
      t89 = t90->get( p0 = t92 ).
      t84 = t89.
    ENDIF.
    t70 = t84.
    t69 = t70.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA(t94) = VALUE abap_bool( ).
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA(t96) = CAST zlnt_runtime_dyna_a429568d5be8( t69 ).
    IF t96 IS BOUND.
      t95 = t96.
    ENDIF.
    IF t95 IS NOT BOUND.
      t94 = abap_true.
    ELSE.
      t94 = xsdbool( t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t94 = abap_true.
      DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t97.
      t93 = t97.
    ELSE.
      DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t100) = CAST zlnt_runtime_dyna_a429568d5be8( t69 ).
      t99 = t100.
      DATA(t101) = |asx:values|.
      t98 = t99->get( p0 = t101 ).
      t93 = t98.
    ENDIF.
    t68 = t93.
    t67 = t68.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA(t103) = VALUE abap_bool( ).
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA(t105) = CAST zlnt_runtime_dyna_a429568d5be8( t67 ).
    IF t105 IS BOUND.
      t104 = t105.
    ENDIF.
    IF t104 IS NOT BOUND.
      t103 = abap_true.
    ELSE.
      t103 = xsdbool( t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t103 = abap_true.
      DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t106.
      t102 = t106.
    ELSE.
      DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t109) = CAST zlnt_runtime_dyna_a429568d5be8( t67 ).
      t108 = t109.
      DATA(t110) = |VSEOINTERF|.
      t107 = t108->get( p0 = t110 ).
      t102 = t107.
    ENDIF.
    t66 = t102.
    t65 = t66.
    DATA(t111) = VALUE abap_bool( ).
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t113) = CAST zlnt_runtime_dyna_a429568d5be8( t65 ).
    t112 = t113.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    t114 = t115.
    DATA(t116) = VALUE abap_bool( ).
    DATA(t117) = CAST zlnt_runtime_dyna_a429568d5be8( t112 ).
    IF t117 IS INITIAL.
      t116 = abap_true.
    ENDIF.
    t111 = t116.
    IF t111 = abap_true.
      DATA t118 TYPE REF TO zcl_lnt_shape_71a973d8.
      DATA(t119) = CAST zcl_lnt_shape_71a973d8( me->parsed_xml ).
      t118 = t119.
      DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t120.
      DATA(t121) = abap_true.
      IF t121 = abap_true.
        DATA(t122) = ||.
        DATA(t123) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t123->has = abap_true.
        t123->value = t122.
        t120 = t123.
      ELSE.
        DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t124.
        t120 = t124.
      ENDIF.
      t118->description = t120.
      DATA t125 TYPE REF TO zcl_lnt_shape_71a973d8.
      DATA(t126) = CAST zcl_lnt_shape_71a973d8( me->parsed_xml ).
      t125 = t126.
      DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t127.
      DATA(t128) = abap_true.
      IF t128 = abap_true.
        DATA(t129) = ||.
        DATA(t130) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t130->has = abap_true.
        t130->value = t129.
        t127 = t130.
      ELSE.
        DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t131.
        t127 = t131.
      ENDIF.
      t125->name = t127.
    ELSE.
      DATA t132 TYPE REF TO zcl_lnt_shape_71a973d8.
      DATA(t133) = CAST zcl_lnt_shape_71a973d8( me->parsed_xml ).
      t132 = t133.
      DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t134.
      DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t138) = CAST zlnt_runtime_dyna_a429568d5be8( t65 ).
      t137 = t138.
      DATA(t139) = |DESCRIPT|.
      t136 = t137->get( p0 = t139 ).
      t135 = t136.
      DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t140.
      DATA(t141) = VALUE abap_bool( ).
      DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t144) = CAST zlnt_runtime_dyna_a429568d5be8( t65 ).
      t143 = t144.
      DATA(t145) = |DESCRIPT|.
      t142 = t143->get( p0 = t145 ).
      IF t142 IS BOUND.
        t141 = t142->truth( ).
      ENDIF.
      IF t141 = abap_true.
        DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t146.
        DATA(t147) = VALUE abap_bool( ).
        DATA(t148) = CAST zlnt_runtime_dyna_a429568d5be8( t135 ).
        IF t148 IS INITIAL.
          t147 = abap_true.
        ENDIF.
        IF t147 = abap_true.
          DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t149.
          t146 = t149.
        ELSE.
          DATA t150 TYPE string.
          DATA(t151) = CAST zlnt_runtime_dyna_a429568d5be8( t135 ).
          t150 = t151->as_string( ).
          DATA(t152) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t152->has = abap_true.
          t152->value = t150.
          t146 = t152.
        ENDIF.
        t140 = t146.
      ELSE.
        DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t153.
        DATA(t154) = abap_true.
        IF t154 = abap_true.
          DATA(t155) = ||.
          DATA(t156) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t156->has = abap_true.
          t156->value = t155.
          t153 = t156.
        ELSE.
          DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t157.
          t153 = t157.
        ENDIF.
        t140 = t153.
      ENDIF.
      t134 = t140.
      t132->description = t134.
      DATA t158 TYPE REF TO zcl_lnt_shape_71a973d8.
      DATA(t159) = CAST zcl_lnt_shape_71a973d8( me->parsed_xml ).
      t158 = t159.
      DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t160.
      DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t164) = CAST zlnt_runtime_dyna_a429568d5be8( t65 ).
      t163 = t164.
      DATA(t165) = |CLSNAME|.
      t162 = t163->get( p0 = t165 ).
      t161 = t162.
      DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t166.
      DATA(t167) = VALUE abap_bool( ).
      DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t170) = CAST zlnt_runtime_dyna_a429568d5be8( t65 ).
      t169 = t170.
      DATA(t171) = |CLSNAME|.
      t168 = t169->get( p0 = t171 ).
      IF t168 IS BOUND.
        t167 = t168->truth( ).
      ENDIF.
      IF t167 = abap_true.
        DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t172.
        DATA(t173) = VALUE abap_bool( ).
        DATA(t174) = CAST zlnt_runtime_dyna_a429568d5be8( t161 ).
        IF t174 IS INITIAL.
          t173 = abap_true.
        ENDIF.
        IF t173 = abap_true.
          DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t175.
          t172 = t175.
        ELSE.
          DATA t176 TYPE string.
          DATA(t177) = CAST zlnt_runtime_dyna_a429568d5be8( t161 ).
          t176 = t177->as_string( ).
          DATA(t178) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t178->has = abap_true.
          t178->value = t176.
          t172 = t178.
        ENDIF.
        t166 = t172.
      ELSE.
        DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t179.
        DATA(t180) = abap_true.
        IF t180 = abap_true.
          DATA(t181) = ||.
          DATA(t182) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t182->has = abap_true.
          t182->value = t181.
          t179 = t182.
        ELSE.
          DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t183.
          t179 = t183.
        ENDIF.
        t166 = t179.
      ENDIF.
      t160 = t166.
      t158->name = t160.
    ENDIF.
  ENDMETHOD.
  METHOD set_definition.
    DATA(t1) = CAST zif_lnt_class_definition( i_def ).
    DATA t2 TYPE REF TO zif_lnt_interface_definition.
    DATA(t3) = CAST zif_lnt_class_definition( t1 ).
    t2 ?= t3.
    me->st_dfn_ins_src_obj_int_ts_intr( i_def = t2 ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1184_05a19202d1a3.
  ENDMETHOD.
  METHOD zif_lnt_union_291f04b3~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_union_291f04b3~add_file.
    me->add_file(  i_file = i_file ).
  ENDMETHOD.
  METHOD zif_lnt_union_291f04b3~contains_file.
    result = me->contains_file(  i_filename = i_filename ).
  ENDMETHOD.
  METHOD zif_lnt_union_291f04b3~debug_description.
    result = me->debug_description(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_291f04b3~get_abap_file_by_name.
    result = me->get_abap_file_by_name(  i_filename = i_filename ).
  ENDMETHOD.
  METHOD zif_lnt_union_291f04b3~get_abap_files.
    result = me->get_abap_files(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_291f04b3~get_allowed_naming.
    result = me->get_allowed_naming(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_291f04b3~get_definition.
    result = me->get_definition(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_291f04b3~get_description.
    result = me->get_description(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_291f04b3~get_files.
    result = me->get_files(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_291f04b3~get_identifier.
    result = me->get_identifier(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_291f04b3~get_main_abap_file.
    result = me->get_main_abap_file(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_291f04b3~get_name.
    result = me->get_name(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_291f04b3~get_name_from_xml.
    result = me->get_name_from_xml(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_291f04b3~get_parsing_issues.
    result = me->get_parsing_issues(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_291f04b3~get_sequenced_files.
    result = me->get_sequenced_files(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_291f04b3~get_text_elements.
    result = me->get_text_elements(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_291f04b3~get_text_elements_translations.
    result = me->get_text_elements_translations(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_291f04b3~get_text_symbols.
    result = me->get_text_symbols(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_291f04b3~get_type.
    result = me->get_type(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_291f04b3~get_xml.
    result = me->get_xml(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_291f04b3~get_xml_file.
    result = me->get_xml_file(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_291f04b3~is_dirty.
    result = me->is_dirty(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_291f04b3~parse.
    result = me->parse(  i_release_7928 = i_release_7928 i_global_macros_5535 = i_global_macros_5535 i_reg_f149 = i_reg_f149 i_language_version_0e1d = i_language_version_0e1d ).
  ENDMETHOD.
  METHOD zif_lnt_union_291f04b3~remove_file.
    me->remove_file(  i_file = i_file ).
  ENDMETHOD.
  METHOD zif_lnt_union_291f04b3~set_definition.
    me->set_definition(  i_def = i_def ).
  ENDMETHOD.
  METHOD zif_lnt_union_291f04b3~set_dirty.
    me->set_dirty(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_291f04b3~update_file.
    me->update_file(  i_file = i_file ).
  ENDMETHOD.
ENDCLASS.
