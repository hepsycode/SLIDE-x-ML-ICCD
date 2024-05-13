// Verilated -*- C++ -*-
#ifndef _Vmain_tb__Inlines_H_
#define _Vmain_tb__Inlines_H_

#include "verilated.h"

//======================

#ifndef VL_HAVE_CONST_W_10X
# define VL_HAVE_CONST_W_10X
static inline WDataOutP VL_CONST_W_10X(int obits, WDataOutP o
    	,IData d9,IData d8
    	,IData d7,IData d6,IData d5,IData d4,IData d3,IData d2,IData d1,IData d0) {
        o[9]=d9; o[8]=d8;
        o[7]=d7; o[6]=d6; o[5]=d5; o[4]=d4; o[3]=d3; o[2]=d2; o[1]=d1; o[0]=d0;
        for(int i=10;i<VL_WORDS_I(obits);i++) o[i] = (IData)0x0;
        return o;
}
#endif

#ifndef VL_HAVE_CONST_W_251X
# define VL_HAVE_CONST_W_251X
static inline WDataOutP VL_CONST_W_251X(int obits, WDataOutP o
    	,IData d250,IData d249,IData d248
    	,IData d247,IData d246,IData d245,IData d244,IData d243,IData d242,IData d241,IData d240
    	,IData d239,IData d238,IData d237,IData d236,IData d235,IData d234,IData d233,IData d232
    	,IData d231,IData d230,IData d229,IData d228,IData d227,IData d226,IData d225,IData d224
    	,IData d223,IData d222,IData d221,IData d220,IData d219,IData d218,IData d217,IData d216
    	,IData d215,IData d214,IData d213,IData d212,IData d211,IData d210,IData d209,IData d208
    	,IData d207,IData d206,IData d205,IData d204,IData d203,IData d202,IData d201,IData d200
    	,IData d199,IData d198,IData d197,IData d196,IData d195,IData d194,IData d193,IData d192
    	,IData d191,IData d190,IData d189,IData d188,IData d187,IData d186,IData d185,IData d184
    	,IData d183,IData d182,IData d181,IData d180,IData d179,IData d178,IData d177,IData d176
    	,IData d175,IData d174,IData d173,IData d172,IData d171,IData d170,IData d169,IData d168
    	,IData d167,IData d166,IData d165,IData d164,IData d163,IData d162,IData d161,IData d160
    	,IData d159,IData d158,IData d157,IData d156,IData d155,IData d154,IData d153,IData d152
    	,IData d151,IData d150,IData d149,IData d148,IData d147,IData d146,IData d145,IData d144
    	,IData d143,IData d142,IData d141,IData d140,IData d139,IData d138,IData d137,IData d136
    	,IData d135,IData d134,IData d133,IData d132,IData d131,IData d130,IData d129,IData d128
    	,IData d127,IData d126,IData d125,IData d124,IData d123,IData d122,IData d121,IData d120
    	,IData d119,IData d118,IData d117,IData d116,IData d115,IData d114,IData d113,IData d112
    	,IData d111,IData d110,IData d109,IData d108,IData d107,IData d106,IData d105,IData d104
    	,IData d103,IData d102,IData d101,IData d100,IData d99,IData d98,IData d97,IData d96
    	,IData d95,IData d94,IData d93,IData d92,IData d91,IData d90,IData d89,IData d88
    	,IData d87,IData d86,IData d85,IData d84,IData d83,IData d82,IData d81,IData d80
    	,IData d79,IData d78,IData d77,IData d76,IData d75,IData d74,IData d73,IData d72
    	,IData d71,IData d70,IData d69,IData d68,IData d67,IData d66,IData d65,IData d64
    	,IData d63,IData d62,IData d61,IData d60,IData d59,IData d58,IData d57,IData d56
    	,IData d55,IData d54,IData d53,IData d52,IData d51,IData d50,IData d49,IData d48
    	,IData d47,IData d46,IData d45,IData d44,IData d43,IData d42,IData d41,IData d40
    	,IData d39,IData d38,IData d37,IData d36,IData d35,IData d34,IData d33,IData d32
    	,IData d31,IData d30,IData d29,IData d28,IData d27,IData d26,IData d25,IData d24
    	,IData d23,IData d22,IData d21,IData d20,IData d19,IData d18,IData d17,IData d16
    	,IData d15,IData d14,IData d13,IData d12,IData d11,IData d10,IData d9,IData d8
    	,IData d7,IData d6,IData d5,IData d4,IData d3,IData d2,IData d1,IData d0) {
        o[250]=d250; o[249]=d249; o[248]=d248;
        o[247]=d247; o[246]=d246; o[245]=d245; o[244]=d244; o[243]=d243; o[242]=d242; o[241]=d241; o[240]=d240;
        o[239]=d239; o[238]=d238; o[237]=d237; o[236]=d236; o[235]=d235; o[234]=d234; o[233]=d233; o[232]=d232;
        o[231]=d231; o[230]=d230; o[229]=d229; o[228]=d228; o[227]=d227; o[226]=d226; o[225]=d225; o[224]=d224;
        o[223]=d223; o[222]=d222; o[221]=d221; o[220]=d220; o[219]=d219; o[218]=d218; o[217]=d217; o[216]=d216;
        o[215]=d215; o[214]=d214; o[213]=d213; o[212]=d212; o[211]=d211; o[210]=d210; o[209]=d209; o[208]=d208;
        o[207]=d207; o[206]=d206; o[205]=d205; o[204]=d204; o[203]=d203; o[202]=d202; o[201]=d201; o[200]=d200;
        o[199]=d199; o[198]=d198; o[197]=d197; o[196]=d196; o[195]=d195; o[194]=d194; o[193]=d193; o[192]=d192;
        o[191]=d191; o[190]=d190; o[189]=d189; o[188]=d188; o[187]=d187; o[186]=d186; o[185]=d185; o[184]=d184;
        o[183]=d183; o[182]=d182; o[181]=d181; o[180]=d180; o[179]=d179; o[178]=d178; o[177]=d177; o[176]=d176;
        o[175]=d175; o[174]=d174; o[173]=d173; o[172]=d172; o[171]=d171; o[170]=d170; o[169]=d169; o[168]=d168;
        o[167]=d167; o[166]=d166; o[165]=d165; o[164]=d164; o[163]=d163; o[162]=d162; o[161]=d161; o[160]=d160;
        o[159]=d159; o[158]=d158; o[157]=d157; o[156]=d156; o[155]=d155; o[154]=d154; o[153]=d153; o[152]=d152;
        o[151]=d151; o[150]=d150; o[149]=d149; o[148]=d148; o[147]=d147; o[146]=d146; o[145]=d145; o[144]=d144;
        o[143]=d143; o[142]=d142; o[141]=d141; o[140]=d140; o[139]=d139; o[138]=d138; o[137]=d137; o[136]=d136;
        o[135]=d135; o[134]=d134; o[133]=d133; o[132]=d132; o[131]=d131; o[130]=d130; o[129]=d129; o[128]=d128;
        o[127]=d127; o[126]=d126; o[125]=d125; o[124]=d124; o[123]=d123; o[122]=d122; o[121]=d121; o[120]=d120;
        o[119]=d119; o[118]=d118; o[117]=d117; o[116]=d116; o[115]=d115; o[114]=d114; o[113]=d113; o[112]=d112;
        o[111]=d111; o[110]=d110; o[109]=d109; o[108]=d108; o[107]=d107; o[106]=d106; o[105]=d105; o[104]=d104;
        o[103]=d103; o[102]=d102; o[101]=d101; o[100]=d100; o[99]=d99; o[98]=d98; o[97]=d97; o[96]=d96;
        o[95]=d95; o[94]=d94; o[93]=d93; o[92]=d92; o[91]=d91; o[90]=d90; o[89]=d89; o[88]=d88;
        o[87]=d87; o[86]=d86; o[85]=d85; o[84]=d84; o[83]=d83; o[82]=d82; o[81]=d81; o[80]=d80;
        o[79]=d79; o[78]=d78; o[77]=d77; o[76]=d76; o[75]=d75; o[74]=d74; o[73]=d73; o[72]=d72;
        o[71]=d71; o[70]=d70; o[69]=d69; o[68]=d68; o[67]=d67; o[66]=d66; o[65]=d65; o[64]=d64;
        o[63]=d63; o[62]=d62; o[61]=d61; o[60]=d60; o[59]=d59; o[58]=d58; o[57]=d57; o[56]=d56;
        o[55]=d55; o[54]=d54; o[53]=d53; o[52]=d52; o[51]=d51; o[50]=d50; o[49]=d49; o[48]=d48;
        o[47]=d47; o[46]=d46; o[45]=d45; o[44]=d44; o[43]=d43; o[42]=d42; o[41]=d41; o[40]=d40;
        o[39]=d39; o[38]=d38; o[37]=d37; o[36]=d36; o[35]=d35; o[34]=d34; o[33]=d33; o[32]=d32;
        o[31]=d31; o[30]=d30; o[29]=d29; o[28]=d28; o[27]=d27; o[26]=d26; o[25]=d25; o[24]=d24;
        o[23]=d23; o[22]=d22; o[21]=d21; o[20]=d20; o[19]=d19; o[18]=d18; o[17]=d17; o[16]=d16;
        o[15]=d15; o[14]=d14; o[13]=d13; o[12]=d12; o[11]=d11; o[10]=d10; o[9]=d9; o[8]=d8;
        o[7]=d7; o[6]=d6; o[5]=d5; o[4]=d4; o[3]=d3; o[2]=d2; o[1]=d1; o[0]=d0;
        for(int i=251;i<VL_WORDS_I(obits);i++) o[i] = (IData)0x0;
        return o;
}
#endif

//======================

#endif  /*guard*/
