* TS: src/pretty_printer/pretty_printer.ts:10:1 PrettyPrinter
CLASS zcl_lnt_pretty_printer DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA result_9728 TYPE string.
    DATA file TYPE REF TO zcl_lnt_abap_file.
    DATA options TYPE REF TO zcl_lnt_iindentation_options.
    DATA config TYPE REF TO zif_lnt_configuration.
    METHODS constructor IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_config TYPE REF TO zif_lnt_configuration.
    METHODS run RETURNING VALUE(result) TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_pretty_printer IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_file.
    DATA(t2) = i_config.
    me->result_9728 = t1->file->get_raw( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `result`.
    me->file = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `file`.
    me->config = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `config`.
    DATA t11 TYPE REF TO zcl_lnt_indentation_conf.
    DATA t12 TYPE REF TO zcl_lnt_indentation_conf.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t15) = VALUE string( ).
    DATA t17 TYPE REF TO zcl_lnt_indentation.
    t17 = NEW zcl_lnt_indentation( ).
    DATA t19 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t30.
    t30->load( ).
    APPEND |Whitespace| TO t30->items.
    t30->save( ).
    t30->load( ).
    APPEND |Quickfix| TO t30->items.
    t30->save( ).
    t30->load( ).
    APPEND |SingleFile| TO t30->items.
    t30->save( ).
    t26 = t30.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t43) = |CLASS lcl DEFINITION.\nPRIVATE SECTION.\nMETHODS constructor.\n|.
    t43 = t43 && |ENDCLASS.\n\nCLASS lcl IMPLEMENTATION.\nMETHOD constructor.\nEND|.
    t43 = t43 && |METHOD.\nENDCLASS.|.
    DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t44->has = abap_true.
    t44->value = t43.
    t40 = t44.
    DATA(t49) = |CLASS lcl DEFINITION.\n  PRIVATE SECTION.\n    METHODS constru|.
    t49 = t49 && |ctor.\nENDCLASS.\n\nCLASS lcl IMPLEMENTATION.\n  METHOD construc|.
    t49 = t49 && |tor.\n  ENDMETHOD.\nENDCLASS.|.
    DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t50->has = abap_true.
    t50->value = t49.
    DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t19 = NEW zcl_lnt_irule_metadata( i_key = |indentation| i_title = |Indentation| i_short_description = |Checks indentation| i_bad_example = t40 i_good_example = t50 i_extended_information = t52 i_tags = t26 i_pragma = t54 i_pseudo_comment = t56 ).
    CREATE OBJECT t19->zlnt_view_ownkeys_b0e8086400eb.
    t19->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t19->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t58 ).
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t19->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t19->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t59 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t19->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t19->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t60 ).
    ENDIF.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t19->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t19->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t61 ).
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t19->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t19->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t62 ).
    ENDIF.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t19->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t19->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t63 ).
    ENDIF.
    CREATE OBJECT t19->zlnt_json_ownkeys_70e5fd461788.
    t19->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t65 ).
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t19->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t67 ).
    ENDIF.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t19->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t69 ).
    ENDIF.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t19->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t71 ).
    ENDIF.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t19->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t73 ).
    ENDIF.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t19->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t75 ).
    ENDIF.
    t15 = t19->key.
    t13 = t2->read_by_rule( i_rule = t15 ).
    IF t13 IS BOUND.
      IF t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t12 ?= t13->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t12 IS NOT BOUND.
        IF t13->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t13->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t13->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t13->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          DATA t76 TYPE REF TO zlnt_view_storage_74017ca272ac.
          IF t13->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t76 ?= t13->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t76->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t12 = NEW zcl_lnt_indentation_conf( view_source = t13 ).
      ENDIF.
    ENDIF.
    t11 = t12.
    DATA t77 TYPE REF TO zcl_lnt_iindentation_options.
    DATA t78 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t80 TYPE REF TO zcl_lnt_indentation_conf.
    t80 = t11.
    DATA t82 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    IF xsdbool( t80 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t86) = VALUE abap_bool( ).
      t86 = t80->zlnt_view_read_sr_5c35b8f00615( ).
      DATA(t88) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t88->has = abap_true.
      t88->value = t86.
      t82 = t88.
    ENDIF.
    t78 = t82.
    DATA t91 TYPE REF TO zcl_lnt_indentation_conf.
    t91 = t11.
    DATA t93 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    IF xsdbool( t91 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t97) = VALUE abap_bool( ).
      t97 = t91->zlnt_view_read_sr_e38337070bb8( ).
      DATA(t99) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t99->has = abap_true.
      t99->value = t97.
      t93 = t99.
    ENDIF.
    DATA t100 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t77 = NEW zcl_lnt_iindentation_options( i_align_try_catch = t78 i_slctn_scrn_blck_indnttn = t100 i_global_class_skip_first = t93 ).
    CREATE OBJECT t77->zlnt_view_ownkeys_b0e8086400eb.
    t77->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t77->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `alignTryCatch` p1 = t102 ).
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t77->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t77->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `globalClassSkipFirst` p1 = t103 ).
    ENDIF.
    CREATE OBJECT t77->zlnt_json_ownkeys_70e5fd461788.
    t77->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t77->zlnt_json_ownkeys_70e5fd461788->put( p0 = |alignTryCatch| p1 = t105 ).
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t77->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t77->zlnt_json_ownkeys_70e5fd461788->put( p0 = |globalClassSkipFirst| p1 = t107 ).
    ENDIF.
    me->options = t77.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `options`.
  ENDMETHOD.

  METHOD run.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t1 = me->file->statements.
    DATA t8 TYPE REF TO zcl_lnt_statement_node.
    DATA t9 TYPE REF TO object.
    DATA(t10) = VALUE i( ).
    DO.
      t1->load( ).
      IF t10 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t1->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA(t13) = VALUE abap_bool( ).
      DATA(t14) = VALUE abap_bool( ).
      DATA(t15) = VALUE abap_bool( ).
      DATA t16 TYPE abap_bool.
      DATA t17 TYPE abap_bool.
      DATA t18 TYPE REF TO zif_lnt_statement.
      t18 = t8->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t17 = xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_unknown ).
      t16 = t17.
      IF t17 = abap_false.
        DATA t21 TYPE REF TO zif_lnt_statement.
        t21 = t8->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t16 = xsdbool( t21 IS BOUND AND t21 IS INSTANCE OF zcl_lnt_macro_content ).
      ENDIF.
      t15 = t16.
      IF t16 = abap_false.
        DATA t24 TYPE REF TO zif_lnt_statement.
        t24 = t8->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t15 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_macro_call ).
      ENDIF.
      t14 = t15.
      IF t15 = abap_false.
        DATA t27 TYPE REF TO zcl_lnt_position.
        t27 = t8->get_first_token( )->start.
        t14 = xsdbool( t27 IS BOUND AND t27 IS INSTANCE OF zcl_lnt_virtual_position ).
      ENDIF.
      t13 = t14.
      IF t14 = abap_false.
        DATA t34 TYPE REF TO zif_lnt_statement.
        t34 = t8->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t13 = xsdbool( t34 IS BOUND AND t34 IS INSTANCE OF zcl_lnt_st_comment ).
      ENDIF.
      IF t13 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t38) = CONV string( me->result_9728 ).
      DATA(t39) = me->config.
      me->result_9728 = NEW zcl_lnt_fix_case( i_file_contents = t38 i_config = t39 )->execute( i_statement = t8 ).
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `result`.
    ENDDO.
    DATA t44 TYPE REF TO zcl_lnt_indent.
    DATA t45 TYPE REF TO zcl_lnt_iindentation_options.
    t45 = me->options.
    t44 = NEW zcl_lnt_indent( i_options = t45 ).
    DATA(t51) = me->file.
    DATA(t52) = CONV string( me->result_9728 ).
    me->result_9728 = t44->execute( i_original = t51 i_modified = t52 ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `result`.
    DATA(t53) = CONV string( me->result_9728 ).
    result = t53.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1376_9d55e8666060.
  ENDMETHOD.
ENDCLASS.
