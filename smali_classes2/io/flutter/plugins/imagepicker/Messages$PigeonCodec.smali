.class Lio/flutter/plugins/imagepicker/Messages$PigeonCodec;
.super Lio/flutter/plugin/common/StandardMessageCodec;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/imagepicker/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PigeonCodec"
.end annotation


# static fields
.field public static final INSTANCE:Lio/flutter/plugins/imagepicker/Messages$PigeonCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/flutter/plugins/imagepicker/Messages$PigeonCodec;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/imagepicker/Messages$PigeonCodec;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/flutter/plugins/imagepicker/Messages$PigeonCodec;->INSTANCE:Lio/flutter/plugins/imagepicker/Messages$PigeonCodec;

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
    invoke-static {p1}, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;

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
    invoke-static {p1}, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError;

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
    invoke-static {p1}, Lio/flutter/plugins/imagepicker/Messages$SourceSpecification;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/imagepicker/Messages$SourceSpecification;

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
    invoke-static {p1}, Lio/flutter/plugins/imagepicker/Messages$VideoSelectionOptions;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/imagepicker/Messages$VideoSelectionOptions;

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
    invoke-static {p1}, Lio/flutter/plugins/imagepicker/Messages$MediaSelectionOptions;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/imagepicker/Messages$MediaSelectionOptions;

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
    invoke-static {p1}, Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;

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
    invoke-static {p1}, Lio/flutter/plugins/imagepicker/Messages$GeneralOptions;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/imagepicker/Messages$GeneralOptions;

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
    if-nez p1, :cond_0

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    invoke-static {}, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalType;->values()[Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalType;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    check-cast p1, Ljava/lang/Long;

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    aget-object v0, p2, p1

    .line 105
    .line 106
    :goto_0
    return-object v0

    .line 107
    :pswitch_8
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-nez p1, :cond_1

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_1
    invoke-static {}, Lio/flutter/plugins/imagepicker/Messages$SourceType;->values()[Lio/flutter/plugins/imagepicker/Messages$SourceType;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    check-cast p1, Ljava/lang/Long;

    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    aget-object v0, p2, p1

    .line 125
    .line 126
    :goto_1
    return-object v0

    .line 127
    :pswitch_9
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    if-nez p1, :cond_2

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_2
    invoke-static {}, Lio/flutter/plugins/imagepicker/Messages$SourceCamera;->values()[Lio/flutter/plugins/imagepicker/Messages$SourceCamera;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    check-cast p1, Ljava/lang/Long;

    .line 139
    .line 140
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    aget-object v0, p2, p1

    .line 145
    .line 146
    :goto_2
    return-object v0

    .line 147
    :pswitch_data_0
    .packed-switch -0x7f
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
    instance-of v0, p2, Lio/flutter/plugins/imagepicker/Messages$SourceCamera;

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
    check-cast p2, Lio/flutter/plugins/imagepicker/Messages$SourceCamera;

    .line 15
    .line 16
    iget p2, p2, Lio/flutter/plugins/imagepicker/Messages$SourceCamera;->index:I

    .line 17
    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :goto_0
    invoke-virtual {p0, p1, v1}, Lio/flutter/plugins/imagepicker/Messages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_3

    .line 26
    .line 27
    :cond_1
    instance-of v0, p2, Lio/flutter/plugins/imagepicker/Messages$SourceType;

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
    check-cast p2, Lio/flutter/plugins/imagepicker/Messages$SourceType;

    .line 40
    .line 41
    iget p2, p2, Lio/flutter/plugins/imagepicker/Messages$SourceType;->index:I

    .line 42
    .line 43
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    :goto_1
    invoke-virtual {p0, p1, v1}, Lio/flutter/plugins/imagepicker/Messages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_3

    .line 51
    .line 52
    :cond_3
    instance-of v0, p2, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalType;

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
    check-cast p2, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalType;

    .line 65
    .line 66
    iget p2, p2, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalType;->index:I

    .line 67
    .line 68
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    :goto_2
    invoke-virtual {p0, p1, v1}, Lio/flutter/plugins/imagepicker/Messages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_3

    .line 76
    .line 77
    :cond_5
    instance-of v0, p2, Lio/flutter/plugins/imagepicker/Messages$GeneralOptions;

    .line 78
    .line 79
    if-eqz v0, :cond_6

    .line 80
    .line 81
    const/16 v0, 0x84

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 84
    .line 85
    .line 86
    check-cast p2, Lio/flutter/plugins/imagepicker/Messages$GeneralOptions;

    .line 87
    .line 88
    invoke-virtual {p2}, Lio/flutter/plugins/imagepicker/Messages$GeneralOptions;->toList()Ljava/util/ArrayList;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/imagepicker/Messages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_3

    .line 96
    .line 97
    :cond_6
    instance-of v0, p2, Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;

    .line 98
    .line 99
    if-eqz v0, :cond_7

    .line 100
    .line 101
    const/16 v0, 0x85

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 104
    .line 105
    .line 106
    check-cast p2, Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;

    .line 107
    .line 108
    invoke-virtual {p2}, Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;->toList()Ljava/util/ArrayList;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/imagepicker/Messages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_7
    instance-of v0, p2, Lio/flutter/plugins/imagepicker/Messages$MediaSelectionOptions;

    .line 117
    .line 118
    if-eqz v0, :cond_8

    .line 119
    .line 120
    const/16 v0, 0x86

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 123
    .line 124
    .line 125
    check-cast p2, Lio/flutter/plugins/imagepicker/Messages$MediaSelectionOptions;

    .line 126
    .line 127
    invoke-virtual {p2}, Lio/flutter/plugins/imagepicker/Messages$MediaSelectionOptions;->toList()Ljava/util/ArrayList;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/imagepicker/Messages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_8
    instance-of v0, p2, Lio/flutter/plugins/imagepicker/Messages$VideoSelectionOptions;

    .line 136
    .line 137
    if-eqz v0, :cond_9

    .line 138
    .line 139
    const/16 v0, 0x87

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 142
    .line 143
    .line 144
    check-cast p2, Lio/flutter/plugins/imagepicker/Messages$VideoSelectionOptions;

    .line 145
    .line 146
    invoke-virtual {p2}, Lio/flutter/plugins/imagepicker/Messages$VideoSelectionOptions;->toList()Ljava/util/ArrayList;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/imagepicker/Messages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_9
    instance-of v0, p2, Lio/flutter/plugins/imagepicker/Messages$SourceSpecification;

    .line 155
    .line 156
    if-eqz v0, :cond_a

    .line 157
    .line 158
    const/16 v0, 0x88

    .line 159
    .line 160
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 161
    .line 162
    .line 163
    check-cast p2, Lio/flutter/plugins/imagepicker/Messages$SourceSpecification;

    .line 164
    .line 165
    invoke-virtual {p2}, Lio/flutter/plugins/imagepicker/Messages$SourceSpecification;->toList()Ljava/util/ArrayList;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/imagepicker/Messages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_a
    instance-of v0, p2, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError;

    .line 174
    .line 175
    if-eqz v0, :cond_b

    .line 176
    .line 177
    const/16 v0, 0x89

    .line 178
    .line 179
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 180
    .line 181
    .line 182
    check-cast p2, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError;

    .line 183
    .line 184
    invoke-virtual {p2}, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError;->toList()Ljava/util/ArrayList;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/imagepicker/Messages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_b
    instance-of v0, p2, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;

    .line 193
    .line 194
    if-eqz v0, :cond_c

    .line 195
    .line 196
    const/16 v0, 0x8a

    .line 197
    .line 198
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 199
    .line 200
    .line 201
    check-cast p2, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;

    .line 202
    .line 203
    invoke-virtual {p2}, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;->toList()Ljava/util/ArrayList;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/imagepicker/Messages$PigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_c
    invoke-super {p0, p1, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    :goto_3
    return-void
.end method
