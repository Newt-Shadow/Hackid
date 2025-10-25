.class public final Lg3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg3/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg3/h$a;
    }
.end annotation


# static fields
.field private static final o:[I

.field private static final p:Lg3/h$a;

.field private static final q:Lg3/h$a;


# instance fields
.field private b:Z

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Lo6/q;

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lg3/h;->o:[I

    .line 9
    .line 10
    new-instance v0, Lg3/h$a;

    .line 11
    .line 12
    new-instance v1, Lg3/f;

    .line 13
    .line 14
    invoke-direct {v1}, Lg3/f;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Lg3/h$a;-><init>(Lg3/h$a$a;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lg3/h;->p:Lg3/h$a;

    .line 21
    .line 22
    new-instance v0, Lg3/h$a;

    .line 23
    .line 24
    new-instance v1, Lg3/g;

    .line 25
    .line 26
    invoke-direct {v1}, Lg3/g;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Lg3/h$a;-><init>(Lg3/h$a$a;)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lg3/h;->q:Lg3/h$a;

    .line 33
    .line 34
    return-void

    .line 35
    :array_0
    .array-data 4
        0x5
        0x4
        0xc
        0x8
        0x3
        0xa
        0x9
        0xb
        0x6
        0x2
        0x0
        0x1
        0x7
        0x10
        0xf
        0xe
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lg3/h;->k:I

    .line 6
    .line 7
    const v0, 0x1b8a0

    .line 8
    .line 9
    .line 10
    iput v0, p0, Lg3/h;->n:I

    .line 11
    .line 12
    invoke-static {}, Lo6/q;->D()Lo6/q;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lg3/h;->m:Lo6/q;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic e()Ljava/lang/reflect/Constructor;
    .locals 1

    .line 1
    invoke-static {}, Lg3/h;->i()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f()Ljava/lang/reflect/Constructor;
    .locals 1

    .line 1
    invoke-static {}, Lg3/h;->h()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method private g(ILjava/util/List;)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    goto/16 :goto_3

    .line 7
    .line 8
    :pswitch_1
    new-instance p1, Li3/b;

    .line 9
    .line 10
    invoke-direct {p1}, Li3/b;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :pswitch_2
    sget-object p1, Lg3/h;->q:Lg3/h$a;

    .line 19
    .line 20
    new-array v0, v1, [Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lg3/h$a;->a([Ljava/lang/Object;)Lg3/k;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_4

    .line 27
    .line 28
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    goto/16 :goto_3

    .line 32
    .line 33
    :pswitch_3
    new-instance p1, Ll3/a;

    .line 34
    .line 35
    invoke-direct {p1}, Ll3/a;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :pswitch_4
    new-instance p1, Lr3/b;

    .line 44
    .line 45
    invoke-direct {p1}, Lr3/b;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto/16 :goto_3

    .line 52
    .line 53
    :pswitch_5
    new-instance p1, Lq3/h0;

    .line 54
    .line 55
    iget v0, p0, Lg3/h;->k:I

    .line 56
    .line 57
    new-instance v1, Ly4/m0;

    .line 58
    .line 59
    const-wide/16 v2, 0x0

    .line 60
    .line 61
    invoke-direct {v1, v2, v3}, Ly4/m0;-><init>(J)V

    .line 62
    .line 63
    .line 64
    new-instance v2, Lq3/j;

    .line 65
    .line 66
    iget v3, p0, Lg3/h;->l:I

    .line 67
    .line 68
    iget-object v4, p0, Lg3/h;->m:Lo6/q;

    .line 69
    .line 70
    invoke-direct {v2, v3, v4}, Lq3/j;-><init>(ILjava/util/List;)V

    .line 71
    .line 72
    .line 73
    iget v3, p0, Lg3/h;->n:I

    .line 74
    .line 75
    invoke-direct {p1, v0, v1, v2, v3}, Lq3/h0;-><init>(ILy4/m0;Lq3/i0$c;I)V

    .line 76
    .line 77
    .line 78
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto/16 :goto_3

    .line 82
    .line 83
    :pswitch_6
    new-instance p1, Lq3/a0;

    .line 84
    .line 85
    invoke-direct {p1}, Lq3/a0;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    goto/16 :goto_3

    .line 92
    .line 93
    :pswitch_7
    new-instance p1, Lp3/d;

    .line 94
    .line 95
    invoke-direct {p1}, Lp3/d;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    goto/16 :goto_3

    .line 102
    .line 103
    :pswitch_8
    new-instance p1, Lo3/g;

    .line 104
    .line 105
    iget v0, p0, Lg3/h;->i:I

    .line 106
    .line 107
    invoke-direct {p1, v0}, Lo3/g;-><init>(I)V

    .line 108
    .line 109
    .line 110
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    new-instance p1, Lo3/k;

    .line 114
    .line 115
    iget v0, p0, Lg3/h;->h:I

    .line 116
    .line 117
    invoke-direct {p1, v0}, Lo3/k;-><init>(I)V

    .line 118
    .line 119
    .line 120
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    goto/16 :goto_3

    .line 124
    .line 125
    :pswitch_9
    new-instance p1, Ln3/f;

    .line 126
    .line 127
    iget v2, p0, Lg3/h;->j:I

    .line 128
    .line 129
    iget-boolean v3, p0, Lg3/h;->b:Z

    .line 130
    .line 131
    or-int/2addr v2, v3

    .line 132
    iget-boolean v3, p0, Lg3/h;->c:Z

    .line 133
    .line 134
    if-eqz v3, :cond_0

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_0
    move v0, v1

    .line 138
    :goto_0
    or-int/2addr v0, v2

    .line 139
    invoke-direct {p1, v0}, Ln3/f;-><init>(I)V

    .line 140
    .line 141
    .line 142
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    goto/16 :goto_3

    .line 146
    .line 147
    :pswitch_a
    new-instance p1, Lm3/e;

    .line 148
    .line 149
    iget v0, p0, Lg3/h;->g:I

    .line 150
    .line 151
    invoke-direct {p1, v0}, Lm3/e;-><init>(I)V

    .line 152
    .line 153
    .line 154
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    goto :goto_3

    .line 158
    :pswitch_b
    new-instance p1, Lk3/c;

    .line 159
    .line 160
    invoke-direct {p1}, Lk3/c;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :pswitch_c
    sget-object p1, Lg3/h;->p:Lg3/h$a;

    .line 168
    .line 169
    iget v0, p0, Lg3/h;->f:I

    .line 170
    .line 171
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {p1, v0}, Lg3/h$a;->a([Ljava/lang/Object;)Lg3/k;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    if-eqz p1, :cond_1

    .line 184
    .line 185
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_1
    new-instance p1, Lj3/d;

    .line 190
    .line 191
    iget v0, p0, Lg3/h;->f:I

    .line 192
    .line 193
    invoke-direct {p1, v0}, Lj3/d;-><init>(I)V

    .line 194
    .line 195
    .line 196
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    goto :goto_3

    .line 200
    :pswitch_d
    new-instance p1, Lh3/b;

    .line 201
    .line 202
    iget v2, p0, Lg3/h;->e:I

    .line 203
    .line 204
    iget-boolean v3, p0, Lg3/h;->b:Z

    .line 205
    .line 206
    or-int/2addr v2, v3

    .line 207
    iget-boolean v3, p0, Lg3/h;->c:Z

    .line 208
    .line 209
    if-eqz v3, :cond_2

    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_2
    move v0, v1

    .line 213
    :goto_1
    or-int/2addr v0, v2

    .line 214
    invoke-direct {p1, v0}, Lh3/b;-><init>(I)V

    .line 215
    .line 216
    .line 217
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    goto :goto_3

    .line 221
    :pswitch_e
    new-instance p1, Lq3/h;

    .line 222
    .line 223
    iget v2, p0, Lg3/h;->d:I

    .line 224
    .line 225
    iget-boolean v3, p0, Lg3/h;->b:Z

    .line 226
    .line 227
    or-int/2addr v2, v3

    .line 228
    iget-boolean v3, p0, Lg3/h;->c:Z

    .line 229
    .line 230
    if-eqz v3, :cond_3

    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_3
    move v0, v1

    .line 234
    :goto_2
    or-int/2addr v0, v2

    .line 235
    invoke-direct {p1, v0}, Lq3/h;-><init>(I)V

    .line 236
    .line 237
    .line 238
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    goto :goto_3

    .line 242
    :pswitch_f
    new-instance p1, Lq3/e;

    .line 243
    .line 244
    invoke-direct {p1}, Lq3/e;-><init>()V

    .line 245
    .line 246
    .line 247
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    goto :goto_3

    .line 251
    :pswitch_10
    new-instance p1, Lq3/b;

    .line 252
    .line 253
    invoke-direct {p1}, Lq3/b;-><init>()V

    .line 254
    .line 255
    .line 256
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    :cond_4
    :goto_3
    return-void

    .line 260
    nop

    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static h()Ljava/lang/reflect/Constructor;
    .locals 5

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    const-string v1, "com.google.android.exoplayer2.ext.flac.FlacLibrary"

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    new-array v3, v2, [Ljava/lang/Class;

    .line 11
    .line 12
    const-string v4, "isAvailable"

    .line 13
    .line 14
    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-array v2, v2, [Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const-string v0, "com.google.android.exoplayer2.ext.flac.FlacExtractor"

    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-class v1, Lg3/k;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 44
    .line 45
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0

    .line 54
    :cond_0
    return-object v3
.end method

.method private static i()Ljava/lang/reflect/Constructor;
    .locals 2

    .line 1
    const-string v0, "com.google.android.exoplayer2.decoder.midi.MidiExtractor"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lg3/k;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    new-array v1, v1, [Ljava/lang/Class;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method


# virtual methods
.method public declared-synchronized b()[Lg3/k;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 3
    .line 4
    new-instance v1, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Lg3/h;->c(Landroid/net/Uri;Ljava/util/Map;)[Lg3/k;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    .line 14
    return-object v0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    monitor-exit p0

    .line 17
    throw v0
.end method

.method public declared-synchronized c(Landroid/net/Uri;Ljava/util/Map;)[Lg3/k;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    sget-object v1, Lg3/h;->o:[I

    .line 5
    .line 6
    array-length v2, v1

    .line 7
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Ly4/k;->b(Ljava/util/Map;)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    const/4 v2, -0x1

    .line 15
    if-eq p2, v2, :cond_0

    .line 16
    .line 17
    invoke-direct {p0, p2, v0}, Lg3/h;->g(ILjava/util/List;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-static {p1}, Ly4/k;->c(Landroid/net/Uri;)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eq p1, v2, :cond_1

    .line 25
    .line 26
    if-eq p1, p2, :cond_1

    .line 27
    .line 28
    invoke-direct {p0, p1, v0}, Lg3/h;->g(ILjava/util/List;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    array-length v2, v1

    .line 32
    const/4 v3, 0x0

    .line 33
    :goto_0
    if-ge v3, v2, :cond_3

    .line 34
    .line 35
    aget v4, v1, v3

    .line 36
    .line 37
    if-eq v4, p2, :cond_2

    .line 38
    .line 39
    if-eq v4, p1, :cond_2

    .line 40
    .line 41
    invoke-direct {p0, v4, v0}, Lg3/h;->g(ILjava/util/List;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    new-array p1, p1, [Lg3/k;

    .line 52
    .line 53
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, [Lg3/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    monitor-exit p0

    .line 60
    return-object p1

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    monitor-exit p0

    .line 63
    throw p1
.end method
