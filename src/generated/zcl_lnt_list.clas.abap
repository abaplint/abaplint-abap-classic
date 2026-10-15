* TS: src/abap/artifacts.ts:13:1 List
CLASS zcl_lnt_list DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA words TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor.
    METHODS add_51c1 IMPORTING i_keywords TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 i_source_75cf TYPE string.
    METHODS get_db65 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_8f95 IMPORTING i_keyword TYPE string RETURNING VALUE(result) TYPE i.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_list IMPLEMENTATION.
  METHOD constructor.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1.
    me->words = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `words`.
  ENDMETHOD.

  METHOD add_51c1.
    DATA(t1) = i_keywords.
    DATA(t2) = i_source_75cf.
    DATA(t3) = t1.
    DATA(t4) = VALUE string( ).
    t3->dense( ).
    DATA(t5) = VALUE i( ).
    DO.
      t3->load( ).
      IF t5 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t4.
      READ TABLE t3->items INDEX t5 + 1 INTO t4.
      IF t3->has( t5 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t5 = t5 + 1.
      DATA t6 TYPE i.
      DATA t7 TYPE i.
      DATA(t8) = t4.
      t7 = me->find_8f95( i_keyword = t8 ).
      t6 = t7.
      DATA t9 TYPE abap_bool.
      DATA(t10) = t6.
      DATA(t11) = 0.
      t9 = xsdbool( t10 >= t11 ).
      IF t9 = abap_true.
        DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t12.
        DATA t13 TYPE REF TO zcl_lnt_ikeyword.
        CLEAR t13.
        DATA(t14) = me->words.
        DATA(t15) = t6.
        t15 = t15 + 1.
        DATA t16 TYPE REF TO object.
        CLEAR t16.
        t14->load( ).
        CLEAR t16.
        READ TABLE t14->items INDEX t15 INTO t16.
        DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t17.
        CLEAR t13.
        IF t16 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t17 ?= t16.
          DATA t18 TYPE REF TO object.
          t18 = t17->as_ref( ).
          t13 ?= t18.
        ELSE.
          t13 ?= t16.
        ENDIF.
        t12 = t13->source.
        DATA(t19) = t2.
        t12->load( ).
        APPEND t19 TO t12->items.
        t12->save( ).
      ELSE.
        DATA(t20) = me->words.
        DATA t21 TYPE REF TO zcl_lnt_ikeyword.
        DATA t22 TYPE string.
        DATA(t23) = t4.
        t22 = t23.
        DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t27.
        t26 = t27.
        DATA(t28) = t26.
        DATA(t29) = t2.
        t28->load( ).
        APPEND t29 TO t28->items.
        t28->save( ).
        DATA(t30) = t26.
        t25 = t30.
        t24 = t25.
        t21 = NEW zcl_lnt_ikeyword( i_word = t22 i_source_75cf = t24 ).
        CREATE OBJECT t21->zlnt_view_ownkeys_b0e8086400eb.
        t21->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t31.
        IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `word` p1 = t31 ).
        ENDIF.
        DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t32.
        IF t21->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `source` p1 = t32 ).
        ENDIF.
        CREATE OBJECT t21->zlnt_json_ownkeys_70e5fd461788.
        t21->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t33) = |word|.
        DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t34.
        IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = t33 p1 = t34 ).
        ENDIF.
        DATA(t35) = |source|.
        DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t36.
        IF t21->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = t35 p1 = t36 ).
        ENDIF.
        t20->load( ).
        APPEND t21 TO t20->items.
        t20->save( ).
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD get_db65.
    DATA(t1) = me->words.
    result = t1.

  ENDMETHOD.

  METHOD find_8f95.
    DATA(t1) = i_keyword.
    DATA t2 TYPE i.
    DATA(t3) = 0.
    t2 = t3.
    DO.
      DATA t4 TYPE abap_bool.
      DATA(t5) = t2.
      DATA t6 TYPE i.
      DATA(t7) = me->words.
      t7->load( ).
      t6 = lines( t7->items ).
      t4 = xsdbool( t5 < t6 ).
      IF t4 = abap_false.
        EXIT.
      ENDIF.
      DATA(t8) = VALUE abap_bool( ).
      DATA(t9) = VALUE string( ).
      DATA t10 TYPE REF TO zcl_lnt_ikeyword.
      CLEAR t10.
      DATA(t11) = me->words.
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
      t9 = t10->word.
      DATA(t16) = t1.
      t8 = xsdbool( t9 = t16 ).
      IF t8 = abap_true.
        DATA(t17) = t2.
        result = t17.
        RETURN.
      ENDIF.
      DATA t18 TYPE i.
      DATA(t19) = t2.
      DATA(t20) = 1.
      t18 = t19 + t20.
      t2 = t18.
    ENDDO.
    DATA(t21) = -1.
    result = t21.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1003_0173dcfeb8f2.
  ENDMETHOD.
ENDCLASS.
