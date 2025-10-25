.class public final Lio/appmetrica/analytics/impl/T9;
.super Lio/appmetrica/analytics/impl/Pg;
.source "SourceFile"


# instance fields
.field public final b:Lio/appmetrica/analytics/impl/U9;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Pg;-><init>(Lio/appmetrica/analytics/impl/o5;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/appmetrica/analytics/impl/U9;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2}, Lio/appmetrica/analytics/impl/U9;-><init>(Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/appmetrica/analytics/impl/T9;->b:Lio/appmetrica/analytics/impl/U9;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/e6;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/T9;->b:Lio/appmetrica/analytics/impl/U9;

    .line 2
    .line 3
    iget-object v1, v0, Lio/appmetrica/analytics/impl/U9;->a:Lio/appmetrica/analytics/impl/o5;

    .line 4
    .line 5
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/o5;->s()Lio/appmetrica/analytics/impl/Ql;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v1, v1, Lio/appmetrica/analytics/impl/Ql;->C:Lio/appmetrica/analytics/impl/N9;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-wide v1, v1, Lio/appmetrica/analytics/impl/N9;->a:J

    .line 14
    .line 15
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    const/4 v2, 0x1

    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v1, :cond_5

    .line 24
    .line 25
    iget-object v4, v0, Lio/appmetrica/analytics/impl/U9;->a:Lio/appmetrica/analytics/impl/o5;

    .line 26
    .line 27
    iget-object v4, v4, Lio/appmetrica/analytics/impl/o5;->t:Lio/appmetrica/analytics/impl/do;

    .line 28
    .line 29
    monitor-enter v4

    .line 30
    :try_start_0
    iget-object v5, v4, Lio/appmetrica/analytics/impl/do;->a:Lio/appmetrica/analytics/impl/eo;

    .line 31
    .line 32
    invoke-virtual {v5}, Lio/appmetrica/analytics/impl/eo;->a()Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    const-string v6, "external_attribution_window_start"

    .line 37
    .line 38
    const-wide/16 v7, -0x1

    .line 39
    .line 40
    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 41
    .line 42
    .line 43
    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 44
    monitor-exit v4

    .line 45
    const-wide/16 v7, 0x0

    .line 46
    .line 47
    cmp-long v4, v5, v7

    .line 48
    .line 49
    if-gez v4, :cond_1

    .line 50
    .line 51
    iget-object v4, v0, Lio/appmetrica/analytics/impl/U9;->b:Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;

    .line 52
    .line 53
    invoke-interface {v4}, Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;->currentTimeMillis()J

    .line 54
    .line 55
    .line 56
    move-result-wide v5

    .line 57
    iget-object v4, v0, Lio/appmetrica/analytics/impl/U9;->a:Lio/appmetrica/analytics/impl/o5;

    .line 58
    .line 59
    iget-object v4, v4, Lio/appmetrica/analytics/impl/o5;->t:Lio/appmetrica/analytics/impl/do;

    .line 60
    .line 61
    invoke-virtual {v4, v5, v6}, Lio/appmetrica/analytics/impl/do;->a(J)V

    .line 62
    .line 63
    .line 64
    :cond_1
    iget-object v0, v0, Lio/appmetrica/analytics/impl/U9;->b:Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;

    .line 65
    .line 66
    invoke-interface {v0}, Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;->currentTimeMillis()J

    .line 67
    .line 68
    .line 69
    move-result-wide v7

    .line 70
    sub-long/2addr v7, v5

    .line 71
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 72
    .line 73
    .line 74
    move-result-wide v0

    .line 75
    cmp-long v0, v7, v0

    .line 76
    .line 77
    if-lez v0, :cond_2

    .line 78
    .line 79
    goto/16 :goto_2

    .line 80
    .line 81
    :cond_2
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/e6;->getValueBytes()[B

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    new-instance v0, Lio/appmetrica/analytics/impl/M9;

    .line 86
    .line 87
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/M9;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-static {v0, p1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->mergeFrom(Lio/appmetrica/analytics/protobuf/nano/MessageNano;[B)Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Lio/appmetrica/analytics/impl/M9;

    .line 95
    .line 96
    iget v0, p1, Lio/appmetrica/analytics/impl/M9;->a:I

    .line 97
    .line 98
    new-instance v1, Ljava/lang/String;

    .line 99
    .line 100
    iget-object p1, p1, Lio/appmetrica/analytics/impl/M9;->b:[B

    .line 101
    .line 102
    sget-object v4, Lrd/d;->b:Ljava/nio/charset/Charset;

    .line 103
    .line 104
    invoke-direct {v1, p1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lio/appmetrica/analytics/impl/T9;->b:Lio/appmetrica/analytics/impl/U9;

    .line 108
    .line 109
    iget-object p1, p1, Lio/appmetrica/analytics/impl/U9;->a:Lio/appmetrica/analytics/impl/o5;

    .line 110
    .line 111
    iget-object p1, p1, Lio/appmetrica/analytics/impl/o5;->c:Lio/appmetrica/analytics/impl/Ue;

    .line 112
    .line 113
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Ue;->j()Ljava/util/Map;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    check-cast p1, Ljava/lang/String;

    .line 126
    .line 127
    if-eqz p1, :cond_4

    .line 128
    .line 129
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    .line 130
    .line 131
    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    new-instance v5, Lorg/json/JSONObject;

    .line 135
    .line 136
    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-static {v4, v5}, Lio/appmetrica/analytics/coreutils/internal/parsing/JsonUtils;->isEqualTo(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    .line 140
    .line 141
    .line 142
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    xor-int/2addr p1, v2

    .line 144
    if-eqz p1, :cond_3

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_3
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Pg;->a:Lio/appmetrica/analytics/impl/o5;

    .line 148
    .line 149
    iget-object p1, p1, Lio/appmetrica/analytics/impl/o5;->m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 150
    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string v5, "Ignoring attribution of type `"

    .line 154
    .line 155
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-static {v0}, Lio/appmetrica/analytics/impl/W9;->a(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v0, "` with value `"

    .line 166
    .line 167
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v0, "` since it is not new"

    .line 174
    .line 175
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    new-array v1, v3, [Ljava/lang/Object;

    .line 183
    .line 184
    invoke-virtual {p1, v0, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    return v2

    .line 188
    :catchall_0
    :cond_4
    :goto_1
    iget-object p1, p0, Lio/appmetrica/analytics/impl/T9;->b:Lio/appmetrica/analytics/impl/U9;

    .line 189
    .line 190
    iget-object v2, p1, Lio/appmetrica/analytics/impl/U9;->a:Lio/appmetrica/analytics/impl/o5;

    .line 191
    .line 192
    iget-object v2, v2, Lio/appmetrica/analytics/impl/o5;->c:Lio/appmetrica/analytics/impl/Ue;

    .line 193
    .line 194
    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/Ue;->j()Ljava/util/Map;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    iget-object p1, p1, Lio/appmetrica/analytics/impl/U9;->a:Lio/appmetrica/analytics/impl/o5;

    .line 206
    .line 207
    iget-object p1, p1, Lio/appmetrica/analytics/impl/o5;->c:Lio/appmetrica/analytics/impl/Ue;

    .line 208
    .line 209
    invoke-virtual {p1, v2}, Lio/appmetrica/analytics/impl/Ue;->a(Ljava/util/Map;)V

    .line 210
    .line 211
    .line 212
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Pg;->a:Lio/appmetrica/analytics/impl/o5;

    .line 213
    .line 214
    iget-object p1, p1, Lio/appmetrica/analytics/impl/o5;->m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 215
    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    const-string v2, "Handling attribution of type `"

    .line 219
    .line 220
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-static {v0}, Lio/appmetrica/analytics/impl/W9;->a(I)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const/16 v0, 0x60

    .line 231
    .line 232
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    new-array v1, v3, [Ljava/lang/Object;

    .line 240
    .line 241
    invoke-virtual {p1, v0, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    return v3

    .line 245
    :catchall_1
    move-exception p1

    .line 246
    monitor-exit v4

    .line 247
    throw p1

    .line 248
    :cond_5
    :goto_2
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Pg;->a:Lio/appmetrica/analytics/impl/o5;

    .line 249
    .line 250
    iget-object p1, p1, Lio/appmetrica/analytics/impl/o5;->m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 251
    .line 252
    new-array v0, v3, [Ljava/lang/Object;

    .line 253
    .line 254
    const-string v1, "Ignoring attribution since out of collecting interval"

    .line 255
    .line 256
    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    return v2
.end method
