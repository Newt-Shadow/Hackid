.class public final Lfb/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfb/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfb/a$a;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/Context;Lfb/b;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Leb/d;->o()Llb/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Llb/l;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lgb/i;

    .line 10
    .line 11
    invoke-direct {v0, p2}, Lgb/i;-><init>(Lfb/b;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p2}, Leb/d;->o()Llb/i;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    invoke-virtual {p2, v0}, Leb/d;->S(Llb/i;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Leb/d;->e()Llb/f;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    new-instance v0, Lgb/d;

    .line 29
    .line 30
    invoke-direct {v0, p1, p2}, Lgb/d;-><init>(Landroid/content/Context;Lfb/b;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p2, v0}, Leb/d;->M(Llb/f;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "app_posthog-disk-queue"

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v1, Ljava/io/File;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-string v3, "posthog-disk-queue"

    .line 50
    .line 51
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance v2, Ljava/io/File;

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    const-string v4, "posthog-disk-replay-queue"

    .line 61
    .line 62
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Leb/d;->n()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    if-nez v3, :cond_2

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    :cond_2
    invoke-virtual {p2, v3}, Leb/d;->R(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Leb/d;->H()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-nez v0, :cond_3

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    :cond_3
    invoke-virtual {p2, v0}, Leb/d;->f0(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2}, Leb/d;->z()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-nez v0, :cond_4

    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    :cond_4
    invoke-virtual {p2, v0}, Leb/d;->Z(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Leb/d;->d()Llb/m;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    if-nez v0, :cond_5

    .line 109
    .line 110
    new-instance v0, Lgb/u;

    .line 111
    .line 112
    const/4 v4, 0x0

    .line 113
    const/4 v5, 0x4

    .line 114
    const/4 v6, 0x0

    .line 115
    move-object v1, v0

    .line 116
    move-object v2, p1

    .line 117
    move-object v3, p2

    .line 118
    invoke-direct/range {v1 .. v6}, Lgb/u;-><init>(Landroid/content/Context;Lfb/b;Landroid/content/SharedPreferences;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 119
    .line 120
    .line 121
    :cond_5
    invoke-virtual {p2, v0}, Leb/d;->L(Llb/m;)V

    .line 122
    .line 123
    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 125
    .line 126
    const/16 v1, 0x21

    .line 127
    .line 128
    if-lt v0, v1, :cond_6

    .line 129
    .line 130
    invoke-virtual {p2}, Leb/d;->f()Llb/g;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    instance-of v0, v0, Llb/h;

    .line 135
    .line 136
    if-eqz v0, :cond_6

    .line 137
    .line 138
    new-instance v0, Lgb/h;

    .line 139
    .line 140
    invoke-direct {v0}, Lgb/h;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, v0}, Leb/d;->N(Llb/g;)V

    .line 144
    .line 145
    .line 146
    :cond_6
    invoke-virtual {p2}, Leb/d;->r()Llb/k;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    if-nez v0, :cond_7

    .line 151
    .line 152
    new-instance v0, Lgb/j;

    .line 153
    .line 154
    invoke-direct {v0, p1}, Lgb/j;-><init>(Landroid/content/Context;)V

    .line 155
    .line 156
    .line 157
    :cond_7
    invoke-virtual {p2, v0}, Leb/d;->V(Llb/k;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2}, Leb/d;->B()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    const-string v1, "posthog-flutter"

    .line 165
    .line 166
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-nez v0, :cond_8

    .line 171
    .line 172
    const-string v0, "posthog-android"

    .line 173
    .line 174
    invoke-virtual {p2, v0}, Leb/d;->a0(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    const-string v0, "3.21.3"

    .line 178
    .line 179
    invoke-virtual {p2, v0}, Leb/d;->b0(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :cond_8
    new-instance v4, Lgb/b;

    .line 183
    .line 184
    const/4 v0, 0x1

    .line 185
    const/4 v1, 0x0

    .line 186
    invoke-direct {v4, v1, v0, v1}, Lgb/b;-><init>(Landroid/os/Looper;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 187
    .line 188
    .line 189
    new-instance v0, Lhb/l;

    .line 190
    .line 191
    invoke-direct {v0, p1, p2, v4}, Lhb/l;-><init>(Landroid/content/Context;Lfb/b;Lgb/b;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2, v0}, Leb/d;->a(Leb/g;)V

    .line 195
    .line 196
    .line 197
    new-instance v0, Lib/g;

    .line 198
    .line 199
    invoke-direct {v0, p2}, Lib/g;-><init>(Lfb/b;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p2, v0}, Leb/d;->a(Leb/g;)V

    .line 203
    .line 204
    .line 205
    instance-of v0, p1, Landroid/app/Application;

    .line 206
    .line 207
    if-eqz v0, :cond_a

    .line 208
    .line 209
    invoke-virtual {p2}, Lfb/b;->h0()Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-nez v0, :cond_9

    .line 214
    .line 215
    invoke-virtual {p2}, Lfb/b;->i0()Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-nez v0, :cond_9

    .line 220
    .line 221
    invoke-virtual {p2}, Leb/d;->F()Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-eqz v0, :cond_a

    .line 226
    .line 227
    :cond_9
    new-instance v0, Lgb/c;

    .line 228
    .line 229
    move-object v1, p1

    .line 230
    check-cast v1, Landroid/app/Application;

    .line 231
    .line 232
    invoke-direct {v0, v1, p2}, Lgb/c;-><init>(Landroid/app/Application;Lfb/b;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p2, v0}, Leb/d;->a(Leb/g;)V

    .line 236
    .line 237
    .line 238
    :cond_a
    invoke-virtual {p2}, Lfb/b;->g0()Z

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-eqz v0, :cond_b

    .line 243
    .line 244
    new-instance v0, Lgb/p;

    .line 245
    .line 246
    invoke-direct {v0, p1, p2}, Lgb/p;-><init>(Landroid/content/Context;Lfb/b;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p2, v0}, Leb/d;->a(Leb/g;)V

    .line 250
    .line 251
    .line 252
    :cond_b
    new-instance v0, Lgb/s;

    .line 253
    .line 254
    const/4 v5, 0x0

    .line 255
    const/16 v6, 0x8

    .line 256
    .line 257
    const/4 v7, 0x0

    .line 258
    move-object v1, v0

    .line 259
    move-object v2, p1

    .line 260
    move-object v3, p2

    .line 261
    invoke-direct/range {v1 .. v7}, Lgb/s;-><init>(Landroid/content/Context;Lfb/b;Lgb/b;Landroidx/lifecycle/i;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p2, v0}, Leb/d;->a(Leb/g;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p2}, Leb/d;->I()Z

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    if-eqz v0, :cond_c

    .line 272
    .line 273
    new-instance v0, Ljb/a;

    .line 274
    .line 275
    invoke-direct {v0, p1}, Ljb/a;-><init>(Landroid/content/Context;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p2, v0}, Leb/d;->a(Leb/g;)V

    .line 279
    .line 280
    .line 281
    :cond_c
    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;Lfb/b;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "config"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lfb/a;->a()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lfb/a;->a:Lfb/a$a;

    .line 17
    .line 18
    invoke-static {p1}, Lgb/o;->b(Landroid/content/Context;)Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {v1, p1, p2}, Lfb/a$a;->a(Landroid/content/Context;Lfb/b;)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Leb/c;->A:Leb/c$a;

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Leb/c$a;->j(Leb/d;)V

    .line 28
    .line 29
    .line 30
    sget-object p1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit v0

    .line 36
    throw p1
.end method
