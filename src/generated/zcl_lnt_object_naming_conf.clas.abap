* TS: src/rules/object_naming.ts:8:1 ObjectNamingConf
CLASS zcl_lnt_object_naming_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_naming_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    DATA clas TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA intf TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA prog TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA fugr TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA tabl TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA ttyp TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA dtel TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA doma TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA msag TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA tran TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA enqu TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA auth TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA pinf TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA idoc TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA xslt TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA ssfo TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA ssst TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA shlp TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA sxci TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA enhs TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA enho TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA cmod TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA form_549a TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA sfpf TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA sfpi TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA aqqu TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA aqsg TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA aqbg TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA suso TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA sucu TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA wdya TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA wdyn TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_object_naming_conf IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
    DATA(t1) = |^ZC(L\|X)|.
    DATA(t2) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t2->has = abap_true.
    t2->value = t1.
    me->clas = t2.
    DATA(t3) = |^ZIF|.
    DATA(t4) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t4->has = abap_true.
    t4->value = t3.
    me->intf = t4.
    DATA(t5) = |^Z|.
    DATA(t6) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t6->has = abap_true.
    t6->value = t5.
    me->prog = t6.
    DATA(t7) = |^Z|.
    DATA(t8) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t8->has = abap_true.
    t8->value = t7.
    me->fugr = t8.
    DATA(t9) = |^Z|.
    DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t10->has = abap_true.
    t10->value = t9.
    me->tabl = t10.
    DATA(t11) = |^Z|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    me->ttyp = t12.
    DATA(t13) = |^Z|.
    DATA(t14) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t14->has = abap_true.
    t14->value = t13.
    me->dtel = t14.
    DATA(t15) = |^Z|.
    DATA(t16) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t16->has = abap_true.
    t16->value = t15.
    me->doma = t16.
    DATA(t17) = |^Z|.
    DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t18->has = abap_true.
    t18->value = t17.
    me->msag = t18.
    DATA(t19) = |^Z|.
    DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t20->has = abap_true.
    t20->value = t19.
    me->tran = t20.
    DATA(t21) = |^EZ|.
    DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t22->has = abap_true.
    t22->value = t21.
    me->enqu = t22.
    DATA(t23) = |^Z|.
    DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t24->has = abap_true.
    t24->value = t23.
    me->auth = t24.
    DATA(t25) = |^Z|.
    DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t26->has = abap_true.
    t26->value = t25.
    me->pinf = t26.
    DATA(t27) = |^Z|.
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = t27.
    me->idoc = t28.
    DATA(t29) = |^Z|.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = t29.
    me->xslt = t30.
    DATA(t31) = |^Z|.
    DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t32->has = abap_true.
    t32->value = t31.
    me->ssfo = t32.
    DATA(t33) = |^Z|.
    DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t34->has = abap_true.
    t34->value = t33.
    me->ssst = t34.
    DATA(t35) = |^Z|.
    DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t36->has = abap_true.
    t36->value = t35.
    me->shlp = t36.
    DATA(t37) = |^Z|.
    DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t38->has = abap_true.
    t38->value = t37.
    me->sxci = t38.
    DATA(t39) = |^Z|.
    DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t40->has = abap_true.
    t40->value = t39.
    me->enhs = t40.
    DATA(t41) = |^Z|.
    DATA(t42) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t42->has = abap_true.
    t42->value = t41.
    me->enho = t42.
    DATA(t43) = |^Z|.
    DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t44->has = abap_true.
    t44->value = t43.
    me->cmod = t44.
    DATA(t45) = |^Z|.
    DATA(t46) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t46->has = abap_true.
    t46->value = t45.
    me->form_549a = t46.
    DATA(t47) = |^Z|.
    DATA(t48) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t48->has = abap_true.
    t48->value = t47.
    me->sfpf = t48.
    DATA(t49) = |^Z|.
    DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t50->has = abap_true.
    t50->value = t49.
    me->sfpi = t50.
    DATA(t51) = |^Z|.
    DATA(t52) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t52->has = abap_true.
    t52->value = t51.
    me->aqqu = t52.
    DATA(t53) = |^Z|.
    DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t54->has = abap_true.
    t54->value = t53.
    me->aqsg = t54.
    DATA(t55) = |^Z|.
    DATA(t56) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t56->has = abap_true.
    t56->value = t55.
    me->aqbg = t56.
    DATA(t57) = |^Z|.
    DATA(t58) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t58->has = abap_true.
    t58->value = t57.
    me->suso = t58.
    DATA(t59) = |^Z|.
    DATA(t60) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t60->has = abap_true.
    t60->value = t59.
    me->sucu = t60.
    DATA(t61) = |^Z|.
    DATA(t62) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t62->has = abap_true.
    t62->value = t61.
    me->wdya = t62.
    DATA(t63) = |^Z|.
    DATA(t64) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t64->has = abap_true.
    t64->value = t63.
    me->wdyn = t64.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1531_286a3b445269.
  ENDMETHOD.
ENDCLASS.
