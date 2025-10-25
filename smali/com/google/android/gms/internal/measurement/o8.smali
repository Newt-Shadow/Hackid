.class public final Lcom/google/android/gms/internal/measurement/o8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/k8;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private b:Ljava/util/HashMap;

.field private final c:Ljava/util/HashMap;

.field private final d:Ljava/util/HashMap;

.field private final e:Ljava/util/HashMap;

.field private final f:Ljava/util/HashMap;

.field private g:Ljava/lang/Object;

.field private h:Z

.field private final i:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/o8;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/o8;->b:Ljava/util/HashMap;

    .line 13
    .line 14
    new-instance v1, Ljava/util/HashMap;

    .line 15
    .line 16
    const/16 v2, 0x10

    .line 17
    .line 18
    const/high16 v3, 0x3f800000    # 1.0f

    .line 19
    .line 20
    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/o8;->c:Ljava/util/HashMap;

    .line 24
    .line 25
    new-instance v1, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/o8;->d:Ljava/util/HashMap;

    .line 31
    .line 32
    new-instance v1, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/o8;->e:Ljava/util/HashMap;

    .line 38
    .line 39
    new-instance v1, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/o8;->f:Ljava/util/HashMap;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/o8;->g:Ljava/lang/Object;

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/o8;->h:Z

    .line 50
    .line 51
    new-array v0, v0, [Ljava/lang/String;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/o8;->i:[Ljava/lang/String;

    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    if-eqz p1, :cond_b

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/o8;->b:Ljava/util/HashMap;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/o8;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 14
    .line 15
    .line 16
    new-instance p3, Ljava/util/HashMap;

    .line 17
    .line 18
    const/16 v1, 0x10

    .line 19
    .line 20
    const/high16 v3, 0x3f800000    # 1.0f

    .line 21
    .line 22
    invoke-direct {p3, v1, v3}, Ljava/util/HashMap;-><init>(IF)V

    .line 23
    .line 24
    .line 25
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/o8;->b:Ljava/util/HashMap;

    .line 26
    .line 27
    new-instance p3, Ljava/lang/Object;

    .line 28
    .line 29
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/o8;->g:Ljava/lang/Object;

    .line 33
    .line 34
    sget-object p3, Lcom/google/android/gms/internal/measurement/j8;->a:Landroid/net/Uri;

    .line 35
    .line 36
    new-instance v1, Lcom/google/android/gms/internal/measurement/m8;

    .line 37
    .line 38
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/measurement/m8;-><init>(Lcom/google/android/gms/internal/measurement/o8;Landroid/os/Handler;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p3, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/o8;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    .line 47
    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 48
    .line 49
    .line 50
    move-result p3

    .line 51
    if-eqz p3, :cond_1

    .line 52
    .line 53
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/o8;->b:Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    .line 56
    .line 57
    .line 58
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/o8;->c:Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    .line 61
    .line 62
    .line 63
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/o8;->d:Ljava/util/HashMap;

    .line 64
    .line 65
    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    .line 66
    .line 67
    .line 68
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/o8;->e:Ljava/util/HashMap;

    .line 69
    .line 70
    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    .line 71
    .line 72
    .line 73
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/o8;->f:Ljava/util/HashMap;

    .line 74
    .line 75
    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    .line 76
    .line 77
    .line 78
    new-instance p3, Ljava/lang/Object;

    .line 79
    .line 80
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/o8;->g:Ljava/lang/Object;

    .line 84
    .line 85
    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/o8;->h:Z

    .line 86
    .line 87
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/o8;->g:Ljava/lang/Object;

    .line 88
    .line 89
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/o8;->b:Ljava/util/HashMap;

    .line 90
    .line 91
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_3

    .line 96
    .line 97
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/o8;->b:Ljava/util/HashMap;

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Ljava/lang/String;

    .line 104
    .line 105
    if-nez p1, :cond_2

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_2
    move-object v2, p1

    .line 109
    :goto_1
    monitor-exit p0

    .line 110
    return-object v2

    .line 111
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 112
    :try_start_1
    sget-object v4, Lcom/google/android/gms/internal/measurement/j8;->a:Landroid/net/Uri;

    .line 113
    .line 114
    invoke-virtual {p1, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 115
    .line 116
    .line 117
    move-result-object p1
    :try_end_1
    .catch Lcom/google/android/gms/internal/measurement/n8; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    if-eqz p1, :cond_a

    .line 119
    .line 120
    const/4 v5, 0x0

    .line 121
    const/4 v6, 0x0

    .line 122
    :try_start_2
    filled-new-array {p2}, [Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    const/4 v8, 0x0

    .line 127
    move-object v3, p1

    .line 128
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 129
    .line 130
    .line 131
    move-result-object v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 132
    if-eqz v1, :cond_8

    .line 133
    .line 134
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_4

    .line 139
    .line 140
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 144
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 145
    .line 146
    .line 147
    :try_start_5
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_5
    .catch Lcom/google/android/gms/internal/measurement/n8; {:try_start_5 .. :try_end_5} :catch_1

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_4
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 152
    .line 153
    .line 154
    :try_start_7
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_7
    .catch Lcom/google/android/gms/internal/measurement/n8; {:try_start_7 .. :try_end_7} :catch_1

    .line 155
    .line 156
    .line 157
    move-object v0, v2

    .line 158
    :goto_2
    if-eqz v0, :cond_5

    .line 159
    .line 160
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    if-eqz p1, :cond_5

    .line 165
    .line 166
    move-object v0, v2

    .line 167
    :cond_5
    monitor-enter p0

    .line 168
    :try_start_8
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/o8;->g:Ljava/lang/Object;

    .line 169
    .line 170
    if-ne p3, p1, :cond_6

    .line 171
    .line 172
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/o8;->b:Ljava/util/HashMap;

    .line 173
    .line 174
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    :cond_6
    monitor-exit p0

    .line 178
    if-eqz v0, :cond_7

    .line 179
    .line 180
    return-object v0

    .line 181
    :cond_7
    return-object v2

    .line 182
    :catchall_0
    move-exception p1

    .line 183
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 184
    throw p1

    .line 185
    :catchall_1
    move-exception p2

    .line 186
    goto :goto_3

    .line 187
    :cond_8
    :try_start_9
    new-instance p2, Lcom/google/android/gms/internal/measurement/n8;

    .line 188
    .line 189
    const-string p3, "ContentProvider query returned null cursor"

    .line 190
    .line 191
    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/measurement/n8;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    throw p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 195
    :goto_3
    if-eqz v1, :cond_9

    .line 196
    .line 197
    :try_start_a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 198
    .line 199
    .line 200
    goto :goto_4

    .line 201
    :catchall_2
    move-exception p3

    .line 202
    :try_start_b
    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 203
    .line 204
    .line 205
    :cond_9
    :goto_4
    throw p2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 206
    :catchall_3
    move-exception p2

    .line 207
    goto :goto_5

    .line 208
    :catch_0
    move-exception p2

    .line 209
    :try_start_c
    new-instance p3, Lcom/google/android/gms/internal/measurement/n8;

    .line 210
    .line 211
    const-string v0, "ContentProvider query failed"

    .line 212
    .line 213
    invoke-direct {p3, v0, p2}, Lcom/google/android/gms/internal/measurement/n8;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    .line 215
    .line 216
    throw p3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 217
    :goto_5
    :try_start_d
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->release()Z

    .line 218
    .line 219
    .line 220
    throw p2

    .line 221
    :cond_a
    new-instance p1, Lcom/google/android/gms/internal/measurement/n8;

    .line 222
    .line 223
    const-string p2, "Unable to acquire ContentProviderClient"

    .line 224
    .line 225
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/n8;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw p1
    :try_end_d
    .catch Lcom/google/android/gms/internal/measurement/n8; {:try_start_d .. :try_end_d} :catch_1

    .line 229
    :catch_1
    return-object v2

    .line 230
    :catchall_4
    move-exception p1

    .line 231
    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 232
    throw p1

    .line 233
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 234
    .line 235
    const-string p2, "ContentResolver needed with GservicesDelegateSupplier.init()"

    .line 236
    .line 237
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw p1
.end method

.method final synthetic b()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/o8;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method
