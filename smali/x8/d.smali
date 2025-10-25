.class public final Lx8/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx8/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx8/d$a;
    }
.end annotation


# static fields
.field private static final g:Lx8/d$a;

.field private static final h:I

.field private static final i:Lrd/l;


# instance fields
.field private final a:Lu8/w0;

.field private final b:Ll8/e;

.field private final c:Lu8/b;

.field private final d:Lx8/a;

.field private final e:Lx8/l;

.field private final f:Lce/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lx8/d$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lx8/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lx8/d;->g:Lx8/d$a;

    .line 8
    .line 9
    sget-object v0, Lsd/a;->b:Lsd/a$a;

    .line 10
    .line 11
    const/16 v0, 0x18

    .line 12
    .line 13
    sget-object v1, Lsd/d;->g:Lsd/d;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lsd/c;->h(ILsd/d;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-static {v0, v1}, Lsd/a;->r(J)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    long-to-int v0, v0

    .line 24
    sput v0, Lx8/d;->h:I

    .line 25
    .line 26
    new-instance v0, Lrd/l;

    .line 27
    .line 28
    const-string v1, "/"

    .line 29
    .line 30
    invoke-direct {v0, v1}, Lrd/l;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lx8/d;->i:Lrd/l;

    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>(Lu8/w0;Ll8/e;Lu8/b;Lx8/a;Lx8/l;)V
    .locals 1

    .line 1
    const-string v0, "timeProvider"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "firebaseInstallationsApi"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "appInfo"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "configsFetcher"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "settingsCache"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lx8/d;->a:Lu8/w0;

    .line 30
    .line 31
    iput-object p2, p0, Lx8/d;->b:Ll8/e;

    .line 32
    .line 33
    iput-object p3, p0, Lx8/d;->c:Lu8/b;

    .line 34
    .line 35
    iput-object p4, p0, Lx8/d;->d:Lx8/a;

    .line 36
    .line 37
    iput-object p5, p0, Lx8/d;->e:Lx8/l;

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    const/4 p2, 0x0

    .line 41
    const/4 p3, 0x0

    .line 42
    invoke-static {p3, p1, p2}, Lce/g;->b(ZILjava/lang/Object;)Lce/a;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lx8/d;->f:Lce/a;

    .line 47
    .line 48
    return-void
.end method

.method public static final synthetic e()Lx8/d$a;
    .locals 1

    .line 1
    sget-object v0, Lx8/d;->g:Lx8/d$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic f()I
    .locals 1

    .line 1
    sget v0, Lx8/d;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic g(Lx8/d;)Lx8/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lx8/d;->e:Lx8/l;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lx8/d;)Lu8/w0;
    .locals 0

    .line 1
    iget-object p0, p0, Lx8/d;->a:Lu8/w0;

    .line 2
    .line 3
    return-object p0
.end method

