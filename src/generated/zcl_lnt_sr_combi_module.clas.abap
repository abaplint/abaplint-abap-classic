* TS: src/abap/3_structures/structures/_combi.ts.module module
CLASS zcl_lnt_sr_combi_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA singletons TYPE REF TO zlnt_runtime_map__7f28925f9deb.
    CLASS-METHODS seq IMPORTING i_first TYPE REF TO zif_lnt_structure_runnable i_rest TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zif_lnt_structure_runnable.
    CLASS-METHODS alt IMPORTING i_first TYPE REF TO zif_lnt_structure_runnable i_rest TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zif_lnt_structure_runnable.
    CLASS-METHODS begin_end IMPORTING i_begin TYPE REF TO zif_lnt_structure_runnable i_body TYPE REF TO zif_lnt_structure_runnable i_end TYPE REF TO zif_lnt_structure_runnable RETURNING VALUE(result) TYPE REF TO zif_lnt_structure_runnable.
    CLASS-METHODS opt IMPORTING i_o TYPE REF TO zif_lnt_structure_runnable RETURNING VALUE(result) TYPE REF TO zif_lnt_structure_runnable.
    CLASS-METHODS star IMPORTING i_s TYPE REF TO zif_lnt_structure_runnable RETURNING VALUE(result) TYPE REF TO zif_lnt_structure_runnable.
    CLASS-METHODS sta IMPORTING i_s TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zif_lnt_structure_runnable.
    CLASS-METHODS sub IMPORTING i_s TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zif_lnt_structure_runnable.
    CLASS-DATA zlnt_builtin_init_925c84de8315 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_92502b133500.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sr_combi_module IMPLEMENTATION.
  METHOD seq.
    IF zcl_lnt_sr_combi_module=>zlnt_builtin_init_925c84de8315 = abap_false.
      zcl_lnt_sr_combi_module=>zlnt_builtin_init_92502b133500( ).
    ENDIF.
    DATA(t1) = i_first.
    DATA(t2) = i_rest.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    t6->load( ).
    APPEND t1 TO t6->items.
    t6->save( ).
    result = NEW zcl_lnt_sr_sequence( i_list = t6->concat( p0 = t2 ) ).

  ENDMETHOD.

  METHOD alt.
    IF zcl_lnt_sr_combi_module=>zlnt_builtin_init_925c84de8315 = abap_false.
      zcl_lnt_sr_combi_module=>zlnt_builtin_init_92502b133500( ).
    ENDIF.
    DATA(t1) = i_first.
    DATA(t2) = i_rest.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    t6->load( ).
    APPEND t1 TO t6->items.
    t6->save( ).
    result = NEW zcl_lnt_sr_alternative( i_list = t6->concat( p0 = t2 ) ).

  ENDMETHOD.

  METHOD begin_end.
    IF zcl_lnt_sr_combi_module=>zlnt_builtin_init_925c84de8315 = abap_false.
      zcl_lnt_sr_combi_module=>zlnt_builtin_init_92502b133500( ).
    ENDIF.
    DATA(t1) = i_begin.
    DATA(t2) = i_body.
    DATA(t3) = i_end.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    t6->load( ).
    APPEND t1 TO t6->items.
    t6->save( ).
    t6->load( ).
    APPEND t2 TO t6->items.
    t6->save( ).
    t6->load( ).
    APPEND t3 TO t6->items.
    t6->save( ).
    result = NEW zcl_lnt_sr_sequence( i_list = t6 ).

  ENDMETHOD.

  METHOD opt.
    IF zcl_lnt_sr_combi_module=>zlnt_builtin_init_925c84de8315 = abap_false.
      zcl_lnt_sr_combi_module=>zlnt_builtin_init_92502b133500( ).
    ENDIF.
    DATA(t3) = i_o.
    result = NEW zcl_lnt_sr_optional( i_obj_1ed0 = t3 ).

  ENDMETHOD.

  METHOD star.
    IF zcl_lnt_sr_combi_module=>zlnt_builtin_init_925c84de8315 = abap_false.
      zcl_lnt_sr_combi_module=>zlnt_builtin_init_92502b133500( ).
    ENDIF.
    DATA(t3) = i_s.
    result = NEW zcl_lnt_sr_star( i_obj_1ed0 = t3 ).

  ENDMETHOD.

  METHOD sta.
    IF zcl_lnt_sr_combi_module=>zlnt_builtin_init_925c84de8315 = abap_false.
      zcl_lnt_sr_combi_module=>zlnt_builtin_init_92502b133500( ).
    ENDIF.
    DATA(t3) = i_s.
    result = NEW zcl_lnt_sub_statement( i_obj_1ed0 = t3 ).

  ENDMETHOD.

  METHOD sub.
    IF zcl_lnt_sr_combi_module=>zlnt_builtin_init_925c84de8315 = abap_false.
      zcl_lnt_sr_combi_module=>zlnt_builtin_init_92502b133500( ).
    ENDIF.
    DATA(t1) = i_s.
    DATA t4 TYPE REF TO zcl_lnt_sub_structure.
    DATA t5 TYPE REF TO zlnt_runtime_map__7f28925f9deb.
    IF zcl_lnt_sr_combi_module=>zlnt_builtin_init_925c84de8315 = abap_false.
      zcl_lnt_sr_combi_module=>zlnt_builtin_init_92502b133500( ).
    ENDIF.
    t5 = zcl_lnt_sr_combi_module=>singletons.
    DATA t6 TYPE string.
    t6 = t1->name.
    t4 = t5->get( p0 = t6 ).
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
      DATA t12 TYPE REF TO zlnt_runtime_map__7f28925f9deb.
      DATA t13 TYPE REF TO zlnt_runtime_map__7f28925f9deb.
      IF zcl_lnt_sr_combi_module=>zlnt_builtin_init_925c84de8315 = abap_false.
        zcl_lnt_sr_combi_module=>zlnt_builtin_init_92502b133500( ).
      ENDIF.
      t13 = zcl_lnt_sr_combi_module=>singletons.
      DATA t14 TYPE string.
      t14 = t1->name.
      DATA t17 TYPE REF TO zif_lnt_structure.
      DATA t19 TYPE REF TO object.
      t19 = zlnt_runtime_clas_c216c6067abd=>new( p0 = t1 ).
      t17 ?= t19.
      t12 = t13->set( p0 = t14 p1 = NEW zcl_lnt_sub_structure( i_s = t17 ) ).
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_map__7f28925f9deb.
    IF zcl_lnt_sr_combi_module=>zlnt_builtin_init_925c84de8315 = abap_false.
      zcl_lnt_sr_combi_module=>zlnt_builtin_init_92502b133500( ).
    ENDIF.
    t22 = zcl_lnt_sr_combi_module=>singletons.
    DATA t23 TYPE string.
    t23 = t1->name.
    result = t22->get( p0 = t23 ).

  ENDMETHOD.

  METHOD zlnt_builtin_init_92502b133500.
    IF zlnt_builtin_init_925c84de8315 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_925c84de8315 = abap_true.
    IF zcl_lnt_sr_combi_module=>zlnt_builtin_init_925c84de8315 = abap_false.
      zcl_lnt_sr_combi_module=>zlnt_builtin_init_92502b133500( ).
    ENDIF.
    zcl_lnt_sr_combi_module=>singletons = NEW zlnt_runtime_map__7f28925f9deb( ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1925_df853b002636.
  ENDMETHOD.
ENDCLASS.
