.class public Lne/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lne/w$a;,
        Lne/w$b;
    }
.end annotation


# static fields
.field public static final D:Lne/w$b;

.field private static final E:Ljava/util/List;

.field private static final F:Ljava/util/List;


# instance fields
.field private final A:I

.field private final B:J

.field private final C:Lse/h;

.field private final a:Lne/o;

.field private final b:Lne/j;

.field private final c:Ljava/util/List;

.field private final d:Ljava/util/List;

.field private final e:Lne/q$c;

.field private final f:Z

.field private final g:Lne/b;

.field private final h:Z

.field private final i:Z

.field private final j:Lne/m;

.field private final k:Lne/p;

.field private final l:Ljava/net/Proxy;

.field private final m:Ljava/net/ProxySelector;

.field private final n:Lne/b;

.field private final o:Ljavax/net/SocketFactory;

.field private final p:Ljavax/net/ssl/SSLSocketFactory;

.field private final q:Ljavax/net/ssl/X509TrustManager;

.field private final r:Ljava/util/List;

.field private final s:Ljava/util/List;

.field private final t:Ljavax/net/ssl/HostnameVerifier;

.field private final u:Lne/f;

.field private final v:Lze/c;

.field private final w:I

.field private final x:I

.field private final y:I

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lne/w$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lne/w$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lne/w;->D:Lne/w$b;

    .line 8
    .line 9
    sget-object v0, Lne/x;->f:Lne/x;

    .line 10
    .line 11
    sget-object v1, Lne/x;->d:Lne/x;

    .line 12
    .line 13
    filled-new-array {v0, v1}, [Lne/x;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Loe/d;->v([Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lne/w;->E:Ljava/util/List;

    .line 22
    .line 23
    sget-object v0, Lne/k;->i:Lne/k;

    .line 24
    .line 25
    sget-object v1, Lne/k;->k:Lne/k;

    .line 26
    .line 27
    filled-new-array {v0, v1}, [Lne/k;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Loe/d;->v([Ljava/lang/Object;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lne/w;->F:Ljava/util/List;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>(Lne/w$a;)V
    .locals 3

    .line 1
    const-string v0, "builder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lne/w$a;->l()Lne/o;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lne/w;->a:Lne/o;

    .line 14
    .line 15
    invoke-virtual {p1}, Lne/w$a;->i()Lne/j;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lne/w;->b:Lne/j;

    .line 20
    .line 21
    invoke-virtual {p1}, Lne/w$a;->r()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Loe/d;->R(Ljava/util/List;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lne/w;->c:Ljava/util/List;

    .line 30
    .line 31
    invoke-virtual {p1}, Lne/w$a;->t()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Loe/d;->R(Ljava/util/List;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lne/w;->d:Ljava/util/List;

    .line 40
    .line 41
    invoke-virtual {p1}, Lne/w$a;->n()Lne/q$c;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lne/w;->e:Lne/q$c;

    .line 46
    .line 47
    invoke-virtual {p1}, Lne/w$a;->A()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iput-boolean v0, p0, Lne/w;->f:Z

    .line 52
    .line 53
    invoke-virtual {p1}, Lne/w$a;->c()Lne/b;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lne/w;->g:Lne/b;

    .line 58
    .line 59
    invoke-virtual {p1}, Lne/w$a;->o()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iput-boolean v0, p0, Lne/w;->h:Z

    .line 64
    .line 65
    invoke-virtual {p1}, Lne/w$a;->p()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iput-boolean v0, p0, Lne/w;->i:Z

    .line 70
    .line 71
    invoke-virtual {p1}, Lne/w$a;->k()Lne/m;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Lne/w;->j:Lne/m;

    .line 76
    .line 77
    invoke-virtual {p1}, Lne/w$a;->d()Lne/c;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lne/w$a;->m()Lne/p;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iput-object v0, p0, Lne/w;->k:Lne/p;

    .line 85
    .line 86
    invoke-virtual {p1}, Lne/w$a;->w()Ljava/net/Proxy;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iput-object v0, p0, Lne/w;->l:Ljava/net/Proxy;

    .line 91
    .line 92
    invoke-virtual {p1}, Lne/w$a;->w()Ljava/net/Proxy;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    .line 98
    sget-object v0, Lye/a;->a:Lye/a;

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p1}, Lne/w$a;->y()Ljava/net/ProxySelector;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    if-nez v0, :cond_1

    .line 106
    .line 107
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    :cond_1
    if-nez v0, :cond_2

    .line 112
    .line 113
    sget-object v0, Lye/a;->a:Lye/a;

    .line 114
    .line 115
    :cond_2
    :goto_0
    iput-object v0, p0, Lne/w;->m:Ljava/net/ProxySelector;

    .line 116
    .line 117
    invoke-virtual {p1}, Lne/w$a;->x()Lne/b;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iput-object v0, p0, Lne/w;->n:Lne/b;

    .line 122
    .line 123
    invoke-virtual {p1}, Lne/w$a;->C()Ljavax/net/SocketFactory;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iput-object v0, p0, Lne/w;->o:Ljavax/net/SocketFactory;

    .line 128
    .line 129
    invoke-virtual {p1}, Lne/w$a;->j()Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iput-object v0, p0, Lne/w;->r:Ljava/util/List;

    .line 134
    .line 135
    invoke-virtual {p1}, Lne/w$a;->v()Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    iput-object v1, p0, Lne/w;->s:Ljava/util/List;

    .line 140
    .line 141
    invoke-virtual {p1}, Lne/w$a;->q()Ljavax/net/ssl/HostnameVerifier;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    iput-object v1, p0, Lne/w;->t:Ljavax/net/ssl/HostnameVerifier;

    .line 146
    .line 147
    invoke-virtual {p1}, Lne/w$a;->e()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    iput v1, p0, Lne/w;->w:I

    .line 152
    .line 153
    invoke-virtual {p1}, Lne/w$a;->h()I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    iput v1, p0, Lne/w;->x:I

    .line 158
    .line 159
    invoke-virtual {p1}, Lne/w$a;->z()I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    iput v1, p0, Lne/w;->y:I

    .line 164
    .line 165
    invoke-virtual {p1}, Lne/w$a;->E()I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    iput v1, p0, Lne/w;->z:I

    .line 170
    .line 171
    invoke-virtual {p1}, Lne/w$a;->u()I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    iput v1, p0, Lne/w;->A:I

    .line 176
    .line 177
    invoke-virtual {p1}, Lne/w$a;->s()J

    .line 178
    .line 179
    .line 180
    move-result-wide v1

    .line 181
    iput-wide v1, p0, Lne/w;->B:J

    .line 182
    .line 183
    invoke-virtual {p1}, Lne/w$a;->B()Lse/h;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    if-nez v1, :cond_3

    .line 188
    .line 189
    new-instance v1, Lse/h;

    .line 190
    .line 191
    invoke-direct {v1}, Lse/h;-><init>()V

    .line 192
    .line 193
    .line 194
    :cond_3
    iput-object v1, p0, Lne/w;->C:Lse/h;

    .line 195
    .line 196
    check-cast v0, Ljava/lang/Iterable;

    .line 197
    .line 198
    instance-of v1, v0, Ljava/util/Collection;

    .line 199
    .line 200
    const/4 v2, 0x1

    .line 201
    if-eqz v1, :cond_4

    .line 202
    .line 203
    move-object v1, v0

    .line 204
    check-cast v1, Ljava/util/Collection;

    .line 205
    .line 206
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-eqz v1, :cond_4

    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-eqz v1, :cond_6

    .line 222
    .line 223
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    check-cast v1, Lne/k;

    .line 228
    .line 229
    invoke-virtual {v1}, Lne/k;->f()Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    if-eqz v1, :cond_5

    .line 234
    .line 235
    const/4 v2, 0x0

    .line 236
    :cond_6
    :goto_1
    if-eqz v2, :cond_7

    .line 237
    .line 238
    const/4 p1, 0x0

    .line 239
    iput-object p1, p0, Lne/w;->p:Ljavax/net/ssl/SSLSocketFactory;

    .line 240
    .line 241
    iput-object p1, p0, Lne/w;->v:Lze/c;

    .line 242
    .line 243
    iput-object p1, p0, Lne/w;->q:Ljavax/net/ssl/X509TrustManager;

    .line 244
    .line 245
    sget-object p1, Lne/f;->d:Lne/f;

    .line 246
    .line 247
    iput-object p1, p0, Lne/w;->u:Lne/f;

    .line 248
    .line 249
    goto :goto_2

    .line 250
    :cond_7
    invoke-virtual {p1}, Lne/w$a;->D()Ljavax/net/ssl/SSLSocketFactory;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    if-eqz v0, :cond_8

    .line 255
    .line 256
    invoke-virtual {p1}, Lne/w$a;->D()Ljavax/net/ssl/SSLSocketFactory;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    iput-object v0, p0, Lne/w;->p:Ljavax/net/ssl/SSLSocketFactory;

    .line 261
    .line 262
    invoke-virtual {p1}, Lne/w$a;->f()Lze/c;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    iput-object v0, p0, Lne/w;->v:Lze/c;

    .line 270
    .line 271
    invoke-virtual {p1}, Lne/w$a;->F()Ljavax/net/ssl/X509TrustManager;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-static {v1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    iput-object v1, p0, Lne/w;->q:Ljavax/net/ssl/X509TrustManager;

    .line 279
    .line 280
    invoke-virtual {p1}, Lne/w$a;->g()Lne/f;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p1, v0}, Lne/f;->e(Lze/c;)Lne/f;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    iput-object p1, p0, Lne/w;->u:Lne/f;

    .line 292
    .line 293
    goto :goto_2

    .line 294
    :cond_8
    sget-object v0, Lwe/j;->a:Lwe/j$a;

    .line 295
    .line 296
    invoke-virtual {v0}, Lwe/j$a;->g()Lwe/j;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    invoke-virtual {v1}, Lwe/j;->o()Ljavax/net/ssl/X509TrustManager;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    iput-object v1, p0, Lne/w;->q:Ljavax/net/ssl/X509TrustManager;

    .line 305
    .line 306
    invoke-virtual {v0}, Lwe/j$a;->g()Lwe/j;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-static {v1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, v1}, Lwe/j;->n(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    iput-object v0, p0, Lne/w;->p:Ljavax/net/ssl/SSLSocketFactory;

    .line 318
    .line 319
    sget-object v0, Lze/c;->a:Lze/c$a;

    .line 320
    .line 321
    invoke-static {v1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0, v1}, Lze/c$a;->a(Ljavax/net/ssl/X509TrustManager;)Lze/c;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    iput-object v0, p0, Lne/w;->v:Lze/c;

    .line 329
    .line 330
    invoke-virtual {p1}, Lne/w$a;->g()Lne/f;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p1, v0}, Lne/f;->e(Lze/c;)Lne/f;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    iput-object p1, p0, Lne/w;->u:Lne/f;

    .line 342
    .line 343
    :goto_2
    invoke-direct {p0}, Lne/w;->G()V

    .line 344
    .line 345
    .line 346
    return-void
.end method

.method private final G()V
    .locals 4

    .line 1
    iget-object v0, p0, Lne/w;->c:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v2, 0x1

    .line 9
    xor-int/2addr v0, v2

    .line 10
    if-eqz v0, :cond_f

    .line 11
    .line 12
    iget-object v0, p0, Lne/w;->d:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    xor-int/2addr v0, v2

    .line 19
    if-eqz v0, :cond_e

    .line 20
    .line 21
    iget-object v0, p0, Lne/w;->r:Ljava/util/List;

    .line 22
    .line 23
    check-cast v0, Ljava/lang/Iterable;

    .line 24
    .line 25
    instance-of v1, v0, Ljava/util/Collection;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    move-object v1, v0

    .line 31
    check-cast v1, Ljava/util/Collection;

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    :cond_0
    move v0, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lne/k;

    .line 56
    .line 57
    invoke-virtual {v1}, Lne/k;->f()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    move v0, v3

    .line 64
    :goto_0
    if-eqz v0, :cond_a

    .line 65
    .line 66
    iget-object v0, p0, Lne/w;->p:Ljavax/net/ssl/SSLSocketFactory;

    .line 67
    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    move v0, v2

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    move v0, v3

    .line 73
    :goto_1
    const-string v1, "Check failed."

    .line 74
    .line 75
    if-eqz v0, :cond_9

    .line 76
    .line 77
    iget-object v0, p0, Lne/w;->v:Lze/c;

    .line 78
    .line 79
    if-nez v0, :cond_4

    .line 80
    .line 81
    move v0, v2

    .line 82
    goto :goto_2

    .line 83
    :cond_4
    move v0, v3

    .line 84
    :goto_2
    if-eqz v0, :cond_8

    .line 85
    .line 86
    iget-object v0, p0, Lne/w;->q:Ljavax/net/ssl/X509TrustManager;

    .line 87
    .line 88
    if-nez v0, :cond_5

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_5
    move v2, v3

    .line 92
    :goto_3
    if-eqz v2, :cond_7

    .line 93
    .line 94
    iget-object v0, p0, Lne/w;->u:Lne/f;

    .line 95
    .line 96
    sget-object v2, Lne/f;->d:Lne/f;

    .line 97
    .line 98
    invoke-static {v0, v2}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_6

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw v0

    .line 115
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v0

    .line 125
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw v0

    .line 135
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw v0

    .line 145
    :cond_a
    iget-object v0, p0, Lne/w;->p:Ljavax/net/ssl/SSLSocketFactory;

    .line 146
    .line 147
    if-eqz v0, :cond_d

    .line 148
    .line 149
    iget-object v0, p0, Lne/w;->v:Lze/c;

    .line 150
    .line 151
    if-eqz v0, :cond_c

    .line 152
    .line 153
    iget-object v0, p0, Lne/w;->q:Ljavax/net/ssl/X509TrustManager;

    .line 154
    .line 155
    if-eqz v0, :cond_b

    .line 156
    .line 157
    :goto_4
    return-void

    .line 158
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 159
    .line 160
    const-string v1, "x509TrustManager == null"

    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw v0

    .line 170
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 171
    .line 172
    const-string v1, "certificateChainCleaner == null"

    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw v0

    .line 182
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 183
    .line 184
    const-string v1, "sslSocketFactory == null"

    .line 185
    .line 186
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw v0

    .line 194
    :cond_e
    const-string v0, "Null network interceptor: "

    .line 195
    .line 196
    invoke-virtual {p0}, Lne/w;->v()Ljava/util/List;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw v1

    .line 214
    :cond_f
    const-string v0, "Null interceptor: "

    .line 215
    .line 216
    invoke-virtual {p0}, Lne/w;->u()Ljava/util/List;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 225
    .line 226
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    throw v1
.end method

.method public static final synthetic a()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lne/w;->F:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lne/w;->E:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final A()Lne/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w;->n:Lne/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final B()Ljava/net/ProxySelector;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w;->m:Ljava/net/ProxySelector;

    .line 2
    .line 3
    return-object v0
.end method

.method public final C()I
    .locals 1

    .line 1
    iget v0, p0, Lne/w;->y:I

    .line 2
    .line 3
    return v0
.end method

.method public final D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lne/w;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public final E()Ljavax/net/SocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w;->o:Ljavax/net/SocketFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public final F()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    .line 1
    iget-object v0, p0, Lne/w;->p:Ljavax/net/ssl/SSLSocketFactory;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "CLEARTEXT-only client"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final H()I
    .locals 1

    .line 1
    iget v0, p0, Lne/w;->z:I

    .line 2
    .line 3
    return v0
.end method

.method public final c()Lne/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w;->g:Lne/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final d()Lne/c;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Lne/w;->w:I

    .line 2
    .line 3
    return v0
.end method

.method public final f()Lne/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w;->u:Lne/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()I
    .locals 1

    .line 1
    iget v0, p0, Lne/w;->x:I

    .line 2
    .line 3
    return v0
.end method

.method public final j()Lne/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w;->b:Lne/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w;->r:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Lne/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w;->j:Lne/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()Lne/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w;->a:Lne/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()Lne/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w;->k:Lne/p;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o()Lne/q$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w;->e:Lne/q$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lne/w;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public final q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lne/w;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method public final r()Lse/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w;->C:Lse/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public final t()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w;->t:Ljavax/net/ssl/HostnameVerifier;

    .line 2
    .line 3
    return-object v0
.end method

.method public final u()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final v()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public w(Lne/y;)Lne/e;
    .locals 2

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lse/e;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, Lse/e;-><init>(Lne/w;Lne/y;Z)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final x()I
    .locals 1

    .line 1
    iget v0, p0, Lne/w;->A:I

    .line 2
    .line 3
    return v0
.end method

.method public final y()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w;->s:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final z()Ljava/net/Proxy;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w;->l:Ljava/net/Proxy;

    .line 2
    .line 3
    return-object v0
.end method
