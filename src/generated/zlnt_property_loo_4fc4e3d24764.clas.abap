CLASS zlnt_property_loo_4fc4e3d24764 DEFINITION PUBLIC CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-METHODS get IMPORTING p0 TYPE REF TO zcl_lnt_object_naming_conf key TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-METHODS own IMPORTING p0 TYPE REF TO zcl_lnt_object_naming_conf key TYPE string RETURNING VALUE(result) TYPE abap_bool.
    CLASS-METHODS has IMPORTING p0 TYPE REF TO zcl_lnt_object_naming_conf key TYPE string RETURNING VALUE(result) TYPE abap_bool.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-METHODS initialize.
    CLASS-DATA initialized TYPE abap_bool.
    TYPES: BEGIN OF entry, key TYPE string, slot TYPE i, own TYPE abap_bool, END OF entry.
    CLASS-DATA entries TYPE HASHED TABLE OF entry WITH UNIQUE KEY key.
    CLASS-DATA token37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
ENDCLASS.
CLASS zlnt_property_loo_4fc4e3d24764 IMPLEMENTATION.
  METHOD initialize.
    DATA row TYPE entry.
    IF initialized = abap_true.
      RETURN.
    ENDIF.
    initialized = abap_true.
    row-key = `clas`.
    row-slot = 0.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `intf`.
    row-slot = 1.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `prog`.
    row-slot = 2.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `fugr`.
    row-slot = 3.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `tabl`.
    row-slot = 4.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `ttyp`.
    row-slot = 5.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `dtel`.
    row-slot = 6.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `doma`.
    row-slot = 7.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `msag`.
    row-slot = 8.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `tran`.
    row-slot = 9.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `enqu`.
    row-slot = 10.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `auth`.
    row-slot = 11.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `pinf`.
    row-slot = 12.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `idoc`.
    row-slot = 13.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `xslt`.
    row-slot = 14.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `ssfo`.
    row-slot = 15.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `ssst`.
    row-slot = 16.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `shlp`.
    row-slot = 17.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `sxci`.
    row-slot = 18.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `enhs`.
    row-slot = 19.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `enho`.
    row-slot = 20.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `cmod`.
    row-slot = 21.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `form`.
    row-slot = 22.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `sfpf`.
    row-slot = 23.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `sfpi`.
    row-slot = 24.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `aqqu`.
    row-slot = 25.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `aqsg`.
    row-slot = 26.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `aqbg`.
    row-slot = 27.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `suso`.
    row-slot = 28.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `sucu`.
    row-slot = 29.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `wdya`.
    row-slot = 30.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `wdyn`.
    row-slot = 31.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `patternKind`.
    row-slot = 32.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `ignoreNames`.
    row-slot = 33.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `ignorePatterns`.
    row-slot = 34.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `exclude`.
    row-slot = 35.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `severity`.
    row-slot = 36.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `constructor`.
    row-slot = 37.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token37.
    token37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
    token37->cval = zlnt_runtime_desc_78196487750d=>zlnt_member_d1630_d6dfe01ee5ce.
    row-key = `__proto__`.
    row-slot = 38.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token38.
    token38 = zlnt_property_tok_360763c36ef2=>get( ).
    row-key = `hasOwnProperty`.
    row-slot = 39.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token39.
    token39 = zlnt_property_tok_211649ca63bd=>get( ).
    row-key = `isPrototypeOf`.
    row-slot = 40.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token40.
    token40 = zlnt_property_tok_637616354ba2=>get( ).
    row-key = `propertyIsEnumerable`.
    row-slot = 41.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token41.
    token41 = zlnt_property_tok_eab6093325ec=>get( ).
    row-key = `toLocaleString`.
    row-slot = 42.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token42.
    token42 = zlnt_property_tok_016d4543a454=>get( ).
    row-key = `toString`.
    row-slot = 43.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token43.
    token43 = zlnt_property_tok_fcfea1cf7955=>get( ).
    row-key = `valueOf`.
    row-slot = 44.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token44.
    token44 = zlnt_property_tok_24bc4b0e1883=>get( ).
    row-key = `__defineGetter__`.
    row-slot = 45.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token45.
    token45 = zlnt_property_tok_67040dc5953b=>get( ).
    row-key = `__defineSetter__`.
    row-slot = 46.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token46.
    token46 = zlnt_property_tok_083e2d2fdb5a=>get( ).
    row-key = `__lookupGetter__`.
    row-slot = 47.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token47.
    token47 = zlnt_property_tok_5714b06f4586=>get( ).
    row-key = `__lookupSetter__`.
    row-slot = 48.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token48.
    token48 = zlnt_property_tok_d0ec64d8cfa1=>get( ).
  ENDMETHOD.

  METHOD get.
    DATA row TYPE entry.
    IF p0 IS NOT BOUND.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    initialize( ).
    IF p0->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      IF p0->zlnt_view_source_36f3bf68b9b8->has( key ) = abap_false.
        CASE key.
          WHEN `constructor`.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `properties.go: delete: required or prototype slot cannot retain absence`.
          WHEN `__proto__`.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `properties.go: delete: required or prototype slot cannot retain absence`.
          WHEN `hasOwnProperty`.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `properties.go: delete: required or prototype slot cannot retain absence`.
          WHEN `isPrototypeOf`.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `properties.go: delete: required or prototype slot cannot retain absence`.
          WHEN `propertyIsEnumerable`.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `properties.go: delete: required or prototype slot cannot retain absence`.
          WHEN `toLocaleString`.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `properties.go: delete: required or prototype slot cannot retain absence`.
          WHEN `toString`.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `properties.go: delete: required or prototype slot cannot retain absence`.
          WHEN `valueOf`.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `properties.go: delete: required or prototype slot cannot retain absence`.
          WHEN `__defineGetter__`.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `properties.go: delete: required or prototype slot cannot retain absence`.
          WHEN `__defineSetter__`.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `properties.go: delete: required or prototype slot cannot retain absence`.
          WHEN `__lookupGetter__`.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `properties.go: delete: required or prototype slot cannot retain absence`.
          WHEN `__lookupSetter__`.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `properties.go: delete: required or prototype slot cannot retain absence`.
        ENDCASE.
      ENDIF.
      result = p0->zlnt_view_source_36f3bf68b9b8->get( key ).
      RETURN.
    ENDIF.
    READ TABLE p0->zlnt_record_delet_0597644d88b4 WITH TABLE KEY table_line = key TRANSPORTING NO FIELDS.
    IF sy-subrc = 0.
      RETURN.
    ENDIF.
    READ TABLE entries WITH TABLE KEY key = key INTO row.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.
    CASE row-slot.
      WHEN 0.
        CLEAR result.
        IF p0->clas IS BOUND AND p0->clas->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->clas->value.
        ENDIF.
      WHEN 1.
        CLEAR result.
        IF p0->intf IS BOUND AND p0->intf->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->intf->value.
        ENDIF.
      WHEN 2.
        CLEAR result.
        IF p0->prog IS BOUND AND p0->prog->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->prog->value.
        ENDIF.
      WHEN 3.
        CLEAR result.
        IF p0->fugr IS BOUND AND p0->fugr->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->fugr->value.
        ENDIF.
      WHEN 4.
        CLEAR result.
        IF p0->tabl IS BOUND AND p0->tabl->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->tabl->value.
        ENDIF.
      WHEN 5.
        CLEAR result.
        IF p0->ttyp IS BOUND AND p0->ttyp->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->ttyp->value.
        ENDIF.
      WHEN 6.
        CLEAR result.
        IF p0->dtel IS BOUND AND p0->dtel->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->dtel->value.
        ENDIF.
      WHEN 7.
        CLEAR result.
        IF p0->doma IS BOUND AND p0->doma->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->doma->value.
        ENDIF.
      WHEN 8.
        CLEAR result.
        IF p0->msag IS BOUND AND p0->msag->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->msag->value.
        ENDIF.
      WHEN 9.
        CLEAR result.
        IF p0->tran IS BOUND AND p0->tran->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->tran->value.
        ENDIF.
      WHEN 10.
        CLEAR result.
        IF p0->enqu IS BOUND AND p0->enqu->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->enqu->value.
        ENDIF.
      WHEN 11.
        CLEAR result.
        IF p0->auth IS BOUND AND p0->auth->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->auth->value.
        ENDIF.
      WHEN 12.
        CLEAR result.
        IF p0->pinf IS BOUND AND p0->pinf->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->pinf->value.
        ENDIF.
      WHEN 13.
        CLEAR result.
        IF p0->idoc IS BOUND AND p0->idoc->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->idoc->value.
        ENDIF.
      WHEN 14.
        CLEAR result.
        IF p0->xslt IS BOUND AND p0->xslt->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->xslt->value.
        ENDIF.
      WHEN 15.
        CLEAR result.
        IF p0->ssfo IS BOUND AND p0->ssfo->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->ssfo->value.
        ENDIF.
      WHEN 16.
        CLEAR result.
        IF p0->ssst IS BOUND AND p0->ssst->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->ssst->value.
        ENDIF.
      WHEN 17.
        CLEAR result.
        IF p0->shlp IS BOUND AND p0->shlp->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->shlp->value.
        ENDIF.
      WHEN 18.
        CLEAR result.
        IF p0->sxci IS BOUND AND p0->sxci->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->sxci->value.
        ENDIF.
      WHEN 19.
        CLEAR result.
        IF p0->enhs IS BOUND AND p0->enhs->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->enhs->value.
        ENDIF.
      WHEN 20.
        CLEAR result.
        IF p0->enho IS BOUND AND p0->enho->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->enho->value.
        ENDIF.
      WHEN 21.
        CLEAR result.
        IF p0->cmod IS BOUND AND p0->cmod->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->cmod->value.
        ENDIF.
      WHEN 22.
        CLEAR result.
        IF p0->form_549a IS BOUND AND p0->form_549a->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->form_549a->value.
        ENDIF.
      WHEN 23.
        CLEAR result.
        IF p0->sfpf IS BOUND AND p0->sfpf->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->sfpf->value.
        ENDIF.
      WHEN 24.
        CLEAR result.
        IF p0->sfpi IS BOUND AND p0->sfpi->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->sfpi->value.
        ENDIF.
      WHEN 25.
        CLEAR result.
        IF p0->aqqu IS BOUND AND p0->aqqu->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->aqqu->value.
        ENDIF.
      WHEN 26.
        CLEAR result.
        IF p0->aqsg IS BOUND AND p0->aqsg->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->aqsg->value.
        ENDIF.
      WHEN 27.
        CLEAR result.
        IF p0->aqbg IS BOUND AND p0->aqbg->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->aqbg->value.
        ENDIF.
      WHEN 28.
        CLEAR result.
        IF p0->suso IS BOUND AND p0->suso->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->suso->value.
        ENDIF.
      WHEN 29.
        CLEAR result.
        IF p0->sucu IS BOUND AND p0->sucu->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->sucu->value.
        ENDIF.
      WHEN 30.
        CLEAR result.
        IF p0->wdya IS BOUND AND p0->wdya->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->wdya->value.
        ENDIF.
      WHEN 31.
        CLEAR result.
        IF p0->wdyn IS BOUND AND p0->wdyn->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->wdyn->value.
        ENDIF.
      WHEN 32.
        CLEAR result.
        IF p0->pattern_kind IS BOUND AND p0->pattern_kind->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->pattern_kind->value.
        ENDIF.
      WHEN 33.
        CLEAR result.
        IF p0->ignore_names IS BOUND.
          CLEAR result.
          IF p0->ignore_names IS BOUND.
            DATA t1 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t1.
            DATA t2 TYPE REF TO object.
            CLEAR t2.
            CLEAR t1.
            t2 = p0->ignore_names.
            TRY.
                result ?= t2.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t1 ?= p0->ignore_names.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t1 IS BOUND.
                result = t1->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = p0->ignore_names.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN 34.
        CLEAR result.
        IF p0->ignore_patterns IS BOUND.
          CLEAR result.
          IF p0->ignore_patterns IS BOUND.
            DATA t3 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t3.
            DATA t4 TYPE REF TO object.
            CLEAR t4.
            CLEAR t3.
            t4 = p0->ignore_patterns.
            TRY.
                result ?= t4.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t3 ?= p0->ignore_patterns.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t3 IS BOUND.
                result = t3->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = p0->ignore_patterns.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN 35.
        CLEAR result.
        IF p0->exclude IS BOUND.
          CLEAR result.
          IF p0->exclude IS BOUND.
            DATA t5 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t5.
            DATA t6 TYPE REF TO object.
            CLEAR t6.
            CLEAR t5.
            t6 = p0->exclude.
            TRY.
                result ?= t6.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t5 ?= p0->exclude.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t5 IS BOUND.
                result = t5->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = p0->exclude.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN 36.
        CLEAR result.
        IF p0->severity IS BOUND AND p0->severity->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = p0->severity->value.
        ENDIF.
      WHEN 37.
        result = token37.
      WHEN 38.
        result = token38.
      WHEN 39.
        result = token39.
      WHEN 40.
        result = token40.
      WHEN 41.
        result = token41.
      WHEN 42.
        result = token42.
      WHEN 43.
        result = token43.
      WHEN 44.
        result = token44.
      WHEN 45.
        result = token45.
      WHEN 46.
        result = token46.
      WHEN 47.
        result = token47.
      WHEN 48.
        result = token48.
    ENDCASE.
  ENDMETHOD.

  METHOD own.
    DATA row TYPE entry.
    IF p0 IS NOT BOUND.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    initialize( ).
    IF p0->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = p0->zlnt_view_source_36f3bf68b9b8->has( key ).
      RETURN.
    ENDIF.
    READ TABLE p0->zlnt_record_delet_0597644d88b4 WITH TABLE KEY table_line = key TRANSPORTING NO FIELDS.
    IF sy-subrc = 0.
      RETURN.
    ENDIF.
    READ TABLE entries WITH TABLE KEY key = key INTO row.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.
    result = row-own.
  ENDMETHOD.

  METHOD has.
    DATA row TYPE entry.
    IF p0 IS NOT BOUND.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    initialize( ).
    IF p0->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = p0->zlnt_view_source_36f3bf68b9b8->has( key ).
      IF result = abap_false.
        CASE key.
          WHEN `constructor`.
            result = abap_true.
          WHEN `__proto__`.
            result = abap_true.
          WHEN `hasOwnProperty`.
            result = abap_true.
          WHEN `isPrototypeOf`.
            result = abap_true.
          WHEN `propertyIsEnumerable`.
            result = abap_true.
          WHEN `toLocaleString`.
            result = abap_true.
          WHEN `toString`.
            result = abap_true.
          WHEN `valueOf`.
            result = abap_true.
          WHEN `__defineGetter__`.
            result = abap_true.
          WHEN `__defineSetter__`.
            result = abap_true.
          WHEN `__lookupGetter__`.
            result = abap_true.
          WHEN `__lookupSetter__`.
            result = abap_true.
        ENDCASE.
      ENDIF.
      RETURN.
    ENDIF.
    READ TABLE p0->zlnt_record_delet_0597644d88b4 WITH TABLE KEY table_line = key TRANSPORTING NO FIELDS.
    IF sy-subrc = 0.
      RETURN.
    ENDIF.
    READ TABLE entries WITH TABLE KEY key = key INTO row.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.
    result = abap_true.
  ENDMETHOD.
ENDCLASS.
