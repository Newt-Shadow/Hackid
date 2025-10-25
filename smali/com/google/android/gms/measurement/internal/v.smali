.class public abstract Lcom/google/android/gms/measurement/internal/v;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Lcom/google/android/gms/measurement/internal/p5;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10

    .line 1
    if-eqz p0, :cond_8

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v3, "SQLITE_MASTER"

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    new-array v4, v2, [Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "name"

    .line 11
    .line 12
    aput-object v2, v4, v0

    .line 13
    .line 14
    const-string v5, "name=?"

    .line 15
    .line 16
    filled-new-array {p2}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    const/4 v7, 0x0

    .line 21
    const/4 v8, 0x0

    .line 22
    const/4 v9, 0x0

    .line 23
    move-object v2, p1

    .line 24
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 25
    .line 26
    .line 27
    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 29
    .line 30
    .line 31
    move-result v3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 32
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 33
    .line 34
    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catch_0
    move-exception v3

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto/16 :goto_4

    .line 42
    .line 43
    :catch_1
    move-exception v2

    .line 44
    move-object v3, v2

    .line 45
    move-object v2, v1

    .line 46
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    const-string v5, "Error querying for table"

    .line 51
    .line 52
    invoke-virtual {v4, v5, p2, v3}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 53
    .line 54
    .line 55
    if-eqz v2, :cond_0

    .line 56
    .line 57
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 58
    .line 59
    .line 60
    :cond_0
    :goto_1
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    :try_start_3
    const-string p3, "Table "

    .line 64
    .line 65
    const-string v2, " is missing required column: "

    .line 66
    .line 67
    const-string v3, "SELECT * FROM "

    .line 68
    .line 69
    const-string v4, " LIMIT 0"

    .line 70
    .line 71
    new-instance v5, Ljava/util/HashSet;

    .line 72
    .line 73
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    add-int/lit8 v6, v6, 0x16

    .line 81
    .line 82
    new-instance v7, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {p1, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 101
    .line 102
    .line 103
    move-result-object v1
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 104
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-static {v5, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 109
    .line 110
    .line 111
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 112
    .line 113
    .line 114
    const-string v1, ","

    .line 115
    .line 116
    invoke-virtual {p4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p4

    .line 120
    array-length v1, p4

    .line 121
    move v3, v0

    .line 122
    :goto_2
    if-ge v3, v1, :cond_3

    .line 123
    .line 124
    aget-object v4, p4, v3

    .line 125
    .line 126
    invoke-interface {v5, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    if-eqz v6, :cond_2

    .line 131
    .line 132
    add-int/lit8 v3, v3, 0x1

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_2
    new-instance p1, Landroid/database/sqlite/SQLiteException;

    .line 136
    .line 137
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 138
    .line 139
    .line 140
    move-result p4

    .line 141
    add-int/lit8 p4, p4, 0x23

    .line 142
    .line 143
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p5

    .line 147
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    .line 148
    .line 149
    .line 150
    move-result p5

    .line 151
    add-int/2addr p4, p5

    .line 152
    new-instance p5, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {p5, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p3

    .line 173
    invoke-direct {p1, p3}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p1

    .line 177
    :cond_3
    if-eqz p5, :cond_5

    .line 178
    .line 179
    :goto_3
    array-length p3, p5

    .line 180
    if-ge v0, p3, :cond_5

    .line 181
    .line 182
    aget-object p3, p5, v0

    .line 183
    .line 184
    invoke-interface {v5, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result p3

    .line 188
    if-nez p3, :cond_4

    .line 189
    .line 190
    add-int/lit8 p3, v0, 0x1

    .line 191
    .line 192
    aget-object p3, p5, p3

    .line 193
    .line 194
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    :cond_4
    add-int/lit8 v0, v0, 0x2

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_5
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    if-nez p1, :cond_6

    .line 205
    .line 206
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    const-string p3, "Table has extra columns. table, columns"

    .line 211
    .line 212
    const-string p4, ", "

    .line 213
    .line 214
    invoke-static {p4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p4

    .line 218
    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    :cond_6
    return-void

    .line 222
    :catchall_1
    move-exception p1

    .line 223
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 224
    .line 225
    .line 226
    throw p1
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 227
    :catch_2
    move-exception p1

    .line 228
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    const-string p3, "Failed to verify columns on table that was just created"

    .line 233
    .line 234
    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    throw p1

    .line 238
    :catchall_2
    move-exception p0

    .line 239
    move-object v1, v2

    .line 240
    :goto_4
    if-eqz v1, :cond_7

    .line 241
    .line 242
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 243
    .line 244
    .line 245
    :cond_7
    throw p0

    .line 246
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 247
    .line 248
    const-string p1, "Monitor must not be null"

    .line 249
    .line 250
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw p0
.end method

.method static b(Lcom/google/android/gms/measurement/internal/p5;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    new-instance v0, Ljava/io/File;

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/x0;->a()Lcom/google/android/gms/internal/measurement/y0;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget v1, Lcom/google/android/gms/internal/measurement/d1;->b:I

    .line 13
    .line 14
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-virtual {v0, p1, p1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "Failed to turn off database read permission"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {v0, p1, p1}, Ljava/io/File;->setWritable(ZZ)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v1, "Failed to turn off database write permission"

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    const/4 p1, 0x1

    .line 49
    invoke-virtual {v0, p1, p1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-string v2, "Failed to turn on database read permission for owner"

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-virtual {v0, p1, p1}, Ljava/io/File;->setWritable(ZZ)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_3

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const-string p1, "Failed to turn on database write permission for owner"

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    return-void

    .line 80
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 81
    .line 82
    const-string p1, "Monitor must not be null"

    .line 83
    .line 84
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p0
.end method
