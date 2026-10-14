* TS: src/abap/3_structures/structures/_combi.ts:192:1 Star
CLASS zcl_lnt_sr_star DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_structure_runnable.
    DATA obj TYPE REF TO zif_lnt_structure_runnable.
    METHODS constructor IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_structure_runnable.
    METHODS to_railroad RETURNING VALUE(result) TYPE string.
    METHODS get_using RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS run IMPORTING i_statements TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_parent TYPE REF TO zif_lnt_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_imatch.
    METHODS first RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sr_star IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zif_lnt_structure_runnable( i_obj_1ed0 ).
    DATA(t2) = CAST zif_lnt_structure_runnable( t1 ).
    me->obj = t2.
  ENDMETHOD.
  METHOD to_railroad.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/3_structures/structures/_combi.ts:199|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_using.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/3_structures/structures/_combi.ts:203|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_statements ).
    DATA(t2) = CAST zif_lnt_node( i_parent ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    t5 = t6.
    DO.
      DATA(t7) = abap_true.
      IF t7 = abap_false.
        EXIT.
      ENDIF.
      DATA t8 TYPE abap_bool.
      DATA t9 TYPE i.
      DATA(t10) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
      t9 = lines( t10->items ).
      DATA(t11) = 0.
      t8 = xsdbool( t9 = t11 ).
      IF t8 = abap_true.
        DATA t12 TYPE REF TO zcl_lnt_imatch.
        DATA(t13) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
        DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
        DATA(t15) = abap_false.
        DATA(t16) = ||.
        DATA(t17) = CONV int8( 0 ).
        t12 = NEW zcl_lnt_imatch( i_matched = t13 i_unmatched = t14 i_error = t15 i_error_description = t16 i_error_matched = t17 ).
        result = t12.
        RETURN.
      ENDIF.
      DATA t18 TYPE REF TO zcl_lnt_imatch.
      DATA t19 TYPE REF TO zcl_lnt_imatch.
      DATA(t20) = CAST zif_lnt_structure_runnable( me->obj ).
      DATA(t21) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
      DATA(t22) = CAST zif_lnt_node( t2 ).
      t19 = t20->run( i_statements = t21 i_parent = t22 ).
      t18 = t19.
      DATA t23 TYPE abap_bool.
      DATA t24 TYPE abap_bool.
      DATA(t25) = CAST zcl_lnt_imatch( t18 ).
      t24 = t25->error.
      DATA(t26) = abap_true.
      t23 = xsdbool( t24 = t26 ).
      IF t23 = abap_true.
        DATA t27 TYPE abap_bool.
        DATA t28 TYPE int8.
        DATA(t29) = CAST zcl_lnt_imatch( t18 ).
        t28 = t29->error_matched.
        DATA(t30) = CONV int8( 0 ).
        t27 = xsdbool( t28 > t30 ).
        IF t27 = abap_true.
          DATA t31 TYPE REF TO zcl_lnt_imatch.
          DATA(t32) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
          DATA(t33) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
          DATA(t34) = abap_true.
          DATA t35 TYPE string.
          DATA(t36) = CAST zcl_lnt_imatch( t18 ).
          t35 = t36->error_description.
          DATA t37 TYPE int8.
          DATA(t38) = CAST zcl_lnt_imatch( t18 ).
          t37 = t38->error_matched.
          t31 = NEW zcl_lnt_imatch( i_matched = t32 i_unmatched = t33 i_error = t34 i_error_description = t35 i_error_matched = t37 ).
          result = t31.
          RETURN.
        ELSE.
          DATA t39 TYPE REF TO zcl_lnt_imatch.
          DATA(t40) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
          DATA(t41) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
          DATA(t42) = abap_false.
          DATA(t43) = ||.
          DATA(t44) = CONV int8( 0 ).
          t39 = NEW zcl_lnt_imatch( i_matched = t40 i_unmatched = t41 i_error = t42 i_error_description = t43 i_error_matched = t44 ).
          result = t39.
          RETURN.
        ENDIF.
      ENDIF.
      DATA t45 TYPE abap_bool.
      DATA t46 TYPE i.
      DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t48) = CAST zcl_lnt_imatch( t18 ).
      t47 = t48->matched.
      t46 = lines( t47->items ).
      DATA(t49) = 100.
      t45 = xsdbool( t46 < t49 ).
      IF t45 = abap_true.
        DATA(t50) = VALUE i( ).
        DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t52) = CAST zcl_lnt_imatch( t18 ).
        t51 = t52->matched.
        DATA t53 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t53.
        DATA t54 TYPE REF TO object.
        CLEAR t54.
        LOOP AT t51->items INTO t54.
          t53 ?= t54.
          DATA(t55) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
          DATA(t56) = CAST zcl_lnt_statement_node( t53 ).
          APPEND t56 TO t55->items.
        ENDLOOP.
        DATA t57 TYPE i.
        DATA(t58) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
        t57 = lines( t58->items ).
        t50 = t57.
      ELSE.
        DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t60) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
        DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t62) = CAST zcl_lnt_imatch( t18 ).
        t61 = t62->matched.
        t59 = t60->concat( p0 = t61 ).
        t5 = t59.
      ENDIF.
      DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t64) = CAST zcl_lnt_imatch( t18 ).
      t63 = t64->unmatched.
      t3 = t63.
    ENDDO.
  ENDMETHOD.
  METHOD first.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t5) = ||.
    APPEND t5 TO t4->items.
    DATA(t6) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    t1 = t6.
    result = t1.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d675_f86cc5df5551.
  ENDMETHOD.
  METHOD zif_lnt_structure_runnable~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_structure_runnable~to_railroad.
    result = me->to_railroad(  ).
  ENDMETHOD.
  METHOD zif_lnt_structure_runnable~get_using.
    result = me->get_using(  ).
  ENDMETHOD.
  METHOD zif_lnt_structure_runnable~run.
    result = me->run(  i_statements = i_statements i_parent = i_parent ).
  ENDMETHOD.
  METHOD zif_lnt_structure_runnable~first.
    result = me->first(  ).
  ENDMETHOD.
ENDCLASS.
