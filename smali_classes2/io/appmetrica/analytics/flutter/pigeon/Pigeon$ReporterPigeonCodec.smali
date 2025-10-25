.class Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterPigeonCodec;
.super Lio/flutter/plugin/common/StandardMessageCodec;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/flutter/pigeon/Pigeon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReporterPigeonCodec"
.end annotation


# static fields
.field public static final INSTANCE:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterPigeonCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterPigeonCodec;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterPigeonCodec;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterPigeonCodec;->INSTANCE:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterPigeonCodec;

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
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon;

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
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon;

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
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;

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
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;

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
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;

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
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;

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
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;

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
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;

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
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;

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
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;

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
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;

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
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceOrderPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceOrderPigeon;

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
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;

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
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;

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
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;

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
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;

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
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    return-object p1

    .line 218
    nop

    .line 219
    :pswitch_data_0
    .packed-switch -0x80
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
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_0
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;

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
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;

    .line 31
    .line 32
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;->toList()Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :cond_1
    if-eqz v0, :cond_2

    .line 42
    .line 43
    const/16 v0, 0x82

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 46
    .line 47
    .line 48
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;

    .line 49
    .line 50
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;->toList()Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :cond_2
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    const/16 v0, 0x83

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 66
    .line 67
    .line 68
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;

    .line 69
    .line 70
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;->toList()Ljava/util/ArrayList;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_0

    .line 78
    .line 79
    :cond_3
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;

    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    const/16 v0, 0x84

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 86
    .line 87
    .line 88
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;

    .line 89
    .line 90
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->toList()Ljava/util/ArrayList;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_0

    .line 98
    .line 99
    :cond_4
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceOrderPigeon;

    .line 100
    .line 101
    if-eqz v0, :cond_5

    .line 102
    .line 103
    const/16 v0, 0x85

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 106
    .line 107
    .line 108
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceOrderPigeon;

    .line 109
    .line 110
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceOrderPigeon;->toList()Ljava/util/ArrayList;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    goto/16 :goto_0

    .line 118
    .line 119
    :cond_5
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;

    .line 120
    .line 121
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
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;

    .line 129
    .line 130
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;->toList()Ljava/util/ArrayList;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    goto/16 :goto_0

    .line 138
    .line 139
    :cond_6
    if-eqz v0, :cond_7

    .line 140
    .line 141
    const/16 v0, 0x87

    .line 142
    .line 143
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 144
    .line 145
    .line 146
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;

    .line 147
    .line 148
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;->toList()Ljava/util/ArrayList;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :cond_7
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;

    .line 158
    .line 159
    if-eqz v0, :cond_8

    .line 160
    .line 161
    const/16 v0, 0x88

    .line 162
    .line 163
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 164
    .line 165
    .line 166
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;

    .line 167
    .line 168
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->toList()Ljava/util/ArrayList;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :cond_8
    if-eqz v0, :cond_9

    .line 178
    .line 179
    const/16 v0, 0x89

    .line 180
    .line 181
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 182
    .line 183
    .line 184
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;

    .line 185
    .line 186
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->toList()Ljava/util/ArrayList;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :cond_9
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;

    .line 196
    .line 197
    if-eqz v0, :cond_a

    .line 198
    .line 199
    const/16 v0, 0x8a

    .line 200
    .line 201
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 202
    .line 203
    .line 204
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;

    .line 205
    .line 206
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;->toList()Ljava/util/ArrayList;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :cond_a
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;

    .line 216
    .line 217
    if-eqz v0, :cond_b

    .line 218
    .line 219
    const/16 v0, 0x8b

    .line 220
    .line 221
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 222
    .line 223
    .line 224
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;

    .line 225
    .line 226
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;->toList()Ljava/util/ArrayList;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    goto/16 :goto_0

    .line 234
    .line 235
    :cond_b
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;

    .line 236
    .line 237
    if-eqz v0, :cond_c

    .line 238
    .line 239
    const/16 v0, 0x8c

    .line 240
    .line 241
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 242
    .line 243
    .line 244
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;

    .line 245
    .line 246
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;->toList()Ljava/util/ArrayList;

    .line 247
    .line 248
    .line 249
    move-result-object p2

    .line 250
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    goto/16 :goto_0

    .line 254
    .line 255
    :cond_c
    if-eqz v0, :cond_d

    .line 256
    .line 257
    const/16 v0, 0x8d

    .line 258
    .line 259
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 260
    .line 261
    .line 262
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;

    .line 263
    .line 264
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;->toList()Ljava/util/ArrayList;

    .line 265
    .line 266
    .line 267
    move-result-object p2

    .line 268
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    goto :goto_0

    .line 272
    :cond_d
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;

    .line 273
    .line 274
    if-eqz v0, :cond_e

    .line 275
    .line 276
    const/16 v0, 0x8e

    .line 277
    .line 278
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 279
    .line 280
    .line 281
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;

    .line 282
    .line 283
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;->toList()Ljava/util/ArrayList;

    .line 284
    .line 285
    .line 286
    move-result-object p2

    .line 287
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    goto :goto_0

    .line 291
    :cond_e
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon;

    .line 292
    .line 293
    if-eqz v0, :cond_f

    .line 294
    .line 295
    const/16 v0, 0x8f

    .line 296
    .line 297
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 298
    .line 299
    .line 300
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon;

    .line 301
    .line 302
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon;->toList()Ljava/util/ArrayList;

    .line 303
    .line 304
    .line 305
    move-result-object p2

    .line 306
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    goto :goto_0

    .line 310
    :cond_f
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon;

    .line 311
    .line 312
    if-eqz v0, :cond_10

    .line 313
    .line 314
    const/16 v0, 0x90

    .line 315
    .line 316
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 317
    .line 318
    .line 319
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon;

    .line 320
    .line 321
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon;->toList()Ljava/util/ArrayList;

    .line 322
    .line 323
    .line 324
    move-result-object p2

    .line 325
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    goto :goto_0

    .line 329
    :cond_10
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;

    .line 330
    .line 331
    if-eqz v0, :cond_11

    .line 332
    .line 333
    const/16 v0, 0x91

    .line 334
    .line 335
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 336
    .line 337
    .line 338
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;

    .line 339
    .line 340
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->toList()Ljava/util/ArrayList;

    .line 341
    .line 342
    .line 343
    move-result-object p2

    .line 344
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    goto :goto_0

    .line 348
    :cond_11
    instance-of v0, p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfilePigeon;

    .line 349
    .line 350
    if-eqz v0, :cond_12

    .line 351
    .line 352
    const/16 v0, 0x92

    .line 353
    .line 354
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 355
    .line 356
    .line 357
    check-cast p2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfilePigeon;

    .line 358
    .line 359
    invoke-virtual {p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfilePigeon;->toList()Ljava/util/ArrayList;

    .line 360
    .line 361
    .line 362
    move-result-object p2

    .line 363
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    goto :goto_0

    .line 367
    :cond_12
    invoke-super {p0, p1, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 368
    .line 369
    .line 370
    :goto_0
    return-void
.end method
