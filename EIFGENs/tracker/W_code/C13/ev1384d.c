/*
 * Class EV_RADIO_PEER_I
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static const EIF_TYPE_INDEX egt_0_1384 [] = {0xFF01,231,0xFFFF};
static const EIF_TYPE_INDEX egt_1_1384 [] = {0xFF01,244,1383,0xFFFF};
static const EIF_TYPE_INDEX egt_2_1384 [] = {0xFF01,1383,0xFFFF};
static const EIF_TYPE_INDEX egt_3_1384 [] = {0,0xFFFF};
static const EIF_TYPE_INDEX egt_4_1384 [] = {0,0xFFFF};
static const EIF_TYPE_INDEX egt_5_1384 [] = {0xFF01,1383,0xFFFF};
static const EIF_TYPE_INDEX egt_6_1384 [] = {0xFF01,1383,0xFFFF};
static const EIF_TYPE_INDEX egt_7_1384 [] = {0,0xFFFF};
static const EIF_TYPE_INDEX egt_8_1384 [] = {0xFF01,14,0xFFFF};
static const EIF_TYPE_INDEX egt_9_1384 [] = {0xFF01,231,0xFFFF};
static const EIF_TYPE_INDEX egt_10_1384 [] = {0xFF01,231,0xFFFF};
static const EIF_TYPE_INDEX egt_11_1384 [] = {0xFF01,15,0xFFFF};
static const EIF_TYPE_INDEX egt_12_1384 [] = {0xFF01,1383,0xFFFF};
static const EIF_TYPE_INDEX egt_13_1384 [] = {0xFF01,0xFF01,1260,0xFFFF};
static const EIF_TYPE_INDEX egt_14_1384 [] = {0xFF01,465,0xFF01,0xFF01,1260,0xFFFF};
static const EIF_TYPE_INDEX egt_15_1384 [] = {0xFF01,0xFF01,1260,0xFFFF};


static const struct desc_info desc_1384[] = {
	{EIF_GENERIC(NULL), 0xFFFFFFFF, 0xFFFFFFFF},
	{EIF_GENERIC(egt_0_1384), 0, 0xFFFFFFFF},
	{EIF_GENERIC(egt_1_1384), 1, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0195 /*202*/), 2, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0195 /*202*/), 3, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0195 /*202*/), 4, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0195 /*202*/), 5, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0195 /*202*/), 6, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0195 /*202*/), 7, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0195 /*202*/), 8, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0195 /*202*/), 9, 0xFFFFFFFF},
	{EIF_GENERIC(egt_2_1384), 10, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 11, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 12, 0xFFFFFFFF},
	{EIF_GENERIC(egt_3_1384), 13, 0xFFFFFFFF},
	{EIF_GENERIC(egt_4_1384), 14, 0xFFFFFFFF},
	{EIF_GENERIC(egt_5_1384), 15, 0xFFFFFFFF},
	{EIF_GENERIC(egt_6_1384), 16, 0xFFFFFFFF},
	{EIF_GENERIC(egt_7_1384), 17, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 18, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 19, 0xFFFFFFFF},
	{EIF_GENERIC(egt_8_1384), 20, 0xFFFFFFFF},
	{EIF_GENERIC(egt_9_1384), 21, 0xFFFFFFFF},
	{EIF_GENERIC(egt_10_1384), 22, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 23, 0xFFFFFFFF},
	{EIF_GENERIC(egt_11_1384), 24, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 25, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 26, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 27, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0ACF /*1383*/), 28, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01C5 /*226*/), 29, 0xFFFFFFFF},
	{EIF_GENERIC(egt_12_1384), 30, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 18993, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 0x00, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 0x00, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 18995, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 0x00, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0195 /*202*/), 18996, 0xFFFFFFFF},
	{EIF_GENERIC(egt_13_1384), 18997, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x09D9 /*1260*/), 19753, 0},
	{EIF_NON_GENERIC(0x0177 /*187*/), 18999, 8},
	{EIF_NON_GENERIC(0x0177 /*187*/), 19000, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0177 /*187*/), 19001, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0177 /*187*/), 19002, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0177 /*187*/), 19003, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0177 /*187*/), 19004, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0177 /*187*/), 19005, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 19006, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0195 /*202*/), 19007, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0195 /*202*/), 19008, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0195 /*202*/), 19009, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0195 /*202*/), 18985, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 18986, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 18987, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 18988, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 18989, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 18990, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 18991, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0195 /*202*/), 18992, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0195 /*202*/), 0x00, 0xFFFFFFFF},
	{EIF_GENERIC(egt_14_1384), 0x00, 0xFFFFFFFF},
	{EIF_GENERIC(egt_15_1384), 0x00, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 0x00, 0xFFFFFFFF},
};
void Init1384(void)
{
	IDSC(desc_1384, 0, 1383);
	IDSC(desc_1384 + 1, 1, 1383);
	IDSC(desc_1384 + 32, 528, 1383);
	IDSC(desc_1384 + 59, 842, 1383);
}


#ifdef __cplusplus
}
#endif
