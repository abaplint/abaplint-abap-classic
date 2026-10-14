* TS: src/abap/types/basic/clike_type.ts:3:1 CLikeType
CLASS zcl_lnt_c_like_type DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_type CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-DATA singleton TYPE REF TO zcl_lnt_c_like_type.
    METHODS constructor.
    CLASS-METHODS get_db65 RETURNING VALUE(result) TYPE REF TO zcl_lnt_c_like_type.
    METHODS t_t_i_s_a_t_b_cl_ty_ts_c_lk_ty RETURNING VALUE(result) TYPE string.
    METHODS is_generic REDEFINITION.
    METHODS to_abap REDEFINITION.
    METHODS contains_void REDEFINITION.
    METHODS to_cds REDEFINITION.
    METHODS to_text REDEFINITION.
    CLASS-DATA zlnt_builtin_init_6c060cbec4ed TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_7baed2618343.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_c_like_type IMPLEMENTATION.
  METHOD constructor.
    IF zcl_lnt_c_like_type=>zlnt_builtin_init_6c060cbec4ed = abap_false.
      zcl_lnt_c_like_type=>zlnt_builtin_init_7baed2618343( ).
    ENDIF.
    DATA t1 TYPE REF TO zcl_lnt_abstract_type_data.
    CLEAR t1.
    super->constructor( i_input_967e = t1 ).
  ENDMETHOD.
  METHOD get_db65.
    IF zcl_lnt_c_like_type=>zlnt_builtin_init_6c060cbec4ed = abap_false.
      zcl_lnt_c_like_type=>zlnt_builtin_init_7baed2618343( ).
    ENDIF.
    DATA t1 TYPE REF TO zcl_lnt_c_like_type.
    CLEAR t1.
    IF zcl_lnt_c_like_type=>zlnt_builtin_init_6c060cbec4ed = abap_false.
      zcl_lnt_c_like_type=>zlnt_builtin_init_7baed2618343( ).
    ENDIF.
    t1 = zcl_lnt_c_like_type=>singleton.
    result = t1.

  ENDMETHOD.
  METHOD t_t_i_s_a_t_b_cl_ty_ts_c_lk_ty.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/clike_type.ts:14|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD is_generic.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/clike_type.ts:18|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD to_abap.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/clike_type.ts:22|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD contains_void.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/clike_type.ts:26|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD to_cds.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/basic/clike_type.ts:30|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD to_text.
    DATA(t1) = CONV string( me->t_t_i_s_a_t_b_cl_ty_ts_c_lk_ty( ) ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_init_7baed2618343.
    IF zlnt_builtin_init_6c060cbec4ed = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_6c060cbec4ed = abap_true.
    IF zcl_lnt_c_like_type=>zlnt_builtin_init_6c060cbec4ed = abap_false.
      zcl_lnt_c_like_type=>zlnt_builtin_init_7baed2618343( ).
    ENDIF.
    DATA t1 TYPE REF TO zcl_lnt_c_like_type.
    CLEAR t1.
    IF zcl_lnt_c_like_type=>zlnt_builtin_init_6c060cbec4ed = abap_false.
      zcl_lnt_c_like_type=>zlnt_builtin_init_7baed2618343( ).
    ENDIF.
    t1 = NEW zcl_lnt_c_like_type( ).
    zcl_lnt_c_like_type=>singleton = t1.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d997_7691e4af83c2.
  ENDMETHOD.
ENDCLASS.
