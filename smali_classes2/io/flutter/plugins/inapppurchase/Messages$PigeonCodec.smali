.class Lio/flutter/plugins/inapppurchase/Messages$PigeonCodec;
.super Lio/flutter/plugin/common/StandardMessageCodec;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/inapppurchase/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PigeonCodec"
.end annotation


# static fields
.field public static final INSTANCE:Lio/flutter/plugins/inapppurchase/Messages$PigeonCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$PigeonCodec;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$PigeonCodec;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/flutter/plugins/inapppurchase/Messages$PigeonCodec;->INSTANCE:Lio/flutter/plugins/inapppurchase/Messages$PigeonCodec;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/plugin/common/StandardMessageCodec;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 3
    .line 4
    .line 5
    invoke-super {p0, p1, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :pswitch_0
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :pswitch_1
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceDetails;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceDetails;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    :pswitch_2
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    :pswitch_3
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    :pswitch_4
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryResponse;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryResponse;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1

    .line 65
    :pswitch_5
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    return-object p1

    .line 76
    :pswitch_6
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    return-object p1

    .line 87
    :pswitch_7
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    return-object p1

    .line 98
    :pswitch_8
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    return-object p1

    .line 109
    :pswitch_9
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    return-object p1

    .line 120
    :pswitch_a
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    return-object p1

    .line 131
    :pswitch_b
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    check-cast p1, Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    return-object p1

    .line 142
    :pswitch_c
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    check-cast p1, Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    return-object p1

    .line 153
    :pswitch_d
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    check-cast p1, Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    return-object p1

    .line 164
    :pswitch_e
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    check-cast p1, Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    return-object p1

    .line 175
    :pswitch_f
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    check-cast p1, Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    return-object p1

    .line 186
    :pswitch_10
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    check-cast p1, Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformQueryProduct;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformQueryProduct;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    return-object p1

    .line 197
    :pswitch_11
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    if-nez p1, :cond_0

    .line 202
    .line 203
    goto :goto_0

    .line 204
    :cond_0
    invoke-static {}, Lio/flutter/plugins/inapppurchase/Messages$PlatformRecurrenceMode;->values()[Lio/flutter/plugins/inapppurchase/Messages$PlatformRecurrenceMode;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    check-cast p1, Ljava/lang/Long;

    .line 209
    .line 210
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    aget-object v0, p2, p1

    .line 215
    .line 216
    :goto_0
    return-object v0

    .line 217
    :pswitch_12
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    if-nez p1, :cond_1

    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_1
    invoke-static {}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseState;->values()[Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseState;

    .line 225
    .line 226
    .line 227
    move-result-object p2

    .line 228
    check-cast p1, Ljava/lang/Long;

    .line 229
    .line 230
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    aget-object v0, p2, p1

    .line 235
    .line 236
    :goto_1
    return-object v0

    .line 237
    :pswitch_13
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    if-nez p1, :cond_2

    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_2
    invoke-static {}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingChoiceMode;->values()[Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingChoiceMode;

    .line 245
    .line 246
    .line 247
    move-result-object p2

    .line 248
    check-cast p1, Ljava/lang/Long;

    .line 249
    .line 250
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    .line 251
    .line 252
    .line 253
    move-result p1

    .line 254
    aget-object v0, p2, p1

    .line 255
    .line 256
    :goto_2
    return-object v0

    .line 257
    :pswitch_14
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    if-nez p1, :cond_3

    .line 262
    .line 263
    goto :goto_3

    .line 264
    :cond_3
    invoke-static {}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;->values()[Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;

    .line 265
    .line 266
    .line 267
    move-result-object p2

    .line 268
    check-cast p1, Ljava/lang/Long;

    .line 269
    .line 270
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    .line 271
    .line 272
    .line 273
    move-result p1

    .line 274
    aget-object v0, p2, p1

    .line 275
    .line 276
    :goto_3
    return-object v0

    .line 277
    :pswitch_data_0
    .packed-switch -0x7f
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V
    .locals 2

    .line 1
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    const/16 v0, 0x81

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 9
    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;

    .line 15
    .line 16
    iget p2, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;->index:I

    .line 17
    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :goto_0
    invoke-virtual {p0, p1, v1}, Lio/flutter/plugins/inapppurchase/Messages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_4

    .line 26
    .line 27
    :cond_1
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingChoiceMode;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    const/16 v0, 0x82

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 34
    .line 35
    .line 36
    if-nez p2, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingChoiceMode;

    .line 40
    .line 41
    iget p2, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingChoiceMode;->index:I

    .line 42
    .line 43
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    :goto_1
    invoke-virtual {p0, p1, v1}, Lio/flutter/plugins/inapppurchase/Messages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_4

    .line 51
    .line 52
    :cond_3
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseState;

    .line 53
    .line 54
    if-eqz v0, :cond_5

    .line 55
    .line 56
    const/16 v0, 0x83

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 59
    .line 60
    .line 61
    if-nez p2, :cond_4

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_4
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseState;

    .line 65
    .line 66
    iget p2, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseState;->index:I

    .line 67
    .line 68
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    :goto_2
    invoke-virtual {p0, p1, v1}, Lio/flutter/plugins/inapppurchase/Messages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_4

    .line 76
    .line 77
    :cond_5
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformRecurrenceMode;

    .line 78
    .line 79
    if-eqz v0, :cond_7

    .line 80
    .line 81
    const/16 v0, 0x84

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 84
    .line 85
    .line 86
    if-nez p2, :cond_6

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_6
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformRecurrenceMode;

    .line 90
    .line 91
    iget p2, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformRecurrenceMode;->index:I

    .line 92
    .line 93
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    :goto_3
    invoke-virtual {p0, p1, v1}, Lio/flutter/plugins/inapppurchase/Messages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    goto/16 :goto_4

    .line 101
    .line 102
    :cond_7
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformQueryProduct;

    .line 103
    .line 104
    if-eqz v0, :cond_8

    .line 105
    .line 106
    const/16 v0, 0x85

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 109
    .line 110
    .line 111
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformQueryProduct;

    .line 112
    .line 113
    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformQueryProduct;->toList()Ljava/util/ArrayList;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_4

    .line 121
    .line 122
    :cond_8
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers;

    .line 123
    .line 124
    if-eqz v0, :cond_9

    .line 125
    .line 126
    const/16 v0, 0x86

    .line 127
    .line 128
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 129
    .line 130
    .line 131
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers;

    .line 132
    .line 133
    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers;->toList()Ljava/util/ArrayList;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    goto/16 :goto_4

    .line 141
    .line 142
    :cond_9
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    .line 143
    .line 144
    if-eqz v0, :cond_a

    .line 145
    .line 146
    const/16 v0, 0x87

    .line 147
    .line 148
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 149
    .line 150
    .line 151
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    .line 152
    .line 153
    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;->toList()Ljava/util/ArrayList;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_4

    .line 161
    .line 162
    :cond_a
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;

    .line 163
    .line 164
    if-eqz v0, :cond_b

    .line 165
    .line 166
    const/16 v0, 0x88

    .line 167
    .line 168
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 169
    .line 170
    .line 171
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;

    .line 172
    .line 173
    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;->toList()Ljava/util/ArrayList;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    goto/16 :goto_4

    .line 181
    .line 182
    :cond_b
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;

    .line 183
    .line 184
    if-eqz v0, :cond_c

    .line 185
    .line 186
    const/16 v0, 0x89

    .line 187
    .line 188
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 189
    .line 190
    .line 191
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;

    .line 192
    .line 193
    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->toList()Ljava/util/ArrayList;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_4

    .line 201
    .line 202
    :cond_c
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse;

    .line 203
    .line 204
    if-eqz v0, :cond_d

    .line 205
    .line 206
    const/16 v0, 0x8a

    .line 207
    .line 208
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 209
    .line 210
    .line 211
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse;

    .line 212
    .line 213
    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse;->toList()Ljava/util/ArrayList;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_4

    .line 221
    .line 222
    :cond_d
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse;

    .line 223
    .line 224
    if-eqz v0, :cond_e

    .line 225
    .line 226
    const/16 v0, 0x8b

    .line 227
    .line 228
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 229
    .line 230
    .line 231
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse;

    .line 232
    .line 233
    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse;->toList()Ljava/util/ArrayList;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_4

    .line 241
    .line 242
    :cond_e
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse;

    .line 243
    .line 244
    if-eqz v0, :cond_f

    .line 245
    .line 246
    const/16 v0, 0x8c

    .line 247
    .line 248
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 249
    .line 250
    .line 251
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse;

    .line 252
    .line 253
    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse;->toList()Ljava/util/ArrayList;

    .line 254
    .line 255
    .line 256
    move-result-object p2

    .line 257
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    goto/16 :goto_4

    .line 261
    .line 262
    :cond_f
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;

    .line 263
    .line 264
    if-eqz v0, :cond_10

    .line 265
    .line 266
    const/16 v0, 0x8d

    .line 267
    .line 268
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 269
    .line 270
    .line 271
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;

    .line 272
    .line 273
    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->toList()Ljava/util/ArrayList;

    .line 274
    .line 275
    .line 276
    move-result-object p2

    .line 277
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    goto/16 :goto_4

    .line 281
    .line 282
    :cond_10
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;

    .line 283
    .line 284
    if-eqz v0, :cond_11

    .line 285
    .line 286
    const/16 v0, 0x8e

    .line 287
    .line 288
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 289
    .line 290
    .line 291
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;

    .line 292
    .line 293
    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->toList()Ljava/util/ArrayList;

    .line 294
    .line 295
    .line 296
    move-result-object p2

    .line 297
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    goto/16 :goto_4

    .line 301
    .line 302
    :cond_11
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;

    .line 303
    .line 304
    if-eqz v0, :cond_12

    .line 305
    .line 306
    const/16 v0, 0x8f

    .line 307
    .line 308
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 309
    .line 310
    .line 311
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;

    .line 312
    .line 313
    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->toList()Ljava/util/ArrayList;

    .line 314
    .line 315
    .line 316
    move-result-object p2

    .line 317
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    goto/16 :goto_4

    .line 321
    .line 322
    :cond_12
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord;

    .line 323
    .line 324
    if-eqz v0, :cond_13

    .line 325
    .line 326
    const/16 v0, 0x90

    .line 327
    .line 328
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 329
    .line 330
    .line 331
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord;

    .line 332
    .line 333
    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord;->toList()Ljava/util/ArrayList;

    .line 334
    .line 335
    .line 336
    move-result-object p2

    .line 337
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    goto :goto_4

    .line 341
    :cond_13
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryResponse;

    .line 342
    .line 343
    if-eqz v0, :cond_14

    .line 344
    .line 345
    const/16 v0, 0x91

    .line 346
    .line 347
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 348
    .line 349
    .line 350
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryResponse;

    .line 351
    .line 352
    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryResponse;->toList()Ljava/util/ArrayList;

    .line 353
    .line 354
    .line 355
    move-result-object p2

    .line 356
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 357
    .line 358
    .line 359
    goto :goto_4

    .line 360
    :cond_14
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse;

    .line 361
    .line 362
    if-eqz v0, :cond_15

    .line 363
    .line 364
    const/16 v0, 0x92

    .line 365
    .line 366
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 367
    .line 368
    .line 369
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse;

    .line 370
    .line 371
    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse;->toList()Ljava/util/ArrayList;

    .line 372
    .line 373
    .line 374
    move-result-object p2

    .line 375
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    goto :goto_4

    .line 379
    :cond_15
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails;

    .line 380
    .line 381
    if-eqz v0, :cond_16

    .line 382
    .line 383
    const/16 v0, 0x93

    .line 384
    .line 385
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 386
    .line 387
    .line 388
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails;

    .line 389
    .line 390
    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails;->toList()Ljava/util/ArrayList;

    .line 391
    .line 392
    .line 393
    move-result-object p2

    .line 394
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 395
    .line 396
    .line 397
    goto :goto_4

    .line 398
    :cond_16
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceDetails;

    .line 399
    .line 400
    if-eqz v0, :cond_17

    .line 401
    .line 402
    const/16 v0, 0x94

    .line 403
    .line 404
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 405
    .line 406
    .line 407
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceDetails;

    .line 408
    .line 409
    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceDetails;->toList()Ljava/util/ArrayList;

    .line 410
    .line 411
    .line 412
    move-result-object p2

    .line 413
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 414
    .line 415
    .line 416
    goto :goto_4

    .line 417
    :cond_17
    instance-of v0, p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;

    .line 418
    .line 419
    if-eqz v0, :cond_18

    .line 420
    .line 421
    const/16 v0, 0x95

    .line 422
    .line 423
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 424
    .line 425
    .line 426
    check-cast p2, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;

    .line 427
    .line 428
    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;->toList()Ljava/util/ArrayList;

    .line 429
    .line 430
    .line 431
    move-result-object p2

    .line 432
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 433
    .line 434
    .line 435
    goto :goto_4

    .line 436
    :cond_18
    invoke-super {p0, p1, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 437
    .line 438
    .line 439
    :goto_4
    return-void
.end method
