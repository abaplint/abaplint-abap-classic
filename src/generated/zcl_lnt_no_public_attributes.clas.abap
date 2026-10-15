* TS: src/rules/no_public_attributes.ts:18:1 NoPublicAttributes
CLASS zcl_lnt_no_public_attributes DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_n_pblc_attrbts_cnf.
    DATA file TYPE REF TO zcl_lnt_abap_file.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_description IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_sr_rl_n_pb_at_ts_n_pb_at RETURNING VALUE(result) TYPE REF TO zcl_lnt_n_pblc_attrbts_cnf.
    METHODS s_c_i_sr_rl_n_pb_at_ts_n_pb_at IMPORTING i_conf TYPE REF TO zcl_lnt_n_pblc_attrbts_cnf.
    METHODS run_parsed REDEFINITION.
    METHODS get_all_public_attributes IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS gt_all_pblc_clss_attrbts IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS gt_all_pblc_intrfc_attrbts RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_all_issues IMPORTING i_attributes TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_no_public_attributes IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_n_pblc_attrbts_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |no_public_attributes|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |No public attributes|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that classes and interfaces don't contain any public |.
    t7 = t7 && |attributes.\nExceptions are excluded from this rule.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t11 = t11 && |nABAP.md#members-private-by-default-protected-only-if-needed|.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = t11.
      t9 = t12.
    ELSE.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t9 = t13.
    ENDIF.
    t8 = t9.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t15.
    DATA(t16) = abap_true.
    IF t16 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t19.
      t18 = t19.
      DATA(t20) = t18.
      DATA(t21) = |Styleguide|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      DATA(t23) = |SingleFile|.
      t22->load( ).
      APPEND t23 TO t22->items.
      t22->save( ).
      DATA(t24) = t18.
      t17 = t24.
      t15 = t17.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t25.
      t15 = t25.
    ENDIF.
    t14 = t15.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA(t29) = |CLASS zcl_foo DEFINITION PUBLIC.\n  PUBLIC SECTION.\n    DATA |.
      t29 = t29 && |counter TYPE i.\nENDCLASS.|.
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = t29.
      t27 = t30.
    ELSE.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      t27 = t31.
    ENDIF.
    t26 = t27.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    DATA(t34) = abap_true.
    IF t34 = abap_true.
      DATA(t35) = |CLASS zcl_foo DEFINITION PUBLIC.\n  PRIVATE SECTION.\n    DATA|.
      t35 = t35 && | counter TYPE i.\nENDCLASS.|.
      DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t36->has = abap_true.
      t36->value = t35.
      t33 = t36.
    ELSE.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t37.
      t33 = t37.
    ENDIF.
    t32 = t33.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    t38 = t39.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    t40 = t41.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t26 i_good_example = t32 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t48 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t49) = |key|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    DATA(t51) = |title|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |shortDescription|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |extendedInformation|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |tags|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |badExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |goodExample|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = i_name.
    DATA t2 TYPE string.
    DATA t3 TYPE string.
    DATA(t4) = |Public attributes are not allowed, attribute "|.
    DATA(t5) = t1.
    DATA(t6) = strlen( t4 ).
    t3 = |{ t4 }{ t5 }|.
    DATA(t7) = |"|.
    DATA(t8) = strlen( t3 ).
    t2 = |{ t3 }{ t7 }|.
    result = t2.

  ENDMETHOD.

  METHOD g_c_i_sr_rl_n_pb_at_ts_n_pb_at.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_sr_rl_n_pb_at_ts_n_pb_at.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA(t3) = t1.
    me->file = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `file`.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abap_object.
    DATA(t7) = t2.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t12) = t9.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t14) = t6.
    t13 = me->gt_all_pblc_clss_attrbts( i_obj_1ed0 = t14 ).
    t11 = t12->concat( p0 = t13 ).
    t9 = t11.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t16) = t9.
    DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( me->gt_all_pblc_intrfc_attrbts( ) ).
    t15 = t16->concat( p0 = t17 ).
    t9 = t15.
    DATA(t18) = t9.
    t8 = t18.
    t5 = t8.
    t4 = t5.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t20) = t4.
    t19 = me->find_all_issues( i_attributes = t20 ).
    result = t19.

  ENDMETHOD.

  METHOD get_all_public_attributes.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = t2.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = t1.
    t6 = me->gt_all_pblc_clss_attrbts( i_obj_1ed0 = t7 ).
    t4 = t5->concat( p0 = t6 ).
    t2 = t4.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = t2.
    DATA(t10) = CAST zlnt_runtime_arra_c22708faf2e3( me->gt_all_pblc_intrfc_attrbts( ) ).
    t8 = t9->concat( p0 = t10 ).
    t2 = t8.
    DATA(t11) = t2.
    result = t11.

  ENDMETHOD.

  METHOD gt_all_pblc_clss_attrbts.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_ddic.
    DATA t5 TYPE REF TO zcl_lnt_ddic.
    DATA(t6) = me->reg.
    t5 = NEW zcl_lnt_ddic( i_reg_f149 = t6 ).
    t4 = t5.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zif_lnt_abap_file_information.
    DATA t9 TYPE REF TO zcl_lnt_abap_file.
    DATA(t10) = me->file.
    t9 = t10.
    DATA t11 TYPE REF TO zif_lnt_abap_file_information.
    DATA(t12) = t9.
    t11 = t12->info.
    t8 = t11.
    t7 = t8->list_class_definitions( ).
    DATA t13 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t13.
    DATA t14 TYPE REF TO object.
    CLEAR t14.
    DATA(t15) = VALUE i( ).
    DO.
      t7->load( ).
      IF t15 >= lines( t7->items ).
        EXIT.
      ENDIF.
      CLEAR t14.
      READ TABLE t7->items INDEX t15 + 1 INTO t14.
      t15 = t15 + 1.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      CLEAR t13.
      IF t14 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t16 ?= t14.
        DATA t17 TYPE REF TO object.
        t17 = t16->as_ref( ).
        t13 ?= t17.
      ELSE.
        t13 ?= t14.
      ENDIF.
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = t4.
      DATA t20 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t20.
      DATA(t21) = abap_true.
      IF t21 = abap_true.
        DATA(t22) = t13.
        t20 = t22.
      ELSE.
        DATA t23 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t23.
        t20 = t23.
      ENDIF.
      DATA(t24) = t1.
      t18 = t19->is_exception( i_def = t20 i_obj_ac26 = t24 ).
      IF t18 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t25.
      DATA(t26) = t2.
      DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t27.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t29.
      t28 = t29.
      DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t31) = t13.
      t30 = t31->attributes.
      DATA t32 TYPE REF TO zcl_lnt_info_attribute.
      CLEAR t32.
      DATA t33 TYPE REF TO object.
      CLEAR t33.
      DATA(t34) = VALUE i( ).
      DO.
        t30->load( ).
        IF t34 >= lines( t30->items ).
          EXIT.
        ENDIF.
        CLEAR t33.
        READ TABLE t30->items INDEX t34 + 1 INTO t33.
        t34 = t34 + 1.
        DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t35.
        CLEAR t32.
        IF t33 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t35 ?= t33.
          DATA t36 TYPE REF TO object.
          t36 = t35->as_ref( ).
          t32 ?= t36.
        ELSE.
          t32 ?= t33.
        ENDIF.
        DATA t37 TYPE abap_bool.
        DATA t38 TYPE f.
        DATA(t39) = t32.
        t38 = t39->visibility.
        DATA(t40) = CONV f( 3 ).
        t37 = xsdbool( t38 = t40 ).
        IF t37 = abap_true.
          DATA(t41) = t28.
          DATA(t42) = t32.
          t41->load( ).
          APPEND t42 TO t41->items.
          t41->save( ).
        ENDIF.
      ENDDO.
      DATA(t43) = t28.
      t27 = t43.
      t25 = t26->concat( p0 = t27 ).
      t2 = t25.
    ENDDO.
    DATA(t44) = t2.
    result = t44.

  ENDMETHOD.

  METHOD gt_all_pblc_intrfc_attrbts.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    t1 = t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zif_lnt_abap_file_information.
    DATA t5 TYPE REF TO zcl_lnt_abap_file.
    DATA(t6) = me->file.
    t5 = t6.
    DATA t7 TYPE REF TO zif_lnt_abap_file_information.
    DATA(t8) = t5.
    t7 = t8->info.
    t4 = t7.
    t3 = t4->list_interface_definitions( ).
    DATA t9 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    DATA(t11) = VALUE i( ).
    DO.
      t3->load( ).
      IF t11 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t3->items INDEX t11 + 1 INTO t10.
      t11 = t11 + 1.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t9.
      IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t10.
        DATA t13 TYPE REF TO object.
        t13 = t12->as_ref( ).
        t9 ?= t13.
      ELSE.
        t9 ?= t10.
      ENDIF.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t14.
      DATA(t15) = t1.
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t16.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t18.
      t17 = t18.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t20) = t9.
      t19 = t20->attributes.
      DATA t21 TYPE REF TO zcl_lnt_info_attribute.
      CLEAR t21.
      DATA t22 TYPE REF TO object.
      CLEAR t22.
      DATA(t23) = VALUE i( ).
      DO.
        t19->load( ).
        IF t23 >= lines( t19->items ).
          EXIT.
        ENDIF.
        CLEAR t22.
        READ TABLE t19->items INDEX t23 + 1 INTO t22.
        t23 = t23 + 1.
        DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t24.
        CLEAR t21.
        IF t22 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t24 ?= t22.
          DATA t25 TYPE REF TO object.
          t25 = t24->as_ref( ).
          t21 ?= t25.
        ELSE.
          t21 ?= t22.
        ENDIF.
        DATA t26 TYPE abap_bool.
        DATA t27 TYPE f.
        DATA(t28) = t21.
        t27 = t28->visibility.
        DATA(t29) = CONV f( 3 ).
        t26 = xsdbool( t27 = t29 ).
        IF t26 = abap_true.
          DATA(t30) = t17.
          DATA(t31) = t21.
          t30->load( ).
          APPEND t31 TO t30->items.
          t30->save( ).
        ENDIF.
      ENDDO.
      DATA(t32) = t17.
      t16 = t32.
      t14 = t15->concat( p0 = t16 ).
      t1 = t14.
    ENDDO.
    DATA(t33) = t1.
    result = t33.

  ENDMETHOD.

  METHOD find_all_issues.
    DATA(t1) = i_attributes.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = t1.
    DATA t5 TYPE REF TO zcl_lnt_info_attribute.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    DATA(t7) = VALUE i( ).
    DO.
      t4->load( ).
      IF t7 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t4->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        DATA t9 TYPE REF TO object.
        t9 = t8->as_ref( ).
        t5 ?= t9.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA t10 TYPE abap_bool.
      DATA t11 TYPE abap_bool.
      DATA t12 TYPE abap_bool.
      DATA(t13) = me->conf.
      t12 = t13->zlnt_view_read_sr_edcfd557fbf6( ).
      DATA(t14) = abap_true.
      t11 = xsdbool( t12 = t14 ).
      t10 = t11.
      IF t11 = abap_true.
        DATA t15 TYPE abap_bool.
        DATA(t16) = t5.
        t15 = t16->read_only.
        t10 = t15.
      ENDIF.
      IF t10 = abap_true.
        CONTINUE.
      ELSE.
        DATA t17 TYPE abap_bool.
        DATA t18 TYPE string.
        DATA(t19) = t5.
        t18 = t19->level.
        DATA(t20) = |constant|.
        t17 = xsdbool( t18 = t20 ).
        IF t17 = abap_true.
          CONTINUE.
        ELSE.
          DATA t21 TYPE abap_bool.
          DATA t22 TYPE abap_bool.
          DATA t23 TYPE abap_bool.
          DATA(t24) = me->conf.
          t23 = t24->zlnt_view_read_sr_48dae5000976( ).
          DATA(t25) = abap_true.
          t22 = xsdbool( t23 = t25 ).
          t21 = t22.
          IF t22 = abap_true.
            DATA(t26) = VALUE abap_bool( ).
            DATA(t27) = VALUE i( ).
            DATA t28 TYPE string.
            DATA t29 TYPE REF TO zcl_lnt_abstract_file.
            DATA(t30) = me->file.
            t29 = t30.
            DATA t31 TYPE string.
            DATA(t32) = t29.
            t31 = t32->filename.
            t28 = t31.
            DATA(t33) = |.testclasses.|.
            DATA(t34) = strlen( t28 ).
            IF t33 IS INITIAL.
              t27 = 0.
            ELSE.
              FIND t33 IN t28 MATCH OFFSET t27.
              IF sy-subrc <> 0.
                t27 = -1.
              ENDIF.
            ENDIF.
            DATA(t35) = 0.
            t26 = xsdbool( t27 >= t35 ).
            t21 = t26.
          ENDIF.
          IF t21 = abap_true.
            CONTINUE.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t36 TYPE REF TO zcl_lnt_issue.
      CLEAR t36.
      DATA t37 TYPE REF TO zcl_lnt_issue.
      CLEAR t37.
      DATA t38 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t39) = t5.
      t38 = t39->identifier.
      DATA t40 TYPE string.
      DATA t41 TYPE string.
      DATA t42 TYPE string.
      DATA(t43) = t5.
      t42 = t43->name.
      t41 = t42.
      DATA t44 TYPE string.
      DATA t45 TYPE string.
      DATA(t46) = |Public attributes are not allowed, attribute "|.
      DATA(t47) = t41.
      DATA(t48) = strlen( t46 ).
      t45 = |{ t46 }{ t47 }|.
      DATA(t49) = |"|.
      DATA(t50) = strlen( t45 ).
      t44 = |{ t45 }{ t49 }|.
      t40 = t44.
      DATA(t51) = VALUE string( ).
      DATA t52 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t52.
      DATA t53 TYPE string.
      DATA(t54) = |no_public_attributes|.
      t53 = t54.
      DATA t55 TYPE string.
      DATA(t56) = |No public attributes|.
      t55 = t56.
      DATA t57 TYPE string.
      DATA(t58) = |Checks that classes and interfaces don't contain any public |.
      t58 = t58 && |attributes.\nExceptions are excluded from this rule.|.
      t57 = t58.
      DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t59.
      DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t60.
      DATA(t61) = abap_true.
      IF t61 = abap_true.
        DATA(t62) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
        t62 = t62 && |nABAP.md#members-private-by-default-protected-only-if-needed|.
        DATA(t63) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t63->has = abap_true.
        t63->value = t62.
        t60 = t63.
      ELSE.
        DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t64.
        t60 = t64.
      ENDIF.
      t59 = t60.
      DATA t65 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t65.
      DATA t66 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t66.
      DATA(t67) = abap_true.
      IF t67 = abap_true.
        DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t69 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t70 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t70.
        t69 = t70.
        DATA(t71) = t69.
        DATA(t72) = |Styleguide|.
        t71->load( ).
        APPEND t72 TO t71->items.
        t71->save( ).
        DATA(t73) = t69.
        DATA(t74) = |SingleFile|.
        t73->load( ).
        APPEND t74 TO t73->items.
        t73->save( ).
        DATA(t75) = t69.
        t68 = t75.
        t66 = t68.
      ELSE.
        DATA t76 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t76.
        t66 = t76.
      ENDIF.
      t65 = t66.
      DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t77.
      DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t78.
      DATA(t79) = abap_true.
      IF t79 = abap_true.
        DATA(t80) = |CLASS zcl_foo DEFINITION PUBLIC.\n  PUBLIC SECTION.\n    DATA |.
        t80 = t80 && |counter TYPE i.\nENDCLASS.|.
        DATA(t81) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t81->has = abap_true.
        t81->value = t80.
        t78 = t81.
      ELSE.
        DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t82.
        t78 = t82.
      ENDIF.
      t77 = t78.
      DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t83.
      DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t84.
      DATA(t85) = abap_true.
      IF t85 = abap_true.
        DATA(t86) = |CLASS zcl_foo DEFINITION PUBLIC.\n  PRIVATE SECTION.\n    DATA|.
        t86 = t86 && | counter TYPE i.\nENDCLASS.|.
        DATA(t87) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t87->has = abap_true.
        t87->value = t86.
        t84 = t87.
      ELSE.
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t88.
        t84 = t88.
      ENDIF.
      t83 = t84.
      DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t90.
      t89 = t90.
      DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t92.
      t91 = t92.
      t52 = NEW zcl_lnt_irule_metadata( i_key = t53 i_title = t55 i_short_description = t57 i_bad_example = t77 i_good_example = t83 i_extended_information = t59 i_tags = t65 i_pragma = t89 i_pseudo_comment = t91 ).
      CREATE OBJECT t52->zlnt_view_ownkeys_b0e8086400eb.
      t52->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t93.
      IF t52->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t93 ).
      ENDIF.
      DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t94.
      IF t52->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t94 ).
      ENDIF.
      DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t95.
      IF t52->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t95 ).
      ENDIF.
      DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t96.
      IF t52->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t96 ).
      ENDIF.
      DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t97.
      IF t52->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t97 ).
      ENDIF.
      DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t98.
      IF t52->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t98 ).
      ENDIF.
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t99.
      IF t52->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t99 ).
      ENDIF.
      CREATE OBJECT t52->zlnt_json_ownkeys_70e5fd461788.
      t52->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t100) = |key|.
      DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t101.
      IF t52->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = t100 p1 = t101 ).
      ENDIF.
      DATA(t102) = |title|.
      DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t103.
      IF t52->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = t102 p1 = t103 ).
      ENDIF.
      DATA(t104) = |shortDescription|.
      DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t105.
      IF t52->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = t104 p1 = t105 ).
      ENDIF.
      DATA(t106) = |extendedInformation|.
      DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t107.
      IF t52->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = t106 p1 = t107 ).
      ENDIF.
      DATA(t108) = |tags|.
      DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t109.
      IF t52->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = t108 p1 = t109 ).
      ENDIF.
      DATA(t110) = |badExample|.
      DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t111.
      IF t52->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = t110 p1 = t111 ).
      ENDIF.
      DATA(t112) = |goodExample|.
      DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t113.
      IF t52->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = t112 p1 = t113 ).
      ENDIF.
      t51 = t52->key.
      DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t115) = me->conf.
      t114 = t115->zlnt_view_read_sr_15c06369f827( ).
      DATA t116 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t116.
      t37 = zcl_lnt_issue=>at_identifier( i_identifier = t38 i_message_26cb = t40 i_key = t51 i_severity = t114 i_fix = t116 ).
      t36 = t37.
      DATA(t117) = t2.
      DATA(t118) = t36.
      t117->load( ).
      APPEND t118 TO t117->items.
      t117->save( ).
    ENDDO.
    DATA(t119) = t2.
    result = t119.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_n_pblc_attrbts_cnf( me->g_c_i_sr_rl_n_pb_at_ts_n_pb_at( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_n_pblc_attrbts_cnf( me->g_c_i_sr_rl_n_pb_at_ts_n_pb_at( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_n_pblc_attrbts_cnf.
    CLEAR t1.
    CLEAR t1.
    IF i_conf IS BOUND.
      IF i_conf->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t1 ?= i_conf->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t1 IS NOT BOUND.
        IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t2 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t2.
          IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t2 ?= i_conf->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t2->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t1 = NEW zcl_lnt_n_pblc_attrbts_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_sr_rl_n_pb_at_ts_n_pb_at( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1625_bda83b38eeba.
  ENDMETHOD.
ENDCLASS.
