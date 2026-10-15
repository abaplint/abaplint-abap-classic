* TS: src/objects/_abstract_object.ts:11:1 AbstractObject
CLASS zcl_lnt_abstract_object DEFINITION PUBLIC ABSTRACT CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
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
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_abstract_object IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = t1.
    me->name = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `name`.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    me->files = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `files`.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    me->old = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `old`.
    DATA(t5) = abap_false.
    me->dirty = t5.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `dirty`.
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
    DATA t6 TYPE abap_bool.
    DATA(t7) = abap_false.
    t6 = t7.
    DATA t8 TYPE f.
    DATA(t9) = CONV f( 0 ).
    t8 = t9.
    DATA t10 TYPE REF TO zcl_lnt_shape_8fc6df03.
    DATA t11 TYPE REF TO zcl_lnt_shape_8fc6df03.
    CLEAR t11.
    t10 = t11.
    t5 = NEW zcl_lnt_iparse_result( i_updated = t6 i_runtime = t8 i_runtime_extra = t10 ).
    CREATE OBJECT t5->zlnt_view_ownkeys_b0e8086400eb.
    t5->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t12 ).
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t13 ).
    ENDIF.
    CREATE OBJECT t5->zlnt_json_ownkeys_70e5fd461788.
    t5->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t14) = |updated|.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = t14 p1 = t15 ).
    ENDIF.
    DATA(t16) = |runtime|.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = t16 p1 = t17 ).
    ENDIF.
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
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `old`.
    DATA(t2) = abap_true.
    me->dirty = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `dirty`.
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
      t7->load( ).
      t6 = lines( t7->items ).
      t4 = xsdbool( t5 < t6 ).
      IF t4 = abap_false.
        EXIT.
      ENDIF.
      DATA(t8) = VALUE abap_bool( ).
      DATA(t9) = VALUE string( ).
      DATA t10 TYPE REF TO zif_lnt_file.
      CLEAR t10.
      DATA(t11) = me->files.
      DATA(t12) = t2.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO object.
      CLEAR t13.
      t11->load( ).
      CLEAR t13.
      READ TABLE t11->items INDEX t12 INTO t13.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      CLEAR t10.
      IF t13 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t14 ?= t13.
        DATA t15 TYPE REF TO object.
        t15 = t14->as_ref( ).
        t10 ?= t15.
      ELSE.
        t10 ?= t13.
      ENDIF.
      t9 = t10->get_filename( ).
      DATA t16 TYPE string.
      DATA(t17) = t1.
      t16 = t17->get_filename( ).
      t8 = xsdbool( t9 = t16 ).
      IF t8 = abap_true.
        DATA(t18) = me->files.
        DATA(t19) = t2.
        DATA(t20) = t1.
        t18->put( p0 = t19 p1 = t20 ).
        RETURN.
      ENDIF.
      DATA t21 TYPE i.
      DATA(t22) = t2.
      DATA(t23) = 1.
      t21 = t22 + t23.
      t2 = t21.
    ENDDO.
    DATA(t24) = me->files.
    DATA(t25) = t1.
    t24->load( ).
    APPEND t25 TO t24->items.
    t24->save( ).
  ENDMETHOD.

  METHOD get_files.
    DATA(t1) = me->files.
    result = t1.

  ENDMETHOD.

  METHOD contains_file.
    DATA(t1) = i_filename.
    DATA(t2) = me->files.
    DATA t3 TYPE REF TO zif_lnt_file.
    CLEAR t3.
    DATA t4 TYPE REF TO object.
    CLEAR t4.
    DATA(t5) = VALUE i( ).
    DO.
      t2->load( ).
      IF t5 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t4.
      READ TABLE t2->items INDEX t5 + 1 INTO t4.
      t5 = t5 + 1.
      DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t6.
      CLEAR t3.
      IF t4 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t6 ?= t4.
        DATA t7 TYPE REF TO object.
        t7 = t6->as_ref( ).
        t3 ?= t7.
      ELSE.
        t3 ?= t4.
      ENDIF.
      DATA t8 TYPE abap_bool.
      DATA t9 TYPE string.
      DATA(t10) = t3.
      t9 = t10->get_filename( ).
      DATA(t11) = t1.
      t8 = xsdbool( t9 = t11 ).
      IF t8 = abap_true.
        DATA(t12) = abap_true.
        result = t12.
        RETURN.
      ENDIF.
    ENDDO.
    DATA(t13) = abap_false.
    result = t13.

  ENDMETHOD.

  METHOD remove_file.
    DATA(t1) = i_file.
    me->set_dirty( ).
    DATA(t2) = VALUE i( ).
    DATA(t3) = 0.
    t2 = t3.
    DO.
      DATA(t4) = VALUE abap_bool( ).
      DATA(t5) = t2.
      DATA(t6) = VALUE i( ).
      DATA(t7) = me->files.
      t7->load( ).
      t6 = lines( t7->items ).
      t4 = xsdbool( t5 < t6 ).
      IF t4 = abap_false.
        EXIT.
      ENDIF.
      DATA(t8) = VALUE abap_bool( ).
      DATA(t9) = VALUE string( ).
      DATA t10 TYPE REF TO zif_lnt_file.
      CLEAR t10.
      DATA(t11) = me->files.
      DATA(t12) = t2.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO object.
      CLEAR t13.
      t11->load( ).
      CLEAR t13.
      READ TABLE t11->items INDEX t12 INTO t13.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      CLEAR t10.
      IF t13 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t14 ?= t13.
        DATA t15 TYPE REF TO object.
        CLEAR t15.
        t15 = t14->as_ref( ).
        t10 ?= t15.
      ELSE.
        t10 ?= t13.
      ENDIF.
      t9 = t10->get_filename( ).
      DATA(t16) = VALUE string( ).
      DATA(t17) = t1.
      t16 = t17->get_filename( ).
      t8 = xsdbool( t9 = t16 ).
      IF t8 = abap_true.
        DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t18.
        DATA(t19) = me->files.
        DATA(t20) = t2.
        DATA(t21) = 1.
        t18 = t19->splice2( p0 = t20 p1 = t21 ).
        RETURN.
      ENDIF.
      DATA(t22) = VALUE i( ).
      DATA(t23) = t2.
      DATA(t24) = 1.
      t22 = t23 + t24.
      t2 = t22.
    ENDDO.
    DATA t25 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    CLEAR t25.
    DATA t26 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA(t29) = |removeFile: file not found|.
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = t29.
      t27 = t30.
    ELSE.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      t27 = t31.
    ENDIF.
    t26 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t27 ).
    t25 = NEW #( ).
    t25->payload = t26.
    CLEAR t25->source_value.
    IF t26 IS BOUND.
      DATA t32 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t32.
      DATA t33 TYPE REF TO object.
      CLEAR t33.
      CLEAR t32.
      t33 = t26.
      TRY.
          t25->source_value ?= t33.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t25->source_value IS NOT BOUND.
        TRY.
            t32 ?= t26.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t32 IS BOUND.
          t25->source_value = t32->source( ).
        ENDIF.
        IF t25->source_value IS NOT BOUND.
          CREATE OBJECT t25->source_value.
          t25->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t25->source_value->oval = t26.
        ENDIF.
      ENDIF.
    ENDIF.
    RAISE EXCEPTION t25.
  ENDMETHOD.

  METHOD is_dirty.
    DATA(t1) = CONV abap_bool( me->dirty ).
    result = t1.

  ENDMETHOD.

  METHOD get_identifier.
    DATA t1 TYPE REF TO zif_lnt_file.
    DATA(t2) = CAST zif_lnt_file( me->get_xml_file( ) ).
    t1 = t2.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zif_lnt_file.
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
      DATA t10 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t10.
      result = t10.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t11.
    DATA(t12) = abap_true.
    IF t12 = abap_true.
      DATA t13 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t14 TYPE REF TO zcl_lnt_lx_identifier.
      DATA t15 TYPE REF TO zcl_lnt_position.
      DATA(t16) = CONV f( 1 ).
      DATA(t17) = CONV f( 1 ).
      DATA(t18) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t18->has = abap_true.
      t18->value = t17.
      t15 = NEW zcl_lnt_position( i_row = t16 i_col = t18 ).
      DATA(t19) = CONV string( me->name ).
      t14 = NEW zcl_lnt_lx_identifier( i_start = t15 i_str = t19 ).
      DATA t20 TYPE string.
      DATA t21 TYPE REF TO zif_lnt_file.
      DATA(t22) = t1.
      t21 = t22.
      t20 = t21->get_filename( ).
      t13 = NEW zcl_lnt_fi_identifier( i_token = t14 i_filename = t20 ).
      t11 = t13.
    ELSE.
      DATA t23 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t23.
      t11 = t23.
    ENDIF.
    result = t11.

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
    CREATE OBJECT t9 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t10 flags = t11 checked = abap_true.
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
    CREATE OBJECT t30 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t31 flags = t32 checked = abap_true.
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
    DATA(t46) = VALUE i( ).
    DO.
      t43->load( ).
      IF t46 >= lines( t43->items ).
        EXIT.
      ENDIF.
      CLEAR t45.
      READ TABLE t43->items INDEX t46 + 1 INTO t45.
      t46 = t46 + 1.
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t47.
      CLEAR t44.
      IF t45 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t47 ?= t45.
        DATA t48 TYPE REF TO object.
        t48 = t47->as_ref( ).
        t44 ?= t48.
      ELSE.
        t44 ?= t45.
      ENDIF.
      DATA(t49) = VALUE abap_bool( ).
      DATA(t50) = VALUE abap_bool( ).
      DATA t51 TYPE string.
      DATA(t52) = t44.
      t51 = t52->get_filename( ).
      DATA(t53) = t1.
      DATA(t54) = strlen( t51 ).
      DATA t55 TYPE i.
      DATA(t56) = VALUE i( ).
      DATA(t57) = VALUE string( ).
      t55 = strlen( t53 ).
      IF t55 = 0.
        t50 = abap_true.
      ELSEIF t55 <= t54.
        t56 = 0.
        t56 = t54 - t55.
        t57 = t51+t56(t55).
        IF t57 = t53.
          t50 = abap_true.
        ENDIF.
      ENDIF.
      t49 = t50.
      IF t50 = abap_false.
        DATA(t58) = VALUE abap_bool( ).
        DATA t59 TYPE string.
        DATA(t60) = t44.
        t59 = t60->get_filename( ).
        DATA(t61) = t22.
        DATA(t62) = strlen( t59 ).
        DATA t63 TYPE i.
        DATA(t64) = VALUE i( ).
        DATA(t65) = VALUE string( ).
        t63 = strlen( t61 ).
        IF t63 = 0.
          t58 = abap_true.
        ELSEIF t63 <= t62.
          t64 = 0.
          t64 = t62 - t63.
          t65 = t59+t64(t63).
          IF t65 = t61.
            t58 = abap_true.
          ENDIF.
        ENDIF.
        t49 = t58.
      ENDIF.
      IF t49 = abap_true.
        DATA t66 TYPE REF TO zif_lnt_file.
        CLEAR t66.
        DATA(t67) = abap_true.
        IF t67 = abap_true.
          DATA(t68) = t44.
          t66 = t68.
        ELSE.
          DATA t69 TYPE REF TO zif_lnt_file.
          CLEAR t69.
          t66 = t69.
        ENDIF.
        result = t66.
        RETURN.
      ENDIF.
    ENDDO.
    DATA(t70) = me->files.
    DATA t71 TYPE REF TO zif_lnt_file.
    CLEAR t71.
    DATA t72 TYPE REF TO object.
    CLEAR t72.
    DATA(t73) = VALUE i( ).
    DO.
      t70->load( ).
      IF t73 >= lines( t70->items ).
        EXIT.
      ENDIF.
      CLEAR t72.
      READ TABLE t70->items INDEX t73 + 1 INTO t72.
      t73 = t73 + 1.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t74.
      CLEAR t71.
      IF t72 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t74 ?= t72.
        DATA t75 TYPE REF TO object.
        t75 = t74->as_ref( ).
        t71 ?= t75.
      ELSE.
        t71 ?= t72.
      ENDIF.
      DATA(t76) = VALUE abap_bool( ).
      DATA t77 TYPE string.
      DATA(t78) = t71.
      t77 = t78->get_filename( ).
      DATA(t79) = |.xml|.
      DATA(t80) = strlen( t77 ).
      DATA t81 TYPE i.
      DATA(t82) = VALUE i( ).
      DATA(t83) = VALUE string( ).
      t81 = strlen( t79 ).
      IF t81 = 0.
        t76 = abap_true.
      ELSEIF t81 <= t80.
        t82 = 0.
        t82 = t80 - t81.
        t83 = t77+t82(t81).
        IF t83 = t79.
          t76 = abap_true.
        ENDIF.
      ENDIF.
      IF t76 = abap_true.
        DATA t84 TYPE REF TO zif_lnt_file.
        CLEAR t84.
        DATA(t85) = abap_true.
        IF t85 = abap_true.
          DATA(t86) = t71.
          t84 = t86.
        ELSE.
          DATA t87 TYPE REF TO zif_lnt_file.
          CLEAR t87.
          t84 = t87.
        ENDIF.
        result = t84.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t88 TYPE REF TO zif_lnt_file.
    CLEAR t88.
    result = t88.

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
    me->set_dirty( ).
    DATA(t2) = VALUE i( ).
    DATA(t3) = 0.
    t2 = t3.
    DO.
      DATA(t4) = VALUE abap_bool( ).
      DATA(t5) = t2.
      DATA(t6) = VALUE i( ).
      DATA(t7) = me->files.
      t7->load( ).
      t6 = lines( t7->items ).
      t4 = xsdbool( t5 < t6 ).
      IF t4 = abap_false.
        EXIT.
      ENDIF.
      DATA(t8) = VALUE abap_bool( ).
      DATA(t9) = VALUE string( ).
      DATA t10 TYPE REF TO zif_lnt_file.
      CLEAR t10.
      DATA(t11) = me->files.
      DATA(t12) = t2.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO object.
      CLEAR t13.
      t11->load( ).
      CLEAR t13.
      READ TABLE t11->items INDEX t12 INTO t13.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      CLEAR t10.
      IF t13 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t14 ?= t13.
        DATA t15 TYPE REF TO object.
        CLEAR t15.
        t15 = t14->as_ref( ).
        t10 ?= t15.
      ELSE.
        t10 ?= t13.
      ENDIF.
      t9 = t10->get_filename( ).
      DATA(t16) = VALUE string( ).
      DATA(t17) = t1.
      t16 = t17->get_filename( ).
      t8 = xsdbool( t9 = t16 ).
      IF t8 = abap_true.
        DATA(t18) = me->files.
        DATA(t19) = t2.
        DATA(t20) = t1.
        t18->put( p0 = t19 p1 = t20 ).
        RETURN.
      ENDIF.
      DATA(t21) = VALUE i( ).
      DATA(t22) = t2.
      DATA(t23) = 1.
      t21 = t22 + t23.
      t2 = t21.
    ENDDO.
    DATA t24 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    CLEAR t24.
    DATA t25 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    DATA(t27) = abap_true.
    IF t27 = abap_true.
      DATA(t28) = |updateFile: file not found|.
      DATA(t29) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t29->has = abap_true.
      t29->value = t28.
      t26 = t29.
    ELSE.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      t26 = t30.
    ENDIF.
    t25 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t26 ).
    t24 = NEW #( ).
    t24->payload = t25.
    CLEAR t24->source_value.
    IF t25 IS BOUND.
      DATA t31 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t31.
      DATA t32 TYPE REF TO object.
      CLEAR t32.
      CLEAR t31.
      t32 = t25.
      TRY.
          t24->source_value ?= t32.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t24->source_value IS NOT BOUND.
        TRY.
            t31 ?= t25.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t31 IS BOUND.
          t24->source_value = t31->source( ).
        ENDIF.
        IF t24->source_value IS NOT BOUND.
          CREATE OBJECT t24->source_value.
          t24->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t24->source_value->oval = t25.
        ENDIF.
      ENDIF.
    ENDIF.
    RAISE EXCEPTION t24.
  ENDMETHOD.

  METHOD parse_raw2.
    DATA t1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zif_lnt_file.
    CLEAR t3.
    DATA(t4) = CAST zif_lnt_file( me->get_xml_file( ) ).
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t3.
    t6 = xsdbool( t7 IS BOUND ).
    IF t6 = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t8.
      DATA(t9) = abap_true.
      IF t9 = abap_true.
        DATA(t10) = VALUE string( ).
        DATA t11 TYPE REF TO zif_lnt_file.
        CLEAR t11.
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
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t17.
    DATA(t18) = t1.
    t17 = t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    t19 = t20.
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = t17.
    IF t22 IS INITIAL.
      t21 = abap_true.
    ELSEIF t22->has = abap_false.
      t21 = abap_true.
    ENDIF.
    t16 = t21.
    IF t16 = abap_true.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      result = t23.
      RETURN.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    CLEAR t24.
    TRY.
        DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t25.
        DATA(t26) = abap_true.
        IF t26 = abap_true.
          DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t27.
          DATA(t28) = VALUE string( ).
          DATA(t29) = t1.
          t28 = t29->value.
          t27 = zlnt_runtime_xmlw_d7bcce7c35ad=>parse( t28 ).
          t25 = t27.
        ELSE.
          DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t30.
          t25 = t30.
        ENDIF.
        result = t25.
        RETURN.
      CATCH zlnt_exception_cl_30eec8e8805d INTO t24.
        DATA(t31) = t24->payload.
        DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t32.
        result = t32.
        RETURN.
    ENDTRY.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1184_05a19202d1a3.
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
