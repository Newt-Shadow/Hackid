.class public final Lcom/google/android/gms/measurement/internal/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:J

.field final synthetic c:Lcom/google/android/gms/measurement/internal/u;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/u;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/s;->c:Lcom/google/android/gms/measurement/internal/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/s;->a:Ljava/lang/String;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/s;->b:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/internal/u;Ljava/lang/String;J)V
    .locals 2

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/s;->c:Lcom/google/android/gms/measurement/internal/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p2}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/s;->a:Ljava/lang/String;

    .line 5
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    const-string p3, "select rowid from raw_events where app_id = ? and timestamp < ? order by rowid desc limit 1"

    const-wide/16 v0, -0x1

    .line 6
    invoke-virtual {p1, p3, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/u;->b0(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/s;->b:J

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    new-instance v2, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/s;->a:Ljava/lang/String;

    .line 9
    .line 10
    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/s;->b:J

    .line 11
    .line 12
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    filled-new-array {v0, v3}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v8

    .line 20
    const-string v7, "app_id = ? and rowid > ?"

    .line 21
    .line 22
    const-string v12, "1000"

    .line 23
    .line 24
    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/s;->c:Lcom/google/android/gms/measurement/internal/u;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const-string v5, "raw_events"

    .line 31
    .line 32
    const/4 v0, 0x6

    .line 33
    new-array v6, v0, [Ljava/lang/String;

    .line 34
    .line 35
    const-string v0, "rowid"

    .line 36
    .line 37
    const/4 v13, 0x0

    .line 38
    aput-object v0, v6, v13

    .line 39
    .line 40
    const-string v0, "name"

    .line 41
    .line 42
    const/4 v14, 0x1

    .line 43
    aput-object v0, v6, v14

    .line 44
    .line 45
    const-string v0, "timestamp"

    .line 46
    .line 47
    const/4 v15, 0x2

    .line 48
    aput-object v0, v6, v15

    .line 49
    .line 50
    const-string v0, "metadata_fingerprint"

    .line 51
    .line 52
    const/4 v11, 0x3

    .line 53
    aput-object v0, v6, v11

    .line 54
    .line 55
    const-string v0, "data"

    .line 56
    .line 57
    const/4 v10, 0x4

    .line 58
    aput-object v0, v6, v10

    .line 59
    .line 60
    const-string v0, "realtime"

    .line 61
    .line 62
    const/4 v9, 0x5

    .line 63
    aput-object v0, v6, v9

    .line 64
    .line 65
    const-string v0, "rowid"

    .line 66
    .line 67
    const/16 v16, 0x0

    .line 68
    .line 69
    const/16 v17, 0x0

    .line 70
    .line 71
    move v3, v9

    .line 72
    move-object/from16 v9, v16

    .line 73
    .line 74
    move v15, v10

    .line 75
    move-object/from16 v10, v17

    .line 76
    .line 77
    move v14, v11

    .line 78
    move-object v11, v0

    .line 79
    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 80
    .line 81
    .line 82
    move-result-object v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 83
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_4

    .line 88
    .line 89
    :goto_0
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getLong(I)J

    .line 90
    .line 91
    .line 92
    move-result-wide v6

    .line 93
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getLong(I)J

    .line 94
    .line 95
    .line 96
    move-result-wide v8

    .line 97
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 98
    .line 99
    .line 100
    move-result-wide v10

    .line 101
    const-wide/16 v18, 0x1

    .line 102
    .line 103
    cmp-long v0, v10, v18

    .line 104
    .line 105
    if-nez v0, :cond_0

    .line 106
    .line 107
    const/4 v10, 0x1

    .line 108
    goto :goto_1

    .line 109
    :cond_0
    move v10, v13

    .line 110
    :goto_1
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getBlob(I)[B

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iget-wide v11, v1, Lcom/google/android/gms/measurement/internal/s;->b:J

    .line 115
    .line 116
    cmp-long v5, v6, v11

    .line 117
    .line 118
    if-lez v5, :cond_1

    .line 119
    .line 120
    iput-wide v6, v1, Lcom/google/android/gms/measurement/internal/s;->b:J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    .line 122
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/t6;->M()Lcom/google/android/gms/internal/measurement/s6;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-static {v5, v0}, Lcom/google/android/gms/measurement/internal/td;->W(Lcom/google/android/gms/internal/measurement/hc;[B)Lcom/google/android/gms/internal/measurement/hc;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Lcom/google/android/gms/internal/measurement/s6;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    .line 132
    const/4 v12, 0x1

    .line 133
    :try_start_3
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    if-nez v5, :cond_2

    .line 138
    .line 139
    const-string v5, ""

    .line 140
    .line 141
    :cond_2
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/measurement/s6;->E(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/s6;

    .line 142
    .line 143
    .line 144
    const/4 v11, 0x2

    .line 145
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 146
    .line 147
    .line 148
    move-result-wide v12

    .line 149
    invoke-virtual {v0, v12, v13}, Lcom/google/android/gms/internal/measurement/s6;->H(J)Lcom/google/android/gms/internal/measurement/s6;

    .line 150
    .line 151
    .line 152
    new-instance v12, Lcom/google/android/gms/measurement/internal/r;

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fb;->p()Lcom/google/android/gms/internal/measurement/hb;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Lcom/google/android/gms/internal/measurement/t6;

    .line 159
    .line 160
    move-object v5, v12

    .line 161
    move v13, v11

    .line 162
    move-object v11, v0

    .line 163
    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/r;-><init>(JJZLcom/google/android/gms/internal/measurement/t6;)V

    .line 164
    .line 165
    .line 166
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :catch_0
    move-exception v0

    .line 171
    const/4 v13, 0x2

    .line 172
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/s;->c:Lcom/google/android/gms/measurement/internal/u;

    .line 173
    .line 174
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 175
    .line 176
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    const-string v6, "Data loss. Failed to merge raw event. appId"

    .line 185
    .line 186
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/s;->a:Ljava/lang/String;

    .line 187
    .line 188
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    invoke-virtual {v5, v6, v7, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-nez v0, :cond_3

    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_3
    const/4 v13, 0x0

    .line 203
    goto :goto_0

    .line 204
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 205
    .line 206
    .line 207
    move-result-object v2
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 208
    goto :goto_4

    .line 209
    :catchall_0
    move-exception v0

    .line 210
    move-object v3, v4

    .line 211
    goto :goto_5

    .line 212
    :catch_1
    move-exception v0

    .line 213
    move-object v3, v4

    .line 214
    goto :goto_3

    .line 215
    :catchall_1
    move-exception v0

    .line 216
    const/4 v3, 0x0

    .line 217
    goto :goto_5

    .line 218
    :catch_2
    move-exception v0

    .line 219
    const/4 v3, 0x0

    .line 220
    :goto_3
    :try_start_4
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/s;->c:Lcom/google/android/gms/measurement/internal/u;

    .line 221
    .line 222
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 223
    .line 224
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    const-string v5, "Data loss. Error querying raw events batch. appId"

    .line 233
    .line 234
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/s;->a:Ljava/lang/String;

    .line 235
    .line 236
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    invoke-virtual {v4, v5, v6, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 241
    .line 242
    .line 243
    move-object v4, v3

    .line 244
    :goto_4
    if-eqz v4, :cond_5

    .line 245
    .line 246
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 247
    .line 248
    .line 249
    :cond_5
    return-object v2

    .line 250
    :catchall_2
    move-exception v0

    .line 251
    :goto_5
    if-eqz v3, :cond_6

    .line 252
    .line 253
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 254
    .line 255
    .line 256
    :cond_6
    throw v0
.end method
