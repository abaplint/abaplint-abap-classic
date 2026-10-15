* TS: src/_config.ts:87:1 IConfig
CLASS zcl_lnt_iconfig DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zlnt_own_storage_4c72afe8366e.
    DATA zlnt_view_source_36f3bf68b9b8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_view_storage_74017ca272ac.
    DATA zlnt_view_ownkeys_b0e8086400eb TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_view_extras_47272813ead1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS zlnt_view_read_sr_2cb20cf2c0e9 RETURNING VALUE(result) TYPE REF TO zcl_lnt_iglobal_config.
    METHODS zlnt_view_write_s_5c569edd2912 IMPORTING p0 TYPE REF TO zcl_lnt_iglobal_config.
    METHODS zlnt_view_read_sr_36b2c6f770f4 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS zlnt_view_write_s_2a65a0b901ec IMPORTING p0 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS zlnt_view_read_sr_21ff5b77be46 RETURNING VALUE(result) TYPE REF TO zcl_lnt_isyntax_settings.
    METHODS zlnt_view_write_s_37fa673e301e IMPORTING p0 TYPE REF TO zcl_lnt_isyntax_settings.
    METHODS zlnt_view_read_sr_d06c95b7ddc1 RETURNING VALUE(result) TYPE REF TO zcl_lnt_irename_settings.
    METHODS zlnt_view_write_s_e921da9cf7c4 IMPORTING p0 TYPE REF TO zcl_lnt_irename_settings.
    METHODS zlnt_view_read_sr_273a4921c4d1 RETURNING VALUE(result) TYPE REF TO zcl_lnt_iabaplint_app_settings.
    METHODS zlnt_view_write_s_8b83e7bd600b IMPORTING p0 TYPE REF TO zcl_lnt_iabaplint_app_settings.
    METHODS zlnt_view_read_sr_0c3f68125cb5 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS zlnt_view_write_s_d9e6cf9a7c68 IMPORTING p0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS zlnt_view_read_sr_a78867e6be18 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS zlnt_view_write_s_383630b38e32 IMPORTING p0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA zlnt_json_ownkeys_70e5fd461788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA global TYPE REF TO zcl_lnt_iglobal_config.
    DATA dependencies TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA syntax TYPE REF TO zcl_lnt_isyntax_settings.
    DATA rename TYPE REF TO zcl_lnt_irename_settings.
    DATA app TYPE REF TO zcl_lnt_iabaplint_app_settings.
    DATA rules TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA target_rules TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS constructor IMPORTING i_global TYPE REF TO zcl_lnt_iglobal_config i_dependencies TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL i_syntax TYPE REF TO zcl_lnt_isyntax_settings i_rename TYPE REF TO zcl_lnt_irename_settings
    OPTIONAL i_app TYPE REF TO zcl_lnt_iabaplint_app_settings OPTIONAL i_rules TYPE REF TO zlnt_runtime_dyna_a429568d5be8 i_target_rules TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL view_source TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_iconfig IMPLEMENTATION.
  METHOD constructor.
    IF view_source IS BOUND.
      me->zlnt_view_source_36f3bf68b9b8 = view_source.
      RETURN.
    ENDIF.
    DATA(t1) = i_global.
    DATA(t2) = i_dependencies.
    DATA(t3) = i_syntax.
    DATA(t4) = i_rename.
    DATA(t5) = i_app.
    DATA(t6) = i_rules.
    DATA(t7) = i_target_rules.
    DATA(t8) = t1.
    me->zlnt_view_write_s_5c569edd2912( p0 = t8 ).
    DATA(t9) = t2.
    me->zlnt_view_write_s_2a65a0b901ec( p0 = t9 ).
    DATA(t10) = t3.
    me->zlnt_view_write_s_37fa673e301e( p0 = t10 ).
    DATA(t11) = t4.
    me->zlnt_view_write_s_e921da9cf7c4( p0 = t11 ).
    DATA(t12) = t5.
    me->zlnt_view_write_s_8b83e7bd600b( p0 = t12 ).
    DATA(t13) = t6.
    me->zlnt_view_write_s_d9e6cf9a7c68( p0 = t13 ).
    DATA(t14) = t7.
    me->zlnt_view_write_s_383630b38e32( p0 = t14 ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    IF zlnt_view_source_36f3bf68b9b8 IS NOT BOUND.
      result = zlnt_runtime_desc_78196487750d=>zlnt_member_d5_fe178efb571dcf.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_2cb20cf2c0e9.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `global` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        IF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              result ?= t1->oval.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
        IF result IS NOT BOUND.
          IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
            DATA t2 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t2.
            IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
            ENDIF.
            TRY.
                t2 ?= t1->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
            ENDTRY.
            IF t2->structural( ) <> abap_true.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
            ENDIF.
          ENDIF.
          DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t3.
          DATA t4 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t4.
          DATA t5 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t5.
          DATA t6 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t6.
          DATA t7 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t7.
          DATA t8 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t8.
          DATA t9 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t9.
          DATA t10 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t10.
          DATA t11 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t11.
          DATA t12 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t12.
          DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t13.
          DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t14.
          result = NEW zcl_lnt_iglobal_config( view_source = t1 i_files = t3 i_skp_gnrtd_bpf_intrfcs = t4 i_skp_gnrtd_fnctn_grps = t5 i_skp_gnrtd_gtwy_clsss = t6 i_skp_gnrtd_prsstnt_clsss = t7 i_skip_generated_proxy_classes = t8
          i_skp_gnrtd_prxy_intrfcs = t9 i_use_apack_dependencies = t10 i_skip_includes_without_main = t11 i_error_on_duplicate_filenames = t12 i_exclude = t13 i_no_issues = t14 ).
        ENDIF.
      ENDIF.
    ELSE.
      result = me->global.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_5c569edd2912.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND.
        DATA t2 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t2.
        DATA t3 TYPE REF TO object.
        CLEAR t3.
        CLEAR t2.
        t3 = p0.
        TRY.
            t1 ?= t3.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1 IS NOT BOUND.
          TRY.
              t2 ?= p0.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t2 IS BOUND.
            t1 = t2->source( ).
          ENDIF.
          IF t1 IS NOT BOUND.
            CREATE OBJECT t1.
            t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t1->oval = p0.
          ENDIF.
        ENDIF.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `global` p1 = t1 ).
    ELSE.
      me->global = p0.
      DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t4.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `global` p1 = t4 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `global`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_36b2c6f770f4.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `dependencies` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        CLEAR result.
        IF t1 IS BOUND.
          IF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                result ?= t1->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
            ENDTRY.
          ELSEIF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
            CREATE OBJECT result.
            result->source = t1.
          ELSE.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
          ENDIF.
          result->load( ).
          DATA t2 TYPE REF TO object.
          CLEAR t2.
          DATA t3 TYPE REF TO zcl_lnt_idependency.
          CLEAR t3.
          LOOP AT result->items INTO t2.
            DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t4.
            CLEAR t3.
            IF t2 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t4 ?= t2.
              CLEAR t3.
              IF t4 IS BOUND.
                IF t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  TRY.
                      t3 ?= t4->oval.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                ENDIF.
                IF t3 IS NOT BOUND.
                  IF t4->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t5 TYPE REF TO zlnt_view_storage_74017ca272ac.
                    CLEAR t5.
                    IF t4->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                    ENDIF.
                    TRY.
                        t5 ?= t4->oval.
                      CATCH cx_sy_move_cast_error.
                        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                    ENDTRY.
                    IF t5->structural( ) <> abap_true.
                      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                    ENDIF.
                  ENDIF.
                  DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t6.
                  DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t7.
                  DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t8.
                  DATA(t9) = VALUE string( ).
                  t3 = NEW zcl_lnt_idependency( view_source = t4 i_url_8ce1 = t6 i_branch = t7 i_folder_5c67 = t8 i_files = t9 ).
                ENDIF.
              ENDIF.
            ELSE.
              t3 ?= t2.
            ENDIF.
          ENDLOOP.
        ENDIF.
      ENDIF.
    ELSE.
      result = me->dependencies.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_2a65a0b901ec.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND.
        CLEAR t1.
        IF p0 IS BOUND.
          DATA t2 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t2.
          DATA t3 TYPE REF TO object.
          CLEAR t3.
          CLEAR t2.
          t3 = p0.
          TRY.
              t1 ?= t3.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t1 IS NOT BOUND.
            TRY.
                t2 ?= p0.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t2 IS BOUND.
              t1 = t2->source( ).
            ENDIF.
            IF t1 IS NOT BOUND.
              CREATE OBJECT t1.
              t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t1->oval = p0.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `dependencies` p1 = t1 ).
    ELSE.
      me->dependencies = p0.
      DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t4.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `dependencies` p1 = t4 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `dependencies`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_21ff5b77be46.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `syntax` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        IF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              result ?= t1->oval.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
        IF result IS NOT BOUND.
          IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t2 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t2.
            IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
            ENDIF.
            TRY.
                t2 ?= t1->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
            ENDTRY.
            IF t2->structural( ) <> abap_true.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
            ENDIF.
          ENDIF.
          DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t3.
          DATA(t4) = VALUE string( ).
          DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t5.
          DATA t6 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t6.
          DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t7.
          result = NEW zcl_lnt_isyntax_settings( view_source = t1 i_version = t3 i_error_namespace = t4 i_global_constants = t5 i_ambigious_voids = t6 i_global_macros_5535 = t7 ).
        ENDIF.
      ENDIF.
    ELSE.
      result = me->syntax.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_37fa673e301e.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND.
        DATA t2 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t2.
        DATA t3 TYPE REF TO object.
        CLEAR t3.
        CLEAR t2.
        t3 = p0.
        TRY.
            t1 ?= t3.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1 IS NOT BOUND.
          TRY.
              t2 ?= p0.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t2 IS BOUND.
            t1 = t2->source( ).
          ENDIF.
          IF t1 IS NOT BOUND.
            CREATE OBJECT t1.
            t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t1->oval = p0.
          ENDIF.
        ENDIF.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `syntax` p1 = t1 ).
    ELSE.
      me->syntax = p0.
      DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t4.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `syntax` p1 = t4 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `syntax`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_d06c95b7ddc1.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `rename` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        CLEAR result.
        IF t1 IS BOUND.
          IF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                result ?= t1->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF result IS NOT BOUND.
            IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t2 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t2.
              IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t2 ?= t1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t2->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t3.
            DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t4.
            DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t5.
            result = NEW zcl_lnt_irename_settings( view_source = t1 i_output = t3 i_skip_34cc = t4 i_patterns = t5 ).
          ENDIF.
        ENDIF.
      ENDIF.
    ELSE.
      result = me->rename.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_e921da9cf7c4.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND.
        CLEAR t1.
        IF p0 IS BOUND.
          DATA t2 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t2.
          DATA t3 TYPE REF TO object.
          CLEAR t3.
          CLEAR t2.
          t3 = p0.
          TRY.
              t1 ?= t3.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t1 IS NOT BOUND.
            TRY.
                t2 ?= p0.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t2 IS BOUND.
              t1 = t2->source( ).
            ENDIF.
            IF t1 IS NOT BOUND.
              CREATE OBJECT t1.
              t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t1->oval = p0.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `rename` p1 = t1 ).
    ELSE.
      me->rename = p0.
      DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t4.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `rename` p1 = t4 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `rename`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_273a4921c4d1.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `app` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        CLEAR result.
        IF t1 IS BOUND.
          IF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                result ?= t1->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF result IS NOT BOUND.
            IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t2 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t2.
              IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t2 ?= t1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t2->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA t3 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t3.
            result = NEW zcl_lnt_iabaplint_app_settings( view_source = t1 i_observations = t3 ).
          ENDIF.
        ENDIF.
      ENDIF.
    ELSE.
      result = me->app.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_8b83e7bd600b.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND.
        CLEAR t1.
        IF p0 IS BOUND.
          DATA t2 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t2.
          DATA t3 TYPE REF TO object.
          CLEAR t3.
          CLEAR t2.
          t3 = p0.
          TRY.
              t1 ?= t3.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t1 IS NOT BOUND.
            TRY.
                t2 ?= p0.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t2 IS BOUND.
              t1 = t2->source( ).
            ENDIF.
            IF t1 IS NOT BOUND.
              CREATE OBJECT t1.
              t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t1->oval = p0.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `app` p1 = t1 ).
    ELSE.
      me->app = p0.
      DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t4.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `app` p1 = t4 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `app`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_0c3f68125cb5.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `rules` ) ).
      result = t1.
    ELSE.
      result = me->rules.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_d9e6cf9a7c68.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `rules` p1 = t1 ).
    ELSE.
      me->rules = p0.
      DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `rules` p1 = t2 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `rules`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_a78867e6be18.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `targetRules` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = t1.
      ENDIF.
    ELSE.
      result = me->target_rules.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_383630b38e32.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND.
        t1 = p0.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `targetRules` p1 = t1 ).
    ELSE.
      me->target_rules = p0.
      DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `targetRules` p1 = t2 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `targetRules`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~structural.
    result = abap_true.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~source.
    result = me->zlnt_view_source_36f3bf68b9b8.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~has.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->has( p0 ).
      RETURN.
    ENDIF.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.has: own-key metadata absent`.
    ENDIF.
    result = me->zlnt_view_ownkeys_b0e8086400eb->has( p0 ).
    IF result = abap_false AND me->zlnt_view_extras_47272813ead1 IS BOUND.
      result = me->zlnt_view_extras_47272813ead1->has( p0 ).
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~delete.
    DATA ignored TYPE abap_bool.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->delete( p0 ).
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `global`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `dependencies`.
        CLEAR me->dependencies.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `syntax`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `rename`.
        CLEAR me->rename.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `app`.
        CLEAR me->app.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `rules`.
        CLEAR me->rules.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `targetRules`.
        CLEAR me->target_rules.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN OTHERS.
        ignored = zlnt_runtime_nati_be494c0b072c=>run( p0 = me key = p0 ).
        IF me->zlnt_view_extras_47272813ead1 IS BOUND.
          ignored = me->zlnt_view_extras_47272813ead1->delete( p0 ).
        ENDIF.
    ENDCASE.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      ignored = me->zlnt_view_ownkeys_b0e8086400eb->delete( p0 ).
    ENDIF.
    result = abap_true.
  ENDMETHOD.

  METHOD zlnt_own_storage_4c72afe8366e~keys.
    DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = zlnt_runtime_ownk_4497b85e405d=>keys( me->zlnt_view_source_36f3bf68b9b8 ).
      RETURN.
    ENDIF.
    t1 = me->zlnt_view_ownkeys_b0e8086400eb.
    IF t1 IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: keys: structural own-key metadata absent`.
    ENDIF.
    result = zlnt_runtime_ownk_4497b85e405d=>keys( t1 ).
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~get.
    IF p0 = `constructor` OR p0 = `toString` OR p0 = `toLocaleString` OR p0 = `valueOf` OR p0 = `hasOwnProperty` OR p0 = `isPrototypeOf` OR p0 = `propertyIsEnumerable` OR p0 = `__proto__` OR p0 = `__defineGetter__` OR p0 =
    `__defineSetter__` OR p0 = `__lookupGetter__` OR p0 = `__lookupSetter__`.
      IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
        IF me->zlnt_view_source_36f3bf68b9b8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          READ TABLE me->zlnt_view_source_36f3bf68b9b8->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
          IF sy-subrc <> 0.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: inherited prototype value unavailable from graph`.
          ENDIF.
        ELSEIF me->zlnt_view_source_36f3bf68b9b8->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: primitive prototype lookup unavailable`.
        ENDIF.
      ELSE.
        IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: prototype presence metadata absent`.
        ENDIF.
        READ TABLE me->zlnt_view_ownkeys_b0e8086400eb->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
        IF sy-subrc <> 0.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: inherited prototype value unavailable from native slots`.
        ENDIF.
      ENDIF.
    ENDIF.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->get( p0 ).
      RETURN.
    ENDIF.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get src/_config.ts.IConfig: structural own-key metadata absent`.
    ENDIF.
    READ TABLE me->zlnt_view_ownkeys_b0e8086400eb->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `global`.
        CLEAR result.
        IF me->global IS BOUND.
          DATA t1 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t1.
          DATA t2 TYPE REF TO object.
          CLEAR t2.
          CLEAR t1.
          t2 = me->global.
          TRY.
              result ?= t2.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t1 ?= me->global.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t1 IS BOUND.
              result = t1->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->global.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `dependencies`.
        CLEAR result.
        IF me->dependencies IS BOUND.
          CLEAR result.
          IF me->dependencies IS BOUND.
            DATA t3 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t3.
            DATA t4 TYPE REF TO object.
            CLEAR t4.
            CLEAR t3.
            t4 = me->dependencies.
            TRY.
                result ?= t4.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t3 ?= me->dependencies.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t3 IS BOUND.
                result = t3->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->dependencies.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `syntax`.
        CLEAR result.
        IF me->syntax IS BOUND.
          DATA t5 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t5.
          DATA t6 TYPE REF TO object.
          CLEAR t6.
          CLEAR t5.
          t6 = me->syntax.
          TRY.
              result ?= t6.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t5 ?= me->syntax.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t5 IS BOUND.
              result = t5->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->syntax.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `rename`.
        CLEAR result.
        IF me->rename IS BOUND.
          CLEAR result.
          IF me->rename IS BOUND.
            DATA t7 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t7.
            DATA t8 TYPE REF TO object.
            CLEAR t8.
            CLEAR t7.
            t8 = me->rename.
            TRY.
                result ?= t8.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t7 ?= me->rename.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t7 IS BOUND.
                result = t7->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->rename.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `app`.
        CLEAR result.
        IF me->app IS BOUND.
          CLEAR result.
          IF me->app IS BOUND.
            DATA t9 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t9.
            DATA t10 TYPE REF TO object.
            CLEAR t10.
            CLEAR t9.
            t10 = me->app.
            TRY.
                result ?= t10.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t9 ?= me->app.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t9 IS BOUND.
                result = t9->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->app.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `rules`.
        result = me->rules.
      WHEN `targetRules`.
        CLEAR result.
        IF me->target_rules IS BOUND.
          result = me->target_rules.
        ENDIF.
      WHEN OTHERS.
        IF me->zlnt_view_extras_47272813ead1 IS BOUND.
          result = me->zlnt_view_extras_47272813ead1->get( p0 ).
        ENDIF.
    ENDCASE.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~put.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = p0 p1 = p1 ).
      RETURN.
    ENDIF.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put src/_config.ts.IConfig: structural own-key metadata absent`.
    ENDIF.
    CASE p0.
      WHEN `global`.
        CLEAR me->global.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->global ?= p1->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF me->global IS NOT BOUND.
            IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
              DATA t1 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t1.
              IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t1 ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t1->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t2.
            DATA t3 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t3.
            DATA t4 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t4.
            DATA t5 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t5.
            DATA t6 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t6.
            DATA t7 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t7.
            DATA t8 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t8.
            DATA t9 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t9.
            DATA t10 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t10.
            DATA t11 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t11.
            DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t12.
            DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t13.
            me->global = NEW zcl_lnt_iglobal_config( view_source = p1 i_files = t2 i_skp_gnrtd_bpf_intrfcs = t3 i_skp_gnrtd_fnctn_grps = t4 i_skp_gnrtd_gtwy_clsss = t5 i_skp_gnrtd_prsstnt_clsss = t6 i_skip_generated_proxy_classes = t7
            i_skp_gnrtd_prxy_intrfcs = t8 i_use_apack_dependencies = t9 i_skip_includes_without_main = t10 i_error_on_duplicate_filenames = t11 i_exclude = t12 i_no_issues = t13 ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `global`.
      WHEN `dependencies`.
        CLEAR me->dependencies.
        IF p1 IS BOUND.
          CLEAR me->dependencies.
          IF p1 IS BOUND.
            IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  me->dependencies ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
              ENDTRY.
            ELSEIF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
              CREATE OBJECT me->dependencies.
              me->dependencies->source = p1.
            ELSE.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
            ENDIF.
            me->dependencies->load( ).
            DATA t14 TYPE REF TO object.
            CLEAR t14.
            DATA t15 TYPE REF TO zcl_lnt_idependency.
            CLEAR t15.
            LOOP AT me->dependencies->items INTO t14.
              DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t16.
              CLEAR t15.
              IF t14 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t16 ?= t14.
                CLEAR t15.
                IF t16 IS BOUND.
                  IF t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    TRY.
                        t15 ?= t16->oval.
                      CATCH cx_sy_move_cast_error.
                    ENDTRY.
                  ENDIF.
                  IF t15 IS NOT BOUND.
                    IF t16->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t17 TYPE REF TO zlnt_view_storage_74017ca272ac.
                      CLEAR t17.
                      IF t16->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                      ENDIF.
                      TRY.
                          t17 ?= t16->oval.
                        CATCH cx_sy_move_cast_error.
                          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                      ENDTRY.
                      IF t17->structural( ) <> abap_true.
                        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                      ENDIF.
                    ENDIF.
                    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t18.
                    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t19.
                    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t20.
                    DATA(t21) = VALUE string( ).
                    t15 = NEW zcl_lnt_idependency( view_source = t16 i_url_8ce1 = t18 i_branch = t19 i_folder_5c67 = t20 i_files = t21 ).
                  ENDIF.
                ENDIF.
              ELSE.
                t15 ?= t14.
              ENDIF.
            ENDLOOP.
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `dependencies`.
      WHEN `syntax`.
        CLEAR me->syntax.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->syntax ?= p1->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF me->syntax IS NOT BOUND.
            IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t22 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t22.
              IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t22 ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t22->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t23.
            DATA(t24) = VALUE string( ).
            DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t25.
            DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t26.
            DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t27.
            me->syntax = NEW zcl_lnt_isyntax_settings( view_source = p1 i_version = t23 i_error_namespace = t24 i_global_constants = t25 i_ambigious_voids = t26 i_global_macros_5535 = t27 ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `syntax`.
      WHEN `rename`.
        CLEAR me->rename.
        IF p1 IS BOUND.
          CLEAR me->rename.
          IF p1 IS BOUND.
            IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  me->rename ?= p1->oval.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
            ENDIF.
            IF me->rename IS NOT BOUND.
              IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t28 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t28.
                IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                ENDIF.
                TRY.
                    t28 ?= p1->oval.
                  CATCH cx_sy_move_cast_error.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                ENDTRY.
                IF t28->structural( ) <> abap_true.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                ENDIF.
              ENDIF.
              DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t29.
              DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t30.
              DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t31.
              me->rename = NEW zcl_lnt_irename_settings( view_source = p1 i_output = t29 i_skip_34cc = t30 i_patterns = t31 ).
            ENDIF.
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `rename`.
      WHEN `app`.
        CLEAR me->app.
        IF p1 IS BOUND.
          CLEAR me->app.
          IF p1 IS BOUND.
            IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  me->app ?= p1->oval.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
            ENDIF.
            IF me->app IS NOT BOUND.
              IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t32 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t32.
                IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                ENDIF.
                TRY.
                    t32 ?= p1->oval.
                  CATCH cx_sy_move_cast_error.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                ENDTRY.
                IF t32->structural( ) <> abap_true.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                ENDIF.
              ENDIF.
              DATA t33 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t33.
              me->app = NEW zcl_lnt_iabaplint_app_settings( view_source = p1 i_observations = t33 ).
            ENDIF.
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `app`.
      WHEN `rules`.
        me->rules = p1.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `rules`.
      WHEN `targetRules`.
        CLEAR me->target_rules.
        IF p1 IS BOUND.
          me->target_rules = p1.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `targetRules`.
      WHEN OTHERS.
        IF p0 = `__proto__`.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put: prototype mutation unavailable`.
        ENDIF.
        IF me->zlnt_view_extras_47272813ead1 IS NOT BOUND.
          me->zlnt_view_extras_47272813ead1 = NEW #( ).
          me->zlnt_view_extras_47272813ead1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        ENDIF.
        me->zlnt_view_extras_47272813ead1->put( p0 = p0 p1 = p1 ).
    ENDCASE.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = p0 p1 = VALUE #( ) ).
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = p0 p1 = t34 ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
