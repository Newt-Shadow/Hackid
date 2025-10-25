.class public final Lcom/google/android/gms/measurement/internal/w9;
.super Lcom/google/android/gms/measurement/internal/e5;
.source "SourceFile"


# instance fields
.field protected c:Lcom/google/android/gms/measurement/internal/k9;

.field private d:Li6/w;

.field private final e:Ljava/util/Set;

.field private f:Z

.field private final g:Ljava/util/concurrent/atomic/AtomicReference;

.field private final h:Ljava/lang/Object;

.field private i:Z

.field private j:I

.field private k:Lcom/google/android/gms/measurement/internal/x;

.field private l:Lcom/google/android/gms/measurement/internal/x;

.field private m:Ljava/util/PriorityQueue;

.field private n:Z

.field private o:Lcom/google/android/gms/measurement/internal/d8;

.field private final p:Ljava/util/concurrent/atomic/AtomicLong;

.field private q:J

.field final r:Lcom/google/android/gms/measurement/internal/ge;

.field protected s:Z

.field private t:Lcom/google/android/gms/measurement/internal/x;

.field private u:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private v:Lcom/google/android/gms/measurement/internal/x;

.field private final w:Lcom/google/android/gms/measurement/internal/xd;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/internal/w6;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/e5;-><init>(Lcom/google/android/gms/measurement/internal/w6;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/w9;->e:Ljava/util/Set;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/w9;->h:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/w9;->i:Z

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iput v0, p0, Lcom/google/android/gms/measurement/internal/w9;->j:I

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/w9;->s:Z

    .line 25
    .line 26
    new-instance v0, Lcom/google/android/gms/measurement/internal/a9;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/a9;-><init>(Lcom/google/android/gms/measurement/internal/w9;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/w9;->w:Lcom/google/android/gms/measurement/internal/xd;

    .line 32
    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/w9;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 39
    .line 40
    sget-object v0, Lcom/google/android/gms/measurement/internal/d8;->c:Lcom/google/android/gms/measurement/internal/d8;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/w9;->o:Lcom/google/android/gms/measurement/internal/d8;

    .line 43
    .line 44
    const-wide/16 v0, -0x1

    .line 45
    .line 46
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/w9;->q:J

    .line 47
    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 49
    .line 50
    const-wide/16 v1, 0x0

    .line 51
    .line 52
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/w9;->p:Ljava/util/concurrent/atomic/AtomicLong;

    .line 56
    .line 57
    new-instance v0, Lcom/google/android/gms/measurement/internal/ge;

    .line 58
    .line 59
    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/ge;-><init>(Lcom/google/android/gms/measurement/internal/w6;)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/w9;->r:Lcom/google/android/gms/measurement/internal/ge;

    .line 63
    .line 64
    return-void
.end method

.method private final e0(Lcom/google/android/gms/measurement/internal/wc;)Li6/c0;
    .locals 10

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URI;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/wc;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    .line 9
    .line 10
    .line 11
    move-result-object v5
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->L()Lcom/google/android/gms/measurement/internal/f5;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f5;->s()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/wc;->a:J

    .line 38
    .line 39
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/wc;->c:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v7, p1, Lcom/google/android/gms/measurement/internal/wc;->b:[B

    .line 46
    .line 47
    array-length v7, v7

    .line 48
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    const-string v8, "[sgtm] Uploading data from app. row_id, url, uncompressed size"

    .line 53
    .line 54
    invoke-virtual {v2, v8, v3, v6, v7}, Lcom/google/android/gms/measurement/internal/n5;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/wc;->g:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_0

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/wc;->g:Ljava/lang/String;

    .line 74
    .line 75
    const-string v7, "[sgtm] Uploading data from app. row_id"

    .line 76
    .line 77
    invoke-virtual {v2, v7, v3, v6}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    .line 81
    .line 82
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 83
    .line 84
    .line 85
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/wc;->d:Landroid/os/Bundle;

    .line 86
    .line 87
    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-eqz v6, :cond_2

    .line 100
    .line 101
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    check-cast v6, Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    if-nez v9, :cond_1

    .line 116
    .line 117
    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->F()Lcom/google/android/gms/measurement/internal/aa;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/wc;->b:[B

    .line 126
    .line 127
    new-instance v8, Lcom/google/android/gms/measurement/internal/l9;

    .line 128
    .line 129
    invoke-direct {v8, p0, v0, p1}, Lcom/google/android/gms/measurement/internal/l9;-><init>(Lcom/google/android/gms/measurement/internal/w9;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/wc;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/a8;->l()V

    .line 133
    .line 134
    .line 135
    invoke-static {v5}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    invoke-static {v6}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    invoke-static {v8}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    iget-object p1, v3, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    new-instance v9, Lcom/google/android/gms/measurement/internal/z9;

    .line 151
    .line 152
    move-object v2, v9

    .line 153
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/z9;-><init>(Lcom/google/android/gms/measurement/internal/aa;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/x9;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v9}, Lcom/google/android/gms/measurement/internal/s6;->w(Ljava/lang/Runnable;)V

    .line 157
    .line 158
    .line 159
    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 170
    .line 171
    .line 172
    move-result-wide v1

    .line 173
    const-wide/32 v3, 0xea60

    .line 174
    .line 175
    .line 176
    add-long/2addr v1, v3

    .line 177
    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 178
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    if-nez v5, :cond_3

    .line 183
    .line 184
    const-wide/16 v5, 0x0

    .line 185
    .line 186
    cmp-long v5, v3, v5

    .line 187
    .line 188
    if-lez v5, :cond_3

    .line 189
    .line 190
    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-interface {v3}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 198
    .line 199
    .line 200
    move-result-wide v3

    .line 201
    sub-long v3, v1, v3

    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_3
    monitor-exit v0

    .line 205
    goto :goto_2

    .line 206
    :catchall_0
    move-exception p1

    .line 207
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 209
    :catch_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 210
    .line 211
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    const-string v1, "[sgtm] Interrupted waiting for uploading batch"

    .line 220
    .line 221
    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    :goto_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    if-nez p1, :cond_4

    .line 229
    .line 230
    sget-object p1, Li6/c0;->b:Li6/c0;

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    check-cast p1, Li6/c0;

    .line 238
    .line 239
    :goto_3
    return-object p1

    .line 240
    :catch_1
    move-exception v0

    .line 241
    goto :goto_4

    .line 242
    :catch_2
    move-exception v0

    .line 243
    :goto_4
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 244
    .line 245
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/wc;->c:Ljava/lang/String;

    .line 254
    .line 255
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/wc;->a:J

    .line 256
    .line 257
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    const-string v3, "[sgtm] Bad upload url for row_id"

    .line 262
    .line 263
    invoke-virtual {v1, v3, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/n5;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    sget-object p1, Li6/c0;->d:Li6/c0;

    .line 267
    .line 268
    return-object p1
.end method

.method private final f0(Ljava/lang/Boolean;Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->v()Lcom/google/android/gms/measurement/internal/n5;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "Setting app measurement enabled (FE)"

    .line 18
    .line 19
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/d6;->s(Ljava/lang/Boolean;)V

    .line 27
    .line 28
    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/d6;->p()Landroid/content/SharedPreferences;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    const-string v0, "measurement_enabled_from_api"

    .line 49
    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    invoke-interface {p2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 61
    .line 62
    .line 63
    :goto_0
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 64
    .line 65
    .line 66
    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 67
    .line 68
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/w6;->j()Z

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    if-nez p2, :cond_3

    .line 73
    .line 74
    if-eqz p1, :cond_2

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_2

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    return-void

    .line 84
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/w9;->g0()V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method private final g0()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d6;->n:Lcom/google/android/gms/measurement/internal/c6;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c6;->a()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    const-string v2, "unset"

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v6

    .line 34
    const-string v3, "app"

    .line 35
    .line 36
    const-string v4, "_npa"

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    move-object v2, p0

    .line 40
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/w9;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    const-string v2, "true"

    .line 45
    .line 46
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const/4 v2, 0x1

    .line 51
    if-eq v2, v1, :cond_1

    .line 52
    .line 53
    const-wide/16 v1, 0x0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const-wide/16 v1, 0x1

    .line 57
    .line 58
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 67
    .line 68
    .line 69
    move-result-wide v7

    .line 70
    const-string v4, "app"

    .line 71
    .line 72
    const-string v5, "_npa"

    .line 73
    .line 74
    move-object v3, p0

    .line 75
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/w9;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 76
    .line 77
    .line 78
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->g()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/w9;->s:Z

    .line 87
    .line 88
    if-eqz v1, :cond_3

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->v()Lcom/google/android/gms/measurement/internal/n5;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    const-string v2, "Recording app launch after enabling measurement for the first time (FE)"

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w9;->H()V

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->z()Lcom/google/android/gms/measurement/internal/mc;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/mc;->e:Lcom/google/android/gms/measurement/internal/lc;

    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/lc;->a()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    new-instance v1, Lcom/google/android/gms/measurement/internal/m8;

    .line 122
    .line 123
    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/m8;-><init>(Lcom/google/android/gms/measurement/internal/w9;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/s6;->t(Ljava/lang/Runnable;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->v()Lcom/google/android/gms/measurement/internal/n5;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    const-string v1, "Updating Scion state (FE)"

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->J()Lcom/google/android/gms/measurement/internal/vb;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/vb;->X()V

    .line 150
    .line 151
    .line 152
    return-void
.end method


# virtual methods
.method final A(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v8, Lcom/google/android/gms/measurement/internal/r8;

    .line 8
    .line 9
    move-object v1, v8

    .line 10
    move-object v2, p0

    .line 11
    move-object v3, p1

    .line 12
    move-object v4, p2

    .line 13
    move-object v5, p5

    .line 14
    move-wide v6, p3

    .line 15
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/r8;-><init>(Lcom/google/android/gms/measurement/internal/w9;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/s6;->t(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method final B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 9

    .line 1
    invoke-static {p1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 11
    .line 12
    .line 13
    const-string v0, "allow_personalized_ads"

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_4

    .line 20
    .line 21
    instance-of v0, p3, Ljava/lang/String;

    .line 22
    .line 23
    const-string v1, "_npa"

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    move-object v0, p3

    .line 28
    check-cast v0, Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 37
    .line 38
    invoke-virtual {v0, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    const/4 p3, 0x1

    .line 43
    const-string v0, "false"

    .line 44
    .line 45
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    const-wide/16 v2, 0x1

    .line 50
    .line 51
    if-eq p3, p2, :cond_0

    .line 52
    .line 53
    const-wide/16 p2, 0x0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    move-wide p2, v2

    .line 57
    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 58
    .line 59
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/d6;->n:Lcom/google/android/gms/measurement/internal/c6;

    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 70
    .line 71
    .line 72
    move-result-wide v4

    .line 73
    cmp-long v2, v4, v2

    .line 74
    .line 75
    if-nez v2, :cond_1

    .line 76
    .line 77
    const-string v0, "true"

    .line 78
    .line 79
    :cond_1
    invoke-virtual {p3, v0}, Lcom/google/android/gms/measurement/internal/c6;->b(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    move-object p3, p2

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    if-nez p3, :cond_3

    .line 85
    .line 86
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 87
    .line 88
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/d6;->n:Lcom/google/android/gms/measurement/internal/c6;

    .line 93
    .line 94
    const-string v0, "unset"

    .line 95
    .line 96
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/c6;->b(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :goto_1
    move-object p2, v1

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const-string v1, "Setting user property(FE)"

    .line 111
    .line 112
    const-string v2, "non_personalized_ads(_npa)"

    .line 113
    .line 114
    invoke-virtual {v0, v1, v2, p3}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :cond_4
    move-object v4, p2

    .line 118
    move-object v7, p3

    .line 119
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 120
    .line 121
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/w6;->g()Z

    .line 122
    .line 123
    .line 124
    move-result p3

    .line 125
    if-nez p3, :cond_5

    .line 126
    .line 127
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    const-string p2, "User property not set since app measurement is disabled"

    .line 138
    .line 139
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_5
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/w6;->m()Z

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    if-nez p2, :cond_6

    .line 148
    .line 149
    return-void

    .line 150
    :cond_6
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 151
    .line 152
    new-instance p3, Lcom/google/android/gms/measurement/internal/ud;

    .line 153
    .line 154
    move-object v3, p3

    .line 155
    move-wide v5, p4

    .line 156
    move-object v8, p1

    .line 157
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/ud;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/w6;->J()Lcom/google/android/gms/measurement/internal/vb;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p1, p3}, Lcom/google/android/gms/measurement/internal/vb;->o(Lcom/google/android/gms/measurement/internal/ud;)V

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method public final C(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/s6;->p()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string p2, "Cannot get user properties from analytics worker thread"

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->c()Lcom/google/android/gms/measurement/internal/f;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->a()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string p2, "Cannot get user properties from main thread"

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    goto/16 :goto_1

    .line 59
    .line 60
    :cond_1
    new-instance v8, Ljava/util/concurrent/atomic/AtomicReference;

    .line 61
    .line 62
    invoke-direct {v8}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    new-instance v10, Lcom/google/android/gms/measurement/internal/y8;

    .line 72
    .line 73
    const/4 v4, 0x0

    .line 74
    move-object v1, v10

    .line 75
    move-object v2, p0

    .line 76
    move-object v3, v8

    .line 77
    move-object v5, p1

    .line 78
    move-object v6, p2

    .line 79
    move v7, p3

    .line 80
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/y8;-><init>(Lcom/google/android/gms/measurement/internal/w9;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 81
    .line 82
    .line 83
    const-wide/16 v3, 0x1388

    .line 84
    .line 85
    const-string v5, "get user properties"

    .line 86
    .line 87
    move-object v1, v9

    .line 88
    move-object v2, v8

    .line 89
    move-object v6, v10

    .line 90
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/s6;->u(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Ljava/util/List;

    .line 98
    .line 99
    if-nez p1, :cond_2

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    const-string p3, "Timed out waiting for handle get user properties, includeInternal"

    .line 114
    .line 115
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    goto :goto_1

    .line 123
    :cond_2
    new-instance p2, Lr/a;

    .line 124
    .line 125
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 126
    .line 127
    .line 128
    move-result p3

    .line 129
    invoke-direct {p2, p3}, Lr/a;-><init>(I)V

    .line 130
    .line 131
    .line 132
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result p3

    .line 140
    if-eqz p3, :cond_4

    .line 141
    .line 142
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p3

    .line 146
    check-cast p3, Lcom/google/android/gms/measurement/internal/ud;

    .line 147
    .line 148
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/ud;->g()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    if-eqz v0, :cond_3

    .line 153
    .line 154
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/ud;->b:Ljava/lang/String;

    .line 155
    .line 156
    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_4
    move-object p1, p2

    .line 161
    :goto_1
    return-object p1
.end method

.method public final D()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w9;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method final E(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w9;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final F()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d6;->u:Lcom/google/android/gms/measurement/internal/y5;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/y5;->a()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_2

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d6;->v:Lcom/google/android/gms/measurement/internal/a6;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/a6;->a()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/d6;->v:Lcom/google/android/gms/measurement/internal/a6;

    .line 33
    .line 34
    const-wide/16 v4, 0x1

    .line 35
    .line 36
    add-long/2addr v4, v1

    .line 37
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/a6;->b(J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 41
    .line 42
    .line 43
    const-wide/16 v3, 0x5

    .line 44
    .line 45
    cmp-long v1, v1, v3

    .line 46
    .line 47
    if-ltz v1, :cond_0

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v2, "Permanently failed to retrieve Deferred Deep Link. Reached maximum retries."

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d6;->u:Lcom/google/android/gms/measurement/internal/y5;

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/y5;->b(Z)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w9;->t:Lcom/google/android/gms/measurement/internal/x;

    .line 74
    .line 75
    if-nez v0, :cond_1

    .line 76
    .line 77
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 78
    .line 79
    new-instance v1, Lcom/google/android/gms/measurement/internal/t8;

    .line 80
    .line 81
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/t8;-><init>(Lcom/google/android/gms/measurement/internal/w9;Lcom/google/android/gms/measurement/internal/b8;)V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/w9;->t:Lcom/google/android/gms/measurement/internal/x;

    .line 85
    .line 86
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w9;->t:Lcom/google/android/gms/measurement/internal/x;

    .line 87
    .line 88
    const-wide/16 v1, 0x0

    .line 89
    .line 90
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/x;->b(J)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->v()Lcom/google/android/gms/measurement/internal/n5;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const-string v1, "Deferred Deep Link already retrieved. Not fetching again."

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final G(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w9;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/google/android/gms/measurement/internal/u8;

    .line 14
    .line 15
    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/u8;-><init>(Lcom/google/android/gms/measurement/internal/w9;J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/s6;->t(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final H()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->m()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->c()Lcom/google/android/gms/measurement/internal/f;

    .line 26
    .line 27
    .line 28
    const-string v2, "google_analytics_deferred_deep_link_enabled"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/m;->J(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->v()Lcom/google/android/gms/measurement/internal/n5;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v2, "Deferred Deep Link feature enabled."

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    new-instance v2, Lcom/google/android/gms/measurement/internal/u9;

    .line 60
    .line 61
    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/u9;-><init>(Lcom/google/android/gms/measurement/internal/w9;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/s6;->t(Ljava/lang/Runnable;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->J()Lcom/google/android/gms/measurement/internal/vb;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/vb;->s()V

    .line 74
    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/w9;->s:Z

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d6;->p()Landroid/content/SharedPreferences;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    const/4 v3, 0x0

    .line 91
    const-string v4, "previous_os_version"

    .line 92
    .line 93
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 98
    .line 99
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->K()Lcom/google/android/gms/measurement/internal/a0;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/a8;->l()V

    .line 104
    .line 105
    .line 106
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 107
    .line 108
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-nez v5, :cond_2

    .line 113
    .line 114
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-nez v5, :cond_2

    .line 119
    .line 120
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d6;->p()Landroid/content/SharedPreferences;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 129
    .line 130
    .line 131
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 132
    .line 133
    .line 134
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-nez v1, :cond_3

    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->K()Lcom/google/android/gms/measurement/internal/a0;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/a8;->l()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-nez v0, :cond_3

    .line 152
    .line 153
    new-instance v0, Landroid/os/Bundle;

    .line 154
    .line 155
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string v1, "_po"

    .line 159
    .line 160
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    const-string v1, "auto"

    .line 164
    .line 165
    const-string v2, "_ou"

    .line 166
    .line 167
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/w9;->t(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 168
    .line 169
    .line 170
    :cond_3
    :goto_0
    return-void
.end method

.method public final I(Li6/w;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 5
    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w9;->d:Li6/w;

    .line 10
    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    const-string v1, "EventInterceptor already set."

    .line 19
    .line 20
    invoke-static {v0, v1}, Ln5/q;->o(ZLjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/w9;->d:Li6/w;

    .line 24
    .line 25
    return-void
.end method

.method public final J(Li6/x;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w9;->e:Ljava/util/Set;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, "OnEventListener already registered"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final K(Li6/x;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w9;->e:Ljava/util/Set;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, "OnEventListener had not been registered"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final L(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 7
    .line 8
    .line 9
    const/16 p1, 0x19

    .line 10
    .line 11
    return p1
.end method

.method public final M(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/w9;->N(Landroid/os/Bundle;J)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final N(Landroid/os/Bundle;J)V
    .locals 11

    .line 1
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Bundle;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    const-string p1, "app_id"

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "Package name should be null when calling setConditionalUserProperty"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    const-class v1, Ljava/lang/String;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-static {v0, p1, v1, v2}, Li6/q;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    const-string p1, "origin"

    .line 49
    .line 50
    invoke-static {v0, p1, v1, v2}, Li6/q;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    const-string v3, "name"

    .line 54
    .line 55
    invoke-static {v0, v3, v1, v2}, Li6/q;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    const-class v4, Ljava/lang/Object;

    .line 59
    .line 60
    const-string v5, "value"

    .line 61
    .line 62
    invoke-static {v0, v5, v4, v2}, Li6/q;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    const-string v4, "trigger_event_name"

    .line 66
    .line 67
    invoke-static {v0, v4, v1, v2}, Li6/q;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    const-wide/16 v6, 0x0

    .line 71
    .line 72
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    const-string v7, "trigger_timeout"

    .line 77
    .line 78
    const-class v8, Ljava/lang/Long;

    .line 79
    .line 80
    invoke-static {v0, v7, v8, v6}, Li6/q;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    const-string v9, "timed_out_event_name"

    .line 84
    .line 85
    invoke-static {v0, v9, v1, v2}, Li6/q;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    const-string v9, "timed_out_event_params"

    .line 89
    .line 90
    const-class v10, Landroid/os/Bundle;

    .line 91
    .line 92
    invoke-static {v0, v9, v10, v2}, Li6/q;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    const-string v9, "triggered_event_name"

    .line 96
    .line 97
    invoke-static {v0, v9, v1, v2}, Li6/q;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    const-string v9, "triggered_event_params"

    .line 101
    .line 102
    invoke-static {v0, v9, v10, v2}, Li6/q;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    const-string v9, "time_to_live"

    .line 106
    .line 107
    invoke-static {v0, v9, v8, v6}, Li6/q;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    const-string v6, "expired_event_name"

    .line 111
    .line 112
    invoke-static {v0, v6, v1, v2}, Li6/q;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    const-string v1, "expired_event_params"

    .line 116
    .line 117
    invoke-static {v0, v1, v10, v2}, Li6/q;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-static {v1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-static {p1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    const-string p1, "creation_timestamp"

    .line 142
    .line 143
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 155
    .line 156
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/yd;->y0(Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_7

    .line 165
    .line 166
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/measurement/internal/yd;->y(Ljava/lang/String;Ljava/lang/Object;)I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-nez v1, :cond_6

    .line 175
    .line 176
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/measurement/internal/yd;->z(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    if-nez v1, :cond_1

    .line 185
    .line 186
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    .line 195
    .line 196
    .line 197
    move-result-object p3

    .line 198
    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/i5;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    const-string p3, "Unable to normalize conditional user property value"

    .line 203
    .line 204
    invoke-virtual {v0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    :cond_1
    invoke-static {v0, v1}, Li6/q;->a(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 212
    .line 213
    .line 214
    move-result-wide v1

    .line 215
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 220
    .line 221
    .line 222
    move-result p2

    .line 223
    const-wide/16 v3, 0x1

    .line 224
    .line 225
    const-wide v5, 0x39ef8b000L

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    if-nez p2, :cond_3

    .line 231
    .line 232
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 233
    .line 234
    .line 235
    cmp-long p2, v1, v5

    .line 236
    .line 237
    if-gtz p2, :cond_2

    .line 238
    .line 239
    cmp-long p2, v1, v3

    .line 240
    .line 241
    if-gez p2, :cond_3

    .line 242
    .line 243
    :cond_2
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 244
    .line 245
    .line 246
    move-result-object p2

    .line 247
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 248
    .line 249
    .line 250
    move-result-object p2

    .line 251
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    .line 252
    .line 253
    .line 254
    move-result-object p3

    .line 255
    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/i5;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 260
    .line 261
    .line 262
    move-result-object p3

    .line 263
    const-string v0, "Invalid conditional user property timeout"

    .line 264
    .line 265
    invoke-virtual {p2, v0, p1, p3}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    return-void

    .line 269
    :cond_3
    invoke-virtual {v0, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 270
    .line 271
    .line 272
    move-result-wide v1

    .line 273
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 274
    .line 275
    .line 276
    cmp-long p2, v1, v5

    .line 277
    .line 278
    if-gtz p2, :cond_5

    .line 279
    .line 280
    cmp-long p2, v1, v3

    .line 281
    .line 282
    if-gez p2, :cond_4

    .line 283
    .line 284
    goto :goto_0

    .line 285
    :cond_4
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    new-instance p2, Lcom/google/android/gms/measurement/internal/v8;

    .line 290
    .line 291
    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/measurement/internal/v8;-><init>(Lcom/google/android/gms/measurement/internal/w9;Landroid/os/Bundle;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/s6;->t(Ljava/lang/Runnable;)V

    .line 295
    .line 296
    .line 297
    return-void

    .line 298
    :cond_5
    :goto_0
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 299
    .line 300
    .line 301
    move-result-object p2

    .line 302
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 303
    .line 304
    .line 305
    move-result-object p2

    .line 306
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    .line 307
    .line 308
    .line 309
    move-result-object p3

    .line 310
    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/i5;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 315
    .line 316
    .line 317
    move-result-object p3

    .line 318
    const-string v0, "Invalid conditional user property time to live"

    .line 319
    .line 320
    invoke-virtual {p2, v0, p1, p3}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    return-void

    .line 324
    :cond_6
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    .line 333
    .line 334
    .line 335
    move-result-object p3

    .line 336
    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/i5;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    const-string p3, "Invalid conditional user property value"

    .line 341
    .line 342
    invoke-virtual {v0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    return-void

    .line 346
    :cond_7
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 347
    .line 348
    .line 349
    move-result-object p2

    .line 350
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 351
    .line 352
    .line 353
    move-result-object p2

    .line 354
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    .line 355
    .line 356
    .line 357
    move-result-object p3

    .line 358
    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/i5;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    const-string p3, "Invalid conditional user property name"

    .line 363
    .line 364
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    return-void
.end method

.method public final O(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-static {p1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    new-instance v3, Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v4, "name"

    .line 20
    .line 21
    invoke-virtual {v3, v4, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string p1, "creation_timestamp"

    .line 25
    .line 26
    invoke-virtual {v3, p1, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 27
    .line 28
    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    const-string p1, "expired_event_name"

    .line 32
    .line 33
    invoke-virtual {v3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string p1, "expired_event_params"

    .line 37
    .line 38
    invoke-virtual {v3, p1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance p2, Lcom/google/android/gms/measurement/internal/w8;

    .line 46
    .line 47
    invoke-direct {p2, p0, v3}, Lcom/google/android/gms/measurement/internal/w8;-><init>(Lcom/google/android/gms/measurement/internal/w9;Landroid/os/Bundle;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/s6;->t(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final P(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/s6;->p()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string p2, "Cannot get conditional user properties from analytics worker thread"

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->c()Lcom/google/android/gms/measurement/internal/f;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->a()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string p2, "Cannot get conditional user properties from main thread"

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance p1, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 64
    .line 65
    .line 66
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    new-instance v9, Lcom/google/android/gms/measurement/internal/x8;

    .line 73
    .line 74
    const/4 v6, 0x0

    .line 75
    move-object v3, v9

    .line 76
    move-object v4, p0

    .line 77
    move-object v5, v1

    .line 78
    move-object v7, p1

    .line 79
    move-object v8, p2

    .line 80
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/x8;-><init>(Lcom/google/android/gms/measurement/internal/w9;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-wide/16 v5, 0x1388

    .line 84
    .line 85
    const-string v7, "get conditional user properties"

    .line 86
    .line 87
    move-object v3, v2

    .line 88
    move-object v4, v1

    .line 89
    move-object v8, v9

    .line 90
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/s6;->u(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Ljava/util/List;

    .line 98
    .line 99
    if-nez p1, :cond_2

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    const-string p2, "Timed out waiting for get conditional user properties"

    .line 110
    .line 111
    const/4 v0, 0x0

    .line 112
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    new-instance p1, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/yd;->h0(Ljava/util/List;)Ljava/util/ArrayList;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    :goto_0
    return-object p1
.end method

.method public final Q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->I()Lcom/google/android/gms/measurement/internal/la;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/la;->u()Lcom/google/android/gms/measurement/internal/da;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/da;->a:Ljava/lang/String;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method public final R()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->I()Lcom/google/android/gms/measurement/internal/la;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/la;->u()Lcom/google/android/gms/measurement/internal/da;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/da;->b:Ljava/lang/String;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method public final S()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->e()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->H()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "google_app_id"

    .line 14
    .line 15
    invoke-static {v0, v2, v1}, Li6/e0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object v0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "getGoogleAppId failed with exception"

    .line 32
    .line 33
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    return-object v0
.end method

.method final synthetic T(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    sget-object v2, Lcom/google/android/gms/measurement/internal/c5;->a1:Lcom/google/android/gms/measurement/internal/b5;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const-wide/16 v1, 0x1f4

    .line 15
    .line 16
    const-string v3, "IABTCF_TCString change picked up in listener."

    .line 17
    .line 18
    const-string v4, "IABTCF_TCString"

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-static {p2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1, v3}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/w9;->v:Lcom/google/android/gms/measurement/internal/x;

    .line 40
    .line 41
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/google/android/gms/measurement/internal/x;

    .line 46
    .line 47
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/measurement/internal/x;->b(J)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    invoke-static {p2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    const-string v0, "IABTCF_gdprApplies"

    .line 58
    .line 59
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_2

    .line 64
    .line 65
    const-string v0, "IABTCF_EnableAdvertiserConsentMode"

    .line 66
    .line 67
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-eqz p2, :cond_1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    return-void

    .line 75
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1, v3}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/w9;->v:Lcom/google/android/gms/measurement/internal/x;

    .line 87
    .line 88
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lcom/google/android/gms/measurement/internal/x;

    .line 93
    .line 94
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/measurement/internal/x;->b(J)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method final synthetic U(Landroid/os/Bundle;)V
    .locals 14

    .line 1
    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v2, p1

    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 12
    .line 13
    new-instance v2, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/d6;->z:Lcom/google/android/gms/measurement/internal/z5;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/z5;->a()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    const/4 v5, 0x0

    .line 41
    if-eqz v4, :cond_6

    .line 42
    .line 43
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    if-eqz v6, :cond_3

    .line 54
    .line 55
    instance-of v7, v6, Ljava/lang/String;

    .line 56
    .line 57
    if-nez v7, :cond_3

    .line 58
    .line 59
    instance-of v7, v6, Ljava/lang/Long;

    .line 60
    .line 61
    if-nez v7, :cond_3

    .line 62
    .line 63
    instance-of v7, v6, Ljava/lang/Double;

    .line 64
    .line 65
    if-nez v7, :cond_3

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/yd;->B0(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_2

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/w9;->w:Lcom/google/android/gms/measurement/internal/xd;

    .line 82
    .line 83
    const/4 v9, 0x0

    .line 84
    const/16 v10, 0x1b

    .line 85
    .line 86
    const/4 v11, 0x0

    .line 87
    const/4 v12, 0x0

    .line 88
    const/4 v13, 0x0

    .line 89
    invoke-virtual/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/yd;->B(Lcom/google/android/gms/measurement/internal/xd;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/p5;->t()Lcom/google/android/gms/measurement/internal/n5;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    const-string v7, "Invalid default event parameter type. Name, value"

    .line 101
    .line 102
    invoke-virtual {v5, v7, v4, v6}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/yd;->N(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    if-eqz v7, :cond_4

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/p5;->t()Lcom/google/android/gms/measurement/internal/n5;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    const-string v6, "Invalid default event parameter name. Name"

    .line 121
    .line 122
    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_4
    if-nez v6, :cond_5

    .line 127
    .line 128
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    invoke-virtual {v8, v1, v5}, Lcom/google/android/gms/measurement/internal/m;->x(Ljava/lang/String;Z)I

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    const-string v8, "param"

    .line 145
    .line 146
    invoke-virtual {v7, v8, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/yd;->C0(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-eqz v5, :cond_1

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    invoke-virtual {v5, v2, v4, v6}, Lcom/google/android/gms/measurement/internal/yd;->A(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/m;->v()I

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    invoke-virtual {v2}, Landroid/os/BaseBundle;->size()I

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    if-gt v4, v3, :cond_7

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_7
    new-instance v4, Ljava/util/TreeSet;

    .line 179
    .line 180
    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    invoke-direct {v4, v6}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 185
    .line 186
    .line 187
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    :cond_8
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    if-eqz v6, :cond_9

    .line 196
    .line 197
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    check-cast v6, Ljava/lang/String;

    .line 202
    .line 203
    add-int/lit8 v5, v5, 0x1

    .line 204
    .line 205
    if-le v5, v3, :cond_8

    .line 206
    .line 207
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/w9;->w:Lcom/google/android/gms/measurement/internal/xd;

    .line 216
    .line 217
    const/4 v9, 0x0

    .line 218
    const/16 v10, 0x1a

    .line 219
    .line 220
    const/4 v11, 0x0

    .line 221
    const/4 v12, 0x0

    .line 222
    const/4 v13, 0x0

    .line 223
    invoke-virtual/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/yd;->B(Lcom/google/android/gms/measurement/internal/xd;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->t()Lcom/google/android/gms/measurement/internal/n5;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    const-string v3, "Too many default event parameters set. Discarding beyond event parameter limit"

    .line 235
    .line 236
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 240
    .line 241
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/d6;->z:Lcom/google/android/gms/measurement/internal/z5;

    .line 246
    .line 247
    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/z5;->b(Landroid/os/Bundle;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 251
    .line 252
    .line 253
    move-result p1

    .line 254
    if-eqz p1, :cond_b

    .line 255
    .line 256
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    sget-object v0, Lcom/google/android/gms/measurement/internal/c5;->X0:Lcom/google/android/gms/measurement/internal/b5;

    .line 261
    .line 262
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)Z

    .line 263
    .line 264
    .line 265
    move-result p1

    .line 266
    if-eqz p1, :cond_a

    .line 267
    .line 268
    goto :goto_3

    .line 269
    :cond_a
    return-void

    .line 270
    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 271
    .line 272
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->J()Lcom/google/android/gms/measurement/internal/vb;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-virtual {p1, v2}, Lcom/google/android/gms/measurement/internal/vb;->v(Landroid/os/Bundle;)V

    .line 277
    .line 278
    .line 279
    return-void
.end method

.method final synthetic V(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w9;->k:Lcom/google/android/gms/measurement/internal/x;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 6
    .line 7
    new-instance v1, Lcom/google/android/gms/measurement/internal/k8;

    .line 8
    .line 9
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/k8;-><init>(Lcom/google/android/gms/measurement/internal/w9;Lcom/google/android/gms/measurement/internal/b8;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/w9;->k:Lcom/google/android/gms/measurement/internal/x;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w9;->k:Lcom/google/android/gms/measurement/internal/x;

    .line 15
    .line 16
    int-to-long v1, p1

    .line 17
    const-wide/16 v3, 0x3e8

    .line 18
    .line 19
    mul-long/2addr v1, v3

    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/x;->b(J)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method final synthetic W(Ljava/lang/Boolean;Z)V
    .locals 0

    .line 1
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/w9;->f0(Ljava/lang/Boolean;Z)V

    return-void
.end method

.method final synthetic X(Lcom/google/android/gms/measurement/internal/d8;JZZ)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d6;->w()Lcom/google/android/gms/measurement/internal/d8;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/w9;->q:J

    .line 18
    .line 19
    cmp-long v2, p2, v2

    .line 20
    .line 21
    if-gtz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d8;->b()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d8;->b()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-static {v1, v2}, Lcom/google/android/gms/measurement/internal/d8;->u(II)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/p5;->u()Lcom/google/android/gms/measurement/internal/n5;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    const-string p3, "Dropped out-of-date consent setting, proposed settings"

    .line 47
    .line 48
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d8;->b()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/d6;->v(I)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_4

    .line 70
    .line 71
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d6;->p()Landroid/content/SharedPreferences;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d8;->l()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    const-string v5, "consent_settings"

    .line 86
    .line 87
    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 88
    .line 89
    .line 90
    const-string v4, "consent_source"

    .line 91
    .line 92
    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 93
    .line 94
    .line 95
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const-string v1, "Setting storage consent(FE)"

    .line 107
    .line 108
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/w9;->q:J

    .line 112
    .line 113
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->J()Lcom/google/android/gms/measurement/internal/vb;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/vb;->D()Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_2

    .line 122
    .line 123
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->J()Lcom/google/android/gms/measurement/internal/vb;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p1, p4}, Lcom/google/android/gms/measurement/internal/vb;->Z(Z)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->J()Lcom/google/android/gms/measurement/internal/vb;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p1, p4}, Lcom/google/android/gms/measurement/internal/vb;->Y(Z)V

    .line 136
    .line 137
    .line 138
    :goto_1
    if-eqz p5, :cond_3

    .line 139
    .line 140
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->J()Lcom/google/android/gms/measurement/internal/vb;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 145
    .line 146
    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/vb;->q(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 150
    .line 151
    .line 152
    :cond_3
    return-void

    .line 153
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/p5;->u()Lcom/google/android/gms/measurement/internal/n5;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d8;->b()I

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    const-string p3, "Lower precedence consent source ignored, proposed source"

    .line 170
    .line 171
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    return-void
.end method

.method final synthetic Y()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/w9;->g0()V

    return-void
.end method

.method final synthetic Z(Z)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/w9;->i:Z

    return-void
.end method

.method final synthetic a0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/measurement/internal/w9;->j:I

    return v0
.end method

.method final synthetic b0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/measurement/internal/w9;->j:I

    return-void
.end method

.method final synthetic c0()Lcom/google/android/gms/measurement/internal/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w9;->t:Lcom/google/android/gms/measurement/internal/x;

    return-object v0
.end method

.method final synthetic d0(Ljava/lang/Throwable;)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/w9;->n:Z

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    instance-of v2, p1, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    if-nez v2, :cond_3

    .line 15
    .line 16
    const-string v2, "garbage collected"

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_3

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v3, "ServiceUnavailableException"

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    instance-of p1, p1, Ljava/lang/SecurityException;

    .line 42
    .line 43
    if-eqz p1, :cond_4

    .line 44
    .line 45
    const-string p1, "READ_DEVICE_CONFIG"

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const/4 p1, 0x3

    .line 55
    return p1

    .line 56
    :cond_3
    :goto_0
    const-string p1, "Background"

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    const/4 v1, 0x1

    .line 63
    if-nez p1, :cond_5

    .line 64
    .line 65
    :cond_4
    :goto_1
    return v1

    .line 66
    :cond_5
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/w9;->n:Z

    .line 67
    .line 68
    return v1
.end method

.method public final h0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->e()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    instance-of v1, v1, Landroid/app/Application;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/w9;->c:Lcom/google/android/gms/measurement/internal/k9;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->e()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/app/Application;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/w9;->c:Lcom/google/android/gms/measurement/internal/k9;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final i0()Ljava/lang/Boolean;
    .locals 6

    .line 1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v5, Lcom/google/android/gms/measurement/internal/s8;

    .line 13
    .line 14
    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/s8;-><init>(Lcom/google/android/gms/measurement/internal/w9;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 15
    .line 16
    .line 17
    const-wide/16 v2, 0x3a98

    .line 18
    .line 19
    const-string v4, "boolean test flag value"

    .line 20
    .line 21
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/s6;->u(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Boolean;

    .line 26
    .line 27
    return-object v0
.end method

.method public final j0()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v5, Lcom/google/android/gms/measurement/internal/b9;

    .line 13
    .line 14
    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/b9;-><init>(Lcom/google/android/gms/measurement/internal/w9;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 15
    .line 16
    .line 17
    const-wide/16 v2, 0x3a98

    .line 18
    .line 19
    const-string v4, "String test flag value"

    .line 20
    .line 21
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/s6;->u(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/String;

    .line 26
    .line 27
    return-object v0
.end method

.method public final k0()Ljava/lang/Long;
    .locals 6

    .line 1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v5, Lcom/google/android/gms/measurement/internal/c9;

    .line 13
    .line 14
    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/c9;-><init>(Lcom/google/android/gms/measurement/internal/w9;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 15
    .line 16
    .line 17
    const-wide/16 v2, 0x3a98

    .line 18
    .line 19
    const-string v4, "long test flag value"

    .line 20
    .line 21
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/s6;->u(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Long;

    .line 26
    .line 27
    return-object v0
.end method

.method public final l0()Ljava/lang/Integer;
    .locals 6

    .line 1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v5, Lcom/google/android/gms/measurement/internal/d9;

    .line 13
    .line 14
    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/d9;-><init>(Lcom/google/android/gms/measurement/internal/w9;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 15
    .line 16
    .line 17
    const-wide/16 v2, 0x3a98

    .line 18
    .line 19
    const-string v4, "int test flag value"

    .line 20
    .line 21
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/s6;->u(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Integer;

    .line 26
    .line 27
    return-object v0
.end method

.method protected final m()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final m0()Ljava/lang/Double;
    .locals 6

    .line 1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v5, Lcom/google/android/gms/measurement/internal/e9;

    .line 13
    .line 14
    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/e9;-><init>(Lcom/google/android/gms/measurement/internal/w9;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 15
    .line 16
    .line 17
    const-wide/16 v2, 0x3a98

    .line 18
    .line 19
    const-string v4, "double test flag value"

    .line 20
    .line 21
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/s6;->u(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Double;

    .line 26
    .line 27
    return-object v0
.end method

.method public final n0(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/google/android/gms/measurement/internal/f9;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/f9;-><init>(Lcom/google/android/gms/measurement/internal/w9;Ljava/lang/Boolean;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/s6;->t(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method final o(Lcom/google/android/gms/measurement/internal/d8;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Li6/s;->c:Li6/s;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/d8;->o(Li6/s;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Li6/s;->b:Li6/s;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/d8;->o(Li6/s;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->J()Lcom/google/android/gms/measurement/internal/vb;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/vb;->C()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    :cond_1
    move p1, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move p1, v1

    .line 37
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->j()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eq p1, v3, :cond_5

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/w6;->i(Z)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d6;->p()Landroid/content/SharedPreferences;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const-string v4, "measurement_enabled_from_api"

    .line 64
    .line 65
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_3

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d6;->p()Landroid/content/SharedPreferences;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    const/4 v0, 0x0

    .line 85
    :goto_1
    if-eqz p1, :cond_4

    .line 86
    .line 87
    if-eqz v0, :cond_4

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_5

    .line 94
    .line 95
    :cond_4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/w9;->f0(Ljava/lang/Boolean;Z)V

    .line 100
    .line 101
    .line 102
    :cond_5
    return-void
.end method

.method final o0(Landroid/os/Bundle;IJ)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/measurement/internal/d8;->c:Lcom/google/android/gms/measurement/internal/d8;

    .line 5
    .line 6
    sget-object v0, Lcom/google/android/gms/measurement/internal/c8;->b:Lcom/google/android/gms/measurement/internal/c8;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c8;->b()[Li6/s;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    array-length v1, v0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    const/4 v3, 0x0

    .line 15
    if-ge v2, v1, :cond_3

    .line 16
    .line 17
    aget-object v4, v0, v2

    .line 18
    .line 19
    iget-object v4, v4, Li6/s;->a:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_2

    .line 26
    .line 27
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    if-eqz v4, :cond_2

    .line 32
    .line 33
    const-string v5, "granted"

    .line 34
    .line 35
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_0

    .line 40
    .line 41
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    const-string v5, "denied"

    .line 45
    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_1

    .line 51
    .line 52
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 53
    .line 54
    :cond_1
    :goto_1
    if-nez v3, :cond_2

    .line 55
    .line 56
    move-object v3, v4

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 62
    .line 63
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->t()Lcom/google/android/gms/measurement/internal/n5;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const-string v2, "Ignoring invalid consent setting"

    .line 74
    .line 75
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->t()Lcom/google/android/gms/measurement/internal/n5;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string v1, "Valid consent values are \'granted\', \'denied\'"

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s6;->p()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/d8;->e(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/d8;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d8;->c()Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_5

    .line 110
    .line 111
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/w9;->q0(Lcom/google/android/gms/measurement/internal/d8;Z)V

    .line 112
    .line 113
    .line 114
    :cond_5
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/y;->h(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/y;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/y;->d()Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_6

    .line 123
    .line 124
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/w9;->p0(Lcom/google/android/gms/measurement/internal/y;Z)V

    .line 125
    .line 126
    .line 127
    :cond_6
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/y;->i(Landroid/os/Bundle;)Ljava/lang/Boolean;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    if-eqz p1, :cond_9

    .line 132
    .line 133
    const/16 v1, -0x1e

    .line 134
    .line 135
    if-ne p2, v1, :cond_7

    .line 136
    .line 137
    const-string p2, "tcf"

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_7
    const-string p2, "app"

    .line 141
    .line 142
    :goto_3
    move-object v2, p2

    .line 143
    if-eqz v0, :cond_8

    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    const-string v3, "allow_personalized_ads"

    .line 150
    .line 151
    move-object v1, p0

    .line 152
    move-wide v5, p3

    .line 153
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/w9;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    const-string v3, "allow_personalized_ads"

    .line 162
    .line 163
    const/4 v5, 0x0

    .line 164
    move-object v1, p0

    .line 165
    move-wide v6, p3

    .line 166
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/w9;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    .line 167
    .line 168
    .line 169
    :cond_9
    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    .line 1
    const/4 v4, 0x1

    .line 2
    const/4 v5, 0x1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v6

    .line 13
    move-object v0, p0

    .line 14
    move-object v1, p1

    .line 15
    move-object v2, p2

    .line 16
    move-object v3, p3

    .line 17
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/w9;->q(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method final p0(Lcom/google/android/gms/measurement/internal/y;Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/measurement/internal/g9;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/g9;-><init>(Lcom/google/android/gms/measurement/internal/w9;Lcom/google/android/gms/measurement/internal/y;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/s6;->t(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final q(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
    .locals 11

    .line 1
    move-object v10, p0

    .line 2
    if-nez p3, :cond_0

    .line 3
    .line 4
    new-instance v0, Landroid/os/Bundle;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7
    .line 8
    .line 9
    move-object v5, v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v5, p3

    .line 12
    :goto_0
    const-string v0, "screen_view"

    .line 13
    .line 14
    move-object v2, p2

    .line 15
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->I()Lcom/google/android/gms/measurement/internal/la;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    move-wide/from16 v3, p6

    .line 28
    .line 29
    invoke-virtual {v0, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/la;->s(Landroid/os/Bundle;J)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    move-wide/from16 v3, p6

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    if-eqz p5, :cond_3

    .line 37
    .line 38
    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/w9;->d:Li6/w;

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/yd;->N(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    const/4 v0, 0x0

    .line 50
    :cond_3
    :goto_1
    move v7, v0

    .line 51
    if-nez p1, :cond_4

    .line 52
    .line 53
    const-string v0, "app"

    .line 54
    .line 55
    move-object v1, v0

    .line 56
    goto :goto_2

    .line 57
    :cond_4
    move-object v1, p1

    .line 58
    :goto_2
    const/4 v9, 0x0

    .line 59
    move-object v0, p0

    .line 60
    move-object v2, p2

    .line 61
    move-wide/from16 v3, p6

    .line 62
    .line 63
    move/from16 v6, p5

    .line 64
    .line 65
    move v8, p4

    .line 66
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/w9;->x(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final q0(Lcom/google/android/gms/measurement/internal/d8;Z)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d8;->b()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, -0xa

    .line 9
    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d8;->p()Li6/r;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    sget-object v3, Li6/r;->b:Li6/r;

    .line 17
    .line 18
    if-ne v2, v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d8;->q()Li6/r;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eq v2, v3, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->t()Lcom/google/android/gms/measurement/internal/n5;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string p2, "Ignoring empty consent settings"

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/w9;->h:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter v2

    .line 46
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/w9;->o:Lcom/google/android/gms/measurement/internal/d8;

    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d8;->b()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-static {v0, v3}, Lcom/google/android/gms/measurement/internal/d8;->u(II)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    const/4 v4, 0x0

    .line 57
    if-eqz v3, :cond_3

    .line 58
    .line 59
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/w9;->o:Lcom/google/android/gms/measurement/internal/d8;

    .line 60
    .line 61
    invoke-virtual {p1, v3}, Lcom/google/android/gms/measurement/internal/d8;->r(Lcom/google/android/gms/measurement/internal/d8;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    sget-object v5, Li6/s;->c:Li6/s;

    .line 66
    .line 67
    invoke-virtual {p1, v5}, Lcom/google/android/gms/measurement/internal/d8;->o(Li6/s;)Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    const/4 v7, 0x1

    .line 72
    if-eqz v6, :cond_2

    .line 73
    .line 74
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/w9;->o:Lcom/google/android/gms/measurement/internal/d8;

    .line 75
    .line 76
    invoke-virtual {v6, v5}, Lcom/google/android/gms/measurement/internal/d8;->o(Li6/s;)Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-nez v5, :cond_2

    .line 81
    .line 82
    move v4, v7

    .line 83
    :cond_2
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/w9;->o:Lcom/google/android/gms/measurement/internal/d8;

    .line 84
    .line 85
    invoke-virtual {p1, v5}, Lcom/google/android/gms/measurement/internal/d8;->t(Lcom/google/android/gms/measurement/internal/d8;)Lcom/google/android/gms/measurement/internal/d8;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/w9;->o:Lcom/google/android/gms/measurement/internal/d8;

    .line 90
    .line 91
    move-object v5, p1

    .line 92
    move v8, v4

    .line 93
    move v4, v7

    .line 94
    goto :goto_1

    .line 95
    :cond_3
    move-object v5, p1

    .line 96
    move v3, v4

    .line 97
    move v8, v3

    .line 98
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    if-nez v4, :cond_4

    .line 100
    .line 101
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->u()Lcom/google/android/gms/measurement/internal/n5;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const-string p2, "Ignoring lower-priority consent settings, proposed settings"

    .line 112
    .line 113
    invoke-virtual {p1, p2, v5}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/w9;->p:Ljava/util/concurrent/atomic/AtomicLong;

    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 120
    .line 121
    .line 122
    move-result-wide v6

    .line 123
    if-eqz v3, :cond_6

    .line 124
    .line 125
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/w9;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 126
    .line 127
    const/4 v0, 0x0

    .line 128
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    new-instance p1, Lcom/google/android/gms/measurement/internal/h9;

    .line 132
    .line 133
    move-object v3, p1

    .line 134
    move-object v4, p0

    .line 135
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/h9;-><init>(Lcom/google/android/gms/measurement/internal/w9;Lcom/google/android/gms/measurement/internal/d8;JZ)V

    .line 136
    .line 137
    .line 138
    if-eqz p2, :cond_5

    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 141
    .line 142
    .line 143
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_5
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 148
    .line 149
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/s6;->v(Ljava/lang/Runnable;)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_6
    new-instance p1, Lcom/google/android/gms/measurement/internal/i9;

    .line 158
    .line 159
    move-object v3, p1

    .line 160
    move-object v4, p0

    .line 161
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/i9;-><init>(Lcom/google/android/gms/measurement/internal/w9;Lcom/google/android/gms/measurement/internal/d8;JZ)V

    .line 162
    .line 163
    .line 164
    if-eqz p2, :cond_7

    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 167
    .line 168
    .line 169
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :cond_7
    const/16 p2, 0x1e

    .line 174
    .line 175
    if-eq v0, p2, :cond_9

    .line 176
    .line 177
    if-ne v0, v1, :cond_8

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_8
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 181
    .line 182
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/s6;->t(Ljava/lang/Runnable;)V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :cond_9
    :goto_2
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 191
    .line 192
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/s6;->v(Ljava/lang/Runnable;)V

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :catchall_0
    move-exception p1

    .line 201
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    throw p1
.end method

.method public final r()V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->v()Lcom/google/android/gms/measurement/internal/n5;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v3, "Handle tcf update."

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d6;->q()Landroid/content/SharedPreferences;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    new-instance v3, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    sget-object v4, Lcom/google/android/gms/measurement/internal/c5;->a1:Lcom/google/android/gms/measurement/internal/b5;

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/b5;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    check-cast v6, Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    const-string v7, "IABTCF_PurposeConsents"

    .line 48
    .line 49
    const-string v8, "IABTCF_EnableAdvertiserConsentMode"

    .line 50
    .line 51
    const-string v9, "IABTCF_gdprApplies"

    .line 52
    .line 53
    const-string v10, "IABTCF_PolicyVersion"

    .line 54
    .line 55
    const-string v11, "IABTCF_CmpSdkID"

    .line 56
    .line 57
    const-string v12, "IABTCF_VendorConsents"

    .line 58
    .line 59
    const-string v14, ""

    .line 60
    .line 61
    const/4 v5, 0x1

    .line 62
    const/16 v16, 0x0

    .line 63
    .line 64
    if-eqz v6, :cond_9

    .line 65
    .line 66
    sget-object v3, Lcom/google/android/gms/measurement/internal/pc;->a:Lo6/q;

    .line 67
    .line 68
    const/4 v3, 0x7

    .line 69
    new-array v3, v3, [Ljava/util/Map$Entry;

    .line 70
    .line 71
    sget-object v6, Lcom/google/android/gms/internal/measurement/s9;->c:Lcom/google/android/gms/internal/measurement/s9;

    .line 72
    .line 73
    sget-object v15, Lcom/google/android/gms/measurement/internal/oc;->a:Lcom/google/android/gms/measurement/internal/oc;

    .line 74
    .line 75
    invoke-static {v6, v15}, Li6/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    aput-object v6, v3, v16

    .line 80
    .line 81
    sget-object v6, Lcom/google/android/gms/internal/measurement/s9;->d:Lcom/google/android/gms/internal/measurement/s9;

    .line 82
    .line 83
    sget-object v13, Lcom/google/android/gms/measurement/internal/oc;->d:Lcom/google/android/gms/measurement/internal/oc;

    .line 84
    .line 85
    invoke-static {v6, v13}, Li6/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    aput-object v6, v3, v5

    .line 90
    .line 91
    sget-object v6, Lcom/google/android/gms/internal/measurement/s9;->e:Lcom/google/android/gms/internal/measurement/s9;

    .line 92
    .line 93
    invoke-static {v6, v15}, Li6/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    const/16 v17, 0x2

    .line 98
    .line 99
    aput-object v6, v3, v17

    .line 100
    .line 101
    sget-object v6, Lcom/google/android/gms/internal/measurement/s9;->f:Lcom/google/android/gms/internal/measurement/s9;

    .line 102
    .line 103
    invoke-static {v6, v15}, Li6/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    const/4 v15, 0x3

    .line 108
    aput-object v6, v3, v15

    .line 109
    .line 110
    sget-object v6, Lcom/google/android/gms/internal/measurement/s9;->i:Lcom/google/android/gms/internal/measurement/s9;

    .line 111
    .line 112
    invoke-static {v6, v13}, Li6/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    const/4 v15, 0x4

    .line 117
    aput-object v6, v3, v15

    .line 118
    .line 119
    sget-object v6, Lcom/google/android/gms/internal/measurement/s9;->k:Lcom/google/android/gms/internal/measurement/s9;

    .line 120
    .line 121
    invoke-static {v6, v13}, Li6/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    const/4 v15, 0x5

    .line 126
    aput-object v6, v3, v15

    .line 127
    .line 128
    sget-object v6, Lcom/google/android/gms/internal/measurement/s9;->l:Lcom/google/android/gms/internal/measurement/s9;

    .line 129
    .line 130
    invoke-static {v6, v13}, Li6/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    const/4 v13, 0x6

    .line 135
    aput-object v6, v3, v13

    .line 136
    .line 137
    invoke-static {v3}, Lo6/r;->n([Ljava/util/Map$Entry;)Lo6/r;

    .line 138
    .line 139
    .line 140
    move-result-object v18

    .line 141
    const-string v3, "CH"

    .line 142
    .line 143
    invoke-static {v3}, Lo6/s;->C(Ljava/lang/Object;)Lo6/s;

    .line 144
    .line 145
    .line 146
    move-result-object v20

    .line 147
    new-array v3, v15, [C

    .line 148
    .line 149
    const-string v6, "IABTCF_TCString"

    .line 150
    .line 151
    invoke-interface {v2, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result v32

    .line 155
    invoke-static {v2, v11}, Lcom/google/android/gms/measurement/internal/pc;->b(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v22

    .line 159
    invoke-static {v2, v10}, Lcom/google/android/gms/measurement/internal/pc;->b(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    move-result v25

    .line 163
    invoke-static {v2, v9}, Lcom/google/android/gms/measurement/internal/pc;->b(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    move-result v24

    .line 167
    const-string v6, "IABTCF_PurposeOneTreatment"

    .line 168
    .line 169
    invoke-static {v2, v6}, Lcom/google/android/gms/measurement/internal/pc;->b(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    move-result v26

    .line 173
    invoke-static {v2, v8}, Lcom/google/android/gms/measurement/internal/pc;->b(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    move-result v23

    .line 177
    const-string v6, "IABTCF_PublisherCC"

    .line 178
    .line 179
    invoke-static {v2, v6}, Lcom/google/android/gms/measurement/internal/pc;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v27

    .line 183
    invoke-static {}, Lo6/r;->a()Lo6/r$a;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    invoke-virtual/range {v18 .. v18}, Lo6/r;->j()Lo6/s;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    invoke-virtual {v8}, Lo6/s;->A()Lo6/r0;

    .line 192
    .line 193
    .line 194
    move-result-object v8

    .line 195
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 196
    .line 197
    .line 198
    move-result v9

    .line 199
    const/16 v10, 0x2f3

    .line 200
    .line 201
    if-eqz v9, :cond_6

    .line 202
    .line 203
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v9

    .line 207
    check-cast v9, Lcom/google/android/gms/internal/measurement/s9;

    .line 208
    .line 209
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/s9;->zza()I

    .line 210
    .line 211
    .line 212
    move-result v11

    .line 213
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v13

    .line 217
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 218
    .line 219
    .line 220
    move-result v13

    .line 221
    new-instance v15, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    add-int/lit8 v13, v13, 0x1c

    .line 224
    .line 225
    invoke-direct {v15, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 226
    .line 227
    .line 228
    const-string v13, "IABTCF_PublisherRestrictions"

    .line 229
    .line 230
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v11

    .line 240
    invoke-static {v2, v11}, Lcom/google/android/gms/measurement/internal/pc;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v11

    .line 244
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 245
    .line 246
    .line 247
    move-result v13

    .line 248
    if-nez v13, :cond_5

    .line 249
    .line 250
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 251
    .line 252
    .line 253
    move-result v13

    .line 254
    if-ge v13, v10, :cond_0

    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_0
    const/16 v10, 0x2f2

    .line 258
    .line 259
    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    .line 260
    .line 261
    .line 262
    move-result v11

    .line 263
    const/16 v10, 0xa

    .line 264
    .line 265
    invoke-static {v11, v10}, Ljava/lang/Character;->digit(CI)I

    .line 266
    .line 267
    .line 268
    move-result v10

    .line 269
    if-ltz v10, :cond_4

    .line 270
    .line 271
    invoke-static {}, Lcom/google/android/gms/internal/measurement/t9;->values()[Lcom/google/android/gms/internal/measurement/t9;

    .line 272
    .line 273
    .line 274
    move-result-object v11

    .line 275
    array-length v11, v11

    .line 276
    if-le v10, v11, :cond_1

    .line 277
    .line 278
    goto :goto_1

    .line 279
    :cond_1
    if-eqz v10, :cond_4

    .line 280
    .line 281
    if-eq v10, v5, :cond_3

    .line 282
    .line 283
    const/4 v11, 0x2

    .line 284
    if-eq v10, v11, :cond_2

    .line 285
    .line 286
    sget-object v10, Lcom/google/android/gms/internal/measurement/t9;->e:Lcom/google/android/gms/internal/measurement/t9;

    .line 287
    .line 288
    goto :goto_3

    .line 289
    :cond_2
    sget-object v10, Lcom/google/android/gms/internal/measurement/t9;->d:Lcom/google/android/gms/internal/measurement/t9;

    .line 290
    .line 291
    goto :goto_3

    .line 292
    :cond_3
    sget-object v10, Lcom/google/android/gms/internal/measurement/t9;->c:Lcom/google/android/gms/internal/measurement/t9;

    .line 293
    .line 294
    goto :goto_3

    .line 295
    :cond_4
    :goto_1
    sget-object v10, Lcom/google/android/gms/internal/measurement/t9;->b:Lcom/google/android/gms/internal/measurement/t9;

    .line 296
    .line 297
    goto :goto_3

    .line 298
    :cond_5
    :goto_2
    sget-object v10, Lcom/google/android/gms/internal/measurement/t9;->e:Lcom/google/android/gms/internal/measurement/t9;

    .line 299
    .line 300
    :goto_3
    invoke-virtual {v6, v9, v10}, Lo6/r$a;->f(Ljava/lang/Object;Ljava/lang/Object;)Lo6/r$a;

    .line 301
    .line 302
    .line 303
    goto :goto_0

    .line 304
    :cond_6
    invoke-virtual {v6}, Lo6/r$a;->c()Lo6/r;

    .line 305
    .line 306
    .line 307
    move-result-object v19

    .line 308
    invoke-static {v2, v7}, Lcom/google/android/gms/measurement/internal/pc;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v28

    .line 312
    invoke-static {v2, v12}, Lcom/google/android/gms/measurement/internal/pc;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v6

    .line 316
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 317
    .line 318
    .line 319
    move-result v7

    .line 320
    const/16 v8, 0x31

    .line 321
    .line 322
    if-nez v7, :cond_7

    .line 323
    .line 324
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 325
    .line 326
    .line 327
    move-result v7

    .line 328
    if-lt v7, v10, :cond_7

    .line 329
    .line 330
    const/16 v7, 0x2f2

    .line 331
    .line 332
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    .line 333
    .line 334
    .line 335
    move-result v6

    .line 336
    if-ne v6, v8, :cond_7

    .line 337
    .line 338
    move/from16 v30, v5

    .line 339
    .line 340
    goto :goto_4

    .line 341
    :cond_7
    move/from16 v30, v16

    .line 342
    .line 343
    :goto_4
    const-string v6, "IABTCF_PurposeLegitimateInterests"

    .line 344
    .line 345
    invoke-static {v2, v6}, Lcom/google/android/gms/measurement/internal/pc;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v29

    .line 349
    const-string v6, "IABTCF_VendorLegitimateInterests"

    .line 350
    .line 351
    invoke-static {v2, v6}, Lcom/google/android/gms/measurement/internal/pc;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 356
    .line 357
    .line 358
    move-result v6

    .line 359
    if-nez v6, :cond_8

    .line 360
    .line 361
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 362
    .line 363
    .line 364
    move-result v6

    .line 365
    if-lt v6, v10, :cond_8

    .line 366
    .line 367
    const/16 v6, 0x2f2

    .line 368
    .line 369
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    if-ne v2, v8, :cond_8

    .line 374
    .line 375
    move/from16 v31, v5

    .line 376
    .line 377
    goto :goto_5

    .line 378
    :cond_8
    move/from16 v31, v16

    .line 379
    .line 380
    :goto_5
    const/16 v2, 0x32

    .line 381
    .line 382
    aput-char v2, v3, v16

    .line 383
    .line 384
    new-instance v2, Lcom/google/android/gms/measurement/internal/nc;

    .line 385
    .line 386
    move-object/from16 v21, v3

    .line 387
    .line 388
    invoke-static/range {v18 .. v32}, Lcom/google/android/gms/measurement/internal/pc;->d(Lo6/r;Lo6/r;Lo6/s;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/util/Map;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    invoke-direct {v2, v3}, Lcom/google/android/gms/measurement/internal/nc;-><init>(Ljava/util/Map;)V

    .line 393
    .line 394
    .line 395
    goto :goto_6

    .line 396
    :cond_9
    invoke-static {v2, v12}, Lcom/google/android/gms/measurement/internal/pc;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v6

    .line 400
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v12

    .line 404
    if-nez v12, :cond_a

    .line 405
    .line 406
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 407
    .line 408
    .line 409
    move-result v12

    .line 410
    const/16 v13, 0x2f2

    .line 411
    .line 412
    if-le v12, v13, :cond_a

    .line 413
    .line 414
    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    .line 415
    .line 416
    .line 417
    move-result v6

    .line 418
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v6

    .line 422
    const-string v12, "GoogleConsent"

    .line 423
    .line 424
    invoke-interface {v3, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    :cond_a
    invoke-static {v2, v9}, Lcom/google/android/gms/measurement/internal/pc;->b(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    .line 428
    .line 429
    .line 430
    move-result v6

    .line 431
    const/4 v9, -0x1

    .line 432
    if-eq v6, v9, :cond_b

    .line 433
    .line 434
    const-string v12, "gdprApplies"

    .line 435
    .line 436
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v6

    .line 440
    invoke-interface {v3, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    :cond_b
    invoke-static {v2, v8}, Lcom/google/android/gms/measurement/internal/pc;->b(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    .line 444
    .line 445
    .line 446
    move-result v6

    .line 447
    if-eq v6, v9, :cond_c

    .line 448
    .line 449
    const-string v8, "EnableAdvertiserConsentMode"

    .line 450
    .line 451
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v6

    .line 455
    invoke-interface {v3, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    :cond_c
    invoke-static {v2, v10}, Lcom/google/android/gms/measurement/internal/pc;->b(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    .line 459
    .line 460
    .line 461
    move-result v6

    .line 462
    if-eq v6, v9, :cond_d

    .line 463
    .line 464
    const-string v8, "PolicyVersion"

    .line 465
    .line 466
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v6

    .line 470
    invoke-interface {v3, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    :cond_d
    invoke-static {v2, v7}, Lcom/google/android/gms/measurement/internal/pc;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v6

    .line 477
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    move-result v7

    .line 481
    if-nez v7, :cond_e

    .line 482
    .line 483
    const-string v7, "PurposeConsents"

    .line 484
    .line 485
    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    :cond_e
    invoke-static {v2, v11}, Lcom/google/android/gms/measurement/internal/pc;->b(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    .line 489
    .line 490
    .line 491
    move-result v2

    .line 492
    if-eq v2, v9, :cond_f

    .line 493
    .line 494
    const-string v6, "CmpSdkID"

    .line 495
    .line 496
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v2

    .line 500
    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    :cond_f
    new-instance v2, Lcom/google/android/gms/measurement/internal/nc;

    .line 504
    .line 505
    invoke-direct {v2, v3}, Lcom/google/android/gms/measurement/internal/nc;-><init>(Ljava/util/Map;)V

    .line 506
    .line 507
    .line 508
    :goto_6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 509
    .line 510
    .line 511
    move-result-object v3

    .line 512
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 513
    .line 514
    .line 515
    move-result-object v3

    .line 516
    const-string v6, "Tcf preferences read"

    .line 517
    .line 518
    invoke-virtual {v3, v6, v2}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    const/4 v6, 0x0

    .line 526
    invoke-virtual {v3, v6, v4}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)Z

    .line 527
    .line 528
    .line 529
    move-result v3

    .line 530
    const/16 v4, -0x1e

    .line 531
    .line 532
    const-string v6, "_tcf"

    .line 533
    .line 534
    const-string v7, "auto"

    .line 535
    .line 536
    const-string v8, "_tcfd"

    .line 537
    .line 538
    const-string v9, "Consent generated from Tcf"

    .line 539
    .line 540
    if-eqz v3, :cond_14

    .line 541
    .line 542
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 543
    .line 544
    .line 545
    move-result-object v3

    .line 546
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d6;->p()Landroid/content/SharedPreferences;

    .line 550
    .line 551
    .line 552
    move-result-object v3

    .line 553
    const-string v10, "stored_tcf_param"

    .line 554
    .line 555
    invoke-interface {v3, v10, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v3

    .line 559
    new-instance v10, Ljava/util/HashMap;

    .line 560
    .line 561
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 562
    .line 563
    .line 564
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 565
    .line 566
    .line 567
    move-result v11

    .line 568
    if-eqz v11, :cond_10

    .line 569
    .line 570
    new-instance v3, Lcom/google/android/gms/measurement/internal/nc;

    .line 571
    .line 572
    invoke-direct {v3, v10}, Lcom/google/android/gms/measurement/internal/nc;-><init>(Ljava/util/Map;)V

    .line 573
    .line 574
    .line 575
    goto :goto_8

    .line 576
    :cond_10
    const-string v11, ";"

    .line 577
    .line 578
    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v3

    .line 582
    array-length v11, v3

    .line 583
    move/from16 v12, v16

    .line 584
    .line 585
    :goto_7
    if-ge v12, v11, :cond_12

    .line 586
    .line 587
    aget-object v13, v3, v12

    .line 588
    .line 589
    const-string v14, "="

    .line 590
    .line 591
    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v13

    .line 595
    array-length v14, v13

    .line 596
    const/4 v15, 0x2

    .line 597
    if-lt v14, v15, :cond_11

    .line 598
    .line 599
    sget-object v14, Lcom/google/android/gms/measurement/internal/pc;->a:Lo6/q;

    .line 600
    .line 601
    aget-object v15, v13, v16

    .line 602
    .line 603
    invoke-virtual {v14, v15}, Lo6/q;->contains(Ljava/lang/Object;)Z

    .line 604
    .line 605
    .line 606
    move-result v14

    .line 607
    if-eqz v14, :cond_11

    .line 608
    .line 609
    aget-object v14, v13, v16

    .line 610
    .line 611
    aget-object v13, v13, v5

    .line 612
    .line 613
    invoke-interface {v10, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    :cond_11
    add-int/lit8 v12, v12, 0x1

    .line 617
    .line 618
    goto :goto_7

    .line 619
    :cond_12
    new-instance v3, Lcom/google/android/gms/measurement/internal/nc;

    .line 620
    .line 621
    invoke-direct {v3, v10}, Lcom/google/android/gms/measurement/internal/nc;-><init>(Ljava/util/Map;)V

    .line 622
    .line 623
    .line 624
    :goto_8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 625
    .line 626
    .line 627
    move-result-object v5

    .line 628
    invoke-virtual {v5, v2}, Lcom/google/android/gms/measurement/internal/d6;->x(Lcom/google/android/gms/measurement/internal/nc;)Z

    .line 629
    .line 630
    .line 631
    move-result v5

    .line 632
    if-eqz v5, :cond_16

    .line 633
    .line 634
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/nc;->b()Landroid/os/Bundle;

    .line 635
    .line 636
    .line 637
    move-result-object v5

    .line 638
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 639
    .line 640
    .line 641
    move-result-object v10

    .line 642
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 643
    .line 644
    .line 645
    move-result-object v10

    .line 646
    invoke-virtual {v10, v9, v5}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 647
    .line 648
    .line 649
    sget-object v9, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 650
    .line 651
    if-eq v5, v9, :cond_13

    .line 652
    .line 653
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 654
    .line 655
    .line 656
    move-result-object v1

    .line 657
    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 658
    .line 659
    .line 660
    move-result-wide v9

    .line 661
    invoke-virtual {v0, v5, v4, v9, v10}, Lcom/google/android/gms/measurement/internal/w9;->o0(Landroid/os/Bundle;IJ)V

    .line 662
    .line 663
    .line 664
    :cond_13
    new-instance v1, Landroid/os/Bundle;

    .line 665
    .line 666
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 667
    .line 668
    .line 669
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/nc;->d(Lcom/google/android/gms/measurement/internal/nc;)Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v3

    .line 673
    const-string v4, "_tcfm"

    .line 674
    .line 675
    invoke-virtual {v1, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/nc;->c()Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v3

    .line 682
    const-string v4, "_tcfd2"

    .line 683
    .line 684
    invoke-virtual {v1, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    .line 686
    .line 687
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/nc;->e()Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v2

    .line 691
    invoke-virtual {v1, v8, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    invoke-virtual {v0, v7, v6, v1}, Lcom/google/android/gms/measurement/internal/w9;->t(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 695
    .line 696
    .line 697
    return-void

    .line 698
    :cond_14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 699
    .line 700
    .line 701
    move-result-object v3

    .line 702
    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/d6;->x(Lcom/google/android/gms/measurement/internal/nc;)Z

    .line 703
    .line 704
    .line 705
    move-result v3

    .line 706
    if-eqz v3, :cond_16

    .line 707
    .line 708
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/nc;->b()Landroid/os/Bundle;

    .line 709
    .line 710
    .line 711
    move-result-object v3

    .line 712
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 713
    .line 714
    .line 715
    move-result-object v5

    .line 716
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 717
    .line 718
    .line 719
    move-result-object v5

    .line 720
    invoke-virtual {v5, v9, v3}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 721
    .line 722
    .line 723
    sget-object v5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 724
    .line 725
    if-eq v3, v5, :cond_15

    .line 726
    .line 727
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 728
    .line 729
    .line 730
    move-result-object v1

    .line 731
    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 732
    .line 733
    .line 734
    move-result-wide v9

    .line 735
    invoke-virtual {v0, v3, v4, v9, v10}, Lcom/google/android/gms/measurement/internal/w9;->o0(Landroid/os/Bundle;IJ)V

    .line 736
    .line 737
    .line 738
    :cond_15
    new-instance v1, Landroid/os/Bundle;

    .line 739
    .line 740
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 741
    .line 742
    .line 743
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/nc;->e()Ljava/lang/String;

    .line 744
    .line 745
    .line 746
    move-result-object v2

    .line 747
    invoke-virtual {v1, v8, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {v0, v7, v6, v1}, Lcom/google/android/gms/measurement/internal/w9;->t(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 751
    .line 752
    .line 753
    :cond_16
    return-void
.end method

.method final r0(Ljava/lang/Runnable;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/s6;->p()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_7

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/s6;->q()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_6

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->c()Lcom/google/android/gms/measurement/internal/f;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->a()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_5

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v2, "[sgtm] Started client-side batch upload work."

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    move v2, v1

    .line 50
    move v3, v2

    .line 51
    move v4, v3

    .line 52
    :goto_0
    if-nez v2, :cond_4

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const-string v5, "[sgtm] Getting upload batches from service (FE)"

    .line 63
    .line 64
    invoke-virtual {v2, v5}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 68
    .line 69
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    new-instance v11, Lcom/google/android/gms/measurement/internal/v9;

    .line 77
    .line 78
    invoke-direct {v11, p0, v2}, Lcom/google/android/gms/measurement/internal/v9;-><init>(Lcom/google/android/gms/measurement/internal/w9;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 79
    .line 80
    .line 81
    const-wide/16 v8, 0x2710

    .line 82
    .line 83
    const-string v10, "[sgtm] Getting upload batches"

    .line 84
    .line 85
    move-object v7, v2

    .line 86
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/s6;->u(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Lcom/google/android/gms/measurement/internal/yc;

    .line 94
    .line 95
    if-eqz v2, :cond_4

    .line 96
    .line 97
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/yc;->a:Ljava/util/List;

    .line 98
    .line 99
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_0

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    const-string v7, "[sgtm] Retrieved upload batches. count"

    .line 123
    .line 124
    invoke-virtual {v5, v7, v6}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    add-int/2addr v3, v5

    .line 132
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    if-eqz v5, :cond_3

    .line 141
    .line 142
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    check-cast v5, Lcom/google/android/gms/measurement/internal/wc;

    .line 147
    .line 148
    invoke-direct {p0, v5}, Lcom/google/android/gms/measurement/internal/w9;->e0(Lcom/google/android/gms/measurement/internal/wc;)Li6/c0;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    sget-object v6, Li6/c0;->c:Li6/c0;

    .line 153
    .line 154
    if-ne v5, v6, :cond_2

    .line 155
    .line 156
    add-int/lit8 v4, v4, 0x1

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_2
    sget-object v6, Li6/c0;->e:Li6/c0;

    .line 160
    .line 161
    if-ne v5, v6, :cond_1

    .line 162
    .line 163
    const/4 v2, 0x1

    .line 164
    goto :goto_0

    .line 165
    :cond_3
    move v2, v1

    .line 166
    goto :goto_0

    .line 167
    :cond_4
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    const-string v3, "[sgtm] Completed client-side batch upload work. total, success"

    .line 184
    .line 185
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    const-string v0, "Cannot retrieve and upload batches from main thread"

    .line 201
    .line 202
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    const-string v0, "Cannot retrieve and upload batches from analytics network thread"

    .line 215
    .line 216
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    return-void

    .line 220
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    const-string v0, "Cannot retrieve and upload batches from analytics worker thread"

    .line 229
    .line 230
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    return-void
.end method

.method public final s()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->v()Lcom/google/android/gms/measurement/internal/n5;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "Register tcfPrefChangeListener."

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/w9;->u:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 24
    .line 25
    new-instance v2, Lcom/google/android/gms/measurement/internal/p8;

    .line 26
    .line 27
    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/measurement/internal/p8;-><init>(Lcom/google/android/gms/measurement/internal/w9;Lcom/google/android/gms/measurement/internal/b8;)V

    .line 28
    .line 29
    .line 30
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/w9;->v:Lcom/google/android/gms/measurement/internal/x;

    .line 31
    .line 32
    new-instance v1, Lcom/google/android/gms/measurement/internal/r9;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/r9;-><init>(Lcom/google/android/gms/measurement/internal/w9;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/w9;->u:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 38
    .line 39
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d6;->q()Landroid/content/SharedPreferences;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/w9;->u:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 48
    .line 49
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method final s0(J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w9;->l:Lcom/google/android/gms/measurement/internal/x;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 9
    .line 10
    new-instance v1, Lcom/google/android/gms/measurement/internal/h8;

    .line 11
    .line 12
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/h8;-><init>(Lcom/google/android/gms/measurement/internal/w9;Lcom/google/android/gms/measurement/internal/b8;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/w9;->l:Lcom/google/android/gms/measurement/internal/x;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w9;->l:Lcom/google/android/gms/measurement/internal/x;

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/x;->b(J)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method final t(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v4

    .line 14
    move-object v1, p0

    .line 15
    move-object v2, p1

    .line 16
    move-object v3, p2

    .line 17
    move-object v6, p3

    .line 18
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/w9;->u(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method final t0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w9;->l:Lcom/google/android/gms/measurement/internal/x;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/x;->d()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method final u(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    move-object v10, p0

    .line 5
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/w9;->d:Li6/w;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/yd;->N(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    move v7, v0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    move v7, v1

    .line 21
    :goto_1
    const/4 v6, 0x1

    .line 22
    const/4 v8, 0x1

    .line 23
    const/4 v9, 0x0

    .line 24
    move-object v0, p0

    .line 25
    move-object v1, p1

    .line 26
    move-object v2, p2

    .line 27
    move-wide v3, p3

    .line 28
    move-object/from16 v5, p5

    .line 29
    .line 30
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/w9;->v(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method final u0()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/nf;->a()Z

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    sget-object v3, Lcom/google/android/gms/measurement/internal/c5;->R0:Lcom/google/android/gms/measurement/internal/b5;

    .line 12
    .line 13
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/s6;->p()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->c()Lcom/google/android/gms/measurement/internal/f;

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->a()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "Getting trigger URIs (FE)"

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    new-instance v8, Lcom/google/android/gms/measurement/internal/n9;

    .line 64
    .line 65
    invoke-direct {v8, p0, v1}, Lcom/google/android/gms/measurement/internal/n9;-><init>(Lcom/google/android/gms/measurement/internal/w9;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 66
    .line 67
    .line 68
    const-wide/16 v5, 0x2710

    .line 69
    .line 70
    const-string v7, "get trigger URIs"

    .line 71
    .line 72
    move-object v4, v1

    .line 73
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/s6;->u(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Ljava/util/List;

    .line 81
    .line 82
    if-nez v1, :cond_0

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->q()Lcom/google/android/gms/measurement/internal/n5;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const-string v1, "Timed out waiting for get trigger URIs"

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    new-instance v2, Lcom/google/android/gms/measurement/internal/o9;

    .line 103
    .line 104
    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/measurement/internal/o9;-><init>(Lcom/google/android/gms/measurement/internal/w9;Ljava/util/List;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/s6;->t(Ljava/lang/Runnable;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const-string v1, "Cannot get trigger URIs from main thread"

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    const-string v1, "Cannot get trigger URIs from analytics worker thread"

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :cond_3
    return-void
.end method

.method protected final v(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 24

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    move-wide/from16 v10, p3

    .line 8
    .line 9
    move-object/from16 v12, p5

    .line 10
    .line 11
    invoke-static/range {p1 .. p1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-static/range {p5 .. p5}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 21
    .line 22
    .line 23
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->g()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_25

    .line 30
    .line 31
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->L()Lcom/google/android/gms/measurement/internal/f5;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f5;->w()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-interface {v1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->v()Lcom/google/android/gms/measurement/internal/n5;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v1, "Dropping non-safelisted event. event name, origin"

    .line 61
    .line 62
    invoke-virtual {v0, v1, v9, v8}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_1
    :goto_0
    iget-boolean v1, v7, Lcom/google/android/gms/measurement/internal/w9;->f:Z

    .line 67
    .line 68
    const/4 v13, 0x0

    .line 69
    const/4 v14, 0x0

    .line 70
    const/4 v15, 0x1

    .line 71
    if-nez v1, :cond_3

    .line 72
    .line 73
    iput-boolean v15, v7, Lcom/google/android/gms/measurement/internal/w9;->f:Z

    .line 74
    .line 75
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->G()Z

    .line 76
    .line 77
    .line 78
    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 79
    const-string v1, "com.google.android.gms.tagmanager.TagManagerService"

    .line 80
    .line 81
    if-nez v0, :cond_2

    .line 82
    .line 83
    :try_start_1
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->e()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v1, v15, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    goto :goto_1

    .line 98
    :cond_2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    :goto_1
    :try_start_2
    const-string v1, "initialize"

    .line 103
    .line 104
    new-array v2, v15, [Ljava/lang/Class;

    .line 105
    .line 106
    const-class v3, Landroid/content/Context;

    .line 107
    .line 108
    aput-object v3, v2, v14

    .line 109
    .line 110
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    new-array v1, v15, [Ljava/lang/Object;

    .line 115
    .line 116
    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 117
    .line 118
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->e()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    aput-object v2, v1, v14

    .line 123
    .line 124
    invoke-virtual {v0, v13, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :catch_0
    move-exception v0

    .line 129
    :try_start_3
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 130
    .line 131
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    const-string v2, "Failed to invoke Tag Manager\'s initialize() method"

    .line 140
    .line 141
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :catch_1
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->u()Lcom/google/android/gms/measurement/internal/n5;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    const-string v1, "Tag Manager is not found and thus will not be used"

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :cond_3
    :goto_2
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    sget-object v2, Lcom/google/android/gms/measurement/internal/c5;->g1:Lcom/google/android/gms/measurement/internal/b5;

    .line 167
    .line 168
    invoke-virtual {v1, v13, v2}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-nez v1, :cond_4

    .line 173
    .line 174
    const-string v1, "_cmp"

    .line 175
    .line 176
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_4

    .line 181
    .line 182
    const-string v1, "gclid"

    .line 183
    .line 184
    invoke-virtual {v12, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-eqz v2, :cond_4

    .line 189
    .line 190
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->c()Lcom/google/android/gms/measurement/internal/f;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v12, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 202
    .line 203
    .line 204
    move-result-wide v5

    .line 205
    const-string v2, "auto"

    .line 206
    .line 207
    const-string v3, "_lgclid"

    .line 208
    .line 209
    move-object/from16 v1, p0

    .line 210
    .line 211
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/w9;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 212
    .line 213
    .line 214
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->c()Lcom/google/android/gms/measurement/internal/f;

    .line 215
    .line 216
    .line 217
    if-eqz p6, :cond_5

    .line 218
    .line 219
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/yd;->U(Ljava/lang/String;)Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-eqz v1, :cond_5

    .line 224
    .line 225
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d6;->z:Lcom/google/android/gms/measurement/internal/z5;

    .line 234
    .line 235
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/z5;->a()Landroid/os/Bundle;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-virtual {v1, v12, v2}, Lcom/google/android/gms/measurement/internal/yd;->w(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 240
    .line 241
    .line 242
    :cond_5
    const/16 v1, 0x28

    .line 243
    .line 244
    if-nez p8, :cond_a

    .line 245
    .line 246
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->c()Lcom/google/android/gms/measurement/internal/f;

    .line 247
    .line 248
    .line 249
    const-string v2, "_iap"

    .line 250
    .line 251
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-nez v2, :cond_a

    .line 256
    .line 257
    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 258
    .line 259
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    const-string v4, "event"

    .line 264
    .line 265
    invoke-virtual {v3, v4, v9}, Lcom/google/android/gms/measurement/internal/yd;->t0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 266
    .line 267
    .line 268
    move-result v5

    .line 269
    if-nez v5, :cond_6

    .line 270
    .line 271
    :goto_3
    const/4 v6, 0x2

    .line 272
    goto :goto_4

    .line 273
    :cond_6
    sget-object v5, Li6/t;->a:[Ljava/lang/String;

    .line 274
    .line 275
    sget-object v6, Li6/t;->b:[Ljava/lang/String;

    .line 276
    .line 277
    invoke-virtual {v3, v4, v5, v6, v9}, Lcom/google/android/gms/measurement/internal/yd;->v0(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    .line 278
    .line 279
    .line 280
    move-result v5

    .line 281
    if-nez v5, :cond_7

    .line 282
    .line 283
    const/16 v6, 0xd

    .line 284
    .line 285
    goto :goto_4

    .line 286
    :cond_7
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 287
    .line 288
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v3, v4, v1, v9}, Lcom/google/android/gms/measurement/internal/yd;->w0(Ljava/lang/String;ILjava/lang/String;)Z

    .line 292
    .line 293
    .line 294
    move-result v3

    .line 295
    if-nez v3, :cond_8

    .line 296
    .line 297
    goto :goto_3

    .line 298
    :cond_8
    move v6, v14

    .line 299
    :goto_4
    if-eqz v6, :cond_a

    .line 300
    .line 301
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p5;->q()Lcom/google/android/gms/measurement/internal/n5;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/i5;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    const-string v4, "Invalid public event name. Event will not be logged (FE)"

    .line 318
    .line 319
    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, v9, v1, v15}, Lcom/google/android/gms/measurement/internal/yd;->q(Ljava/lang/String;IZ)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    if-eqz v9, :cond_9

    .line 334
    .line 335
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    .line 336
    .line 337
    .line 338
    move-result v14

    .line 339
    :cond_9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/w9;->w:Lcom/google/android/gms/measurement/internal/xd;

    .line 344
    .line 345
    const/4 v3, 0x0

    .line 346
    const-string v4, "_ev"

    .line 347
    .line 348
    move-object/from16 p1, v1

    .line 349
    .line 350
    move-object/from16 p2, v2

    .line 351
    .line 352
    move-object/from16 p3, v3

    .line 353
    .line 354
    move/from16 p4, v6

    .line 355
    .line 356
    move-object/from16 p5, v4

    .line 357
    .line 358
    move-object/from16 p6, v0

    .line 359
    .line 360
    move/from16 p7, v14

    .line 361
    .line 362
    invoke-virtual/range {p1 .. p7}, Lcom/google/android/gms/measurement/internal/yd;->B(Lcom/google/android/gms/measurement/internal/xd;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 363
    .line 364
    .line 365
    return-void

    .line 366
    :cond_a
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->c()Lcom/google/android/gms/measurement/internal/f;

    .line 367
    .line 368
    .line 369
    iget-object v6, v7, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 370
    .line 371
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/w6;->I()Lcom/google/android/gms/measurement/internal/la;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    invoke-virtual {v2, v14}, Lcom/google/android/gms/measurement/internal/la;->q(Z)Lcom/google/android/gms/measurement/internal/da;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    const-string v3, "_sc"

    .line 380
    .line 381
    if-eqz v2, :cond_b

    .line 382
    .line 383
    invoke-virtual {v12, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 384
    .line 385
    .line 386
    move-result v4

    .line 387
    if-nez v4, :cond_b

    .line 388
    .line 389
    iput-boolean v15, v2, Lcom/google/android/gms/measurement/internal/da;->d:Z

    .line 390
    .line 391
    :cond_b
    if-eqz p6, :cond_c

    .line 392
    .line 393
    if-nez p8, :cond_c

    .line 394
    .line 395
    move v4, v15

    .line 396
    goto :goto_5

    .line 397
    :cond_c
    move v4, v14

    .line 398
    :goto_5
    invoke-static {v2, v12, v4}, Lcom/google/android/gms/measurement/internal/yd;->k0(Lcom/google/android/gms/measurement/internal/da;Landroid/os/Bundle;Z)V

    .line 399
    .line 400
    .line 401
    const-string v2, "am"

    .line 402
    .line 403
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result v2

    .line 407
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/yd;->N(Ljava/lang/String;)Z

    .line 408
    .line 409
    .line 410
    move-result v4

    .line 411
    if-eqz p6, :cond_e

    .line 412
    .line 413
    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/w9;->d:Li6/w;

    .line 414
    .line 415
    if-eqz v5, :cond_e

    .line 416
    .line 417
    if-nez v4, :cond_e

    .line 418
    .line 419
    if-eqz v2, :cond_d

    .line 420
    .line 421
    move/from16 v16, v15

    .line 422
    .line 423
    goto :goto_6

    .line 424
    :cond_d
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->v()Lcom/google/android/gms/measurement/internal/n5;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    invoke-virtual {v2, v9}, Lcom/google/android/gms/measurement/internal/i5;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    invoke-virtual {v0, v12}, Lcom/google/android/gms/measurement/internal/i5;->e(Landroid/os/Bundle;)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    const-string v3, "Passing event to registered event handler (FE)"

    .line 449
    .line 450
    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 451
    .line 452
    .line 453
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/w9;->d:Li6/w;

    .line 454
    .line 455
    invoke-static {v0}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/w9;->d:Li6/w;

    .line 459
    .line 460
    move-object/from16 v2, p1

    .line 461
    .line 462
    move-object/from16 v3, p2

    .line 463
    .line 464
    move-object/from16 v4, p5

    .line 465
    .line 466
    move-wide/from16 v5, p3

    .line 467
    .line 468
    invoke-interface/range {v1 .. v6}, Li6/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 469
    .line 470
    .line 471
    return-void

    .line 472
    :cond_e
    move/from16 v16, v2

    .line 473
    .line 474
    :goto_6
    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 475
    .line 476
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w6;->m()Z

    .line 477
    .line 478
    .line 479
    move-result v2

    .line 480
    if-nez v2, :cond_f

    .line 481
    .line 482
    goto/16 :goto_11

    .line 483
    .line 484
    :cond_f
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    invoke-virtual {v2, v9}, Lcom/google/android/gms/measurement/internal/yd;->x0(Ljava/lang/String;)I

    .line 489
    .line 490
    .line 491
    move-result v2

    .line 492
    if-eqz v2, :cond_11

    .line 493
    .line 494
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 495
    .line 496
    .line 497
    move-result-object v3

    .line 498
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p5;->q()Lcom/google/android/gms/measurement/internal/n5;

    .line 499
    .line 500
    .line 501
    move-result-object v3

    .line 502
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    .line 503
    .line 504
    .line 505
    move-result-object v4

    .line 506
    invoke-virtual {v4, v9}, Lcom/google/android/gms/measurement/internal/i5;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v4

    .line 510
    const-string v6, "Invalid event name. Event will not be logged (FE)"

    .line 511
    .line 512
    invoke-virtual {v3, v6, v4}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 516
    .line 517
    .line 518
    move-result-object v3

    .line 519
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v3, v9, v1, v15}, Lcom/google/android/gms/measurement/internal/yd;->q(Ljava/lang/String;IZ)Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    if-eqz v9, :cond_10

    .line 527
    .line 528
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    .line 529
    .line 530
    .line 531
    move-result v14

    .line 532
    :cond_10
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    iget-object v3, v7, Lcom/google/android/gms/measurement/internal/w9;->w:Lcom/google/android/gms/measurement/internal/xd;

    .line 537
    .line 538
    const-string v4, "_ev"

    .line 539
    .line 540
    move-object/from16 p1, v1

    .line 541
    .line 542
    move-object/from16 p2, v3

    .line 543
    .line 544
    move-object/from16 p3, p9

    .line 545
    .line 546
    move/from16 p4, v2

    .line 547
    .line 548
    move-object/from16 p5, v4

    .line 549
    .line 550
    move-object/from16 p6, v0

    .line 551
    .line 552
    move/from16 p7, v14

    .line 553
    .line 554
    invoke-virtual/range {p1 .. p7}, Lcom/google/android/gms/measurement/internal/yd;->B(Lcom/google/android/gms/measurement/internal/xd;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 555
    .line 556
    .line 557
    return-void

    .line 558
    :cond_11
    const-string v1, "_sn"

    .line 559
    .line 560
    const-string v2, "_si"

    .line 561
    .line 562
    const-string v4, "_o"

    .line 563
    .line 564
    filled-new-array {v4, v1, v3, v2}, [Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    invoke-static {v1}, Lcom/google/android/gms/common/util/e;->b([Ljava/lang/Object;)Ljava/util/List;

    .line 569
    .line 570
    .line 571
    move-result-object v17

    .line 572
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 573
    .line 574
    .line 575
    move-result-object v1

    .line 576
    move-object/from16 v2, p9

    .line 577
    .line 578
    move-object/from16 v3, p2

    .line 579
    .line 580
    move-object/from16 v18, v4

    .line 581
    .line 582
    move-object/from16 v4, p5

    .line 583
    .line 584
    move-object v12, v5

    .line 585
    move-object/from16 v5, v17

    .line 586
    .line 587
    move-object/from16 v17, v6

    .line 588
    .line 589
    move/from16 v6, p8

    .line 590
    .line 591
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/yd;->t(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    .line 592
    .line 593
    .line 594
    move-result-object v5

    .line 595
    invoke-static {v5}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->c()Lcom/google/android/gms/measurement/internal/f;

    .line 599
    .line 600
    .line 601
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/measurement/internal/w6;->I()Lcom/google/android/gms/measurement/internal/la;

    .line 602
    .line 603
    .line 604
    move-result-object v1

    .line 605
    invoke-virtual {v1, v14}, Lcom/google/android/gms/measurement/internal/la;->q(Z)Lcom/google/android/gms/measurement/internal/da;

    .line 606
    .line 607
    .line 608
    move-result-object v1

    .line 609
    const-string v6, "_ae"

    .line 610
    .line 611
    if-eqz v1, :cond_12

    .line 612
    .line 613
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 614
    .line 615
    .line 616
    move-result v1

    .line 617
    if-eqz v1, :cond_12

    .line 618
    .line 619
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/measurement/internal/w6;->z()Lcom/google/android/gms/measurement/internal/mc;

    .line 620
    .line 621
    .line 622
    move-result-object v1

    .line 623
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/mc;->f:Lcom/google/android/gms/measurement/internal/kc;

    .line 624
    .line 625
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/kc;->d:Lcom/google/android/gms/measurement/internal/mc;

    .line 626
    .line 627
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 628
    .line 629
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 630
    .line 631
    .line 632
    move-result-object v2

    .line 633
    invoke-interface {v2}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    .line 634
    .line 635
    .line 636
    move-result-wide v14

    .line 637
    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/kc;->b:J

    .line 638
    .line 639
    sub-long v2, v14, v3

    .line 640
    .line 641
    iput-wide v14, v1, Lcom/google/android/gms/measurement/internal/kc;->b:J

    .line 642
    .line 643
    const-wide/16 v14, 0x0

    .line 644
    .line 645
    cmp-long v1, v2, v14

    .line 646
    .line 647
    if-lez v1, :cond_12

    .line 648
    .line 649
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 650
    .line 651
    .line 652
    move-result-object v1

    .line 653
    invoke-virtual {v1, v5, v2, v3}, Lcom/google/android/gms/measurement/internal/yd;->Z(Landroid/os/Bundle;J)V

    .line 654
    .line 655
    .line 656
    :cond_12
    const-string v1, "auto"

    .line 657
    .line 658
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 659
    .line 660
    .line 661
    move-result v1

    .line 662
    const-string v2, "_ffr"

    .line 663
    .line 664
    if-nez v1, :cond_16

    .line 665
    .line 666
    const-string v1, "_ssr"

    .line 667
    .line 668
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 669
    .line 670
    .line 671
    move-result v1

    .line 672
    if-eqz v1, :cond_16

    .line 673
    .line 674
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 675
    .line 676
    .line 677
    move-result-object v1

    .line 678
    invoke-virtual {v5, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v2

    .line 682
    invoke-static {v2}, Lcom/google/android/gms/common/util/o;->a(Ljava/lang/String;)Z

    .line 683
    .line 684
    .line 685
    move-result v3

    .line 686
    if-eqz v3, :cond_13

    .line 687
    .line 688
    move-object v2, v13

    .line 689
    goto :goto_7

    .line 690
    :cond_13
    if-eqz v2, :cond_14

    .line 691
    .line 692
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v2

    .line 696
    :cond_14
    :goto_7
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 697
    .line 698
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 699
    .line 700
    .line 701
    move-result-object v3

    .line 702
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/d6;->w:Lcom/google/android/gms/measurement/internal/c6;

    .line 703
    .line 704
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/c6;->a()Ljava/lang/String;

    .line 705
    .line 706
    .line 707
    move-result-object v3

    .line 708
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 709
    .line 710
    .line 711
    move-result v3

    .line 712
    if-nez v3, :cond_15

    .line 713
    .line 714
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 715
    .line 716
    .line 717
    move-result-object v1

    .line 718
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d6;->w:Lcom/google/android/gms/measurement/internal/c6;

    .line 719
    .line 720
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/c6;->b(Ljava/lang/String;)V

    .line 721
    .line 722
    .line 723
    goto :goto_8

    .line 724
    :cond_15
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 725
    .line 726
    .line 727
    move-result-object v0

    .line 728
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->v()Lcom/google/android/gms/measurement/internal/n5;

    .line 729
    .line 730
    .line 731
    move-result-object v0

    .line 732
    const-string v1, "Not logging duplicate session_start_with_rollout event"

    .line 733
    .line 734
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    return-void

    .line 738
    :cond_16
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 739
    .line 740
    .line 741
    move-result v1

    .line 742
    if-eqz v1, :cond_17

    .line 743
    .line 744
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 745
    .line 746
    .line 747
    move-result-object v1

    .line 748
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 749
    .line 750
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 751
    .line 752
    .line 753
    move-result-object v1

    .line 754
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d6;->w:Lcom/google/android/gms/measurement/internal/c6;

    .line 755
    .line 756
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c6;->a()Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object v1

    .line 760
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 761
    .line 762
    .line 763
    move-result v3

    .line 764
    if-nez v3, :cond_17

    .line 765
    .line 766
    invoke-virtual {v5, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    .line 768
    .line 769
    :cond_17
    :goto_8
    new-instance v14, Ljava/util/ArrayList;

    .line 770
    .line 771
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 772
    .line 773
    .line 774
    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    .line 776
    .line 777
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 778
    .line 779
    .line 780
    move-result-object v1

    .line 781
    sget-object v2, Lcom/google/android/gms/measurement/internal/c5;->V0:Lcom/google/android/gms/measurement/internal/b5;

    .line 782
    .line 783
    invoke-virtual {v1, v13, v2}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)Z

    .line 784
    .line 785
    .line 786
    move-result v1

    .line 787
    if-eqz v1, :cond_18

    .line 788
    .line 789
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/measurement/internal/w6;->z()Lcom/google/android/gms/measurement/internal/mc;

    .line 790
    .line 791
    .line 792
    move-result-object v1

    .line 793
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/mc;->p()Z

    .line 794
    .line 795
    .line 796
    move-result v1

    .line 797
    goto :goto_9

    .line 798
    :cond_18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 799
    .line 800
    .line 801
    move-result-object v1

    .line 802
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d6;->t:Lcom/google/android/gms/measurement/internal/y5;

    .line 803
    .line 804
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/y5;->a()Z

    .line 805
    .line 806
    .line 807
    move-result v1

    .line 808
    :goto_9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 809
    .line 810
    .line 811
    move-result-object v2

    .line 812
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d6;->q:Lcom/google/android/gms/measurement/internal/a6;

    .line 813
    .line 814
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/a6;->a()J

    .line 815
    .line 816
    .line 817
    move-result-wide v2

    .line 818
    const-wide/16 v19, 0x0

    .line 819
    .line 820
    cmp-long v2, v2, v19

    .line 821
    .line 822
    if-lez v2, :cond_19

    .line 823
    .line 824
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 825
    .line 826
    .line 827
    move-result-object v2

    .line 828
    invoke-virtual {v2, v10, v11}, Lcom/google/android/gms/measurement/internal/d6;->A(J)Z

    .line 829
    .line 830
    .line 831
    move-result v2

    .line 832
    if-eqz v2, :cond_19

    .line 833
    .line 834
    if-eqz v1, :cond_19

    .line 835
    .line 836
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 837
    .line 838
    .line 839
    move-result-object v1

    .line 840
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 841
    .line 842
    .line 843
    move-result-object v1

    .line 844
    const-string v2, "Current session is expired, remove the session number, ID, and engagement time"

    .line 845
    .line 846
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 847
    .line 848
    .line 849
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 850
    .line 851
    .line 852
    move-result-object v1

    .line 853
    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 854
    .line 855
    .line 856
    move-result-wide v21

    .line 857
    const-string v2, "auto"

    .line 858
    .line 859
    const-string v3, "_sid"

    .line 860
    .line 861
    const/4 v4, 0x0

    .line 862
    move-object/from16 v1, p0

    .line 863
    .line 864
    move-object/from16 p5, v14

    .line 865
    .line 866
    move-wide/from16 v13, v19

    .line 867
    .line 868
    move-object v15, v5

    .line 869
    move-object/from16 v23, v6

    .line 870
    .line 871
    move-wide/from16 v5, v21

    .line 872
    .line 873
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/w9;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 874
    .line 875
    .line 876
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 877
    .line 878
    .line 879
    move-result-object v1

    .line 880
    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 881
    .line 882
    .line 883
    move-result-wide v5

    .line 884
    const-string v2, "auto"

    .line 885
    .line 886
    const-string v3, "_sno"

    .line 887
    .line 888
    move-object/from16 v1, p0

    .line 889
    .line 890
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/w9;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 891
    .line 892
    .line 893
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 894
    .line 895
    .line 896
    move-result-object v1

    .line 897
    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 898
    .line 899
    .line 900
    move-result-wide v5

    .line 901
    const-string v2, "auto"

    .line 902
    .line 903
    const-string v3, "_se"

    .line 904
    .line 905
    move-object/from16 v1, p0

    .line 906
    .line 907
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/w9;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 908
    .line 909
    .line 910
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 911
    .line 912
    .line 913
    move-result-object v1

    .line 914
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d6;->r:Lcom/google/android/gms/measurement/internal/a6;

    .line 915
    .line 916
    invoke-virtual {v1, v13, v14}, Lcom/google/android/gms/measurement/internal/a6;->b(J)V

    .line 917
    .line 918
    .line 919
    goto :goto_a

    .line 920
    :cond_19
    move-object v15, v5

    .line 921
    move-object/from16 v23, v6

    .line 922
    .line 923
    move-object/from16 p5, v14

    .line 924
    .line 925
    move-wide/from16 v13, v19

    .line 926
    .line 927
    :goto_a
    const-string v1, "extend_session"

    .line 928
    .line 929
    invoke-virtual {v15, v1, v13, v14}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 930
    .line 931
    .line 932
    move-result-wide v1

    .line 933
    const-wide/16 v3, 0x1

    .line 934
    .line 935
    cmp-long v1, v1, v3

    .line 936
    .line 937
    if-nez v1, :cond_1a

    .line 938
    .line 939
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 940
    .line 941
    .line 942
    move-result-object v1

    .line 943
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 944
    .line 945
    .line 946
    move-result-object v1

    .line 947
    const-string v2, "EXTEND_SESSION param attached: initiate a new session or extend the current active session"

    .line 948
    .line 949
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 950
    .line 951
    .line 952
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/w6;->z()Lcom/google/android/gms/measurement/internal/mc;

    .line 953
    .line 954
    .line 955
    move-result-object v1

    .line 956
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/mc;->e:Lcom/google/android/gms/measurement/internal/lc;

    .line 957
    .line 958
    const/4 v2, 0x1

    .line 959
    invoke-virtual {v1, v10, v11, v2}, Lcom/google/android/gms/measurement/internal/lc;->b(JZ)V

    .line 960
    .line 961
    .line 962
    :cond_1a
    new-instance v1, Ljava/util/ArrayList;

    .line 963
    .line 964
    invoke-virtual {v15}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 965
    .line 966
    .line 967
    move-result-object v2

    .line 968
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 969
    .line 970
    .line 971
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 972
    .line 973
    .line 974
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 975
    .line 976
    .line 977
    move-result v2

    .line 978
    const/4 v3, 0x0

    .line 979
    :goto_b
    if-ge v3, v2, :cond_1f

    .line 980
    .line 981
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 982
    .line 983
    .line 984
    move-result-object v4

    .line 985
    check-cast v4, Ljava/lang/String;

    .line 986
    .line 987
    if-eqz v4, :cond_1e

    .line 988
    .line 989
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 990
    .line 991
    .line 992
    invoke-virtual {v15, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 993
    .line 994
    .line 995
    move-result-object v5

    .line 996
    instance-of v6, v5, Landroid/os/Bundle;

    .line 997
    .line 998
    if-eqz v6, :cond_1b

    .line 999
    .line 1000
    check-cast v5, Landroid/os/Bundle;

    .line 1001
    .line 1002
    filled-new-array {v5}, [Landroid/os/Bundle;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v5

    .line 1006
    goto :goto_c

    .line 1007
    :cond_1b
    instance-of v6, v5, [Landroid/os/Parcelable;

    .line 1008
    .line 1009
    if-eqz v6, :cond_1c

    .line 1010
    .line 1011
    check-cast v5, [Landroid/os/Parcelable;

    .line 1012
    .line 1013
    array-length v6, v5

    .line 1014
    const-class v12, [Landroid/os/Bundle;

    .line 1015
    .line 1016
    invoke-static {v5, v6, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v5

    .line 1020
    check-cast v5, [Landroid/os/Bundle;

    .line 1021
    .line 1022
    goto :goto_c

    .line 1023
    :cond_1c
    instance-of v6, v5, Ljava/util/ArrayList;

    .line 1024
    .line 1025
    if-eqz v6, :cond_1d

    .line 1026
    .line 1027
    check-cast v5, Ljava/util/ArrayList;

    .line 1028
    .line 1029
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1030
    .line 1031
    .line 1032
    move-result v6

    .line 1033
    new-array v6, v6, [Landroid/os/Bundle;

    .line 1034
    .line 1035
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v5

    .line 1039
    check-cast v5, [Landroid/os/Bundle;

    .line 1040
    .line 1041
    goto :goto_c

    .line 1042
    :cond_1d
    const/4 v5, 0x0

    .line 1043
    :goto_c
    if-eqz v5, :cond_1e

    .line 1044
    .line 1045
    invoke-virtual {v15, v4, v5}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1046
    .line 1047
    .line 1048
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    .line 1049
    .line 1050
    goto :goto_b

    .line 1051
    :cond_1f
    const/4 v12, 0x0

    .line 1052
    :goto_d
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    .line 1053
    .line 1054
    .line 1055
    move-result v1

    .line 1056
    if-ge v12, v1, :cond_23

    .line 1057
    .line 1058
    move-object/from16 v13, p5

    .line 1059
    .line 1060
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v1

    .line 1064
    check-cast v1, Landroid/os/Bundle;

    .line 1065
    .line 1066
    if-eqz v12, :cond_20

    .line 1067
    .line 1068
    const-string v2, "_ep"

    .line 1069
    .line 1070
    goto :goto_e

    .line 1071
    :cond_20
    move-object v2, v9

    .line 1072
    :goto_e
    move-object/from16 v14, v18

    .line 1073
    .line 1074
    invoke-virtual {v1, v14, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    .line 1076
    .line 1077
    if-eqz p7, :cond_21

    .line 1078
    .line 1079
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v3

    .line 1083
    const/4 v15, 0x0

    .line 1084
    invoke-virtual {v3, v1, v15}, Lcom/google/android/gms/measurement/internal/yd;->Q(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v1

    .line 1088
    goto :goto_f

    .line 1089
    :cond_21
    const/4 v15, 0x0

    .line 1090
    :goto_f
    move-object v5, v1

    .line 1091
    new-instance v6, Lcom/google/android/gms/measurement/internal/g0;

    .line 1092
    .line 1093
    new-instance v3, Lcom/google/android/gms/measurement/internal/e0;

    .line 1094
    .line 1095
    invoke-direct {v3, v5}, Lcom/google/android/gms/measurement/internal/e0;-><init>(Landroid/os/Bundle;)V

    .line 1096
    .line 1097
    .line 1098
    move-object v1, v6

    .line 1099
    move-object/from16 v4, p1

    .line 1100
    .line 1101
    move-object v8, v5

    .line 1102
    move-object v15, v6

    .line 1103
    move-wide/from16 v5, p3

    .line 1104
    .line 1105
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/g0;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/e0;Ljava/lang/String;J)V

    .line 1106
    .line 1107
    .line 1108
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/measurement/internal/w6;->J()Lcom/google/android/gms/measurement/internal/vb;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v1

    .line 1112
    move-object/from16 v5, p9

    .line 1113
    .line 1114
    invoke-virtual {v1, v15, v5}, Lcom/google/android/gms/measurement/internal/vb;->c0(Lcom/google/android/gms/measurement/internal/g0;Ljava/lang/String;)V

    .line 1115
    .line 1116
    .line 1117
    if-nez v16, :cond_22

    .line 1118
    .line 1119
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/w9;->e:Ljava/util/Set;

    .line 1120
    .line 1121
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v15

    .line 1125
    :goto_10
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 1126
    .line 1127
    .line 1128
    move-result v1

    .line 1129
    if-eqz v1, :cond_22

    .line 1130
    .line 1131
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v1

    .line 1135
    check-cast v1, Li6/x;

    .line 1136
    .line 1137
    new-instance v4, Landroid/os/Bundle;

    .line 1138
    .line 1139
    invoke-direct {v4, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1140
    .line 1141
    .line 1142
    move-object/from16 v2, p1

    .line 1143
    .line 1144
    move-object/from16 v3, p2

    .line 1145
    .line 1146
    move-wide/from16 v5, p3

    .line 1147
    .line 1148
    invoke-interface/range {v1 .. v6}, Li6/x;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 1149
    .line 1150
    .line 1151
    move-object/from16 v5, p9

    .line 1152
    .line 1153
    goto :goto_10

    .line 1154
    :cond_22
    add-int/lit8 v12, v12, 0x1

    .line 1155
    .line 1156
    move-object/from16 v8, p1

    .line 1157
    .line 1158
    move-object/from16 p5, v13

    .line 1159
    .line 1160
    move-object/from16 v18, v14

    .line 1161
    .line 1162
    goto :goto_d

    .line 1163
    :cond_23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->c()Lcom/google/android/gms/measurement/internal/f;

    .line 1164
    .line 1165
    .line 1166
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/measurement/internal/w6;->I()Lcom/google/android/gms/measurement/internal/la;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v1

    .line 1170
    const/4 v2, 0x0

    .line 1171
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/la;->q(Z)Lcom/google/android/gms/measurement/internal/da;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v1

    .line 1175
    if-eqz v1, :cond_24

    .line 1176
    .line 1177
    move-object/from16 v1, v23

    .line 1178
    .line 1179
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1180
    .line 1181
    .line 1182
    move-result v1

    .line 1183
    if-eqz v1, :cond_24

    .line 1184
    .line 1185
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/measurement/internal/w6;->z()Lcom/google/android/gms/measurement/internal/mc;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v1

    .line 1189
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v0

    .line 1193
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    .line 1194
    .line 1195
    .line 1196
    move-result-wide v2

    .line 1197
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/mc;->f:Lcom/google/android/gms/measurement/internal/kc;

    .line 1198
    .line 1199
    const/4 v1, 0x1

    .line 1200
    invoke-virtual {v0, v1, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/kc;->d(ZZJ)Z

    .line 1201
    .line 1202
    .line 1203
    :cond_24
    :goto_11
    return-void

    .line 1204
    :cond_25
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 1205
    .line 1206
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v0

    .line 1210
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->v()Lcom/google/android/gms/measurement/internal/n5;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v0

    .line 1214
    const-string v1, "Event not sent since app measurement is disabled"

    .line 1215
    .line 1216
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 1217
    .line 1218
    .line 1219
    return-void
.end method

.method final v0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/w9;->n:Z

    return v0
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/google/android/gms/measurement/internal/w6;->q()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    const-string v1, "auto"

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x1

    .line 18
    const/4 v8, 0x1

    .line 19
    move-object v0, p0

    .line 20
    move-object v2, p2

    .line 21
    move-object v5, p3

    .line 22
    move-object v9, p4

    .line 23
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/w9;->x(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method final w0()Ljava/util/PriorityQueue;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w9;->m:Ljava/util/PriorityQueue;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/PriorityQueue;

    .line 6
    .line 7
    sget-object v1, Lcom/google/android/gms/measurement/internal/p9;->a:Lcom/google/android/gms/measurement/internal/p9;

    .line 8
    .line 9
    sget-object v2, Lcom/google/android/gms/measurement/internal/q9;->a:Lcom/google/android/gms/measurement/internal/q9;

    .line 10
    .line 11
    invoke-static {v1, v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/w9;->m:Ljava/util/PriorityQueue;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w9;->m:Ljava/util/PriorityQueue;

    .line 21
    .line 22
    return-object v0
.end method

.method protected final x(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 14

    .line 1
    sget v0, Lcom/google/android/gms/measurement/internal/yd;->k:I

    .line 2
    .line 3
    new-instance v7, Landroid/os/Bundle;

    .line 4
    .line 5
    move-object/from16 v0, p5

    .line 6
    .line 7
    invoke-direct {v7, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v7}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_5

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v7, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    instance-of v3, v2, Landroid/os/Bundle;

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    new-instance v3, Landroid/os/Bundle;

    .line 39
    .line 40
    check-cast v2, Landroid/os/Bundle;

    .line 41
    .line 42
    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v7, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    instance-of v1, v2, [Landroid/os/Parcelable;

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    check-cast v2, [Landroid/os/Parcelable;

    .line 55
    .line 56
    :goto_1
    array-length v1, v2

    .line 57
    if-ge v3, v1, :cond_0

    .line 58
    .line 59
    aget-object v1, v2, v3

    .line 60
    .line 61
    instance-of v4, v1, Landroid/os/Bundle;

    .line 62
    .line 63
    if-eqz v4, :cond_2

    .line 64
    .line 65
    new-instance v4, Landroid/os/Bundle;

    .line 66
    .line 67
    check-cast v1, Landroid/os/Bundle;

    .line 68
    .line 69
    invoke-direct {v4, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 70
    .line 71
    .line 72
    aput-object v4, v2, v3

    .line 73
    .line 74
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    instance-of v1, v2, Ljava/util/List;

    .line 78
    .line 79
    if-eqz v1, :cond_0

    .line 80
    .line 81
    check-cast v2, Ljava/util/List;

    .line 82
    .line 83
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-ge v3, v1, :cond_0

    .line 88
    .line 89
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    instance-of v4, v1, Landroid/os/Bundle;

    .line 94
    .line 95
    if-eqz v4, :cond_4

    .line 96
    .line 97
    new-instance v4, Landroid/os/Bundle;

    .line 98
    .line 99
    check-cast v1, Landroid/os/Bundle;

    .line 100
    .line 101
    invoke-direct {v4, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_5
    move-object v12, p0

    .line 111
    iget-object v0, v12, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    new-instance v13, Lcom/google/android/gms/measurement/internal/q8;

    .line 118
    .line 119
    move-object v1, v13

    .line 120
    move-object v2, p0

    .line 121
    move-object v3, p1

    .line 122
    move-object/from16 v4, p2

    .line 123
    .line 124
    move-wide/from16 v5, p3

    .line 125
    .line 126
    move/from16 v8, p6

    .line 127
    .line 128
    move/from16 v9, p7

    .line 129
    .line 130
    move/from16 v10, p8

    .line 131
    .line 132
    move-object/from16 v11, p9

    .line 133
    .line 134
    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/measurement/internal/q8;-><init>(Lcom/google/android/gms/measurement/internal/w9;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/s6;->t(Ljava/lang/Runnable;)V

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method final x0()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/w9;->n:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w9;->w0()Ljava/util/PriorityQueue;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/w9;->i:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w9;->w0()Ljava/util/PriorityQueue;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/google/android/gms/measurement/internal/rc;

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/yd;->H()Le1/a;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    iput-boolean v4, p0, Lcom/google/android/gms/measurement/internal/w9;->i:Z

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/rc;->a:Ljava/lang/String;

    .line 58
    .line 59
    const-string v5, "Registering trigger URI"

    .line 60
    .line 61
    invoke-virtual {v2, v5, v4}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v3, v2}, Le1/a;->c(Landroid/net/Uri;)Lr6/d;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    if-nez v2, :cond_1

    .line 73
    .line 74
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/w9;->i:Z

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w9;->w0()Ljava/util/PriorityQueue;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_1
    new-instance v0, Lcom/google/android/gms/measurement/internal/i8;

    .line 85
    .line 86
    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/i8;-><init>(Lcom/google/android/gms/measurement/internal/w9;)V

    .line 87
    .line 88
    .line 89
    new-instance v3, Lcom/google/android/gms/measurement/internal/j8;

    .line 90
    .line 91
    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/measurement/internal/j8;-><init>(Lcom/google/android/gms/measurement/internal/w9;Lcom/google/android/gms/measurement/internal/rc;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v2, v3, v0}, Lr6/b;->a(Lr6/d;Lr6/a;Ljava/util/concurrent/Executor;)V

    .line 95
    .line 96
    .line 97
    :cond_2
    :goto_0
    return-void
.end method

.method public final y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v5

    .line 11
    const-string v1, "auto"

    .line 12
    .line 13
    const-string v2, "_ldl"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    move-object v0, p0

    .line 17
    move-object v3, p3

    .line 18
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/w9;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v0, p3

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/16 v3, 0x18

    .line 9
    .line 10
    if-eqz p4, :cond_0

    .line 11
    .line 12
    iget-object v4, v6, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 13
    .line 14
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/yd;->y0(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    :goto_0
    move v12, v4

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    iget-object v4, v6, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 25
    .line 26
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const-string v5, "user property"

    .line 31
    .line 32
    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/measurement/internal/yd;->t0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    const/4 v8, 0x6

    .line 37
    if-nez v7, :cond_1

    .line 38
    .line 39
    :goto_1
    move v12, v8

    .line 40
    goto :goto_2

    .line 41
    :cond_1
    sget-object v7, Li6/v;->a:[Ljava/lang/String;

    .line 42
    .line 43
    const/4 v9, 0x0

    .line 44
    invoke-virtual {v4, v5, v7, v9, v2}, Lcom/google/android/gms/measurement/internal/yd;->v0(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-nez v7, :cond_2

    .line 49
    .line 50
    const/16 v4, 0xf

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 54
    .line 55
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v5, v3, v2}, Lcom/google/android/gms/measurement/internal/yd;->w0(Ljava/lang/String;ILjava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-nez v4, :cond_3

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    move v12, v1

    .line 66
    :goto_2
    const/4 v4, 0x1

    .line 67
    if-eqz v12, :cond_5

    .line 68
    .line 69
    iget-object v0, v6, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/yd;->q(Ljava/lang/String;IZ)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v14

    .line 82
    if-eqz v2, :cond_4

    .line 83
    .line 84
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    :cond_4
    move v15, v1

    .line 89
    iget-object v0, v6, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 90
    .line 91
    iget-object v10, v6, Lcom/google/android/gms/measurement/internal/w9;->w:Lcom/google/android/gms/measurement/internal/xd;

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    const/4 v11, 0x0

    .line 98
    const-string v13, "_ev"

    .line 99
    .line 100
    invoke-virtual/range {v9 .. v15}, Lcom/google/android/gms/measurement/internal/yd;->B(Lcom/google/android/gms/measurement/internal/xd;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_5
    if-nez p1, :cond_6

    .line 105
    .line 106
    const-string v5, "app"

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_6
    move-object/from16 v5, p1

    .line 110
    .line 111
    :goto_3
    if-eqz v0, :cond_b

    .line 112
    .line 113
    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 114
    .line 115
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    invoke-virtual {v8, v2, v0}, Lcom/google/android/gms/measurement/internal/yd;->y(Ljava/lang/String;Ljava/lang/Object;)I

    .line 120
    .line 121
    .line 122
    move-result v12

    .line 123
    if-eqz v12, :cond_9

    .line 124
    .line 125
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/yd;->q(Ljava/lang/String;IZ)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v14

    .line 136
    instance-of v2, v0, Ljava/lang/String;

    .line 137
    .line 138
    if-nez v2, :cond_7

    .line 139
    .line 140
    instance-of v2, v0, Ljava/lang/CharSequence;

    .line 141
    .line 142
    if-eqz v2, :cond_8

    .line 143
    .line 144
    :cond_7
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    :cond_8
    move v15, v1

    .line 153
    iget-object v0, v6, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 154
    .line 155
    iget-object v10, v6, Lcom/google/android/gms/measurement/internal/w9;->w:Lcom/google/android/gms/measurement/internal/xd;

    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 158
    .line 159
    .line 160
    move-result-object v9

    .line 161
    const/4 v11, 0x0

    .line 162
    const-string v13, "_ev"

    .line 163
    .line 164
    invoke-virtual/range {v9 .. v15}, Lcom/google/android/gms/measurement/internal/yd;->B(Lcom/google/android/gms/measurement/internal/xd;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :cond_9
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/yd;->z(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    if-eqz v7, :cond_a

    .line 177
    .line 178
    move-object/from16 v0, p0

    .line 179
    .line 180
    move-object v1, v5

    .line 181
    move-object/from16 v2, p2

    .line 182
    .line 183
    move-wide/from16 v3, p5

    .line 184
    .line 185
    move-object v5, v7

    .line 186
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/w9;->A(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    :cond_a
    return-void

    .line 190
    :cond_b
    const/4 v7, 0x0

    .line 191
    move-object/from16 v0, p0

    .line 192
    .line 193
    move-object v1, v5

    .line 194
    move-object/from16 v2, p2

    .line 195
    .line 196
    move-wide/from16 v3, p5

    .line 197
    .line 198
    move-object v5, v7

    .line 199
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/w9;->A(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    return-void
.end method
