* TS: src/objects/rename/renamer.ts:21:1 Renamer
CLASS zcl_lnt_renamer DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS rename IMPORTING i_type_9913 TYPE string i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_irename_result.
    METHODS build_edits IMPORTING i_type_9913 TYPE string i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO object.
    METHODS factory IMPORTING i_type_9913 TYPE string RETURNING VALUE(result) TYPE REF TO zif_lnt_object_renamer.
    METHODS apply IMPORTING i_edits TYPE REF TO object RETURNING VALUE(result) TYPE REF TO zcl_lnt_irename_result.
    METHODS apply_edit IMPORTING i_dc TYPE REF TO object.
    METHODS apply_renames IMPORTING i_renames TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_renamer IMPLEMENTATION.
  METHOD constructor.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD rename.
    DATA t4 TYPE REF TO zcl_lnt_shape_36bc2e57.
    DATA t5 TYPE REF TO zcl_lnt_shape_36bc2e57.
    DATA t6 TYPE REF TO object.
    DATA(t7) = i_type_9913.
    DATA(t8) = i_old_name.
    DATA(t9) = i_new_name.
    t6 = me->build_edits( i_type_9913 = t7 i_old_name = t8 i_new_name = t9 ).
    t5 ?= t6.
    t4 = t5.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
      DATA t17 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t18 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t22->has = abap_true.
      t22->value = |no changes could be determined|.
      t18 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t22 ).
      t17 = NEW #( ).
      t17->payload = t18.
      CLEAR t17->source_value.
      DATA t24 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t25 TYPE REF TO object.
      t25 = t18.
      TRY.
          t17->source_value ?= t25.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t17->source_value IS NOT BOUND.
        TRY.
            t24 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t24 IS BOUND.
          t17->source_value = t24->source( ).
        ENDIF.
        IF t17->source_value IS NOT BOUND.
          CREATE OBJECT t17->source_value.
          t17->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t17->source_value->oval = t18.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t17.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_map__3e259f4987b9.
    t27 = t4->changes.
    IF xsdbool( t27 IS BOUND ) = abap_true.
      DATA t30 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t31 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t35) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t35->has = abap_true.
      t35->value = |only documentChanges expected|.
      t31 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t35 ).
      t30 = NEW #( ).
      t30->payload = t31.
      CLEAR t30->source_value.
      DATA t37 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t38 TYPE REF TO object.
      t38 = t31.
      TRY.
          t30->source_value ?= t38.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t30->source_value IS NOT BOUND.
        TRY.
            t37 ?= t31.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t37 IS BOUND.
          t30->source_value = t37->source( ).
        ENDIF.
        IF t30->source_value IS NOT BOUND.
          CREATE OBJECT t30->source_value.
          t30->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t30->source_value->oval = t31.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t30.
    ENDIF.

    DATA t40 TYPE REF TO zcl_lnt_irename_result.
    t40 = me->apply( i_edits = t4 ).
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t45 TYPE REF TO zcl_lnt_irun_input.
    t43 = me->reg->find_issues( i_input_967e = t45 ).
    result = t40.

  ENDMETHOD.

  METHOD build_edits.
    DATA(t1) = i_type_9913.
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    DATA t4 TYPE REF TO zif_lnt_registry.
    t4 = me->reg->parse( ).
    DATA t6 TYPE REF TO zif_lnt_object.
    DATA(t8) = me->reg.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t1.
    t9 = t12.
    DATA(t17) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t17->has = abap_true.
    t17->value = t2.
    t6 = t8->get_object( i_type_9913 = t9 i_name = t17 ).
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = VALUE abap_bool( ).
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t20 = xsdbool( t6 IS INITIAL ).
    t19 = t20.
    IF t20 = abap_true.
      t19 = xsdbool( t1 = |SICF| ).
    ENDIF.
    IF t19 = abap_true.
      DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t33.
      DATA t35 TYPE REF TO zif_lnt_generator_8f73cd1c.
      t35 = me->reg->get_objects( )->iterate( ).
      DO.
        DATA t40 TYPE REF TO zcl_lnt_generator_17955b8b.
        t40 = t35->next( ).
        IF t40->done = abap_true.
          EXIT.
        ENDIF.
        DATA t47 TYPE REF TO zif_lnt_object.
        t47 = t40->value.
        DATA(t49) = VALUE f( ).
        DATA(t50) = VALUE f( ).
        DATA(t51) = VALUE abap_bool( ).
        t51 = abap_false.
        DATA t53 TYPE REF TO cx_root.
        CLEAR t53.
        TRY.
            DATA(t54) = VALUE f( ).
            DATA(t55) = VALUE i( ).
            t33->load( ).
            APPEND t47 TO t33->items.
            t55 = lines( t33->items ).
            t33->save( ).
            t54 = t55.
            t50 = t54.
            t51 = abap_true.
          CATCH cx_root INTO t53.
            IF xsdbool( t51 = abap_false ) = abap_true.
              t35->close( ).
            ENDIF.
            RAISE EXCEPTION t53.
        ENDTRY.
        IF xsdbool( t51 = abap_false ) = abap_true.
          t35->close( ).
        ENDIF.
        t49 = t50.
      ENDDO.
      t31 = t33.
      DATA(t67) = VALUE i( ).
      t31->load( ).
      t67 = lines( t31->items ).
      DATA(t70) = VALUE i( ).
      t70 = 0.
      DATA t72 TYPE REF TO zif_lnt_object.
      DO.
        IF xsdbool( t70 < t67 ) = abap_false.
          EXIT.
        ENDIF.
        DATA t77 TYPE REF TO zif_lnt_object.
        CLEAR t77.
        DATA t79 TYPE REF TO zif_lnt_object.
        CLEAR t79.
        DATA t82 TYPE REF TO object.
        t82 = t31->get( p0 = t70 ).
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t83.
        CLEAR t79.
        IF t82 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t83 ?= t82.
          DATA t84 TYPE REF TO object.
          t84 = t83->as_ref( ).
          t79 ?= t84.
        ELSE.
          t79 ?= t82.
        ENDIF.
        t77 = t79.
        DATA(t85) = VALUE abap_bool( ).
        DATA(t86) = VALUE abap_bool( ).
        t86 = xsdbool( t77->get_type( ) = |SICF| ).
        t85 = t86.
        IF t86 = abap_true.
          DATA(t90) = VALUE abap_bool( ).
          DATA(t91) = VALUE string( ).
          DATA(t92) = VALUE string( ).
          t92 = t77->get_name( ).
          DATA(t94) = strlen( t92 ).
          t91 = t92.
          IF t91 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t91 TO UPPER CASE.
          ELSE.
            t91 = zlnt_runtime_uppe_91169605024d=>full( t91 ).
          ENDIF.
          DATA(t95) = VALUE string( ).
          DATA(t96) = VALUE string( ).
          DATA(t98) = strlen( t2 ).
          t96 = t2.
          IF t96 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t96 TO UPPER CASE.
          ELSE.
            t96 = zlnt_runtime_uppe_91169605024d=>full( t96 ).
          ENDIF.
          DATA(t100) = strlen( t96 ).
          t95 = |{ t96 }{ | | }|.
          DATA(t101) = strlen( t91 ).
          DATA(t102) = VALUE i( ).
          DATA(t103) = VALUE i( ).
          DATA(t104) = VALUE string( ).
          t102 = strlen( t95 ).
          IF t102 = 0.
            t90 = abap_true.
          ELSEIF t102 <= t101.
            t103 = 0.
            t104 = t91+t103(t102).
            IF t104 = t95.
              t90 = abap_true.
            ENDIF.
          ENDIF.
          t85 = t90.
        ENDIF.
        IF t85 = abap_true.
          t72 = t77.
          EXIT.
        ENDIF.
        DATA(t111) = 1.
        t70 = t70 + t111.
      ENDDO.
      t6 = t72.
    ENDIF.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t6 IS INITIAL ) = abap_true.
      DATA t120 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t121 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t125) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t125->has = abap_true.
      t125->value = |rename, object not found|.
      t121 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t125 ).
      t120 = NEW #( ).
      t120->payload = t121.
      CLEAR t120->source_value.
      DATA t127 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t128 TYPE REF TO object.
      t128 = t121.
      TRY.
          t120->source_value ?= t128.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t120->source_value IS NOT BOUND.
        TRY.
            t127 ?= t121.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t127 IS BOUND.
          t120->source_value = t127->source( ).
        ENDIF.
        IF t120->source_value IS NOT BOUND.
          CREATE OBJECT t120->source_value.
          t120->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t120->source_value->oval = t121.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t120.
    ENDIF.
    DATA(t130) = VALUE f( ).
    t130 = strlen( t3 ).
    DATA(t134) = VALUE f( ).
    t134 = t6->get_allowed_naming( )->max_length.
    IF xsdbool( t130 > t134 ) = abap_true.
      DATA t138 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t139 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t143) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t143->has = abap_true.
      t143->value = |Name not allowed|.
      t139 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t143 ).
      t138 = NEW #( ).
      t138->payload = t139.
      CLEAR t138->source_value.
      DATA t145 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t146 TYPE REF TO object.
      t146 = t139.
      TRY.
          t138->source_value ?= t146.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t138->source_value IS NOT BOUND.
        TRY.
            t145 ?= t139.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t145 IS BOUND.
          t138->source_value = t145->source( ).
        ENDIF.
        IF t138->source_value IS NOT BOUND.
          CREATE OBJECT t138->source_value.
          t138->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t138->source_value->oval = t139.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t138.
    ENDIF.

    DATA t148 TYPE REF TO zif_lnt_object_renamer.
    t148 = me->factory( i_type_9913 = t1 ).
    DATA t152 TYPE REF TO zif_lnt_object.
    t152 = t6.
    DATA(t154) = VALUE string( ).
    DATA(t156) = strlen( t2 ).
    t154 = t2.
    IF t154 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t154 TO UPPER CASE.
    ELSE.
      t154 = zlnt_runtime_uppe_91169605024d=>full( t154 ).
    ENDIF.
    result = t148->build_edits( i_obj_1ed0 = t152 i_old_name = t154 i_new_name = t3 ).

  ENDMETHOD.

  METHOD factory.
    DATA(t1) = i_type_9913.
    IF xsdbool( t1 = |CLAS| ) = abap_true.
      DATA(t6) = me->reg.
      result = NEW zcl_lnt_rename_global_class( i_reg_f149 = t6 ).
      RETURN.
    ENDIF.
    IF xsdbool( t1 = |DTEL| ) = abap_true.
      DATA(t11) = me->reg.
      result = NEW zcl_lnt_rename_data_element( i_reg_f149 = t11 ).
      RETURN.
    ENDIF.
    IF xsdbool( t1 = |DOMA| ) = abap_true.
      DATA(t16) = me->reg.
      result = NEW zcl_lnt_rename_domain( i_reg_f149 = t16 ).
      RETURN.
    ENDIF.
    IF xsdbool( t1 = |TABL| ) = abap_true.
      DATA(t21) = me->reg.
      result = NEW zcl_lnt_rename_table( i_reg_f149 = t21 ).
      RETURN.
    ENDIF.
    IF xsdbool( t1 = |TTYP| ) = abap_true.
      DATA(t26) = me->reg.
      result = NEW zcl_lnt_rename_table_type( i_reg_f149 = t26 ).
      RETURN.
    ENDIF.
    IF xsdbool( t1 = |INTF| ) = abap_true.
      DATA(t31) = me->reg.
      result = NEW zcl_lnt_rnm_glbl_intrfc( i_reg_f149 = t31 ).
      RETURN.
    ENDIF.
    IF xsdbool( t1 = |PROG| ) = abap_true.
      DATA(t36) = me->reg.
      result = NEW zcl_lnt_rename_program( i_reg_f149 = t36 ).
      RETURN.
    ENDIF.
    IF xsdbool( t1 = |MSAG| ) = abap_true.
      DATA(t41) = me->reg.
      result = NEW zcl_lnt_rename_message_class( i_reg_f149 = t41 ).
      RETURN.
    ENDIF.
    IF xsdbool( t1 = |SICF| ) = abap_true.
      DATA(t46) = me->reg.
      result = NEW zcl_lnt_rename_icf_service( i_reg_f149 = t46 ).
      RETURN.
    ENDIF.
    DATA t47 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    DATA t48 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    DATA(t51) = VALUE string( ).
    DATA(t52) = VALUE string( ).
    DATA(t53) = |Renaming of |.
    DATA(t55) = strlen( t53 ).
    t52 = |{ t53 }{ t1 }|.
    DATA(t57) = strlen( t52 ).
    t51 = |{ t52 }{ | not yet supported| }|.
    DATA(t58) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t58->has = abap_true.
    t58->value = t51.
    t48 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t58 ).
    t47 = NEW #( ).
    t47->payload = t48.
    CLEAR t47->source_value.
    DATA t60 TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA t61 TYPE REF TO object.
    t61 = t48.
    TRY.
        t47->source_value ?= t61.
      CATCH cx_sy_move_cast_error.
    ENDTRY.
    IF t47->source_value IS NOT BOUND.
      TRY.
          t60 ?= t48.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t60 IS BOUND.
        t47->source_value = t60->source( ).
      ENDIF.
      IF t47->source_value IS NOT BOUND.
        CREATE OBJECT t47->source_value.
        t47->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        t47->source_value->oval = t48.
      ENDIF.
    ENDIF.
    RAISE EXCEPTION t47.









  ENDMETHOD.

  METHOD apply.
    DATA t1 TYPE REF TO object.
    t1 = i_edits.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zcl_lnt_irename_result.
    DATA t5 TYPE REF TO zcl_lnt_irename_result.
    DATA t6 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    t6 = NEW zlnt_runtime_set__1827558fd4c7( ).
    t5 = NEW zcl_lnt_irename_result( i_deleted_files = NEW zlnt_runtime_set__1827558fd4c7( ) i_added_files = t6 i_updated_files = NEW zlnt_runtime_set__1827558fd4c7( ) ).
    CREATE OBJECT t5->zlnt_view_ownkeys_b0e8086400eb.
    t5->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `addedFiles` p1 = t12 ).
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `deletedFiles` p1 = t13 ).
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updatedFiles` p1 = t14 ).
    ENDIF.
    CREATE OBJECT t5->zlnt_json_ownkeys_70e5fd461788.
    t5->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = |addedFiles| p1 = t16 ).
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = |deletedFiles| p1 = t18 ).
    ENDIF.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = |updatedFiles| p1 = t20 ).
    ENDIF.
    t4 = t5.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t24 TYPE REF TO zcl_lnt_shape_36bc2e57.
    DATA t25 TYPE REF TO object.
    t25 = t1.
    t24 ?= t25.
    t22 = t24->document_changes.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t22 IS BOUND ) = abap_true.
      t26 = t22.
    ELSE.
      CREATE OBJECT t26.
    ENDIF.
    t21 = t26.
    DATA t32 TYPE REF TO object.
    DATA t33 TYPE REF TO object.
    DATA(t34) = VALUE i( ).
    DO.
      t21->load( ).
      IF t34 >= lines( t21->items ).
        EXIT.
      ENDIF.
      CLEAR t33.
      READ TABLE t21->items INDEX t34 + 1 INTO t33.
      t34 = t34 + 1.
      t32 = t33.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t36.
      DATA t37 TYPE REF TO object.
      t37 = t32.
      CLEAR t36.
      IF t37 IS BOUND.
        DATA t38 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t38.
        DATA t39 TYPE REF TO object.
        CLEAR t38.
        t39 = t37.
        TRY.
            t36 ?= t39.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t36 IS NOT BOUND.
          TRY.
              t38 ?= t37.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t38 IS BOUND.
            t36 = t38->source( ).
          ENDIF.
          IF t36 IS NOT BOUND.
            CREATE OBJECT t36.
            t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t36->oval = t37.
          ENDIF.
        ENDIF.
      ENDIF.
      IF zlnt_runtime_lspg_9f4574ef5f1a=>text_document( t36 ) = abap_true.
        DATA t40 TYPE REF TO zcl_lnt_text_document_edit.
        CLEAR t40.
        DATA t41 TYPE REF TO object.
        t41 = t32.
        t40 ?= t41.
        me->apply_edit( i_dc = t40 ).
        DATA t42 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        DATA t43 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        t43 = t4->updated_files.
        DATA t46 TYPE REF TO zcl_lnt_opt_vrsn_txt_dcmn_idnt.
        CLEAR t46.
        DATA t47 TYPE REF TO zcl_lnt_text_document_edit.
        CLEAR t47.
        DATA t48 TYPE REF TO object.
        t48 = t32.
        t47 ?= t48.
        t46 = t47->text_document.
        t42 = t43->add( p0 = t46->zlnt_view_read_no_99604757acee( ) ).
      ELSE.
        DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t50.
        DATA t51 TYPE REF TO object.
        t51 = t32.
        CLEAR t50.
        IF t51 IS BOUND.
          DATA t52 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t52.
          DATA t53 TYPE REF TO object.
          CLEAR t52.
          t53 = t51.
          TRY.
              t50 ?= t53.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t50 IS NOT BOUND.
            TRY.
                t52 ?= t51.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t52 IS BOUND.
              t50 = t52->source( ).
            ENDIF.
            IF t50 IS NOT BOUND.
              CREATE OBJECT t50.
              t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t50->oval = t51.
            ENDIF.
          ENDIF.
        ENDIF.
        IF zlnt_runtime_lspg_9f4574ef5f1a=>rename( p0 = t50 condition = abap_true ) = abap_true.
          DATA t56 TYPE REF TO zcl_lnt_rename_file.
          CLEAR t56.
          DATA t57 TYPE REF TO object.
          t57 = t32.
          t56 ?= t57.
          t2->load( ).
          APPEND t56 TO t2->items.
          t2->save( ).
        ELSE.
          DATA t58 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
          DATA t59 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
          DATA(t63) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t63->has = abap_true.
          t63->value = |unexpected documentChange type|.
          t59 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t63 ).
          t58 = NEW #( ).
          t58->payload = t59.
          CLEAR t58->source_value.
          DATA t65 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t65.
          DATA t66 TYPE REF TO object.
          CLEAR t65.
          t66 = t59.
          TRY.
              t58->source_value ?= t66.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t58->source_value IS NOT BOUND.
            TRY.
                t65 ?= t59.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t65 IS BOUND.
              t58->source_value = t65->source( ).
            ENDIF.
            IF t58->source_value IS NOT BOUND.
              CREATE OBJECT t58->source_value.
              t58->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t58->source_value->oval = t59.
            ENDIF.
          ENDIF.
          RAISE EXCEPTION t58.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t68 TYPE REF TO zcl_lnt_rename_file.
    DATA t69 TYPE REF TO object.
    DATA(t70) = VALUE i( ).
    DO.
      t2->load( ).
      IF t70 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t69.
      READ TABLE t2->items INDEX t70 + 1 INTO t69.
      t70 = t70 + 1.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t71.
      CLEAR t68.
      IF t69 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t71 ?= t69.
        DATA t72 TYPE REF TO object.
        t72 = t71->as_ref( ).
        t68 ?= t72.
      ELSE.
        t68 ?= t69.
      ENDIF.
      DATA(t73) = VALUE abap_bool( ).
      DATA t74 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      t74 = t4->updated_files.
      DATA(t76) = VALUE string( ).
      t76 = t68->old_uri.
      t73 = t74->delete( p0 = t76 ).
      DATA t78 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      DATA t79 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      t79 = t4->deleted_files.
      DATA(t81) = VALUE string( ).
      t81 = t68->old_uri.
      t78 = t79->add( p0 = t81 ).
      DATA t83 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      DATA t84 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      t84 = t4->added_files.
      DATA(t86) = VALUE string( ).
      t86 = t68->new_uri.
      t83 = t84->add( p0 = t86 ).
    ENDDO.
    me->apply_renames( i_renames = t2 ).
    result = t4.

  ENDMETHOD.

  METHOD apply_edit.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA t1 TYPE REF TO object.
    t1 = i_dc.
    DATA t2 TYPE REF TO zif_lnt_file.
    DATA t7 TYPE REF TO zcl_lnt_text_document_edit.
    DATA t8 TYPE REF TO object.
    t8 = t1.
    t7 ?= t8.
    t2 = me->reg->get_file_by_name( i_filename = t7->text_document->zlnt_view_read_no_99604757acee( ) ).
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
      DATA t16 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t17 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t20) = VALUE string( ).
      DATA(t21) = VALUE string( ).
      DATA(t22) = |file |.
      DATA(t23) = VALUE string( ).
      DATA t25 TYPE REF TO zcl_lnt_text_document_edit.
      DATA t26 TYPE REF TO object.
      t26 = t1.
      t25 ?= t26.
      t23 = t25->text_document->zlnt_view_read_no_99604757acee( ).
      DATA(t27) = strlen( t22 ).
      t21 = |{ t22 }{ t23 }|.
      DATA(t29) = strlen( t21 ).
      t20 = |{ t21 }{ | not found| }|.
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = t20.
      t17 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t30 ).
      t16 = NEW #( ).
      t16->payload = t17.
      CLEAR t16->source_value.
      DATA t32 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t33 TYPE REF TO object.
      t33 = t17.
      TRY.
          t16->source_value ?= t33.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t16->source_value IS NOT BOUND.
        TRY.
            t32 ?= t17.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t32 IS BOUND.
          t16->source_value = t32->source( ).
        ENDIF.
        IF t16->source_value IS NOT BOUND.
          CREATE OBJECT t16->source_value.
          t16->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t16->source_value->oval = t17.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t16.
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t34 = t2->get_raw_rows( ).
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t39 TYPE REF TO zcl_lnt_text_document_edit.
    DATA t40 TYPE REF TO object.
    t40 = t1.
    t39 ?= t40.
    t38 = t39->edits.
    DATA t41 TYPE REF TO object.
    DATA t42 TYPE REF TO object.
    DATA(t43) = VALUE i( ).
    DO.
      t38->load( ).
      IF t43 >= lines( t38->items ).
        EXIT.
      ENDIF.
      CLEAR t42.
      READ TABLE t38->items INDEX t43 + 1 INTO t42.
      t43 = t43 + 1.
      t41 = t42.
      DATA(t46) = VALUE string( ).
      t46 = |newText|.
      DATA(t50) = VALUE abap_bool( ).
      DATA t51 TYPE REF TO object.
      t51 = t41.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t53.
      DATA t54 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t54.
      CLEAR t53.
      CLEAR t54.
      IF t51 IS NOT BOUND.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: erasedPropertyHas: receiver is undefined`.
      ENDIF.
      TRY.
          t53 ?= t51.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t53 IS NOT BOUND.
        TRY.
            t54 ?= t51.
          CATCH cx_sy_move_cast_error.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: erasedPropertyHas: reference lacks view storage`.
        ENDTRY.
        t53 = t54->source( ).
        IF t53 IS NOT BOUND.
          IF t54->structural( ) = abap_false.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: erasedPropertyHas: source-less storage is not structural`.
          ENDIF.
          t50 = t54->has( t46 ).
        ELSE.
          t50 = t53->has( t46 ).
        ENDIF.
      ELSE.
        IF t53->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: erasedPropertyHas: source is not object graph`.
        ENDIF.
        t50 = t53->has( t46 ).
      ENDIF.
      IF t50 = abap_false.
        t50 = xsdbool( t46 = `constructor` OR t46 = `__proto__` OR t46 = `hasOwnProperty` OR t46 = `isPrototypeOf` OR t46 = `propertyIsEnumerable` OR t46 = `toLocaleString` OR t46 = `toString` OR t46 = `valueOf` OR t46 = `__defineGetter__`
        OR t46 = `__defineSetter__` OR t46 = `__lookupGetter__` OR t46 = `__lookupSetter__` ).
      ENDIF.
      IF xsdbool( t50 = abap_false ) = abap_true.
        DATA t56 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        DATA t57 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t61->has = abap_true.
        t61->value = |applyEdit, snippet edit not supported|.
        t57 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t61 ).
        t56 = NEW #( ).
        t56->payload = t57.
        CLEAR t56->source_value.
        DATA t63 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t63.
        DATA t64 TYPE REF TO object.
        CLEAR t63.
        t64 = t57.
        TRY.
            t56->source_value ?= t64.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t56->source_value IS NOT BOUND.
          TRY.
              t63 ?= t57.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t63 IS BOUND.
            t56->source_value = t63->source( ).
          ENDIF.
          IF t56->source_value IS NOT BOUND.
            CREATE OBJECT t56->source_value.
            t56->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t56->source_value->oval = t57.
          ENDIF.
        ENDIF.
        RAISE EXCEPTION t56.
      ENDIF.
      DATA(t66) = VALUE f( ).
      DATA t69 TYPE REF TO zcl_lnt_union_0fb2de53.
      CLEAR t69.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t70.
      DATA t71 TYPE REF TO object.
      t71 = t41.
      CLEAR t70.
      IF t71 IS BOUND.
        DATA t72 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t72.
        DATA t73 TYPE REF TO object.
        CLEAR t72.
        t73 = t71.
        TRY.
            t70 ?= t73.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t70 IS NOT BOUND.
          TRY.
              t72 ?= t71.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t72 IS BOUND.
            t70 = t72->source( ).
          ENDIF.
          IF t70 IS NOT BOUND.
            CREATE OBJECT t70.
            t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t70->oval = t71.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t69.
      IF t70 IS BOUND.
        IF t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t69 ?= t70->oval.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
        IF t69 IS NOT BOUND.
          IF t70->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t74 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t74.
            IF t70->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
            ENDIF.
            TRY.
                t74 ?= t70->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
            ENDTRY.
            IF t74->structural( ) <> abap_true.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
            ENDIF.
          ENDIF.
          t69 = NEW zcl_lnt_union_0fb2de53( view_source = t70 ).
        ENDIF.
      ENDIF.
      t66 = t69->zlnt_view_read_un_4fa0c5b5e04a( )->zlnt_view_read_no_afe0c94a5142( )->zlnt_view_read_no_30cccf3c929a( ).
      DATA t78 TYPE REF TO zcl_lnt_union_0fb2de53.
      CLEAR t78.
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t79.
      DATA t80 TYPE REF TO object.
      t80 = t41.
      CLEAR t79.
      IF t80 IS BOUND.
        DATA t81 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t81.
        DATA t82 TYPE REF TO object.
        CLEAR t81.
        t82 = t80.
        TRY.
            t79 ?= t82.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t79 IS NOT BOUND.
          TRY.
              t81 ?= t80.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t81 IS BOUND.
            t79 = t81->source( ).
          ENDIF.
          IF t79 IS NOT BOUND.
            CREATE OBJECT t79.
            t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t79->oval = t80.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t78.
      IF t79 IS BOUND.
        IF t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t78 ?= t79->oval.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
        IF t78 IS NOT BOUND.
          IF t79->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t83 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t83.
            IF t79->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
            ENDIF.
            TRY.
                t83 ?= t79->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
            ENDTRY.
            IF t83->structural( ) <> abap_true.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
            ENDIF.
          ENDIF.
          t78 = NEW zcl_lnt_union_0fb2de53( view_source = t79 ).
        ENDIF.
      ENDIF.
      IF xsdbool( t66 <> t78->zlnt_view_read_un_4fa0c5b5e04a( )->zlnt_view_read_no_04608ad22a15( )->zlnt_view_read_no_30cccf3c929a( ) ) = abap_true.
        DATA t84 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        DATA t85 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        DATA(t89) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t89->has = abap_true.
        t89->value = |applyEdit, start and end line differ|.
        t85 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t89 ).
        t84 = NEW #( ).
        t84->payload = t85.
        CLEAR t84->source_value.
        DATA t91 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t91.
        DATA t92 TYPE REF TO object.
        CLEAR t91.
        t92 = t85.
        TRY.
            t84->source_value ?= t92.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t84->source_value IS NOT BOUND.
          TRY.
              t91 ?= t85.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t91 IS BOUND.
            t84->source_value = t91->source( ).
          ENDIF.
          IF t84->source_value IS NOT BOUND.
            CREATE OBJECT t84->source_value.
            t84->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t84->source_value->oval = t85.
          ENDIF.
        ENDIF.
        RAISE EXCEPTION t84.
      ENDIF.
      DATA(t93) = VALUE string( ).
      DATA(t94) = VALUE string( ).
      DATA(t96) = VALUE i( ).
      DATA(t97) = VALUE f( ).
      DATA t100 TYPE REF TO zcl_lnt_union_0fb2de53.
      CLEAR t100.
      DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t101.
      DATA t102 TYPE REF TO object.
      t102 = t41.
      CLEAR t101.
      IF t102 IS BOUND.
        DATA t103 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t103.
        DATA t104 TYPE REF TO object.
        CLEAR t103.
        t104 = t102.
        TRY.
            t101 ?= t104.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t101 IS NOT BOUND.
          TRY.
              t103 ?= t102.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t103 IS BOUND.
            t101 = t103->source( ).
          ENDIF.
          IF t101 IS NOT BOUND.
            CREATE OBJECT t101.
            t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t101->oval = t102.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t100.
      IF t101 IS BOUND.
        IF t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t100 ?= t101->oval.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
        IF t100 IS NOT BOUND.
          IF t101->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t105 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t105.
            IF t101->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
            ENDIF.
            TRY.
                t105 ?= t101->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
            ENDTRY.
            IF t105->structural( ) <> abap_true.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
            ENDIF.
          ENDIF.
          t100 = NEW zcl_lnt_union_0fb2de53( view_source = t101 ).
        ENDIF.
      ENDIF.
      t97 = t100->zlnt_view_read_un_4fa0c5b5e04a( )->zlnt_view_read_no_afe0c94a5142( )->zlnt_view_read_no_30cccf3c929a( ).
      IF t97 > range_i32_upper.
        t96 = range_i32_upper.
      ELSEIF t97 < range_i32_lower.
        t96 = range_i32_lower.
      ELSE.
        t96 = trunc( t97 ).
      ENDIF.
      t96 = t96 + 1.
      IF t34->has( t96 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t34->load( ).
      READ TABLE t34->items INDEX t96 INTO t94.
      t93 = t94.
      DATA(t107) = VALUE i( ).
      DATA(t108) = VALUE f( ).
      DATA t111 TYPE REF TO zcl_lnt_union_0fb2de53.
      CLEAR t111.
      DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t112.
      DATA t113 TYPE REF TO object.
      t113 = t41.
      CLEAR t112.
      IF t113 IS BOUND.
        DATA t114 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t114.
        DATA t115 TYPE REF TO object.
        CLEAR t114.
        t115 = t113.
        TRY.
            t112 ?= t115.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t112 IS NOT BOUND.
          TRY.
              t114 ?= t113.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t114 IS BOUND.
            t112 = t114->source( ).
          ENDIF.
          IF t112 IS NOT BOUND.
            CREATE OBJECT t112.
            t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t112->oval = t113.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t111.
      IF t112 IS BOUND.
        IF t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t111 ?= t112->oval.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
        IF t111 IS NOT BOUND.
          IF t112->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t116 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t116.
            IF t112->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
            ENDIF.
            TRY.
                t116 ?= t112->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
            ENDTRY.
            IF t116->structural( ) <> abap_true.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
            ENDIF.
          ENDIF.
          t111 = NEW zcl_lnt_union_0fb2de53( view_source = t112 ).
        ENDIF.
      ENDIF.
      t108 = t111->zlnt_view_read_un_4fa0c5b5e04a( )->zlnt_view_read_no_afe0c94a5142( )->zlnt_view_read_no_30cccf3c929a( ).
      IF t108 > range_i32_upper.
        t107 = range_i32_upper.
      ELSEIF t108 < range_i32_lower.
        t107 = range_i32_lower.
      ELSE.
        t107 = trunc( t108 ).
      ENDIF.
      DATA(t118) = VALUE string( ).
      DATA(t119) = VALUE string( ).
      DATA(t121) = 0.
      DATA(t122) = VALUE i( ).
      DATA t126 TYPE REF TO zcl_lnt_union_0fb2de53.
      CLEAR t126.
      DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t127.
      DATA t128 TYPE REF TO object.
      t128 = t41.
      CLEAR t127.
      IF t128 IS BOUND.
        DATA t129 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t129.
        DATA t130 TYPE REF TO object.
        CLEAR t129.
        t130 = t128.
        TRY.
            t127 ?= t130.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t127 IS NOT BOUND.
          TRY.
              t129 ?= t128.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t129 IS BOUND.
            t127 = t129->source( ).
          ENDIF.
          IF t127 IS NOT BOUND.
            CREATE OBJECT t127.
            t127->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t127->oval = t128.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t126.
      IF t127 IS BOUND.
        IF t127->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t126 ?= t127->oval.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
        IF t126 IS NOT BOUND.
          IF t127->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t131 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t131.
            IF t127->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
            ENDIF.
            TRY.
                t131 ?= t127->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
            ENDTRY.
            IF t131->structural( ) <> abap_true.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
            ENDIF.
          ENDIF.
          t126 = NEW zcl_lnt_union_0fb2de53( view_source = t127 ).
        ENDIF.
      ENDIF.
      t122 = zlnt_runtime_numb_290eb04a9758=>index( t126->zlnt_view_read_un_4fa0c5b5e04a( )->zlnt_view_read_no_afe0c94a5142( )->zlnt_view_read_no_a9574d1ec283( ) ).
      DATA(t132) = strlen( t93 ).
      t121 = COND i( WHEN t121 < 0 THEN 0 WHEN t121 > t132 THEN t132 ELSE t121 ).
      t122 = COND i( WHEN t122 < 0 THEN 0 WHEN t122 > t132 THEN t132 ELSE t122 ).
      IF t121 > t122.
        t132 = t121.
        t121 = t122.
        t122 = t132.
      ENDIF.
      t132 = t122 - t121.
      t119 = t93+t121(t132).
      DATA(t133) = VALUE string( ).
      DATA t134 TYPE REF TO zcl_lnt_union_6c8220bd.
      CLEAR t134.
      DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t135.
      DATA t136 TYPE REF TO object.
      t136 = t41.
      CLEAR t135.
      IF t136 IS BOUND.
        DATA t137 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t137.
        DATA t138 TYPE REF TO object.
        CLEAR t137.
        t138 = t136.
        TRY.
            t135 ?= t138.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t135 IS NOT BOUND.
          TRY.
              t137 ?= t136.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t137 IS BOUND.
            t135 = t137->source( ).
          ENDIF.
          IF t135 IS NOT BOUND.
            CREATE OBJECT t135.
            t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t135->oval = t136.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t134.
      IF t135 IS BOUND.
        IF t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t134 ?= t135->oval.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
        IF t134 IS NOT BOUND.
          IF t135->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t139 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t139.
            IF t135->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
            ENDIF.
            TRY.
                t139 ?= t135->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
            ENDTRY.
            IF t139->structural( ) <> abap_true.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
            ENDIF.
          ENDIF.
          t134 = NEW zcl_lnt_union_6c8220bd( view_source = t135 ).
        ENDIF.
      ENDIF.
      t133 = t134->zlnt_view_read_un_3c4b2399a89f( ).
      DATA(t140) = strlen( t119 ).
      t118 = |{ t119 }{ t133 }|.
      DATA(t141) = VALUE string( ).
      DATA(t142) = VALUE string( ).
      t142 = t93.
      DATA(t144) = VALUE string( ).
      DATA(t146) = VALUE i( ).
      DATA t150 TYPE REF TO zcl_lnt_union_0fb2de53.
      CLEAR t150.
      DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t151.
      DATA t152 TYPE REF TO object.
      t152 = t41.
      CLEAR t151.
      IF t152 IS BOUND.
        DATA t153 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t153.
        DATA t154 TYPE REF TO object.
        CLEAR t153.
        t154 = t152.
        TRY.
            t151 ?= t154.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t151 IS NOT BOUND.
          TRY.
              t153 ?= t152.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t153 IS BOUND.
            t151 = t153->source( ).
          ENDIF.
          IF t151 IS NOT BOUND.
            CREATE OBJECT t151.
            t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t151->oval = t152.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t150.
      IF t151 IS BOUND.
        IF t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t150 ?= t151->oval.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
        IF t150 IS NOT BOUND.
          IF t151->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t155 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t155.
            IF t151->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
            ENDIF.
            TRY.
                t155 ?= t151->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
            ENDTRY.
            IF t155->structural( ) <> abap_true.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
            ENDIF.
          ENDIF.
          t150 = NEW zcl_lnt_union_0fb2de53( view_source = t151 ).
        ENDIF.
      ENDIF.
      t146 = zlnt_runtime_numb_290eb04a9758=>index( t150->zlnt_view_read_un_4fa0c5b5e04a( )->zlnt_view_read_no_04608ad22a15( )->zlnt_view_read_no_a9574d1ec283( ) ).
      DATA(t156) = VALUE i( ).
      t156 = strlen( t142 ).
      DATA(t159) = strlen( t142 ).
      t146 = COND i( WHEN t146 < 0 THEN 0 WHEN t146 > t159 THEN t159 ELSE t146 ).
      t156 = COND i( WHEN t156 < 0 THEN 0 WHEN t156 > t159 THEN t159 ELSE t156 ).
      IF t146 > t156.
        t159 = t146.
        t146 = t156.
        t156 = t159.
      ENDIF.
      t159 = t156 - t146.
      t144 = t142+t146(t159).
      t141 = t144.
      DATA(t160) = strlen( t118 ).
      t34->put( p0 = t107 p1 = |{ t118 }{ t141 }| ).
    ENDDO.
    DATA t162 TYPE REF TO zcl_lnt_memory_file.
    DATA(t163) = VALUE string( ).
    DATA t165 TYPE REF TO zcl_lnt_text_document_edit.
    DATA t166 TYPE REF TO object.
    t166 = t1.
    t165 ?= t166.
    t163 = t165->text_document->zlnt_view_read_no_99604757acee( ).
    DATA(t170) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t170->has = abap_true.
    t170->value = |\n|.
    t162 = NEW zcl_lnt_memory_file( i_filename = t163 i_raw = t34->join( p0 = t170 ) ).
    DATA t171 TYPE REF TO zif_lnt_registry.
    t171 = me->reg->update_file( i_file = t162 ).
  ENDMETHOD.

  METHOD apply_renames.
    DATA(t1) = i_renames.
    DATA t3 TYPE REF TO zcl_lnt_rename_file.
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
      DATA t8 TYPE REF TO zif_lnt_file.
      CLEAR t8.
      DATA(t11) = VALUE string( ).
      t11 = t3->old_uri.
      t8 = me->reg->get_file_by_name( i_filename = t11 ).
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      CLEAR t16.
      IF xsdbool( t8 IS INITIAL ) = abap_true.
        DATA t20 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        DATA t21 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        DATA(t25) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t25->has = abap_true.
        t25->value = |applyRenames, old not found|.
        t21 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t25 ).
        t20 = NEW #( ).
        t20->payload = t21.
        CLEAR t20->source_value.
        DATA t27 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t27.
        DATA t28 TYPE REF TO object.
        CLEAR t27.
        t28 = t21.
        TRY.
            t20->source_value ?= t28.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t20->source_value IS NOT BOUND.
          TRY.
              t27 ?= t21.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t27 IS BOUND.
            t20->source_value = t27->source( ).
          ENDIF.
          IF t20->source_value IS NOT BOUND.
            CREATE OBJECT t20->source_value.
            t20->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t20->source_value->oval = t21.
          ENDIF.
        ENDIF.
        RAISE EXCEPTION t20.
      ENDIF.
      DATA t30 TYPE REF TO zcl_lnt_memory_file.
      CLEAR t30.
      DATA(t31) = VALUE string( ).
      t31 = t3->new_uri.
      t30 = NEW zcl_lnt_memory_file( i_filename = t31 i_raw = t8->get_raw( ) ).
      DATA t36 TYPE REF TO zif_lnt_registry.
      t36 = me->reg->remove_file( i_file = t8 ).
      DATA t40 TYPE REF TO zif_lnt_registry.
      t40 = me->reg->add_file( i_file = t30 ).
    ENDDO.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1338_0381d2f9028f.
  ENDMETHOD.
ENDCLASS.
