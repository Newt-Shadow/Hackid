.class public final Lio/appmetrica/analytics/screenshot/impl/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/JsonParser;


# instance fields
.field public final a:Lio/appmetrica/analytics/screenshot/impl/V;

.field public final b:Lio/appmetrica/analytics/screenshot/impl/U;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 1
    invoke-direct {p0, v0, v0, v1, v0}, Lio/appmetrica/analytics/screenshot/impl/I;-><init>(Lio/appmetrica/analytics/screenshot/impl/V;Lio/appmetrica/analytics/screenshot/impl/U;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/screenshot/impl/V;Lio/appmetrica/analytics/screenshot/impl/U;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/screenshot/impl/I;->a:Lio/appmetrica/analytics/screenshot/impl/V;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/screenshot/impl/I;->b:Lio/appmetrica/analytics/screenshot/impl/U;

    return-void
.end method

.method public synthetic constructor <init>(Lio/appmetrica/analytics/screenshot/impl/V;Lio/appmetrica/analytics/screenshot/impl/U;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 5
    new-instance p1, Lio/appmetrica/analytics/screenshot/impl/V;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/screenshot/impl/V;-><init>(Lio/appmetrica/analytics/screenshot/impl/g;Lio/appmetrica/analytics/screenshot/impl/Z;Lio/appmetrica/analytics/screenshot/impl/q;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 6
    new-instance p2, Lio/appmetrica/analytics/screenshot/impl/U;

    invoke-direct {p2}, Lio/appmetrica/analytics/screenshot/impl/U;-><init>()V

    .line 7
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/screenshot/impl/I;-><init>(Lio/appmetrica/analytics/screenshot/impl/V;Lio/appmetrica/analytics/screenshot/impl/U;)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lio/appmetrica/analytics/screenshot/impl/G;
    .locals 10

    .line 1
    sget-boolean v0, Lio/appmetrica/analytics/screenshot/impl/n;->a:Z

    .line 2
    .line 3
    const-string v1, "screenshot"

    .line 4
    .line 5
    invoke-static {p1, v1, v0}, Lio/appmetrica/analytics/coreutils/internal/parsing/RemoteConfigJsonUtils;->extractFeature(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v2, p0, Lio/appmetrica/analytics/screenshot/impl/I;->a:Lio/appmetrica/analytics/screenshot/impl/V;

    .line 10
    .line 11
    iget-object v3, p0, Lio/appmetrica/analytics/screenshot/impl/I;->b:Lio/appmetrica/analytics/screenshot/impl/U;

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    new-instance p1, Lio/appmetrica/analytics/screenshot/impl/N;

    .line 23
    .line 24
    invoke-direct {p1}, Lio/appmetrica/analytics/screenshot/impl/N;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lio/appmetrica/analytics/screenshot/impl/K;

    .line 28
    .line 29
    invoke-direct {v1}, Lio/appmetrica/analytics/screenshot/impl/K;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v1, p1, Lio/appmetrica/analytics/screenshot/impl/N;->a:Lio/appmetrica/analytics/screenshot/impl/K;

    .line 33
    .line 34
    new-instance v1, Lio/appmetrica/analytics/screenshot/impl/M;

    .line 35
    .line 36
    invoke-direct {v1}, Lio/appmetrica/analytics/screenshot/impl/M;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p1, Lio/appmetrica/analytics/screenshot/impl/N;->b:Lio/appmetrica/analytics/screenshot/impl/M;

    .line 40
    .line 41
    new-instance v1, Lio/appmetrica/analytics/screenshot/impl/L;

    .line 42
    .line 43
    invoke-direct {v1}, Lio/appmetrica/analytics/screenshot/impl/L;-><init>()V

    .line 44
    .line 45
    .line 46
    sget-object v3, Lio/appmetrica/analytics/screenshot/impl/n;->b:[Ljava/lang/String;

    .line 47
    .line 48
    iput-object v3, v1, Lio/appmetrica/analytics/screenshot/impl/L;->c:[Ljava/lang/String;

    .line 49
    .line 50
    iput-object v1, p1, Lio/appmetrica/analytics/screenshot/impl/N;->c:Lio/appmetrica/analytics/screenshot/impl/L;

    .line 51
    .line 52
    goto/16 :goto_5

    .line 53
    .line 54
    :cond_0
    new-instance v1, Lio/appmetrica/analytics/screenshot/impl/N;

    .line 55
    .line 56
    invoke-direct {v1}, Lio/appmetrica/analytics/screenshot/impl/N;-><init>()V

    .line 57
    .line 58
    .line 59
    iget-object v4, v3, Lio/appmetrica/analytics/screenshot/impl/U;->a:Lio/appmetrica/analytics/screenshot/impl/f;

    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    const-string v4, "api_captor_config"

    .line 65
    .line 66
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    const/4 v5, 0x0

    .line 71
    const-string v6, "enabled"

    .line 72
    .line 73
    if-nez v4, :cond_1

    .line 74
    .line 75
    move-object v7, v5

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    new-instance v7, Lio/appmetrica/analytics/screenshot/impl/K;

    .line 78
    .line 79
    invoke-direct {v7}, Lio/appmetrica/analytics/screenshot/impl/K;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-static {v4, v6}, Lio/appmetrica/analytics/coreutils/internal/parsing/JsonUtils;->optBooleanOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    if-eqz v4, :cond_2

    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    iput-boolean v4, v7, Lio/appmetrica/analytics/screenshot/impl/K;->a:Z

    .line 93
    .line 94
    :cond_2
    :goto_0
    if-eqz v7, :cond_3

    .line 95
    .line 96
    iput-object v7, v1, Lio/appmetrica/analytics/screenshot/impl/N;->a:Lio/appmetrica/analytics/screenshot/impl/K;

    .line 97
    .line 98
    :cond_3
    iget-object v4, v3, Lio/appmetrica/analytics/screenshot/impl/U;->b:Lio/appmetrica/analytics/screenshot/impl/Y;

    .line 99
    .line 100
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    const-string v4, "service_captor_config"

    .line 104
    .line 105
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    if-nez v4, :cond_4

    .line 110
    .line 111
    move-object v7, v5

    .line 112
    goto :goto_1

    .line 113
    :cond_4
    new-instance v7, Lio/appmetrica/analytics/screenshot/impl/M;

    .line 114
    .line 115
    invoke-direct {v7}, Lio/appmetrica/analytics/screenshot/impl/M;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-static {v4, v6}, Lio/appmetrica/analytics/coreutils/internal/parsing/JsonUtils;->optBooleanOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    if-eqz v8, :cond_5

    .line 123
    .line 124
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    iput-boolean v8, v7, Lio/appmetrica/analytics/screenshot/impl/M;->a:Z

    .line 129
    .line 130
    :cond_5
    const-string v8, "delay_seconds"

    .line 131
    .line 132
    invoke-static {v4, v8}, Lio/appmetrica/analytics/coreutils/internal/parsing/JsonUtils;->optLongOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    if-eqz v4, :cond_6

    .line 137
    .line 138
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 139
    .line 140
    .line 141
    move-result-wide v8

    .line 142
    iput-wide v8, v7, Lio/appmetrica/analytics/screenshot/impl/M;->b:J

    .line 143
    .line 144
    :cond_6
    :goto_1
    if-eqz v7, :cond_7

    .line 145
    .line 146
    iput-object v7, v1, Lio/appmetrica/analytics/screenshot/impl/N;->b:Lio/appmetrica/analytics/screenshot/impl/M;

    .line 147
    .line 148
    :cond_7
    iget-object v3, v3, Lio/appmetrica/analytics/screenshot/impl/U;->c:Lio/appmetrica/analytics/screenshot/impl/p;

    .line 149
    .line 150
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    const-string v3, "content_observer_captor_config"

    .line 154
    .line 155
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    if-nez p1, :cond_8

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_8
    new-instance v5, Lio/appmetrica/analytics/screenshot/impl/L;

    .line 163
    .line 164
    invoke-direct {v5}, Lio/appmetrica/analytics/screenshot/impl/L;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-static {p1, v6}, Lio/appmetrica/analytics/coreutils/internal/parsing/JsonUtils;->optBooleanOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    if-eqz v3, :cond_9

    .line 172
    .line 173
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    iput-boolean v3, v5, Lio/appmetrica/analytics/screenshot/impl/L;->a:Z

    .line 178
    .line 179
    :cond_9
    const-string v3, "media_store_column_names"

    .line 180
    .line 181
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    if-eqz v3, :cond_c

    .line 186
    .line 187
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    const/4 v6, 0x0

    .line 192
    invoke-static {v6, v4}, Lod/g;->k(II)Lod/c;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    new-instance v7, Ljava/util/ArrayList;

    .line 197
    .line 198
    const/16 v8, 0xa

    .line 199
    .line 200
    invoke-static {v4, v8}, Lyc/m;->r(Ljava/lang/Iterable;I)I

    .line 201
    .line 202
    .line 203
    move-result v8

    .line 204
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 205
    .line 206
    .line 207
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 212
    .line 213
    .line 214
    move-result v8

    .line 215
    if-eqz v8, :cond_a

    .line 216
    .line 217
    move-object v8, v4

    .line 218
    check-cast v8, Lyc/b0;

    .line 219
    .line 220
    invoke-virtual {v8}, Lyc/b0;->b()I

    .line 221
    .line 222
    .line 223
    move-result v8

    .line 224
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v8

    .line 228
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    goto :goto_2

    .line 232
    :cond_a
    new-array v3, v6, [Ljava/lang/String;

    .line 233
    .line 234
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    if-eqz v3, :cond_b

    .line 239
    .line 240
    check-cast v3, [Ljava/lang/String;

    .line 241
    .line 242
    iput-object v3, v5, Lio/appmetrica/analytics/screenshot/impl/L;->c:[Ljava/lang/String;

    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    .line 246
    .line 247
    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 248
    .line 249
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw p1

    .line 253
    :cond_c
    :goto_3
    const-string v3, "detect_window_seconds"

    .line 254
    .line 255
    invoke-static {p1, v3}, Lio/appmetrica/analytics/coreutils/internal/parsing/JsonUtils;->optLongOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    if-eqz p1, :cond_d

    .line 260
    .line 261
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 262
    .line 263
    .line 264
    move-result-wide v3

    .line 265
    iput-wide v3, v5, Lio/appmetrica/analytics/screenshot/impl/L;->b:J

    .line 266
    .line 267
    :cond_d
    :goto_4
    if-eqz v5, :cond_e

    .line 268
    .line 269
    iput-object v5, v1, Lio/appmetrica/analytics/screenshot/impl/N;->c:Lio/appmetrica/analytics/screenshot/impl/L;

    .line 270
    .line 271
    :cond_e
    move-object p1, v1

    .line 272
    :goto_5
    invoke-virtual {v2, p1}, Lio/appmetrica/analytics/screenshot/impl/V;->a(Lio/appmetrica/analytics/screenshot/impl/N;)Lio/appmetrica/analytics/screenshot/impl/T;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    new-instance v1, Lio/appmetrica/analytics/screenshot/impl/G;

    .line 277
    .line 278
    invoke-direct {v1, v0, p1}, Lio/appmetrica/analytics/screenshot/impl/G;-><init>(ZLio/appmetrica/analytics/screenshot/impl/T;)V

    .line 279
    .line 280
    .line 281
    return-object v1
.end method

.method public final b(Lorg/json/JSONObject;)Lio/appmetrica/analytics/screenshot/impl/G;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/appmetrica/analytics/coreapi/internal/data/JsonParser$DefaultImpls;->parseOrNull(Lio/appmetrica/analytics/coreapi/internal/data/JsonParser;Lorg/json/JSONObject;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lio/appmetrica/analytics/screenshot/impl/G;

    .line 6
    .line 7
    return-object p1
.end method

.method public final bridge synthetic parse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/screenshot/impl/I;->a(Lorg/json/JSONObject;)Lio/appmetrica/analytics/screenshot/impl/G;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final parseOrNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lio/appmetrica/analytics/coreapi/internal/data/JsonParser$DefaultImpls;->parseOrNull(Lio/appmetrica/analytics/coreapi/internal/data/JsonParser;Lorg/json/JSONObject;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lio/appmetrica/analytics/screenshot/impl/G;

    .line 8
    .line 9
    return-object p1
.end method
