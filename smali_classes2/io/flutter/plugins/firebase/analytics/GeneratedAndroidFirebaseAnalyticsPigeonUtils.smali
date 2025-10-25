.class final Lio/flutter/plugins/firebase/analytics/GeneratedAndroidFirebaseAnalyticsPigeonUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lio/flutter/plugins/firebase/analytics/GeneratedAndroidFirebaseAnalyticsPigeonUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/flutter/plugins/firebase/analytics/GeneratedAndroidFirebaseAnalyticsPigeonUtils;

    invoke-direct {v0}, Lio/flutter/plugins/firebase/analytics/GeneratedAndroidFirebaseAnalyticsPigeonUtils;-><init>()V

    sput-object v0, Lio/flutter/plugins/firebase/analytics/GeneratedAndroidFirebaseAnalyticsPigeonUtils;->INSTANCE:Lio/flutter/plugins/firebase/analytics/GeneratedAndroidFirebaseAnalyticsPigeonUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, [B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v0, p2, [B

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, [B

    .line 10
    .line 11
    check-cast p2, [B

    .line 12
    .line 13
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_0
    instance-of v0, p1, [I

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    instance-of v0, p2, [I

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    check-cast p1, [I

    .line 27
    .line 28
    check-cast p2, [I

    .line 29
    .line 30
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([I[I)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1

    .line 35
    :cond_1
    instance-of v0, p1, [J

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    instance-of v0, p2, [J

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    check-cast p1, [J

    .line 44
    .line 45
    check-cast p2, [J

    .line 46
    .line 47
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([J[J)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    return p1

    .line 52
    :cond_2
    instance-of v0, p1, [D

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    instance-of v0, p2, [D

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    check-cast p1, [D

    .line 61
    .line 62
    check-cast p2, [D

    .line 63
    .line 64
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([D[D)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    return p1

    .line 69
    :cond_3
    instance-of v0, p1, [Ljava/lang/Object;

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    const/4 v2, 0x1

    .line 73
    if-eqz v0, :cond_8

    .line 74
    .line 75
    instance-of v0, p2, [Ljava/lang/Object;

    .line 76
    .line 77
    if-eqz v0, :cond_8

    .line 78
    .line 79
    check-cast p1, [Ljava/lang/Object;

    .line 80
    .line 81
    array-length v0, p1

    .line 82
    check-cast p2, [Ljava/lang/Object;

    .line 83
    .line 84
    array-length v3, p2

    .line 85
    if-ne v0, v3, :cond_7

    .line 86
    .line 87
    invoke-static {p1}, Lyc/g;->x([Ljava/lang/Object;)Lod/c;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    instance-of v3, v0, Ljava/util/Collection;

    .line 92
    .line 93
    if-eqz v3, :cond_5

    .line 94
    .line 95
    move-object v3, v0

    .line 96
    check-cast v3, Ljava/util/Collection;

    .line 97
    .line 98
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-eqz v3, :cond_5

    .line 103
    .line 104
    :cond_4
    move p1, v2

    .line 105
    goto :goto_0

    .line 106
    :cond_5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_4

    .line 115
    .line 116
    move-object v3, v0

    .line 117
    check-cast v3, Lyc/b0;

    .line 118
    .line 119
    invoke-virtual {v3}, Lyc/b0;->b()I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    sget-object v4, Lio/flutter/plugins/firebase/analytics/GeneratedAndroidFirebaseAnalyticsPigeonUtils;->INSTANCE:Lio/flutter/plugins/firebase/analytics/GeneratedAndroidFirebaseAnalyticsPigeonUtils;

    .line 124
    .line 125
    aget-object v5, p1, v3

    .line 126
    .line 127
    aget-object v3, p2, v3

    .line 128
    .line 129
    invoke-virtual {v4, v5, v3}, Lio/flutter/plugins/firebase/analytics/GeneratedAndroidFirebaseAnalyticsPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-nez v3, :cond_6

    .line 134
    .line 135
    move p1, v1

    .line 136
    :goto_0
    if-eqz p1, :cond_7

    .line 137
    .line 138
    move v1, v2

    .line 139
    :cond_7
    return v1

    .line 140
    :cond_8
    instance-of v0, p1, Ljava/util/List;

    .line 141
    .line 142
    if-eqz v0, :cond_d

    .line 143
    .line 144
    instance-of v0, p2, Ljava/util/List;

    .line 145
    .line 146
    if-eqz v0, :cond_d

    .line 147
    .line 148
    move-object v0, p1

    .line 149
    check-cast v0, Ljava/util/List;

    .line 150
    .line 151
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    check-cast p2, Ljava/util/List;

    .line 156
    .line 157
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-ne v3, v4, :cond_c

    .line 162
    .line 163
    check-cast p1, Ljava/util/Collection;

    .line 164
    .line 165
    invoke-static {p1}, Lyc/m;->i(Ljava/util/Collection;)Lod/c;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    instance-of v3, p1, Ljava/util/Collection;

    .line 170
    .line 171
    if-eqz v3, :cond_a

    .line 172
    .line 173
    move-object v3, p1

    .line 174
    check-cast v3, Ljava/util/Collection;

    .line 175
    .line 176
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    if-eqz v3, :cond_a

    .line 181
    .line 182
    :cond_9
    move p1, v2

    .line 183
    goto :goto_1

    .line 184
    :cond_a
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-eqz v3, :cond_9

    .line 193
    .line 194
    move-object v3, p1

    .line 195
    check-cast v3, Lyc/b0;

    .line 196
    .line 197
    invoke-virtual {v3}, Lyc/b0;->b()I

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    sget-object v4, Lio/flutter/plugins/firebase/analytics/GeneratedAndroidFirebaseAnalyticsPigeonUtils;->INSTANCE:Lio/flutter/plugins/firebase/analytics/GeneratedAndroidFirebaseAnalyticsPigeonUtils;

    .line 202
    .line 203
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    invoke-virtual {v4, v5, v3}, Lio/flutter/plugins/firebase/analytics/GeneratedAndroidFirebaseAnalyticsPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    if-nez v3, :cond_b

    .line 216
    .line 217
    move p1, v1

    .line 218
    :goto_1
    if-eqz p1, :cond_c

    .line 219
    .line 220
    move v1, v2

    .line 221
    :cond_c
    return v1

    .line 222
    :cond_d
    instance-of v0, p1, Ljava/util/Map;

    .line 223
    .line 224
    if-eqz v0, :cond_13

    .line 225
    .line 226
    instance-of v0, p2, Ljava/util/Map;

    .line 227
    .line 228
    if-eqz v0, :cond_13

    .line 229
    .line 230
    check-cast p1, Ljava/util/Map;

    .line 231
    .line 232
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    check-cast p2, Ljava/util/Map;

    .line 237
    .line 238
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    if-ne v0, v3, :cond_12

    .line 243
    .line 244
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-eqz v0, :cond_f

    .line 249
    .line 250
    :cond_e
    move p1, v2

    .line 251
    goto :goto_3

    .line 252
    :cond_f
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    if-eqz v0, :cond_e

    .line 265
    .line 266
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    check-cast v0, Ljava/util/Map$Entry;

    .line 271
    .line 272
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v3

    .line 280
    if-eqz v3, :cond_11

    .line 281
    .line 282
    sget-object v3, Lio/flutter/plugins/firebase/analytics/GeneratedAndroidFirebaseAnalyticsPigeonUtils;->INSTANCE:Lio/flutter/plugins/firebase/analytics/GeneratedAndroidFirebaseAnalyticsPigeonUtils;

    .line 283
    .line 284
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-virtual {v3, v4, v0}, Lio/flutter/plugins/firebase/analytics/GeneratedAndroidFirebaseAnalyticsPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    if-eqz v0, :cond_11

    .line 301
    .line 302
    move v0, v2

    .line 303
    goto :goto_2

    .line 304
    :cond_11
    move v0, v1

    .line 305
    :goto_2
    if-nez v0, :cond_10

    .line 306
    .line 307
    move p1, v1

    .line 308
    :goto_3
    if-eqz p1, :cond_12

    .line 309
    .line 310
    move v1, v2

    .line 311
    :cond_12
    return v1

    .line 312
    :cond_13
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result p1

    .line 316
    return p1
.end method

.method public final wrapError(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "exception"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lio/flutter/plugins/firebase/analytics/FlutterError;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lio/flutter/plugins/firebase/analytics/FlutterError;

    .line 11
    .line 12
    invoke-virtual {p1}, Lio/flutter/plugins/firebase/analytics/FlutterError;->getCode()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lio/flutter/plugins/firebase/analytics/FlutterError;->getMessage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lio/flutter/plugins/firebase/analytics/FlutterError;->getDetails()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lyc/m;->k([Ljava/lang/Object;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v4, "Cause: "

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v2, ", Stacktrace: "

    .line 67
    .line 68
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    filled-new-array {v0, v1, p1}, [Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p1}, Lyc/m;->k([Ljava/lang/Object;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    :goto_0
    return-object p1
.end method

.method public final wrapResult(Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lyc/m;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
