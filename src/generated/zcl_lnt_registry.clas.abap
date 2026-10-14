* TS: src/registry.ts:80:1 Registry
CLASS zcl_lnt_registry DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
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
    METHODS get_objects RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_objects_by_type IMPORTING i_type_9913 TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_files RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_first_object RETURNING VALUE(result) TYPE REF TO zif_lnt_object.
    METHODS get_object_count RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_ca985c56.
    METHODS get_file_by_name IMPORTING i_filename TYPE string RETURNING VALUE(result) TYPE REF TO zif_lnt_file.
    METHODS get_object IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zif_lnt_object.
    METHODS get_config RETURNING VALUE(result) TYPE REF TO zif_lnt_configuration.
    METHODS set_config IMPORTING i_conf TYPE REF TO zif_lnt_configuration RETURNING VALUE(result) TYPE REF TO zif_lnt_registry.
    METHODS in_error_namespace IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE abap_bool.
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
    METHODS parse_async IMPORTING i_input_967e TYPE REF TO zcl_lnt_irun_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_builtin_f94a6ae8.
    METHODS parse_private IMPORTING i_input_967e TYPE REF TO zif_lnt_object.
    METHODS is_dirty RETURNING VALUE(result) TYPE abap_bool.
    METHODS find_or_create IMPORTING i_name TYPE string i_type_9913 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zif_lnt_object.
    METHODS remove_object IMPORTING i_remove TYPE REF TO zif_lnt_object.
    METHODS find_8f95 IMPORTING i_name TYPE string i_type_9913 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zif_lnt_object.
    METHODS parse RETURNING VALUE(result) TYPE REF TO zif_lnt_registry.
    METHODS add_files_one IMPORTING i_x TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zif_lnt_registry.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_registry IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zif_lnt_configuration( i_conf ).
    DATA t2 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
    DATA t3 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
    DATA(t4) = NEW zlnt_runtime_map__6ec5bb307efb(  ).
    t3 = t4.
    DATA(t5) = CAST zlnt_runtime_map__6ec5bb307efb( t3 ).
    t2 = t5.
    me->objects = t2.
    DATA t6 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
    DATA t7 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
    DATA(t8) = NEW zlnt_runtime_map__6ec5bb307efb(  ).
    t7 = t8.
    DATA(t9) = CAST zlnt_runtime_map__6ec5bb307efb( t7 ).
    t6 = t9.
    me->objects_by_type = t6.
    DATA t10 TYPE REF TO zlnt_runtime_map__e02fab5a9752.
    DATA t11 TYPE REF TO zlnt_runtime_map__e02fab5a9752.
    DATA(t12) = NEW zlnt_runtime_map__e02fab5a9752(  ).
    t11 = t12.
    DATA(t13) = CAST zlnt_runtime_map__e02fab5a9752( t11 ).
    t10 = t13.
    me->dependencies = t10.
    DATA t14 TYPE REF TO zif_lnt_registry.
    CLEAR t14.
    DATA t15 TYPE REF TO zif_lnt_configuration.
    CLEAR t15.
    DATA t16 TYPE abap_bool.
    DATA(t17) = CAST zif_lnt_configuration( t1 ).
    t16 = xsdbool( t17 IS BOUND ).
    IF t16 = abap_true.
      DATA t18 TYPE REF TO zif_lnt_configuration.
      DATA(t19) = CAST zif_lnt_configuration( t1 ).
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
    DATA(t25) = NEW zlnt_runtime_map__6ec5bb307efb(  ).
    t24 = t25.
    DATA(t26) = CAST zlnt_runtime_map__6ec5bb307efb( t24 ).
    t23 = t26.
    me->objects = t23.
    DATA t27 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
    DATA t28 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
    DATA(t29) = NEW zlnt_runtime_map__6ec5bb307efb(  ).
    t28 = t29.
    DATA(t30) = CAST zlnt_runtime_map__6ec5bb307efb( t28 ).
    t27 = t30.
    me->objects_by_type = t27.
    DATA t31 TYPE REF TO zlnt_runtime_map__e02fab5a9752.
    DATA t32 TYPE REF TO zlnt_runtime_map__e02fab5a9752.
    DATA(t33) = NEW zlnt_runtime_map__e02fab5a9752(  ).
    t32 = t33.
    DATA(t34) = CAST zlnt_runtime_map__e02fab5a9752( t32 ).
    t31 = t34.
    me->dependencies = t31.
    DATA(t35) = NEW zcl_lnt_ddic_references(  ).
    me->ddic_references = t35.
    DATA(t36) = NEW zcl_lnt_msag_references(  ).
    me->msag_references = t36.
    DATA(t37) = NEW zcl_lnt_macro_references(  ).
    me->macro_references = t37.
  ENDMETHOD.
  METHOD clear_feba.
    DATA t1 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
    DATA t2 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
    DATA(t3) = NEW zlnt_runtime_map__6ec5bb307efb(  ).
    t2 = t3.
    DATA(t4) = CAST zlnt_runtime_map__6ec5bb307efb( t2 ).
    t1 = t4.
    me->objects = t1.
    DATA t5 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
    DATA t6 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
    DATA(t7) = NEW zlnt_runtime_map__6ec5bb307efb(  ).
    t6 = t7.
    DATA(t8) = CAST zlnt_runtime_map__6ec5bb307efb( t6 ).
    t5 = t8.
    me->objects_by_type = t5.
    DATA t9 TYPE REF TO zlnt_runtime_map__e02fab5a9752.
    DATA t10 TYPE REF TO zlnt_runtime_map__e02fab5a9752.
    DATA(t11) = NEW zlnt_runtime_map__e02fab5a9752(  ).
    t10 = t11.
    DATA(t12) = CAST zlnt_runtime_map__e02fab5a9752( t10 ).
    t9 = t12.
    me->dependencies = t9.
    DATA(t13) = NEW zcl_lnt_ddic_references(  ).
    me->ddic_references = t13.
    DATA(t14) = NEW zcl_lnt_msag_references(  ).
    me->msag_references = t14.
    DATA(t15) = NEW zcl_lnt_macro_references(  ).
    me->macro_references = t15.
  ENDMETHOD.
  METHOD abaplint_version.
    DATA(t1) = |\{\{ VERSION \}\}|.
    result = t1.

  ENDMETHOD.
  METHOD get_ddic_references.
    DATA(t1) = CAST zif_lnt_ddic_references( me->ddic_references ).
    result = t1.

  ENDMETHOD.
  METHOD get_msag_references.
    DATA(t1) = CAST zif_lnt_msag_references( me->msag_references ).
    result = t1.

  ENDMETHOD.
  METHOD get_macro_references.
    DATA(t1) = CAST zif_lnt_macro_references( me->macro_references ).
    result = t1.

  ENDMETHOD.
  METHOD get_objects.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    t1 = t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t4) = CAST zlnt_runtime_map__6ec5bb307efb( me->objects ).
    t3 = t4->keys(  ).
    DATA(t5) = VALUE string( ).
    LOOP AT t3->items INTO t5.
      DATA t6 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
      DATA t7 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
      DATA t8 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
      DATA(t9) = CAST zlnt_runtime_map__6ec5bb307efb( me->objects ).
      DATA(t10) = t5.
      t8 = t9->get( p0 = t10 ).
      t7 = t8.
      t6 = t7.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t12) = CAST zlnt_runtime_map__b4fe03e97505( t6 ).
      t11 = t12->keys(  ).
      DATA(t13) = VALUE string( ).
      LOOP AT t11->items INTO t13.
        DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
        DATA t15 TYPE REF TO zif_lnt_object.
        DATA t16 TYPE REF TO zif_lnt_object.
        DATA(t17) = CAST zlnt_runtime_map__b4fe03e97505( t6 ).
        DATA(t18) = t13.
        t16 = t17->get( p0 = t18 ).
        t15 = t16.
        APPEND t15 TO t14->items.
      ENDLOOP.
    ENDLOOP.
    DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    result = t19.

  ENDMETHOD.
  METHOD get_objects_by_type.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
    DATA t5 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
    DATA(t6) = CAST zlnt_runtime_map__6ec5bb307efb( me->objects_by_type ).
    DATA(t7) = t1.
    t5 = t6->get( p0 = t7 ).
    t4 = t5.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = CAST zlnt_runtime_map__b4fe03e97505( t4 ).
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    IF t8 = abap_true.
      DATA(t10) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      result = t10.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
    DATA(t13) = CAST zlnt_runtime_map__b4fe03e97505( t4 ).
    t12 = t13.
    t11 = t12->keys(  ).
    DATA(t14) = VALUE string( ).
    LOOP AT t11->items INTO t14.
      DATA(t15) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      DATA t16 TYPE REF TO zif_lnt_object.
      DATA t17 TYPE REF TO zif_lnt_object.
      DATA t18 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
      DATA(t19) = CAST zlnt_runtime_map__b4fe03e97505( t4 ).
      t18 = t19.
      DATA(t20) = t14.
      t17 = t18->get( p0 = t20 ).
      t16 = t17.
      APPEND t16 TO t15->items.
    ENDLOOP.
    DATA(t21) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t21.

  ENDMETHOD.
  METHOD get_files.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/registry.ts:136|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_first_object.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t2) = CAST zlnt_runtime_map__6ec5bb307efb( me->objects ).
    t1 = t2->keys(  ).
    DATA(t3) = VALUE string( ).
    LOOP AT t1->items INTO t3.
      DATA t4 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
      DATA t5 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
      DATA(t6) = CAST zlnt_runtime_map__6ec5bb307efb( me->objects ).
      DATA(t7) = t3.
      t5 = t6->get( p0 = t7 ).
      t4 = t5.
      DATA(t8) = VALUE abap_bool( ).
      DATA(t9) = VALUE abap_bool( ).
      DATA(t10) = CAST zlnt_runtime_map__b4fe03e97505( t4 ).
      IF t10 IS INITIAL.
        t9 = abap_true.
      ENDIF.
      t8 = xsdbool( t9 = abap_false ).
      IF t8 = abap_true.
        DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t12 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
        DATA(t13) = CAST zlnt_runtime_map__b4fe03e97505( t4 ).
        t12 = t13.
        t11 = t12->keys(  ).
        DATA(t14) = VALUE string( ).
        LOOP AT t11->items INTO t14.
          DATA t15 TYPE REF TO zif_lnt_object.
          DATA t16 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
          DATA t17 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
          DATA(t18) = CAST zlnt_runtime_map__6ec5bb307efb( me->objects ).
          DATA(t19) = t3.
          t17 = t18->get( p0 = t19 ).
          t16 = t17.
          DATA(t20) = t14.
          t15 = t16->get( p0 = t20 ).
          result = t15.
          RETURN.
        ENDLOOP.
      ENDIF.
    ENDLOOP.
    DATA t21 TYPE REF TO zif_lnt_object.
    CLEAR t21.
    result = t21.

  ENDMETHOD.
  METHOD get_object_count.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA t1 TYPE REF TO zcl_lnt_shape_ca985c56.
    DATA t2 TYPE REF TO zcl_lnt_shape_ca985c56.
    DATA(t3) = CONV int8( 0 ).
    DATA(t4) = CONV int8( 0 ).
    DATA(t5) = CONV int8( 0 ).
    t2 = NEW zcl_lnt_shape_ca985c56( i_total = t3 i_normal = t4 i_dependencies = t5 ).
    t1 = t2.
    DATA(t6) = CAST zlnt_runtime_arra_c22708faf2e3( me->get_objects(  ) ).
    DATA t7 TYPE REF TO zif_lnt_object.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
    LOOP AT t6->items INTO t8.
      t7 ?= t8.
      DATA(t9) = CAST zcl_lnt_shape_ca985c56( t1 ).
      DATA t10 TYPE int8.
      DATA t11 TYPE int8.
      DATA(t12) = CAST zcl_lnt_shape_ca985c56( t1 ).
      t11 = t12->total.
      DATA(t13) = CONV int8( 1 ).
      t10 = t11 + t13.
      IF t10 < range_int8_bound_min OR t10 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      t9->total = t10.
      DATA(t14) = VALUE abap_bool( ).
      DATA t15 TYPE REF TO zif_lnt_object.
      DATA(t16) = CAST zif_lnt_object( t7 ).
      t15 = t16.
      DATA(t17) = VALUE abap_bool( ).
      DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
      DATA t20 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
      DATA(t21) = CAST zlnt_runtime_map__e02fab5a9752( me->dependencies ).
      DATA t22 TYPE string.
      DATA(t23) = CAST zif_lnt_object( t15 ).
      t22 = t23->get_type(  ).
      t20 = t21->get( p0 = t22 ).
      t19 = t20.
      DATA t24 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t24.
      DATA(t25) = VALUE abap_bool( ).
      DATA(t26) = CAST zlnt_runtime_map__45a2315f90b8( t19 ).
      IF t26 IS INITIAL.
        t25 = abap_true.
      ENDIF.
      IF t25 = abap_true.
        DATA t27 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t27.
        t24 = t27.
      ELSE.
        DATA t28 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t29 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
        DATA(t30) = CAST zlnt_runtime_map__45a2315f90b8( t19 ).
        t29 = t30.
        DATA t31 TYPE string.
        DATA(t32) = CAST zif_lnt_object( t15 ).
        t31 = t32->get_name(  ).
        t28 = t29->get( p0 = t31 ).
        t24 = t28.
      ENDIF.
      t18 = t24.
      DATA t33 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t33.
      DATA(t34) = abap_true.
      IF t34 = abap_true.
        DATA(t35) = abap_true.
        DATA(t36) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t36->has = abap_true.
        t36->value = t35.
        t33 = t36.
      ELSE.
        DATA t37 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t37.
        t33 = t37.
      ENDIF.
      DATA(t38) = VALUE abap_bool( ).
      DATA(t39) = VALUE abap_bool( ).
      IF t18 IS BOUND.
        t38 = t18->has.
      ENDIF.
      IF t33 IS BOUND.
        t39 = t33->has.
      ENDIF.
      IF t38 = t39.
        IF t38 = abap_false.
          t17 = abap_true.
        ELSEIF t18->value = t33->value.
          t17 = abap_true.
        ENDIF.
      ENDIF.
      t14 = t17.
      IF t14 = abap_true.
        DATA(t40) = CAST zcl_lnt_shape_ca985c56( t1 ).
        DATA t41 TYPE int8.
        DATA t42 TYPE int8.
        DATA(t43) = CAST zcl_lnt_shape_ca985c56( t1 ).
        t42 = t43->dependencies.
        DATA(t44) = CONV int8( 1 ).
        t41 = t42 + t44.
        IF t41 < range_int8_bound_min OR t41 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        t40->dependencies = t41.
      ELSE.
        DATA(t45) = CAST zcl_lnt_shape_ca985c56( t1 ).
        DATA t46 TYPE int8.
        DATA t47 TYPE int8.
        DATA(t48) = CAST zcl_lnt_shape_ca985c56( t1 ).
        t47 = t48->normal.
        DATA(t49) = CONV int8( 1 ).
        t46 = t47 + t49.
        IF t46 < range_int8_bound_min OR t46 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        t45->normal = t46.
      ENDIF.
    ENDLOOP.
    DATA(t50) = CAST zcl_lnt_shape_ca985c56( t1 ).
    result = t50.

  ENDMETHOD.
  METHOD get_file_by_name.
    DATA(t1) = i_filename.
    DATA(t2) = VALUE string( ).
    DATA t3 TYPE string.
    DATA(t4) = t1.
    DATA(t5) = strlen( t4 ).
    t3 = t4.
    IF t3 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t3 TO UPPER CASE.
    ELSE.
      t3 = zlnt_runtime_uppe_91169605024d=>full( t3 ).
    ENDIF.
    t2 = t3.
    DATA(t6) = CAST zlnt_runtime_arra_c22708faf2e3( me->get_objects(  ) ).
    DATA t7 TYPE REF TO zif_lnt_object.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
    LOOP AT t6->items INTO t8.
      t7 ?= t8.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t10) = CAST zif_lnt_object( t7 ).
      t9 = t10->get_files(  ).
      DATA t11 TYPE REF TO zif_lnt_file.
      CLEAR t11.
      DATA t12 TYPE REF TO object.
      CLEAR t12.
      LOOP AT t9->items INTO t12.
        t11 ?= t12.
        DATA(t13) = VALUE abap_bool( ).
        DATA t14 TYPE string.
        DATA t15 TYPE string.
        DATA(t16) = CAST zif_lnt_file( t11 ).
        t15 = t16->get_filename(  ).
        DATA(t17) = strlen( t15 ).
        t14 = t15.
        IF t14 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t14 TO UPPER CASE.
        ELSE.
          t14 = zlnt_runtime_uppe_91169605024d=>full( t14 ).
        ENDIF.
        DATA(t18) = t2.
        t13 = xsdbool( t14 = t18 ).
        IF t13 = abap_true.
          DATA t19 TYPE REF TO zif_lnt_file.
          CLEAR t19.
          DATA(t20) = abap_true.
          IF t20 = abap_true.
            DATA(t21) = CAST zif_lnt_file( t11 ).
            t19 = t21.
          ELSE.
            DATA t22 TYPE REF TO zif_lnt_file.
            CLEAR t22.
            t19 = t22.
          ENDIF.
          result = t19.
          RETURN.
        ENDIF.
      ENDLOOP.
    ENDLOOP.
    DATA t23 TYPE REF TO zif_lnt_file.
    CLEAR t23.
    result = t23.

  ENDMETHOD.
  METHOD get_object.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_type_9913 ).
    DATA(t2) = CAST zlnt_runtime_opti_4ba3bdccd169( i_name ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = CAST zlnt_runtime_opti_4ba3bdccd169( t5 ).
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
      DATA(t13) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      t14 = t15.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = CAST zlnt_runtime_opti_4ba3bdccd169( t12 ).
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
    DATA(t22) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
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
    DATA(t26) = CAST zlnt_runtime_map__6ec5bb307efb( me->objects ).
    DATA(t27) = t19.
    t25 = t26->get( p0 = t27 ).
    t24 = xsdbool( t25 IS BOUND ).
    IF t24 = abap_true.
      DATA t28 TYPE REF TO zif_lnt_object.
      DATA t29 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
      DATA t30 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
      DATA(t31) = CAST zlnt_runtime_map__6ec5bb307efb( me->objects ).
      DATA(t32) = t19.
      t30 = t31->get( p0 = t32 ).
      t29 = t30.
      DATA t33 TYPE string.
      DATA(t34) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
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
    DATA(t1) = CAST zif_lnt_configuration( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD set_config.
    DATA(t1) = CAST zif_lnt_configuration( i_conf ).
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( me->get_objects(  ) ).
    DATA t3 TYPE REF TO zif_lnt_object.
    CLEAR t3.
    DATA t4 TYPE REF TO object.
    CLEAR t4.
    LOOP AT t2->items INTO t4.
      t3 ?= t4.
      DATA(t5) = CAST zif_lnt_object( t3 ).
      t5->set_dirty(  ).
    ENDLOOP.
    DATA(t6) = CAST zif_lnt_configuration( t1 ).
    me->conf = t6.
    DATA t7 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t7.
    DATA t8 TYPE string.
    DATA t9 TYPE REF TO zcl_lnt_isyntax_settings.
    DATA(t10) = CAST zif_lnt_configuration( me->conf ).
    t9 = t10->get_syntax_setttings(  ).
    t8 = t9->error_namespace.
    DATA(t11) = |i|.
    CREATE OBJECT t7 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t8 flags = t11.
    me->error_namespace = t7.
    DATA(t12) = CAST zcl_lnt_registry( me ).
    result = t12.

  ENDMETHOD.
  METHOD in_error_namespace.
    DATA(t1) = i_name.
    DATA t2 TYPE abap_bool.
    DATA(t3) = CAST zlnt_runtime_rege_5a210f82384e( me->error_namespace ).
    DATA(t4) = t1.
    t2 = t3->test( p0 = t4 ).
    result = t2.

  ENDMETHOD.
  METHOD add_file.
    DATA(t1) = CAST zif_lnt_file( i_file ).
    DATA t2 TYPE REF TO zif_lnt_registry.
    DATA t3 TYPE REF TO zif_lnt_file.
    DATA(t4) = CAST zif_lnt_file( t1 ).
    t3 = t4.
    DATA t5 TYPE REF TO zif_lnt_registry.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t8.
    t7 = t8.
    DATA(t9) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
    DATA(t10) = CAST zif_lnt_file( t3 ).
    APPEND t10 TO t9->items.
    DATA(t11) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
    t6 = t11.
    t5 = me->add_files_179c( i_files = t6 ).
    t2 = t5.
    result = t2.

  ENDMETHOD.
  METHOD update_file.
    DATA(t1) = CAST zif_lnt_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/registry.ts:213|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD remove_file.
    DATA(t1) = CAST zif_lnt_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/registry.ts:219|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD add_files_ccee.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_files ).
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
    DATA(t11) = CAST zif_lnt_configuration( me->conf ).
    t10 = t11->get_global(  ).
    t9 = t10->exclude.
    t8 = t9.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = CAST zlnt_runtime_arra_8ecd6afe19e0( t8 ).
    IF t14 IS INITIAL.
      t13 = abap_true.
    ENDIF.
    IF t13 = abap_true.
      DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t15.
      t12 = t15.
    ELSE.
      DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t17) = CAST zlnt_runtime_arra_8ecd6afe19e0( t8 ).
      t16 = t17.
      t12 = t16.
    ENDIF.
    t7 = t12.
    DATA(t18) = VALUE string( ).
    LOOP AT t7->items INTO t18.
      DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
      DATA t20 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t20.
      DATA(t21) = t18.
      DATA(t22) = |i|.
      CREATE OBJECT t20 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t21 flags = t22.
      APPEND t20 TO t19->items.
    ENDLOOP.
    DATA(t23) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    t4 = t23.
    t3 = t4.
    DATA(t24) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t25 TYPE REF TO zif_lnt_file.
    CLEAR t25.
    DATA t26 TYPE REF TO object.
    CLEAR t26.
    LOOP AT t24->items INTO t26.
      t25 ?= t26.
      DATA t27 TYPE string.
      DATA t28 TYPE string.
      DATA(t29) = CAST zif_lnt_file( t25 ).
      t28 = t29->get_filename(  ).
      t27 = t28.
      DATA(t30) = VALUE abap_bool( ).
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = VALUE i( ).
      DATA t33 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t34) = t27.
      DATA(t35) = |.|.
      DATA(t36) = strlen( t34 ).
      DATA t37 TYPE i.
      DATA(t38) = VALUE i( ).
      DATA(t39) = VALUE i( ).
      DATA t40 TYPE i.
      DATA(t41) = VALUE string( ).
      CREATE OBJECT t33.
      t40 = strlen( t35 ).
      t37 = 0.
      IF t40 = 0.
        WHILE t37 < t36.
          t41 = t34+t37(1).
          APPEND t41 TO t33->items.
          t37 = t37 + 1.
        ENDWHILE.
      ELSE.
        WHILE t37 <= t36.
          FIND FIRST OCCURRENCE OF t35 IN SECTION OFFSET t37 OF t34 MATCH OFFSET t38.
          IF sy-subrc = 0.
            t39 = t38 - t37.
          ELSE.
            t38 = -1.
            t39 = t36 - t37.
          ENDIF.
          CLEAR t41.
          IF t39 > 0.
            t41 = t34+t37(t39).
          ENDIF.
          APPEND t41 TO t33->items.
          IF t38 < 0.
            EXIT.
          ENDIF.
          t37 = t38 + t40.
        ENDWHILE.
      ENDIF.
      t32 = lines( t33->items ).
      DATA(t42) = 2.
      t31 = xsdbool( t32 <= t42 ).
      t30 = t31.
      DATA t43 TYPE abap_bool.
      DATA(t44) = t30.
      t43 = t44.
      IF t44 = abap_false.
        DATA t45 TYPE abap_bool.
        DATA(t46) = t27.
        DATA(t47) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
        t45 = zcl_lnt_exclude_helper=>is_excluded( i_filename = t46 i_exclude_patterns = t47 ).
        t43 = t45.
      ENDIF.
      IF t43 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t48 TYPE REF TO zif_lnt_object.
      DATA t49 TYPE REF TO zif_lnt_object.
      DATA t50 TYPE string.
      DATA(t51) = CAST zif_lnt_file( t25 ).
      t50 = t51->get_object_name(  ).
      DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t53) = CAST zif_lnt_file( t25 ).
      t52 = t53->get_object_type(  ).
      t49 = me->find_or_create( i_name = t50 i_type_9913 = t52 ).
      t48 = t49.
      DATA(t54) = VALUE abap_bool( ).
      DATA t55 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t56 TYPE REF TO zcl_lnt_iglobal_config.
      DATA(t57) = CAST zif_lnt_configuration( me->conf ).
      t56 = t57->get_global(  ).
      t55 = t56->error_on_duplicate_filenames.
      DATA t58 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t58.
      DATA(t59) = abap_true.
      IF t59 = abap_true.
        DATA(t60) = abap_true.
        DATA(t61) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t61->has = abap_true.
        t61->value = t60.
        t58 = t61.
      ELSE.
        DATA t62 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t62.
        t58 = t62.
      ENDIF.
      DATA(t63) = VALUE abap_bool( ).
      DATA(t64) = VALUE abap_bool( ).
      IF t55 IS BOUND.
        t63 = t55->has.
      ENDIF.
      IF t58 IS BOUND.
        t64 = t58->has.
      ENDIF.
      IF t63 = t64.
        IF t63 = abap_false.
          t54 = abap_true.
        ELSEIF t55->value = t58->value.
          t54 = abap_true.
        ENDIF.
      ENDIF.
      IF t54 = abap_true.
        DATA(t65) = t27.
        DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t67) = CAST zif_lnt_object( t48 ).
        t66 = t67->get_files(  ).
        me->check_duplicate_filename( i_filename = t65 i_files = t66 ).
      ENDIF.
      DATA(t68) = VALUE abap_bool( ).
      DATA t69 TYPE abap_bool.
      DATA t70 TYPE abap_bool.
      DATA(t71) = t2.
      DATA(t72) = abap_false.
      t70 = xsdbool( t71 = t72 ).
      t69 = t70.
      IF t70 = abap_true.
        DATA t73 TYPE abap_bool.
        DATA(t74) = CAST zif_lnt_object( t48 ).
        t73 = xsdbool( t74 IS BOUND ).
        t69 = t73.
      ENDIF.
      t68 = t69.
      IF t69 = abap_true.
        DATA(t75) = VALUE abap_bool( ).
        DATA t76 TYPE REF TO zif_lnt_object.
        DATA(t77) = CAST zif_lnt_object( t48 ).
        t76 = t77.
        DATA(t78) = VALUE abap_bool( ).
        DATA t79 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t79.
        DATA t80 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
        DATA t81 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
        DATA(t82) = CAST zlnt_runtime_map__e02fab5a9752( me->dependencies ).
        DATA t83 TYPE string.
        DATA(t84) = CAST zif_lnt_object( t76 ).
        t83 = t84->get_type(  ).
        t81 = t82->get( p0 = t83 ).
        t80 = t81.
        DATA t85 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t85.
        DATA(t86) = VALUE abap_bool( ).
        DATA(t87) = CAST zlnt_runtime_map__45a2315f90b8( t80 ).
        IF t87 IS INITIAL.
          t86 = abap_true.
        ENDIF.
        IF t86 = abap_true.
          DATA t88 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t88.
          t85 = t88.
        ELSE.
          DATA t89 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA t90 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
          DATA(t91) = CAST zlnt_runtime_map__45a2315f90b8( t80 ).
          t90 = t91.
          DATA t92 TYPE string.
          DATA(t93) = CAST zif_lnt_object( t76 ).
          t92 = t93->get_name(  ).
          t89 = t90->get( p0 = t92 ).
          t85 = t89.
        ENDIF.
        t79 = t85.
        DATA t94 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t94.
        DATA(t95) = abap_true.
        IF t95 = abap_true.
          DATA(t96) = abap_true.
          DATA(t97) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t97->has = abap_true.
          t97->value = t96.
          t94 = t97.
        ELSE.
          DATA t98 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t98.
          t94 = t98.
        ENDIF.
        DATA(t99) = VALUE abap_bool( ).
        DATA(t100) = VALUE abap_bool( ).
        IF t79 IS BOUND.
          t99 = t79->has.
        ENDIF.
        IF t94 IS BOUND.
          t100 = t94->has.
        ENDIF.
        IF t99 = t100.
          IF t99 = abap_false.
            t78 = abap_true.
          ELSEIF t79->value = t94->value.
            t78 = abap_true.
          ENDIF.
        ENDIF.
        t75 = t78.
        t68 = t75.
      ENDIF.
      IF t68 = abap_true.
        DATA t101 TYPE REF TO zif_lnt_object.
        DATA(t102) = CAST zif_lnt_object( t48 ).
        t101 = t102.
        DATA(t103) = VALUE abap_bool( ).
        DATA t104 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
        DATA t105 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
        DATA(t106) = CAST zlnt_runtime_map__e02fab5a9752( me->dependencies ).
        DATA t107 TYPE string.
        DATA(t108) = CAST zif_lnt_object( t101 ).
        t107 = t108->get_type(  ).
        t105 = t106->get( p0 = t107 ).
        t104 = t105.
        DATA(t109) = VALUE abap_bool( ).
        DATA(t110) = VALUE abap_bool( ).
        DATA(t111) = CAST zlnt_runtime_map__45a2315f90b8( t104 ).
        IF t111 IS INITIAL.
          t110 = abap_true.
        ENDIF.
        IF t110 = abap_true.
          DATA(t112) = abap_true.
          t109 = t112.
        ELSE.
          DATA t113 TYPE abap_bool.
          DATA t114 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
          DATA(t115) = CAST zlnt_runtime_map__45a2315f90b8( t104 ).
          t114 = t115.
          DATA t116 TYPE string.
          DATA(t117) = CAST zif_lnt_object( t101 ).
          t116 = t117->get_name(  ).
          DELETE t114->entries WHERE k = t116.
          t113 = abap_true.
          t109 = t113.
        ENDIF.
        t103 = t109.
        DATA t118 TYPE REF TO zif_lnt_object.
        CLEAR t118.
        DATA(t119) = abap_true.
        IF t119 = abap_true.
          DATA(t120) = CAST zif_lnt_object( t101 ).
          t118 = t120.
        ELSE.
          DATA t121 TYPE REF TO zif_lnt_object.
          CLEAR t121.
          t118 = t121.
        ENDIF.
        me->remove_object( i_remove = t118 ).
        DATA t122 TYPE REF TO zif_lnt_object.
        DATA t123 TYPE string.
        DATA(t124) = CAST zif_lnt_file( t25 ).
        t123 = t124->get_object_name(  ).
        DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t126) = CAST zif_lnt_file( t25 ).
        t125 = t126->get_object_type(  ).
        t122 = me->find_or_create( i_name = t123 i_type_9913 = t125 ).
        t48 = t122.
      ENDIF.
      DATA(t127) = CAST zif_lnt_object( t48 ).
      DATA(t128) = CAST zif_lnt_file( t25 ).
      t127->add_file( i_file = t128 ).
    ENDLOOP.
    DATA(t129) = CAST zcl_lnt_registry( me ).
    result = t129.

  ENDMETHOD.
  METHOD check_duplicate_filename.
    DATA(t1) = i_filename.
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( i_files ).
    DATA t3 TYPE string.
    DATA t4 TYPE string.
    DATA(t5) = t1.
    t4 = zcl_lnt_registry=>filename_basename( i_filename = t5 ).
    t3 = t4.
    DATA t6 TYPE abap_bool.
    DATA(t7) = t3.
    DATA(t8) = |PACKAGE.DEVC.XML|.
    t6 = xsdbool( t7 = t8 ).
    IF t6 = abap_true.
      RETURN.
    ENDIF.
    DATA(t9) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    DATA t10 TYPE REF TO zif_lnt_file.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    LOOP AT t9->items INTO t11.
      t10 ?= t11.
      DATA t12 TYPE abap_bool.
      DATA t13 TYPE string.
      DATA t14 TYPE string.
      DATA(t15) = CAST zif_lnt_file( t10 ).
      t14 = t15->get_filename(  ).
      t13 = zcl_lnt_registry=>filename_basename( i_filename = t14 ).
      DATA(t16) = t3.
      t12 = xsdbool( t13 = t16 ).
      IF t12 = abap_true.
        DATA t17 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t17.
        DATA t18 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        CLEAR t18.
        DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t19.
        DATA(t20) = abap_true.
        IF t20 = abap_true.
          DATA t21 TYPE string.
          DATA t22 TYPE string.
          DATA t23 TYPE string.
          DATA(t24) = |Duplicate filename: |.
          DATA(t25) = t1.
          DATA(t26) = strlen( t24 ).
          t23 = |{ t24 }{ t25 }|.
          DATA(t27) = | already exists as |.
          DATA(t28) = strlen( t23 ).
          t22 = |{ t23 }{ t27 }|.
          DATA t29 TYPE string.
          DATA(t30) = CAST zif_lnt_file( t10 ).
          t29 = t30->get_filename(  ).
          DATA(t31) = strlen( t22 ).
          t21 = |{ t22 }{ t29 }|.
          DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t32->has = abap_true.
          t32->value = t21.
          t19 = t32.
        ELSE.
          DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t33.
          t19 = t33.
        ENDIF.
        t18 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t19 ).
        t17 = NEW #( ).
        t17->payload = t18.
        RAISE EXCEPTION t17.
      ENDIF.
    ENDLOOP.
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
    CREATE OBJECT t5 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t6 flags = t7.
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
    t11 = t12->pop(  ).
    t10 = t11.
    DATA(t21) = VALUE string( ).
    DATA(t22) = VALUE string( ).
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t24) = CAST zlnt_runtime_opti_4ba3bdccd169( t10 ).
    t23 = t24.
    DATA(t25) = VALUE string( ).
    DATA(t26) = VALUE abap_bool( ).
    DATA(t27) = CAST zlnt_runtime_opti_4ba3bdccd169( t23 ).
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
      DATA(t30) = CAST zlnt_runtime_opti_4ba3bdccd169( t23 ).
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
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_files ).
    DATA t2 TYPE REF TO zif_lnt_registry.
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA(t4) = abap_false.
    t2 = me->add_files_ccee( i_files = t3 i_dependency = t4 ).
    DATA(t5) = CAST zcl_lnt_registry( me ).
    result = t5.

  ENDMETHOD.
  METHOD add_dependencies.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_files ).
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t3 TYPE REF TO zif_lnt_file.
    CLEAR t3.
    DATA t4 TYPE REF TO object.
    CLEAR t4.
    LOOP AT t2->items INTO t4.
      t3 ?= t4.
      DATA t5 TYPE REF TO zif_lnt_registry.
      DATA(t6) = CAST zif_lnt_file( t3 ).
      t5 = me->add_dependency( i_file = t6 ).
    ENDLOOP.
    DATA(t7) = CAST zcl_lnt_registry( me ).
    result = t7.

  ENDMETHOD.
  METHOD add_dependency.
    DATA(t1) = CAST zif_lnt_file( i_file ).
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = CAST zif_lnt_file( t1 ).
    t5 = t6->get_object_type(  ).
    t4 = t5.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = CAST zlnt_runtime_opti_4ba3bdccd169( t4 ).
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
      DATA(t13) = CAST zlnt_runtime_opti_4ba3bdccd169( t4 ).
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
    DATA(t18) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
    t17 = t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    t19 = t20.
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = CAST zlnt_runtime_opti_4ba3bdccd169( t17 ).
    IF t22 IS INITIAL.
      t21 = abap_true.
    ELSEIF t22->has = abap_false.
      t21 = abap_true.
    ENDIF.
    t16 = t21.
    IF t16 = abap_true.
      DATA(t23) = CAST zcl_lnt_registry( me ).
      result = t23.
      RETURN.
    ENDIF.
    DATA(t24) = VALUE string( ).
    DATA t25 TYPE string.
    DATA t26 TYPE string.
    DATA(t27) = CAST zif_lnt_file( t1 ).
    t26 = t27->get_object_name(  ).
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
    DATA(t32) = CAST zlnt_runtime_map__e02fab5a9752( me->dependencies ).
    DATA t33 TYPE string.
    DATA(t34) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
    t33 = t34->value.
    t31 = t32->get( p0 = t33 ).
    t30 = t31.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    t35 = t36.
    DATA(t37) = VALUE abap_bool( ).
    DATA(t38) = CAST zlnt_runtime_map__45a2315f90b8( t30 ).
    IF t38 IS INITIAL.
      t37 = abap_true.
    ENDIF.
    t29 = t37.
    IF t29 = abap_true.
      DATA t39 TYPE REF TO zlnt_runtime_map__e02fab5a9752.
      DATA(t40) = CAST zlnt_runtime_map__e02fab5a9752( me->dependencies ).
      DATA t41 TYPE string.
      DATA(t42) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
      t41 = t42->value.
      DATA t43 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
      DATA t44 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
      DATA(t45) = NEW zlnt_runtime_map__45a2315f90b8(  ).
      t44 = t45.
      DATA(t46) = CAST zlnt_runtime_map__45a2315f90b8( t44 ).
      t43 = t46.
      t39 = t40->set( p0 = t41 p1 = t43 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    DATA t48 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    DATA t49 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    DATA(t50) = CAST zlnt_runtime_map__e02fab5a9752( me->dependencies ).
    DATA t51 TYPE string.
    DATA(t52) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
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
    DATA(t59) = CAST zlnt_runtime_arra_c22708faf2e3( t57 ).
    DATA(t60) = CAST zif_lnt_file( t1 ).
    APPEND t60 TO t59->items.
    DATA(t61) = CAST zlnt_runtime_arra_c22708faf2e3( t57 ).
    t56 = t61.
    DATA(t62) = abap_true.
    t55 = me->add_files_ccee( i_files = t56 i_dependency = t62 ).
    DATA(t63) = CAST zcl_lnt_registry( me ).
    result = t63.

  ENDMETHOD.
  METHOD remove_dependency.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    DATA t4 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    DATA(t5) = CAST zlnt_runtime_map__e02fab5a9752( me->dependencies ).
    DATA t6 TYPE string.
    DATA(t7) = CAST zif_lnt_object( t1 ).
    t6 = t7->get_type(  ).
    t4 = t5->get( p0 = t6 ).
    t3 = t4.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = CAST zlnt_runtime_map__45a2315f90b8( t3 ).
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    IF t9 = abap_true.
      DATA(t11) = abap_true.
      t8 = t11.
    ELSE.
      DATA t12 TYPE abap_bool.
      DATA t13 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
      DATA(t14) = CAST zlnt_runtime_map__45a2315f90b8( t3 ).
      t13 = t14.
      DATA t15 TYPE string.
      DATA(t16) = CAST zif_lnt_object( t1 ).
      t15 = t16->get_name(  ).
      DELETE t13->entries WHERE k = t15.
      t12 = abap_true.
      t8 = t12.
    ENDIF.
    t2 = t8.
    DATA t17 TYPE REF TO zif_lnt_object.
    CLEAR t17.
    DATA(t18) = abap_true.
    IF t18 = abap_true.
      DATA(t19) = CAST zif_lnt_object( t1 ).
      t17 = t19.
    ELSE.
      DATA t20 TYPE REF TO zif_lnt_object.
      CLEAR t20.
      t17 = t20.
    ENDIF.
    me->remove_object( i_remove = t17 ).
  ENDMETHOD.
  METHOD is_dependency.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    DATA t5 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    DATA(t6) = CAST zlnt_runtime_map__e02fab5a9752( me->dependencies ).
    DATA t7 TYPE string.
    DATA(t8) = CAST zif_lnt_object( t1 ).
    t7 = t8->get_type(  ).
    t5 = t6->get( p0 = t7 ).
    t4 = t5.
    DATA t9 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t9.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = CAST zlnt_runtime_map__45a2315f90b8( t4 ).
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
      DATA(t15) = CAST zlnt_runtime_map__45a2315f90b8( t4 ).
      t14 = t15.
      DATA t16 TYPE string.
      DATA(t17) = CAST zif_lnt_object( t1 ).
      t16 = t17->get_name(  ).
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
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/registry.ts:311|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD find_object_for_file.
    DATA(t1) = CAST zif_lnt_file( i_file ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/registry.ts:325|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD find_issues.
    DATA(t1) = CAST zcl_lnt_irun_input( i_input_967e ).
    DATA t2 TYPE abap_bool.
    DATA(t3) = CONV abap_bool( me->is_dirty(  ) ).
    DATA(t4) = abap_true.
    t2 = xsdbool( t3 = t4 ).
    IF t2 = abap_true.
      DATA(t5) = CAST zcl_lnt_registry( me->prs_instn_src_rgstry_ts_rgstry(  ) ).
    ENDIF.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zcl_lnt_rules_runner.
    DATA(t8) = CAST zcl_lnt_registry( me ).
    t7 = NEW zcl_lnt_rules_runner( i_reg_f149 = t8 ).
    DATA(t9) = CAST zlnt_runtime_arra_c22708faf2e3( me->get_objects(  ) ).
    DATA(t10) = CAST zcl_lnt_irun_input( t1 ).
    t6 = t7->run_rules( i_objects = t9 i_input_967e = t10 ).
    result = t6.

  ENDMETHOD.
  METHOD find_issues_object.
    DATA(t1) = CAST zif_lnt_object( i_iobj ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/registry.ts:346|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD prs_instn_src_rgstry_ts_rgstry.
    DATA t1 TYPE abap_bool.
    DATA(t2) = CONV abap_bool( me->is_dirty(  ) ).
    DATA(t3) = abap_false.
    t1 = xsdbool( t2 = t3 ).
    IF t1 = abap_true.
      DATA(t4) = CAST zcl_lnt_registry( me ).
      result = t4.
      RETURN.
    ENDIF.
    zcl_lnt_parsing_performance=>clear_feba(  ).
    DATA(t5) = CAST zlnt_runtime_arra_c22708faf2e3( me->get_objects(  ) ).
    DATA t6 TYPE REF TO zif_lnt_object.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    LOOP AT t5->items INTO t7.
      t6 ?= t7.
      DATA t8 TYPE REF TO zif_lnt_object.
      DATA(t9) = CAST zif_lnt_object( t6 ).
      t8 = t9.
      DATA t10 TYPE REF TO zif_lnt_configuration.
      DATA(t11) = CAST zif_lnt_configuration( me->conf ).
      t10 = t11.
      DATA t12 TYPE REF TO zcl_lnt_iparse_result.
      CLEAR t12.
      DATA t13 TYPE REF TO zcl_lnt_iparse_result.
      CLEAR t13.
      DATA(t14) = CAST zif_lnt_object( t8 ).
      DATA t15 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t15.
      DATA(t16) = abap_true.
      IF t16 = abap_true.
        DATA t17 TYPE REF TO zcl_lnt_abap_release.
        DATA(t18) = CAST zif_lnt_configuration( t10 ).
        t17 = t18->get_release(  ).
        t15 = t17.
      ELSE.
        DATA t19 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t19.
        t15 = t19.
      ENDIF.
      DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t21 TYPE REF TO zcl_lnt_isyntax_settings.
      DATA(t22) = CAST zif_lnt_configuration( t10 ).
      t21 = t22->get_syntax_setttings(  ).
      t20 = t21->global_macros.
      DATA(t23) = CAST zcl_lnt_registry( me ).
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      DATA(t25) = abap_true.
      IF t25 = abap_true.
        DATA t26 TYPE string.
        DATA(t27) = CAST zif_lnt_configuration( t10 ).
        t26 = t27->get_language_version(  ).
        DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t28->has = abap_true.
        t28->value = t26.
        t24 = t28.
      ELSE.
        DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t29.
        t24 = t29.
      ENDIF.
      t13 = t14->parse( i_release_7928 = t15 i_global_macros_5535 = t20 i_reg_f149 = t23 i_language_version_0e1d = t24 ).
      t12 = t13.
      DATA(t30) = CAST zif_lnt_object( t8 ).
      DATA(t31) = CAST zcl_lnt_iparse_result( t12 ).
      zcl_lnt_parsing_performance=>push( i_obj_1ed0 = t30 i_result = t31 ).
    ENDLOOP.
    DATA t32 TYPE REF TO zcl_lnt_cross_include_macros.
    DATA(t33) = CAST zcl_lnt_registry( me ).
    t32 = NEW zcl_lnt_cross_include_macros( i_reg_f149 = t33 ).
    t32->run(  ).
    DATA t34 TYPE REF TO zcl_lnt_fnd_glbl_dfntns.
    DATA(t35) = CAST zcl_lnt_registry( me ).
    t34 = NEW zcl_lnt_fnd_glbl_dfntns( i_reg_f149 = t35 ).
    DATA t36 TYPE REF TO zif_lnt_progress.
    CLEAR t36.
    t34->run( i_progress = t36 ).
    DATA(t37) = CAST zcl_lnt_registry( me ).
    result = t37.

  ENDMETHOD.
  METHOD parse_async.
    DATA(t1) = CAST zcl_lnt_irun_input( i_input_967e ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/registry.ts:370|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD parse_private.
    DATA(t1) = CAST zif_lnt_object( i_input_967e ).
    DATA t2 TYPE REF TO zif_lnt_configuration.
    DATA(t3) = CAST zif_lnt_configuration( me->conf ).
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_iparse_result.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_iparse_result.
    CLEAR t5.
    DATA(t6) = CAST zif_lnt_object( t1 ).
    DATA t7 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t7.
    DATA(t8) = abap_true.
    IF t8 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_abap_release.
      DATA(t10) = CAST zif_lnt_configuration( t2 ).
      t9 = t10->get_release(  ).
      t7 = t9.
    ELSE.
      DATA t11 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t11.
      t7 = t11.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t13 TYPE REF TO zcl_lnt_isyntax_settings.
    DATA(t14) = CAST zif_lnt_configuration( t2 ).
    t13 = t14->get_syntax_setttings(  ).
    t12 = t13->global_macros.
    DATA(t15) = CAST zcl_lnt_registry( me ).
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t16.
    DATA(t17) = abap_true.
    IF t17 = abap_true.
      DATA t18 TYPE string.
      DATA(t19) = CAST zif_lnt_configuration( t2 ).
      t18 = t19->get_language_version(  ).
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
    DATA(t22) = CAST zif_lnt_object( t1 ).
    DATA(t23) = CAST zcl_lnt_iparse_result( t4 ).
    zcl_lnt_parsing_performance=>push( i_obj_1ed0 = t22 i_result = t23 ).
  ENDMETHOD.
  METHOD is_dirty.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->get_objects(  ) ).
    DATA t2 TYPE REF TO zif_lnt_object.
    CLEAR t2.
    DATA t3 TYPE REF TO object.
    CLEAR t3.
    LOOP AT t1->items INTO t3.
      t2 ?= t3.
      DATA t4 TYPE abap_bool.
      DATA t5 TYPE abap_bool.
      DATA(t6) = CAST zif_lnt_object( t2 ).
      t5 = t6->is_dirty(  ).
      t4 = t5.
      DATA t7 TYPE abap_bool.
      DATA(t8) = t4.
      DATA(t9) = abap_true.
      t7 = xsdbool( t8 = t9 ).
      IF t7 = abap_true.
        DATA(t10) = abap_true.
        result = t10.
        RETURN.
      ENDIF.
    ENDLOOP.
    DATA(t11) = abap_false.
    result = t11.

  ENDMETHOD.
  METHOD find_or_create.
    DATA(t1) = i_name.
    DATA(t2) = CAST zlnt_runtime_opti_4ba3bdccd169( i_type_9913 ).
    DATA t3 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    CLEAR t3.
    TRY.
        DATA t4 TYPE REF TO zif_lnt_object.
        CLEAR t4.
        DATA(t5) = t1.
        DATA(t6) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
        t4 = me->find_8f95( i_name = t5 i_type_9913 = t6 ).
        result = t4.
        RETURN.
      CATCH zlnt_exception_cl_30eec8e8805d INTO t3.
        DATA(t7) = CAST zcl_lnt_builtin_e8b3bd7e( t3->payload ).
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
        DATA(t15) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
        IF t15 IS BOUND.
          IF t15->has = abap_true.
            t14 = xsdbool( strlen( t15->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t14 = abap_true.
          DATA(t16) = VALUE string( ).
          DATA(t17) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
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
        DATA(t26) = CAST zlnt_runtime_map__6ec5bb307efb( me->objects ).
        DATA(t27) = t8.
        t25 = t26->get( p0 = t27 ).
        t24 = t25.
        DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t28.
        DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t29.
        t28 = t29.
        DATA(t30) = VALUE abap_bool( ).
        DATA(t31) = CAST zlnt_runtime_map__b4fe03e97505( t24 ).
        IF t31 IS INITIAL.
          t30 = abap_true.
        ENDIF.
        t23 = t30.
        IF t23 = abap_true.
          DATA t32 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
          CLEAR t32.
          DATA(t33) = CAST zlnt_runtime_map__6ec5bb307efb( me->objects ).
          DATA(t34) = t8.
          DATA t35 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
          CLEAR t35.
          DATA t36 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
          CLEAR t36.
          DATA(t37) = NEW zlnt_runtime_map__b4fe03e97505(  ).
          t36 = t37.
          DATA(t38) = CAST zlnt_runtime_map__b4fe03e97505( t36 ).
          t35 = t38.
          t32 = t33->set( p0 = t34 p1 = t35 ).
        ENDIF.
        DATA t39 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
        CLEAR t39.
        DATA t40 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
        CLEAR t40.
        DATA t41 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
        CLEAR t41.
        DATA(t42) = CAST zlnt_runtime_map__6ec5bb307efb( me->objects ).
        DATA(t43) = t8.
        t41 = t42->get( p0 = t43 ).
        t40 = t41.
        DATA(t44) = t12.
        DATA(t45) = CAST zif_lnt_object( t19 ).
        t39 = t40->set( p0 = t44 p1 = t45 ).
        DATA(t46) = VALUE abap_bool( ).
        DATA t47 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
        CLEAR t47.
        DATA t48 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
        CLEAR t48.
        DATA(t49) = CAST zlnt_runtime_map__6ec5bb307efb( me->objects_by_type ).
        DATA(t50) = t12.
        t48 = t49->get( p0 = t50 ).
        t47 = t48.
        DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t51.
        DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t52.
        t51 = t52.
        DATA(t53) = VALUE abap_bool( ).
        DATA(t54) = CAST zlnt_runtime_map__b4fe03e97505( t47 ).
        IF t54 IS INITIAL.
          t53 = abap_true.
        ENDIF.
        t46 = t53.
        IF t46 = abap_true.
          DATA t55 TYPE REF TO zlnt_runtime_map__6ec5bb307efb.
          CLEAR t55.
          DATA(t56) = CAST zlnt_runtime_map__6ec5bb307efb( me->objects_by_type ).
          DATA(t57) = t12.
          DATA t58 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
          CLEAR t58.
          DATA t59 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
          CLEAR t59.
          DATA(t60) = NEW zlnt_runtime_map__b4fe03e97505(  ).
          t59 = t60.
          DATA(t61) = CAST zlnt_runtime_map__b4fe03e97505( t59 ).
          t58 = t61.
          t55 = t56->set( p0 = t57 p1 = t58 ).
        ENDIF.
        DATA t62 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
        CLEAR t62.
        DATA t63 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
        CLEAR t63.
        DATA t64 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
        CLEAR t64.
        DATA(t65) = CAST zlnt_runtime_map__6ec5bb307efb( me->objects_by_type ).
        DATA(t66) = t12.
        t64 = t65->get( p0 = t66 ).
        t63 = t64.
        DATA(t67) = t8.
        DATA(t68) = CAST zif_lnt_object( t19 ).
        t62 = t63->set( p0 = t67 p1 = t68 ).
        DATA(t69) = CAST zif_lnt_object( t19 ).
        result = t69.
        RETURN.
    ENDTRY.
  ENDMETHOD.
  METHOD remove_object.
    DATA(t1) = CAST zif_lnt_object( i_remove ).
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zif_lnt_object.
    DATA(t4) = CAST zif_lnt_object( t1 ).
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = CAST zif_lnt_object( t3 ).
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      RETURN.
    ENDIF.
    DATA(t9) = VALUE abap_bool( ).
    DATA t10 TYPE REF TO zif_lnt_object.
    DATA t11 TYPE REF TO zif_lnt_object.
    DATA t12 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
    DATA t13 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
    DATA(t14) = CAST zlnt_runtime_map__6ec5bb307efb( me->objects ).
    DATA t15 TYPE string.
    DATA t16 TYPE REF TO zif_lnt_object.
    DATA(t17) = CAST zif_lnt_object( t1 ).
    t16 = t17.
    t15 = t16->get_name(  ).
    t13 = t14->get( p0 = t15 ).
    t12 = t13.
    DATA t18 TYPE string.
    DATA t19 TYPE REF TO zif_lnt_object.
    DATA(t20) = CAST zif_lnt_object( t1 ).
    t19 = t20.
    t18 = t19->get_type(  ).
    t11 = t12->get( p0 = t18 ).
    t10 = t11.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    t21 = t22.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = CAST zif_lnt_object( t10 ).
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
      RAISE EXCEPTION t25.
    ENDIF.
    DATA t32 TYPE abap_bool.
    DATA t33 TYPE i.
    DATA t34 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t35 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
    DATA t36 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
    DATA(t37) = CAST zlnt_runtime_map__6ec5bb307efb( me->objects ).
    DATA t38 TYPE string.
    DATA t39 TYPE REF TO zif_lnt_object.
    DATA(t40) = CAST zif_lnt_object( t1 ).
    t39 = t40.
    t38 = t39->get_name(  ).
    t36 = t37->get( p0 = t38 ).
    t35 = t36.
    t34 = t35->keys(  ).
    t33 = lines( t34->items ).
    DATA(t41) = 1.
    t32 = xsdbool( t33 = t41 ).
    IF t32 = abap_true.
      DATA t42 TYPE abap_bool.
      DATA(t43) = CAST zlnt_runtime_map__6ec5bb307efb( me->objects ).
      DATA t44 TYPE string.
      DATA t45 TYPE REF TO zif_lnt_object.
      DATA(t46) = CAST zif_lnt_object( t1 ).
      t45 = t46.
      t44 = t45->get_name(  ).
      DELETE t43->entries WHERE k = t44.
      t42 = abap_true.
    ELSE.
      DATA(t47) = VALUE abap_bool( ).
      DATA t48 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
      DATA t49 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
      DATA(t50) = CAST zlnt_runtime_map__6ec5bb307efb( me->objects ).
      DATA t51 TYPE string.
      DATA t52 TYPE REF TO zif_lnt_object.
      DATA(t53) = CAST zif_lnt_object( t1 ).
      t52 = t53.
      t51 = t52->get_name(  ).
      t49 = t50->get( p0 = t51 ).
      t48 = t49.
      DATA(t54) = VALUE abap_bool( ).
      DATA(t55) = VALUE abap_bool( ).
      DATA(t56) = CAST zlnt_runtime_map__b4fe03e97505( t48 ).
      IF t56 IS INITIAL.
        t55 = abap_true.
      ENDIF.
      IF t55 = abap_true.
        DATA(t57) = abap_true.
        t54 = t57.
      ELSE.
        DATA t58 TYPE abap_bool.
        DATA t59 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
        DATA(t60) = CAST zlnt_runtime_map__b4fe03e97505( t48 ).
        t59 = t60.
        DATA t61 TYPE string.
        DATA t62 TYPE REF TO zif_lnt_object.
        DATA(t63) = CAST zif_lnt_object( t1 ).
        t62 = t63.
        t61 = t62->get_type(  ).
        DELETE t59->entries WHERE k = t61.
        t58 = abap_true.
        t54 = t58.
      ENDIF.
      t47 = t54.
    ENDIF.
    DATA t64 TYPE abap_bool.
    DATA t65 TYPE i.
    DATA t66 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t67 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
    DATA t68 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
    DATA(t69) = CAST zlnt_runtime_map__6ec5bb307efb( me->objects_by_type ).
    DATA t70 TYPE string.
    DATA t71 TYPE REF TO zif_lnt_object.
    DATA(t72) = CAST zif_lnt_object( t1 ).
    t71 = t72.
    t70 = t71->get_type(  ).
    t68 = t69->get( p0 = t70 ).
    t67 = t68.
    t66 = t67->keys(  ).
    t65 = lines( t66->items ).
    DATA(t73) = 1.
    t64 = xsdbool( t65 = t73 ).
    IF t64 = abap_true.
      DATA t74 TYPE abap_bool.
      DATA(t75) = CAST zlnt_runtime_map__6ec5bb307efb( me->objects_by_type ).
      DATA t76 TYPE string.
      DATA t77 TYPE REF TO zif_lnt_object.
      DATA(t78) = CAST zif_lnt_object( t1 ).
      t77 = t78.
      t76 = t77->get_type(  ).
      DELETE t75->entries WHERE k = t76.
      t74 = abap_true.
    ELSE.
      DATA(t79) = VALUE abap_bool( ).
      DATA t80 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
      DATA t81 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
      DATA(t82) = CAST zlnt_runtime_map__6ec5bb307efb( me->objects_by_type ).
      DATA t83 TYPE string.
      DATA t84 TYPE REF TO zif_lnt_object.
      DATA(t85) = CAST zif_lnt_object( t1 ).
      t84 = t85.
      t83 = t84->get_type(  ).
      t81 = t82->get( p0 = t83 ).
      t80 = t81.
      DATA(t86) = VALUE abap_bool( ).
      DATA(t87) = VALUE abap_bool( ).
      DATA(t88) = CAST zlnt_runtime_map__b4fe03e97505( t80 ).
      IF t88 IS INITIAL.
        t87 = abap_true.
      ENDIF.
      IF t87 = abap_true.
        DATA(t89) = abap_true.
        t86 = t89.
      ELSE.
        DATA t90 TYPE abap_bool.
        DATA t91 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
        DATA(t92) = CAST zlnt_runtime_map__b4fe03e97505( t80 ).
        t91 = t92.
        DATA t93 TYPE string.
        DATA t94 TYPE REF TO zif_lnt_object.
        DATA(t95) = CAST zif_lnt_object( t1 ).
        t94 = t95.
        t93 = t94->get_name(  ).
        DELETE t91->entries WHERE k = t93.
        t90 = abap_true.
        t86 = t90.
      ENDIF.
      t79 = t86.
    ENDIF.
  ENDMETHOD.
  METHOD find_8f95.
    DATA(t1) = i_name.
    DATA(t2) = CAST zlnt_runtime_opti_4ba3bdccd169( i_type_9913 ).
    DATA(t3) = VALUE string( ).
    DATA(t4) = VALUE string( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
    IF t6 IS BOUND.
      IF t6->has = abap_true.
        t5 = xsdbool( strlen( t6->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t5 = abap_true.
      DATA t7 TYPE string.
      DATA(t8) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
      t7 = t8->value.
      t4 = t7.
    ELSE.
      DATA(t9) = |UNKNOWN|.
      t4 = t9.
    ENDIF.
    t3 = t4.
    DATA(t10) = VALUE string( ).
    DATA t11 TYPE string.
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
    DATA t17 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
    DATA(t18) = CAST zlnt_runtime_map__6ec5bb307efb( me->objects ).
    DATA(t19) = t10.
    t17 = t18->get( p0 = t19 ).
    t16 = t17.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    t20 = t21.
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = CAST zlnt_runtime_map__b4fe03e97505( t16 ).
    IF t24 IS INITIAL.
      t23 = abap_true.
    ENDIF.
    t22 = xsdbool( t23 = abap_false ).
    t15 = t22.
    t14 = t15.
    IF t15 = abap_true.
      DATA t25 TYPE abap_bool.
      DATA t26 TYPE REF TO zif_lnt_object.
      DATA t27 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
      DATA t28 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
      DATA(t29) = CAST zlnt_runtime_map__6ec5bb307efb( me->objects ).
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
      DATA t33 TYPE REF TO zif_lnt_object.
      DATA t34 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
      DATA t35 TYPE REF TO zlnt_runtime_map__b4fe03e97505.
      DATA(t36) = CAST zlnt_runtime_map__6ec5bb307efb( me->objects ).
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
      DATA(t49) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
      t48 = t49.
      DATA(t50) = VALUE string( ).
      DATA(t51) = VALUE abap_bool( ).
      DATA(t52) = CAST zlnt_runtime_opti_4ba3bdccd169( t48 ).
      IF t52 IS INITIAL.
        t51 = abap_true.
      ELSEIF t52->has = abap_false.
        t51 = abap_true.
      ENDIF.
      IF t51 = abap_true.
        DATA(t53) = |undefined|.
        t50 = t53.
      ELSE.
        DATA t54 TYPE string.
        DATA(t55) = CAST zlnt_runtime_opti_4ba3bdccd169( t48 ).
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
    RAISE EXCEPTION t39.
  ENDMETHOD.
  METHOD parse.
    DATA(t1) = CAST zcl_lnt_registry( me->prs_instn_src_rgstry_ts_rgstry(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD add_files_one.
    DATA(t1) = CAST zif_lnt_file( i_x ).
    DATA t2 TYPE REF TO zif_lnt_registry.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA(t6) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
    DATA(t7) = CAST zif_lnt_file( t1 ).
    APPEND t7 TO t6->items.
    DATA(t8) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
    t3 = t8.
    t2 = me->add_files_179c( i_files = t3 ).
    result = t2.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1279_924aec42bf4a.
  ENDMETHOD.
  METHOD zif_lnt_registry~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_registry~parse.
    result = me->parse(  ).
  ENDMETHOD.
  METHOD zif_lnt_registry~parse_async.
    result = me->parse_async(  i_input_967e = i_input_967e ).
  ENDMETHOD.
  METHOD zif_lnt_registry~clear_feba.
    me->clear_feba(  ).
  ENDMETHOD.
  METHOD zif_lnt_registry~add_dependencies.
    result = me->add_dependencies(  i_files = i_files ).
  ENDMETHOD.
  METHOD zif_lnt_registry~add_dependency.
    result = me->add_dependency(  i_file = i_file ).
  ENDMETHOD.
  METHOD zif_lnt_registry~remove_dependency.
    me->remove_dependency(  i_obj_1ed0 = i_obj_1ed0 ).
  ENDMETHOD.
  METHOD zif_lnt_registry~is_dependency.
    result = me->is_dependency(  i_obj_1ed0 = i_obj_1ed0 ).
  ENDMETHOD.
  METHOD zif_lnt_registry~is_file_dependency.
    result = me->is_file_dependency(  i_filename = i_filename ).
  ENDMETHOD.
  METHOD zif_lnt_registry~find_issues.
    result = me->find_issues(  i_input_967e = i_input_967e ).
  ENDMETHOD.
  METHOD zif_lnt_registry~find_issues_object.
    result = me->find_issues_object(  i_iobj = i_iobj ).
  ENDMETHOD.
  METHOD zif_lnt_registry~in_error_namespace.
    result = me->in_error_namespace(  i_name = i_name ).
  ENDMETHOD.
  METHOD zif_lnt_registry~get_ddic_references.
    result = me->get_ddic_references(  ).
  ENDMETHOD.
  METHOD zif_lnt_registry~get_msag_references.
    result = me->get_msag_references(  ).
  ENDMETHOD.
  METHOD zif_lnt_registry~get_macro_references.
    result = me->get_macro_references(  ).
  ENDMETHOD.
  METHOD zif_lnt_registry~get_config.
    result = me->get_config(  ).
  ENDMETHOD.
  METHOD zif_lnt_registry~set_config.
    result = me->set_config(  i_conf = i_conf ).
  ENDMETHOD.
  METHOD zif_lnt_registry~get_objects.
    result = me->get_objects(  ).
  ENDMETHOD.
  METHOD zif_lnt_registry~get_objects_by_type.
    result = me->get_objects_by_type(  i_type_9913 = i_type_9913 ).
  ENDMETHOD.
  METHOD zif_lnt_registry~get_object_count.
    result = me->get_object_count(  ).
  ENDMETHOD.
  METHOD zif_lnt_registry~get_first_object.
    result = me->get_first_object(  ).
  ENDMETHOD.
  METHOD zif_lnt_registry~get_object.
    result = me->get_object(  i_type_9913 = i_type_9913 i_name = i_name ).
  ENDMETHOD.
  METHOD zif_lnt_registry~find_object_for_file.
    result = me->find_object_for_file(  i_file = i_file ).
  ENDMETHOD.
  METHOD zif_lnt_registry~add_file.
    result = me->add_file(  i_file = i_file ).
  ENDMETHOD.
  METHOD zif_lnt_registry~update_file.
    result = me->update_file(  i_file = i_file ).
  ENDMETHOD.
  METHOD zif_lnt_registry~remove_file.
    result = me->remove_file(  i_file = i_file ).
  ENDMETHOD.
  METHOD zif_lnt_registry~add_files_179c.
    result = me->add_files_179c(  i_files = i_files ).
  ENDMETHOD.
  METHOD zif_lnt_registry~get_file_by_name.
    result = me->get_file_by_name(  i_filename = i_filename ).
  ENDMETHOD.
  METHOD zif_lnt_registry~get_files.
    result = me->get_files(  ).
  ENDMETHOD.
  METHOD zif_lnt_registry~add_files_one.
    result = me->add_files_one(  i_x = i_x ).
  ENDMETHOD.
ENDCLASS.
