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
    me->objects = NEW zlnt_runtime_map__6ec5bb307efb( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `objects`.
    me->objects_by_type = NEW zlnt_runtime_map__6ec5bb307efb( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `objectsByType`.
    me->dependencies = NEW zlnt_runtime_map__e02fab5a9752( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `dependencies`.
    DATA t14 TYPE REF TO zif_lnt_registry.
    DATA t15 TYPE REF TO zif_lnt_configuration.
    IF xsdbool( t1 IS BOUND ) = abap_true.
      t15 = t1.
    ELSE.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t15 = zcl_lnt_config=>get_default( i_ver = t21 i_lang_ver = t22 ).
    ENDIF.
    t14 = me->set_config( i_conf = t15 ).
    me->objects = NEW zlnt_runtime_map__6ec5bb307efb( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `objects`.
    me->objects_by_type = NEW zlnt_runtime_map__6ec5bb307efb( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `objectsByType`.
    me->dependencies = NEW zlnt_runtime_map__e02fab5a9752( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `dependencies`.
    me->ddic_references = NEW zcl_lnt_ddic_references( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ddicReferences`.
    me->msag_references = NEW zcl_lnt_msag_references( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `msagReferences`.
    me->macro_references = NEW zcl_lnt_macro_references( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `macroReferences`.
  ENDMETHOD.

  METHOD clear_feba.
    me->objects = NEW zlnt_runtime_map__6ec5bb307efb( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `objects`.
    me->objects_by_type = NEW zlnt_runtime_map__6ec5bb307efb( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `objectsByType`.
    me->dependencies = NEW zlnt_runtime_map__e02fab5a9752( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `dependencies`.
    me->ddic_references = NEW zcl_lnt_ddic_references( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ddicReferences`.
    me->msag_references = NEW zcl_lnt_msag_references( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `msagReferences`.
    me->macro_references = NEW zcl_lnt_macro_references( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `macroReferences`.
  ENDMETHOD.

  METHOD abaplint_version.
    result = |\{\{ VERSION \}\}|.

  ENDMETHOD.

  METHOD get_ddic_references.
    result = me->ddic_references.

  ENDMETHOD.

  METHOD get_msag_references.
    result = me->msag_references.

  ENDMETHOD.

  METHOD get_macro_references.
    result = me->macro_references.

  ENDMETHOD.

  METHOD get_objects.
    DATA t1 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t2 TYPE REF TO zcl_lnt_generator_a921479b.
    t2 = NEW zcl_lnt_generator_a921479b( i_outer = me ).
    t1 ?= t2.
    result = t1.

  ENDMETHOD.

  METHOD get_objects_by_type.
    DATA t2 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t3 TYPE REF TO zcl_lnt_generator_b69d4f9f.
    DATA(t4) = i_type_9913.
    t3 = NEW zcl_lnt_generator_b69d4f9f( i_type_9913 = t4 i_outer = me ).
    t2 ?= t3.
    result = t2.

  ENDMETHOD.

  METHOD get_files.
    DATA t1 TYPE REF TO zif_lnt_generator_75a8ddd7.
    DATA t2 TYPE REF TO zcl_lnt_generator_a3e30675.
    t2 = NEW zcl_lnt_generator_a3e30675( i_outer = me ).
    t1 ?= t2.
    result = t1.

  ENDMETHOD.

  METHOD get_first_object.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t1 = me->objects->keys( ).
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
      t5 = me->objects->get( p0 = t3 ).
      IF xsdbool( xsdbool( t5 IS INITIAL ) = abap_false ) = abap_true.
        DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t12 = t5->keys( ).
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
          result = me->objects->get( p0 = t3 )->get( p0 = t15 ).
          RETURN.
        ENDDO.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD get_object_count.
    DATA t1 TYPE REF TO zcl_lnt_shape_ca985c56.
    DATA t2 TYPE REF TO zcl_lnt_shape_ca985c56.
    t2 = NEW zcl_lnt_shape_ca985c56( i_total = CONV f( 0 ) i_normal = CONV f( 0 ) i_dependencies = CONV f( 0 ) ).
    CREATE OBJECT t2->zlnt_view_ownkeys_b0e8086400eb.
    t2->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `total` p1 = t9 ).
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `normal` p1 = t10 ).
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t2->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `dependencies` p1 = t11 ).
    ENDIF.
    CREATE OBJECT t2->zlnt_json_ownkeys_70e5fd461788.
    t2->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2->zlnt_json_ownkeys_70e5fd461788->put( p0 = |total| p1 = t13 ).
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2->zlnt_json_ownkeys_70e5fd461788->put( p0 = |normal| p1 = t15 ).
    ENDIF.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t2->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t2->zlnt_json_ownkeys_70e5fd461788->put( p0 = |dependencies| p1 = t17 ).
    ENDIF.
    t1 = t2.
    DATA t18 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t20 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t21 TYPE REF TO zcl_lnt_generator_a921479b.
    t21 = NEW zcl_lnt_generator_a921479b( i_outer = me ).
    t20 ?= t21.
    t18 = t20->iterate( ).
    DO.
      DATA t24 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t24.
      t24 = t18->next( ).
      IF t24->done = abap_true.
        EXIT.
      ENDIF.
      DATA t31 TYPE REF TO zif_lnt_object.
      CLEAR t31.
      t31 = t24->value.
      DATA(t35) = VALUE f( ).
      DATA(t36) = VALUE abap_bool( ).
      t36 = abap_false.
      DATA t38 TYPE REF TO cx_root.
      CLEAR t38.
      TRY.
          DATA(t40) = VALUE f( ).
          t40 = t1->total.
          DATA(t42) = CONV f( 1 ).
          t35 = t40 + t42.
          t36 = abap_true.
        CATCH cx_root INTO t38.
          IF xsdbool( t36 = abap_false ) = abap_true.
            t18->close( ).
          ENDIF.
          RAISE EXCEPTION t38.
      ENDTRY.
      IF xsdbool( t36 = abap_false ) = abap_true.
        t18->close( ).
      ENDIF.
      t1->total = t35.
      DELETE t1->zlnt_record_delet_0597644d88b4 WHERE table_line = `total`.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t51.
      IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `total` p1 = t51 ).
      ENDIF.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t53.
      IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |total| p1 = t53 ).
      ENDIF.
      DATA(t55) = VALUE abap_bool( ).
      DATA(t56) = VALUE abap_bool( ).
      t56 = abap_false.
      DATA t58 TYPE REF TO cx_root.
      CLEAR t58.
      TRY.
          DATA t60 TYPE REF TO zif_lnt_object.
          CLEAR t60.
          t60 = t31.
          DATA(t62) = VALUE abap_bool( ).
          DATA t63 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t63.
          DATA t64 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
          CLEAR t64.
          t64 = me->dependencies->get( p0 = t60->get_type( ) ).
          DATA t69 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t69.
          IF xsdbool( t64 IS INITIAL ) = abap_true.
            CLEAR t69.
          ELSE.
            t69 = t64->get( p0 = t60->get_name( ) ).
          ENDIF.
          t63 = t69.
          DATA t78 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t78.
          DATA(t81) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t81->has = abap_true.
          t81->value = abap_true.
          t78 = t81.
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
          t55 = t62.
          t56 = abap_true.
        CATCH cx_root INTO t58.
          IF xsdbool( t56 = abap_false ) = abap_true.
            t18->close( ).
          ENDIF.
          RAISE EXCEPTION t58.
      ENDTRY.
      IF xsdbool( t56 = abap_false ) = abap_true.
        t18->close( ).
      ENDIF.
      IF t55 = abap_true.
        DATA(t95) = VALUE f( ).
        DATA(t96) = VALUE abap_bool( ).
        t96 = abap_false.
        DATA t98 TYPE REF TO cx_root.
        CLEAR t98.
        TRY.
            DATA(t100) = VALUE f( ).
            t100 = t1->dependencies.
            DATA(t102) = CONV f( 1 ).
            t95 = t100 + t102.
            t96 = abap_true.
          CATCH cx_root INTO t98.
            IF xsdbool( t96 = abap_false ) = abap_true.
              t18->close( ).
            ENDIF.
            RAISE EXCEPTION t98.
        ENDTRY.
        IF xsdbool( t96 = abap_false ) = abap_true.
          t18->close( ).
        ENDIF.
        t1->dependencies = t95.
        DELETE t1->zlnt_record_delet_0597644d88b4 WHERE table_line = `dependencies`.
        DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t111.
        IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `dependencies` p1 = t111 ).
        ENDIF.
        DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t113.
        IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |dependencies| p1 = t113 ).
        ENDIF.
      ELSE.
        DATA(t116) = VALUE f( ).
        DATA(t117) = VALUE abap_bool( ).
        t117 = abap_false.
        DATA t119 TYPE REF TO cx_root.
        CLEAR t119.
        TRY.
            DATA(t121) = VALUE f( ).
            t121 = t1->normal.
            DATA(t123) = CONV f( 1 ).
            t116 = t121 + t123.
            t117 = abap_true.
          CATCH cx_root INTO t119.
            IF xsdbool( t117 = abap_false ) = abap_true.
              t18->close( ).
            ENDIF.
            RAISE EXCEPTION t119.
        ENDTRY.
        IF xsdbool( t117 = abap_false ) = abap_true.
          t18->close( ).
        ENDIF.
        t1->normal = t116.
        DELETE t1->zlnt_record_delet_0597644d88b4 WHERE table_line = `normal`.
        DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t132.
        IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `normal` p1 = t132 ).
        ENDIF.
        DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t134.
        IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |normal| p1 = t134 ).
        ENDIF.
      ENDIF.
    ENDDO.
    result = t1.

  ENDMETHOD.

  METHOD get_file_by_name.
    DATA(t1) = i_filename.
    DATA(t2) = VALUE string( ).
    DATA(t3) = VALUE string( ).
    DATA(t5) = strlen( t1 ).
    t3 = t1.
    IF t3 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t3 TO UPPER CASE.
    ELSE.
      t3 = zlnt_runtime_uppe_91169605024d=>full( t3 ).
    ENDIF.
    t2 = t3.
    DATA t6 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t8 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t9 TYPE REF TO zcl_lnt_generator_a921479b.
    t9 = NEW zcl_lnt_generator_a921479b( i_outer = me ).
    t8 ?= t9.
    t6 = t8->iterate( ).
    DO.
      DATA t12 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t12.
      t12 = t6->next( ).
      IF t12->done = abap_true.
        EXIT.
      ENDIF.
      DATA t19 TYPE REF TO zif_lnt_object.
      CLEAR t19.
      t19 = t12->value.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t21.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t22.
      DATA(t23) = VALUE abap_bool( ).
      t23 = abap_false.
      DATA t25 TYPE REF TO cx_root.
      CLEAR t25.
      TRY.
          t22 = t19->get_files( ).
          t23 = abap_true.
        CATCH cx_root INTO t25.
          IF xsdbool( t23 = abap_false ) = abap_true.
            t6->close( ).
          ENDIF.
          RAISE EXCEPTION t25.
      ENDTRY.
      IF xsdbool( t23 = abap_false ) = abap_true.
        t6->close( ).
      ENDIF.
      t21 = t22.
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
        DATA(t42) = VALUE abap_bool( ).
        DATA(t43) = VALUE abap_bool( ).
        t43 = abap_false.
        DATA t45 TYPE REF TO cx_root.
        CLEAR t45.
        TRY.
            DATA(t47) = VALUE string( ).
            DATA(t48) = VALUE string( ).
            t48 = t36->get_filename( ).
            DATA(t50) = strlen( t48 ).
            t47 = t48.
            IF t47 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t47 TO UPPER CASE.
            ELSE.
              t47 = zlnt_runtime_uppe_91169605024d=>full( t47 ).
            ENDIF.
            t42 = xsdbool( t47 = t2 ).
            t43 = abap_true.
          CATCH cx_root INTO t45.
            IF xsdbool( t43 = abap_false ) = abap_true.
              t6->close( ).
            ENDIF.
            RAISE EXCEPTION t45.
        ENDTRY.
        IF xsdbool( t43 = abap_false ) = abap_true.
          t6->close( ).
        ENDIF.
        IF t42 = abap_true.
          DATA t62 TYPE REF TO zif_lnt_file.
          CLEAR t62.
          DATA(t63) = VALUE abap_bool( ).
          t63 = abap_false.
          DATA t65 TYPE REF TO cx_root.
          CLEAR t65.
          TRY.
              t62 = t36.
              t63 = abap_true.
            CATCH cx_root INTO t65.
              IF xsdbool( t63 = abap_false ) = abap_true.
                t6->close( ).
              ENDIF.
              RAISE EXCEPTION t65.
          ENDTRY.
          IF xsdbool( t63 = abap_false ) = abap_true.
            t6->close( ).
          ENDIF.
          t6->close( ).
          result = t62.
          RETURN.
        ENDIF.
      ENDDO.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD get_object.
    DATA(t1) = i_type_9913.
    DATA(t2) = i_name.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t5 = t1.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t9) = VALUE abap_bool( ).
    IF t5 IS INITIAL.
      t9 = abap_true.
    ELSEIF t5->has = abap_false.
      t9 = abap_true.
    ENDIF.
    t4 = t9.
    t3 = t4.
    IF t4 = abap_false.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t12 = t2.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t16) = VALUE abap_bool( ).
      IF t12 IS INITIAL.
        t16 = abap_true.
      ELSEIF t12->has = abap_false.
        t16 = abap_true.
      ENDIF.
      t3 = t16.
    ENDIF.
    IF t3 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA(t19) = VALUE string( ).
    DATA t20 TYPE string.
    DATA t21 TYPE string.
    t21 = t2->value.
    DATA(t23) = strlen( t21 ).
    t20 = t21.
    IF t20 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t20 TO UPPER CASE.
    ELSE.
      t20 = zlnt_runtime_uppe_91169605024d=>full( t20 ).
    ENDIF.
    t19 = t20.
    DATA t25 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
    t25 = me->objects->get( p0 = t19 ).
    IF xsdbool( t25 IS BOUND ) = abap_true.
      DATA t29 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
      t29 = me->objects->get( p0 = t19 ).
      DATA t33 TYPE string.
      t33 = t1->value.
      result = t29->get( p0 = t33 ).
      RETURN.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD get_config.
    result = me->conf.

  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t4 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t5 TYPE REF TO zcl_lnt_generator_a921479b.
    t5 = NEW zcl_lnt_generator_a921479b( i_outer = me ).
    t4 ?= t5.
    t2 = t4->iterate( ).
    DO.
      DATA t8 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t8.
      t8 = t2->next( ).
      IF t8->done = abap_true.
        EXIT.
      ENDIF.
      DATA t15 TYPE REF TO zif_lnt_object.
      CLEAR t15.
      t15 = t8->value.
      DATA(t17) = VALUE abap_bool( ).
      t17 = abap_false.
      DATA t19 TYPE REF TO cx_root.
      CLEAR t19.
      TRY.
          t15->set_dirty( ).
          t17 = abap_true.
        CATCH cx_root INTO t19.
          IF xsdbool( t17 = abap_false ) = abap_true.
            t2->close( ).
          ENDIF.
          RAISE EXCEPTION t19.
      ENDTRY.
      IF xsdbool( t17 = abap_false ) = abap_true.
        t2->close( ).
      ENDIF.
    ENDDO.
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    DATA t29 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t29 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = me->conf->get_syntax_setttings( )->zlnt_view_read_sr_912daad1f2d5( ) flags = |i|.
    me->error_namespace = t29.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `errorNamespace`.
    result = me.

  ENDMETHOD.

  METHOD in_err_nms_ins_src_rgs_ts_rgst.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t5 = i_name.
    DATA(t7) = VALUE string( ).
    DATA(t8) = VALUE abap_bool( ).
    IF t5 IS INITIAL.
      t8 = abap_true.
    ELSEIF t5->has = abap_false.
      t8 = abap_true.
    ENDIF.
    IF t8 = abap_true.
      t7 = |undefined|.
    ELSE.
      t7 = t5->value.
    ENDIF.
    result = me->error_namespace->test( p0 = t7 ).

  ENDMETHOD.

  METHOD add_file.
    DATA(t4) = i_file.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    t7->load( ).
    APPEND t4 TO t7->items.
    t7->save( ).
    result = me->add_files_179c( i_files = t7 ).

  ENDMETHOD.

  METHOD update_file.
    DATA(t1) = i_file.
    me->find_8f95( i_name = t1->get_object_name( ) i_type_9913 = t1->get_object_type( ) )->update_file( i_file = t1 ).
    result = me.

  ENDMETHOD.

  METHOD remove_file.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zif_lnt_object.
    t2 = me->find_8f95( i_name = t1->get_object_name( ) i_type_9913 = t1->get_object_type( ) ).
    t2->remove_file( i_file = t1 ).
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t12 = t2->get_files( ).
    t12->load( ).
    IF xsdbool( lines( t12->items ) = 0 ) = abap_true.
      me->ddic_references->clear_feba( i_obj_1ed0 = t2 ).
      me->msag_references->clear_feba( i_obj_1ed0 = t2 ).
      me->remove_object( i_remove = t2 ).
    ENDIF.
    result = me.

  ENDMETHOD.

  METHOD add_files_ccee.
    DATA(t1) = i_files.
    DATA(t2) = i_dependency.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t8 = me->conf->get_global( )->zlnt_view_read_sr_fb0e05af1c6f( ).
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    IF xsdbool( t8 IS INITIAL ) = abap_true.
      CREATE OBJECT t12.
    ELSE.
      t12 = t8.
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
      DATA t21 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t21.
      CREATE OBJECT t21 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t18 flags = |i|.
      t5->load( ).
      APPEND t21 TO t5->items.
      t5->save( ).
    ENDDO.
    t3 = t5.
    DATA t26 TYPE REF TO zif_lnt_file.
    DATA t27 TYPE REF TO object.
    DATA(t28) = VALUE i( ).
    DO.
      t1->load( ).
      IF t28 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t27.
      READ TABLE t1->items INDEX t28 + 1 INTO t27.
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
      t31 = t26->get_filename( ).
      DATA(t34) = VALUE abap_bool( ).
      DATA t37 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t39) = |.|.
      DATA(t40) = strlen( t31 ).
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
          t45 = t31+t41(1).
          APPEND t45 TO t37->items.
          t41 = t41 + 1.
        ENDWHILE.
      ELSE.
        WHILE t41 <= t40.
          FIND FIRST OCCURRENCE OF t39 IN SECTION OFFSET t41 OF t31 MATCH OFFSET t42.
          IF sy-subrc = 0.
            t43 = t42 - t41.
          ELSE.
            t42 = -1.
            t43 = t40 - t41.
          ENDIF.
          CLEAR t45.
          IF t43 > 0.
            t45 = t31+t41(t43).
          ENDIF.
          APPEND t45 TO t37->items.
          IF t42 < 0.
            EXIT.
          ENDIF.
          t41 = t42 + t44.
        ENDWHILE.
      ENDIF.
      t37->load( ).
      t34 = xsdbool( lines( t37->items ) <= 2 ).
      DATA t47 TYPE abap_bool.
      t47 = t34.
      IF t34 = abap_false.
        DATA(t53) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t53->has = abap_true.
        t53->value = t31.
        t47 = zcl_lnt_exclude_helper=>is_excluded( i_filename = t53 i_exclude_patterns = t3 ).
      ENDIF.
      IF t47 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t56 TYPE REF TO zif_lnt_object.
      t56 = me->find_or_create( i_name = t26->get_object_name( ) i_type_9913 = t26->get_object_type( ) ).
      DATA(t62) = VALUE abap_bool( ).
      DATA t63 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t63 = me->conf->get_global( )->zlnt_view_read_sr_4799a82dd6de( ).
      DATA t66 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t66.
      DATA(t69) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t69->has = abap_true.
      t69->value = abap_true.
      t66 = t69.
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
        me->check_duplicate_filename( i_filename = t31 i_files = t56->get_files( ) ).
      ENDIF.
      DATA(t76) = VALUE abap_bool( ).
      DATA t77 TYPE abap_bool.
      DATA t78 TYPE abap_bool.
      t78 = xsdbool( t2 = abap_false ).
      t77 = t78.
      IF t78 = abap_true.
        t77 = xsdbool( t56 IS BOUND ).
      ENDIF.
      t76 = t77.
      IF t77 = abap_true.
        DATA t84 TYPE REF TO zif_lnt_object.
        t84 = t56.
        DATA(t86) = VALUE abap_bool( ).
        DATA t87 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t87.
        DATA t88 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
        t88 = me->dependencies->get( p0 = t84->get_type( ) ).
        DATA t93 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t93.
        IF xsdbool( t88 IS INITIAL ) = abap_true.
          CLEAR t93.
        ELSE.
          t93 = t88->get( p0 = t84->get_name( ) ).
        ENDIF.
        t87 = t93.
        DATA t102 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t102.
        DATA(t105) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t105->has = abap_true.
        t105->value = abap_true.
        t102 = t105.
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
        t76 = t86.
      ENDIF.
      IF t76 = abap_true.
        DATA t109 TYPE REF TO zif_lnt_object.
        t109 = t56.
        DATA(t111) = VALUE abap_bool( ).
        DATA t112 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
        t112 = me->dependencies->get( p0 = t109->get_type( ) ).
        DATA(t117) = VALUE abap_bool( ).
        IF xsdbool( t112 IS INITIAL ) = abap_true.
          t117 = abap_true.
        ELSE.
          DATA t122 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
          t122 = t112.
          DATA t124 TYPE string.
          t124 = t109->get_name( ).
          DELETE t122->entries WHERE k = t124.
          t117 = abap_true.
        ENDIF.
        t111 = t117.
        me->remove_object( i_remove = t109 ).
        t56 = me->find_or_create( i_name = t26->get_object_name( ) i_type_9913 = t26->get_object_type( ) ).
      ENDIF.
      t56->add_file( i_file = t26 ).
    ENDDO.
    result = me.

  ENDMETHOD.

  METHOD check_duplicate_filename.
    DATA(t1) = i_filename.
    DATA(t2) = i_files.
    DATA(t3) = VALUE string( ).
    t3 = zcl_lnt_registry=>filename_basename( i_filename = t1 ).
    IF xsdbool( t3 = |PACKAGE.DEVC.XML| ) = abap_true.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zif_lnt_file.
    DATA t11 TYPE REF TO object.
    DATA(t12) = VALUE i( ).
    DO.
      t2->load( ).
      IF t12 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t2->items INDEX t12 + 1 INTO t11.
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
      IF xsdbool( zcl_lnt_registry=>filename_basename( i_filename = t10->get_filename( ) ) = t3 ) = abap_true.
        DATA t20 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t20.
        DATA t21 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        CLEAR t21.
        DATA(t24) = VALUE string( ).
        DATA(t25) = VALUE string( ).
        DATA(t26) = VALUE string( ).
        DATA(t27) = |Duplicate filename: |.
        DATA(t29) = strlen( t27 ).
        t26 = |{ t27 }{ t1 }|.
        DATA(t31) = strlen( t26 ).
        t25 = |{ t26 }{ | already exists as | }|.
        DATA(t32) = VALUE string( ).
        t32 = t10->get_filename( ).
        DATA(t34) = strlen( t25 ).
        t24 = |{ t25 }{ t32 }|.
        DATA(t35) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t35->has = abap_true.
        t35->value = t24.
        t21 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t35 ).
        t20 = NEW #( ).
        t20->payload = t21.
        CLEAR t20->source_value.
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
        RAISE EXCEPTION t20.
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD filename_basename.
    DATA(t1) = i_filename.
    DATA t2 TYPE string.
    DATA t5 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t5 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = `\\` flags = |g| checked = abap_true.
    DATA(t9) = strlen( t1 ).
    t2 = t5->replace( p0 = t1 p1 = |/| ).
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t14) = |/|.
    DATA(t15) = strlen( t2 ).
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
        t20 = t2+t16(1).
        APPEND t20 TO t12->items.
        t16 = t16 + 1.
      ENDWHILE.
    ELSE.
      WHILE t16 <= t15.
        FIND FIRST OCCURRENCE OF t14 IN SECTION OFFSET t16 OF t2 MATCH OFFSET t17.
        IF sy-subrc = 0.
          t18 = t17 - t16.
        ELSE.
          t17 = -1.
          t18 = t15 - t16.
        ENDIF.
        CLEAR t20.
        IF t18 > 0.
          t20 = t2+t16(t18).
        ENDIF.
        APPEND t20 TO t12->items.
        IF t17 < 0.
          EXIT.
        ENDIF.
        t16 = t17 + t19.
      ENDWHILE.
    ENDIF.
    t11 = t12->pop( ).
    DATA(t21) = VALUE string( ).
    DATA(t22) = VALUE string( ).
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t23 = t11.
    DATA(t25) = VALUE string( ).
    DATA(t26) = VALUE abap_bool( ).
    IF t23 IS INITIAL.
      t26 = abap_true.
    ELSEIF t23->has = abap_false.
      t26 = abap_true.
    ENDIF.
    IF t26 = abap_true.
      t25 = t2.
    ELSE.
      t25 = t23->value.
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
    DATA t2 TYPE REF TO zif_lnt_registry.
    DATA(t3) = i_files.
    t2 = me->add_files_ccee( i_files = t3 i_dependency = abap_false ).
    result = me.

  ENDMETHOD.

  METHOD add_dependencies.
    DATA(t1) = i_files.
    DATA t3 TYPE REF TO zif_lnt_file.
    DATA t4 TYPE REF TO object.
    DATA(t5) = VALUE i( ).
    DO.
      t1->load( ).
      IF t5 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t4.
      READ TABLE t1->items INDEX t5 + 1 INTO t4.
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
      t8 = me->add_dependency( i_file = t3 ).
    ENDDO.
    result = me.

  ENDMETHOD.

  METHOD add_dependency.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t4 = t1->get_object_type( ).
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t8) = VALUE abap_bool( ).
    IF t4 IS INITIAL.
      t8 = abap_true.
    ELSEIF t4->has = abap_false.
      t8 = abap_true.
    ENDIF.
    IF t8 = abap_true.
    ELSE.
      DATA t11 TYPE string.
      DATA t12 TYPE string.
      t12 = t4->value.
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
    t2 = t7.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t17 = t2.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t21) = VALUE abap_bool( ).
    IF t17 IS INITIAL.
      t21 = abap_true.
    ELSEIF t17->has = abap_false.
      t21 = abap_true.
    ENDIF.
    IF t21 = abap_true.
      result = me.
      RETURN.
    ENDIF.
    DATA(t24) = VALUE string( ).
    DATA t25 TYPE string.
    DATA t26 TYPE string.
    t26 = t1->get_object_name( ).
    DATA(t28) = strlen( t26 ).
    t25 = t26.
    IF t25 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t25 TO UPPER CASE.
    ELSE.
      t25 = zlnt_runtime_uppe_91169605024d=>full( t25 ).
    ENDIF.
    t24 = t25.
    DATA t31 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    DATA t33 TYPE string.
    t33 = t2->value.
    t31 = me->dependencies->get( p0 = t33 ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t31 IS INITIAL ) = abap_true.
      DATA t39 TYPE REF TO zlnt_runtime_map__e02fab5a9752.
      DATA t41 TYPE string.
      t41 = t2->value.
      t39 = me->dependencies->set( p0 = t41 p1 = NEW zlnt_runtime_map__45a2315f90b8( ) ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    DATA t51 TYPE string.
    t51 = t2->value.
    t47 = me->dependencies->get( p0 = t51 )->set( p0 = t24 p1 = abap_true ).
    DATA t55 TYPE REF TO zif_lnt_registry.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t57.
    t57->load( ).
    APPEND t1 TO t57->items.
    t57->save( ).
    t55 = me->add_files_ccee( i_files = t57 i_dependency = abap_true ).
    result = me.

  ENDMETHOD.

  METHOD remove_dependency.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    t3 = me->dependencies->get( p0 = t1->get_type( ) ).
    DATA(t8) = VALUE abap_bool( ).
    IF xsdbool( t3 IS INITIAL ) = abap_true.
      t8 = abap_true.
    ELSE.
      DATA t13 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
      t13 = t3.
      DATA t15 TYPE string.
      t15 = t1->get_name( ).
      DELETE t13->entries WHERE k = t15.
      t8 = abap_true.
    ENDIF.
    t2 = t8.
    me->remove_object( i_remove = t1 ).
  ENDMETHOD.

  METHOD is_dependency.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t4 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    t4 = me->dependencies->get( p0 = t1->get_type( ) ).
    DATA t9 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
    ELSE.
      t9 = t4->get( p0 = t1->get_name( ) ).
    ENDIF.
    t3 = t9.
    DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t21) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t21->has = abap_true.
    t21->value = abap_true.
    t18 = t21.
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
    DATA t2 TYPE REF TO zif_lnt_file.
    DATA(t4) = i_filename.
    t2 = me->get_file_by_name( i_filename = t4 ).
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t15 = t2->get_object_type( ).
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t20) = VALUE abap_bool( ).
    IF t15 IS INITIAL.
      t20 = abap_true.
    ELSEIF t15->has = abap_false.
      t20 = abap_true.
    ENDIF.
    IF t20 = abap_true.
    ELSE.
      DATA t23 TYPE string.
      DATA t24 TYPE string.
      t24 = t15->value.
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
    t13 = t19.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t29 = t13.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t33) = VALUE abap_bool( ).
    IF t29 IS INITIAL.
      t33 = abap_true.
    ELSEIF t29->has = abap_false.
      t33 = abap_true.
    ENDIF.
    IF t33 = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA(t36) = VALUE string( ).
    DATA t37 TYPE string.
    DATA t38 TYPE string.
    t38 = t2->get_object_name( ).
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
    DATA t44 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    DATA t47 TYPE string.
    t47 = t13->value.
    t44 = me->dependencies->get( p0 = t47 ).
    DATA t49 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    IF xsdbool( t44 IS INITIAL ) = abap_true.
    ELSE.
      t49 = t44->get( p0 = t36 ).
    ENDIF.
    t43 = t49.
    DATA t57 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t60) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t60->has = abap_true.
    t60->value = abap_true.
    t57 = t60.
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
    DATA(t2) = VALUE string( ).
    t2 = i_file->get_filename( ).
    DATA t5 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t7 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t8 TYPE REF TO zcl_lnt_generator_a921479b.
    t8 = NEW zcl_lnt_generator_a921479b( i_outer = me ).
    t7 ?= t8.
    t5 = t7->iterate( ).
    DO.
      DATA t11 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t11.
      t11 = t5->next( ).
      IF t11->done = abap_true.
        EXIT.
      ENDIF.
      DATA t16 TYPE REF TO zif_lnt_object.
      CLEAR t16.
      t16 = t11->value.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t20.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t21.
      DATA(t22) = VALUE abap_bool( ).
      t22 = abap_false.
      DATA t24 TYPE REF TO cx_root.
      CLEAR t24.
      TRY.
          t21 = t16->get_files( ).
          t22 = abap_true.
        CATCH cx_root INTO t24.
          IF xsdbool( t22 = abap_false ) = abap_true.
            t5->close( ).
          ENDIF.
          RAISE EXCEPTION t24.
      ENDTRY.
      IF xsdbool( t22 = abap_false ) = abap_true.
        t5->close( ).
      ENDIF.
      t20 = t21.
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
        DATA(t41) = VALUE abap_bool( ).
        DATA(t42) = VALUE abap_bool( ).
        t42 = abap_false.
        DATA t44 TYPE REF TO cx_root.
        CLEAR t44.
        TRY.
            t41 = xsdbool( t35->get_filename( ) = t2 ).
            t42 = abap_true.
          CATCH cx_root INTO t44.
            IF xsdbool( t42 = abap_false ) = abap_true.
              t5->close( ).
            ENDIF.
            RAISE EXCEPTION t44.
        ENDTRY.
        IF xsdbool( t42 = abap_false ) = abap_true.
          t5->close( ).
        ENDIF.
        IF t41 = abap_true.
          DATA t59 TYPE REF TO zif_lnt_object.
          CLEAR t59.
          DATA(t60) = VALUE abap_bool( ).
          t60 = abap_false.
          DATA t62 TYPE REF TO cx_root.
          CLEAR t62.
          TRY.
              t59 = t16.
              t60 = abap_true.
            CATCH cx_root INTO t62.
              IF xsdbool( t60 = abap_false ) = abap_true.
                t5->close( ).
              ENDIF.
              RAISE EXCEPTION t62.
          ENDTRY.
          IF xsdbool( t60 = abap_false ) = abap_true.
            t5->close( ).
          ENDIF.
          t5->close( ).
          result = t59.
          RETURN.
        ENDIF.
      ENDDO.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD find_issues.
    DATA(t1) = i_input_967e.
    DATA(t3) = CONV abap_bool( me->is_dirty( ) ).
    IF xsdbool( t3 = abap_true ) = abap_true.
      DATA(t5) = CAST zcl_lnt_registry( me->prs_instn_src_rgstry_ts_rgstry( ) ).
    ENDIF.
    DATA t7 TYPE REF TO zcl_lnt_rules_runner.
    t7 = NEW zcl_lnt_rules_runner( i_reg_f149 = me ).
    DATA t9 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t10 TYPE REF TO zcl_lnt_generator_a921479b.
    t10 = NEW zcl_lnt_generator_a921479b( i_outer = me ).
    t9 ?= t10.
    result = t7->run_rules( i_objects = t9 i_input_967e = t1 ).

  ENDMETHOD.

  METHOD find_issues_object.
    DATA(t1) = i_iobj.
    DATA(t3) = CONV abap_bool( me->is_dirty( ) ).
    IF xsdbool( t3 = abap_true ) = abap_true.
      DATA(t5) = CAST zcl_lnt_registry( me->prs_instn_src_rgstry_ts_rgstry( ) ).
    ENDIF.
    DATA t7 TYPE REF TO zcl_lnt_rules_runner.
    t7 = NEW zcl_lnt_rules_runner( i_reg_f149 = me ).
    DATA t9 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t10 TYPE REF TO zcl_lnt_generator_7e7dc2c1.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t12.
    t12->load( ).
    APPEND t1 TO t12->items.
    t12->save( ).
    t10 = NEW zcl_lnt_generator_7e7dc2c1( i_array = t12 ).
    t9 ?= t10.
    DATA t17 TYPE REF TO zcl_lnt_irun_input.
    result = t7->run_rules( i_objects = t9 i_input_967e = t17 ).

  ENDMETHOD.

  METHOD prs_instn_src_rgstry_ts_rgstry.
    DATA(t2) = CONV abap_bool( me->is_dirty( ) ).
    IF xsdbool( t2 = abap_false ) = abap_true.
      result = me.
      RETURN.
    ENDIF.
    zcl_lnt_parsing_performance=>clear_feba( ).
    DATA t5 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t7 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t8 TYPE REF TO zcl_lnt_generator_a921479b.
    t8 = NEW zcl_lnt_generator_a921479b( i_outer = me ).
    t7 ?= t8.
    t5 = t7->iterate( ).
    DO.
      DATA t11 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t11.
      t11 = t5->next( ).
      IF t11->done = abap_true.
        EXIT.
      ENDIF.
      DATA t18 TYPE REF TO zif_lnt_object.
      CLEAR t18.
      t18 = t11->value.
      DATA(t20) = VALUE abap_bool( ).
      t20 = abap_false.
      DATA t22 TYPE REF TO cx_root.
      CLEAR t22.
      TRY.
          DATA t23 TYPE REF TO zif_lnt_object.
          CLEAR t23.
          t23 = t18.
          DATA t25 TYPE REF TO zif_lnt_configuration.
          CLEAR t25.
          t25 = me->conf.
          DATA t30 TYPE REF TO zcl_lnt_abap_release.
          CLEAR t30.
          t30 = t25->get_release( ).
          DATA t35 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t35.
          t35 = t25->get_syntax_setttings( )->zlnt_view_read_sr_94cd949ccfb3( ).
          DATA(t41) = VALUE string( ).
          t41 = t25->get_language_version( ).
          DATA(t43) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t43->has = abap_true.
          t43->value = t41.
          zcl_lnt_parsing_performance=>push( i_obj_1ed0 = t23 i_result = t23->parse( i_release_7928 = t30 i_global_macros_5535 = t35 i_reg_f149 = me i_language_version_0e1d = t43 ) ).
          t20 = abap_true.
        CATCH cx_root INTO t22.
          IF xsdbool( t20 = abap_false ) = abap_true.
            t5->close( ).
          ENDIF.
          RAISE EXCEPTION t22.
      ENDTRY.
      IF xsdbool( t20 = abap_false ) = abap_true.
        t5->close( ).
      ENDIF.
    ENDDO.
    NEW zcl_lnt_cross_include_macros( i_reg_f149 = me )->run( ).
    DATA t58 TYPE REF TO zif_lnt_progress.
    NEW zcl_lnt_fnd_glbl_dfntns( i_reg_f149 = me )->run( i_progress = t58 ).
    result = me.

  ENDMETHOD.

  METHOD prs_asyn_inst_src_rgst_ts_rgst.
    DATA(t1) = i_input_967e.
    DATA t2 TYPE REF TO zlnt_exception_ts_bf7a77bb9e12.
    TRY.
        DATA(t4) = CONV abap_bool( me->is_dirty( ) ).
        IF xsdbool( t4 = abap_false ) = abap_true.
          DATA(t6) = NEW zlnt_runtime_prom_b6dea192572d( ).
          t6->value = me.
          result = t6.
          RETURN.
        ENDIF.
        zcl_lnt_parsing_performance=>clear_feba( ).
        DATA(t8) = VALUE abap_bool( ).
        DATA t9 TYPE REF TO zif_lnt_progress.
        DATA t11 TYPE REF TO zcl_lnt_irun_input.
        t11 = t1.
        DATA t13 TYPE REF TO zif_lnt_progress.
        IF xsdbool( t11 IS INITIAL ) = abap_true.
        ELSE.
          t13 = t11->progress.
        ENDIF.
        t9 = t13.
        IF xsdbool( xsdbool( t9 IS INITIAL ) = abap_false ) = abap_true.
          DATA t24 TYPE REF TO zif_lnt_progress.
          t24 = t9.
          DATA(t26) = VALUE f( ).
          t26 = CAST zcl_lnt_shape_ca985c56( me->get_object_count( ) )->total.
          t24->set( i_total = t26 i_text = |Lexing and parsing| ).
        ENDIF.
        t8 = abap_false.
        DATA t30 TYPE REF TO zif_lnt_generator_8f73cd1c.
        DATA t32 TYPE REF TO zif_lnt_generator_8f73cd1c.
        DATA t33 TYPE REF TO zcl_lnt_generator_a921479b.
        t33 = NEW zcl_lnt_generator_a921479b( i_outer = me ).
        t32 ?= t33.
        t30 = t32->iterate( ).
        DO.
          DATA t36 TYPE REF TO zcl_lnt_generator_17955b8b.
          CLEAR t36.
          t36 = t30->next( ).
          IF t36->done = abap_true.
            EXIT.
          ENDIF.
          DATA t41 TYPE REF TO zif_lnt_object.
          CLEAR t41.
          t41 = t36->value.
          DATA(t45) = VALUE abap_bool( ).
          t45 = abap_false.
          DATA t47 TYPE REF TO cx_root.
          CLEAR t47.
          TRY.
              DATA t48 TYPE REF TO zlnt_runtime_prom_22216e6f7fe7.
              CLEAR t48.
              DATA t49 TYPE REF TO zif_lnt_progress.
              CLEAR t49.
              DATA t51 TYPE REF TO zcl_lnt_irun_input.
              CLEAR t51.
              t51 = t1.
              DATA t53 TYPE REF TO zif_lnt_progress.
              CLEAR t53.
              IF xsdbool( t51 IS INITIAL ) = abap_true.
                CLEAR t53.
              ELSE.
                t53 = t51->progress.
              ENDIF.
              t49 = t53.
              DATA t60 TYPE REF TO zlnt_runtime_prom_22216e6f7fe7.
              CLEAR t60.
              IF xsdbool( t49 IS INITIAL ) = abap_true.
                CLEAR t60.
              ELSE.
                DATA t65 TYPE REF TO zif_lnt_progress.
                CLEAR t65.
                t65 = t49.
                DATA(t68) = VALUE string( ).
                DATA(t69) = VALUE string( ).
                DATA(t70) = VALUE string( ).
                DATA(t71) = VALUE string( ).
                DATA(t72) = |Lexing and parsing(|.
                DATA(t73) = VALUE string( ).
                t73 = me->conf->get_release( )->zlnt_view_read_sr_8e17f9b6728c( ).
                DATA(t76) = strlen( t72 ).
                t71 = |{ t72 }{ t73 }|.
                DATA(t78) = strlen( t71 ).
                t70 = |{ t71 }{ |) - | }|.
                DATA(t79) = VALUE string( ).
                t79 = t41->get_type( ).
                DATA(t81) = strlen( t70 ).
                t69 = |{ t70 }{ t79 }|.
                DATA(t83) = strlen( t69 ).
                t68 = |{ t69 }{ | | }|.
                DATA(t84) = VALUE string( ).
                t84 = t41->get_name( ).
                DATA(t86) = strlen( t68 ).
                t60 = t65->tick( i_text = |{ t68 }{ t84 }| ).
              ENDIF.
              t48 = t60.
              IF t48 IS BOUND.
                IF t48->rejection IS BOUND.
                  RAISE EXCEPTION t48->rejection.
                ENDIF.
              ENDIF.
              t45 = abap_true.
            CATCH cx_root INTO t47.
              IF xsdbool( t45 = abap_false ) = abap_true.
                t30->close( ).
              ENDIF.
              RAISE EXCEPTION t47.
          ENDTRY.
          IF xsdbool( t45 = abap_false ) = abap_true.
            t30->close( ).
          ENDIF.
          DATA(t94) = VALUE abap_bool( ).
          t94 = abap_false.
          DATA t96 TYPE REF TO cx_root.
          CLEAR t96.
          TRY.
              DATA t97 TYPE REF TO zif_lnt_object.
              CLEAR t97.
              t97 = t41.
              DATA t99 TYPE REF TO zif_lnt_configuration.
              CLEAR t99.
              t99 = me->conf.
              DATA t104 TYPE REF TO zcl_lnt_abap_release.
              CLEAR t104.
              t104 = t99->get_release( ).
              DATA t109 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t109.
              t109 = t99->get_syntax_setttings( )->zlnt_view_read_sr_94cd949ccfb3( ).
              DATA(t115) = VALUE string( ).
              t115 = t99->get_language_version( ).
              DATA(t117) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t117->has = abap_true.
              t117->value = t115.
              zcl_lnt_parsing_performance=>push( i_obj_1ed0 = t97 i_result = t97->parse( i_release_7928 = t104 i_global_macros_5535 = t109 i_reg_f149 = me i_language_version_0e1d = t117 ) ).
              t94 = abap_true.
            CATCH cx_root INTO t96.
              IF xsdbool( t94 = abap_false ) = abap_true.
                t30->close( ).
              ENDIF.
              RAISE EXCEPTION t96.
          ENDTRY.
          IF xsdbool( t94 = abap_false ) = abap_true.
            t30->close( ).
          ENDIF.
        ENDDO.
        DATA(t128) = VALUE abap_bool( ).
        DATA t129 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t130 TYPE REF TO zcl_lnt_irun_input.
        t130 = t1.
        DATA t132 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        IF xsdbool( t130 IS INITIAL ) = abap_true.
        ELSE.
          t132 = t130->output_performance.
        ENDIF.
        t129 = t132.
        DATA t139 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA(t142) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t142->has = abap_true.
        t142->value = abap_true.
        t139 = t142.
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
        NEW zcl_lnt_cross_include_macros( i_reg_f149 = me )->run( ).
        DATA t148 TYPE REF TO zcl_lnt_fnd_glbl_dfntns.
        t148 = NEW zcl_lnt_fnd_glbl_dfntns( i_reg_f149 = me ).
        DATA t151 TYPE REF TO zcl_lnt_irun_input.
        t151 = t1.
        DATA t153 TYPE REF TO zif_lnt_progress.
        IF xsdbool( t151 IS INITIAL ) = abap_true.
        ELSE.
          t153 = t151->progress.
        ENDIF.
        t148->run( i_progress = t153 ).
        DATA(t160) = NEW zlnt_runtime_prom_b6dea192572d( ).
        t160->value = me.
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
    t2 = me->conf.
    DATA t7 TYPE REF TO zcl_lnt_abap_release.
    t7 = t2->get_release( ).
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t12 = t2->get_syntax_setttings( )->zlnt_view_read_sr_94cd949ccfb3( ).
    DATA t18 TYPE string.
    t18 = t2->get_language_version( ).
    DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t20->has = abap_true.
    t20->value = t18.
    zcl_lnt_parsing_performance=>push( i_obj_1ed0 = t1 i_result = t1->parse( i_release_7928 = t7 i_global_macros_5535 = t12 i_reg_f149 = me i_language_version_0e1d = t20 ) ).
  ENDMETHOD.

  METHOD is_dirty.
    DATA t1 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t3 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t4 TYPE REF TO zcl_lnt_generator_a921479b.
    t4 = NEW zcl_lnt_generator_a921479b( i_outer = me ).
    t3 ?= t4.
    t1 = t3->iterate( ).
    DO.
      DATA t7 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t7.
      t7 = t1->next( ).
      IF t7->done = abap_true.
        EXIT.
      ENDIF.
      DATA t14 TYPE REF TO zif_lnt_object.
      CLEAR t14.
      t14 = t7->value.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = VALUE abap_bool( ).
      t19 = abap_false.
      DATA t21 TYPE REF TO cx_root.
      CLEAR t21.
      TRY.
          t18 = t14->is_dirty( ).
          t19 = abap_true.
        CATCH cx_root INTO t21.
          IF xsdbool( t19 = abap_false ) = abap_true.
            t1->close( ).
          ENDIF.
          RAISE EXCEPTION t21.
      ENDTRY.
      IF xsdbool( t19 = abap_false ) = abap_true.
        t1->close( ).
      ENDIF.
      t16 = t18.
      DATA(t33) = VALUE abap_bool( ).
      DATA(t34) = VALUE abap_bool( ).
      t34 = abap_false.
      DATA t36 TYPE REF TO cx_root.
      CLEAR t36.
      TRY.
          t33 = xsdbool( t16 = abap_true ).
          t34 = abap_true.
        CATCH cx_root INTO t36.
          IF xsdbool( t34 = abap_false ) = abap_true.
            t1->close( ).
          ENDIF.
          RAISE EXCEPTION t36.
      ENDTRY.
      IF xsdbool( t34 = abap_false ) = abap_true.
        t1->close( ).
      ENDIF.
      IF t33 = abap_true.
        t1->close( ).
        result = abap_true.
        RETURN.
      ENDIF.
    ENDDO.
    result = abap_false.

  ENDMETHOD.

  METHOD find_or_create.
    DATA(t1) = i_name.
    DATA(t2) = i_type_9913.
    DATA t3 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    TRY.
        result = me->find_8f95( i_name = t1 i_type_9913 = t2 ).
        RETURN.
      CATCH zlnt_exception_cl_30eec8e8805d INTO t3.
        DATA(t7) = t3->payload.
        DATA(t8) = VALUE string( ).
        DATA(t9) = VALUE string( ).
        DATA(t11) = strlen( t1 ).
        t9 = t1.
        IF t9 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t9 TO UPPER CASE.
        ELSE.
          t9 = zlnt_runtime_uppe_91169605024d=>full( t9 ).
        ENDIF.
        t8 = t9.
        DATA(t12) = VALUE string( ).
        DATA(t13) = VALUE string( ).
        DATA(t14) = VALUE abap_bool( ).
        IF t2 IS BOUND.
          IF t2->has = abap_true.
            t14 = xsdbool( strlen( t2->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t14 = abap_true.
          t13 = t2->value.
        ELSE.
          t13 = |UNKNOWN|.
        ENDIF.
        t12 = t13.
        DATA t19 TYPE REF TO zif_lnt_object.
        t19 = zcl_lnt_artifacts_objects=>new_object( i_name = t8 i_type_9913 = t12 ).
        DATA t25 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
        t25 = me->objects->get( p0 = t8 ).
        DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF xsdbool( t25 IS INITIAL ) = abap_true.
          DATA t32 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
          t32 = me->objects->set( p0 = t8 p1 = NEW zlnt_runtime_map__b4fe03e97505( ) ).
        ENDIF.
        DATA t39 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
        t39 = me->objects->get( p0 = t8 )->set( p0 = t12 p1 = t19 ).
        DATA t48 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
        t48 = me->objects_by_type->get( p0 = t12 ).
        DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF xsdbool( t48 IS INITIAL ) = abap_true.
          DATA t55 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
          t55 = me->objects_by_type->set( p0 = t12 p1 = NEW zlnt_runtime_map__b4fe03e97505( ) ).
        ENDIF.
        DATA t62 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
        t62 = me->objects_by_type->get( p0 = t12 )->set( p0 = t8 p1 = t19 ).
        result = t19.
        RETURN.
    ENDTRY.
  ENDMETHOD.

  METHOD remove_object.
    DATA(t1) = i_remove.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zif_lnt_object.
    t11 = me->objects->get( p0 = t1->get_name( ) )->get( p0 = t1->get_type( ) ).
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t11 IS INITIAL ) = abap_true.
      DATA t25 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t26 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = |removeObject: object not found|.
      t26 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t30 ).
      t25 = NEW #( ).
      t25->payload = t26.
      CLEAR t25->source_value.
      DATA t32 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t33 TYPE REF TO object.
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
      RAISE EXCEPTION t25.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t36 = me->objects->get( p0 = t1->get_name( ) )->keys( ).
    t36->load( ).
    IF xsdbool( lines( t36->items ) = 1 ) = abap_true.
      DATA(t44) = VALUE abap_bool( ).
      DATA(t45) = me->objects.
      DATA(t46) = VALUE string( ).
      t46 = t1->get_name( ).
      DELETE t45->entries WHERE k = t46.
      t44 = abap_true.
    ELSE.
      DATA(t49) = VALUE abap_bool( ).
      DATA t50 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
      t50 = me->objects->get( p0 = t1->get_name( ) ).
      DATA(t56) = VALUE abap_bool( ).
      IF xsdbool( t50 IS INITIAL ) = abap_true.
        t56 = abap_true.
      ELSE.
        DATA t61 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
        t61 = t50.
        DATA(t63) = VALUE string( ).
        t63 = t1->get_type( ).
        DELETE t61->entries WHERE k = t63.
        t56 = abap_true.
      ENDIF.
      t49 = t56.
    ENDIF.
    DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t68 = me->objects_by_type->get( p0 = t1->get_type( ) )->keys( ).
    t68->load( ).
    IF xsdbool( lines( t68->items ) = 1 ) = abap_true.
      DATA(t76) = VALUE abap_bool( ).
      DATA(t77) = me->objects_by_type.
      DATA(t78) = VALUE string( ).
      t78 = t1->get_type( ).
      DELETE t77->entries WHERE k = t78.
      t76 = abap_true.
    ELSE.
      DATA(t81) = VALUE abap_bool( ).
      DATA t82 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
      t82 = me->objects_by_type->get( p0 = t1->get_type( ) ).
      DATA(t88) = VALUE abap_bool( ).
      IF xsdbool( t82 IS INITIAL ) = abap_true.
        t88 = abap_true.
      ELSE.
        DATA t93 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
        t93 = t82.
        DATA(t95) = VALUE string( ).
        t95 = t1->get_name( ).
        DELETE t93->entries WHERE k = t95.
        t88 = abap_true.
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
    IF t2 IS BOUND.
      IF t2->has = abap_true.
        t5 = xsdbool( strlen( t2->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t5 = abap_true.
      t4 = t2->value.
    ELSE.
      t4 = |UNKNOWN|.
    ENDIF.
    t3 = t4.
    DATA(t10) = VALUE string( ).
    DATA(t11) = VALUE string( ).
    DATA(t13) = strlen( t1 ).
    t11 = t1.
    IF t11 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t11 TO UPPER CASE.
    ELSE.
      t11 = zlnt_runtime_uppe_91169605024d=>full( t11 ).
    ENDIF.
    t10 = t11.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = VALUE abap_bool( ).
    DATA t17 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
    t17 = me->objects->get( p0 = t10 ).
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t15 = xsdbool( xsdbool( t17 IS INITIAL ) = abap_false ).
    t14 = t15.
    IF t15 = abap_true.
      DATA t26 TYPE REF TO zif_lnt_object.
      t26 = me->objects->get( p0 = t10 )->get( p0 = t3 ).
      t14 = xsdbool( t26 IS BOUND ).
    ENDIF.
    IF t14 = abap_true.
      result = me->objects->get( p0 = t10 )->get( p0 = t3 ).
      RETURN.
    ENDIF.
    DATA t39 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    DATA t40 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    DATA(t43) = VALUE string( ).
    DATA(t44) = VALUE string( ).
    DATA(t45) = VALUE string( ).
    DATA(t46) = |find: object not found, |.
    DATA(t47) = VALUE string( ).
    DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t48 = t2.
    DATA(t50) = VALUE string( ).
    DATA(t51) = VALUE abap_bool( ).
    IF t48 IS INITIAL.
      t51 = abap_true.
    ELSEIF t48->has = abap_false.
      t51 = abap_true.
    ENDIF.
    IF t51 = abap_true.
      t50 = |undefined|.
    ELSE.
      t50 = t48->value.
    ENDIF.
    t47 = t50.
    DATA(t56) = strlen( t46 ).
    t45 = |{ t46 }{ t47 }|.
    DATA(t58) = strlen( t45 ).
    t44 = |{ t45 }{ | | }|.
    DATA(t60) = strlen( t44 ).
    t43 = |{ t44 }{ t1 }|.
    DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t61->has = abap_true.
    t61->value = t43.
    t40 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t61 ).
    t39 = NEW #( ).
    t39->payload = t40.
    CLEAR t39->source_value.
    DATA t63 TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA t64 TYPE REF TO object.
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
    RAISE EXCEPTION t39.
  ENDMETHOD.

  METHOD in_error_namespace.
    DATA(t5) = i_name.
    DATA(t6) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t6->has = abap_true.
    t6->value = t5.
    result = me->in_err_nms_ins_src_rgs_ts_rgst( i_name = t6 ).

  ENDMETHOD.

  METHOD parse.
    result = CAST zcl_lnt_registry( me->prs_instn_src_rgstry_ts_rgstry( ) ).

  ENDMETHOD.

  METHOD parse_async.
    DATA(t1) = i_input_967e.
    DATA t2 TYPE REF TO zlnt_exception_ts_bf7a77bb9e12.
    TRY.
        DATA(t3) = NEW zlnt_runtime_prom_0ff5910e175e( ).
        DATA t4 TYPE REF TO zif_lnt_registry.
        DATA t6 TYPE REF TO zlnt_runtime_prom_b6dea192572d.
        t6 = me->prs_asyn_inst_src_rgst_ts_rgst( i_input_967e = t1 ).
        IF t6 IS NOT BOUND.
          DATA(t8) = NEW zlnt_exception_un_5f2d02892fe8( ).
          t8->source_location = |await provider did not return a certified settled promise|.
          RAISE EXCEPTION t8.
        ENDIF.
        IF t6->rejection IS BOUND.
          RAISE EXCEPTION t6->rejection.
        ENDIF.
        DATA t10 TYPE REF TO object.
        t10 = t6->value.
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
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t4->load( ).
    APPEND t1 TO t4->items.
    t4->save( ).
    result = me->add_files_179c( i_files = t4 ).

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
