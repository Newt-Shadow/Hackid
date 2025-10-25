.class Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;
.super Lio/flutter/plugin/common/StandardMessageCodec;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/flutter/pigeon/Pigeon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppMetricaPigeonCodec"
.end annotation


# static fields
.field public static final INSTANCE:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;->INSTANCE:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;

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
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1

    .line 9
    :pswitch_0
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfilePigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfilePigeon;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :pswitch_1
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :pswitch_2
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :pswitch_3
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsReasonPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsReasonPigeon;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    :pswitch_4
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    return-object p1

    .line 64
    :pswitch_5
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    return-object p1

    .line 75
    :pswitch_6
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    return-object p1

    .line 86
    :pswitch_7
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    return-object p1

    .line 97
    :pswitch_8
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    return-object p1

    .line 108
    :pswitch_9
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    return-object p1

    .line 119
    :pswitch_a
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$PreloadInfoPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$PreloadInfoPigeon;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    return-object p1

    .line 130
    :pswitch_b
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    check-cast p1, Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    return-object p1

    .line 141
    :pswitch_c
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    check-cast p1, Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ExternalAttributionPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ExternalAttributionPigeon;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    return-object p1

    .line 152
    :pswitch_d
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    check-cast p1, Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    return-object p1

    .line 163
    :pswitch_e
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    check-cast p1, Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    return-object p1

    .line 174
    :pswitch_f
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    check-cast p1, Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    return-object p1

    .line 185
    :pswitch_10
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    check-cast p1, Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    return-object p1

    .line 196
    :pswitch_11
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    check-cast p1, Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    return-object p1

    .line 207
    :pswitch_12
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    check-cast p1, Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    return-object p1

    .line 218
    :pswitch_13
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    check-cast p1, Ljava/util/ArrayList;

    .line 223
    .line 224
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    return-object p1

    .line 229
    :pswitch_14
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    check-cast p1, Ljava/util/ArrayList;

    .line 234
    .line 235
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    return-object p1

    .line 240
    :pswitch_15
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    check-cast p1, Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceOrderPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceOrderPigeon;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    return-object p1

    .line 251
    :pswitch_16
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    check-cast p1, Ljava/util/ArrayList;

    .line 256
    .line 257
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    return-object p1

    .line 262
    :pswitch_17
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    check-cast p1, Ljava/util/ArrayList;

    .line 267
    .line 268
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    return-object p1

    .line 273
    :pswitch_18
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    check-cast p1, Ljava/util/ArrayList;

    .line 278
    .line 279
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    return-object p1

    .line 284
    :pswitch_19
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    check-cast p1, Ljava/util/ArrayList;

    .line 289
    .line 290
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    return-object p1

    .line 295
    :pswitch_1a
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    check-cast p1, Ljava/util/ArrayList;

    .line 300
    .line 301
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkPigeon;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    return-object p1

    .line 306
    :pswitch_1b
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    check-cast p1, Ljava/util/ArrayList;

    .line 311
    .line 312
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkParametersPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkParametersPigeon;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    return-object p1

    .line 317
    :pswitch_1c
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    check-cast p1, Ljava/util/ArrayList;

    .line 322
    .line 323
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkErrorPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkErrorPigeon;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    return-object p1

    .line 328
    :pswitch_1d
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    check-cast p1, Ljava/util/ArrayList;

    .line 333
    .line 334
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    return-object p1

    .line 339
    :pswitch_1e
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    check-cast p1, Ljava/util/ArrayList;

    .line 344
    .line 345
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    return-object p1

    .line 350
    nop

    .line 351
    :pswitch_data_0
    .packed-switch -0x80
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
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
    .locals 1

    .line 1
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x80

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 8
    .line 9
    .line 10
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;

    .line 11
    .line 12
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->toList()Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_0
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const/16 v0, 0x81

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 28
    .line 29
    .line 30
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;

    .line 31
    .line 32
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->toList()Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :cond_1
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkErrorPigeon;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    const/16 v0, 0x82

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 48
    .line 49
    .line 50
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkErrorPigeon;

    .line 51
    .line 52
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkErrorPigeon;->toList()Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_0

    .line 60
    .line 61
    :cond_2
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkParametersPigeon;

    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    const/16 v0, 0x83

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 68
    .line 69
    .line 70
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkParametersPigeon;

    .line 71
    .line 72
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkParametersPigeon;->toList()Ljava/util/ArrayList;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_0

    .line 80
    .line 81
    :cond_3
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkPigeon;

    .line 82
    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    const/16 v0, 0x84

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 88
    .line 89
    .line 90
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkPigeon;

    .line 91
    .line 92
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkPigeon;->toList()Ljava/util/ArrayList;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    goto/16 :goto_0

    .line 100
    .line 101
    :cond_4
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;

    .line 102
    .line 103
    if-eqz v0, :cond_5

    .line 104
    .line 105
    const/16 v0, 0x85

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 108
    .line 109
    .line 110
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;

    .line 111
    .line 112
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;->toList()Ljava/util/ArrayList;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_0

    .line 120
    .line 121
    :cond_5
    if-eqz v0, :cond_6

    .line 122
    .line 123
    const/16 v0, 0x86

    .line 124
    .line 125
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 126
    .line 127
    .line 128
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;

    .line 129
    .line 130
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;->toList()Ljava/util/ArrayList;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    goto/16 :goto_0

    .line 138
    .line 139
    :cond_6
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;

    .line 140
    .line 141
    if-eqz v0, :cond_7

    .line 142
    .line 143
    const/16 v0, 0x87

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 146
    .line 147
    .line 148
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;

    .line 149
    .line 150
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;->toList()Ljava/util/ArrayList;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :cond_7
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;

    .line 160
    .line 161
    if-eqz v0, :cond_8

    .line 162
    .line 163
    const/16 v0, 0x88

    .line 164
    .line 165
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 166
    .line 167
    .line 168
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;

    .line 169
    .line 170
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->toList()Ljava/util/ArrayList;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :cond_8
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceOrderPigeon;

    .line 180
    .line 181
    if-eqz v0, :cond_9

    .line 182
    .line 183
    const/16 v0, 0x89

    .line 184
    .line 185
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 186
    .line 187
    .line 188
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceOrderPigeon;

    .line 189
    .line 190
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceOrderPigeon;->toList()Ljava/util/ArrayList;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :cond_9
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;

    .line 200
    .line 201
    if-eqz v0, :cond_a

    .line 202
    .line 203
    const/16 v0, 0x8a

    .line 204
    .line 205
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 206
    .line 207
    .line 208
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;

    .line 209
    .line 210
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;->toList()Ljava/util/ArrayList;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :cond_a
    if-eqz v0, :cond_b

    .line 220
    .line 221
    const/16 v0, 0x8b

    .line 222
    .line 223
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 224
    .line 225
    .line 226
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;

    .line 227
    .line 228
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;->toList()Ljava/util/ArrayList;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    goto/16 :goto_0

    .line 236
    .line 237
    :cond_b
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;

    .line 238
    .line 239
    if-eqz v0, :cond_c

    .line 240
    .line 241
    const/16 v0, 0x8c

    .line 242
    .line 243
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 244
    .line 245
    .line 246
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;

    .line 247
    .line 248
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->toList()Ljava/util/ArrayList;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    goto/16 :goto_0

    .line 256
    .line 257
    :cond_c
    if-eqz v0, :cond_d

    .line 258
    .line 259
    const/16 v0, 0x8d

    .line 260
    .line 261
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 262
    .line 263
    .line 264
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;

    .line 265
    .line 266
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->toList()Ljava/util/ArrayList;

    .line 267
    .line 268
    .line 269
    move-result-object p2

    .line 270
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    goto/16 :goto_0

    .line 274
    .line 275
    :cond_d
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;

    .line 276
    .line 277
    if-eqz v0, :cond_e

    .line 278
    .line 279
    const/16 v0, 0x8e

    .line 280
    .line 281
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 282
    .line 283
    .line 284
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;

    .line 285
    .line 286
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;->toList()Ljava/util/ArrayList;

    .line 287
    .line 288
    .line 289
    move-result-object p2

    .line 290
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    goto/16 :goto_0

    .line 294
    .line 295
    :cond_e
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;

    .line 296
    .line 297
    if-eqz v0, :cond_f

    .line 298
    .line 299
    const/16 v0, 0x8f

    .line 300
    .line 301
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 302
    .line 303
    .line 304
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;

    .line 305
    .line 306
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;->toList()Ljava/util/ArrayList;

    .line 307
    .line 308
    .line 309
    move-result-object p2

    .line 310
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    goto/16 :goto_0

    .line 314
    .line 315
    :cond_f
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;

    .line 316
    .line 317
    if-eqz v0, :cond_10

    .line 318
    .line 319
    const/16 v0, 0x90

    .line 320
    .line 321
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 322
    .line 323
    .line 324
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;

    .line 325
    .line 326
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;->toList()Ljava/util/ArrayList;

    .line 327
    .line 328
    .line 329
    move-result-object p2

    .line 330
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    goto/16 :goto_0

    .line 334
    .line 335
    :cond_10
    if-eqz v0, :cond_11

    .line 336
    .line 337
    const/16 v0, 0x91

    .line 338
    .line 339
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 340
    .line 341
    .line 342
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;

    .line 343
    .line 344
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;->toList()Ljava/util/ArrayList;

    .line 345
    .line 346
    .line 347
    move-result-object p2

    .line 348
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    goto/16 :goto_0

    .line 352
    .line 353
    :cond_11
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ExternalAttributionPigeon;

    .line 354
    .line 355
    if-eqz v0, :cond_12

    .line 356
    .line 357
    const/16 v0, 0x92

    .line 358
    .line 359
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 360
    .line 361
    .line 362
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ExternalAttributionPigeon;

    .line 363
    .line 364
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ExternalAttributionPigeon;->toList()Ljava/util/ArrayList;

    .line 365
    .line 366
    .line 367
    move-result-object p2

    .line 368
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    goto/16 :goto_0

    .line 372
    .line 373
    :cond_12
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;

    .line 374
    .line 375
    if-eqz v0, :cond_13

    .line 376
    .line 377
    const/16 v0, 0x93

    .line 378
    .line 379
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 380
    .line 381
    .line 382
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;

    .line 383
    .line 384
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->toList()Ljava/util/ArrayList;

    .line 385
    .line 386
    .line 387
    move-result-object p2

    .line 388
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    goto/16 :goto_0

    .line 392
    .line 393
    :cond_13
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$PreloadInfoPigeon;

    .line 394
    .line 395
    if-eqz v0, :cond_14

    .line 396
    .line 397
    const/16 v0, 0x94

    .line 398
    .line 399
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 400
    .line 401
    .line 402
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$PreloadInfoPigeon;

    .line 403
    .line 404
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$PreloadInfoPigeon;->toList()Ljava/util/ArrayList;

    .line 405
    .line 406
    .line 407
    move-result-object p2

    .line 408
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 409
    .line 410
    .line 411
    goto/16 :goto_0

    .line 412
    .line 413
    :cond_14
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;

    .line 414
    .line 415
    if-eqz v0, :cond_15

    .line 416
    .line 417
    const/16 v0, 0x95

    .line 418
    .line 419
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 420
    .line 421
    .line 422
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;

    .line 423
    .line 424
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;->toList()Ljava/util/ArrayList;

    .line 425
    .line 426
    .line 427
    move-result-object p2

    .line 428
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 429
    .line 430
    .line 431
    goto/16 :goto_0

    .line 432
    .line 433
    :cond_15
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;

    .line 434
    .line 435
    if-eqz v0, :cond_16

    .line 436
    .line 437
    const/16 v0, 0x96

    .line 438
    .line 439
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 440
    .line 441
    .line 442
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;

    .line 443
    .line 444
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->toList()Ljava/util/ArrayList;

    .line 445
    .line 446
    .line 447
    move-result-object p2

    .line 448
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 449
    .line 450
    .line 451
    goto/16 :goto_0

    .line 452
    .line 453
    :cond_16
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon;

    .line 454
    .line 455
    if-eqz v0, :cond_17

    .line 456
    .line 457
    const/16 v0, 0x97

    .line 458
    .line 459
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 460
    .line 461
    .line 462
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon;

    .line 463
    .line 464
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon;->toList()Ljava/util/ArrayList;

    .line 465
    .line 466
    .line 467
    move-result-object p2

    .line 468
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 469
    .line 470
    .line 471
    goto/16 :goto_0

    .line 472
    .line 473
    :cond_17
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon;

    .line 474
    .line 475
    if-eqz v0, :cond_18

    .line 476
    .line 477
    const/16 v0, 0x98

    .line 478
    .line 479
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 480
    .line 481
    .line 482
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon;

    .line 483
    .line 484
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon;->toList()Ljava/util/ArrayList;

    .line 485
    .line 486
    .line 487
    move-result-object p2

    .line 488
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 489
    .line 490
    .line 491
    goto/16 :goto_0

    .line 492
    .line 493
    :cond_18
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon;

    .line 494
    .line 495
    if-eqz v0, :cond_19

    .line 496
    .line 497
    const/16 v0, 0x99

    .line 498
    .line 499
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 500
    .line 501
    .line 502
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon;

    .line 503
    .line 504
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon;->toList()Ljava/util/ArrayList;

    .line 505
    .line 506
    .line 507
    move-result-object p2

    .line 508
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 509
    .line 510
    .line 511
    goto :goto_0

    .line 512
    :cond_19
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon;

    .line 513
    .line 514
    if-eqz v0, :cond_1a

    .line 515
    .line 516
    const/16 v0, 0x9a

    .line 517
    .line 518
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 519
    .line 520
    .line 521
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon;

    .line 522
    .line 523
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon;->toList()Ljava/util/ArrayList;

    .line 524
    .line 525
    .line 526
    move-result-object p2

    .line 527
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 528
    .line 529
    .line 530
    goto :goto_0

    .line 531
    :cond_1a
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsReasonPigeon;

    .line 532
    .line 533
    if-eqz v0, :cond_1b

    .line 534
    .line 535
    const/16 v0, 0x9b

    .line 536
    .line 537
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 538
    .line 539
    .line 540
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsReasonPigeon;

    .line 541
    .line 542
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsReasonPigeon;->toList()Ljava/util/ArrayList;

    .line 543
    .line 544
    .line 545
    move-result-object p2

    .line 546
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 547
    .line 548
    .line 549
    goto :goto_0

    .line 550
    :cond_1b
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;

    .line 551
    .line 552
    if-eqz v0, :cond_1c

    .line 553
    .line 554
    const/16 v0, 0x9c

    .line 555
    .line 556
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 557
    .line 558
    .line 559
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;

    .line 560
    .line 561
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;->toList()Ljava/util/ArrayList;

    .line 562
    .line 563
    .line 564
    move-result-object p2

    .line 565
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 566
    .line 567
    .line 568
    goto :goto_0

    .line 569
    :cond_1c
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;

    .line 570
    .line 571
    if-eqz v0, :cond_1d

    .line 572
    .line 573
    const/16 v0, 0x9d

    .line 574
    .line 575
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 576
    .line 577
    .line 578
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;

    .line 579
    .line 580
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->toList()Ljava/util/ArrayList;

    .line 581
    .line 582
    .line 583
    move-result-object p2

    .line 584
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 585
    .line 586
    .line 587
    goto :goto_0

    .line 588
    :cond_1d
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfilePigeon;

    .line 589
    .line 590
    if-eqz v0, :cond_1e

    .line 591
    .line 592
    const/16 v0, 0x9e

    .line 593
    .line 594
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 595
    .line 596
    .line 597
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfilePigeon;

    .line 598
    .line 599
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfilePigeon;->toList()Ljava/util/ArrayList;

    .line 600
    .line 601
    .line 602
    move-result-object p2

    .line 603
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 604
    .line 605
    .line 606
    goto :goto_0

    .line 607
    :cond_1e
    invoke-super {p0, p1, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 608
    .line 609
    .line 610
    :goto_0
    return-void
.end method