.method private final i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lx8/d;->i:Lrd/l;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Lrd/l;->f(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lx8/d;->e:Lx8/l;

    .line 2
    .line 3
    invoke-interface {v0}, Lx8/l;->d()Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public b(Lad/e;)Ljava/lang/Object;
    .locals 13

    .line 1
    instance-of v0, p1, Lx8/d$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lx8/d$b;

    .line 7
    .line 8
    iget v1, v0, Lx8/d$b;->e:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lx8/d$b;->e:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lx8/d$b;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lx8/d$b;-><init>(Lx8/d;Lad/e;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lx8/d$b;->c:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lx8/d$b;->e:I

    .line 32
    .line 33
    const-string v3, "FirebaseSessions"

    .line 34
    .line 35
    const/4 v4, 0x3

    .line 36
    const/4 v5, 0x2

    .line 37
    const/4 v6, 0x1

    .line 38
    const/4 v7, 0x0

    .line 39
    if-eqz v2, :cond_4

    .line 40
    .line 41
    if-eq v2, v6, :cond_3

    .line 42
    .line 43
    if-eq v2, v5, :cond_2

    .line 44
    .line 45
    if-ne v2, v4, :cond_1

    .line 46
    .line 47
    iget-object v0, v0, Lx8/d$b;->a:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Lce/a;

    .line 50
    .line 51
    :try_start_0
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    goto/16 :goto_3

    .line 55
    .line 56
    :catchall_0
    move-exception p1

    .line 57
    goto/16 :goto_4

    .line 58
    .line 59
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 62
    .line 63
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :cond_2
    iget-object v2, v0, Lx8/d$b;->b:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v2, Lce/a;

    .line 70
    .line 71
    iget-object v8, v0, Lx8/d$b;->a:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v8, Lx8/d;

    .line 74
    .line 75
    :try_start_1
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :catchall_1
    move-exception p1

    .line 80
    move-object v0, v2

    .line 81
    goto/16 :goto_4

    .line 82
    .line 83
    :cond_3
    iget-object v2, v0, Lx8/d$b;->b:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v2, Lce/a;

    .line 86
    .line 87
    iget-object v8, v0, Lx8/d$b;->a:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v8, Lx8/d;

    .line 90
    .line 91
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    move-object p1, v2

    .line 95
    goto :goto_1

    .line 96
    :cond_4
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lx8/d;->f:Lce/a;

    .line 100
    .line 101
    invoke-interface {p1}, Lce/a;->c()Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-nez p1, :cond_5

    .line 106
    .line 107
    iget-object p1, p0, Lx8/d;->e:Lx8/l;

    .line 108
    .line 109
    invoke-interface {p1}, Lx8/l;->c()Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-nez p1, :cond_5

    .line 114
    .line 115
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 116
    .line 117
    return-object p1

    .line 118
    :cond_5
    iget-object p1, p0, Lx8/d;->f:Lce/a;

    .line 119
    .line 120
    iput-object p0, v0, Lx8/d$b;->a:Ljava/lang/Object;

    .line 121
    .line 122
    iput-object p1, v0, Lx8/d$b;->b:Ljava/lang/Object;

    .line 123
    .line 124
    iput v6, v0, Lx8/d$b;->e:I

    .line 125
    .line 126
    invoke-interface {p1, v7, v0}, Lce/a;->b(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    if-ne v2, v1, :cond_6

    .line 131
    .line 132
    return-object v1

    .line 133
    :cond_6
    move-object v8, p0

    .line 134
    :goto_1
    :try_start_2
    iget-object v2, v8, Lx8/d;->e:Lx8/l;

    .line 135
    .line 136
    invoke-interface {v2}, Lx8/l;->c()Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-nez v2, :cond_7

    .line 141
    .line 142
    const-string v0, "Remote settings cache not expired. Using cached values."

    .line 143
    .line 144
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    sget-object v0, Lxc/t;->a:Lxc/t;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 148
    .line 149
    invoke-interface {p1, v7}, Lce/a;->d(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    return-object v0

    .line 153
    :cond_7
    :try_start_3
    sget-object v2, Lu8/t;->c:Lu8/t$a;

    .line 154
    .line 155
    iget-object v9, v8, Lx8/d;->b:Ll8/e;

    .line 156
    .line 157
    iput-object v8, v0, Lx8/d$b;->a:Ljava/lang/Object;

    .line 158
    .line 159
    iput-object p1, v0, Lx8/d$b;->b:Ljava/lang/Object;

    .line 160
    .line 161
    iput v5, v0, Lx8/d$b;->e:I

    .line 162
    .line 163
    invoke-virtual {v2, v9, v0}, Lu8/t$a;->a(Ll8/e;Lad/e;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 167
    if-ne v2, v1, :cond_8

    .line 168
    .line 169
    return-object v1

    .line 170
    :cond_8
    move-object v12, v2

    .line 171
    move-object v2, p1

    .line 172
    move-object p1, v12

    .line 173
    :goto_2
    :try_start_4
    check-cast p1, Lu8/t;

    .line 174
    .line 175
    invoke-virtual {p1}, Lu8/t;->b()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    const-string v9, ""

    .line 180
    .line 181
    invoke-static {p1, v9}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v9

    .line 185
    if-eqz v9, :cond_9

    .line 186
    .line 187
    const-string p1, "Error getting Firebase Installation ID. Skipping this Session Event."

    .line 188
    .line 189
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    sget-object p1, Lxc/t;->a:Lxc/t;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 193
    .line 194
    invoke-interface {v2, v7}, Lce/a;->d(Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    return-object p1

    .line 198
    :cond_9
    const/4 v9, 0x5

    .line 199
    :try_start_5
    new-array v9, v9, [Lxc/k;

    .line 200
    .line 201
    const-string v10, "X-Crashlytics-Installation-ID"

    .line 202
    .line 203
    invoke-static {v10, p1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    const/4 v10, 0x0

    .line 208
    aput-object p1, v9, v10

    .line 209
    .line 210
    const-string p1, "X-Crashlytics-Device-Model"

    .line 211
    .line 212
    new-instance v10, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    sget-object v11, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 218
    .line 219
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 223
    .line 224
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v10

    .line 231
    invoke-direct {v8, v10}, Lx8/d;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v10

    .line 235
    invoke-static {p1, v10}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    aput-object p1, v9, v6

    .line 240
    .line 241
    const-string p1, "X-Crashlytics-OS-Build-Version"

    .line 242
    .line 243
    sget-object v6, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 244
    .line 245
    const-string v10, "INCREMENTAL"

    .line 246
    .line 247
    invoke-static {v6, v10}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-direct {v8, v6}, Lx8/d;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    invoke-static {p1, v6}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    aput-object p1, v9, v5

    .line 259
    .line 260
    const-string p1, "X-Crashlytics-OS-Display-Version"

    .line 261
    .line 262
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 263
    .line 264
    const-string v6, "RELEASE"

    .line 265
    .line 266
    invoke-static {v5, v6}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-direct {v8, v5}, Lx8/d;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    invoke-static {p1, v5}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    aput-object p1, v9, v4

    .line 278
    .line 279
    const-string p1, "X-Crashlytics-API-Client-Version"

    .line 280
    .line 281
    iget-object v5, v8, Lx8/d;->c:Lu8/b;

    .line 282
    .line 283
    invoke-virtual {v5}, Lu8/b;->f()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    invoke-static {p1, v5}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    const/4 v5, 0x4

    .line 292
    aput-object p1, v9, v5

    .line 293
    .line 294
    invoke-static {v9}, Lyc/e0;->h([Lxc/k;)Ljava/util/Map;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    const-string v5, "Fetching settings from server."

    .line 299
    .line 300
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    iget-object v3, v8, Lx8/d;->d:Lx8/a;

    .line 304
    .line 305
    new-instance v5, Lx8/d$c;

    .line 306
    .line 307
    invoke-direct {v5, v8, v7}, Lx8/d$c;-><init>(Lx8/d;Lad/e;)V

    .line 308
    .line 309
    .line 310
    new-instance v6, Lx8/d$d;

    .line 311
    .line 312
    invoke-direct {v6, v7}, Lx8/d$d;-><init>(Lad/e;)V

    .line 313
    .line 314
    .line 315
    iput-object v2, v0, Lx8/d$b;->a:Ljava/lang/Object;

    .line 316
    .line 317
    iput-object v7, v0, Lx8/d$b;->b:Ljava/lang/Object;

    .line 318
    .line 319
    iput v4, v0, Lx8/d$b;->e:I

    .line 320
    .line 321
    invoke-interface {v3, p1, v5, v6, v0}, Lx8/a;->a(Ljava/util/Map;Lid/Function2;Lid/Function2;Lad/e;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 325
    if-ne p1, v1, :cond_a

    .line 326
    .line 327
    return-object v1

    .line 328
    :cond_a
    move-object v0, v2

    .line 329
    :goto_3
    :try_start_6
    sget-object p1, Lxc/t;->a:Lxc/t;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 330
    .line 331
    invoke-interface {v0, v7}, Lce/a;->d(Ljava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 335
    .line 336
    return-object p1

    .line 337
    :catchall_2
    move-exception v0

    .line 338
    move-object v12, v0

    .line 339
    move-object v0, p1

    .line 340
    move-object p1, v12

    .line 341
    :goto_4
    invoke-interface {v0, v7}, Lce/a;->d(Ljava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    throw p1
.end method

.method public c()Lsd/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lx8/d;->e:Lx8/l;

    .line 2
    .line 3
    invoke-interface {v0}, Lx8/l;->b()Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v1, Lsd/a;->b:Lsd/a$a;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sget-object v1, Lsd/d;->e:Lsd/d;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lsd/c;->h(ILsd/d;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    invoke-static {v0, v1}, Lsd/a;->b(J)Lsd/a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    return-object v0
.end method

.method public d()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lx8/d;->e:Lx8/l;

    .line 2
    .line 3
    invoke-interface {v0}, Lx8/l;->a()Ljava/lang/Double;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
