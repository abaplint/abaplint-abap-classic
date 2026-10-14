* TS: src/version.ts:163:64 shape.bea6dfcae2ad34dd0cf1f350c0ec1982425260a29ce5430df09eea2988f91f45
CLASS zcl_lnt_shape_4d146093 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA v750 TYPE REF TO zcl_lnt_abap_release.
    DATA v751 TYPE REF TO zcl_lnt_abap_release.
    DATA v752 TYPE REF TO zcl_lnt_abap_release.
    DATA v753 TYPE REF TO zcl_lnt_abap_release.
    DATA v754 TYPE REF TO zcl_lnt_abap_release.
    DATA v755 TYPE REF TO zcl_lnt_abap_release.
    DATA v756 TYPE REF TO zcl_lnt_abap_release.
    DATA v757 TYPE REF TO zcl_lnt_abap_release.
    DATA v758 TYPE REF TO zcl_lnt_abap_release.
    DATA v816 TYPE REF TO zcl_lnt_abap_release.
    METHODS constructor IMPORTING i_v750 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v751 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v752 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v753 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v754
    TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v755 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v756 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v757 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v758 TYPE REF TO zcl_lnt_abap_release
    OPTIONAL i_v816 TYPE REF TO zcl_lnt_abap_release OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_4d146093 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_abap_release( i_v750 ).
    DATA(t2) = CAST zcl_lnt_abap_release( i_v751 ).
    DATA(t3) = CAST zcl_lnt_abap_release( i_v752 ).
    DATA(t4) = CAST zcl_lnt_abap_release( i_v753 ).
    DATA(t5) = CAST zcl_lnt_abap_release( i_v754 ).
    DATA(t6) = CAST zcl_lnt_abap_release( i_v755 ).
    DATA(t7) = CAST zcl_lnt_abap_release( i_v756 ).
    DATA(t8) = CAST zcl_lnt_abap_release( i_v757 ).
    DATA(t9) = CAST zcl_lnt_abap_release( i_v758 ).
    DATA(t10) = CAST zcl_lnt_abap_release( i_v816 ).
    DATA t11 TYPE REF TO zcl_lnt_abap_release.
    DATA(t12) = CAST zcl_lnt_abap_release( t1 ).
    t11 = t12.
    me->v750 = t11.
    DATA t13 TYPE REF TO zcl_lnt_abap_release.
    DATA(t14) = CAST zcl_lnt_abap_release( t2 ).
    t13 = t14.
    me->v751 = t13.
    DATA t15 TYPE REF TO zcl_lnt_abap_release.
    DATA(t16) = CAST zcl_lnt_abap_release( t3 ).
    t15 = t16.
    me->v752 = t15.
    DATA t17 TYPE REF TO zcl_lnt_abap_release.
    DATA(t18) = CAST zcl_lnt_abap_release( t4 ).
    t17 = t18.
    me->v753 = t17.
    DATA t19 TYPE REF TO zcl_lnt_abap_release.
    DATA(t20) = CAST zcl_lnt_abap_release( t5 ).
    t19 = t20.
    me->v754 = t19.
    DATA t21 TYPE REF TO zcl_lnt_abap_release.
    DATA(t22) = CAST zcl_lnt_abap_release( t6 ).
    t21 = t22.
    me->v755 = t21.
    DATA t23 TYPE REF TO zcl_lnt_abap_release.
    DATA(t24) = CAST zcl_lnt_abap_release( t7 ).
    t23 = t24.
    me->v756 = t23.
    DATA t25 TYPE REF TO zcl_lnt_abap_release.
    DATA(t26) = CAST zcl_lnt_abap_release( t8 ).
    t25 = t26.
    me->v757 = t25.
    DATA t27 TYPE REF TO zcl_lnt_abap_release.
    DATA(t28) = CAST zcl_lnt_abap_release( t9 ).
    t27 = t28.
    me->v758 = t27.
    DATA t29 TYPE REF TO zcl_lnt_abap_release.
    DATA(t30) = CAST zcl_lnt_abap_release( t10 ).
    t29 = t30.
    me->v816 = t29.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1897_317a256d70ff.
  ENDMETHOD.
ENDCLASS.
