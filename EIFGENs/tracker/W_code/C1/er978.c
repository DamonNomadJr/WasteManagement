/*
 * Code for class ERRORS
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F978_8379(EIF_REFERENCE);
extern EIF_TYPED_VALUE F978_8380(EIF_REFERENCE);
extern EIF_TYPED_VALUE F978_8381(EIF_REFERENCE);
extern EIF_TYPED_VALUE F978_8382(EIF_REFERENCE);
extern EIF_TYPED_VALUE F978_8383(EIF_REFERENCE);
extern EIF_TYPED_VALUE F978_8384(EIF_REFERENCE);
extern EIF_TYPED_VALUE F978_8385(EIF_REFERENCE);
extern EIF_TYPED_VALUE F978_8386(EIF_REFERENCE);
extern EIF_TYPED_VALUE F978_8387(EIF_REFERENCE);
extern EIF_TYPED_VALUE F978_8388(EIF_REFERENCE);
extern EIF_TYPED_VALUE F978_8389(EIF_REFERENCE);
extern EIF_TYPED_VALUE F978_8390(EIF_REFERENCE);
extern EIF_TYPED_VALUE F978_8391(EIF_REFERENCE);
extern EIF_TYPED_VALUE F978_8392(EIF_REFERENCE);
extern EIF_TYPED_VALUE F978_8393(EIF_REFERENCE);
extern EIF_TYPED_VALUE F978_8394(EIF_REFERENCE);
extern EIF_TYPED_VALUE F978_8395(EIF_REFERENCE);
extern EIF_TYPED_VALUE F978_8396(EIF_REFERENCE);
extern EIF_TYPED_VALUE F978_8397(EIF_REFERENCE);
extern EIF_TYPED_VALUE F978_8398(EIF_REFERENCE);
extern void EIF_Minit978(void);

#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif


#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {ERRORS}.make */
void F978_8379 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "make";
	RTEX;
	EIF_TYPED_VALUE ur1x = {{0}, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(4);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLR(3,ur1);
	RTLIU(4);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 977, Current, 0, 0, 14692);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(977, Current, 14692);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 6213, 0xF80000E7, 0); /* ok */
	tr1 = RTLNSMART(RTWCT(6213, dtype, Dftype(Current)).id);
	tr2 = RTMS_EX_H("ok",2,28523);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(4651, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(1,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(6213, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	RTDBGAA(Current, dtype, 6214, 0xF80000E7, 0); /* e1 */
	tr1 = RTLNSMART(RTWCT(6214, dtype, Dftype(Current)).id);
	tr2 = RTMS_EX_H("e1: current tracker is in use",29,639612261);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(4651, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(2,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(6214, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	RTDBGAA(Current, dtype, 6215, 0xF80000E7, 0); /* e2 */
	tr1 = RTLNSMART(RTWCT(6215, dtype, Dftype(Current)).id);
	tr2 = RTMS_EX_H("e2: max phase radiation must be non-negative value",50,1907187045);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(4651, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(3,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(6215, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(4);
	RTDBGAA(Current, dtype, 6216, 0xF80000E7, 0); /* e3 */
	tr1 = RTLNSMART(RTWCT(6216, dtype, Dftype(Current)).id);
	tr2 = RTMS_EX_H("e3: max container radiation must be non-negative value",54,828637541);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(4651, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(4,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(6216, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(5);
	RTDBGAA(Current, dtype, 6217, 0xF80000E7, 0); /* e4 */
	tr1 = RTLNSMART(RTWCT(6217, dtype, Dftype(Current)).id);
	tr2 = RTMS_EX_H("e4: max container must not be more than max phase radiation",59,825055086);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(4651, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(5,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(6217, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(6);
	RTDBGAA(Current, dtype, 6218, 0xF80000E7, 0); /* e5 */
	tr1 = RTLNSMART(RTWCT(6218, dtype, Dftype(Current)).id);
	tr2 = RTMS_EX_H("e5: identifiers/names must start with A-Z, a-z or 0..9",54,101463865);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(4651, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(6,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(6218, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(7);
	RTDBGAA(Current, dtype, 6219, 0xF80000E7, 0); /* e6 */
	tr1 = RTLNSMART(RTWCT(6219, dtype, Dftype(Current)).id);
	tr2 = RTMS_EX_H("e6: phase identifier already exists",35,1599779443);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(4651, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(7,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(6219, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(8);
	RTDBGAA(Current, dtype, 6220, 0xF80000E7, 0); /* e7 */
	tr1 = RTLNSMART(RTWCT(6220, dtype, Dftype(Current)).id);
	tr2 = RTMS_EX_H("e7: phase capacity must be a positive integer",45,1013491826);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(4651, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(8,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(6220, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(9);
	RTDBGAA(Current, dtype, 6221, 0xF80000E7, 0); /* e8 */
	tr1 = RTLNSMART(RTWCT(6221, dtype, Dftype(Current)).id);
	tr2 = RTMS_EX_H("e8: there must be at least one expected material for this phase",63,1620246373);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(4651, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(9,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(6221, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(10);
	RTDBGAA(Current, dtype, 6222, 0xF80000E7, 0); /* e9 */
	tr1 = RTLNSMART(RTWCT(6222, dtype, Dftype(Current)).id);
	tr2 = RTMS_EX_H("e9: phase identifier not in the system",38,546529901);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(4651, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(10,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(6222, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(11);
	RTDBGAA(Current, dtype, 6223, 0xF80000E7, 0); /* e10 */
	tr1 = RTLNSMART(RTWCT(6223, dtype, Dftype(Current)).id);
	tr2 = RTMS_EX_H("e10: this container identifier already in tracker",49,345297266);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(4651, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(11,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(6223, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(12);
	RTDBGAA(Current, dtype, 6224, 0xF80000E7, 0); /* e11 */
	tr1 = RTLNSMART(RTWCT(6224, dtype, Dftype(Current)).id);
	tr2 = RTMS_EX_H("e11: this container will exceed phase capacity",46,1811355513);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(4651, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(12,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(6224, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(13);
	RTDBGAA(Current, dtype, 6225, 0xF80000E7, 0); /* e12 */
	tr1 = RTLNSMART(RTWCT(6225, dtype, Dftype(Current)).id);
	tr2 = RTMS_EX_H("e12: this container will exceed phase safe radiation",52,1781421166);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(4651, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(13,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(6225, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(14);
	RTDBGAA(Current, dtype, 6226, 0xF80000E7, 0); /* e13 */
	tr1 = RTLNSMART(RTWCT(6226, dtype, Dftype(Current)).id);
	tr2 = RTMS_EX_H("e13: phase does not expect this container material",50,217043052);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(4651, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(14,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(6226, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(15);
	RTDBGAA(Current, dtype, 6227, 0xF80000E7, 0); /* e14 */
	tr1 = RTLNSMART(RTWCT(6227, dtype, Dftype(Current)).id);
	tr2 = RTMS_EX_H("e14: container radiation capacity exceeded",42,1676503908);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(4651, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(15,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(6227, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(16);
	RTDBGAA(Current, dtype, 6228, 0xF80000E7, 0); /* e15 */
	tr1 = RTLNSMART(RTWCT(6228, dtype, Dftype(Current)).id);
	tr2 = RTMS_EX_H("e15: this container identifier not in tracker",45,851656306);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(4651, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(16,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(6228, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(17);
	RTDBGAA(Current, dtype, 6229, 0xF80000E7, 0); /* e16 */
	tr1 = RTLNSMART(RTWCT(6229, dtype, Dftype(Current)).id);
	tr2 = RTMS_EX_H("e16: source and target phase identifier must be different",57,43558260);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(4651, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(17,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(6229, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(18);
	RTDBGAA(Current, dtype, 6230, 0xF80000E7, 0); /* e17 */
	tr1 = RTLNSMART(RTWCT(6230, dtype, Dftype(Current)).id);
	tr2 = RTMS_EX_H("e17: this container identifier is not in the source phase",57,881678437);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(4651, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(18,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(6230, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(19);
	RTDBGAA(Current, dtype, 6231, 0xF80000E7, 0); /* e18 */
	tr1 = RTLNSMART(RTWCT(6231, dtype, Dftype(Current)).id);
	tr2 = RTMS_EX_H("e18: this container radiation must not be negative",50,1486580581);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(4651, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(19,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(6231, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(20);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
#undef ur1
}

/* {ERRORS}.ok */
EIF_TYPED_VALUE F978_8380 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(6213,Dtype(Current)));
	return r;
}


/* {ERRORS}.e1 */
EIF_TYPED_VALUE F978_8381 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(6214,Dtype(Current)));
	return r;
}


/* {ERRORS}.e2 */
EIF_TYPED_VALUE F978_8382 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(6215,Dtype(Current)));
	return r;
}


/* {ERRORS}.e3 */
EIF_TYPED_VALUE F978_8383 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(6216,Dtype(Current)));
	return r;
}


/* {ERRORS}.e4 */
EIF_TYPED_VALUE F978_8384 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(6217,Dtype(Current)));
	return r;
}


/* {ERRORS}.e5 */
EIF_TYPED_VALUE F978_8385 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(6218,Dtype(Current)));
	return r;
}


/* {ERRORS}.e6 */
EIF_TYPED_VALUE F978_8386 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(6219,Dtype(Current)));
	return r;
}


/* {ERRORS}.e7 */
EIF_TYPED_VALUE F978_8387 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(6220,Dtype(Current)));
	return r;
}


/* {ERRORS}.e8 */
EIF_TYPED_VALUE F978_8388 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(6221,Dtype(Current)));
	return r;
}


/* {ERRORS}.e9 */
EIF_TYPED_VALUE F978_8389 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(6222,Dtype(Current)));
	return r;
}


/* {ERRORS}.e10 */
EIF_TYPED_VALUE F978_8390 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(6223,Dtype(Current)));
	return r;
}


/* {ERRORS}.e11 */
EIF_TYPED_VALUE F978_8391 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(6224,Dtype(Current)));
	return r;
}


/* {ERRORS}.e12 */
EIF_TYPED_VALUE F978_8392 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(6225,Dtype(Current)));
	return r;
}


/* {ERRORS}.e13 */
EIF_TYPED_VALUE F978_8393 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(6226,Dtype(Current)));
	return r;
}


/* {ERRORS}.e14 */
EIF_TYPED_VALUE F978_8394 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(6227,Dtype(Current)));
	return r;
}


/* {ERRORS}.e15 */
EIF_TYPED_VALUE F978_8395 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(6228,Dtype(Current)));
	return r;
}


/* {ERRORS}.e16 */
EIF_TYPED_VALUE F978_8396 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(6229,Dtype(Current)));
	return r;
}


/* {ERRORS}.e17 */
EIF_TYPED_VALUE F978_8397 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(6230,Dtype(Current)));
	return r;
}


/* {ERRORS}.e18 */
EIF_TYPED_VALUE F978_8398 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(6231,Dtype(Current)));
	return r;
}


void EIF_Minit978 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
