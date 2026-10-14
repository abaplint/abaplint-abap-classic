* TS: src/abap/3_structures/structures/_combi.ts.module module
CLASS zcl_lnt_sr_combi_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
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
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sr_combi_module IMPLEMENTATION.
  METHOD seq.
    IF zcl_lnt_sr_combi_module=>zlnt_builtin_init_925c84de8315 = abap_false.
      zcl_lnt_sr_combi_module=>zlnt_builtin_init_92502b133500( ).
    ENDIF.
    DATA(t1) = CAST zif_lnt_structure_runnable( i_first ).
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( i_rest ).
    DATA t3 TYPE REF TO zcl_lnt_sr_sequence.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    t6 = t7.
    DATA(t8) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
    DATA(t9) = CAST zif_lnt_structure_runnable( t1 ).
    APPEND t9 TO t8->items.
    DATA(t10) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
    t5 = t10.
    DATA(t11) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    t4 = t5->concat( p0 = t11 ).
    t3 = NEW zcl_lnt_sr_sequence( i_list = t4 ).
    result = t3.

  ENDMETHOD.
  METHOD alt.
    IF zcl_lnt_sr_combi_module=>zlnt_builtin_init_925c84de8315 = abap_false.
      zcl_lnt_sr_combi_module=>zlnt_builtin_init_92502b133500( ).
    ENDIF.
    DATA(t1) = CAST zif_lnt_structure_runnable( i_first ).
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( i_rest ).
    DATA t3 TYPE REF TO zcl_lnt_sr_alternative.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    t6 = t7.
    DATA(t8) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
    DATA(t9) = CAST zif_lnt_structure_runnable( t1 ).
    APPEND t9 TO t8->items.
    DATA(t10) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
    t5 = t10.
    DATA(t11) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    t4 = t5->concat( p0 = t11 ).
    t3 = NEW zcl_lnt_sr_alternative( i_list = t4 ).
    result = t3.

  ENDMETHOD.
  METHOD begin_end.
    IF zcl_lnt_sr_combi_module=>zlnt_builtin_init_925c84de8315 = abap_false.
      zcl_lnt_sr_combi_module=>zlnt_builtin_init_92502b133500( ).
    ENDIF.
    DATA(t1) = CAST zif_lnt_structure_runnable( i_begin ).
    DATA(t2) = CAST zif_lnt_structure_runnable( i_body ).
    DATA(t3) = CAST zif_lnt_structure_runnable( i_end ).
    DATA t4 TYPE REF TO zcl_lnt_sr_sequence.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    t6 = t7.
    DATA(t8) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
    DATA(t9) = CAST zif_lnt_structure_runnable( t1 ).
    APPEND t9 TO t8->items.
    DATA(t10) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
    DATA(t11) = CAST zif_lnt_structure_runnable( t2 ).
    APPEND t11 TO t10->items.
    DATA(t12) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
    DATA(t13) = CAST zif_lnt_structure_runnable( t3 ).
    APPEND t13 TO t12->items.
    DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
    t5 = t14.
    t4 = NEW zcl_lnt_sr_sequence( i_list = t5 ).
    result = t4.

  ENDMETHOD.
  METHOD opt.
    IF zcl_lnt_sr_combi_module=>zlnt_builtin_init_925c84de8315 = abap_false.
      zcl_lnt_sr_combi_module=>zlnt_builtin_init_92502b133500( ).
    ENDIF.
    DATA(t1) = CAST zif_lnt_structure_runnable( i_o ).
    DATA t2 TYPE REF TO zcl_lnt_sr_optional.
    DATA(t3) = CAST zif_lnt_structure_runnable( t1 ).
    t2 = NEW zcl_lnt_sr_optional( i_obj_1ed0 = t3 ).
    result = t2.

  ENDMETHOD.
  METHOD star.
    IF zcl_lnt_sr_combi_module=>zlnt_builtin_init_925c84de8315 = abap_false.
      zcl_lnt_sr_combi_module=>zlnt_builtin_init_92502b133500( ).
    ENDIF.
    DATA(t1) = CAST zif_lnt_structure_runnable( i_s ).
    DATA t2 TYPE REF TO zcl_lnt_sr_star.
    DATA(t3) = CAST zif_lnt_structure_runnable( t1 ).
    t2 = NEW zcl_lnt_sr_star( i_obj_1ed0 = t3 ).
    result = t2.

  ENDMETHOD.
  METHOD sta.
    IF zcl_lnt_sr_combi_module=>zlnt_builtin_init_925c84de8315 = abap_false.
      zcl_lnt_sr_combi_module=>zlnt_builtin_init_92502b133500( ).
    ENDIF.
    DATA(t1) = CAST zlnt_runtime_clas_a39833db3295( i_s ).
    DATA t2 TYPE REF TO zcl_lnt_sub_statement.
    DATA(t3) = CAST zlnt_runtime_clas_a39833db3295( t1 ).
    t2 = NEW zcl_lnt_sub_statement( i_obj_1ed0 = t3 ).
    result = t2.

  ENDMETHOD.
  METHOD sub.
    IF zcl_lnt_sr_combi_module=>zlnt_builtin_init_925c84de8315 = abap_false.
      zcl_lnt_sr_combi_module=>zlnt_builtin_init_92502b133500( ).
    ENDIF.
    DATA(t1) = CAST zlnt_runtime_clas_a39833db3295( i_s ).
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zcl_lnt_sub_structure.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_sub_structure.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_map__7f28925f9deb.
    CLEAR t5.
    IF zcl_lnt_sr_combi_module=>zlnt_builtin_init_925c84de8315 = abap_false.
      zcl_lnt_sr_combi_module=>zlnt_builtin_init_92502b133500( ).
    ENDIF.
    t5 = zcl_lnt_sr_combi_module=>singletons.
    DATA t6 TYPE string.
    DATA(t7) = CAST zlnt_runtime_clas_a39833db3295( t1 ).
    t6 = t7->name.
    t4 = t5->get( p0 = t6 ).
    t3 = t4.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    t8 = t9.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = CAST zcl_lnt_sub_structure( t3 ).
    IF t11 IS INITIAL.
      t10 = abap_true.
    ENDIF.
    t2 = t10.
    IF t2 = abap_true.
      DATA t12 TYPE REF TO zlnt_runtime_map__7f28925f9deb.
      CLEAR t12.
      DATA t13 TYPE REF TO zlnt_runtime_map__7f28925f9deb.
      CLEAR t13.
      IF zcl_lnt_sr_combi_module=>zlnt_builtin_init_925c84de8315 = abap_false.
        zcl_lnt_sr_combi_module=>zlnt_builtin_init_92502b133500( ).
      ENDIF.
      t13 = zcl_lnt_sr_combi_module=>singletons.
      DATA t14 TYPE string.
      DATA(t15) = CAST zlnt_runtime_clas_a39833db3295( t1 ).
      t14 = t15->name.
      DATA t16 TYPE REF TO zcl_lnt_sub_structure.
      DATA t17 TYPE REF TO zif_lnt_structure.
      DATA(t18) = CAST zlnt_runtime_clas_a39833db3295( t1 ).
      DATA t19 TYPE REF TO object.
      t19 = zlnt_runtime_clas_c216c6067abd=>new( p0 = t18 ).
      t17 ?= t19.
      t16 = NEW zcl_lnt_sub_structure( i_s = t17 ).
      t12 = t13->set( p0 = t14 p1 = t16 ).
    ENDIF.
    DATA t20 TYPE REF TO zcl_lnt_sub_structure.
    CLEAR t20.
    DATA t21 TYPE REF TO zcl_lnt_sub_structure.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_map__7f28925f9deb.
    CLEAR t22.
    IF zcl_lnt_sr_combi_module=>zlnt_builtin_init_925c84de8315 = abap_false.
      zcl_lnt_sr_combi_module=>zlnt_builtin_init_92502b133500( ).
    ENDIF.
    t22 = zcl_lnt_sr_combi_module=>singletons.
    DATA t23 TYPE string.
    DATA(t24) = CAST zlnt_runtime_clas_a39833db3295( t1 ).
    t23 = t24->name.
    t21 = t22->get( p0 = t23 ).
    t20 = t21.
    result = t20.

  ENDMETHOD.
  METHOD zlnt_builtin_init_92502b133500.
    IF zlnt_builtin_init_925c84de8315 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_925c84de8315 = abap_true.
    IF zcl_lnt_sr_combi_module=>zlnt_builtin_init_925c84de8315 = abap_false.
      zcl_lnt_sr_combi_module=>zlnt_builtin_init_92502b133500( ).
    ENDIF.
    DATA t1 TYPE REF TO zlnt_runtime_map__7f28925f9deb.
    DATA t2 TYPE REF TO zlnt_runtime_map__7f28925f9deb.
    DATA(t3) = NEW zlnt_runtime_map__7f28925f9deb(  ).
    t2 = t3.
    DATA(t4) = CAST zlnt_runtime_map__7f28925f9deb( t2 ).
    t1 = t4.
    zcl_lnt_sr_combi_module=>singletons = t1.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1833_8416fc592e25.
  ENDMETHOD.
ENDCLASS.
