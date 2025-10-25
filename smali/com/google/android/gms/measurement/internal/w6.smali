.class public final Lcom/google/android/gms/measurement/internal/w6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/b8;


# static fields
.field private static volatile E:Lcom/google/android/gms/measurement/internal/w6;


# instance fields
.field private A:I

.field private B:I

.field private final C:Ljava/util/concurrent/atomic/AtomicInteger;

.field final D:J

.field private final a:Landroid/content/Context;

.field private final b:Z

.field private final c:Lcom/google/android/gms/measurement/internal/f;

.field private final d:Lcom/google/android/gms/measurement/internal/m;

.field private final e:Lcom/google/android/gms/measurement/internal/d6;

.field private final f:Lcom/google/android/gms/measurement/internal/p5;

.field private final g:Lcom/google/android/gms/measurement/internal/s6;

.field private final h:Lcom/google/android/gms/measurement/internal/mc;

.field private final i:Lcom/google/android/gms/measurement/internal/yd;

.field private final j:Lcom/google/android/gms/measurement/internal/i5;

.field private final k:Lcom/google/android/gms/common/util/d;

.field private final l:Lcom/google/android/gms/measurement/internal/la;

.field private final m:Lcom/google/android/gms/measurement/internal/w9;

.field private final n:Lcom/google/android/gms/measurement/internal/b2;

.field private final o:Lcom/google/android/gms/measurement/internal/aa;

.field private final p:Ljava/lang/String;

.field private q:Lcom/google/android/gms/measurement/internal/h5;

.field private r:Lcom/google/android/gms/measurement/internal/vb;

.field private s:Lcom/google/android/gms/measurement/internal/a0;

.field private t:Lcom/google/android/gms/measurement/internal/f5;

.field private u:Lcom/google/android/gms/measurement/internal/ca;

.field private v:Z

.field private w:Ljava/lang/Boolean;

.field private x:J

.field private volatile y:Ljava/lang/Boolean;

