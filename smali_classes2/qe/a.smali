.class public final Lqe/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lne/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqe/a$a;
    }
.end annotation


# static fields
.field public static final a:Lqe/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lqe/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lqe/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lqe/a;->a:Lqe/a$a;

    return-void
.end method

.method public constructor <init>(Lne/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lne/u$a;)Lne/a0;
    .locals 6

    .line 1
    const-string v0, "chain"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lne/u$a;->call()Lne/e;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    new-instance v3, Lqe/b$b;

    .line 15
    .line 16
    invoke-interface {p1}, Lne/u$a;->b()Lne/y;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    const/4 v5, 0x0

    .line 21
    invoke-direct {v3, v1, v2, v4, v5}, Lqe/b$b;-><init>(JLne/y;Lne/a0;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Lqe/b$b;->b()Lqe/b;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lqe/b;->b()Lne/y;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1}, Lqe/b;->a()Lne/a0;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    instance-of v3, v0, Lse/e;

    .line 37
    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    move-object v3, v0

    .line 41
    check-cast v3, Lse/e;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move-object v3, v5

    .line 45
    :goto_0
    if-nez v3, :cond_1

    .line 46
    .line 47
    move-object v3, v5

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {v3}, Lse/e;->m()Lne/q;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    :goto_1
    if-nez v3, :cond_2

    .line 54
    .line 55
    sget-object v3, Lne/q;->b:Lne/q;

    .line 56
    .line 57
    :cond_2
    if-nez v2, :cond_3

    .line 58
    .line 59
    if-nez v1, :cond_3

    .line 60
    .line 61
    new-instance v1, Lne/a0$a;

    .line 62
    .line 63
    invoke-direct {v1}, Lne/a0$a;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-interface {p1}, Lne/u$a;->b()Lne/y;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v1, p1}, Lne/a0$a;->s(Lne/y;)Lne/a0$a;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    sget-object v1, Lne/x;->d:Lne/x;

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Lne/a0$a;->q(Lne/x;)Lne/a0$a;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const/16 v1, 0x1f8

    .line 81
    .line 82
    invoke-virtual {p1, v1}, Lne/a0$a;->g(I)Lne/a0$a;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const-string v1, "Unsatisfiable Request (only-if-cached)"

    .line 87
    .line 88
    invoke-virtual {p1, v1}, Lne/a0$a;->n(Ljava/lang/String;)Lne/a0$a;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    sget-object v1, Loe/d;->c:Lne/b0;

    .line 93
    .line 94
    invoke-virtual {p1, v1}, Lne/a0$a;->b(Lne/b0;)Lne/a0$a;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const-wide/16 v1, -0x1

    .line 99
    .line 100
    invoke-virtual {p1, v1, v2}, Lne/a0$a;->t(J)Lne/a0$a;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 105
    .line 106
    .line 107
    move-result-wide v1

    .line 108
    invoke-virtual {p1, v1, v2}, Lne/a0$a;->r(J)Lne/a0$a;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1}, Lne/a0$a;->c()Lne/a0;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {v3, v0, p1}, Lne/q;->z(Lne/e;Lne/a0;)V

    .line 117
    .line 118
    .line 119
    return-object p1

    .line 120
    :cond_3
    if-nez v2, :cond_4

    .line 121
    .line 122
    invoke-static {v1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Lne/a0;->w()Lne/a0$a;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    sget-object v2, Lqe/a;->a:Lqe/a$a;

    .line 130
    .line 131
    invoke-static {v2, v1}, Lqe/a$a;->b(Lqe/a$a;Lne/a0;)Lne/a0;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {p1, v1}, Lne/a0$a;->d(Lne/a0;)Lne/a0$a;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lne/a0$a;->c()Lne/a0;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {v3, v0, p1}, Lne/q;->b(Lne/e;Lne/a0;)V

    .line 144
    .line 145
    .line 146
    return-object p1

    .line 147
    :cond_4
    if-eqz v1, :cond_5

    .line 148
    .line 149
    invoke-virtual {v3, v0, v1}, Lne/q;->a(Lne/e;Lne/a0;)V

    .line 150
    .line 151
    .line 152
    :cond_5
    invoke-interface {p1, v2}, Lne/u$a;->a(Lne/y;)Lne/a0;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    if-eqz v1, :cond_a

    .line 157
    .line 158
    const/4 v0, 0x0

    .line 159
    if-nez p1, :cond_6

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_6
    invoke-virtual {p1}, Lne/a0;->f()I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    const/16 v3, 0x130

    .line 167
    .line 168
    if-ne v2, v3, :cond_7

    .line 169
    .line 170
    const/4 v0, 0x1

    .line 171
    :cond_7
    :goto_2
    if-nez v0, :cond_9

    .line 172
    .line 173
    invoke-virtual {v1}, Lne/a0;->a()Lne/b0;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    if-nez v0, :cond_8

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_8
    invoke-static {v0}, Loe/d;->l(Ljava/io/Closeable;)V

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_9
    invoke-virtual {v1}, Lne/a0;->w()Lne/a0$a;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    sget-object v2, Lqe/a;->a:Lqe/a$a;

    .line 189
    .line 190
    invoke-virtual {v1}, Lne/a0;->q()Lne/s;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-virtual {p1}, Lne/a0;->q()Lne/s;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    invoke-static {v2, v3, v4}, Lqe/a$a;->a(Lqe/a$a;Lne/s;Lne/s;)Lne/s;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-virtual {v0, v3}, Lne/a0$a;->l(Lne/s;)Lne/a0$a;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {p1}, Lne/a0;->P()J

    .line 207
    .line 208
    .line 209
    move-result-wide v3

    .line 210
    invoke-virtual {v0, v3, v4}, Lne/a0$a;->t(J)Lne/a0$a;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {p1}, Lne/a0;->E()J

    .line 215
    .line 216
    .line 217
    move-result-wide v3

    .line 218
    invoke-virtual {v0, v3, v4}, Lne/a0$a;->r(J)Lne/a0$a;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-static {v2, v1}, Lqe/a$a;->b(Lqe/a$a;Lne/a0;)Lne/a0;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {v0, v1}, Lne/a0$a;->d(Lne/a0;)Lne/a0$a;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-static {v2, p1}, Lqe/a$a;->b(Lqe/a$a;Lne/a0;)Lne/a0;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-virtual {v0, v1}, Lne/a0$a;->o(Lne/a0;)Lne/a0$a;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lne/a0$a;->c()Lne/a0;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1}, Lne/a0;->a()Lne/b0;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1}, Lne/b0;->close()V

    .line 249
    .line 250
    .line 251
    invoke-static {v5}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    throw v5

    .line 255
    :cond_a
    :goto_3
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p1}, Lne/a0;->w()Lne/a0$a;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    sget-object v2, Lqe/a;->a:Lqe/a$a;

    .line 263
    .line 264
    invoke-static {v2, v1}, Lqe/a$a;->b(Lqe/a$a;Lne/a0;)Lne/a0;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-virtual {v0, v1}, Lne/a0$a;->d(Lne/a0;)Lne/a0$a;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-static {v2, p1}, Lqe/a$a;->b(Lqe/a$a;Lne/a0;)Lne/a0;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-virtual {v0, p1}, Lne/a0$a;->o(Lne/a0;)Lne/a0$a;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-virtual {p1}, Lne/a0$a;->c()Lne/a0;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    return-object p1
.end method
