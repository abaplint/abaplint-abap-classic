* TS: src/rules/aff_and_xml.ts:10:1 AFFAndXML
CLASS zcl_lnt_aff_and_xml DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_aff_and_xml_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS g_c_i_s_r_af_an_xm_ts_af_an_xm RETURNING VALUE(result) TYPE REF TO zcl_lnt_aff_and_xml_conf.
    METHODS s_c_i_s_r_af_an_xm_ts_af_an_xm IMPORTING i_conf TYPE REF TO zcl_lnt_aff_and_xml_conf.
    METHODS i_i_sr_rl_af_an_xm_ts_af_an_xm IMPORTING i_reg_d009 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_aff_and_xml.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_aff_and_xml IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_aff_and_xml_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |aff_and_xml|.
    DATA t4 TYPE string.
    t4 = |AFF and XML|.
    DATA t6 TYPE string.
    DATA(t7) = |Checks for objects that have both AFF (.json) and XML (.xml)|.
    t7 = t7 && | files|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |If an object has both an ABAP file format JSON file and an X|.
    t11 = t11 && |ML file, the XML file should be removed|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t19.
    t18 = t19.
    DATA(t21) = |Syntax|.
    t18->load( ).
    APPEND t21 TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t24 i_good_example = t26 i_extended_information = t8 i_tags = t14 i_pragma = t28 i_pseudo_comment = t30 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t32 ).
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t33 ).
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t34 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t36 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t37) = |key|.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t37 p1 = t38 ).
    DATA(t39) = |title|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
    ENDIF.
    DATA(t41) = |shortDescription|.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
    ENDIF.
    DATA(t43) = |extendedInformation|.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t43 p1 = t44 ).
    ENDIF.
    DATA(t45) = |tags|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t45 p1 = t46 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_af_an_xm_ts_af_an_xm.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_af_an_xm_ts_af_an_xm.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD i_i_sr_rl_af_an_xm_ts_af_an_xm.
    DATA(t1) = i_reg_d009.
    result = me.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t3 = t1->get_files( ).
    t2 = t3.
    DATA t5 TYPE abap_bool.
    t5 = abap_false.
    DATA t7 TYPE abap_bool.
    t7 = abap_false.
    DATA t9 TYPE string.
    DATA t10 TYPE string.
    DATA t11 TYPE string.
    t11 = t1->get_type( ).
    DATA(t13) = strlen( t11 ).
    t10 = t11.
    TRANSLATE t10 TO LOWER CASE.
    t9 = t10.
    DATA t15 TYPE REF TO zif_lnt_file.
    DATA t16 TYPE REF TO object.
    DATA(t17) = VALUE i( ).
    DO.
      t2->load( ).
      IF t17 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t16.
      READ TABLE t2->items INDEX t17 + 1 INTO t16.
      t17 = t17 + 1.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      CLEAR t15.
      IF t16 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t18 ?= t16.
        DATA t19 TYPE REF TO object.
        t19 = t18->as_ref( ).
        t15 ?= t19.
      ELSE.
        t15 ?= t16.
      ENDIF.
      DATA t20 TYPE string.
      DATA t21 TYPE string.
      DATA t22 TYPE string.
      t22 = t15->get_filename( ).
      DATA(t24) = strlen( t22 ).
      t21 = t22.
      TRANSLATE t21 TO LOWER CASE.
      t20 = t21.
      DATA(t25) = VALUE abap_bool( ).
      DATA t27 TYPE string.
      DATA t28 TYPE string.
      DATA(t29) = |.|.
      DATA(t31) = strlen( t29 ).
      t28 = |{ t29 }{ t9 }|.
      DATA(t32) = |.json|.
      DATA(t33) = strlen( t28 ).
      t27 = |{ t28 }{ t32 }|.
      DATA(t34) = strlen( t20 ).
      DATA t35 TYPE i.
      DATA(t36) = VALUE i( ).
      DATA(t37) = VALUE string( ).
      t35 = strlen( t27 ).
      IF t35 = 0.
        t25 = abap_true.
      ELSEIF t35 <= t34.
        t36 = 0.
        t36 = t34 - t35.
        t37 = t20+t36(t35).
        IF t37 = t27.
          t25 = abap_true.
        ENDIF.
      ENDIF.
      IF t25 = abap_true.
        t5 = abap_true.
      ELSE.
        DATA(t39) = VALUE abap_bool( ).
        DATA t41 TYPE string.
        DATA t42 TYPE string.
        DATA(t43) = |.|.
        DATA(t45) = strlen( t43 ).
        t42 = |{ t43 }{ t9 }|.
        DATA(t46) = |.xml|.
        DATA(t47) = strlen( t42 ).
        t41 = |{ t42 }{ t46 }|.
        DATA(t48) = strlen( t20 ).
        DATA t49 TYPE i.
        DATA(t50) = VALUE i( ).
        DATA(t51) = VALUE string( ).
        t49 = strlen( t41 ).
        IF t49 = 0.
          t39 = abap_true.
        ELSEIF t49 <= t48.
          t50 = 0.
          t50 = t48 - t49.
          t51 = t20+t50(t49).
          IF t51 = t41.
            t39 = abap_true.
          ENDIF.
        ENDIF.
        IF t39 = abap_true.
          t7 = abap_true.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t53 TYPE abap_bool.
    t53 = t5.
    IF t5 = abap_true.
      t53 = t7.
    ENDIF.
    IF t53 = abap_true.
      DATA t56 TYPE REF TO zif_lnt_file.
      DATA t57 TYPE REF TO zif_lnt_file.
      t57 = t1->get_xml_file( ).
      t56 = t57.
      DATA t59 TYPE abap_bool.
      t59 = xsdbool( t56 IS BOUND ).
      IF t59 = abap_true.
        DATA(t62) = |Object has both AFF JSON and XML files, remove the XML|.
        DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t65.
        t64 = t65.
        DATA t67 TYPE REF TO zcl_lnt_issue.
        DATA t68 TYPE REF TO zif_lnt_file.
        t68 = t56.
        DATA(t70) = CONV f( 1 ).
        DATA(t72) = VALUE string( ).
        DATA t73 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t74 TYPE string.
        t74 = |aff_and_xml|.
        DATA t76 TYPE string.
        t76 = |AFF and XML|.
        DATA t78 TYPE string.
        DATA(t79) = |Checks for objects that have both AFF (.json) and XML (.xml)|.
        t79 = t79 && | files|.
        t78 = t79.
        DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t83) = |If an object has both an ABAP file format JSON file and an X|.
        t83 = t83 && |ML file, the XML file should be removed|.
        DATA(t84) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t84->has = abap_true.
        t84->value = t83.
        t80 = t84.
        DATA t86 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t90 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t91 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t91.
        t90 = t91.
        DATA(t93) = |Syntax|.
        t90->load( ).
        APPEND t93 TO t90->items.
        t90->save( ).
        t86 = t90.
        DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t73 = NEW zcl_lnt_irule_metadata( i_key = t74 i_title = t76 i_short_description = t78 i_bad_example = t96 i_good_example = t98 i_extended_information = t80 i_tags = t86 i_pragma = t100 i_pseudo_comment = t102 ).
        CREATE OBJECT t73->zlnt_view_ownkeys_b0e8086400eb.
        t73->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t73->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t104 ).
        DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t73->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t73->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t105 ).
        ENDIF.
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t73->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t73->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t106 ).
        ENDIF.
        DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t73->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t73->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t107 ).
        ENDIF.
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t73->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t73->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t108 ).
        ENDIF.
        CREATE OBJECT t73->zlnt_json_ownkeys_70e5fd461788.
        t73->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t109) = |key|.
        DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t73->zlnt_json_ownkeys_70e5fd461788->put( p0 = t109 p1 = t110 ).
        DATA(t111) = |title|.
        DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t73->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t73->zlnt_json_ownkeys_70e5fd461788->put( p0 = t111 p1 = t112 ).
        ENDIF.
        DATA(t113) = |shortDescription|.
        DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t73->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t73->zlnt_json_ownkeys_70e5fd461788->put( p0 = t113 p1 = t114 ).
        ENDIF.
        DATA(t115) = |extendedInformation|.
        DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t73->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t73->zlnt_json_ownkeys_70e5fd461788->put( p0 = t115 p1 = t116 ).
        ENDIF.
        DATA(t117) = |tags|.
        DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t73->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t73->zlnt_json_ownkeys_70e5fd461788->put( p0 = t117 p1 = t118 ).
        ENDIF.
        t72 = t73->key.
        DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t119 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        t67 = zcl_lnt_issue=>at_row( i_file = t68 i_row = t70 i_message_26cb = t62 i_key = t72 i_severity = t119 ).
        t64->load( ).
        APPEND t67 TO t64->items.
        t64->save( ).
        result = t64.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t122.
    result = t122.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_aff_and_xml_conf( me->g_c_i_s_r_af_an_xm_ts_af_an_xm( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_aff_and_xml_conf( me->g_c_i_s_r_af_an_xm_ts_af_an_xm( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_aff_and_xml_conf.
    IF t1 IS BOUND.
      IF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t2 ?= t1->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t2 IS NOT BOUND.
        IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t4 TYPE REF TO zlnt_view_storage_74017ca272ac.
          IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t4 ?= t1->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t4->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t2 = NEW zcl_lnt_aff_and_xml_conf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_af_an_xm_ts_af_an_xm( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA t2 TYPE REF TO zcl_lnt_aff_and_xml.
    DATA(t3) = i_reg_f149.
    t2 = me->i_i_sr_rl_af_an_xm_ts_af_an_xm( i_reg_d009 = t3 ).
    result = t2.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1390_4292d2814313.
  ENDMETHOD.

  METHOD zif_lnt_rule~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_metadata.
    result = me->get_metadata( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_config.
    me->get_config( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~set_config.
    me->set_config( i_conf = i_conf ).
  ENDMETHOD.

  METHOD zif_lnt_rule~initialize.
    result = me->initialize( i_reg_f149 = i_reg_f149 ).
  ENDMETHOD.

  METHOD zif_lnt_rule~run.
    result = me->run( i_obj_1ed0 = i_obj_1ed0 ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_config_value.
    result = me->get_config_value( ).
  ENDMETHOD.
ENDCLASS.
