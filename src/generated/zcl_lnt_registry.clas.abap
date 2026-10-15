* TS: src/registry.ts:80:1 Registry
CLASS zcl_lnt_registry DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_registry.
    DATA objects TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
    DATA objects_by_type TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
    DATA dependencies TYPE REF TO zlnt_runtime_map__e02fab5a9752.
    DATA ddic_references TYPE REF TO zif_lnt_ddic_references.
    DATA msag_references TYPE REF TO zif_lnt_msag_references.
    DATA macro_references TYPE REF TO zif_lnt_macro_references.
    DATA error_namespace TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA conf TYPE REF TO zif_lnt_configuration.
    METHODS constructor IMPORTING i_conf TYPE REF TO zif_lnt_configuration OPTIONAL.
    METHODS clear_feba.
    CLASS-METHODS abaplint_version RETURNING VALUE(result) TYPE string.
    METHODS get_ddic_references RETURNING VALUE(result) TYPE REF TO zif_lnt_ddic_references.
    METHODS get_msag_references RETURNING VALUE(result) TYPE REF TO zif_lnt_msag_references.
    METHODS get_macro_references RETURNING VALUE(result) TYPE REF TO zif_lnt_macro_references.
    METHODS get_objects RETURNING VALUE(result) TYPE REF TO zif_lnt_generator_8f73cd1c.
    METHODS get_objects_by_type IMPORTING i_type_9913 TYPE string RETURNING VALUE(result) TYPE REF TO zif_lnt_generator_8f73cd1c.
    METHODS get_files RETURNING VALUE(result) TYPE REF TO zif_lnt_generator_75a8ddd7.
    METHODS get_first_object RETURNING VALUE(result) TYPE REF TO zif_lnt_object.
    METHODS get_object_count RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_ca985c56.
    METHODS get_file_by_name IMPORTING i_filename TYPE string RETURNING VALUE(result) TYPE REF TO zif_lnt_file.
    METHODS get_object IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zif_lnt_object.
    METHODS get_config RETURNING VALUE(result) TYPE REF TO zif_lnt_configuration.
    METHODS set_config IMPORTING i_conf TYPE REF TO zif_lnt_configuration RETURNING VALUE(result) TYPE REF TO zif_lnt_registry.
    METHODS in_err_nms_ins_src_rgs_ts_rgst IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE abap_bool.
    METHODS add_file IMPORTING i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zif_lnt_registry.
    METHODS update_file IMPORTING i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zif_lnt_registry.
    METHODS remove_file IMPORTING i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zif_lnt_registry.
    METHODS add_files_ccee IMPORTING i_files TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_dependency TYPE abap_bool RETURNING VALUE(result) TYPE REF TO zif_lnt_registry.
    METHODS check_duplicate_filename IMPORTING i_filename TYPE string i_files TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-METHODS filename_basename IMPORTING i_filename TYPE string RETURNING VALUE(result) TYPE string.
    METHODS add_files_179c IMPORTING i_files TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zif_lnt_registry.
    METHODS add_dependencies IMPORTING i_files TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zif_lnt_registry.
    METHODS add_dependency IMPORTING i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zif_lnt_registry.
    METHODS remove_dependency IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object.
    METHODS is_dependency IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_file_dependency IMPORTING i_filename TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS find_object_for_file IMPORTING i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zif_lnt_object.
    METHODS find_issues IMPORTING i_input_967e TYPE REF TO zcl_lnt_irun_input RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_issues_object IMPORTING i_iobj TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS prs_instn_src_rgstry_ts_rgstry RETURNING VALUE(result) TYPE REF TO zcl_lnt_registry.
    METHODS prs_asyn_inst_src_rgst_ts_rgst IMPORTING i_input_967e TYPE REF TO zcl_lnt_irun_input RETURNING VALUE(result) TYPE REF TO zlnt_runtime_prom_b6dea192572d.
    METHODS parse_private IMPORTING i_input_967e TYPE REF TO zif_lnt_object.
    METHODS is_dirty RETURNING VALUE(result) TYPE abap_bool.
    METHODS find_or_create IMPORTING i_name TYPE string i_type_9913 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zif_lnt_object.
    METHODS remove_object IMPORTING i_remove TYPE REF TO zif_lnt_object.
    METHODS find_8f95 IMPORTING i_name TYPE string i_type_9913 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zif_lnt_object.
    METHODS in_error_namespace IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS parse RETURNING VALUE(result) TYPE REF TO zif_lnt_registry.
    METHODS parse_async IMPORTING i_input_967e TYPE REF TO zcl_lnt_irun_input RETURNING VALUE(result) TYPE REF TO zlnt_runtime_prom_0ff5910e175e.
    METHODS add_files_one IMPORTING i_x TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zif_lnt_registry.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_registry IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
    DATA t3 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
    DATA(t4) = NEW zlnt_runtime_map__6ec5bb307efb( ).
    t3 = t4.
    DATA(t5) = t3.
    t2 = t5.
    me->objects = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `objects`.
    DATA t6 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
    DATA t7 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
    DATA(t8) = NEW zlnt_runtime_map__6ec5bb307efb( ).
    t7 = t8.
    DATA(t9) = t7.
    t6 = t9.
    me->objects_by_type = t6.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `objectsByType`.
    DATA t10 TYPE REF TO zlnt_runtime_map__e02fab5a9752.
    DATA t11 TYPE REF TO zlnt_runtime_map__e02fab5a9752.
    DATA(t12) = NEW zlnt_runtime_map__e02fab5a9752( ).
    t11 = t12.
    DATA(t13) = t11.
    t10 = t13.
    me->dependencies = t10.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `dependencies`.
    DATA t14 TYPE REF TO zif_lnt_registry.
    CLEAR t14.
    DATA t15 TYPE REF TO zif_lnt_configuration.
    CLEAR t15.
    DATA t16 TYPE abap_bool.
    DATA(t17) = t1.
    t16 = xsdbool( t17 IS BOUND ).
    IF t16 = abap_true.
      DATA t18 TYPE REF TO zif_lnt_configuration.
      DATA(t19) = t1.
      t18 = t19.
      t15 = t18.
    ELSE.
      DATA t20 TYPE REF TO zcl_lnt_config.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t22.
      t20 = zcl_lnt_config=>get_default( i_ver = t21 i_lang_ver = t22 ).
      t15 = t20.
    ENDIF.
    t14 = me->set_config( i_conf = t15 ).
    DATA t23 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
    DATA t24 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
    DATA(t25) = NEW zlnt_runtime_map__6ec5bb307efb( ).
    t24 = t25.
    DATA(t26) = t24.
    t23 = t26.
    me->objects = t23.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `objects`.
    DATA t27 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
    DATA t28 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
    DATA(t29) = NEW zlnt_runtime_map__6ec5bb307efb( ).
    t28 = t29.
    DATA(t30) = t28.
    t27 = t30.
    me->objects_by_type = t27.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `objectsByType`.
    DATA t31 TYPE REF TO zlnt_runtime_map__e02fab5a9752.
    DATA t32 TYPE REF TO zlnt_runtime_map__e02fab5a9752.
    DATA(t33) = NEW zlnt_runtime_map__e02fab5a9752( ).
    t32 = t33.
    DATA(t34) = t32.
    t31 = t34.
    me->dependencies = t31.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `dependencies`.
    DATA(t35) = NEW zcl_lnt_ddic_references( ).
    me->ddic_references = t35.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ddicReferences`.
    DATA(t36) = NEW zcl_lnt_msag_references( ).
    me->msag_references = t36.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `msagReferences`.
    DATA(t37) = NEW zcl_lnt_macro_references( ).
    me->macro_references = t37.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `macroReferences`.
  ENDMETHOD.

  METHOD clear_feba.
    DATA t1 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
    DATA t2 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
    DATA(t3) = NEW zlnt_runtime_map__6ec5bb307efb( ).
    t2 = t3.
    DATA(t4) = t2.
    t1 = t4.
    me->objects = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `objects`.
    DATA t5 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
    DATA t6 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
    DATA(t7) = NEW zlnt_runtime_map__6ec5bb307efb( ).
    t6 = t7.
    DATA(t8) = t6.
    t5 = t8.
    me->objects_by_type = t5.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `objectsByType`.
    DATA t9 TYPE REF TO zlnt_runtime_map__e02fab5a9752.
    DATA t10 TYPE REF TO zlnt_runtime_map__e02fab5a9752.
    DATA(t11) = NEW zlnt_runtime_map__e02fab5a9752( ).
    t10 = t11.
    DATA(t12) = t10.
    t9 = t12.
    me->dependencies = t9.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `dependencies`.
    DATA(t13) = NEW zcl_lnt_ddic_references( ).
    me->ddic_references = t13.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ddicReferences`.
    DATA(t14) = NEW zcl_lnt_msag_references( ).
    me->msag_references = t14.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `msagReferences`.
    DATA(t15) = NEW zcl_lnt_macro_references( ).
    me->macro_references = t15.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `macroReferences`.
  ENDMETHOD.

  METHOD abaplint_version.
    DATA(t1) = |\{\{ VERSION \}\}|.
    result = t1.

  ENDMETHOD.

  METHOD get_ddic_references.
    DATA(t1) = me->ddic_references.
    result = t1.

  ENDMETHOD.

  METHOD get_msag_references.
    DATA(t1) = me->msag_references.
    result = t1.

  ENDMETHOD.

  METHOD get_macro_references.
    DATA(t1) = me->macro_references.
    result = t1.

  ENDMETHOD.

  METHOD get_objects.
    DATA t1 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t2 TYPE REF TO zcl_lnt_generator_a921479b.
    DATA(t3) = me.
    t2 = NEW zcl_lnt_generator_a921479b( i_outer = t3 ).
    t1 ?= t2.
    result = t1.

  ENDMETHOD.

  METHOD get_objects_by_type.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t3 TYPE REF TO zcl_lnt_generator_b69d4f9f.
    DATA(t4) = t1.
    DATA(t5) = me.
    t3 = NEW zcl_lnt_generator_b69d4f9f( i_type_9913 = t4 i_outer = t5 ).
    t2 ?= t3.
    result = t2.

  ENDMETHOD.

  METHOD get_files.
    DATA t1 TYPE REF TO zif_lnt_generator_75a8ddd7.
    DATA t2 TYPE REF TO zcl_lnt_generator_a3e30675.
    DATA(t3) = me.
    t2 = NEW zcl_lnt_generator_a3e30675( i_outer = t3 ).
    t1 ?= t2.
    result = t1.

  ENDMETHOD.

  METHOD get_first_object.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t2) = me->objects.
    t1 = t2->keys( ).
    DATA(t3) = VALUE string( ).
    t1->dense( ).
    DATA(t4) = VALUE i( ).
    DO.
      t1->load( ).
      IF t4 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t3.
      READ TABLE t1->items INDEX t4 + 1 INTO t3.
      IF t1->has( t4 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t4 = t4 + 1.
      DATA t5 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
      DATA t6 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
      DATA(t7) = me->objects.
      DATA(t8) = t3.
      t6 = t7->get( p0 = t8 ).
      t5 = t6.
      DATA(t9) = VALUE abap_bool( ).
      DATA(t10) = VALUE abap_bool( ).
      DATA(t11) = t5.
      IF t11 IS INITIAL.
        t10 = abap_true.
      ENDIF.
      t9 = xsdbool( t10 = abap_false ).
      IF t9 = abap_true.
        DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t13 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
        DATA(t14) = t5.
        t13 = t14.
        t12 = t13->keys( ).
        DATA(t15) = VALUE string( ).
        t12->dense( ).
        DATA(t16) = VALUE i( ).
        DO.
          t12->load( ).
          IF t16 >= lines( t12->items ).
            EXIT.
          ENDIF.
          CLEAR t15.
          READ TABLE t12->items INDEX t16 + 1 INTO t15.
          IF t12->has( t16 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t16 = t16 + 1.
          DATA t17 TYPE REF TO zif_lnt_object.
          DATA t18 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
          DATA t19 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
          DATA(t20) = me->objects.
          DATA(t21) = t3.
          t19 = t20->get( p0 = t21 ).
          t18 = t19.
          DATA(t22) = t15.
          t17 = t18->get( p0 = t22 ).
          result = t17.
          RETURN.
        ENDDO.
      ENDIF.
    ENDDO.
    DATA t23 TYPE REF TO zif_lnt_object.
    CLEAR t23.
    result = t23.

  ENDMETHOD.

  METHOD get_object_count.
    DATA t1 TYPE REF TO zcl_lnt_shape_ca985c56.
    CLEAR t1.
    DATA t2 TYPE REF TO zcl_lnt_shape_ca985c56.
    CLEAR t2.
    DATA(t3) = VALUE f( ).
    DATA(t4) = CONV f( 0 ).
    t3 = t4.
    DATA(t5) = VALUE f( ).
    DATA(t6) = CONV f( 0 ).
    t5 = t6.
    DATA(t7) = VALUE f( ).
    DATA(t8) = CONV f( 0 ).
    t7 = t8.
    t2 = NEW zcl_lnt_shape_ca985c56( i_total = t3 i_normal = t5 i_dependencies = t7 ).
    CREATE OBJECT t2->zlnt_view_ownkeys_b0e8086400eb.
    t2->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    IF t2->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `total` p1 = t9 ).
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    IF t2->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `normal` p1 = t10 ).
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    IF t2->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `dependencies` p1 = t11 ).
    ENDIF.
    CREATE OBJECT t2->zlnt_json_ownkeys_70e5fd461788.
    t2->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t12) = |total|.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    IF t2->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2->zlnt_json_ownkeys_70e5fd461788->put( p0 = t12 p1 = t13 ).
    ENDIF.
    DATA(t14) = |normal|.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    IF t2->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2->zlnt_json_ownkeys_70e5fd461788->put( p0 = t14 p1 = t15 ).
    ENDIF.
    DATA(t16) = |dependencies|.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    IF t2->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2->zlnt_json_ownkeys_70e5fd461788->put( p0 = t16 p1 = t17 ).
    ENDIF.
    t1 = t2.
    DATA t18 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t18.
    DATA t19 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t19.
    DATA t20 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t20.
    DATA t21 TYPE REF TO zcl_lnt_generator_a921479b.
    CLEAR t21.
    DATA(t22) = me.
    t21 = NEW zcl_lnt_generator_a921479b( i_outer = t22 ).
    t20 ?= t21.
    t19 = t20->iterate( ).
    t18 = t19.
    DO.
      DATA(t23) = abap_true.
      IF t23 = abap_false.
        EXIT.
      ENDIF.
      DATA t24 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t24.
      DATA t25 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t25.
      DATA(t26) = t18.
      t25 = t26->next( ).
      t24 = t25.
      DATA(t27) = VALUE abap_bool( ).
      DATA(t28) = t24.
      t27 = t28->done.
      IF t27 = abap_true.
        EXIT.
      ENDIF.
      DATA t29 TYPE REF TO zif_lnt_object.
      CLEAR t29.
      DATA t30 TYPE REF TO zif_lnt_object.
      CLEAR t30.
      DATA t31 TYPE REF TO zif_lnt_object.
      CLEAR t31.
      DATA(t32) = t24.
      t31 = t32->value.
      t30 = t31.
      t29 = t30.
      DATA(t33) = t1.
      DATA(t34) = VALUE f( ).
      DATA(t35) = VALUE f( ).
      DATA(t36) = VALUE abap_bool( ).
      DATA(t37) = abap_false.
      t36 = t37.
      DATA t38 TYPE REF TO cx_root.
      CLEAR t38.
      TRY.
          DATA(t39) = VALUE f( ).
          DATA(t40) = VALUE f( ).
          DATA(t41) = t1.
          t40 = t41->total.
          DATA(t42) = CONV f( 1 ).
          t39 = t40 + t42.
          t35 = t39.
          DATA(t43) = abap_true.
          t36 = t43.
        CATCH cx_root INTO t38.
          DATA(t44) = VALUE abap_bool( ).
          DATA(t45) = t36.
          t44 = xsdbool( t45 = abap_false ).
          IF t44 = abap_true.
            DATA(t46) = t18.
            t46->close( ).
          ENDIF.
          RAISE EXCEPTION t38.
      ENDTRY.
      DATA(t47) = VALUE abap_bool( ).
      DATA(t48) = t36.
      t47 = xsdbool( t48 = abap_false ).
      IF t47 = abap_true.
        DATA(t49) = t18.
        t49->close( ).
      ENDIF.
      DATA(t50) = t35.
      t34 = t50.
      t33->total = t34.
      DELETE t33->zlnt_record_delet_0597644d88b4 WHERE table_line = `total`.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t51.
      IF t33->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t33->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `total` p1 = t51 ).
      ENDIF.
      DATA(t52) = |total|.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t53.
      IF t33->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t33->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
      ENDIF.
      DATA(t54) = VALUE abap_bool( ).
      DATA(t55) = VALUE abap_bool( ).
      DATA(t56) = VALUE abap_bool( ).
      DATA(t57) = abap_false.
      t56 = t57.
      DATA t58 TYPE REF TO cx_root.
      CLEAR t58.
      TRY.
          DATA(t59) = VALUE abap_bool( ).
          DATA t60 TYPE REF TO zif_lnt_object.
          CLEAR t60.
          DATA(t61) = t29.
          t60 = t61.
          DATA(t62) = VALUE abap_bool( ).
          DATA t63 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t63.
          DATA t64 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
          CLEAR t64.
          DATA t65 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
          CLEAR t65.
          DATA(t66) = me->dependencies.
          DATA(t67) = VALUE string( ).
          DATA(t68) = t60.
          t67 = t68->get_type( ).
          t65 = t66->get( p0 = t67 ).
          t64 = t65.
          DATA t69 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t69.
          DATA(t70) = VALUE abap_bool( ).
          DATA(t71) = t64.
          IF t71 IS INITIAL.
            t70 = abap_true.
          ENDIF.
          IF t70 = abap_true.
            DATA t72 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t72.
            t69 = t72.
          ELSE.
            DATA t73 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t73.
            DATA t74 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
            CLEAR t74.
            DATA(t75) = t64.
            t74 = t75.
            DATA(t76) = VALUE string( ).
            DATA(t77) = t60.
            t76 = t77->get_name( ).
            t73 = t74->get( p0 = t76 ).
            t69 = t73.
          ENDIF.
          t63 = t69.
          DATA t78 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t78.
          DATA(t79) = abap_true.
          IF t79 = abap_true.
            DATA(t80) = abap_true.
            DATA(t81) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t81->has = abap_true.
            t81->value = t80.
            t78 = t81.
          ELSE.
            DATA t82 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t82.
            t78 = t82.
          ENDIF.
          DATA(t83) = VALUE abap_bool( ).
          DATA(t84) = VALUE abap_bool( ).
          IF t63 IS BOUND.
            t83 = t63->has.
          ENDIF.
          IF t78 IS BOUND.
            t84 = t78->has.
          ENDIF.
          IF t83 = t84.
            IF t83 = abap_false.
              t62 = abap_true.
            ELSEIF t63->value = t78->value.
              t62 = abap_true.
            ENDIF.
          ENDIF.
          t59 = t62.
          t55 = t59.
          DATA(t85) = abap_true.
          t56 = t85.
        CATCH cx_root INTO t58.
          DATA(t86) = VALUE abap_bool( ).
          DATA(t87) = t56.
          t86 = xsdbool( t87 = abap_false ).
          IF t86 = abap_true.
            DATA(t88) = t18.
            t88->close( ).
          ENDIF.
          RAISE EXCEPTION t58.
      ENDTRY.
      DATA(t89) = VALUE abap_bool( ).
      DATA(t90) = t56.
      t89 = xsdbool( t90 = abap_false ).
      IF t89 = abap_true.
        DATA(t91) = t18.
        t91->close( ).
      ENDIF.
      DATA(t92) = t55.
      t54 = t92.
      IF t54 = abap_true.
        DATA(t93) = t1.
        DATA(t94) = VALUE f( ).
        DATA(t95) = VALUE f( ).
        DATA(t96) = VALUE abap_bool( ).
        DATA(t97) = abap_false.
        t96 = t97.
        DATA t98 TYPE REF TO cx_root.
        CLEAR t98.
        TRY.
            DATA(t99) = VALUE f( ).
            DATA(t100) = VALUE f( ).
            DATA(t101) = t1.
            t100 = t101->dependencies.
            DATA(t102) = CONV f( 1 ).
            t99 = t100 + t102.
            t95 = t99.
            DATA(t103) = abap_true.
            t96 = t103.
          CATCH cx_root INTO t98.
            DATA(t104) = VALUE abap_bool( ).
            DATA(t105) = t96.
            t104 = xsdbool( t105 = abap_false ).
            IF t104 = abap_true.
              DATA(t106) = t18.
              t106->close( ).
            ENDIF.
            RAISE EXCEPTION t98.
        ENDTRY.
        DATA(t107) = VALUE abap_bool( ).
        DATA(t108) = t96.
        t107 = xsdbool( t108 = abap_false ).
        IF t107 = abap_true.
          DATA(t109) = t18.
          t109->close( ).
        ENDIF.
        DATA(t110) = t95.
        t94 = t110.
        t93->dependencies = t94.
        DELETE t93->zlnt_record_delet_0597644d88b4 WHERE table_line = `dependencies`.
        DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t111.
        IF t93->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t93->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `dependencies` p1 = t111 ).
        ENDIF.
        DATA(t112) = |dependencies|.
        DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t113.
        IF t93->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t93->zlnt_json_ownkeys_70e5fd461788->put( p0 = t112 p1 = t113 ).
        ENDIF.
      ELSE.
        DATA(t114) = t1.
        DATA(t115) = VALUE f( ).
        DATA(t116) = VALUE f( ).
        DATA(t117) = VALUE abap_bool( ).
        DATA(t118) = abap_false.
        t117 = t118.
        DATA t119 TYPE REF TO cx_root.
        CLEAR t119.
        TRY.
            DATA(t120) = VALUE f( ).
            DATA(t121) = VALUE f( ).
            DATA(t122) = t1.
            t121 = t122->normal.
            DATA(t123) = CONV f( 1 ).
            t120 = t121 + t123.
            t116 = t120.
            DATA(t124) = abap_true.
            t117 = t124.
          CATCH cx_root INTO t119.
            DATA(t125) = VALUE abap_bool( ).
            DATA(t126) = t117.
            t125 = xsdbool( t126 = abap_false ).
            IF t125 = abap_true.
              DATA(t127) = t18.
              t127->close( ).
            ENDIF.
            RAISE EXCEPTION t119.
        ENDTRY.
        DATA(t128) = VALUE abap_bool( ).
        DATA(t129) = t117.
        t128 = xsdbool( t129 = abap_false ).
        IF t128 = abap_true.
          DATA(t130) = t18.
          t130->close( ).
        ENDIF.
        DATA(t131) = t116.
        t115 = t131.
        t114->normal = t115.
        DELETE t114->zlnt_record_delet_0597644d88b4 WHERE table_line = `normal`.
        DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t132.
        IF t114->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `normal` p1 = t132 ).
        ENDIF.
        DATA(t133) = |normal|.
        DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t134.
        IF t114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t114->zlnt_json_ownkeys_70e5fd461788->put( p0 = t133 p1 = t134 ).
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t135) = t1.
    result = t135.

  ENDMETHOD.

  METHOD get_file_by_name.
    DATA(t1) = i_filename.
    DATA(t2) = VALUE string( ).
    DATA(t3) = VALUE string( ).
    DATA(t4) = t1.
    DATA(t5) = strlen( t4 ).
    t3 = t4.
    IF t3 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t3 TO UPPER CASE.
    ELSE.
      t3 = zlnt_runtime_uppe_91169605024d=>full( t3 ).
    ENDIF.
    t2 = t3.
    DATA t6 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t6.
    DATA t7 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_generator_a921479b.
    CLEAR t9.
    DATA(t10) = me.
    t9 = NEW zcl_lnt_generator_a921479b( i_outer = t10 ).
    t8 ?= t9.
    t7 = t8->iterate( ).
    t6 = t7.
    DO.
      DATA(t11) = abap_true.
      IF t11 = abap_false.
        EXIT.
      ENDIF.
      DATA t12 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t12.
      DATA t13 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t13.
      DATA(t14) = t6.
      t13 = t14->next( ).
      t12 = t13.
      DATA(t15) = VALUE abap_bool( ).
      DATA(t16) = t12.
      t15 = t16->done.
      IF t15 = abap_true.
        EXIT.
      ENDIF.
      DATA t17 TYPE REF TO zif_lnt_object.
      CLEAR t17.
      DATA t18 TYPE REF TO zif_lnt_object.
      CLEAR t18.
      DATA t19 TYPE REF TO zif_lnt_object.
      CLEAR t19.
      DATA(t20) = t12.
      t19 = t20->value.
      t18 = t19.
      t17 = t18.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t21.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t22.
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = abap_false.
      t23 = t24.
      DATA t25 TYPE REF TO cx_root.
      CLEAR t25.
      TRY.
          DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t26.
          DATA(t27) = t17.
          t26 = t27->get_files( ).
          t22 = t26.
          DATA(t28) = abap_true.
          t23 = t28.
        CATCH cx_root INTO t25.
          DATA(t29) = VALUE abap_bool( ).
          DATA(t30) = t23.
          t29 = xsdbool( t30 = abap_false ).
          IF t29 = abap_true.
            DATA(t31) = t6.
            t31->close( ).
          ENDIF.
          RAISE EXCEPTION t25.
      ENDTRY.
      DATA(t32) = VALUE abap_bool( ).
      DATA(t33) = t23.
      t32 = xsdbool( t33 = abap_false ).
      IF t32 = abap_true.
        DATA(t34) = t6.
        t34->close( ).
      ENDIF.
      DATA(t35) = t22.
      t21 = t35.
      DATA t36 TYPE REF TO zif_lnt_file.
      CLEAR t36.
      DATA t37 TYPE REF TO object.
      CLEAR t37.
      DATA(t38) = VALUE i( ).
      DO.
        t21->load( ).
        IF t38 >= lines( t21->items ).
          EXIT.
        ENDIF.
        CLEAR t37.
        READ TABLE t21->items INDEX t38 + 1 INTO t37.
        t38 = t38 + 1.
        DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t39.
        CLEAR t36.
        IF t37 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t39 ?= t37.
          DATA t40 TYPE REF TO object.
          CLEAR t40.
          t40 = t39->as_ref( ).
          t36 ?= t40.
        ELSE.
          t36 ?= t37.
        ENDIF.
        DATA(t41) = VALUE abap_bool( ).
        DATA(t42) = VALUE abap_bool( ).
        DATA(t43) = VALUE abap_bool( ).
        DATA(t44) = abap_false.
        t43 = t44.
        DATA t45 TYPE REF TO cx_root.
        CLEAR t45.
        TRY.
            DATA(t46) = VALUE abap_bool( ).
            DATA(t47) = VALUE string( ).
            DATA(t48) = VALUE string( ).
            DATA(t49) = t36.
            t48 = t49->get_filename( ).
            DATA(t50) = strlen( t48 ).
            t47 = t48.
            IF t47 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t47 TO UPPER CASE.
            ELSE.
              t47 = zlnt_runtime_uppe_91169605024d=>full( t47 ).
            ENDIF.
            DATA(t51) = t2.
            t46 = xsdbool( t47 = t51 ).
            t42 = t46.
            DATA(t52) = abap_true.
            t43 = t52.
          CATCH cx_root INTO t45.
            DATA(t53) = VALUE abap_bool( ).
            DATA(t54) = t43.
            t53 = xsdbool( t54 = abap_false ).
            IF t53 = abap_true.
              DATA(t55) = t6.
              t55->close( ).
            ENDIF.
            RAISE EXCEPTION t45.
        ENDTRY.
        DATA(t56) = VALUE abap_bool( ).
        DATA(t57) = t43.
        t56 = xsdbool( t57 = abap_false ).
        IF t56 = abap_true.
          DATA(t58) = t6.
          t58->close( ).
        ENDIF.
        DATA(t59) = t42.
        t41 = t59.
        IF t41 = abap_true.
          DATA t60 TYPE REF TO zif_lnt_file.
          CLEAR t60.
          DATA t61 TYPE REF TO zif_lnt_file.
          CLEAR t61.
          DATA t62 TYPE REF TO zif_lnt_file.
          CLEAR t62.
          DATA(t63) = VALUE abap_bool( ).
          DATA(t64) = abap_false.
          t63 = t64.
          DATA t65 TYPE REF TO cx_root.
          CLEAR t65.
          TRY.
              DATA t66 TYPE REF TO zif_lnt_file.
              CLEAR t66.
              DATA(t67) = abap_true.
              IF t67 = abap_true.
                DATA(t68) = t36.
                t66 = t68.
              ELSE.
                DATA t69 TYPE REF TO zif_lnt_file.
                CLEAR t69.
                t66 = t69.
              ENDIF.
              t62 = t66.
              DATA(t70) = abap_true.
              t63 = t70.
            CATCH cx_root INTO t65.
              DATA(t71) = VALUE abap_bool( ).
              DATA(t72) = t63.
              t71 = xsdbool( t72 = abap_false ).
              IF t71 = abap_true.
                DATA(t73) = t6.
                t73->close( ).
              ENDIF.
              RAISE EXCEPTION t65.
          ENDTRY.
          DATA(t74) = VALUE abap_bool( ).
          DATA(t75) = t63.
          t74 = xsdbool( t75 = abap_false ).
          IF t74 = abap_true.
            DATA(t76) = t6.
            t76->close( ).
          ENDIF.
          DATA(t77) = t62.
          t61 = t77.
          t60 = t61.
          DATA(t78) = t6.
          t78->close( ).
          DATA(t79) = t60.
          result = t79.
          RETURN.
        ENDIF.
      ENDDO.
    ENDDO.
    DATA t80 TYPE REF TO zif_lnt_file.
    CLEAR t80.
    result = t80.

  ENDMETHOD.

  METHOD get_object.
    DATA(t1) = i_type_9913.
    DATA(t2) = i_name.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t5.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ELSEIF t10->has = abap_false.
      t9 = abap_true.
    ENDIF.
    t4 = t9.
    t3 = t4.
    IF t4 = abap_false.
      DATA(t11) = VALUE abap_bool( ).
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t13) = t2.
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      t14 = t15.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = t12.
      IF t17 IS INITIAL.
        t16 = abap_true.
      ELSEIF t17->has = abap_false.
        t16 = abap_true.
      ENDIF.
      t11 = t16.
      t3 = t11.
    ENDIF.
    IF t3 = abap_true.
      DATA t18 TYPE REF TO zif_lnt_object.
      CLEAR t18.
      result = t18.
      RETURN.
    ENDIF.
    DATA(t19) = VALUE string( ).
    DATA t20 TYPE string.
    DATA t21 TYPE string.
    DATA(t22) = t2.
    t21 = t22->value.
    DATA(t23) = strlen( t21 ).
    t20 = t21.
    IF t20 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t20 TO UPPER CASE.
    ELSE.
      t20 = zlnt_runtime_uppe_91169605024d=>full( t20 ).
    ENDIF.
    t19 = t20.
    DATA t24 TYPE abap_bool.
    DATA t25 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
    DATA(t26) = me->objects.
    DATA(t27) = t19.
    t25 = t26->get( p0 = t27 ).
    t24 = xsdbool( t25 IS BOUND ).
    IF t24 = abap_true.
      DATA t28 TYPE REF TO zif_lnt_object.
      DATA t29 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
      DATA t30 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
      DATA(t31) = me->objects.
      DATA(t32) = t19.
      t30 = t31->get( p0 = t32 ).
      t29 = t30.
      DATA t33 TYPE string.
      DATA(t34) = t1.
      t33 = t34->value.
      t28 = t29->get( p0 = t33 ).
      result = t28.
      RETURN.
    ENDIF.
    DATA t35 TYPE REF TO zif_lnt_object.
    CLEAR t35.
    result = t35.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t2.
    DATA t3 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t3.
    DATA t4 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_generator_a921479b.
    CLEAR t5.
    DATA(t6) = me.
    t5 = NEW zcl_lnt_generator_a921479b( i_outer = t6 ).
    t4 ?= t5.
    t3 = t4->iterate( ).
    t2 = t3.
    DO.
      DATA(t7) = abap_true.
      IF t7 = abap_false.
        EXIT.
      ENDIF.
      DATA t8 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t8.
      DATA t9 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t9.
      DATA(t10) = t2.
      t9 = t10->next( ).
      t8 = t9.
      DATA(t11) = VALUE abap_bool( ).
      DATA(t12) = t8.
      t11 = t12->done.
      IF t11 = abap_true.
        EXIT.
      ENDIF.
      DATA t13 TYPE REF TO zif_lnt_object.
      CLEAR t13.
      DATA t14 TYPE REF TO zif_lnt_object.
      CLEAR t14.
      DATA t15 TYPE REF TO zif_lnt_object.
      CLEAR t15.
      DATA(t16) = t8.
      t15 = t16->value.
      t14 = t15.
      t13 = t14.
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = abap_false.
      t17 = t18.
      DATA t19 TYPE REF TO cx_root.
      CLEAR t19.
      TRY.
          DATA(t20) = t13.
          t20->set_dirty( ).
          DATA(t21) = abap_true.
          t17 = t21.
        CATCH cx_root INTO t19.
          DATA(t22) = VALUE abap_bool( ).
          DATA(t23) = t17.
          t22 = xsdbool( t23 = abap_false ).
          IF t22 = abap_true.
            DATA(t24) = t2.
            t24->close( ).
          ENDIF.
          RAISE EXCEPTION t19.
      ENDTRY.
      DATA(t25) = VALUE abap_bool( ).
      DATA(t26) = t17.
      t25 = xsdbool( t26 = abap_false ).
      IF t25 = abap_true.
        DATA(t27) = t2.
        t27->close( ).
      ENDIF.
    ENDDO.
    DATA(t28) = t1.
    me->conf = t28.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    DATA t29 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t29.
    DATA(t30) = VALUE string( ).
    DATA t31 TYPE REF TO zcl_lnt_isyntax_settings.
    CLEAR t31.
    DATA(t32) = me->conf.
    t31 = t32->get_syntax_setttings( ).
    t30 = t31->zlnt_view_read_sr_912daad1f2d5( ).
    DATA(t33) = |i|.
    CREATE OBJECT t29 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t30 flags = t33.
    me->error_namespace = t29.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `errorNamespace`.
    DATA(t34) = me.
    result = t34.

  ENDMETHOD.

  METHOD in_err_nms_ins_src_rgs_ts_rgst.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = me->error_namespace.
    DATA(t4) = VALUE string( ).
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = t1.
    t5 = t6.
    DATA(t7) = VALUE string( ).
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t5.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ELSEIF t9->has = abap_false.
      t8 = abap_true.
    ENDIF.
    IF t8 = abap_true.
      DATA(t10) = |undefined|.
      t7 = t10.
    ELSE.
      DATA t11 TYPE string.
      DATA(t12) = t5.
      t11 = t12->value.
      t7 = t11.
    ENDIF.
    t4 = t7.
    t2 = t3->test( p0 = t4 ).
    result = t2.

  ENDMETHOD.

  METHOD add_file.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zif_lnt_registry.
    DATA t3 TYPE REF TO zif_lnt_file.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zif_lnt_registry.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t8.
    t7 = t8.
    DATA(t9) = t7.
    DATA(t10) = t3.
    t9->load( ).
    APPEND t10 TO t9->items.
    t9->save( ).
    DATA(t11) = t7.
    t6 = t11.
    t5 = me->add_files_179c( i_files = t6 ).
    t2 = t5.
    result = t2.

  ENDMETHOD.

  METHOD update_file.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zif_lnt_object.
    DATA t3 TYPE REF TO zif_lnt_object.
    DATA t4 TYPE string.
    DATA(t5) = t1.
    t4 = t5->get_object_name( ).
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t7) = t1.
    t6 = t7->get_object_type( ).
    t3 = me->find_8f95( i_name = t4 i_type_9913 = t6 ).
    t2 = t3.
    DATA(t8) = t2.
    DATA(t9) = t1.
    t8->update_file( i_file = t9 ).
    DATA(t10) = me.
    result = t10.

  ENDMETHOD.

  METHOD remove_file.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zif_lnt_object.
    DATA t3 TYPE REF TO zif_lnt_object.
    DATA t4 TYPE string.
    DATA(t5) = t1.
    t4 = t5->get_object_name( ).
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t7) = t1.
    t6 = t7->get_object_type( ).
    t3 = me->find_8f95( i_name = t4 i_type_9913 = t6 ).
    t2 = t3.
    DATA(t8) = t2.
    DATA(t9) = t1.
    t8->remove_file( i_file = t9 ).
    DATA t10 TYPE abap_bool.
    DATA t11 TYPE i.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t13) = t2.
    t12 = t13->get_files( ).
    t12->load( ).
    t11 = lines( t12->items ).
    DATA(t14) = 0.
    t10 = xsdbool( t11 = t14 ).
    IF t10 = abap_true.
      DATA(t15) = me->ddic_references.
      DATA(t16) = t2.
      t15->clear_feba( i_obj_1ed0 = t16 ).
      DATA(t17) = me->msag_references.
      DATA(t18) = t2.
      t17->clear_feba( i_obj_1ed0 = t18 ).
      DATA t19 TYPE REF TO zif_lnt_object.
      CLEAR t19.
      DATA(t20) = abap_true.
      IF t20 = abap_true.
        DATA(t21) = t2.
        t19 = t21.
      ELSE.
        DATA t22 TYPE REF TO zif_lnt_object.
        CLEAR t22.
        t19 = t22.
      ENDIF.
      me->remove_object( i_remove = t19 ).
    ENDIF.
    DATA(t23) = me.
    result = t23.

  ENDMETHOD.

  METHOD add_files_ccee.
    DATA(t1) = i_files.
    DATA(t2) = i_dependency.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t10 TYPE REF TO zcl_lnt_iglobal_config.
    DATA(t11) = me->conf.
    t10 = t11->get_global( ).
    t9 = t10->zlnt_view_read_sr_fb0e05af1c6f( ).
    t8 = t9.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = t8.
    IF t14 IS INITIAL.
      t13 = abap_true.
    ENDIF.
    IF t13 = abap_true.
      DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t15.
      t12 = t15.
    ELSE.
      DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t17) = t8.
      t16 = t17.
      t12 = t16.
    ENDIF.
    t7 = t12.
    DATA(t18) = VALUE string( ).
    t7->dense( ).
    DATA(t19) = VALUE i( ).
    DO.
      t7->load( ).
      IF t19 >= lines( t7->items ).
        EXIT.
      ENDIF.
      CLEAR t18.
      READ TABLE t7->items INDEX t19 + 1 INTO t18.
      IF t7->has( t19 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t19 = t19 + 1.
      DATA(t20) = t5.
      DATA t21 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t21.
      DATA(t22) = t18.
      DATA(t23) = |i|.
      CREATE OBJECT t21 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t22 flags = t23.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
    ENDDO.
    DATA(t24) = t5.
    t4 = t24.
    t3 = t4.
    DATA(t25) = t1.
    DATA t26 TYPE REF TO zif_lnt_file.
    CLEAR t26.
    DATA t27 TYPE REF TO object.
    CLEAR t27.
    DATA(t28) = VALUE i( ).
    DO.
      t25->load( ).
      IF t28 >= lines( t25->items ).
        EXIT.
      ENDIF.
      CLEAR t27.
      READ TABLE t25->items INDEX t28 + 1 INTO t27.
      t28 = t28 + 1.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t29.
      CLEAR t26.
      IF t27 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t29 ?= t27.
        DATA t30 TYPE REF TO object.
        t30 = t29->as_ref( ).
        t26 ?= t30.
      ELSE.
        t26 ?= t27.
      ENDIF.
      DATA t31 TYPE string.
      DATA t32 TYPE string.
      DATA(t33) = t26.
      t32 = t33->get_filename( ).
      t31 = t32.
      DATA(t34) = VALUE abap_bool( ).
      DATA(t35) = VALUE abap_bool( ).
      DATA(t36) = VALUE i( ).
      DATA t37 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t38) = t31.
      DATA(t39) = |.|.
      DATA(t40) = strlen( t38 ).
      DATA t41 TYPE i.
      DATA(t42) = VALUE i( ).
      DATA(t43) = VALUE i( ).
      DATA t44 TYPE i.
      DATA(t45) = VALUE string( ).
      CREATE OBJECT t37.
      t44 = strlen( t39 ).
      t41 = 0.
      IF t44 = 0.
        WHILE t41 < t40.
          t45 = t38+t41(1).
          APPEND t45 TO t37->items.
          t41 = t41 + 1.
        ENDWHILE.
      ELSE.
        WHILE t41 <= t40.
          FIND FIRST OCCURRENCE OF t39 IN SECTION OFFSET t41 OF t38 MATCH OFFSET t42.
          IF sy-subrc = 0.
            t43 = t42 - t41.
          ELSE.
            t42 = -1.
            t43 = t40 - t41.
          ENDIF.
          CLEAR t45.
          IF t43 > 0.
            t45 = t38+t41(t43).
          ENDIF.
          APPEND t45 TO t37->items.
          IF t42 < 0.
            EXIT.
          ENDIF.
          t41 = t42 + t44.
        ENDWHILE.
      ENDIF.
      t37->load( ).
      t36 = lines( t37->items ).
      DATA(t46) = 2.
      t35 = xsdbool( t36 <= t46 ).
      t34 = t35.
      DATA t47 TYPE abap_bool.
      DATA(t48) = t34.
      t47 = t48.
      IF t48 = abap_false.
        DATA(t49) = VALUE abap_bool( ).
        DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t50.
        DATA(t51) = abap_true.
        IF t51 = abap_true.
          DATA(t52) = t31.
          DATA(t53) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t53->has = abap_true.
          t53->value = t52.
          t50 = t53.
        ELSE.
          DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t54.
          t50 = t54.
        ENDIF.
        DATA(t55) = t3.
        t49 = zcl_lnt_exclude_helper=>is_excluded( i_filename = t50 i_exclude_patterns = t55 ).
        t47 = t49.
      ENDIF.
      IF t47 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t56 TYPE REF TO zif_lnt_object.
      DATA t57 TYPE REF TO zif_lnt_object.
      DATA t58 TYPE string.
      DATA(t59) = t26.
      t58 = t59->get_object_name( ).
      DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t61) = t26.
      t60 = t61->get_object_type( ).
      t57 = me->find_or_create( i_name = t58 i_type_9913 = t60 ).
      t56 = t57.
      DATA(t62) = VALUE abap_bool( ).
      DATA t63 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t64 TYPE REF TO zcl_lnt_iglobal_config.
      DATA(t65) = me->conf.
      t64 = t65->get_global( ).
      t63 = t64->zlnt_view_read_sr_4799a82dd6de( ).
      DATA t66 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t66.
      DATA(t67) = abap_true.
      IF t67 = abap_true.
        DATA(t68) = abap_true.
        DATA(t69) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t69->has = abap_true.
        t69->value = t68.
        t66 = t69.
      ELSE.
        DATA t70 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t70.
        t66 = t70.
      ENDIF.
      DATA(t71) = VALUE abap_bool( ).
      DATA(t72) = VALUE abap_bool( ).
      IF t63 IS BOUND.
        t71 = t63->has.
      ENDIF.
      IF t66 IS BOUND.
        t72 = t66->has.
      ENDIF.
      IF t71 = t72.
        IF t71 = abap_false.
          t62 = abap_true.
        ELSEIF t63->value = t66->value.
          t62 = abap_true.
        ENDIF.
      ENDIF.
      IF t62 = abap_true.
        DATA(t73) = t31.
        DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t75) = t56.
        t74 = t75->get_files( ).
        me->check_duplicate_filename( i_filename = t73 i_files = t74 ).
      ENDIF.
      DATA(t76) = VALUE abap_bool( ).
      DATA t77 TYPE abap_bool.
      DATA t78 TYPE abap_bool.
      DATA(t79) = t2.
      DATA(t80) = abap_false.
      t78 = xsdbool( t79 = t80 ).
      t77 = t78.
      IF t78 = abap_true.
        DATA t81 TYPE abap_bool.
        DATA(t82) = t56.
        t81 = xsdbool( t82 IS BOUND ).
        t77 = t81.
      ENDIF.
      t76 = t77.
      IF t77 = abap_true.
        DATA(t83) = VALUE abap_bool( ).
        DATA t84 TYPE REF TO zif_lnt_object.
        DATA(t85) = t56.
        t84 = t85.
        DATA(t86) = VALUE abap_bool( ).
        DATA t87 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t87.
        DATA t88 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
        DATA t89 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
        DATA(t90) = me->dependencies.
        DATA t91 TYPE string.
        DATA(t92) = t84.
        t91 = t92->get_type( ).
        t89 = t90->get( p0 = t91 ).
        t88 = t89.
        DATA t93 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t93.
        DATA(t94) = VALUE abap_bool( ).
        DATA(t95) = t88.
        IF t95 IS INITIAL.
          t94 = abap_true.
        ENDIF.
        IF t94 = abap_true.
          DATA t96 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t96.
          t93 = t96.
        ELSE.
          DATA t97 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA t98 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
          DATA(t99) = t88.
          t98 = t99.
          DATA t100 TYPE string.
          DATA(t101) = t84.
          t100 = t101->get_name( ).
          t97 = t98->get( p0 = t100 ).
          t93 = t97.
        ENDIF.
        t87 = t93.
        DATA t102 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t102.
        DATA(t103) = abap_true.
        IF t103 = abap_true.
          DATA(t104) = abap_true.
          DATA(t105) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t105->has = abap_true.
          t105->value = t104.
          t102 = t105.
        ELSE.
          DATA t106 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t106.
          t102 = t106.
        ENDIF.
        DATA(t107) = VALUE abap_bool( ).
        DATA(t108) = VALUE abap_bool( ).
        IF t87 IS BOUND.
          t107 = t87->has.
        ENDIF.
        IF t102 IS BOUND.
          t108 = t102->has.
        ENDIF.
        IF t107 = t108.
          IF t107 = abap_false.
            t86 = abap_true.
          ELSEIF t87->value = t102->value.
            t86 = abap_true.
          ENDIF.
        ENDIF.
        t83 = t86.
        t76 = t83.
      ENDIF.
      IF t76 = abap_true.
        DATA t109 TYPE REF TO zif_lnt_object.
        DATA(t110) = t56.
        t109 = t110.
        DATA(t111) = VALUE abap_bool( ).
        DATA t112 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
        DATA t113 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
        DATA(t114) = me->dependencies.
        DATA t115 TYPE string.
        DATA(t116) = t109.
        t115 = t116->get_type( ).
        t113 = t114->get( p0 = t115 ).
        t112 = t113.
        DATA(t117) = VALUE abap_bool( ).
        DATA(t118) = VALUE abap_bool( ).
        DATA(t119) = t112.
        IF t119 IS INITIAL.
          t118 = abap_true.
        ENDIF.
        IF t118 = abap_true.
          DATA(t120) = abap_true.
          t117 = t120.
        ELSE.
          DATA t121 TYPE abap_bool.
          DATA t122 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
          DATA(t123) = t112.
          t122 = t123.
          DATA t124 TYPE string.
          DATA(t125) = t109.
          t124 = t125->get_name( ).
          DELETE t122->entries WHERE k = t124.
          t121 = abap_true.
          t117 = t121.
        ENDIF.
        t111 = t117.
        DATA t126 TYPE REF TO zif_lnt_object.
        CLEAR t126.
        DATA(t127) = abap_true.
        IF t127 = abap_true.
          DATA(t128) = t109.
          t126 = t128.
        ELSE.
          DATA t129 TYPE REF TO zif_lnt_object.
          CLEAR t129.
          t126 = t129.
        ENDIF.
        me->remove_object( i_remove = t126 ).
        DATA t130 TYPE REF TO zif_lnt_object.
        DATA t131 TYPE string.
        DATA(t132) = t26.
        t131 = t132->get_object_name( ).
        DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t134) = t26.
        t133 = t134->get_object_type( ).
        t130 = me->find_or_create( i_name = t131 i_type_9913 = t133 ).
        t56 = t130.
      ENDIF.
      DATA(t135) = t56.
      DATA(t136) = t26.
      t135->add_file( i_file = t136 ).
    ENDDO.
    DATA(t137) = me.
    result = t137.

  ENDMETHOD.

  METHOD check_duplicate_filename.
    DATA(t1) = i_filename.
    DATA(t2) = i_files.
    DATA(t3) = VALUE string( ).
    DATA(t4) = VALUE string( ).
    DATA(t5) = t1.
    t4 = zcl_lnt_registry=>filename_basename( i_filename = t5 ).
    t3 = t4.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t3.
    DATA(t8) = |PACKAGE.DEVC.XML|.
    t6 = xsdbool( t7 = t8 ).
    IF t6 = abap_true.
      RETURN.
    ENDIF.
    DATA(t9) = t2.
    DATA t10 TYPE REF TO zif_lnt_file.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    DATA(t12) = VALUE i( ).
    DO.
      t9->load( ).
      IF t12 >= lines( t9->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t9->items INDEX t12 + 1 INTO t11.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      CLEAR t10.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t13 ?= t11.
        DATA t14 TYPE REF TO object.
        CLEAR t14.
        t14 = t13->as_ref( ).
        t10 ?= t14.
      ELSE.
        t10 ?= t11.
      ENDIF.
      DATA(t15) = VALUE abap_bool( ).
      DATA(t16) = VALUE string( ).
      DATA(t17) = VALUE string( ).
      DATA(t18) = t10.
      t17 = t18->get_filename( ).
      t16 = zcl_lnt_registry=>filename_basename( i_filename = t17 ).
      DATA(t19) = t3.
      t15 = xsdbool( t16 = t19 ).
      IF t15 = abap_true.
        DATA t20 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t20.
        DATA t21 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        CLEAR t21.
        DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t22.
        DATA(t23) = abap_true.
        IF t23 = abap_true.
          DATA(t24) = VALUE string( ).
          DATA(t25) = VALUE string( ).
          DATA(t26) = VALUE string( ).
          DATA(t27) = |Duplicate filename: |.
          DATA(t28) = t1.
          DATA(t29) = strlen( t27 ).
          t26 = |{ t27 }{ t28 }|.
          DATA(t30) = | already exists as |.
          DATA(t31) = strlen( t26 ).
          t25 = |{ t26 }{ t30 }|.
          DATA(t32) = VALUE string( ).
          DATA(t33) = t10.
          t32 = t33->get_filename( ).
          DATA(t34) = strlen( t25 ).
          t24 = |{ t25 }{ t32 }|.
          DATA(t35) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t35->has = abap_true.
          t35->value = t24.
          t22 = t35.
        ELSE.
          DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t36.
          t22 = t36.
        ENDIF.
        t21 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t22 ).
        t20 = NEW #( ).
        t20->payload = t21.
        CLEAR t20->source_value.
        IF t21 IS BOUND.
          DATA t37 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t37.
          DATA t38 TYPE REF TO object.
          CLEAR t38.
          CLEAR t37.
          t38 = t21.
          TRY.
              t20->source_value ?= t38.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t20->source_value IS NOT BOUND.
            TRY.
                t37 ?= t21.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t37 IS BOUND.
              t20->source_value = t37->source( ).
            ENDIF.
            IF t20->source_value IS NOT BOUND.
              CREATE OBJECT t20->source_value.
              t20->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t20->source_value->oval = t21.
            ENDIF.
          ENDIF.
        ENDIF.
        RAISE EXCEPTION t20.
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD filename_basename.
    DATA(t1) = i_filename.
    DATA t2 TYPE string.
    DATA t3 TYPE string.
    DATA(t4) = t1.
    DATA t5 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t5.
    DATA(t6) = `\\`.
    DATA(t7) = |g|.
    CREATE OBJECT t5 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t6 flags = t7 checked = abap_true.
    DATA(t8) = |/|.
    DATA(t9) = strlen( t4 ).
    t3 = t5->replace( p0 = t4 p1 = t8 ).
    t2 = t3.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t13) = t2.
    DATA(t14) = |/|.
    DATA(t15) = strlen( t13 ).
    DATA t16 TYPE i.
    DATA(t17) = VALUE i( ).
    DATA(t18) = VALUE i( ).
    DATA t19 TYPE i.
    DATA(t20) = VALUE string( ).
    CREATE OBJECT t12.
    t19 = strlen( t14 ).
    t16 = 0.
    IF t19 = 0.
      WHILE t16 < t15.
        t20 = t13+t16(1).
        APPEND t20 TO t12->items.
        t16 = t16 + 1.
      ENDWHILE.
    ELSE.
      WHILE t16 <= t15.
        FIND FIRST OCCURRENCE OF t14 IN SECTION OFFSET t16 OF t13 MATCH OFFSET t17.
        IF sy-subrc = 0.
          t18 = t17 - t16.
        ELSE.
          t17 = -1.
          t18 = t15 - t16.
        ENDIF.
        CLEAR t20.
        IF t18 > 0.
          t20 = t13+t16(t18).
        ENDIF.
        APPEND t20 TO t12->items.
        IF t17 < 0.
          EXIT.
        ENDIF.
        t16 = t17 + t19.
      ENDWHILE.
    ENDIF.
    t11 = t12->pop( ).
    t10 = t11.
    DATA(t21) = VALUE string( ).
    DATA(t22) = VALUE string( ).
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t24) = t10.
    t23 = t24.
    DATA(t25) = VALUE string( ).
    DATA(t26) = VALUE abap_bool( ).
    DATA(t27) = t23.
    IF t27 IS INITIAL.
      t26 = abap_true.
    ELSEIF t27->has = abap_false.
      t26 = abap_true.
    ENDIF.
    IF t26 = abap_true.
      DATA(t28) = t2.
      t25 = t28.
    ELSE.
      DATA t29 TYPE string.
      DATA(t30) = t23.
      t29 = t30->value.
      t25 = t29.
    ENDIF.
    t22 = t25.
    DATA(t31) = strlen( t22 ).
    t21 = t22.
    IF t21 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t21 TO UPPER CASE.
    ELSE.
      t21 = zlnt_runtime_uppe_91169605024d=>full( t21 ).
    ENDIF.
    result = t21.

  ENDMETHOD.

  METHOD add_files_179c.
    DATA(t1) = i_files.
    DATA t2 TYPE REF TO zif_lnt_registry.
    DATA(t3) = t1.
    DATA(t4) = abap_false.
    t2 = me->add_files_ccee( i_files = t3 i_dependency = t4 ).
    DATA(t5) = me.
    result = t5.

  ENDMETHOD.

  METHOD add_dependencies.
    DATA(t1) = i_files.
    DATA(t2) = t1.
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
      DATA t8 TYPE REF TO zif_lnt_registry.
      DATA(t9) = t3.
      t8 = me->add_dependency( i_file = t9 ).
    ENDDO.
    DATA(t10) = me.
    result = t10.

  ENDMETHOD.

  METHOD add_dependency.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = t1.
    t5 = t6->get_object_type( ).
    t4 = t5.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t4.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ELSEIF t9->has = abap_false.
      t8 = abap_true.
    ENDIF.
    IF t8 = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t10.
      t7 = t10.
    ELSE.
      DATA t11 TYPE string.
      DATA t12 TYPE string.
      DATA(t13) = t4.
      t12 = t13->value.
      DATA(t14) = strlen( t12 ).
      t11 = t12.
      IF t11 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t11 TO UPPER CASE.
      ELSE.
        t11 = zlnt_runtime_uppe_91169605024d=>full( t11 ).
      ENDIF.
      DATA(t15) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t15->has = abap_true.
      t15->value = t11.
      t7 = t15.
    ENDIF.
    t3 = t7.
    t2 = t3.
    DATA(t16) = VALUE abap_bool( ).
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t18) = t2.
    t17 = t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
      DATA(t23) = me.
      result = t23.
      RETURN.
    ENDIF.
    DATA(t24) = VALUE string( ).
    DATA t25 TYPE string.
    DATA t26 TYPE string.
    DATA(t27) = t1.
    t26 = t27->get_object_name( ).
    DATA(t28) = strlen( t26 ).
    t25 = t26.
    IF t25 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t25 TO UPPER CASE.
    ELSE.
      t25 = zlnt_runtime_uppe_91169605024d=>full( t25 ).
    ENDIF.
    t24 = t25.
    DATA(t29) = VALUE abap_bool( ).
    DATA t30 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    DATA t31 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    DATA(t32) = me->dependencies.
    DATA t33 TYPE string.
    DATA(t34) = t2.
    t33 = t34->value.
    t31 = t32->get( p0 = t33 ).
    t30 = t31.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    t35 = t36.
    DATA(t37) = VALUE abap_bool( ).
    DATA(t38) = t30.
    IF t38 IS INITIAL.
      t37 = abap_true.
    ENDIF.
    t29 = t37.
    IF t29 = abap_true.
      DATA t39 TYPE REF TO zlnt_runtime_map__e02fab5a9752.
      DATA(t40) = me->dependencies.
      DATA t41 TYPE string.
      DATA(t42) = t2.
      t41 = t42->value.
      DATA t43 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
      DATA t44 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
      DATA(t45) = NEW zlnt_runtime_map__45a2315f90b8( ).
      t44 = t45.
      DATA(t46) = t44.
      t43 = t46.
      t39 = t40->set( p0 = t41 p1 = t43 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    DATA t48 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    DATA t49 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    DATA(t50) = me->dependencies.
    DATA t51 TYPE string.
    DATA(t52) = t2.
    t51 = t52->value.
    t49 = t50->get( p0 = t51 ).
    t48 = t49.
    DATA(t53) = t24.
    DATA(t54) = abap_true.
    t47 = t48->set( p0 = t53 p1 = t54 ).
    DATA t55 TYPE REF TO zif_lnt_registry.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t58.
    t57 = t58.
    DATA(t59) = t57.
    DATA(t60) = t1.
    t59->load( ).
    APPEND t60 TO t59->items.
    t59->save( ).
    DATA(t61) = t57.
    t56 = t61.
    DATA(t62) = abap_true.
    t55 = me->add_files_ccee( i_files = t56 i_dependency = t62 ).
    DATA(t63) = me.
    result = t63.

  ENDMETHOD.

  METHOD remove_dependency.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    DATA t4 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    DATA(t5) = me->dependencies.
    DATA t6 TYPE string.
    DATA(t7) = t1.
    t6 = t7->get_type( ).
    t4 = t5->get( p0 = t6 ).
    t3 = t4.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t3.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    IF t9 = abap_true.
      DATA(t11) = abap_true.
      t8 = t11.
    ELSE.
      DATA t12 TYPE abap_bool.
      DATA t13 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
      DATA(t14) = t3.
      t13 = t14.
      DATA t15 TYPE string.
      DATA(t16) = t1.
      t15 = t16->get_name( ).
      DELETE t13->entries WHERE k = t15.
      t12 = abap_true.
      t8 = t12.
    ENDIF.
    t2 = t8.
    DATA t17 TYPE REF TO zif_lnt_object.
    CLEAR t17.
    DATA(t18) = abap_true.
    IF t18 = abap_true.
      DATA(t19) = t1.
      t17 = t19.
    ELSE.
      DATA t20 TYPE REF TO zif_lnt_object.
      CLEAR t20.
      t17 = t20.
    ENDIF.
    me->remove_object( i_remove = t17 ).
  ENDMETHOD.

  METHOD is_dependency.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    DATA t5 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    DATA(t6) = me->dependencies.
    DATA t7 TYPE string.
    DATA(t8) = t1.
    t7 = t8->get_type( ).
    t5 = t6->get( p0 = t7 ).
    t4 = t5.
    DATA t9 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t9.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = t4.
    IF t11 IS INITIAL.
      t10 = abap_true.
    ENDIF.
    IF t10 = abap_true.
      DATA t12 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t12.
      t9 = t12.
    ELSE.
      DATA t13 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t14 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
      DATA(t15) = t4.
      t14 = t15.
      DATA t16 TYPE string.
      DATA(t17) = t1.
      t16 = t17->get_name( ).
      t13 = t14->get( p0 = t16 ).
      t9 = t13.
    ENDIF.
    t3 = t9.
    DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t18.
    DATA(t19) = abap_true.
    IF t19 = abap_true.
      DATA(t20) = abap_true.
      DATA(t21) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t21->has = abap_true.
      t21->value = t20.
      t18 = t21.
    ELSE.
      DATA t22 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t22.
      t18 = t22.
    ENDIF.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = VALUE abap_bool( ).
    IF t3 IS BOUND.
      t23 = t3->has.
    ENDIF.
    IF t18 IS BOUND.
      t24 = t18->has.
    ENDIF.
    IF t23 = t24.
      IF t23 = abap_false.
        t2 = abap_true.
      ELSEIF t3->value = t18->value.
        t2 = abap_true.
      ENDIF.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD is_file_dependency.
    DATA(t1) = i_filename.
    DATA t2 TYPE REF TO zif_lnt_file.
    DATA t3 TYPE REF TO zif_lnt_file.
    DATA(t4) = t1.
    t3 = me->get_file_by_name( i_filename = t4 ).
    t2 = t3.
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zif_lnt_file.
    DATA(t7) = t2.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    t8 = t9.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = t6.
    IF t11 IS INITIAL.
      t10 = abap_true.
    ENDIF.
    t5 = t10.
    IF t5 = abap_true.
      DATA(t12) = abap_false.
      result = t12.
      RETURN.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t17 TYPE REF TO zif_lnt_file.
    DATA(t18) = t2.
    t17 = t18.
    t16 = t17->get_object_type( ).
    t15 = t16.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = t15.
    IF t21 IS INITIAL.
      t20 = abap_true.
    ELSEIF t21->has = abap_false.
      t20 = abap_true.
    ENDIF.
    IF t20 = abap_true.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t22.
      t19 = t22.
    ELSE.
      DATA t23 TYPE string.
      DATA t24 TYPE string.
      DATA(t25) = t15.
      t24 = t25->value.
      DATA(t26) = strlen( t24 ).
      t23 = t24.
      IF t23 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t23 TO UPPER CASE.
      ELSE.
        t23 = zlnt_runtime_uppe_91169605024d=>full( t23 ).
      ENDIF.
      DATA(t27) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t27->has = abap_true.
      t27->value = t23.
      t19 = t27.
    ENDIF.
    t14 = t19.
    t13 = t14.
    DATA(t28) = VALUE abap_bool( ).
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t30) = t13.
    t29 = t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    t31 = t32.
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = t29.
    IF t34 IS INITIAL.
      t33 = abap_true.
    ELSEIF t34->has = abap_false.
      t33 = abap_true.
    ENDIF.
    t28 = t33.
    IF t28 = abap_true.
      DATA(t35) = abap_false.
      result = t35.
      RETURN.
    ENDIF.
    DATA(t36) = VALUE string( ).
    DATA t37 TYPE string.
    DATA t38 TYPE string.
    DATA t39 TYPE REF TO zif_lnt_file.
    DATA(t40) = t2.
    t39 = t40.
    t38 = t39->get_object_name( ).
    DATA(t41) = strlen( t38 ).
    t37 = t38.
    IF t37 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t37 TO UPPER CASE.
    ELSE.
      t37 = zlnt_runtime_uppe_91169605024d=>full( t37 ).
    ENDIF.
    t36 = t37.
    DATA(t42) = VALUE abap_bool( ).
    DATA t43 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    DATA t45 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    DATA(t46) = me->dependencies.
    DATA t47 TYPE string.
    DATA(t48) = t13.
    t47 = t48->value.
    t45 = t46->get( p0 = t47 ).
    t44 = t45.
    DATA t49 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t49.
    DATA(t50) = VALUE abap_bool( ).
    DATA(t51) = t44.
    IF t51 IS INITIAL.
      t50 = abap_true.
    ENDIF.
    IF t50 = abap_true.
      DATA t52 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t52.
      t49 = t52.
    ELSE.
      DATA t53 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t54 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
      DATA(t55) = t44.
      t54 = t55.
      DATA(t56) = t36.
      t53 = t54->get( p0 = t56 ).
      t49 = t53.
    ENDIF.
    t43 = t49.
    DATA t57 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t57.
    DATA(t58) = abap_true.
    IF t58 = abap_true.
      DATA(t59) = abap_true.
      DATA(t60) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t60->has = abap_true.
      t60->value = t59.
      t57 = t60.
    ELSE.
      DATA t61 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t61.
      t57 = t61.
    ENDIF.
    DATA(t62) = VALUE abap_bool( ).
    DATA(t63) = VALUE abap_bool( ).
    IF t43 IS BOUND.
      t62 = t43->has.
    ENDIF.
    IF t57 IS BOUND.
      t63 = t57->has.
    ENDIF.
    IF t62 = t63.
      IF t62 = abap_false.
        t42 = abap_true.
      ELSEIF t43->value = t57->value.
        t42 = abap_true.
      ENDIF.
    ENDIF.
    result = t42.

  ENDMETHOD.

  METHOD find_object_for_file.
    DATA(t1) = i_file.
    DATA(t2) = VALUE string( ).
    DATA(t3) = VALUE string( ).
    DATA(t4) = t1.
    t3 = t4->get_filename( ).
    t2 = t3.
    DATA t5 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t5.
    DATA t6 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t6.
    DATA t7 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_generator_a921479b.
    CLEAR t8.
    DATA(t9) = me.
    t8 = NEW zcl_lnt_generator_a921479b( i_outer = t9 ).
    t7 ?= t8.
    t6 = t7->iterate( ).
    t5 = t6.
    DO.
      DATA(t10) = abap_true.
      IF t10 = abap_false.
        EXIT.
      ENDIF.
      DATA t11 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t12.
      DATA(t13) = t5.
      t12 = t13->next( ).
      t11 = t12.
      DATA(t14) = VALUE abap_bool( ).
      DATA(t15) = t11.
      t14 = t15->done.
      IF t14 = abap_true.
        EXIT.
      ENDIF.
      DATA t16 TYPE REF TO zif_lnt_object.
      CLEAR t16.
      DATA t17 TYPE REF TO zif_lnt_object.
      CLEAR t17.
      DATA t18 TYPE REF TO zif_lnt_object.
      CLEAR t18.
      DATA(t19) = t11.
      t18 = t19->value.
      t17 = t18.
      t16 = t17.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t20.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t21.
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = abap_false.
      t22 = t23.
      DATA t24 TYPE REF TO cx_root.
      CLEAR t24.
      TRY.
          DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t25.
          DATA(t26) = t16.
          t25 = t26->get_files( ).
          t21 = t25.
          DATA(t27) = abap_true.
          t22 = t27.
        CATCH cx_root INTO t24.
          DATA(t28) = VALUE abap_bool( ).
          DATA(t29) = t22.
          t28 = xsdbool( t29 = abap_false ).
          IF t28 = abap_true.
            DATA(t30) = t5.
            t30->close( ).
          ENDIF.
          RAISE EXCEPTION t24.
      ENDTRY.
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = t22.
      t31 = xsdbool( t32 = abap_false ).
      IF t31 = abap_true.
        DATA(t33) = t5.
        t33->close( ).
      ENDIF.
      DATA(t34) = t21.
      t20 = t34.
      DATA t35 TYPE REF TO zif_lnt_file.
      CLEAR t35.
      DATA t36 TYPE REF TO object.
      CLEAR t36.
      DATA(t37) = VALUE i( ).
      DO.
        t20->load( ).
        IF t37 >= lines( t20->items ).
          EXIT.
        ENDIF.
        CLEAR t36.
        READ TABLE t20->items INDEX t37 + 1 INTO t36.
        t37 = t37 + 1.
        DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t38.
        CLEAR t35.
        IF t36 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t38 ?= t36.
          DATA t39 TYPE REF TO object.
          CLEAR t39.
          t39 = t38->as_ref( ).
          t35 ?= t39.
        ELSE.
          t35 ?= t36.
        ENDIF.
        DATA(t40) = VALUE abap_bool( ).
        DATA(t41) = VALUE abap_bool( ).
        DATA(t42) = VALUE abap_bool( ).
        DATA(t43) = abap_false.
        t42 = t43.
        DATA t44 TYPE REF TO cx_root.
        CLEAR t44.
        TRY.
            DATA(t45) = VALUE abap_bool( ).
            DATA(t46) = VALUE string( ).
            DATA(t47) = t35.
            t46 = t47->get_filename( ).
            DATA(t48) = t2.
            t45 = xsdbool( t46 = t48 ).
            t41 = t45.
            DATA(t49) = abap_true.
            t42 = t49.
          CATCH cx_root INTO t44.
            DATA(t50) = VALUE abap_bool( ).
            DATA(t51) = t42.
            t50 = xsdbool( t51 = abap_false ).
            IF t50 = abap_true.
              DATA(t52) = t5.
              t52->close( ).
            ENDIF.
            RAISE EXCEPTION t44.
        ENDTRY.
        DATA(t53) = VALUE abap_bool( ).
        DATA(t54) = t42.
        t53 = xsdbool( t54 = abap_false ).
        IF t53 = abap_true.
          DATA(t55) = t5.
          t55->close( ).
        ENDIF.
        DATA(t56) = t41.
        t40 = t56.
        IF t40 = abap_true.
          DATA t57 TYPE REF TO zif_lnt_object.
          CLEAR t57.
          DATA t58 TYPE REF TO zif_lnt_object.
          CLEAR t58.
          DATA t59 TYPE REF TO zif_lnt_object.
          CLEAR t59.
          DATA(t60) = VALUE abap_bool( ).
          DATA(t61) = abap_false.
          t60 = t61.
          DATA t62 TYPE REF TO cx_root.
          CLEAR t62.
          TRY.
              DATA t63 TYPE REF TO zif_lnt_object.
              CLEAR t63.
              DATA(t64) = abap_true.
              IF t64 = abap_true.
                DATA(t65) = t16.
                t63 = t65.
              ELSE.
                DATA t66 TYPE REF TO zif_lnt_object.
                CLEAR t66.
                t63 = t66.
              ENDIF.
              t59 = t63.
              DATA(t67) = abap_true.
              t60 = t67.
            CATCH cx_root INTO t62.
              DATA(t68) = VALUE abap_bool( ).
              DATA(t69) = t60.
              t68 = xsdbool( t69 = abap_false ).
              IF t68 = abap_true.
                DATA(t70) = t5.
                t70->close( ).
              ENDIF.
              RAISE EXCEPTION t62.
          ENDTRY.
          DATA(t71) = VALUE abap_bool( ).
          DATA(t72) = t60.
          t71 = xsdbool( t72 = abap_false ).
          IF t71 = abap_true.
            DATA(t73) = t5.
            t73->close( ).
          ENDIF.
          DATA(t74) = t59.
          t58 = t74.
          t57 = t58.
          DATA(t75) = t5.
          t75->close( ).
          DATA(t76) = t57.
          result = t76.
          RETURN.
        ENDIF.
      ENDDO.
    ENDDO.
    DATA t77 TYPE REF TO zif_lnt_object.
    CLEAR t77.
    result = t77.

  ENDMETHOD.

  METHOD find_issues.
    DATA(t1) = i_input_967e.
    DATA t2 TYPE abap_bool.
    DATA(t3) = CONV abap_bool( me->is_dirty( ) ).
    DATA(t4) = abap_true.
    t2 = xsdbool( t3 = t4 ).
    IF t2 = abap_true.
      DATA(t5) = CAST zcl_lnt_registry( me->prs_instn_src_rgstry_ts_rgstry( ) ).
    ENDIF.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zcl_lnt_rules_runner.
    DATA(t8) = me.
    t7 = NEW zcl_lnt_rules_runner( i_reg_f149 = t8 ).
    DATA t9 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t10 TYPE REF TO zcl_lnt_generator_a921479b.
    DATA(t11) = me.
    t10 = NEW zcl_lnt_generator_a921479b( i_outer = t11 ).
    t9 ?= t10.
    DATA(t12) = t1.
    t6 = t7->run_rules( i_objects = t9 i_input_967e = t12 ).
    result = t6.

  ENDMETHOD.

  METHOD find_issues_object.
    DATA(t1) = i_iobj.
    DATA t2 TYPE abap_bool.
    DATA(t3) = CONV abap_bool( me->is_dirty( ) ).
    DATA(t4) = abap_true.
    t2 = xsdbool( t3 = t4 ).
    IF t2 = abap_true.
      DATA(t5) = CAST zcl_lnt_registry( me->prs_instn_src_rgstry_ts_rgstry( ) ).
    ENDIF.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zcl_lnt_rules_runner.
    DATA(t8) = me.
    t7 = NEW zcl_lnt_rules_runner( i_reg_f149 = t8 ).
    DATA t9 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t10 TYPE REF TO zcl_lnt_generator_7e7dc2c1.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t13.
    t12 = t13.
    DATA(t14) = t12.
    DATA(t15) = t1.
    t14->load( ).
    APPEND t15 TO t14->items.
    t14->save( ).
    DATA(t16) = t12.
    t11 = t16.
    t10 = NEW zcl_lnt_generator_7e7dc2c1( i_array = t11 ).
    t9 ?= t10.
    DATA t17 TYPE REF TO zcl_lnt_irun_input.
    CLEAR t17.
    t6 = t7->run_rules( i_objects = t9 i_input_967e = t17 ).
    result = t6.

  ENDMETHOD.

  METHOD prs_instn_src_rgstry_ts_rgstry.
    DATA(t1) = VALUE abap_bool( ).
    DATA(t2) = CONV abap_bool( me->is_dirty( ) ).
    DATA(t3) = abap_false.
    t1 = xsdbool( t2 = t3 ).
    IF t1 = abap_true.
      DATA(t4) = me.
      result = t4.
      RETURN.
    ENDIF.
    zcl_lnt_parsing_performance=>clear_feba( ).
    DATA t5 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t5.
    DATA t6 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t6.
    DATA t7 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_generator_a921479b.
    CLEAR t8.
    DATA(t9) = me.
    t8 = NEW zcl_lnt_generator_a921479b( i_outer = t9 ).
    t7 ?= t8.
    t6 = t7->iterate( ).
    t5 = t6.
    DO.
      DATA(t10) = abap_true.
      IF t10 = abap_false.
        EXIT.
      ENDIF.
      DATA t11 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t12.
      DATA(t13) = t5.
      t12 = t13->next( ).
      t11 = t12.
      DATA(t14) = VALUE abap_bool( ).
      DATA(t15) = t11.
      t14 = t15->done.
      IF t14 = abap_true.
        EXIT.
      ENDIF.
      DATA t16 TYPE REF TO zif_lnt_object.
      CLEAR t16.
      DATA t17 TYPE REF TO zif_lnt_object.
      CLEAR t17.
      DATA t18 TYPE REF TO zif_lnt_object.
      CLEAR t18.
      DATA(t19) = t11.
      t18 = t19->value.
      t17 = t18.
      t16 = t17.
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = abap_false.
      t20 = t21.
      DATA t22 TYPE REF TO cx_root.
      CLEAR t22.
      TRY.
          DATA t23 TYPE REF TO zif_lnt_object.
          CLEAR t23.
          DATA(t24) = t16.
          t23 = t24.
          DATA t25 TYPE REF TO zif_lnt_configuration.
          CLEAR t25.
          DATA(t26) = me->conf.
          t25 = t26.
          DATA t27 TYPE REF TO zcl_lnt_iparse_result.
          CLEAR t27.
          DATA t28 TYPE REF TO zcl_lnt_iparse_result.
          CLEAR t28.
          DATA(t29) = t23.
          DATA t30 TYPE REF TO zcl_lnt_abap_release.
          CLEAR t30.
          DATA(t31) = abap_true.
          IF t31 = abap_true.
            DATA t32 TYPE REF TO zcl_lnt_abap_release.
            CLEAR t32.
            DATA(t33) = t25.
            t32 = t33->get_release( ).
            t30 = t32.
          ELSE.
            DATA t34 TYPE REF TO zcl_lnt_abap_release.
            CLEAR t34.
            t30 = t34.
          ENDIF.
          DATA t35 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t35.
          DATA t36 TYPE REF TO zcl_lnt_isyntax_settings.
          CLEAR t36.
          DATA(t37) = t25.
          t36 = t37->get_syntax_setttings( ).
          t35 = t36->zlnt_view_read_sr_94cd949ccfb3( ).
          DATA(t38) = me.
          DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t39.
          DATA(t40) = abap_true.
          IF t40 = abap_true.
            DATA(t41) = VALUE string( ).
            DATA(t42) = t25.
            t41 = t42->get_language_version( ).
            DATA(t43) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t43->has = abap_true.
            t43->value = t41.
            t39 = t43.
          ELSE.
            DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t44.
            t39 = t44.
          ENDIF.
          t28 = t29->parse( i_release_7928 = t30 i_global_macros_5535 = t35 i_reg_f149 = t38 i_language_version_0e1d = t39 ).
          t27 = t28.
          DATA(t45) = t23.
          DATA(t46) = t27.
          zcl_lnt_parsing_performance=>push( i_obj_1ed0 = t45 i_result = t46 ).
          DATA(t47) = abap_true.
          t20 = t47.
        CATCH cx_root INTO t22.
          DATA(t48) = VALUE abap_bool( ).
          DATA(t49) = t20.
          t48 = xsdbool( t49 = abap_false ).
          IF t48 = abap_true.
            DATA(t50) = t5.
            t50->close( ).
          ENDIF.
          RAISE EXCEPTION t22.
      ENDTRY.
      DATA(t51) = VALUE abap_bool( ).
      DATA(t52) = t20.
      t51 = xsdbool( t52 = abap_false ).
      IF t51 = abap_true.
        DATA(t53) = t5.
        t53->close( ).
      ENDIF.
    ENDDO.
    DATA t54 TYPE REF TO zcl_lnt_cross_include_macros.
    CLEAR t54.
    DATA(t55) = me.
    t54 = NEW zcl_lnt_cross_include_macros( i_reg_f149 = t55 ).
    t54->run( ).
    DATA t56 TYPE REF TO zcl_lnt_fnd_glbl_dfntns.
    CLEAR t56.
    DATA(t57) = me.
    t56 = NEW zcl_lnt_fnd_glbl_dfntns( i_reg_f149 = t57 ).
    DATA t58 TYPE REF TO zif_lnt_progress.
    CLEAR t58.
    t56->run( i_progress = t58 ).
    DATA(t59) = me.
    result = t59.

  ENDMETHOD.

  METHOD prs_asyn_inst_src_rgst_ts_rgst.
    DATA(t1) = i_input_967e.
    DATA t2 TYPE REF TO zlnt_exception_ts_bf7a77bb9e12.
    CLEAR t2.
    TRY.
        DATA(t3) = VALUE abap_bool( ).
        DATA(t4) = CONV abap_bool( me->is_dirty( ) ).
        DATA(t5) = abap_false.
        t3 = xsdbool( t4 = t5 ).
        IF t3 = abap_true.
          DATA(t6) = NEW zlnt_runtime_prom_b6dea192572d( ).
          DATA(t7) = me.
          t6->value = t7.
          result = t6.
          RETURN.
        ENDIF.
        zcl_lnt_parsing_performance=>clear_feba( ).
        DATA(t8) = VALUE abap_bool( ).
        DATA t9 TYPE REF TO zif_lnt_progress.
        CLEAR t9.
        DATA t10 TYPE REF TO zif_lnt_progress.
        CLEAR t10.
        DATA t11 TYPE REF TO zcl_lnt_irun_input.
        CLEAR t11.
        DATA(t12) = t1.
        t11 = t12.
        DATA t13 TYPE REF TO zif_lnt_progress.
        CLEAR t13.
        DATA(t14) = VALUE abap_bool( ).
        DATA(t15) = t11.
        IF t15 IS INITIAL.
          t14 = abap_true.
        ENDIF.
        IF t14 = abap_true.
          DATA t16 TYPE REF TO zif_lnt_progress.
          CLEAR t16.
          t13 = t16.
        ELSE.
          DATA t17 TYPE REF TO zif_lnt_progress.
          CLEAR t17.
          DATA t18 TYPE REF TO zcl_lnt_irun_input.
          CLEAR t18.
          DATA(t19) = t11.
          t18 = t19.
          t17 = t18->progress.
          t13 = t17.
        ENDIF.
        t10 = t13.
        t9 = t10.
        DATA(t20) = VALUE abap_bool( ).
        DATA(t21) = VALUE abap_bool( ).
        DATA(t22) = VALUE abap_bool( ).
        DATA(t23) = t9.
        IF t23 IS INITIAL.
          t22 = abap_true.
        ENDIF.
        t21 = xsdbool( t22 = abap_false ).
        IF t21 = abap_true.
          DATA t24 TYPE REF TO zif_lnt_progress.
          CLEAR t24.
          DATA(t25) = t9.
          t24 = t25.
          DATA(t26) = VALUE f( ).
          DATA(t27) = CAST zcl_lnt_shape_ca985c56( me->get_object_count( ) ).
          t26 = t27->total.
          DATA(t28) = |Lexing and parsing|.
          t24->set( i_total = t26 i_text = t28 ).
        ENDIF.
        DATA(t29) = abap_false.
        t20 = t29.
        t8 = t20.
        DATA t30 TYPE REF TO zif_lnt_generator_8f73cd1c.
        CLEAR t30.
        DATA t31 TYPE REF TO zif_lnt_generator_8f73cd1c.
        CLEAR t31.
        DATA t32 TYPE REF TO zif_lnt_generator_8f73cd1c.
        CLEAR t32.
        DATA t33 TYPE REF TO zcl_lnt_generator_a921479b.
        CLEAR t33.
        DATA(t34) = me.
        t33 = NEW zcl_lnt_generator_a921479b( i_outer = t34 ).
        t32 ?= t33.
        t31 = t32->iterate( ).
        t30 = t31.
        DO.
          DATA(t35) = abap_true.
          IF t35 = abap_false.
            EXIT.
          ENDIF.
          DATA t36 TYPE REF TO zcl_lnt_generator_17955b8b.
          CLEAR t36.
          DATA t37 TYPE REF TO zcl_lnt_generator_17955b8b.
          CLEAR t37.
          DATA(t38) = t30.
          t37 = t38->next( ).
          t36 = t37.
          DATA(t39) = VALUE abap_bool( ).
          DATA(t40) = t36.
          t39 = t40->done.
          IF t39 = abap_true.
            EXIT.
          ENDIF.
          DATA t41 TYPE REF TO zif_lnt_object.
          CLEAR t41.
          DATA t42 TYPE REF TO zif_lnt_object.
          CLEAR t42.
          DATA t43 TYPE REF TO zif_lnt_object.
          CLEAR t43.
          DATA(t44) = t36.
          t43 = t44->value.
          t42 = t43.
          t41 = t42.
          DATA(t45) = VALUE abap_bool( ).
          DATA(t46) = abap_false.
          t45 = t46.
          DATA t47 TYPE REF TO cx_root.
          CLEAR t47.
          TRY.
              DATA t48 TYPE REF TO zlnt_runtime_prom_22216e6f7fe7.
              CLEAR t48.
              DATA t49 TYPE REF TO zif_lnt_progress.
              CLEAR t49.
              DATA t50 TYPE REF TO zif_lnt_progress.
              CLEAR t50.
              DATA t51 TYPE REF TO zcl_lnt_irun_input.
              CLEAR t51.
              DATA(t52) = t1.
              t51 = t52.
              DATA t53 TYPE REF TO zif_lnt_progress.
              CLEAR t53.
              DATA(t54) = VALUE abap_bool( ).
              DATA(t55) = t51.
              IF t55 IS INITIAL.
                t54 = abap_true.
              ENDIF.
              IF t54 = abap_true.
                DATA t56 TYPE REF TO zif_lnt_progress.
                CLEAR t56.
                t53 = t56.
              ELSE.
                DATA t57 TYPE REF TO zif_lnt_progress.
                CLEAR t57.
                DATA t58 TYPE REF TO zcl_lnt_irun_input.
                CLEAR t58.
                DATA(t59) = t51.
                t58 = t59.
                t57 = t58->progress.
                t53 = t57.
              ENDIF.
              t50 = t53.
              t49 = t50.
              DATA t60 TYPE REF TO zlnt_runtime_prom_22216e6f7fe7.
              CLEAR t60.
              DATA(t61) = VALUE abap_bool( ).
              DATA(t62) = t49.
              IF t62 IS INITIAL.
                t61 = abap_true.
              ENDIF.
              IF t61 = abap_true.
                DATA t63 TYPE REF TO zlnt_runtime_prom_22216e6f7fe7.
                CLEAR t63.
                t60 = t63.
              ELSE.
                DATA t64 TYPE REF TO zlnt_runtime_prom_22216e6f7fe7.
                CLEAR t64.
                DATA t65 TYPE REF TO zif_lnt_progress.
                CLEAR t65.
                DATA(t66) = t49.
                t65 = t66.
                DATA(t67) = VALUE string( ).
                DATA(t68) = VALUE string( ).
                DATA(t69) = VALUE string( ).
                DATA(t70) = VALUE string( ).
                DATA(t71) = VALUE string( ).
                DATA(t72) = |Lexing and parsing(|.
                DATA(t73) = VALUE string( ).
                DATA t74 TYPE REF TO zcl_lnt_abap_release.
                CLEAR t74.
                DATA(t75) = me->conf.
                t74 = t75->get_release( ).
                t73 = t74->zlnt_view_read_sr_8e17f9b6728c( ).
                DATA(t76) = strlen( t72 ).
                t71 = |{ t72 }{ t73 }|.
                DATA(t77) = |) - |.
                DATA(t78) = strlen( t71 ).
                t70 = |{ t71 }{ t77 }|.
                DATA(t79) = VALUE string( ).
                DATA(t80) = t41.
                t79 = t80->get_type( ).
                DATA(t81) = strlen( t70 ).
                t69 = |{ t70 }{ t79 }|.
                DATA(t82) = | |.
                DATA(t83) = strlen( t69 ).
                t68 = |{ t69 }{ t82 }|.
                DATA(t84) = VALUE string( ).
                DATA(t85) = t41.
                t84 = t85->get_name( ).
                DATA(t86) = strlen( t68 ).
                t67 = |{ t68 }{ t84 }|.
                t64 = t65->tick( i_text = t67 ).
                t60 = t64.
              ENDIF.
              t48 = t60.
              IF t48 IS BOUND.
                IF t48->rejection IS BOUND.
                  RAISE EXCEPTION t48->rejection.
                ENDIF.
              ENDIF.
              DATA(t87) = abap_true.
              t45 = t87.
            CATCH cx_root INTO t47.
              DATA(t88) = VALUE abap_bool( ).
              DATA(t89) = t45.
              t88 = xsdbool( t89 = abap_false ).
              IF t88 = abap_true.
                DATA(t90) = t30.
                t90->close( ).
              ENDIF.
              RAISE EXCEPTION t47.
          ENDTRY.
          DATA(t91) = VALUE abap_bool( ).
          DATA(t92) = t45.
          t91 = xsdbool( t92 = abap_false ).
          IF t91 = abap_true.
            DATA(t93) = t30.
            t93->close( ).
          ENDIF.
          DATA(t94) = VALUE abap_bool( ).
          DATA(t95) = abap_false.
          t94 = t95.
          DATA t96 TYPE REF TO cx_root.
          CLEAR t96.
          TRY.
              DATA t97 TYPE REF TO zif_lnt_object.
              CLEAR t97.
              DATA(t98) = t41.
              t97 = t98.
              DATA t99 TYPE REF TO zif_lnt_configuration.
              CLEAR t99.
              DATA(t100) = me->conf.
              t99 = t100.
              DATA t101 TYPE REF TO zcl_lnt_iparse_result.
              CLEAR t101.
              DATA t102 TYPE REF TO zcl_lnt_iparse_result.
              CLEAR t102.
              DATA(t103) = t97.
              DATA t104 TYPE REF TO zcl_lnt_abap_release.
              CLEAR t104.
              DATA(t105) = abap_true.
              IF t105 = abap_true.
                DATA t106 TYPE REF TO zcl_lnt_abap_release.
                CLEAR t106.
                DATA(t107) = t99.
                t106 = t107->get_release( ).
                t104 = t106.
              ELSE.
                DATA t108 TYPE REF TO zcl_lnt_abap_release.
                CLEAR t108.
                t104 = t108.
              ENDIF.
              DATA t109 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t109.
              DATA t110 TYPE REF TO zcl_lnt_isyntax_settings.
              CLEAR t110.
              DATA(t111) = t99.
              t110 = t111->get_syntax_setttings( ).
              t109 = t110->zlnt_view_read_sr_94cd949ccfb3( ).
              DATA(t112) = me.
              DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t113.
              DATA(t114) = abap_true.
              IF t114 = abap_true.
                DATA(t115) = VALUE string( ).
                DATA(t116) = t99.
                t115 = t116->get_language_version( ).
                DATA(t117) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t117->has = abap_true.
                t117->value = t115.
                t113 = t117.
              ELSE.
                DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t118.
                t113 = t118.
              ENDIF.
              t102 = t103->parse( i_release_7928 = t104 i_global_macros_5535 = t109 i_reg_f149 = t112 i_language_version_0e1d = t113 ).
              t101 = t102.
              DATA(t119) = t97.
              DATA(t120) = t101.
              zcl_lnt_parsing_performance=>push( i_obj_1ed0 = t119 i_result = t120 ).
              DATA(t121) = abap_true.
              t94 = t121.
            CATCH cx_root INTO t96.
              DATA(t122) = VALUE abap_bool( ).
              DATA(t123) = t94.
              t122 = xsdbool( t123 = abap_false ).
              IF t122 = abap_true.
                DATA(t124) = t30.
                t124->close( ).
              ENDIF.
              RAISE EXCEPTION t96.
          ENDTRY.
          DATA(t125) = VALUE abap_bool( ).
          DATA(t126) = t94.
          t125 = xsdbool( t126 = abap_false ).
          IF t125 = abap_true.
            DATA(t127) = t30.
            t127->close( ).
          ENDIF.
        ENDDO.
        DATA(t128) = VALUE abap_bool( ).
        DATA t129 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t129.
        DATA t130 TYPE REF TO zcl_lnt_irun_input.
        CLEAR t130.
        DATA(t131) = t1.
        t130 = t131.
        DATA t132 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t132.
        DATA(t133) = VALUE abap_bool( ).
        DATA(t134) = t130.
        IF t134 IS INITIAL.
          t133 = abap_true.
        ENDIF.
        IF t133 = abap_true.
          DATA t135 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t135.
          t132 = t135.
        ELSE.
          DATA t136 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t136.
          DATA t137 TYPE REF TO zcl_lnt_irun_input.
          CLEAR t137.
          DATA(t138) = t130.
          t137 = t138.
          t136 = t137->output_performance.
          t132 = t136.
        ENDIF.
        t129 = t132.
        DATA t139 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t139.
        DATA(t140) = abap_true.
        IF t140 = abap_true.
          DATA(t141) = abap_true.
          DATA(t142) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t142->has = abap_true.
          t142->value = t141.
          t139 = t142.
        ELSE.
          DATA t143 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t143.
          t139 = t143.
        ENDIF.
        DATA(t144) = VALUE abap_bool( ).
        DATA(t145) = VALUE abap_bool( ).
        IF t129 IS BOUND.
          t144 = t129->has.
        ENDIF.
        IF t139 IS BOUND.
          t145 = t139->has.
        ENDIF.
        IF t144 = t145.
          IF t144 = abap_false.
            t128 = abap_true.
          ELSEIF t129->value = t139->value.
            t128 = abap_true.
          ENDIF.
        ENDIF.
        IF t128 = abap_true.
          zcl_lnt_parsing_performance=>output( ).
        ENDIF.
        DATA t146 TYPE REF TO zcl_lnt_cross_include_macros.
        CLEAR t146.
        DATA(t147) = me.
        t146 = NEW zcl_lnt_cross_include_macros( i_reg_f149 = t147 ).
        t146->run( ).
        DATA t148 TYPE REF TO zcl_lnt_fnd_glbl_dfntns.
        CLEAR t148.
        DATA(t149) = me.
        t148 = NEW zcl_lnt_fnd_glbl_dfntns( i_reg_f149 = t149 ).
        DATA t150 TYPE REF TO zif_lnt_progress.
        CLEAR t150.
        DATA t151 TYPE REF TO zcl_lnt_irun_input.
        CLEAR t151.
        DATA(t152) = t1.
        t151 = t152.
        DATA t153 TYPE REF TO zif_lnt_progress.
        CLEAR t153.
        DATA(t154) = VALUE abap_bool( ).
        DATA(t155) = t151.
        IF t155 IS INITIAL.
          t154 = abap_true.
        ENDIF.
        IF t154 = abap_true.
          DATA t156 TYPE REF TO zif_lnt_progress.
          CLEAR t156.
          t153 = t156.
        ELSE.
          DATA t157 TYPE REF TO zif_lnt_progress.
          CLEAR t157.
          DATA t158 TYPE REF TO zcl_lnt_irun_input.
          CLEAR t158.
          DATA(t159) = t151.
          t158 = t159.
          t157 = t158->progress.
          t153 = t157.
        ENDIF.
        t150 = t153.
        t148->run( i_progress = t150 ).
        DATA(t160) = NEW zlnt_runtime_prom_b6dea192572d( ).
        DATA(t161) = me.
        t160->value = t161.
        result = t160.
        RETURN.
      CATCH zlnt_exception_ts_bf7a77bb9e12 INTO t2.
        result = NEW #( ).
        result->rejection = t2.
        RETURN.
    ENDTRY.
  ENDMETHOD.

  METHOD parse_private.
    DATA(t1) = i_input_967e.
    DATA t2 TYPE REF TO zif_lnt_configuration.
    DATA(t3) = me->conf.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_iparse_result.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_iparse_result.
    CLEAR t5.
    DATA(t6) = t1.
    DATA t7 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t7.
    DATA(t8) = abap_true.
    IF t8 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_abap_release.
      DATA(t10) = t2.
      t9 = t10->get_release( ).
      t7 = t9.
    ELSE.
      DATA t11 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t11.
      t7 = t11.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t13 TYPE REF TO zcl_lnt_isyntax_settings.
    DATA(t14) = t2.
    t13 = t14->get_syntax_setttings( ).
    t12 = t13->zlnt_view_read_sr_94cd949ccfb3( ).
    DATA(t15) = me.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t16.
    DATA(t17) = abap_true.
    IF t17 = abap_true.
      DATA t18 TYPE string.
      DATA(t19) = t2.
      t18 = t19->get_language_version( ).
      DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t20->has = abap_true.
      t20->value = t18.
      t16 = t20.
    ELSE.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t21.
      t16 = t21.
    ENDIF.
    t5 = t6->parse( i_release_7928 = t7 i_global_macros_5535 = t12 i_reg_f149 = t15 i_language_version_0e1d = t16 ).
    t4 = t5.
    DATA(t22) = t1.
    DATA(t23) = t4.
    zcl_lnt_parsing_performance=>push( i_obj_1ed0 = t22 i_result = t23 ).
  ENDMETHOD.

  METHOD is_dirty.
    DATA t1 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t2.
    DATA t3 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_generator_a921479b.
    CLEAR t4.
    DATA(t5) = me.
    t4 = NEW zcl_lnt_generator_a921479b( i_outer = t5 ).
    t3 ?= t4.
    t2 = t3->iterate( ).
    t1 = t2.
    DO.
      DATA(t6) = abap_true.
      IF t6 = abap_false.
        EXIT.
      ENDIF.
      DATA t7 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t7.
      DATA t8 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t8.
      DATA(t9) = t1.
      t8 = t9->next( ).
      t7 = t8.
      DATA(t10) = VALUE abap_bool( ).
      DATA(t11) = t7.
      t10 = t11->done.
      IF t10 = abap_true.
        EXIT.
      ENDIF.
      DATA t12 TYPE REF TO zif_lnt_object.
      CLEAR t12.
      DATA t13 TYPE REF TO zif_lnt_object.
      CLEAR t13.
      DATA t14 TYPE REF TO zif_lnt_object.
      CLEAR t14.
      DATA(t15) = t7.
      t14 = t15->value.
      t13 = t14.
      t12 = t13.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = abap_false.
      t19 = t20.
      DATA t21 TYPE REF TO cx_root.
      CLEAR t21.
      TRY.
          DATA(t22) = VALUE abap_bool( ).
          DATA(t23) = t12.
          t22 = t23->is_dirty( ).
          t18 = t22.
          DATA(t24) = abap_true.
          t19 = t24.
        CATCH cx_root INTO t21.
          DATA(t25) = VALUE abap_bool( ).
          DATA(t26) = t19.
          t25 = xsdbool( t26 = abap_false ).
          IF t25 = abap_true.
            DATA(t27) = t1.
            t27->close( ).
          ENDIF.
          RAISE EXCEPTION t21.
      ENDTRY.
      DATA(t28) = VALUE abap_bool( ).
      DATA(t29) = t19.
      t28 = xsdbool( t29 = abap_false ).
      IF t28 = abap_true.
        DATA(t30) = t1.
        t30->close( ).
      ENDIF.
      DATA(t31) = t18.
      t17 = t31.
      t16 = t17.
      DATA(t32) = VALUE abap_bool( ).
      DATA(t33) = VALUE abap_bool( ).
      DATA(t34) = VALUE abap_bool( ).
      DATA(t35) = abap_false.
      t34 = t35.
      DATA t36 TYPE REF TO cx_root.
      CLEAR t36.
      TRY.
          DATA(t37) = VALUE abap_bool( ).
          DATA(t38) = t16.
          DATA(t39) = abap_true.
          t37 = xsdbool( t38 = t39 ).
          t33 = t37.
          DATA(t40) = abap_true.
          t34 = t40.
        CATCH cx_root INTO t36.
          DATA(t41) = VALUE abap_bool( ).
          DATA(t42) = t34.
          t41 = xsdbool( t42 = abap_false ).
          IF t41 = abap_true.
            DATA(t43) = t1.
            t43->close( ).
          ENDIF.
          RAISE EXCEPTION t36.
      ENDTRY.
      DATA(t44) = VALUE abap_bool( ).
      DATA(t45) = t34.
      t44 = xsdbool( t45 = abap_false ).
      IF t44 = abap_true.
        DATA(t46) = t1.
        t46->close( ).
      ENDIF.
      DATA(t47) = t33.
      t32 = t47.
      IF t32 = abap_true.
        DATA(t48) = VALUE abap_bool( ).
        DATA(t49) = abap_true.
        t48 = t49.
        DATA(t50) = t1.
        t50->close( ).
        DATA(t51) = t48.
        result = t51.
        RETURN.
      ENDIF.
    ENDDO.
    DATA(t52) = abap_false.
    result = t52.

  ENDMETHOD.

  METHOD find_or_create.
    DATA(t1) = i_name.
    DATA(t2) = i_type_9913.
    DATA t3 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    CLEAR t3.
    TRY.
        DATA t4 TYPE REF TO zif_lnt_object.
        CLEAR t4.
        DATA(t5) = t1.
        DATA(t6) = t2.
        t4 = me->find_8f95( i_name = t5 i_type_9913 = t6 ).
        result = t4.
        RETURN.
      CATCH zlnt_exception_cl_30eec8e8805d INTO t3.
        DATA(t7) = t3->payload.
        DATA(t8) = VALUE string( ).
        DATA(t9) = VALUE string( ).
        DATA(t10) = t1.
        DATA(t11) = strlen( t10 ).
        t9 = t10.
        IF t9 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t9 TO UPPER CASE.
        ELSE.
          t9 = zlnt_runtime_uppe_91169605024d=>full( t9 ).
        ENDIF.
        t8 = t9.
        DATA(t12) = VALUE string( ).
        DATA(t13) = VALUE string( ).
        DATA(t14) = VALUE abap_bool( ).
        DATA(t15) = t2.
        IF t15 IS BOUND.
          IF t15->has = abap_true.
            t14 = xsdbool( strlen( t15->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t14 = abap_true.
          DATA(t16) = VALUE string( ).
          DATA(t17) = t2.
          t16 = t17->value.
          t13 = t16.
        ELSE.
          DATA(t18) = |UNKNOWN|.
          t13 = t18.
        ENDIF.
        t12 = t13.
        DATA t19 TYPE REF TO zif_lnt_object.
        CLEAR t19.
        DATA t20 TYPE REF TO zif_lnt_object.
        CLEAR t20.
        DATA(t21) = t8.
        DATA(t22) = t12.
        t20 = zcl_lnt_artifacts_objects=>new_object( i_name = t21 i_type_9913 = t22 ).
        t19 = t20.
        DATA(t23) = VALUE abap_bool( ).
        DATA t24 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
        CLEAR t24.
        DATA t25 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
        CLEAR t25.
        DATA(t26) = me->objects.
        DATA(t27) = t8.
        t25 = t26->get( p0 = t27 ).
        t24 = t25.
        DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t28.
        DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t29.
        t28 = t29.
        DATA(t30) = VALUE abap_bool( ).
        DATA(t31) = t24.
        IF t31 IS INITIAL.
          t30 = abap_true.
        ENDIF.
        t23 = t30.
        IF t23 = abap_true.
          DATA t32 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
          CLEAR t32.
          DATA(t33) = me->objects.
          DATA(t34) = t8.
          DATA t35 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
          CLEAR t35.
          DATA t36 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
          CLEAR t36.
          DATA(t37) = NEW zlnt_runtime_map__b4fe03e97505( ).
          t36 = t37.
          DATA(t38) = t36.
          t35 = t38.
          t32 = t33->set( p0 = t34 p1 = t35 ).
        ENDIF.
        DATA t39 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
        CLEAR t39.
        DATA t40 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
        CLEAR t40.
        DATA t41 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
        CLEAR t41.
        DATA(t42) = me->objects.
        DATA(t43) = t8.
        t41 = t42->get( p0 = t43 ).
        t40 = t41.
        DATA(t44) = t12.
        DATA(t45) = t19.
        t39 = t40->set( p0 = t44 p1 = t45 ).
        DATA(t46) = VALUE abap_bool( ).
        DATA t47 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
        CLEAR t47.
        DATA t48 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
        CLEAR t48.
        DATA(t49) = me->objects_by_type.
        DATA(t50) = t12.
        t48 = t49->get( p0 = t50 ).
        t47 = t48.
        DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t51.
        DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t52.
        t51 = t52.
        DATA(t53) = VALUE abap_bool( ).
        DATA(t54) = t47.
        IF t54 IS INITIAL.
          t53 = abap_true.
        ENDIF.
        t46 = t53.
        IF t46 = abap_true.
          DATA t55 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
          CLEAR t55.
          DATA(t56) = me->objects_by_type.
          DATA(t57) = t12.
          DATA t58 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
          CLEAR t58.
          DATA t59 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
          CLEAR t59.
          DATA(t60) = NEW zlnt_runtime_map__b4fe03e97505( ).
          t59 = t60.
          DATA(t61) = t59.
          t58 = t61.
          t55 = t56->set( p0 = t57 p1 = t58 ).
        ENDIF.
        DATA t62 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
        CLEAR t62.
        DATA t63 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
        CLEAR t63.
        DATA t64 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
        CLEAR t64.
        DATA(t65) = me->objects_by_type.
        DATA(t66) = t12.
        t64 = t65->get( p0 = t66 ).
        t63 = t64.
        DATA(t67) = t8.
        DATA(t68) = t19.
        t62 = t63->set( p0 = t67 p1 = t68 ).
        DATA(t69) = t19.
        result = t69.
        RETURN.
    ENDTRY.
  ENDMETHOD.

  METHOD remove_object.
    DATA(t1) = i_remove.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zif_lnt_object.
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
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      RETURN.
    ENDIF.
    DATA(t9) = VALUE abap_bool( ).
    DATA t10 TYPE REF TO zif_lnt_object.
    CLEAR t10.
    DATA t11 TYPE REF TO zif_lnt_object.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
    CLEAR t13.
    DATA(t14) = me->objects.
    DATA(t15) = VALUE string( ).
    DATA t16 TYPE REF TO zif_lnt_object.
    CLEAR t16.
    DATA(t17) = t1.
    t16 = t17.
    t15 = t16->get_name( ).
    t13 = t14->get( p0 = t15 ).
    t12 = t13.
    DATA(t18) = VALUE string( ).
    DATA t19 TYPE REF TO zif_lnt_object.
    CLEAR t19.
    DATA(t20) = t1.
    t19 = t20.
    t18 = t19->get_type( ).
    t11 = t12->get( p0 = t18 ).
    t10 = t11.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    t21 = t22.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = t10.
    IF t24 IS INITIAL.
      t23 = abap_true.
    ENDIF.
    t9 = t23.
    IF t9 = abap_true.
      DATA t25 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t25.
      DATA t26 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t26.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      DATA(t28) = abap_true.
      IF t28 = abap_true.
        DATA(t29) = |removeObject: object not found|.
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
    ENDIF.
    DATA(t34) = VALUE abap_bool( ).
    DATA(t35) = VALUE i( ).
    DATA t36 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
    CLEAR t38.
    DATA(t39) = me->objects.
    DATA(t40) = VALUE string( ).
    DATA t41 TYPE REF TO zif_lnt_object.
    CLEAR t41.
    DATA(t42) = t1.
    t41 = t42.
    t40 = t41->get_name( ).
    t38 = t39->get( p0 = t40 ).
    t37 = t38.
    t36 = t37->keys( ).
    t36->load( ).
    t35 = lines( t36->items ).
    DATA(t43) = 1.
    t34 = xsdbool( t35 = t43 ).
    IF t34 = abap_true.
      DATA(t44) = VALUE abap_bool( ).
      DATA(t45) = me->objects.
      DATA(t46) = VALUE string( ).
      DATA t47 TYPE REF TO zif_lnt_object.
      CLEAR t47.
      DATA(t48) = t1.
      t47 = t48.
      t46 = t47->get_name( ).
      DELETE t45->entries WHERE k = t46.
      t44 = abap_true.
    ELSE.
      DATA(t49) = VALUE abap_bool( ).
      DATA t50 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
      CLEAR t50.
      DATA t51 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
      CLEAR t51.
      DATA(t52) = me->objects.
      DATA(t53) = VALUE string( ).
      DATA t54 TYPE REF TO zif_lnt_object.
      CLEAR t54.
      DATA(t55) = t1.
      t54 = t55.
      t53 = t54->get_name( ).
      t51 = t52->get( p0 = t53 ).
      t50 = t51.
      DATA(t56) = VALUE abap_bool( ).
      DATA(t57) = VALUE abap_bool( ).
      DATA(t58) = t50.
      IF t58 IS INITIAL.
        t57 = abap_true.
      ENDIF.
      IF t57 = abap_true.
        DATA(t59) = abap_true.
        t56 = t59.
      ELSE.
        DATA(t60) = VALUE abap_bool( ).
        DATA t61 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
        CLEAR t61.
        DATA(t62) = t50.
        t61 = t62.
        DATA(t63) = VALUE string( ).
        DATA t64 TYPE REF TO zif_lnt_object.
        CLEAR t64.
        DATA(t65) = t1.
        t64 = t65.
        t63 = t64->get_type( ).
        DELETE t61->entries WHERE k = t63.
        t60 = abap_true.
        t56 = t60.
      ENDIF.
      t49 = t56.
    ENDIF.
    DATA(t66) = VALUE abap_bool( ).
    DATA(t67) = VALUE i( ).
    DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t68.
    DATA t69 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
    CLEAR t69.
    DATA t70 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
    CLEAR t70.
    DATA(t71) = me->objects_by_type.
    DATA(t72) = VALUE string( ).
    DATA t73 TYPE REF TO zif_lnt_object.
    CLEAR t73.
    DATA(t74) = t1.
    t73 = t74.
    t72 = t73->get_type( ).
    t70 = t71->get( p0 = t72 ).
    t69 = t70.
    t68 = t69->keys( ).
    t68->load( ).
    t67 = lines( t68->items ).
    DATA(t75) = 1.
    t66 = xsdbool( t67 = t75 ).
    IF t66 = abap_true.
      DATA(t76) = VALUE abap_bool( ).
      DATA(t77) = me->objects_by_type.
      DATA(t78) = VALUE string( ).
      DATA t79 TYPE REF TO zif_lnt_object.
      CLEAR t79.
      DATA(t80) = t1.
      t79 = t80.
      t78 = t79->get_type( ).
      DELETE t77->entries WHERE k = t78.
      t76 = abap_true.
    ELSE.
      DATA(t81) = VALUE abap_bool( ).
      DATA t82 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
      CLEAR t82.
      DATA t83 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
      CLEAR t83.
      DATA(t84) = me->objects_by_type.
      DATA(t85) = VALUE string( ).
      DATA t86 TYPE REF TO zif_lnt_object.
      CLEAR t86.
      DATA(t87) = t1.
      t86 = t87.
      t85 = t86->get_type( ).
      t83 = t84->get( p0 = t85 ).
      t82 = t83.
      DATA(t88) = VALUE abap_bool( ).
      DATA(t89) = VALUE abap_bool( ).
      DATA(t90) = t82.
      IF t90 IS INITIAL.
        t89 = abap_true.
      ENDIF.
      IF t89 = abap_true.
        DATA(t91) = abap_true.
        t88 = t91.
      ELSE.
        DATA(t92) = VALUE abap_bool( ).
        DATA t93 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
        CLEAR t93.
        DATA(t94) = t82.
        t93 = t94.
        DATA(t95) = VALUE string( ).
        DATA t96 TYPE REF TO zif_lnt_object.
        CLEAR t96.
        DATA(t97) = t1.
        t96 = t97.
        t95 = t96->get_name( ).
        DELETE t93->entries WHERE k = t95.
        t92 = abap_true.
        t88 = t92.
      ENDIF.
      t81 = t88.
    ENDIF.
  ENDMETHOD.

  METHOD find_8f95.
    DATA(t1) = i_name.
    DATA(t2) = i_type_9913.
    DATA(t3) = VALUE string( ).
    DATA(t4) = VALUE string( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t2.
    IF t6 IS BOUND.
      IF t6->has = abap_true.
        t5 = xsdbool( strlen( t6->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t5 = abap_true.
      DATA(t7) = VALUE string( ).
      DATA(t8) = t2.
      t7 = t8->value.
      t4 = t7.
    ELSE.
      DATA(t9) = |UNKNOWN|.
      t4 = t9.
    ENDIF.
    t3 = t4.
    DATA(t10) = VALUE string( ).
    DATA(t11) = VALUE string( ).
    DATA(t12) = t1.
    DATA(t13) = strlen( t12 ).
    t11 = t12.
    IF t11 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t11 TO UPPER CASE.
    ELSE.
      t11 = zlnt_runtime_uppe_91169605024d=>full( t11 ).
    ENDIF.
    t10 = t11.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = VALUE abap_bool( ).
    DATA t16 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
    CLEAR t17.
    DATA(t18) = me->objects.
    DATA(t19) = t10.
    t17 = t18->get( p0 = t19 ).
    t16 = t17.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    t20 = t21.
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = t16.
    IF t24 IS INITIAL.
      t23 = abap_true.
    ENDIF.
    t22 = xsdbool( t23 = abap_false ).
    t15 = t22.
    t14 = t15.
    IF t15 = abap_true.
      DATA(t25) = VALUE abap_bool( ).
      DATA t26 TYPE REF TO zif_lnt_object.
      CLEAR t26.
      DATA t27 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
      CLEAR t27.
      DATA t28 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
      CLEAR t28.
      DATA(t29) = me->objects.
      DATA(t30) = t10.
      t28 = t29->get( p0 = t30 ).
      t27 = t28.
      DATA(t31) = t3.
      t26 = t27->get( p0 = t31 ).
      t25 = xsdbool( t26 IS BOUND ).
      t14 = t25.
    ENDIF.
    IF t14 = abap_true.
      DATA t32 TYPE REF TO zif_lnt_object.
      CLEAR t32.
      DATA t33 TYPE REF TO zif_lnt_object.
      CLEAR t33.
      DATA t34 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
      CLEAR t34.
      DATA t35 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
      CLEAR t35.
      DATA(t36) = me->objects.
      DATA(t37) = t10.
      t35 = t36->get( p0 = t37 ).
      t34 = t35.
      DATA(t38) = t3.
      t33 = t34->get( p0 = t38 ).
      t32 = t33.
      result = t32.
      RETURN.
    ENDIF.
    DATA t39 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    CLEAR t39.
    DATA t40 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    DATA(t42) = abap_true.
    IF t42 = abap_true.
      DATA(t43) = VALUE string( ).
      DATA(t44) = VALUE string( ).
      DATA(t45) = VALUE string( ).
      DATA(t46) = |find: object not found, |.
      DATA(t47) = VALUE string( ).
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t48.
      DATA(t49) = t2.
      t48 = t49.
      DATA(t50) = VALUE string( ).
      DATA(t51) = VALUE abap_bool( ).
      DATA(t52) = t48.
      IF t52 IS INITIAL.
        t51 = abap_true.
      ELSEIF t52->has = abap_false.
        t51 = abap_true.
      ENDIF.
      IF t51 = abap_true.
        DATA(t53) = |undefined|.
        t50 = t53.
      ELSE.
        DATA(t54) = VALUE string( ).
        DATA(t55) = t48.
        t54 = t55->value.
        t50 = t54.
      ENDIF.
      t47 = t50.
      DATA(t56) = strlen( t46 ).
      t45 = |{ t46 }{ t47 }|.
      DATA(t57) = | |.
      DATA(t58) = strlen( t45 ).
      t44 = |{ t45 }{ t57 }|.
      DATA(t59) = t1.
      DATA(t60) = strlen( t44 ).
      t43 = |{ t44 }{ t59 }|.
      DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t61->has = abap_true.
      t61->value = t43.
      t41 = t61.
    ELSE.
      DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t62.
      t41 = t62.
    ENDIF.
    t40 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t41 ).
    t39 = NEW #( ).
    t39->payload = t40.
    CLEAR t39->source_value.
    IF t40 IS BOUND.
      DATA t63 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t63.
      DATA t64 TYPE REF TO object.
      CLEAR t64.
      CLEAR t63.
      t64 = t40.
      TRY.
          t39->source_value ?= t64.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t39->source_value IS NOT BOUND.
        TRY.
            t63 ?= t40.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t63 IS BOUND.
          t39->source_value = t63->source( ).
        ENDIF.
        IF t39->source_value IS NOT BOUND.
          CREATE OBJECT t39->source_value.
          t39->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t39->source_value->oval = t40.
        ENDIF.
      ENDIF.
    ENDIF.
    RAISE EXCEPTION t39.
  ENDMETHOD.

  METHOD in_error_namespace.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t3.
    DATA(t4) = abap_true.
    IF t4 = abap_true.
      DATA(t5) = t1.
      DATA(t6) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t6->has = abap_true.
      t6->value = t5.
      t3 = t6.
    ELSE.
      DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t7.
      t3 = t7.
    ENDIF.
    t2 = me->in_err_nms_ins_src_rgs_ts_rgst( i_name = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD parse.
    DATA(t1) = CAST zcl_lnt_registry( me->prs_instn_src_rgstry_ts_rgstry( ) ).
    result = t1.

  ENDMETHOD.

  METHOD parse_async.
    DATA(t1) = i_input_967e.
    DATA t2 TYPE REF TO zlnt_exception_ts_bf7a77bb9e12.
    CLEAR t2.
    TRY.
        DATA(t3) = NEW zlnt_runtime_prom_0ff5910e175e( ).
        DATA t4 TYPE REF TO zif_lnt_registry.
        CLEAR t4.
        DATA t5 TYPE REF TO zcl_lnt_registry.
        CLEAR t5.
        DATA t6 TYPE REF TO zlnt_runtime_prom_b6dea192572d.
        CLEAR t6.
        DATA(t7) = t1.
        t6 = me->prs_asyn_inst_src_rgst_ts_rgst( i_input_967e = t7 ).
        IF t6 IS NOT BOUND.
          DATA(t8) = NEW zlnt_exception_un_5f2d02892fe8( ).
          DATA(t9) = |await provider did not return a certified settled promise|.
          t8->source_location = t9.
          RAISE EXCEPTION t8.
        ENDIF.
        IF t6->rejection IS BOUND.
          RAISE EXCEPTION t6->rejection.
        ENDIF.
        t5 = t6->value.
        DATA t10 TYPE REF TO object.
        CLEAR t10.
        t10 = t5.
        t4 ?= t10.
        t3->value = t4.
        result = t3.
        RETURN.
      CATCH zlnt_exception_ts_bf7a77bb9e12 INTO t2.
        result = NEW #( ).
        result->rejection = t2.
        RETURN.
    ENDTRY.
  ENDMETHOD.

  METHOD add_files_one.
    DATA(t1) = i_x.
    DATA t2 TYPE REF TO zif_lnt_registry.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA(t6) = t4.
    DATA(t7) = t1.
    t6->load( ).
    APPEND t7 TO t6->items.
    t6->save( ).
    DATA(t8) = t4.
    t3 = t8.
    t2 = me->add_files_179c( i_files = t3 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1378_86e487194f1c.
  ENDMETHOD.

  METHOD zif_lnt_registry~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_registry~parse.
    result = me->parse( ).
  ENDMETHOD.

  METHOD zif_lnt_registry~parse_async.
    result = me->parse_async( i_input_967e = i_input_967e ).
  ENDMETHOD.

  METHOD zif_lnt_registry~clear_feba.
    me->clear_feba( ).
  ENDMETHOD.

  METHOD zif_lnt_registry~add_dependencies.
    result = me->add_dependencies( i_files = i_files ).
  ENDMETHOD.

  METHOD zif_lnt_registry~add_dependency.
    result = me->add_dependency( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_registry~remove_dependency.
    me->remove_dependency( i_obj_1ed0 = i_obj_1ed0 ).
  ENDMETHOD.

  METHOD zif_lnt_registry~is_dependency.
    result = me->is_dependency( i_obj_1ed0 = i_obj_1ed0 ).
  ENDMETHOD.

  METHOD zif_lnt_registry~is_file_dependency.
    result = me->is_file_dependency( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_registry~find_issues.
    result = me->find_issues( i_input_967e = i_input_967e ).
  ENDMETHOD.

  METHOD zif_lnt_registry~find_issues_object.
    result = me->find_issues_object( i_iobj = i_iobj ).
  ENDMETHOD.

  METHOD zif_lnt_registry~in_error_namespace.
    result = me->in_error_namespace( i_name = i_name ).
  ENDMETHOD.

  METHOD zif_lnt_registry~get_ddic_references.
    result = me->get_ddic_references( ).
  ENDMETHOD.

  METHOD zif_lnt_registry~get_msag_references.
    result = me->get_msag_references( ).
  ENDMETHOD.

  METHOD zif_lnt_registry~get_macro_references.
    result = me->get_macro_references( ).
  ENDMETHOD.

  METHOD zif_lnt_registry~get_config.
    result = me->get_config( ).
  ENDMETHOD.

  METHOD zif_lnt_registry~set_config.
    result = me->set_config( i_conf = i_conf ).
  ENDMETHOD.

  METHOD zif_lnt_registry~get_objects.
    result = me->get_objects( ).
  ENDMETHOD.

  METHOD zif_lnt_registry~get_objects_by_type.
    result = me->get_objects_by_type( i_type_9913 = i_type_9913 ).
  ENDMETHOD.

  METHOD zif_lnt_registry~get_object_count.
    result = me->get_object_count( ).
  ENDMETHOD.

  METHOD zif_lnt_registry~get_first_object.
    result = me->get_first_object( ).
  ENDMETHOD.

  METHOD zif_lnt_registry~get_object.
    result = me->get_object( i_type_9913 = i_type_9913 i_name = i_name ).
  ENDMETHOD.

  METHOD zif_lnt_registry~find_object_for_file.
    result = me->find_object_for_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_registry~add_file.
    result = me->add_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_registry~update_file.
    result = me->update_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_registry~remove_file.
    result = me->remove_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_registry~add_files_179c.
    result = me->add_files_179c( i_files = i_files ).
  ENDMETHOD.

  METHOD zif_lnt_registry~get_file_by_name.
    result = me->get_file_by_name( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_registry~get_files.
    result = me->get_files( ).
  ENDMETHOD.

  METHOD zif_lnt_registry~add_files_one.
    result = me->add_files_one( i_x = i_x ).
  ENDMETHOD.
ENDCLASS.
