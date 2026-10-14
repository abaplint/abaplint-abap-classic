* TS: src/rules/unused_types.ts:18:1 WorkArea
CLASS zcl_lnt_rl_unused_types_wrk_ar DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA workarea TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor.
    METHODS push IMPORTING i_id TYPE REF TO zcl_lnt_typed_identifier.
    METHODS remove_if_exists IMPORTING i_id TYPE REF TO zcl_lnt_fi_identifier.
    METHODS get_db65 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS count RETURNING VALUE(result) TYPE int8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_rl_unused_types_wrk_ar IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/rules/unused_types.ts:18|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD push.
    DATA(t1) = CAST zcl_lnt_typed_identifier( i_id ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/unused_types.ts:21|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD remove_if_exists.
    DATA(t1) = CAST zcl_lnt_fi_identifier( i_id ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/unused_types.ts:30|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD get_db65.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/rules/unused_types.ts:39|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD count.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/rules/unused_types.ts:43|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1659_cc31e13e5a90.
  ENDMETHOD.
ENDCLASS.
