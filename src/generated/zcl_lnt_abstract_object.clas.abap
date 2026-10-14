* TS: src/objects/_abstract_object.ts:11:1 AbstractObject
CLASS zcl_lnt_abstract_object DEFINITION PUBLIC ABSTRACT CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_object.
    INTERFACES zif_lnt_artifact.
    DATA old TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA dirty TYPE abap_bool.
    DATA files TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA name TYPE string.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type ABSTRACT RETURNING VALUE(result) TYPE string.
    METHODS get_allowed_naming ABSTRACT RETURNING VALUE(result) TYPE REF TO zcl_lnt_iallowed_naming.
    METHODS get_description ABSTRACT RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_parsing_issues RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS pr_in_sr_ob_abs_obj_ts_abs_obj IMPORTING i_release_2099 TYPE REF TO zcl_lnt_abap_release i_global_macros_14ec TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 i_reg_d009 TYPE REF TO zif_lnt_registry i_language_version_83c7 TYPE REF TO
    zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_iparse_result.
    METHODS get_name RETURNING VALUE(result) TYPE string.
    METHODS set_dirty.
    METHODS add_file IMPORTING i_file TYPE REF TO zif_lnt_file.
    METHODS get_files RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS contains_file IMPORTING i_filename TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS remove_file IMPORTING i_file TYPE REF TO zif_lnt_file.
    METHODS is_dirty RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_identifier RETURNING VALUE(result) TYPE REF TO zcl_lnt_fi_identifier.
    METHODS get_xml_file RETURNING VALUE(result) TYPE REF TO zif_lnt_file.
    METHODS get_xml RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS update_file IMPORTING i_file TYPE REF TO zif_lnt_file.
    METHODS parse_raw2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS parse IMPORTING i_release_7928 TYPE REF TO zcl_lnt_abap_release i_global_macros_5535 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 i_reg_f149 TYPE REF TO zif_lnt_registry i_language_version_0e1d TYPE REF TO
    zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_iparse_result.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_abstract_object IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = t1.
    me->name = t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    me->files = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    me->old = t4.
    DATA(t5) = abap_false.
    me->dirty = t5.
  ENDMETHOD.

  METHOD get_parsing_issues.
    DATA(t1) = me->old.
    result = t1.

  ENDMETHOD.

  METHOD pr_in_sr_ob_abs_obj_ts_abs_obj.
    DATA(t1) = i_release_2099.
    DATA(t2) = i_global_macros_14ec.
    DATA(t3) = i_reg_d009.
    DATA(t4) = i_language_version_83c7.
    DATA t5 TYPE REF TO zcl_lnt_iparse_result.
    DATA(t6) = abap_false.
    DATA(t7) = CONV int8( 0 ).
    DATA t8 TYPE REF TO zcl_lnt_shape_8fc6df03.
    CLEAR t8.
    t5 = NEW zcl_lnt_iparse_result( i_updated = t6 i_runtime = t7 i_runtime_extra = t8 ).
    result = t5.

  ENDMETHOD.

  METHOD get_name.
    DATA(t1) = CONV string( me->name ).
    result = t1.

  ENDMETHOD.

  METHOD set_dirty.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1.
    me->old = t1.
    DATA(t2) = abap_true.
    me->dirty = t2.
  ENDMETHOD.

  METHOD add_file.
    DATA(t1) = i_file.
    me->set_dirty( ).
    DATA t2 TYPE i.
    DATA(t3) = 0.
    t2 = t3.
    DO.
      DATA t4 TYPE abap_bool.
      DATA(t5) = t2.
      DATA t6 TYPE i.
      DATA(t7) = me->files.
      t6 = lines( t7->items ).
      t4 = xsdbool( t5 < t6 ).
      IF t4 = abap_false.
        EXIT.
      ENDIF.
      DATA t8 TYPE abap_bool.
      DATA t9 TYPE string.
      DATA t10 TYPE REF TO zif_lnt_file.
      DATA(t11) = me->files.
      DATA(t12) = t2.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO object.
      CLEAR t13.
      READ TABLE t11->items INDEX t12 INTO t13.
      t10 ?= t13.
      t9 = t10->get_filename( ).
      DATA t14 TYPE string.
      DATA(t15) = t1.
      t14 = t15->get_filename( ).
      t8 = xsdbool( t9 = t14 ).
      IF t8 = abap_true.
        DATA(t16) = me->files.
        DATA(t17) = t2.
        DATA(t18) = t1.
        t17 = t17 + 1.
        DATA t19 TYPE REF TO object.
        CLEAR t19.
        CLEAR t19.
        WHILE lines( t16->items ) < t17.
          APPEND t19 TO t16->items.
        ENDWHILE.
        MODIFY t16->items FROM t18 INDEX t17.
        RETURN.
      ENDIF.
      DATA t20 TYPE i.
      DATA(t21) = t2.
      DATA(t22) = 1.
      t20 = t21 + t22.
      t2 = t20.
    ENDDO.
    DATA(t23) = me->files.
    DATA(t24) = t1.
    APPEND t24 TO t23->items.
  ENDMETHOD.

  METHOD get_files.
    DATA(t1) = me->files.
    result = t1.

  ENDMETHOD.

  METHOD contains_file.
    DATA(t1) = i_filename.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/objects/_abstract_object.ts:64|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD remove_file.
    DATA(t1) = i_file.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/objects/_abstract_object.ts:73|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD is_dirty.
    DATA(t1) = CONV abap_bool( me->dirty ).
    result = t1.

  ENDMETHOD.

  METHOD get_identifier.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/_abstract_object.ts:88|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_xml_file.
    DATA t1 TYPE string.
    DATA t2 TYPE string.
    DATA t3 TYPE string.
    DATA t4 TYPE string.
    DATA t5 TYPE string.
    DATA t6 TYPE string.
    DATA(t7) = CONV string( me->name ).
    DATA(t8) = strlen( t7 ).
    t6 = t7.
    TRANSLATE t6 TO LOWER CASE.
    DATA t9 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t9.
    DATA(t10) = `\/`.
    DATA(t11) = |g|.
    CREATE OBJECT t9 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t10 flags = t11.
    DATA(t12) = |#|.
    DATA(t13) = strlen( t6 ).
    t5 = t9->replace( p0 = t6 p1 = t12 ).
    DATA(t14) = |.|.
    DATA(t15) = strlen( t5 ).
    t4 = |{ t5 }{ t14 }|.
    DATA t16 TYPE string.
    DATA(t17) = CONV string( me->get_type( ) ).
    DATA(t18) = strlen( t17 ).
    t16 = t17.
    TRANSLATE t16 TO LOWER CASE.
    DATA(t19) = strlen( t4 ).
    t3 = |{ t4 }{ t16 }|.
    DATA(t20) = |.xml|.
    DATA(t21) = strlen( t3 ).
    t2 = |{ t3 }{ t20 }|.
    t1 = t2.
    DATA t22 TYPE string.
    DATA t23 TYPE string.
    DATA t24 TYPE string.
    DATA t25 TYPE string.
    DATA t26 TYPE string.
    DATA t27 TYPE string.
    DATA(t28) = CONV string( me->name ).
    DATA(t29) = strlen( t28 ).
    t27 = t28.
    TRANSLATE t27 TO LOWER CASE.
    DATA t30 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t30.
    DATA(t31) = `\/`.
    DATA(t32) = |g|.
    CREATE OBJECT t30 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t31 flags = t32.
    DATA(t33) = |%23|.
    DATA(t34) = strlen( t27 ).
    t26 = t30->replace( p0 = t27 p1 = t33 ).
    DATA(t35) = |.|.
    DATA(t36) = strlen( t26 ).
    t25 = |{ t26 }{ t35 }|.
    DATA t37 TYPE string.
    DATA(t38) = CONV string( me->get_type( ) ).
    DATA(t39) = strlen( t38 ).
    t37 = t38.
    TRANSLATE t37 TO LOWER CASE.
    DATA(t40) = strlen( t25 ).
    t24 = |{ t25 }{ t37 }|.
    DATA(t41) = |.xml|.
    DATA(t42) = strlen( t24 ).
    t23 = |{ t24 }{ t41 }|.
    t22 = t23.
    DATA(t43) = me->files.
    DATA t44 TYPE REF TO zif_lnt_file.
    CLEAR t44.
    DATA t45 TYPE REF TO object.
    CLEAR t45.
    LOOP AT t43->items INTO t45.
      t44 ?= t45.
      DATA(t46) = VALUE abap_bool( ).
      DATA(t47) = VALUE abap_bool( ).
      DATA t48 TYPE string.
      DATA(t49) = t44.
      t48 = t49->get_filename( ).
      DATA(t50) = t1.
      DATA(t51) = strlen( t48 ).
      DATA t52 TYPE i.
      DATA(t53) = VALUE i( ).
      DATA(t54) = VALUE string( ).
      t52 = strlen( t50 ).
      IF t52 = 0.
        t47 = abap_true.
      ELSEIF t52 <= t51.
        t53 = 0.
        t53 = t51 - t52.
        t54 = t48+t53(t52).
        IF t54 = t50.
          t47 = abap_true.
        ENDIF.
      ENDIF.
      t46 = t47.
      IF t47 = abap_false.
        DATA(t55) = VALUE abap_bool( ).
        DATA t56 TYPE string.
        DATA(t57) = t44.
        t56 = t57->get_filename( ).
        DATA(t58) = t22.
        DATA(t59) = strlen( t56 ).
        DATA t60 TYPE i.
        DATA(t61) = VALUE i( ).
        DATA(t62) = VALUE string( ).
        t60 = strlen( t58 ).
        IF t60 = 0.
          t55 = abap_true.
        ELSEIF t60 <= t59.
          t61 = 0.
          t61 = t59 - t60.
          t62 = t56+t61(t60).
          IF t62 = t58.
            t55 = abap_true.
          ENDIF.
        ENDIF.
        t46 = t55.
      ENDIF.
      IF t46 = abap_true.
        DATA t63 TYPE REF TO zif_lnt_file.
        CLEAR t63.
        DATA(t64) = abap_true.
        IF t64 = abap_true.
          DATA(t65) = t44.
          t63 = t65.
        ELSE.
          DATA t66 TYPE REF TO zif_lnt_file.
          CLEAR t66.
          t63 = t66.
        ENDIF.
        result = t63.
        RETURN.
      ENDIF.
    ENDLOOP.
    DATA(t67) = me->files.
    DATA t68 TYPE REF TO zif_lnt_file.
    CLEAR t68.
    DATA t69 TYPE REF TO object.
    CLEAR t69.
    LOOP AT t67->items INTO t69.
      t68 ?= t69.
      DATA(t70) = VALUE abap_bool( ).
      DATA t71 TYPE string.
      DATA(t72) = t68.
      t71 = t72->get_filename( ).
      DATA(t73) = |.xml|.
      DATA(t74) = strlen( t71 ).
      DATA t75 TYPE i.
      DATA(t76) = VALUE i( ).
      DATA(t77) = VALUE string( ).
      t75 = strlen( t73 ).
      IF t75 = 0.
        t70 = abap_true.
      ELSEIF t75 <= t74.
        t76 = 0.
        t76 = t74 - t75.
        t77 = t71+t76(t75).
        IF t77 = t73.
          t70 = abap_true.
        ENDIF.
      ENDIF.
      IF t70 = abap_true.
        DATA t78 TYPE REF TO zif_lnt_file.
        CLEAR t78.
        DATA(t79) = abap_true.
        IF t79 = abap_true.
          DATA(t80) = t68.
          t78 = t80.
        ELSE.
          DATA t81 TYPE REF TO zif_lnt_file.
          CLEAR t81.
          t78 = t81.
        ENDIF.
        result = t78.
        RETURN.
      ENDIF.
    ENDLOOP.
    DATA t82 TYPE REF TO zif_lnt_file.
    CLEAR t82.
    result = t82.

  ENDMETHOD.

  METHOD get_xml.
    DATA t1 TYPE REF TO zif_lnt_file.
    DATA(t2) = CAST zif_lnt_file( me->get_xml_file( ) ).
    t1 = t2.
    DATA t3 TYPE abap_bool.
    DATA(t4) = t1.
    t3 = xsdbool( t4 IS BOUND ).
    IF t3 = abap_true.
      DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t5.
      DATA(t6) = abap_true.
      IF t6 = abap_true.
        DATA t7 TYPE string.
        DATA t8 TYPE REF TO zif_lnt_file.
        DATA(t9) = t1.
        t8 = t9.
        t7 = t8->get_raw( ).
        DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t10->has = abap_true.
        t10->value = t7.
        t5 = t10.
      ELSE.
        DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t11.
        t5 = t11.
      ENDIF.
      result = t5.
      RETURN.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t12.
    result = t12.

  ENDMETHOD.

  METHOD update_file.
    DATA(t1) = i_file.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/objects/_abstract_object.ts:123|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD parse_raw2.
    DATA t1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zif_lnt_file.
    DATA(t4) = CAST zif_lnt_file( me->get_xml_file( ) ).
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA t6 TYPE abap_bool.
    DATA(t7) = t3.
    t6 = xsdbool( t7 IS BOUND ).
    IF t6 = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t8.
      DATA(t9) = abap_true.
      IF t9 = abap_true.
        DATA t10 TYPE string.
        DATA t11 TYPE REF TO zif_lnt_file.
        DATA(t12) = t3.
        t11 = t12.
        t10 = t11->get_raw( ).
        DATA(t13) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t13->has = abap_true.
        t13->value = t10.
        t8 = t13.
      ELSE.
        DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t14.
        t8 = t14.
      ENDIF.
      t5 = t8.
    ELSE.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t15.
      t5 = t15.
    ENDIF.
    t2 = t5.
    t1 = t2.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = t1.
    IF t17 IS INITIAL.
      t16 = abap_true.
    ELSEIF t17->has = abap_false.
      t16 = abap_true.
    ENDIF.
    IF t16 = abap_true.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      result = t18.
      RETURN.
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t20 TYPE string.
    DATA(t21) = t1.
    t20 = t21->value.
    t19 = zlnt_runtime_xmls_24774b34c41e=>parse( t20 ).
    result = t19.

  ENDMETHOD.

  METHOD parse.
    DATA(t1) = i_release_7928.
    DATA(t2) = i_global_macros_5535.
    DATA(t3) = i_reg_f149.
    DATA(t4) = i_language_version_0e1d.
    DATA t5 TYPE REF TO zcl_lnt_iparse_result.
    DATA(t6) = t1.
    DATA(t7) = t2.
    DATA(t8) = t3.
    DATA(t9) = t4.
    t5 = me->pr_in_sr_ob_abs_obj_ts_abs_obj( i_release_2099 = t6 i_global_macros_14ec = t7 i_reg_d009 = t8 i_language_version_83c7 = t9 ).
    result = t5.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1086_e2f8f5b9ee22.
  ENDMETHOD.

  METHOD zif_lnt_object~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_object~get_identifier.
    result = me->get_identifier( ).
  ENDMETHOD.

  METHOD zif_lnt_object~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_object~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_object~set_dirty.
    me->set_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_object~is_dirty.
    result = me->is_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_object~parse.
    result = me->parse( i_release_7928 = i_release_7928 i_global_macros_5535 = i_global_macros_5535 i_reg_f149 = i_reg_f149 i_language_version_0e1d = i_language_version_0e1d ).
  ENDMETHOD.

  METHOD zif_lnt_object~get_parsing_issues.
    result = me->get_parsing_issues( ).
  ENDMETHOD.

  METHOD zif_lnt_object~get_files.
    result = me->get_files( ).
  ENDMETHOD.

  METHOD zif_lnt_object~add_file.
    me->add_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_object~update_file.
    me->update_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_object~remove_file.
    me->remove_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_object~get_xml_file.
    result = me->get_xml_file( ).
  ENDMETHOD.

  METHOD zif_lnt_object~get_xml.
    result = me->get_xml( ).
  ENDMETHOD.

  METHOD zif_lnt_object~get_type.
    result = me->get_type( ).
  ENDMETHOD.

  METHOD zif_lnt_object~get_allowed_naming.
    result = me->get_allowed_naming( ).
  ENDMETHOD.

  METHOD zif_lnt_artifact~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_artifact~get_type.
    result = me->get_type( ).
  ENDMETHOD.

  METHOD zif_lnt_artifact~get_allowed_naming.
    result = me->get_allowed_naming( ).
  ENDMETHOD.
ENDCLASS.