.field private volatile z:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/f8;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/w6;->v:Z

    .line 6
    .line 7
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/w6;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    .line 14
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/f8;->a:Landroid/content/Context;

    .line 18
    .line 19
    new-instance v2, Lcom/google/android/gms/measurement/internal/f;

    .line 20
    .line 21
    invoke-direct {v2, v1}, Lcom/google/android/gms/measurement/internal/f;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/w6;->c:Lcom/google/android/gms/measurement/internal/f;

    .line 25
    .line 26
    sput-object v2, Lcom/google/android/gms/measurement/internal/v4;->a:Lcom/google/android/gms/measurement/internal/f;

    .line 27
    .line 28
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/w6;->a:Landroid/content/Context;

    .line 29
    .line 30
    iget-boolean v2, p1, Lcom/google/android/gms/measurement/internal/f8;->e:Z

    .line 31
    .line 32
    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/w6;->b:Z

    .line 33
    .line 34
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/f8;->b:Ljava/lang/Boolean;

    .line 35
    .line 36
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/w6;->y:Ljava/lang/Boolean;

    .line 37
    .line 38
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/f8;->g:Ljava/lang/String;

    .line 39
    .line 40
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/w6;->p:Ljava/lang/String;

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/w6;->z:Z

    .line 44
    .line 45
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/p9;->b(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/google/android/gms/common/util/g;->b()Lcom/google/android/gms/common/util/d;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/w6;->k:Lcom/google/android/gms/common/util/d;

    .line 53
    .line 54
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/f8;->f:Ljava/lang/Long;

    .line 55
    .line 56
    if-eqz v4, :cond_0

    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 59
    .line 60
    .line 61
    move-result-wide v3

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-interface {v3}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v3

    .line 67
    :goto_0
    iput-wide v3, p0, Lcom/google/android/gms/measurement/internal/w6;->D:J

    .line 68
    .line 69
    new-instance v3, Lcom/google/android/gms/measurement/internal/m;

    .line 70
    .line 71
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/m;-><init>(Lcom/google/android/gms/measurement/internal/w6;)V

    .line 72
    .line 73
    .line 74
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/w6;->d:Lcom/google/android/gms/measurement/internal/m;

    .line 75
    .line 76
    new-instance v3, Lcom/google/android/gms/measurement/internal/d6;

    .line 77
    .line 78
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/d6;-><init>(Lcom/google/android/gms/measurement/internal/w6;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/a8;->m()V

    .line 82
    .line 83
    .line 84
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/w6;->e:Lcom/google/android/gms/measurement/internal/d6;

    .line 85
    .line 86
    new-instance v3, Lcom/google/android/gms/measurement/internal/p5;

    .line 87
    .line 88
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/p5;-><init>(Lcom/google/android/gms/measurement/internal/w6;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/a8;->m()V

    .line 92
    .line 93
    .line 94
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/w6;->f:Lcom/google/android/gms/measurement/internal/p5;

    .line 95
    .line 96
    new-instance v4, Lcom/google/android/gms/measurement/internal/yd;

    .line 97
    .line 98
    invoke-direct {v4, p0}, Lcom/google/android/gms/measurement/internal/yd;-><init>(Lcom/google/android/gms/measurement/internal/w6;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/a8;->m()V

    .line 102
    .line 103
    .line 104
    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/w6;->i:Lcom/google/android/gms/measurement/internal/yd;

    .line 105
    .line 106
    new-instance v4, Lcom/google/android/gms/measurement/internal/e8;

    .line 107
    .line 108
    invoke-direct {v4, p1, p0}, Lcom/google/android/gms/measurement/internal/e8;-><init>(Lcom/google/android/gms/measurement/internal/f8;Lcom/google/android/gms/measurement/internal/w6;)V

    .line 109
    .line 110
    .line 111
    new-instance v5, Lcom/google/android/gms/measurement/internal/i5;

    .line 112
    .line 113
    invoke-direct {v5, v4}, Lcom/google/android/gms/measurement/internal/i5;-><init>(Li6/m;)V

    .line 114
    .line 115
    .line 116
    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/w6;->j:Lcom/google/android/gms/measurement/internal/i5;

    .line 117
    .line 118
    new-instance v4, Lcom/google/android/gms/measurement/internal/b2;

    .line 119
    .line 120
    invoke-direct {v4, p0}, Lcom/google/android/gms/measurement/internal/b2;-><init>(Lcom/google/android/gms/measurement/internal/w6;)V

    .line 121
    .line 122
    .line 123
    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/w6;->n:Lcom/google/android/gms/measurement/internal/b2;

    .line 124
    .line 125
    new-instance v4, Lcom/google/android/gms/measurement/internal/la;

    .line 126
    .line 127
    invoke-direct {v4, p0}, Lcom/google/android/gms/measurement/internal/la;-><init>(Lcom/google/android/gms/measurement/internal/w6;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e5;->k()V

    .line 131
    .line 132
    .line 133
    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/w6;->l:Lcom/google/android/gms/measurement/internal/la;

    .line 134
    .line 135
    new-instance v4, Lcom/google/android/gms/measurement/internal/w9;

    .line 136
    .line 137
    invoke-direct {v4, p0}, Lcom/google/android/gms/measurement/internal/w9;-><init>(Lcom/google/android/gms/measurement/internal/w6;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e5;->k()V

    .line 141
    .line 142
    .line 143
    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/w6;->m:Lcom/google/android/gms/measurement/internal/w9;

    .line 144
    .line 145
    new-instance v5, Lcom/google/android/gms/measurement/internal/mc;

    .line 146
    .line 147
    invoke-direct {v5, p0}, Lcom/google/android/gms/measurement/internal/mc;-><init>(Lcom/google/android/gms/measurement/internal/w6;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/e5;->k()V

    .line 151
    .line 152
    .line 153
    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/w6;->h:Lcom/google/android/gms/measurement/internal/mc;

    .line 154
    .line 155
    new-instance v5, Lcom/google/android/gms/measurement/internal/aa;

    .line 156
    .line 157
    invoke-direct {v5, p0}, Lcom/google/android/gms/measurement/internal/aa;-><init>(Lcom/google/android/gms/measurement/internal/w6;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/a8;->m()V

    .line 161
    .line 162
    .line 163
    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/w6;->o:Lcom/google/android/gms/measurement/internal/aa;

    .line 164
    .line 165
    new-instance v5, Lcom/google/android/gms/measurement/internal/s6;

    .line 166
    .line 167
    invoke-direct {v5, p0}, Lcom/google/android/gms/measurement/internal/s6;-><init>(Lcom/google/android/gms/measurement/internal/w6;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/a8;->m()V

    .line 171
    .line 172
    .line 173
    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/w6;->g:Lcom/google/android/gms/measurement/internal/s6;

    .line 174
    .line 175
    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/f8;->d:Lcom/google/android/gms/internal/measurement/g2;

    .line 176
    .line 177
    if-eqz v6, :cond_1

    .line 178
    .line 179
    iget-wide v6, v6, Lcom/google/android/gms/internal/measurement/g2;->b:J

    .line 180
    .line 181
    const-wide/16 v8, 0x0

    .line 182
    .line 183
    cmp-long v6, v6, v8

    .line 184
    .line 185
    if-eqz v6, :cond_1

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_1
    move v0, v2

    .line 189
    :goto_1
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    instance-of v1, v1, Landroid/app/Application;

    .line 194
    .line 195
    if-eqz v1, :cond_3

    .line 196
    .line 197
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/w6;->t(Lcom/google/android/gms/measurement/internal/e5;)V

    .line 198
    .line 199
    .line 200
    iget-object v1, v4, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 201
    .line 202
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/w6;->a:Landroid/content/Context;

    .line 203
    .line 204
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    instance-of v1, v1, Landroid/app/Application;

    .line 209
    .line 210
    if-eqz v1, :cond_4

    .line 211
    .line 212
    iget-object v1, v4, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 213
    .line 214
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/w6;->a:Landroid/content/Context;

    .line 215
    .line 216
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    check-cast v1, Landroid/app/Application;

    .line 221
    .line 222
    iget-object v2, v4, Lcom/google/android/gms/measurement/internal/w9;->c:Lcom/google/android/gms/measurement/internal/k9;

    .line 223
    .line 224
    if-nez v2, :cond_2

    .line 225
    .line 226
    new-instance v2, Lcom/google/android/gms/measurement/internal/k9;

    .line 227
    .line 228
    invoke-direct {v2, v4}, Lcom/google/android/gms/measurement/internal/k9;-><init>(Lcom/google/android/gms/measurement/internal/w9;)V

    .line 229
    .line 230
    .line 231
    iput-object v2, v4, Lcom/google/android/gms/measurement/internal/w9;->c:Lcom/google/android/gms/measurement/internal/k9;

    .line 232
    .line 233
    :cond_2
    if-eqz v0, :cond_4

    .line 234
    .line 235
    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/w9;->c:Lcom/google/android/gms/measurement/internal/k9;

    .line 236
    .line 237
    invoke-virtual {v1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 238
    .line 239
    .line 240
    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/w9;->c:Lcom/google/android/gms/measurement/internal/k9;

    .line 241
    .line 242
    invoke-virtual {v1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 243
    .line 244
    .line 245
    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 246
    .line 247
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/w6;->f:Lcom/google/android/gms/measurement/internal/p5;

    .line 248
    .line 249
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    const-string v1, "Registered activity lifecycle callback"

    .line 257
    .line 258
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    goto :goto_2

    .line 262
    :cond_3
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    const-string v1, "Application context is not an Application"

    .line 270
    .line 271
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    :cond_4
    :goto_2
    new-instance v0, Lcom/google/android/gms/measurement/internal/u6;

    .line 275
    .line 276
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/u6;-><init>(Lcom/google/android/gms/measurement/internal/w6;Lcom/google/android/gms/measurement/internal/f8;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/s6;->t(Ljava/lang/Runnable;)V

    .line 280
    .line 281
    .line 282
    return-void
.end method

.method public static O(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/g2;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/w6;
    .locals 8

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v6, p1, Lcom/google/android/gms/internal/measurement/g2;->d:Landroid/os/Bundle;

    .line 4
    .line 5
    iget-boolean v5, p1, Lcom/google/android/gms/internal/measurement/g2;->c:Z

    .line 6
    .line 7
    iget-wide v3, p1, Lcom/google/android/gms/internal/measurement/g2;->b:J

    .line 8
    .line 9
    iget-wide v1, p1, Lcom/google/android/gms/internal/measurement/g2;->a:J

    .line 10
    .line 11
    new-instance p1, Lcom/google/android/gms/internal/measurement/g2;

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    move-object v0, p1

    .line 15
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/g2;-><init>(JJZLandroid/os/Bundle;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {p0}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/google/android/gms/measurement/internal/w6;->E:Lcom/google/android/gms/measurement/internal/w6;

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    const-class v0, Lcom/google/android/gms/measurement/internal/w6;

    .line 33
    .line 34
    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/w6;->E:Lcom/google/android/gms/measurement/internal/w6;

    .line 36
    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    new-instance v1, Lcom/google/android/gms/measurement/internal/f8;

    .line 40
    .line 41
    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/f8;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/g2;Ljava/lang/Long;)V

    .line 42
    .line 43
    .line 44
    new-instance p0, Lcom/google/android/gms/measurement/internal/w6;

    .line 45
    .line 46
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/w6;-><init>(Lcom/google/android/gms/measurement/internal/f8;)V

    .line 47
    .line 48
    .line 49
    sput-object p0, Lcom/google/android/gms/measurement/internal/w6;->E:Lcom/google/android/gms/measurement/internal/w6;

    .line 50
    .line 51
    :cond_1
    monitor-exit v0

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0

    .line 56
    :cond_2
    if-eqz p1, :cond_3

    .line 57
    .line 58
    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/g2;->d:Landroid/os/Bundle;

    .line 59
    .line 60
    if-eqz p0, :cond_3

    .line 61
    .line 62
    const-string p1, "dataCollectionDefaultEnabled"

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    sget-object p1, Lcom/google/android/gms/measurement/internal/w6;->E:Lcom/google/android/gms/measurement/internal/w6;

    .line 71
    .line 72
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    sget-object p1, Lcom/google/android/gms/measurement/internal/w6;->E:Lcom/google/android/gms/measurement/internal/w6;

    .line 76
    .line 77
    const-string p2, "dataCollectionDefaultEnabled"

    .line 78
    .line 79
    invoke-virtual {p0, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    iput-object p0, p1, Lcom/google/android/gms/measurement/internal/w6;->y:Ljava/lang/Boolean;

    .line 88
    .line 89
    :cond_3
    :goto_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/w6;->E:Lcom/google/android/gms/measurement/internal/w6;

    .line 90
    .line 91
    invoke-static {p0}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    sget-object p0, Lcom/google/android/gms/measurement/internal/w6;->E:Lcom/google/android/gms/measurement/internal/w6;

    .line 95
    .line 96
    return-object p0
.end method

.method static final q()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v1, "Unexpected call on client side"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method private static final r(Lcom/google/android/gms/measurement/internal/d4;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 5
    .line 6
    const-string v0, "Component not created"

    .line 7
    .line 8
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p0
.end method

.method private static final s(Lcom/google/android/gms/measurement/internal/z7;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 5
    .line 6
    const-string v0, "Component not created"

    .line 7
    .line 8
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p0
.end method

.method private static final t(Lcom/google/android/gms/measurement/internal/e5;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v1, "Component not initialized: "

    .line 21
    .line 22
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v0, "Component not created"

    .line 33
    .line 34
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method private static final u(Lcom/google/android/gms/measurement/internal/a8;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/a8;->k()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v1, "Component not initialized: "

    .line 21
    .line 22
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v0, "Component not created"

    .line 33
    .line 34
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method


# virtual methods
.method final A()Lcom/google/android/gms/measurement/internal/s6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->g:Lcom/google/android/gms/measurement/internal/s6;

    return-object v0
.end method

.method public final B()Lcom/google/android/gms/measurement/internal/w9;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->m:Lcom/google/android/gms/measurement/internal/w9;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->t(Lcom/google/android/gms/measurement/internal/e5;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final C()Lcom/google/android/gms/measurement/internal/yd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->i:Lcom/google/android/gms/measurement/internal/yd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final D()Lcom/google/android/gms/measurement/internal/i5;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->j:Lcom/google/android/gms/measurement/internal/i5;

    return-object v0
.end method

.method public final E()Lcom/google/android/gms/measurement/internal/h5;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->q:Lcom/google/android/gms/measurement/internal/h5;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->t(Lcom/google/android/gms/measurement/internal/e5;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->q:Lcom/google/android/gms/measurement/internal/h5;

    .line 7
    .line 8
    return-object v0
.end method

.method public final F()Lcom/google/android/gms/measurement/internal/aa;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->o:Lcom/google/android/gms/measurement/internal/aa;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final G()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/w6;->b:Z

    return v0
.end method

.method public final H()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final I()Lcom/google/android/gms/measurement/internal/la;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->l:Lcom/google/android/gms/measurement/internal/la;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->t(Lcom/google/android/gms/measurement/internal/e5;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final J()Lcom/google/android/gms/measurement/internal/vb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->r:Lcom/google/android/gms/measurement/internal/vb;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->t(Lcom/google/android/gms/measurement/internal/e5;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->r:Lcom/google/android/gms/measurement/internal/vb;

    .line 7
    .line 8
    return-object v0
.end method

.method public final K()Lcom/google/android/gms/measurement/internal/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->s:Lcom/google/android/gms/measurement/internal/a0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->s:Lcom/google/android/gms/measurement/internal/a0;

    .line 7
    .line 8
    return-object v0
.end method

.method public final L()Lcom/google/android/gms/measurement/internal/f5;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->t:Lcom/google/android/gms/measurement/internal/f5;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->t(Lcom/google/android/gms/measurement/internal/e5;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->t:Lcom/google/android/gms/measurement/internal/f5;

    .line 7
    .line 8
    return-object v0
.end method

.method public final M()Lcom/google/android/gms/measurement/internal/b2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->n:Lcom/google/android/gms/measurement/internal/b2;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->r(Lcom/google/android/gms/measurement/internal/d4;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final N()Lcom/google/android/gms/measurement/internal/ca;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->u:Lcom/google/android/gms/measurement/internal/ca;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->r(Lcom/google/android/gms/measurement/internal/d4;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->u:Lcom/google/android/gms/measurement/internal/ca;

    .line 7
    .line 8
    return-object v0
.end method

.method final P(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/w6;->y:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-void
.end method

.method public final a()Lcom/google/android/gms/measurement/internal/p5;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->f:Lcom/google/android/gms/measurement/internal/p5;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final b()Lcom/google/android/gms/measurement/internal/s6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->g:Lcom/google/android/gms/measurement/internal/s6;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final c()Lcom/google/android/gms/measurement/internal/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->c:Lcom/google/android/gms/measurement/internal/f;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->y:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->y:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public final e()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/common/util/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->k:Lcom/google/android/gms/common/util/d;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w6;->h()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final h()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->g:Lcom/google/android/gms/measurement/internal/s6;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/w6;->d:Lcom/google/android/gms/measurement/internal/m;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/m;->L()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_7

    .line 16
    .line 17
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 21
    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/w6;->z:Z

    .line 24
    .line 25
    if-eqz v0, :cond_6

    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->e:Lcom/google/android/gms/measurement/internal/d6;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d6;->t()Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v2, 0x0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    return v2

    .line 46
    :cond_0
    const/4 v0, 0x3

    .line 47
    return v0

    .line 48
    :cond_1
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/w6;->c:Lcom/google/android/gms/measurement/internal/f;

    .line 51
    .line 52
    const-string v0, "firebase_analytics_collection_enabled"

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/m;->J(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    return v2

    .line 67
    :cond_2
    const/4 v0, 0x4

    .line 68
    return v0

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->y:Ljava/lang/Boolean;

    .line 70
    .line 71
    if-eqz v0, :cond_5

    .line 72
    .line 73
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->y:Ljava/lang/Boolean;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    return v2

    .line 82
    :cond_4
    const/4 v0, 0x7

    .line 83
    return v0

    .line 84
    :cond_5
    return v2

    .line 85
    :cond_6
    const/16 v0, 0x8

    .line 86
    .line 87
    return v0

    .line 88
    :cond_7
    const/4 v0, 0x1

    .line 89
    return v0
.end method

.method public final i(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->g:Lcom/google/android/gms/measurement/internal/s6;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 7
    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/w6;->z:Z

    .line 10
    .line 11
    return-void
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->g:Lcom/google/android/gms/measurement/internal/s6;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 7
    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/w6;->z:Z

    .line 10
    .line 11
    return v0
.end method

.method final k()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/measurement/internal/w6;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/w6;->A:I

    return-void
.end method

.method final l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected final m()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/w6;->v:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->g:Lcom/google/android/gms/measurement/internal/s6;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->w:Ljava/lang/Boolean;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/w6;->x:J

    .line 18
    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    cmp-long v1, v1, v3

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->k:Lcom/google/android/gms/common/util/d;

    .line 32
    .line 33
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/w6;->x:J

    .line 38
    .line 39
    sub-long/2addr v0, v2

    .line 40
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    const-wide/16 v2, 0x3e8

    .line 45
    .line 46
    cmp-long v0, v0, v2

    .line 47
    .line 48
    if-lez v0, :cond_3

    .line 49
    .line 50
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->k:Lcom/google/android/gms/common/util/d;

    .line 51
    .line 52
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/w6;->x:J

    .line 57
    .line 58
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->i:Lcom/google/android/gms/measurement/internal/yd;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 61
    .line 62
    .line 63
    const-string v1, "android.permission.INTERNET"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/yd;->M(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    const/4 v2, 0x0

    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 73
    .line 74
    .line 75
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/yd;->M(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/w6;->a:Landroid/content/Context;

    .line 84
    .line 85
    invoke-static {v1}, Lt5/e;->a(Landroid/content/Context;)Lt5/d;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v3}, Lt5/d;->f()Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    const/4 v4, 0x1

    .line 94
    if-nez v3, :cond_1

    .line 95
    .line 96
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/w6;->d:Lcom/google/android/gms/measurement/internal/m;

    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/m;->m()Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-nez v3, :cond_1

    .line 103
    .line 104
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/yd;->j0(Landroid/content/Context;)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-eqz v3, :cond_2

    .line 109
    .line 110
    invoke-static {v1, v2}, Lcom/google/android/gms/measurement/internal/yd;->E(Landroid/content/Context;Z)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_2

    .line 115
    .line 116
    :cond_1
    move v2, v4

    .line 117
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/w6;->w:Ljava/lang/Boolean;

    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_3

    .line 128
    .line 129
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w6;->L()Lcom/google/android/gms/measurement/internal/f5;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f5;->r()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/yd;->o(Ljava/lang/String;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->w:Ljava/lang/Boolean;

    .line 149
    .line 150
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->w:Ljava/lang/Boolean;

    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    return v0

    .line 157
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 158
    .line 159
    const-string v1, "AppMeasurement is not initialized"

    .line 160
    .line 161
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw v0
.end method

.method public final n()Z
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->g:Lcom/google/android/gms/measurement/internal/s6;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->o:Lcom/google/android/gms/measurement/internal/aa;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w6;->L()Lcom/google/android/gms/measurement/internal/f5;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f5;->q()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/w6;->d:Lcom/google/android/gms/measurement/internal/m;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/m;->M()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v10, 0x0

    .line 32
    if-eqz v2, :cond_c

    .line 33
    .line 34
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/w6;->e:Lcom/google/android/gms/measurement/internal/d6;

    .line 35
    .line 36
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/d6;->o(Ljava/lang/String;)Landroid/util/Pair;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v3, Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_b

    .line 52
    .line 53
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v3, Ljava/lang/CharSequence;

    .line 56
    .line 57
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_0

    .line 62
    .line 63
    goto/16 :goto_3

    .line 64
    .line 65
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/a8;->l()V

    .line 69
    .line 70
    .line 71
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/w6;->a:Landroid/content/Context;

    .line 74
    .line 75
    const-string v3, "connectivity"

    .line 76
    .line 77
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 82
    .line 83
    const/4 v3, 0x0

    .line 84
    if-eqz v0, :cond_1

    .line 85
    .line 86
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 87
    .line 88
    .line 89
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_0

    .line 91
    :catch_0
    :cond_1
    move-object v0, v3

    .line 92
    :goto_0
    if-eqz v0, :cond_a

    .line 93
    .line 94
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_a

    .line 99
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w6;->J()Lcom/google/android/gms/measurement/internal/vb;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/vb;->y()Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-nez v5, :cond_2

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_2
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 123
    .line 124
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/w6;->i:Lcom/google/android/gms/measurement/internal/yd;

    .line 125
    .line 126
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/yd;->W()I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    const v5, 0x392d8

    .line 134
    .line 135
    .line 136
    if-lt v4, v5, :cond_8

    .line 137
    .line 138
    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/w6;->m:Lcom/google/android/gms/measurement/internal/w9;

    .line 139
    .line 140
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/w6;->t(Lcom/google/android/gms/measurement/internal/e5;)V

    .line 141
    .line 142
    .line 143
    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 144
    .line 145
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w6;->J()Lcom/google/android/gms/measurement/internal/vb;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/vb;->l0()Li6/a;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    if-eqz v4, :cond_3

    .line 157
    .line 158
    iget-object v3, v4, Li6/a;->a:Landroid/os/Bundle;

    .line 159
    .line 160
    :cond_3
    const/4 v4, 0x1

    .line 161
    if-nez v3, :cond_6

    .line 162
    .line 163
    iget v0, p0, Lcom/google/android/gms/measurement/internal/w6;->B:I

    .line 164
    .line 165
    add-int/lit8 v1, v0, 0x1

    .line 166
    .line 167
    iput v1, p0, Lcom/google/android/gms/measurement/internal/w6;->B:I

    .line 168
    .line 169
    const/16 v1, 0xa

    .line 170
    .line 171
    if-ge v0, v1, :cond_4

    .line 172
    .line 173
    move v10, v4

    .line 174
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/w6;->f:Lcom/google/android/gms/measurement/internal/p5;

    .line 175
    .line 176
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 177
    .line 178
    .line 179
    if-ge v0, v1, :cond_5

    .line 180
    .line 181
    const-string v0, "Retrying."

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_5
    const-string v0, "Skipping."

    .line 185
    .line 186
    :goto_2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->v()Lcom/google/android/gms/measurement/internal/n5;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    add-int/lit8 v2, v2, 0x3c

    .line 197
    .line 198
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 199
    .line 200
    .line 201
    const-string v2, "Failed to retrieve DMA consent from the service, "

    .line 202
    .line 203
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string v0, " retryCount"

    .line 210
    .line 211
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    iget v2, p0, Lcom/google/android/gms/measurement/internal/w6;->B:I

    .line 219
    .line 220
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    return v10

    .line 228
    :cond_6
    const/16 v5, 0x64

    .line 229
    .line 230
    invoke-static {v3, v5}, Lcom/google/android/gms/measurement/internal/d8;->e(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/d8;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    const-string v7, "&gcs="

    .line 235
    .line 236
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/d8;->k()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v6

    .line 243
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-static {v3, v5}, Lcom/google/android/gms/measurement/internal/y;->h(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/y;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    const-string v6, "&dma="

    .line 251
    .line 252
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/y;->j()Ljava/lang/Boolean;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 260
    .line 261
    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v6

    .line 265
    xor-int/2addr v6, v4

    .line 266
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/y;->k()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v6

    .line 273
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 274
    .line 275
    .line 276
    move-result v6

    .line 277
    if-nez v6, :cond_7

    .line 278
    .line 279
    const-string v6, "&dma_cps="

    .line 280
    .line 281
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/y;->k()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v5

    .line 288
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    :cond_7
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/y;->i(Landroid/os/Bundle;)Ljava/lang/Boolean;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 296
    .line 297
    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v3

    .line 301
    xor-int/2addr v3, v4

    .line 302
    const-string v4, "&npa="

    .line 303
    .line 304
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/w6;->f:Lcom/google/android/gms/measurement/internal/p5;

    .line 311
    .line 312
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    const-string v4, "Consent query parameters to Bow"

    .line 320
    .line 321
    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    :cond_8
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/w6;->i:Lcom/google/android/gms/measurement/internal/yd;

    .line 325
    .line 326
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w6;->L()Lcom/google/android/gms/measurement/internal/f5;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 334
    .line 335
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/w6;->d:Lcom/google/android/gms/measurement/internal/m;

    .line 336
    .line 337
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/m;->A()J

    .line 338
    .line 339
    .line 340
    const-wide/32 v4, 0x2078d

    .line 341
    .line 342
    .line 343
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 344
    .line 345
    move-object v6, v2

    .line 346
    check-cast v6, Ljava/lang/String;

    .line 347
    .line 348
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/w6;->e:Lcom/google/android/gms/measurement/internal/d6;

    .line 349
    .line 350
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 351
    .line 352
    .line 353
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d6;->v:Lcom/google/android/gms/measurement/internal/a6;

    .line 354
    .line 355
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/a6;->a()J

    .line 356
    .line 357
    .line 358
    move-result-wide v7

    .line 359
    const-wide/16 v11, -0x1

    .line 360
    .line 361
    add-long/2addr v7, v11

    .line 362
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v9

    .line 366
    move-object v2, v3

    .line 367
    move-wide v3, v4

    .line 368
    move-object v5, v1

    .line 369
    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gms/measurement/internal/yd;->i0(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/net/URL;

    .line 370
    .line 371
    .line 372
    move-result-object v5

    .line 373
    if-eqz v5, :cond_9

    .line 374
    .line 375
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/w6;->o:Lcom/google/android/gms/measurement/internal/aa;

    .line 376
    .line 377
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 378
    .line 379
    .line 380
    new-instance v8, Lcom/google/android/gms/measurement/internal/v6;

    .line 381
    .line 382
    invoke-direct {v8, p0}, Lcom/google/android/gms/measurement/internal/v6;-><init>(Lcom/google/android/gms/measurement/internal/w6;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/a8;->l()V

    .line 386
    .line 387
    .line 388
    invoke-static {v5}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    invoke-static {v8}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 395
    .line 396
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/w6;->g:Lcom/google/android/gms/measurement/internal/s6;

    .line 397
    .line 398
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 399
    .line 400
    .line 401
    new-instance v9, Lcom/google/android/gms/measurement/internal/z9;

    .line 402
    .line 403
    const/4 v6, 0x0

    .line 404
    const/4 v7, 0x0

    .line 405
    move-object v2, v9

    .line 406
    move-object v4, v1

    .line 407
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/z9;-><init>(Lcom/google/android/gms/measurement/internal/aa;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/x9;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/s6;->w(Ljava/lang/Runnable;)V

    .line 411
    .line 412
    .line 413
    :cond_9
    return v10

    .line 414
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->f:Lcom/google/android/gms/measurement/internal/p5;

    .line 415
    .line 416
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    const-string v1, "Network is not available for Deferred Deep Link request. Skipping"

    .line 424
    .line 425
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    return v10

    .line 429
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->f:Lcom/google/android/gms/measurement/internal/p5;

    .line 430
    .line 431
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    const-string v1, "ADID unavailable to retrieve Deferred Deep Link. Skipping"

    .line 439
    .line 440
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    return v10

    .line 444
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->f:Lcom/google/android/gms/measurement/internal/p5;

    .line 445
    .line 446
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    const-string v1, "ADID collection is disabled from Manifest. Skipping"

    .line 454
    .line 455
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    return v10
.end method

.method final synthetic o(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    const-string v4, "timestamp"

    .line 10
    .line 11
    const-string v5, "gad_source"

    .line 12
    .line 13
    const-string v6, "gbraid"

    .line 14
    .line 15
    const-string v7, "gclid"

    .line 16
    .line 17
    const-string v8, "deeplink"

    .line 18
    .line 19
    const-string v9, ""

    .line 20
    .line 21
    const/16 v10, 0xc8

    .line 22
    .line 23
    if-eq v0, v10, :cond_1

    .line 24
    .line 25
    const/16 v10, 0xcc

    .line 26
    .line 27
    if-eq v0, v10, :cond_1

    .line 28
    .line 29
    const/16 v10, 0x130

    .line 30
    .line 31
    if-ne v0, v10, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v10, v0

    .line 35
    goto/16 :goto_4

    .line 36
    .line 37
    :cond_1
    move v10, v0

    .line 38
    :goto_0
    if-nez v2, :cond_c

    .line 39
    .line 40
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/w6;->e:Lcom/google/android/gms/measurement/internal/d6;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d6;->u:Lcom/google/android/gms/measurement/internal/y5;

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/y5;->b(Z)V

    .line 49
    .line 50
    .line 51
    if-eqz v3, :cond_b

    .line 52
    .line 53
    array-length v0, v3

    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    goto/16 :goto_3

    .line 57
    .line 58
    :cond_2
    new-instance v0, Ljava/lang/String;

    .line 59
    .line 60
    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 61
    .line 62
    .line 63
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .line 64
    .line 65
    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    if-eqz v10, :cond_3

    .line 77
    .line 78
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/w6;->f:Lcom/google/android/gms/measurement/internal/p5;

    .line 79
    .line 80
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->v()Lcom/google/android/gms/measurement/internal/n5;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const-string v2, "Deferred Deep Link is empty."

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_3
    invoke-virtual {v3, v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    invoke-virtual {v3, v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v11

    .line 101
    invoke-virtual {v3, v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    const-wide/16 v12, 0x0

    .line 106
    .line 107
    invoke-virtual {v3, v4, v12, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 108
    .line 109
    .line 110
    move-result-wide v12

    .line 111
    new-instance v3, Landroid/os/Bundle;

    .line 112
    .line 113
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 114
    .line 115
    .line 116
    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/w6;->i:Lcom/google/android/gms/measurement/internal/yd;

    .line 117
    .line 118
    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 119
    .line 120
    .line 121
    iget-object v15, v14, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 122
    .line 123
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result v16

    .line 127
    if-eqz v16, :cond_4

    .line 128
    .line 129
    goto/16 :goto_2

    .line 130
    .line 131
    :cond_4
    iget-object v15, v15, Lcom/google/android/gms/measurement/internal/w6;->a:Landroid/content/Context;

    .line 132
    .line 133
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    move-object/from16 p5, v4

    .line 138
    .line 139
    new-instance v4, Landroid/content/Intent;

    .line 140
    .line 141
    move-wide/from16 p2, v12

    .line 142
    .line 143
    const-string v12, "android.intent.action.VIEW"

    .line 144
    .line 145
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 146
    .line 147
    .line 148
    move-result-object v13

    .line 149
    invoke-direct {v4, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 150
    .line 151
    .line 152
    const/4 v12, 0x0

    .line 153
    invoke-virtual {v2, v4, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    if-eqz v2, :cond_a

    .line 158
    .line 159
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-nez v2, :cond_a

    .line 164
    .line 165
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    if-nez v2, :cond_5

    .line 170
    .line 171
    invoke-virtual {v3, v6, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :cond_5
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-nez v2, :cond_6

    .line 179
    .line 180
    invoke-virtual {v3, v5, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    :cond_6
    invoke-virtual {v3, v7, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    const-string v2, "_cis"

    .line 187
    .line 188
    const-string v4, "ddp"

    .line 189
    .line 190
    invoke-virtual {v3, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/w6;->m:Lcom/google/android/gms/measurement/internal/w9;

    .line 194
    .line 195
    const-string v4, "auto"

    .line 196
    .line 197
    const-string v5, "_cmp"

    .line 198
    .line 199
    invoke-virtual {v2, v4, v5, v3}, Lcom/google/android/gms/measurement/internal/w9;->t(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 200
    .line 201
    .line 202
    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 203
    .line 204
    .line 205
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 206
    .line 207
    .line 208
    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 209
    if-eqz v2, :cond_7

    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_7
    :try_start_1
    const-string v2, "google.analytics.deferred.deeplink.prefs"

    .line 213
    .line 214
    invoke-virtual {v15, v2, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    invoke-interface {v2, v8, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 223
    .line 224
    .line 225
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 226
    .line 227
    .line 228
    move-result-wide v3

    .line 229
    move-object/from16 v0, p5

    .line 230
    .line 231
    invoke-interface {v2, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 232
    .line 233
    .line 234
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 235
    .line 236
    .line 237
    move-result v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 238
    if-eqz v0, :cond_9

    .line 239
    .line 240
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    .line 241
    .line 242
    const-string v2, "android.google.analytics.action.DEEPLINK_ACTION"

    .line 243
    .line 244
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    iget-object v2, v14, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 248
    .line 249
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/w6;->a:Landroid/content/Context;

    .line 250
    .line 251
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 252
    .line 253
    const/16 v4, 0x22

    .line 254
    .line 255
    if-ge v3, v4, :cond_8

    .line 256
    .line 257
    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 258
    .line 259
    .line 260
    return-void

    .line 261
    :cond_8
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    const/4 v4, 0x1

    .line 266
    invoke-virtual {v3, v4}, Landroid/app/BroadcastOptions;->setShareIdentityEnabled(Z)Landroid/app/BroadcastOptions;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    const/4 v4, 0x0

    .line 275
    invoke-virtual {v2, v0, v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 276
    .line 277
    .line 278
    :cond_9
    :goto_1
    return-void

    .line 279
    :catch_0
    move-exception v0

    .line 280
    iget-object v2, v14, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 281
    .line 282
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/w6;->f:Lcom/google/android/gms/measurement/internal/p5;

    .line 283
    .line 284
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    const-string v3, "Failed to persist Deferred Deep Link. exception"

    .line 292
    .line 293
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    return-void

    .line 297
    :cond_a
    :goto_2
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/w6;->f:Lcom/google/android/gms/measurement/internal/p5;

    .line 298
    .line 299
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    const-string v3, "Deferred Deep Link validation failed. gclid, gbraid, deep link"

    .line 307
    .line 308
    invoke-virtual {v2, v3, v10, v11, v0}, Lcom/google/android/gms/measurement/internal/n5;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 309
    .line 310
    .line 311
    return-void

    .line 312
    :catch_1
    move-exception v0

    .line 313
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/w6;->f:Lcom/google/android/gms/measurement/internal/p5;

    .line 314
    .line 315
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    const-string v3, "Failed to parse the Deferred Deep Link response. exception"

    .line 323
    .line 324
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 325
    .line 326
    .line 327
    return-void

    .line 328
    :cond_b
    :goto_3
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/w6;->f:Lcom/google/android/gms/measurement/internal/p5;

    .line 329
    .line 330
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->v()Lcom/google/android/gms/measurement/internal/n5;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    const-string v2, "Deferred Deep Link response empty."

    .line 338
    .line 339
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    return-void

    .line 343
    :cond_c
    :goto_4
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/w6;->f:Lcom/google/android/gms/measurement/internal/p5;

    .line 344
    .line 345
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    const-string v3, "Network Request for Deferred Deep Link failed. response, exception"

    .line 353
    .line 354
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 355
    .line 356
    .line 357
    move-result-object v4

    .line 358
    invoke-virtual {v0, v3, v4, v2}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 359
    .line 360
    .line 361
    return-void
.end method

.method final synthetic p(Lcom/google/android/gms/measurement/internal/f8;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->g:Lcom/google/android/gms/measurement/internal/s6;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->d:Lcom/google/android/gms/measurement/internal/m;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m;->u()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/google/android/gms/measurement/internal/a0;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/a0;-><init>(Lcom/google/android/gms/measurement/internal/w6;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/a8;->m()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/w6;->s:Lcom/google/android/gms/measurement/internal/a0;

    .line 23
    .line 24
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/f8;->d:Lcom/google/android/gms/internal/measurement/g2;

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    const-wide/16 v1, 0x0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-wide v1, v1, Lcom/google/android/gms/internal/measurement/g2;->a:J

    .line 32
    .line 33
    :goto_0
    move-wide v7, v1

    .line 34
    new-instance v1, Lcom/google/android/gms/measurement/internal/f5;

    .line 35
    .line 36
    iget-wide v5, p1, Lcom/google/android/gms/measurement/internal/f8;->c:J

    .line 37
    .line 38
    move-object v3, v1

    .line 39
    move-object v4, p0

    .line 40
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/f5;-><init>(Lcom/google/android/gms/measurement/internal/w6;JJ)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e5;->k()V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/w6;->t:Lcom/google/android/gms/measurement/internal/f5;

    .line 47
    .line 48
    new-instance p1, Lcom/google/android/gms/measurement/internal/h5;

    .line 49
    .line 50
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/h5;-><init>(Lcom/google/android/gms/measurement/internal/w6;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e5;->k()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/w6;->q:Lcom/google/android/gms/measurement/internal/h5;

    .line 57
    .line 58
    new-instance p1, Lcom/google/android/gms/measurement/internal/vb;

    .line 59
    .line 60
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/vb;-><init>(Lcom/google/android/gms/measurement/internal/w6;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e5;->k()V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/w6;->r:Lcom/google/android/gms/measurement/internal/vb;

    .line 67
    .line 68
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/w6;->i:Lcom/google/android/gms/measurement/internal/yd;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/a8;->n()V

    .line 71
    .line 72
    .line 73
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/w6;->e:Lcom/google/android/gms/measurement/internal/d6;

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/a8;->n()V

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/w6;->t:Lcom/google/android/gms/measurement/internal/f5;

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e5;->l()V

    .line 81
    .line 82
    .line 83
    new-instance v2, Lcom/google/android/gms/measurement/internal/ca;

    .line 84
    .line 85
    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/ca;-><init>(Lcom/google/android/gms/measurement/internal/w6;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e5;->k()V

    .line 89
    .line 90
    .line 91
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/w6;->u:Lcom/google/android/gms/measurement/internal/ca;

    .line 92
    .line 93
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e5;->l()V

    .line 94
    .line 95
    .line 96
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/w6;->f:Lcom/google/android/gms/measurement/internal/p5;

    .line 97
    .line 98
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->u()Lcom/google/android/gms/measurement/internal/n5;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m;->A()J

    .line 106
    .line 107
    .line 108
    const-wide/32 v4, 0x2078d

    .line 109
    .line 110
    .line 111
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    const-string v5, "App measurement initialized, version"

    .line 116
    .line 117
    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->u()Lcom/google/android/gms/measurement/internal/n5;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    const-string v4, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    .line 128
    .line 129
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f5;->q()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m;->R()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/measurement/internal/yd;->P(Ljava/lang/String;Ljava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_1

    .line 148
    .line 149
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->u()Lcom/google/android/gms/measurement/internal/n5;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    const-string v0, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    .line 157
    .line 158
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_1
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->u()Lcom/google/android/gms/measurement/internal/n5;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    const-string v1, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    .line 174
    .line 175
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->v()Lcom/google/android/gms/measurement/internal/n5;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    const-string v0, "Debug-level message logging enabled"

    .line 190
    .line 191
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget p1, p0, Lcom/google/android/gms/measurement/internal/w6;->A:I

    .line 195
    .line 196
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-eq p1, v1, :cond_2

    .line 203
    .line 204
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    iget v1, p0, Lcom/google/android/gms/measurement/internal/w6;->A:I

    .line 212
    .line 213
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    const-string v2, "Not all components initialized"

    .line 226
    .line 227
    invoke-virtual {p1, v2, v1, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    :cond_2
    const/4 p1, 0x1

    .line 231
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/w6;->v:Z

    .line 232
    .line 233
    return-void
.end method

.method protected final v(Lcom/google/android/gms/internal/measurement/g2;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->g:Lcom/google/android/gms/measurement/internal/s6;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w6;->N()Lcom/google/android/gms/measurement/internal/ca;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ca;->q()Lcom/google/android/gms/internal/measurement/p7;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lcom/google/android/gms/internal/measurement/p7;->c:Lcom/google/android/gms/internal/measurement/p7;

    .line 18
    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/measurement/nf;->a()Z

    .line 20
    .line 21
    .line 22
    sget-object v2, Lcom/google/android/gms/measurement/internal/c5;->R0:Lcom/google/android/gms/measurement/internal/b5;

    .line 23
    .line 24
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/w6;->d:Lcom/google/android/gms/measurement/internal/m;

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x1

    .line 33
    if-ne v0, v1, :cond_0

    .line 34
    .line 35
    move v0, v6

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v0, v5

    .line 38
    :goto_0
    if-eqz v2, :cond_1

    .line 39
    .line 40
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/w6;->i:Lcom/google/android/gms/measurement/internal/yd;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/yd;->G()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    :cond_1
    if-eqz v0, :cond_3

    .line 52
    .line 53
    move v0, v6

    .line 54
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/w6;->i:Lcom/google/android/gms/measurement/internal/yd;

    .line 55
    .line 56
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 60
    .line 61
    .line 62
    new-instance v2, Landroid/content/IntentFilter;

    .line 63
    .line 64
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v7, "com.google.android.gms.measurement.TRIGGERS_AVAILABLE"

    .line 68
    .line 69
    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v7, "com.google.android.gms.measurement.BATCHES_AVAILABLE"

    .line 73
    .line 74
    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance v7, Lcom/google/android/gms/measurement/internal/fe;

    .line 78
    .line 79
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 80
    .line 81
    invoke-direct {v7, v8}, Lcom/google/android/gms/measurement/internal/fe;-><init>(Lcom/google/android/gms/measurement/internal/w6;)V

    .line 82
    .line 83
    .line 84
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 85
    .line 86
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/w6;->a:Landroid/content/Context;

    .line 87
    .line 88
    const/4 v9, 0x2

    .line 89
    invoke-static {v8, v7, v2, v9}, Landroidx/core/content/a;->k(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/w6;->f:Lcom/google/android/gms/measurement/internal/p5;

    .line 93
    .line 94
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->v()Lcom/google/android/gms/measurement/internal/n5;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    const-string v2, "Registered app receiver"

    .line 102
    .line 103
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    if-eqz v0, :cond_3

    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w6;->N()Lcom/google/android/gms/measurement/internal/ca;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    sget-object v1, Lcom/google/android/gms/measurement/internal/c5;->C:Lcom/google/android/gms/measurement/internal/b5;

    .line 113
    .line 114
    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/b5;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    check-cast v1, Ljava/lang/Long;

    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 121
    .line 122
    .line 123
    move-result-wide v1

    .line 124
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ca;->o(J)V

    .line 125
    .line 126
    .line 127
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->e:Lcom/google/android/gms/measurement/internal/d6;

    .line 128
    .line 129
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d6;->w()Lcom/google/android/gms/measurement/internal/d8;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d8;->b()I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    const-string v7, "google_analytics_default_allow_ad_storage"

    .line 141
    .line 142
    invoke-virtual {v3, v7, v5}, Lcom/google/android/gms/measurement/internal/m;->O(Ljava/lang/String;Z)Li6/r;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    const-string v8, "google_analytics_default_allow_analytics_storage"

    .line 147
    .line 148
    invoke-virtual {v3, v8, v5}, Lcom/google/android/gms/measurement/internal/m;->O(Ljava/lang/String;Z)Li6/r;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    sget-object v9, Li6/r;->b:Li6/r;

    .line 153
    .line 154
    const/16 v10, 0x1e

    .line 155
    .line 156
    const/16 v11, -0xa

    .line 157
    .line 158
    if-ne v7, v9, :cond_4

    .line 159
    .line 160
    if-eq v8, v9, :cond_5

    .line 161
    .line 162
    :cond_4
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v11}, Lcom/google/android/gms/measurement/internal/d6;->v(I)Z

    .line 166
    .line 167
    .line 168
    move-result v12

    .line 169
    if-eqz v12, :cond_5

    .line 170
    .line 171
    invoke-static {v7, v8, v11}, Lcom/google/android/gms/measurement/internal/d8;->a(Li6/r;Li6/r;I)Lcom/google/android/gms/measurement/internal/d8;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    goto :goto_1

    .line 176
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w6;->L()Lcom/google/android/gms/measurement/internal/f5;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/f5;->r()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 185
    .line 186
    .line 187
    move-result v7

    .line 188
    if-nez v7, :cond_7

    .line 189
    .line 190
    if-eqz v2, :cond_6

    .line 191
    .line 192
    if-eq v2, v10, :cond_6

    .line 193
    .line 194
    const/16 v7, 0xa

    .line 195
    .line 196
    if-eq v2, v7, :cond_6

    .line 197
    .line 198
    const/16 v7, 0x28

    .line 199
    .line 200
    if-ne v2, v7, :cond_7

    .line 201
    .line 202
    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/w6;->m:Lcom/google/android/gms/measurement/internal/w9;

    .line 203
    .line 204
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/w6;->t(Lcom/google/android/gms/measurement/internal/e5;)V

    .line 205
    .line 206
    .line 207
    new-instance v7, Lcom/google/android/gms/measurement/internal/d8;

    .line 208
    .line 209
    invoke-direct {v7, v4, v4, v11}, Lcom/google/android/gms/measurement/internal/d8;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, v7, v5}, Lcom/google/android/gms/measurement/internal/w9;->q0(Lcom/google/android/gms/measurement/internal/d8;Z)V

    .line 213
    .line 214
    .line 215
    :cond_7
    move-object v2, v4

    .line 216
    :goto_1
    if-eqz v2, :cond_8

    .line 217
    .line 218
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/w6;->m:Lcom/google/android/gms/measurement/internal/w9;

    .line 219
    .line 220
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/w6;->t(Lcom/google/android/gms/measurement/internal/e5;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, v2, v6}, Lcom/google/android/gms/measurement/internal/w9;->q0(Lcom/google/android/gms/measurement/internal/d8;Z)V

    .line 224
    .line 225
    .line 226
    move-object v1, v2

    .line 227
    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/w6;->m:Lcom/google/android/gms/measurement/internal/w9;

    .line 228
    .line 229
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/w6;->t(Lcom/google/android/gms/measurement/internal/e5;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/w9;->o(Lcom/google/android/gms/measurement/internal/d8;)V

    .line 233
    .line 234
    .line 235
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d6;->u()Lcom/google/android/gms/measurement/internal/y;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/y;->b()I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    const-string v7, "google_analytics_default_allow_ad_personalization_signals"

    .line 247
    .line 248
    invoke-virtual {v3, v7, v6}, Lcom/google/android/gms/measurement/internal/m;->O(Ljava/lang/String;Z)Li6/r;

    .line 249
    .line 250
    .line 251
    move-result-object v7

    .line 252
    if-eq v7, v9, :cond_9

    .line 253
    .line 254
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/w6;->f:Lcom/google/android/gms/measurement/internal/p5;

    .line 255
    .line 256
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 260
    .line 261
    .line 262
    move-result-object v8

    .line 263
    const-string v12, "Default ad personalization consent from Manifest"

    .line 264
    .line 265
    invoke-virtual {v8, v12, v7}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    :cond_9
    const-string v7, "google_analytics_default_allow_ad_user_data"

    .line 269
    .line 270
    invoke-virtual {v3, v7, v6}, Lcom/google/android/gms/measurement/internal/m;->O(Ljava/lang/String;Z)Li6/r;

    .line 271
    .line 272
    .line 273
    move-result-object v7

    .line 274
    if-eq v7, v9, :cond_a

    .line 275
    .line 276
    invoke-static {v11, v1}, Lcom/google/android/gms/measurement/internal/d8;->u(II)Z

    .line 277
    .line 278
    .line 279
    move-result v8

    .line 280
    if-eqz v8, :cond_a

    .line 281
    .line 282
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/w6;->t(Lcom/google/android/gms/measurement/internal/e5;)V

    .line 283
    .line 284
    .line 285
    invoke-static {v7, v11}, Lcom/google/android/gms/measurement/internal/y;->a(Li6/r;I)Lcom/google/android/gms/measurement/internal/y;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-virtual {v2, p1, v6}, Lcom/google/android/gms/measurement/internal/w9;->p0(Lcom/google/android/gms/measurement/internal/y;Z)V

    .line 290
    .line 291
    .line 292
    goto :goto_2

    .line 293
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w6;->L()Lcom/google/android/gms/measurement/internal/f5;

    .line 294
    .line 295
    .line 296
    move-result-object v7

    .line 297
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/f5;->r()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 302
    .line 303
    .line 304
    move-result v7

    .line 305
    if-nez v7, :cond_c

    .line 306
    .line 307
    if-eqz v1, :cond_b

    .line 308
    .line 309
    if-ne v1, v10, :cond_c

    .line 310
    .line 311
    :cond_b
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/w6;->t(Lcom/google/android/gms/measurement/internal/e5;)V

    .line 312
    .line 313
    .line 314
    new-instance p1, Lcom/google/android/gms/measurement/internal/y;

    .line 315
    .line 316
    invoke-direct {p1, v4, v11, v4, v4}, Lcom/google/android/gms/measurement/internal/y;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v2, p1, v6}, Lcom/google/android/gms/measurement/internal/w9;->p0(Lcom/google/android/gms/measurement/internal/y;Z)V

    .line 320
    .line 321
    .line 322
    goto :goto_2

    .line 323
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w6;->L()Lcom/google/android/gms/measurement/internal/f5;

    .line 324
    .line 325
    .line 326
    move-result-object v7

    .line 327
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/f5;->r()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v7

    .line 331
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 332
    .line 333
    .line 334
    move-result v7

    .line 335
    if-eqz v7, :cond_d

    .line 336
    .line 337
    if-eqz p1, :cond_d

    .line 338
    .line 339
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/g2;->d:Landroid/os/Bundle;

    .line 340
    .line 341
    if-eqz p1, :cond_d

    .line 342
    .line 343
    invoke-static {v10, v1}, Lcom/google/android/gms/measurement/internal/d8;->u(II)Z

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    if-eqz v1, :cond_d

    .line 348
    .line 349
    invoke-static {p1, v10}, Lcom/google/android/gms/measurement/internal/y;->h(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/y;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/y;->d()Z

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    if-eqz v1, :cond_d

    .line 358
    .line 359
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/w6;->t(Lcom/google/android/gms/measurement/internal/e5;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v2, p1, v6}, Lcom/google/android/gms/measurement/internal/w9;->p0(Lcom/google/android/gms/measurement/internal/y;Z)V

    .line 363
    .line 364
    .line 365
    :cond_d
    :goto_2
    const-string p1, "google_analytics_tcf_data_enabled"

    .line 366
    .line 367
    invoke-virtual {v3, p1}, Lcom/google/android/gms/measurement/internal/m;->J(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    if-eqz p1, :cond_e

    .line 372
    .line 373
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 374
    .line 375
    .line 376
    move-result p1

    .line 377
    if-eqz p1, :cond_f

    .line 378
    .line 379
    :cond_e
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/w6;->f:Lcom/google/android/gms/measurement/internal/p5;

    .line 380
    .line 381
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->v()Lcom/google/android/gms/measurement/internal/n5;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    const-string v1, "TCF client enabled."

    .line 389
    .line 390
    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/w6;->t(Lcom/google/android/gms/measurement/internal/e5;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w9;->s()V

    .line 397
    .line 398
    .line 399
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/w6;->t(Lcom/google/android/gms/measurement/internal/e5;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w9;->r()V

    .line 403
    .line 404
    .line 405
    :cond_f
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 406
    .line 407
    .line 408
    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/d6;->f:Lcom/google/android/gms/measurement/internal/a6;

    .line 409
    .line 410
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/a6;->a()J

    .line 411
    .line 412
    .line 413
    move-result-wide v7

    .line 414
    const-wide/16 v9, 0x0

    .line 415
    .line 416
    cmp-long v1, v7, v9

    .line 417
    .line 418
    if-nez v1, :cond_10

    .line 419
    .line 420
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/w6;->f:Lcom/google/android/gms/measurement/internal/p5;

    .line 421
    .line 422
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 423
    .line 424
    .line 425
    iget-wide v7, p0, Lcom/google/android/gms/measurement/internal/w6;->D:J

    .line 426
    .line 427
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    const-string v3, "Persisting first open"

    .line 432
    .line 433
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 434
    .line 435
    .line 436
    move-result-object v9

    .line 437
    invoke-virtual {v1, v3, v9}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 438
    .line 439
    .line 440
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {p1, v7, v8}, Lcom/google/android/gms/measurement/internal/a6;->b(J)V

    .line 444
    .line 445
    .line 446
    :cond_10
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/w6;->t(Lcom/google/android/gms/measurement/internal/e5;)V

    .line 447
    .line 448
    .line 449
    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/w9;->r:Lcom/google/android/gms/measurement/internal/ge;

    .line 450
    .line 451
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/ge;->c()V

    .line 452
    .line 453
    .line 454
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w6;->m()Z

    .line 455
    .line 456
    .line 457
    move-result v1

    .line 458
    if-nez v1, :cond_15

    .line 459
    .line 460
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w6;->g()Z

    .line 461
    .line 462
    .line 463
    move-result p1

    .line 464
    if-eqz p1, :cond_1d

    .line 465
    .line 466
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/w6;->i:Lcom/google/android/gms/measurement/internal/yd;

    .line 467
    .line 468
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 469
    .line 470
    .line 471
    const-string v0, "android.permission.INTERNET"

    .line 472
    .line 473
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/yd;->M(Ljava/lang/String;)Z

    .line 474
    .line 475
    .line 476
    move-result v0

    .line 477
    if-nez v0, :cond_11

    .line 478
    .line 479
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->f:Lcom/google/android/gms/measurement/internal/p5;

    .line 480
    .line 481
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    const-string v1, "App is missing INTERNET permission"

    .line 489
    .line 490
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    :cond_11
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 494
    .line 495
    .line 496
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 497
    .line 498
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/yd;->M(Ljava/lang/String;)Z

    .line 499
    .line 500
    .line 501
    move-result p1

    .line 502
    if-nez p1, :cond_12

    .line 503
    .line 504
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/w6;->f:Lcom/google/android/gms/measurement/internal/p5;

    .line 505
    .line 506
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 510
    .line 511
    .line 512
    move-result-object p1

    .line 513
    const-string v0, "App is missing ACCESS_NETWORK_STATE permission"

    .line 514
    .line 515
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    :cond_12
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/w6;->a:Landroid/content/Context;

    .line 519
    .line 520
    invoke-static {p1}, Lt5/e;->a(Landroid/content/Context;)Lt5/d;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    invoke-virtual {v0}, Lt5/d;->f()Z

    .line 525
    .line 526
    .line 527
    move-result v0

    .line 528
    if-nez v0, :cond_14

    .line 529
    .line 530
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->d:Lcom/google/android/gms/measurement/internal/m;

    .line 531
    .line 532
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m;->m()Z

    .line 533
    .line 534
    .line 535
    move-result v0

    .line 536
    if-nez v0, :cond_14

    .line 537
    .line 538
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/yd;->j0(Landroid/content/Context;)Z

    .line 539
    .line 540
    .line 541
    move-result v0

    .line 542
    if-nez v0, :cond_13

    .line 543
    .line 544
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->f:Lcom/google/android/gms/measurement/internal/p5;

    .line 545
    .line 546
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    const-string v1, "AppMeasurementReceiver not registered/enabled"

    .line 554
    .line 555
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    :cond_13
    invoke-static {p1, v5}, Lcom/google/android/gms/measurement/internal/yd;->E(Landroid/content/Context;Z)Z

    .line 559
    .line 560
    .line 561
    move-result p1

    .line 562
    if-nez p1, :cond_14

    .line 563
    .line 564
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/w6;->f:Lcom/google/android/gms/measurement/internal/p5;

    .line 565
    .line 566
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 570
    .line 571
    .line 572
    move-result-object p1

    .line 573
    const-string v0, "AppMeasurementService not registered/enabled"

    .line 574
    .line 575
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    :cond_14
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/w6;->f:Lcom/google/android/gms/measurement/internal/p5;

    .line 579
    .line 580
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 581
    .line 582
    .line 583
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 584
    .line 585
    .line 586
    move-result-object p1

    .line 587
    const-string v0, "Uploading is not possible. App measurement disabled"

    .line 588
    .line 589
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    goto/16 :goto_4

    .line 593
    .line 594
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w6;->L()Lcom/google/android/gms/measurement/internal/f5;

    .line 595
    .line 596
    .line 597
    move-result-object v1

    .line 598
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f5;->r()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v1

    .line 602
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 603
    .line 604
    .line 605
    move-result v1

    .line 606
    if-nez v1, :cond_18

    .line 607
    .line 608
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/w6;->i:Lcom/google/android/gms/measurement/internal/yd;

    .line 609
    .line 610
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w6;->L()Lcom/google/android/gms/measurement/internal/f5;

    .line 614
    .line 615
    .line 616
    move-result-object v3

    .line 617
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/f5;->r()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v3

    .line 621
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 625
    .line 626
    .line 627
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d6;->p()Landroid/content/SharedPreferences;

    .line 628
    .line 629
    .line 630
    move-result-object v5

    .line 631
    const-string v7, "gmp_app_id"

    .line 632
    .line 633
    invoke-interface {v5, v7, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v5

    .line 637
    invoke-virtual {v1, v3, v5}, Lcom/google/android/gms/measurement/internal/yd;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 638
    .line 639
    .line 640
    move-result v1

    .line 641
    if-eqz v1, :cond_17

    .line 642
    .line 643
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/w6;->f:Lcom/google/android/gms/measurement/internal/p5;

    .line 644
    .line 645
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->u()Lcom/google/android/gms/measurement/internal/n5;

    .line 649
    .line 650
    .line 651
    move-result-object v1

    .line 652
    const-string v3, "Rechecking which service to use due to a GMP App Id change"

    .line 653
    .line 654
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 661
    .line 662
    .line 663
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d6;->t()Ljava/lang/Boolean;

    .line 664
    .line 665
    .line 666
    move-result-object v1

    .line 667
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d6;->p()Landroid/content/SharedPreferences;

    .line 668
    .line 669
    .line 670
    move-result-object v3

    .line 671
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 672
    .line 673
    .line 674
    move-result-object v3

    .line 675
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 676
    .line 677
    .line 678
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 679
    .line 680
    .line 681
    if-eqz v1, :cond_16

    .line 682
    .line 683
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d6;->s(Ljava/lang/Boolean;)V

    .line 684
    .line 685
    .line 686
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w6;->E()Lcom/google/android/gms/measurement/internal/h5;

    .line 687
    .line 688
    .line 689
    move-result-object v1

    .line 690
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/h5;->o()V

    .line 691
    .line 692
    .line 693
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/w6;->r:Lcom/google/android/gms/measurement/internal/vb;

    .line 694
    .line 695
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/vb;->A()V

    .line 696
    .line 697
    .line 698
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/w6;->r:Lcom/google/android/gms/measurement/internal/vb;

    .line 699
    .line 700
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/vb;->w()V

    .line 701
    .line 702
    .line 703
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 704
    .line 705
    .line 706
    iget-wide v8, p0, Lcom/google/android/gms/measurement/internal/w6;->D:J

    .line 707
    .line 708
    invoke-virtual {p1, v8, v9}, Lcom/google/android/gms/measurement/internal/a6;->b(J)V

    .line 709
    .line 710
    .line 711
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 712
    .line 713
    .line 714
    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/d6;->h:Lcom/google/android/gms/measurement/internal/c6;

    .line 715
    .line 716
    invoke-virtual {p1, v4}, Lcom/google/android/gms/measurement/internal/c6;->b(Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    :cond_17
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 720
    .line 721
    .line 722
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w6;->L()Lcom/google/android/gms/measurement/internal/f5;

    .line 723
    .line 724
    .line 725
    move-result-object p1

    .line 726
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f5;->r()Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object p1

    .line 730
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 731
    .line 732
    .line 733
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d6;->p()Landroid/content/SharedPreferences;

    .line 734
    .line 735
    .line 736
    move-result-object v1

    .line 737
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 738
    .line 739
    .line 740
    move-result-object v1

    .line 741
    invoke-interface {v1, v7, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 742
    .line 743
    .line 744
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 745
    .line 746
    .line 747
    :cond_18
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d6;->w()Lcom/google/android/gms/measurement/internal/d8;

    .line 751
    .line 752
    .line 753
    move-result-object p1

    .line 754
    sget-object v1, Li6/s;->c:Li6/s;

    .line 755
    .line 756
    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/d8;->o(Li6/s;)Z

    .line 757
    .line 758
    .line 759
    move-result p1

    .line 760
    if-nez p1, :cond_19

    .line 761
    .line 762
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 763
    .line 764
    .line 765
    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/d6;->h:Lcom/google/android/gms/measurement/internal/c6;

    .line 766
    .line 767
    invoke-virtual {p1, v4}, Lcom/google/android/gms/measurement/internal/c6;->b(Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    :cond_19
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/w6;->t(Lcom/google/android/gms/measurement/internal/e5;)V

    .line 771
    .line 772
    .line 773
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 774
    .line 775
    .line 776
    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/d6;->h:Lcom/google/android/gms/measurement/internal/c6;

    .line 777
    .line 778
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c6;->a()Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object p1

    .line 782
    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/w9;->E(Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/w6;->i:Lcom/google/android/gms/measurement/internal/yd;

    .line 786
    .line 787
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 788
    .line 789
    .line 790
    :try_start_0
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 791
    .line 792
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/w6;->a:Landroid/content/Context;

    .line 793
    .line 794
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 795
    .line 796
    .line 797
    move-result-object p1

    .line 798
    const-string v0, "com.google.firebase.remoteconfig.FirebaseRemoteConfig"

    .line 799
    .line 800
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    .line 802
    .line 803
    goto :goto_3

    .line 804
    :catch_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/w6;->e:Lcom/google/android/gms/measurement/internal/d6;

    .line 805
    .line 806
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 807
    .line 808
    .line 809
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/d6;->w:Lcom/google/android/gms/measurement/internal/c6;

    .line 810
    .line 811
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c6;->a()Ljava/lang/String;

    .line 812
    .line 813
    .line 814
    move-result-object v1

    .line 815
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 816
    .line 817
    .line 818
    move-result v1

    .line 819
    if-nez v1, :cond_1a

    .line 820
    .line 821
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/w6;->f:Lcom/google/android/gms/measurement/internal/p5;

    .line 822
    .line 823
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 824
    .line 825
    .line 826
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 827
    .line 828
    .line 829
    move-result-object v1

    .line 830
    const-string v2, "Remote config removed with active feature rollouts"

    .line 831
    .line 832
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 833
    .line 834
    .line 835
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 836
    .line 837
    .line 838
    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/c6;->b(Ljava/lang/String;)V

    .line 839
    .line 840
    .line 841
    :cond_1a
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w6;->L()Lcom/google/android/gms/measurement/internal/f5;

    .line 842
    .line 843
    .line 844
    move-result-object p1

    .line 845
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f5;->r()Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object p1

    .line 849
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 850
    .line 851
    .line 852
    move-result p1

    .line 853
    if-nez p1, :cond_1d

    .line 854
    .line 855
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w6;->g()Z

    .line 856
    .line 857
    .line 858
    move-result p1

    .line 859
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->e:Lcom/google/android/gms/measurement/internal/d6;

    .line 860
    .line 861
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 862
    .line 863
    .line 864
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d6;->z()Z

    .line 865
    .line 866
    .line 867
    move-result v1

    .line 868
    if-nez v1, :cond_1b

    .line 869
    .line 870
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/w6;->d:Lcom/google/android/gms/measurement/internal/m;

    .line 871
    .line 872
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/m;->L()Z

    .line 873
    .line 874
    .line 875
    move-result v1

    .line 876
    if-nez v1, :cond_1b

    .line 877
    .line 878
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 879
    .line 880
    .line 881
    xor-int/lit8 v1, p1, 0x1

    .line 882
    .line 883
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d6;->y(Z)V

    .line 884
    .line 885
    .line 886
    :cond_1b
    if-eqz p1, :cond_1c

    .line 887
    .line 888
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/w6;->m:Lcom/google/android/gms/measurement/internal/w9;

    .line 889
    .line 890
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/w6;->t(Lcom/google/android/gms/measurement/internal/e5;)V

    .line 891
    .line 892
    .line 893
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w9;->H()V

    .line 894
    .line 895
    .line 896
    :cond_1c
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/w6;->h:Lcom/google/android/gms/measurement/internal/mc;

    .line 897
    .line 898
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/w6;->t(Lcom/google/android/gms/measurement/internal/e5;)V

    .line 899
    .line 900
    .line 901
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/mc;->e:Lcom/google/android/gms/measurement/internal/lc;

    .line 902
    .line 903
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/lc;->a()V

    .line 904
    .line 905
    .line 906
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w6;->J()Lcom/google/android/gms/measurement/internal/vb;

    .line 907
    .line 908
    .line 909
    move-result-object p1

    .line 910
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 911
    .line 912
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 913
    .line 914
    .line 915
    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/vb;->q(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 916
    .line 917
    .line 918
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w6;->J()Lcom/google/android/gms/measurement/internal/vb;

    .line 919
    .line 920
    .line 921
    move-result-object p1

    .line 922
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 923
    .line 924
    .line 925
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d6;->z:Lcom/google/android/gms/measurement/internal/z5;

    .line 926
    .line 927
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z5;->a()Landroid/os/Bundle;

    .line 928
    .line 929
    .line 930
    move-result-object v0

    .line 931
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/vb;->v(Landroid/os/Bundle;)V

    .line 932
    .line 933
    .line 934
    :cond_1d
    :goto_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/nf;->a()Z

    .line 935
    .line 936
    .line 937
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/w6;->d:Lcom/google/android/gms/measurement/internal/m;

    .line 938
    .line 939
    sget-object v0, Lcom/google/android/gms/measurement/internal/c5;->R0:Lcom/google/android/gms/measurement/internal/b5;

    .line 940
    .line 941
    invoke-virtual {p1, v4, v0}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)Z

    .line 942
    .line 943
    .line 944
    move-result p1

    .line 945
    if-eqz p1, :cond_1f

    .line 946
    .line 947
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/w6;->i:Lcom/google/android/gms/measurement/internal/yd;

    .line 948
    .line 949
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 950
    .line 951
    .line 952
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/yd;->G()Z

    .line 953
    .line 954
    .line 955
    move-result p1

    .line 956
    if-eqz p1, :cond_1f

    .line 957
    .line 958
    sget-object p1, Lcom/google/android/gms/measurement/internal/c5;->y0:Lcom/google/android/gms/measurement/internal/b5;

    .line 959
    .line 960
    invoke-virtual {p1, v4}, Lcom/google/android/gms/measurement/internal/b5;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    .line 962
    .line 963
    move-result-object p1

    .line 964
    check-cast p1, Ljava/lang/Integer;

    .line 965
    .line 966
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 967
    .line 968
    .line 969
    move-result p1

    .line 970
    int-to-long v0, p1

    .line 971
    new-instance p1, Ljava/util/Random;

    .line 972
    .line 973
    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 974
    .line 975
    .line 976
    const/16 v2, 0x1388

    .line 977
    .line 978
    invoke-virtual {p1, v2}, Ljava/util/Random;->nextInt(I)I

    .line 979
    .line 980
    .line 981
    move-result p1

    .line 982
    const-wide/16 v2, 0x3e8

    .line 983
    .line 984
    mul-long/2addr v0, v2

    .line 985
    int-to-long v2, p1

    .line 986
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/w6;->k:Lcom/google/android/gms/common/util/d;

    .line 987
    .line 988
    add-long/2addr v0, v2

    .line 989
    invoke-interface {p1}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    .line 990
    .line 991
    .line 992
    move-result-wide v2

    .line 993
    sub-long/2addr v0, v2

    .line 994
    const-wide/16 v2, 0x1f4

    .line 995
    .line 996
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 997
    .line 998
    .line 999
    move-result-wide v0

    .line 1000
    cmp-long p1, v0, v2

    .line 1001
    .line 1002
    if-lez p1, :cond_1e

    .line 1003
    .line 1004
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/w6;->f:Lcom/google/android/gms/measurement/internal/p5;

    .line 1005
    .line 1006
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/w6;->u(Lcom/google/android/gms/measurement/internal/a8;)V

    .line 1007
    .line 1008
    .line 1009
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 1010
    .line 1011
    .line 1012
    move-result-object p1

    .line 1013
    const-string v2, "Waiting to fetch trigger URIs until some time after boot. Delay in millis"

    .line 1014
    .line 1015
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v3

    .line 1019
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1020
    .line 1021
    .line 1022
    :cond_1e
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/w6;->m:Lcom/google/android/gms/measurement/internal/w9;

    .line 1023
    .line 1024
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/w6;->t(Lcom/google/android/gms/measurement/internal/e5;)V

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/w9;->s0(J)V

    .line 1028
    .line 1029
    .line 1030
    :cond_1f
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/w6;->e:Lcom/google/android/gms/measurement/internal/d6;

    .line 1031
    .line 1032
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 1033
    .line 1034
    .line 1035
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/d6;->p:Lcom/google/android/gms/measurement/internal/y5;

    .line 1036
    .line 1037
    invoke-virtual {p1, v6}, Lcom/google/android/gms/measurement/internal/y5;->b(Z)V

    .line 1038
    .line 1039
    .line 1040
    return-void
.end method

.method public final w()Lcom/google/android/gms/measurement/internal/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->d:Lcom/google/android/gms/measurement/internal/m;

    return-object v0
.end method

.method public final x()Lcom/google/android/gms/measurement/internal/d6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->e:Lcom/google/android/gms/measurement/internal/d6;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->s(Lcom/google/android/gms/measurement/internal/z7;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final y()Lcom/google/android/gms/measurement/internal/p5;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->f:Lcom/google/android/gms/measurement/internal/p5;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/a8;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final z()Lcom/google/android/gms/measurement/internal/mc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->h:Lcom/google/android/gms/measurement/internal/mc;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w6;->t(Lcom/google/android/gms/measurement/internal/e5;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
