.class public final Li4/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld4/r;
.implements Lj4/l$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li4/k$b;
    }
.end annotation


# instance fields
.field private final a:Li4/h;

.field private final b:Lj4/l;

.field private final c:Li4/g;

.field private final d:Lx4/m0;

.field private final e:Lf3/v;

.field private final f:Lf3/u$a;

.field private final g:Lx4/d0;

.field private final h:Ld4/a0$a;

.field private final i:Lx4/b;

.field private final j:Ljava/util/IdentityHashMap;

.field private final k:Li4/s;

.field private final l:Ld4/h;

.field private final m:Z

.field private final n:I

.field private final o:Z

.field private final p:Lc3/t3;

.field private final q:Li4/p$b;

.field private r:Ld4/r$a;

.field private s:I

.field private t:Ld4/u0;

.field private u:[Li4/p;

.field private v:[Li4/p;

.field private w:[[I

.field private x:I

.field private y:Ld4/n0;


# direct methods
.method public constructor <init>(Li4/h;Lj4/l;Li4/g;Lx4/m0;Lf3/v;Lf3/u$a;Lx4/d0;Ld4/a0$a;Lx4/b;Ld4/h;ZIZLc3/t3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li4/k;->a:Li4/h;

    .line 5
    .line 6
    iput-object p2, p0, Li4/k;->b:Lj4/l;

    .line 7
    .line 8
    iput-object p3, p0, Li4/k;->c:Li4/g;

    .line 9
    .line 10
    iput-object p4, p0, Li4/k;->d:Lx4/m0;

    .line 11
    .line 12
    iput-object p5, p0, Li4/k;->e:Lf3/v;

    .line 13
    .line 14
    iput-object p6, p0, Li4/k;->f:Lf3/u$a;

    .line 15
    .line 16
    iput-object p7, p0, Li4/k;->g:Lx4/d0;

    .line 17
    .line 18
    iput-object p8, p0, Li4/k;->h:Ld4/a0$a;

    .line 19
    .line 20
    iput-object p9, p0, Li4/k;->i:Lx4/b;

    .line 21
    .line 22
    iput-object p10, p0, Li4/k;->l:Ld4/h;

    .line 23
    .line 24
    iput-boolean p11, p0, Li4/k;->m:Z

    .line 25
    .line 26
    iput p12, p0, Li4/k;->n:I

    .line 27
    .line 28
    iput-boolean p13, p0, Li4/k;->o:Z

    .line 29
    .line 30
    iput-object p14, p0, Li4/k;->p:Lc3/t3;

    .line 31
    .line 32
    new-instance p1, Li4/k$b;

    .line 33
    .line 34
    const/4 p2, 0x0

    .line 35
    invoke-direct {p1, p0, p2}, Li4/k$b;-><init>(Li4/k;Li4/k$a;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Li4/k;->q:Li4/p$b;

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    new-array p2, p1, [Ld4/n0;

    .line 42
    .line 43
    invoke-interface {p10, p2}, Ld4/h;->a([Ld4/n0;)Ld4/n0;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    iput-object p2, p0, Li4/k;->y:Ld4/n0;

    .line 48
    .line 49
    new-instance p2, Ljava/util/IdentityHashMap;

    .line 50
    .line 51
    invoke-direct {p2}, Ljava/util/IdentityHashMap;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object p2, p0, Li4/k;->j:Ljava/util/IdentityHashMap;

    .line 55
    .line 56
    new-instance p2, Li4/s;

    .line 57
    .line 58
    invoke-direct {p2}, Li4/s;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object p2, p0, Li4/k;->k:Li4/s;

    .line 62
    .line 63
    new-array p2, p1, [Li4/p;

    .line 64
    .line 65
    iput-object p2, p0, Li4/k;->u:[Li4/p;

    .line 66
    .line 67
    new-array p2, p1, [Li4/p;

    .line 68
    .line 69
    iput-object p2, p0, Li4/k;->v:[Li4/p;

    .line 70
    .line 71
    new-array p1, p1, [[I

    .line 72
    .line 73
    iput-object p1, p0, Li4/k;->w:[[I

    .line 74
    .line 75
    return-void
.end method

.method static synthetic h(Li4/k;)I
    .locals 1

    .line 1
    iget v0, p0, Li4/k;->s:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Li4/k;->s:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic j(Li4/k;)[Li4/p;
    .locals 0

    .line 1
    iget-object p0, p0, Li4/k;->u:[Li4/p;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic l(Li4/k;Ld4/u0;)Ld4/u0;
    .locals 0

    .line 1
    iput-object p1, p0, Li4/k;->t:Ld4/u0;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic n(Li4/k;)Ld4/r$a;
    .locals 0

    .line 1
    iget-object p0, p0, Li4/k;->r:Ld4/r$a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic o(Li4/k;)Lj4/l;
    .locals 0

    .line 1
    iget-object p0, p0, Li4/k;->b:Lj4/l;

    .line 2
    .line 3
    return-object p0
.end method

.method private s(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 21

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    .line 29
    .line 30
    new-instance v4, Ljava/util/HashSet;

    .line 31
    .line 32
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 33
    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    move v6, v5

    .line 37
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-ge v6, v7, :cond_5

    .line 42
    .line 43
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    check-cast v7, Lj4/h$a;

    .line 48
    .line 49
    iget-object v7, v7, Lj4/h$a;->d:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    if-nez v8, :cond_0

    .line 56
    .line 57
    move-object/from16 v12, p0

    .line 58
    .line 59
    move-object/from16 v9, p4

    .line 60
    .line 61
    move-object/from16 v11, p5

    .line 62
    .line 63
    goto/16 :goto_3

    .line 64
    .line 65
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 72
    .line 73
    .line 74
    const/4 v8, 0x1

    .line 75
    move v9, v5

    .line 76
    move v10, v8

    .line 77
    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result v11

    .line 81
    if-ge v9, v11, :cond_3

    .line 82
    .line 83
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    check-cast v11, Lj4/h$a;

    .line 88
    .line 89
    iget-object v11, v11, Lj4/h$a;->d:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {v7, v11}, Ly4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v11

    .line 95
    if-eqz v11, :cond_2

    .line 96
    .line 97
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v11

    .line 101
    check-cast v11, Lj4/h$a;

    .line 102
    .line 103
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v12

    .line 107
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    iget-object v12, v11, Lj4/h$a;->a:Landroid/net/Uri;

    .line 111
    .line 112
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    iget-object v12, v11, Lj4/h$a;->b:Lb3/x1;

    .line 116
    .line 117
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    iget-object v11, v11, Lj4/h$a;->b:Lb3/x1;

    .line 121
    .line 122
    iget-object v11, v11, Lb3/x1;->i:Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {v11, v8}, Ly4/q0;->K(Ljava/lang/String;I)I

    .line 125
    .line 126
    .line 127
    move-result v11

    .line 128
    if-ne v11, v8, :cond_1

    .line 129
    .line 130
    move v11, v8

    .line 131
    goto :goto_2

    .line 132
    :cond_1
    move v11, v5

    .line 133
    :goto_2
    and-int/2addr v10, v11

    .line 134
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v9, "audio:"

    .line 143
    .line 144
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    const/4 v13, 0x1

    .line 155
    new-array v8, v5, [Landroid/net/Uri;

    .line 156
    .line 157
    invoke-static {v8}, Ly4/q0;->k([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    check-cast v8, [Landroid/net/Uri;

    .line 162
    .line 163
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    move-object v14, v8

    .line 168
    check-cast v14, [Landroid/net/Uri;

    .line 169
    .line 170
    new-array v8, v5, [Lb3/x1;

    .line 171
    .line 172
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v8

    .line 176
    move-object v15, v8

    .line 177
    check-cast v15, [Lb3/x1;

    .line 178
    .line 179
    const/16 v16, 0x0

    .line 180
    .line 181
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 182
    .line 183
    .line 184
    move-result-object v17

    .line 185
    move-object/from16 v11, p0

    .line 186
    .line 187
    move-object v12, v7

    .line 188
    move-object/from16 v18, p6

    .line 189
    .line 190
    move-wide/from16 v19, p1

    .line 191
    .line 192
    invoke-direct/range {v11 .. v20}, Li4/k;->w(Ljava/lang/String;I[Landroid/net/Uri;[Lb3/x1;Lb3/x1;Ljava/util/List;Ljava/util/Map;J)Li4/p;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    invoke-static {v3}, Lq6/e;->k(Ljava/util/Collection;)[I

    .line 197
    .line 198
    .line 199
    move-result-object v9

    .line 200
    move-object/from16 v11, p5

    .line 201
    .line 202
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-object/from16 v9, p4

    .line 206
    .line 207
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-object/from16 v12, p0

    .line 211
    .line 212
    iget-boolean v13, v12, Li4/k;->m:Z

    .line 213
    .line 214
    if-eqz v13, :cond_4

    .line 215
    .line 216
    if-eqz v10, :cond_4

    .line 217
    .line 218
    new-array v10, v5, [Lb3/x1;

    .line 219
    .line 220
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v10

    .line 224
    check-cast v10, [Lb3/x1;

    .line 225
    .line 226
    new-instance v13, Ld4/s0;

    .line 227
    .line 228
    invoke-direct {v13, v7, v10}, Ld4/s0;-><init>(Ljava/lang/String;[Lb3/x1;)V

    .line 229
    .line 230
    .line 231
    filled-new-array {v13}, [Ld4/s0;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    new-array v10, v5, [I

    .line 236
    .line 237
    invoke-virtual {v8, v7, v5, v10}, Li4/p;->c0([Ld4/s0;I[I)V

    .line 238
    .line 239
    .line 240
    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 241
    .line 242
    goto/16 :goto_0

    .line 243
    .line 244
    :cond_5
    move-object/from16 v12, p0

    .line 245
    .line 246
    return-void
.end method

.method private u(Lj4/h;JLjava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 20

    move-object/from16 v0, p1

    .line 1
    iget-object v1, v0, Lj4/h;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    .line 2
    :goto_0
    iget-object v7, v0, Lj4/h;->e:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ge v4, v7, :cond_3

    .line 3
    iget-object v7, v0, Lj4/h;->e:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lj4/h$b;

    .line 4
    iget-object v7, v7, Lj4/h$b;->b:Lb3/x1;

    .line 5
    iget v10, v7, Lb3/x1;->r:I

    if-gtz v10, :cond_2

    iget-object v10, v7, Lb3/x1;->i:Ljava/lang/String;

    invoke-static {v10, v8}, Ly4/q0;->L(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v7, v7, Lb3/x1;->i:Ljava/lang/String;

    invoke-static {v7, v9}, Ly4/q0;->L(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 7
    aput v9, v2, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    const/4 v7, -0x1

    .line 8
    aput v7, v2, v4

    goto :goto_2

    .line 9
    :cond_2
    :goto_1
    aput v8, v2, v4

    add-int/lit8 v5, v5, 0x1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-lez v5, :cond_4

    move v1, v5

    move v4, v9

    move v5, v3

    goto :goto_3

    :cond_4
    if-ge v6, v1, :cond_5

    sub-int/2addr v1, v6

    move v4, v3

    move v5, v9

    goto :goto_3

    :cond_5
    move v4, v3

    move v5, v4

    .line 10
    :goto_3
    new-array v13, v1, [Landroid/net/Uri;

    .line 11
    new-array v6, v1, [Lb3/x1;

    .line 12
    new-array v7, v1, [I

    move v10, v3

    move v11, v10

    .line 13
    :goto_4
    iget-object v12, v0, Lj4/h;->e:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v10, v12, :cond_9

    if-eqz v4, :cond_6

    .line 14
    aget v12, v2, v10

    if-ne v12, v8, :cond_8

    :cond_6
    if-eqz v5, :cond_7

    aget v12, v2, v10

    if-eq v12, v9, :cond_8

    .line 15
    :cond_7
    iget-object v12, v0, Lj4/h;->e:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lj4/h$b;

    .line 16
    iget-object v14, v12, Lj4/h$b;->a:Landroid/net/Uri;

    aput-object v14, v13, v11

    .line 17
    iget-object v12, v12, Lj4/h$b;->b:Lb3/x1;

    aput-object v12, v6, v11

    add-int/lit8 v12, v11, 0x1

    .line 18
    aput v10, v7, v11

    move v11, v12

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 19
    :cond_9
    aget-object v2, v6, v3

    iget-object v2, v2, Lb3/x1;->i:Ljava/lang/String;

    .line 20
    invoke-static {v2, v8}, Ly4/q0;->K(Ljava/lang/String;I)I

    move-result v5

    .line 21
    invoke-static {v2, v9}, Ly4/q0;->K(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v9, :cond_a

    if-nez v2, :cond_b

    .line 22
    iget-object v8, v0, Lj4/h;->g:Ljava/util/List;

    .line 23
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_b

    :cond_a
    if-gt v5, v9, :cond_b

    add-int v8, v2, v5

    if-lez v8, :cond_b

    move v8, v9

    goto :goto_5

    :cond_b
    move v8, v3

    :goto_5
    if-nez v4, :cond_c

    if-lez v2, :cond_c

    move v12, v9

    goto :goto_6

    :cond_c
    move v12, v3

    :goto_6
    const-string v4, "main"

    .line 24
    iget-object v15, v0, Lj4/h;->j:Lb3/x1;

    iget-object v14, v0, Lj4/h;->k:Ljava/util/List;

    move-object/from16 v10, p0

    move-object v11, v4

    move-object/from16 v16, v14

    move-object v14, v6

    move-object/from16 v17, p6

    move-wide/from16 v18, p2

    .line 25
    invoke-direct/range {v10 .. v19}, Li4/k;->w(Ljava/lang/String;I[Landroid/net/Uri;[Lb3/x1;Lb3/x1;Ljava/util/List;Ljava/util/Map;J)Li4/p;

    move-result-object v10

    move-object/from16 v11, p4

    .line 26
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, p5

    .line 27
    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, p0

    .line 28
    iget-boolean v11, v7, Li4/k;->m:Z

    if-eqz v11, :cond_13

    if-eqz v8, :cond_13

    .line 29
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-lez v5, :cond_10

    .line 30
    new-array v5, v1, [Lb3/x1;

    move v9, v3

    :goto_7
    if-ge v9, v1, :cond_d

    .line 31
    aget-object v11, v6, v9

    invoke-static {v11}, Li4/k;->z(Lb3/x1;)Lb3/x1;

    move-result-object v11

    aput-object v11, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 32
    :cond_d
    new-instance v1, Ld4/s0;

    invoke-direct {v1, v4, v5}, Ld4/s0;-><init>(Ljava/lang/String;[Lb3/x1;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lez v2, :cond_f

    .line 33
    iget-object v1, v0, Lj4/h;->j:Lb3/x1;

    if-nez v1, :cond_e

    iget-object v1, v0, Lj4/h;->g:Ljava/util/List;

    .line 34
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 35
    :cond_e
    new-instance v1, Ld4/s0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":audio"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v5, v6, v3

    iget-object v6, v0, Lj4/h;->j:Lb3/x1;

    .line 36
    invoke-static {v5, v6, v3}, Li4/k;->x(Lb3/x1;Lb3/x1;Z)Lb3/x1;

    move-result-object v5

    filled-new-array {v5}, [Lb3/x1;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ld4/s0;-><init>(Ljava/lang/String;[Lb3/x1;)V

    .line 37
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_f
    iget-object v0, v0, Lj4/h;->k:Ljava/util/List;

    if-eqz v0, :cond_12

    move v1, v3

    .line 39
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_12

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":cc:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 41
    new-instance v5, Ld4/s0;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb3/x1;

    filled-new-array {v6}, [Lb3/x1;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Ld4/s0;-><init>(Ljava/lang/String;[Lb3/x1;)V

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 42
    :cond_10
    new-array v2, v1, [Lb3/x1;

    move v5, v3

    :goto_9
    if-ge v5, v1, :cond_11

    .line 43
    aget-object v11, v6, v5

    iget-object v12, v0, Lj4/h;->j:Lb3/x1;

    .line 44
    invoke-static {v11, v12, v9}, Li4/k;->x(Lb3/x1;Lb3/x1;Z)Lb3/x1;

    move-result-object v11

    aput-object v11, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 45
    :cond_11
    new-instance v0, Ld4/s0;

    invoke-direct {v0, v4, v2}, Ld4/s0;-><init>(Ljava/lang/String;[Lb3/x1;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_12
    new-instance v0, Ld4/s0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":id3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lb3/x1$b;

    invoke-direct {v2}, Lb3/x1$b;-><init>()V

    const-string v4, "ID3"

    .line 47
    invoke-virtual {v2, v4}, Lb3/x1$b;->U(Ljava/lang/String;)Lb3/x1$b;

    move-result-object v2

    const-string v4, "application/id3"

    .line 48
    invoke-virtual {v2, v4}, Lb3/x1$b;->g0(Ljava/lang/String;)Lb3/x1$b;

    move-result-object v2

    .line 49
    invoke-virtual {v2}, Lb3/x1$b;->G()Lb3/x1;

    move-result-object v2

    filled-new-array {v2}, [Lb3/x1;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ld4/s0;-><init>(Ljava/lang/String;[Lb3/x1;)V

    .line 50
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v3, [Ld4/s0;

    .line 51
    invoke-interface {v8, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ld4/s0;

    .line 52
    invoke-interface {v8, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    .line 53
    invoke-virtual {v10, v1, v3, v0}, Li4/p;->c0([Ld4/s0;I[I)V

    :cond_13
    return-void
.end method

.method private v(J)V
    .locals 19

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    iget-object v0, v10, Li4/k;->b:Lj4/l;

    .line 4
    .line 5
    invoke-interface {v0}, Lj4/l;->g()Lj4/h;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    move-object v1, v0

    .line 14
    check-cast v1, Lj4/h;

    .line 15
    .line 16
    iget-boolean v0, v10, Li4/k;->o:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, v1, Lj4/h;->m:Ljava/util/List;

    .line 21
    .line 22
    invoke-static {v0}, Li4/k;->y(Ljava/util/List;)Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :goto_0
    move-object v11, v0

    .line 32
    iget-object v0, v1, Lj4/h;->e:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v12, 0x1

    .line 39
    xor-int/2addr v0, v12

    .line 40
    iget-object v7, v1, Lj4/h;->g:Ljava/util/List;

    .line 41
    .line 42
    iget-object v13, v1, Lj4/h;->h:Ljava/util/List;

    .line 43
    .line 44
    const/4 v14, 0x0

    .line 45
    iput v14, v10, Li4/k;->s:I

    .line 46
    .line 47
    new-instance v15, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v8, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    move-object/from16 v0, p0

    .line 60
    .line 61
    move-wide/from16 v2, p1

    .line 62
    .line 63
    move-object v4, v15

    .line 64
    move-object v5, v8

    .line 65
    move-object v6, v11

    .line 66
    invoke-direct/range {v0 .. v6}, Li4/k;->u(Lj4/h;JLjava/util/List;Ljava/util/List;Ljava/util/Map;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    move-object/from16 v0, p0

    .line 70
    .line 71
    move-wide/from16 v1, p1

    .line 72
    .line 73
    move-object v3, v7

    .line 74
    move-object v4, v15

    .line 75
    move-object v5, v8

    .line 76
    move-object v6, v11

    .line 77
    invoke-direct/range {v0 .. v6}, Li4/k;->s(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    iput v0, v10, Li4/k;->x:I

    .line 85
    .line 86
    move v9, v14

    .line 87
    :goto_1
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-ge v9, v0, :cond_2

    .line 92
    .line 93
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    move-object v7, v0

    .line 98
    check-cast v7, Lj4/h$a;

    .line 99
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v1, "subtitle:"

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ":"

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v1, v7, Lj4/h$a;->d:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    const/4 v2, 0x3

    .line 128
    iget-object v0, v7, Lj4/h$a;->a:Landroid/net/Uri;

    .line 129
    .line 130
    filled-new-array {v0}, [Landroid/net/Uri;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    iget-object v0, v7, Lj4/h$a;->b:Lb3/x1;

    .line 135
    .line 136
    filled-new-array {v0}, [Lb3/x1;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    const/4 v5, 0x0

    .line 141
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object v16

    .line 145
    move-object/from16 v0, p0

    .line 146
    .line 147
    move-object v1, v6

    .line 148
    move-object v12, v6

    .line 149
    move-object/from16 v6, v16

    .line 150
    .line 151
    move-object v14, v7

    .line 152
    move-object v7, v11

    .line 153
    move/from16 v18, v9

    .line 154
    .line 155
    move-object/from16 v17, v11

    .line 156
    .line 157
    move-object v11, v8

    .line 158
    move-wide/from16 v8, p1

    .line 159
    .line 160
    invoke-direct/range {v0 .. v9}, Li4/k;->w(Ljava/lang/String;I[Landroid/net/Uri;[Lb3/x1;Lb3/x1;Ljava/util/List;Ljava/util/Map;J)Li4/p;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    filled-new-array/range {v18 .. v18}, [I

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    new-instance v1, Ld4/s0;

    .line 175
    .line 176
    iget-object v2, v14, Lj4/h$a;->b:Lb3/x1;

    .line 177
    .line 178
    filled-new-array {v2}, [Lb3/x1;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-direct {v1, v12, v2}, Ld4/s0;-><init>(Ljava/lang/String;[Lb3/x1;)V

    .line 183
    .line 184
    .line 185
    filled-new-array {v1}, [Ld4/s0;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    const/4 v2, 0x0

    .line 190
    new-array v3, v2, [I

    .line 191
    .line 192
    invoke-virtual {v0, v1, v2, v3}, Li4/p;->c0([Ld4/s0;I[I)V

    .line 193
    .line 194
    .line 195
    add-int/lit8 v9, v18, 0x1

    .line 196
    .line 197
    move v14, v2

    .line 198
    move-object v8, v11

    .line 199
    move-object/from16 v11, v17

    .line 200
    .line 201
    const/4 v12, 0x1

    .line 202
    goto :goto_1

    .line 203
    :cond_2
    move-object v11, v8

    .line 204
    move v2, v14

    .line 205
    new-array v0, v2, [Li4/p;

    .line 206
    .line 207
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    check-cast v0, [Li4/p;

    .line 212
    .line 213
    iput-object v0, v10, Li4/k;->u:[Li4/p;

    .line 214
    .line 215
    new-array v0, v2, [[I

    .line 216
    .line 217
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    check-cast v0, [[I

    .line 222
    .line 223
    iput-object v0, v10, Li4/k;->w:[[I

    .line 224
    .line 225
    iget-object v0, v10, Li4/k;->u:[Li4/p;

    .line 226
    .line 227
    array-length v0, v0

    .line 228
    iput v0, v10, Li4/k;->s:I

    .line 229
    .line 230
    move v0, v2

    .line 231
    :goto_2
    iget v1, v10, Li4/k;->x:I

    .line 232
    .line 233
    if-ge v0, v1, :cond_3

    .line 234
    .line 235
    iget-object v1, v10, Li4/k;->u:[Li4/p;

    .line 236
    .line 237
    aget-object v1, v1, v0

    .line 238
    .line 239
    const/4 v3, 0x1

    .line 240
    invoke-virtual {v1, v3}, Li4/p;->l0(Z)V

    .line 241
    .line 242
    .line 243
    add-int/lit8 v0, v0, 0x1

    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_3
    iget-object v0, v10, Li4/k;->u:[Li4/p;

    .line 247
    .line 248
    array-length v1, v0

    .line 249
    move v14, v2

    .line 250
    :goto_3
    if-ge v14, v1, :cond_4

    .line 251
    .line 252
    aget-object v2, v0, v14

    .line 253
    .line 254
    invoke-virtual {v2}, Li4/p;->A()V

    .line 255
    .line 256
    .line 257
    add-int/lit8 v14, v14, 0x1

    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_4
    iget-object v0, v10, Li4/k;->u:[Li4/p;

    .line 261
    .line 262
    iput-object v0, v10, Li4/k;->v:[Li4/p;

    .line 263
    .line 264
    return-void
.end method

.method private w(Ljava/lang/String;I[Landroid/net/Uri;[Lb3/x1;Lb3/x1;Ljava/util/List;Ljava/util/Map;J)Li4/p;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v11, Li4/f;

    .line 4
    .line 5
    iget-object v2, v0, Li4/k;->a:Li4/h;

    .line 6
    .line 7
    iget-object v3, v0, Li4/k;->b:Lj4/l;

    .line 8
    .line 9
    iget-object v6, v0, Li4/k;->c:Li4/g;

    .line 10
    .line 11
    iget-object v7, v0, Li4/k;->d:Lx4/m0;

    .line 12
    .line 13
    iget-object v8, v0, Li4/k;->k:Li4/s;

    .line 14
    .line 15
    iget-object v10, v0, Li4/k;->p:Lc3/t3;

    .line 16
    .line 17
    move-object v1, v11

    .line 18
    move-object/from16 v4, p3

    .line 19
    .line 20
    move-object/from16 v5, p4

    .line 21
    .line 22
    move-object/from16 v9, p6

    .line 23
    .line 24
    invoke-direct/range {v1 .. v10}, Li4/f;-><init>(Li4/h;Lj4/l;[Landroid/net/Uri;[Lb3/x1;Li4/g;Lx4/m0;Li4/s;Ljava/util/List;Lc3/t3;)V

    .line 25
    .line 26
    .line 27
    new-instance v16, Li4/p;

    .line 28
    .line 29
    iget-object v4, v0, Li4/k;->q:Li4/p$b;

    .line 30
    .line 31
    iget-object v7, v0, Li4/k;->i:Lx4/b;

    .line 32
    .line 33
    iget-object v12, v0, Li4/k;->e:Lf3/v;

    .line 34
    .line 35
    iget-object v13, v0, Li4/k;->f:Lf3/u$a;

    .line 36
    .line 37
    iget-object v14, v0, Li4/k;->g:Lx4/d0;

    .line 38
    .line 39
    iget-object v15, v0, Li4/k;->h:Ld4/a0$a;

    .line 40
    .line 41
    iget v10, v0, Li4/k;->n:I

    .line 42
    .line 43
    move-object/from16 v1, v16

    .line 44
    .line 45
    move-object/from16 v2, p1

    .line 46
    .line 47
    move/from16 v3, p2

    .line 48
    .line 49
    move-object v5, v11

    .line 50
    move-object/from16 v6, p7

    .line 51
    .line 52
    move-wide/from16 v8, p8

    .line 53
    .line 54
    move/from16 v17, v10

    .line 55
    .line 56
    move-object/from16 v10, p5

    .line 57
    .line 58
    move-object v11, v12

    .line 59
    move-object v12, v13

    .line 60
    move-object v13, v14

    .line 61
    move-object v14, v15

    .line 62
    move/from16 v15, v17

    .line 63
    .line 64
    invoke-direct/range {v1 .. v15}, Li4/p;-><init>(Ljava/lang/String;ILi4/p$b;Li4/f;Ljava/util/Map;Lx4/b;JLb3/x1;Lf3/v;Lf3/u$a;Lx4/d0;Ld4/a0$a;I)V

    .line 65
    .line 66
    .line 67
    return-object v16
.end method

.method private static x(Lb3/x1;Lb3/x1;Z)Lb3/x1;
    .locals 10

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v1, p1, Lb3/x1;->i:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v2, p1, Lb3/x1;->j:Lt3/a;

    .line 7
    .line 8
    iget v3, p1, Lb3/x1;->y:I

    .line 9
    .line 10
    iget v4, p1, Lb3/x1;->d:I

    .line 11
    .line 12
    iget v5, p1, Lb3/x1;->e:I

    .line 13
    .line 14
    iget-object v6, p1, Lb3/x1;->c:Ljava/lang/String;

    .line 15
    .line 16
    iget-object p1, p1, Lb3/x1;->b:Ljava/lang/String;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lb3/x1;->i:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-static {p1, v1}, Ly4/q0;->L(Ljava/lang/String;I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lb3/x1;->j:Lt3/a;

    .line 27
    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    iget v3, p0, Lb3/x1;->y:I

    .line 31
    .line 32
    iget v4, p0, Lb3/x1;->d:I

    .line 33
    .line 34
    iget v5, p0, Lb3/x1;->e:I

    .line 35
    .line 36
    iget-object v6, p0, Lb3/x1;->c:Ljava/lang/String;

    .line 37
    .line 38
    iget-object p1, p0, Lb3/x1;->b:Ljava/lang/String;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v4, 0x0

    .line 42
    const/4 v6, 0x0

    .line 43
    move v3, v0

    .line 44
    move v5, v4

    .line 45
    move-object p1, v6

    .line 46
    :goto_0
    invoke-static {v1}, Ly4/v;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    if-eqz p2, :cond_2

    .line 51
    .line 52
    iget v8, p0, Lb3/x1;->f:I

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move v8, v0

    .line 56
    :goto_1
    if-eqz p2, :cond_3

    .line 57
    .line 58
    iget v0, p0, Lb3/x1;->g:I

    .line 59
    .line 60
    :cond_3
    new-instance p2, Lb3/x1$b;

    .line 61
    .line 62
    invoke-direct {p2}, Lb3/x1$b;-><init>()V

    .line 63
    .line 64
    .line 65
    iget-object v9, p0, Lb3/x1;->a:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p2, v9}, Lb3/x1$b;->U(Ljava/lang/String;)Lb3/x1$b;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p2, p1}, Lb3/x1$b;->W(Ljava/lang/String;)Lb3/x1$b;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object p0, p0, Lb3/x1;->k:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p1, p0}, Lb3/x1$b;->M(Ljava/lang/String;)Lb3/x1$b;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p0, v7}, Lb3/x1$b;->g0(Ljava/lang/String;)Lb3/x1$b;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0, v1}, Lb3/x1$b;->K(Ljava/lang/String;)Lb3/x1$b;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p0, v2}, Lb3/x1$b;->Z(Lt3/a;)Lb3/x1$b;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0, v8}, Lb3/x1$b;->I(I)Lb3/x1$b;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p0, v0}, Lb3/x1$b;->b0(I)Lb3/x1$b;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {p0, v3}, Lb3/x1$b;->J(I)Lb3/x1$b;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {p0, v4}, Lb3/x1$b;->i0(I)Lb3/x1$b;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-virtual {p0, v5}, Lb3/x1$b;->e0(I)Lb3/x1$b;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p0, v6}, Lb3/x1$b;->X(Ljava/lang/String;)Lb3/x1$b;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-virtual {p0}, Lb3/x1$b;->G()Lb3/x1;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    return-object p0
.end method

.method private static y(Ljava/util/List;)Ljava/util/Map;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-ge v2, v3, :cond_2

    .line 17
    .line 18
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lf3/m;

    .line 23
    .line 24
    iget-object v4, v3, Lf3/m;->c:Ljava/lang/String;

    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    move v5, v2

    .line 29
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-ge v5, v6, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    check-cast v6, Lf3/m;

    .line 40
    .line 41
    iget-object v7, v6, Lf3/m;->c:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    if-eqz v7, :cond_0

    .line 48
    .line 49
    invoke-virtual {v3, v6}, Lf3/m;->f(Lf3/m;)Lf3/m;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    return-object v1
.end method

.method private static z(Lb3/x1;)Lb3/x1;
    .locals 4

    .line 1
    iget-object v0, p0, Lb3/x1;->i:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Ly4/q0;->L(Ljava/lang/String;I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Ly4/v;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Lb3/x1$b;

    .line 13
    .line 14
    invoke-direct {v2}, Lb3/x1$b;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v3, p0, Lb3/x1;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Lb3/x1$b;->U(Ljava/lang/String;)Lb3/x1$b;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Lb3/x1;->b:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Lb3/x1$b;->W(Ljava/lang/String;)Lb3/x1$b;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v3, p0, Lb3/x1;->k:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Lb3/x1$b;->M(Ljava/lang/String;)Lb3/x1$b;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2, v1}, Lb3/x1$b;->g0(Ljava/lang/String;)Lb3/x1$b;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1, v0}, Lb3/x1$b;->K(Ljava/lang/String;)Lb3/x1$b;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lb3/x1;->j:Lt3/a;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lb3/x1$b;->Z(Lt3/a;)Lb3/x1$b;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget v1, p0, Lb3/x1;->f:I

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lb3/x1$b;->I(I)Lb3/x1$b;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget v1, p0, Lb3/x1;->g:I

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lb3/x1$b;->b0(I)Lb3/x1$b;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget v1, p0, Lb3/x1;->q:I

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lb3/x1$b;->n0(I)Lb3/x1$b;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget v1, p0, Lb3/x1;->r:I

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lb3/x1$b;->S(I)Lb3/x1$b;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget v1, p0, Lb3/x1;->s:F

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lb3/x1$b;->R(F)Lb3/x1$b;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget v1, p0, Lb3/x1;->d:I

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lb3/x1$b;->i0(I)Lb3/x1$b;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget p0, p0, Lb3/x1;->e:I

    .line 86
    .line 87
    invoke-virtual {v0, p0}, Lb3/x1$b;->e0(I)Lb3/x1$b;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Lb3/x1$b;->G()Lb3/x1;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0
.end method


# virtual methods
.method public A()V
    .locals 4

    .line 1
    iget-object v0, p0, Li4/k;->b:Lj4/l;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lj4/l;->i(Lj4/l$b;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Li4/k;->u:[Li4/p;

    .line 7
    .line 8
    array-length v1, v0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_0

    .line 11
    .line 12
    aget-object v3, v0, v2

    .line 13
    .line 14
    invoke-virtual {v3}, Li4/p;->e0()V

    .line 15
    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Li4/k;->r:Ld4/r$a;

    .line 22
    .line 23
    return-void
.end method

.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Li4/k;->u:[Li4/p;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-virtual {v3}, Li4/p;->a0()V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Li4/k;->r:Ld4/r$a;

    .line 16
    .line 17
    invoke-interface {v0, p0}, Ld4/n0$a;->h(Ld4/n0;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public b()J
    .locals 2

    .line 1
    iget-object v0, p0, Li4/k;->y:Ld4/n0;

    .line 2
    .line 3
    invoke-interface {v0}, Ld4/n0;->b()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public c(J)Z
    .locals 3

    .line 1
    iget-object v0, p0, Li4/k;->t:Ld4/u0;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Li4/k;->u:[Li4/p;

    .line 6
    .line 7
    array-length p2, p1

    .line 8
    const/4 v0, 0x0

    .line 9
    move v1, v0

    .line 10
    :goto_0
    if-ge v1, p2, :cond_0

    .line 11
    .line 12
    aget-object v2, p1, v1

    .line 13
    .line 14
    invoke-virtual {v2}, Li4/p;->A()V

    .line 15
    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return v0

    .line 21
    :cond_1
    iget-object v0, p0, Li4/k;->y:Ld4/n0;

    .line 22
    .line 23
    invoke-interface {v0, p1, p2}, Ld4/n0;->c(J)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method public d()J
    .locals 2

    .line 1
    iget-object v0, p0, Li4/k;->y:Ld4/n0;

    .line 2
    .line 3
    invoke-interface {v0}, Ld4/n0;->d()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public e(JLb3/x3;)J
    .locals 5

    .line 1
    iget-object v0, p0, Li4/k;->v:[Li4/p;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-virtual {v3}, Li4/p;->Q()Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    invoke-virtual {v3, p1, p2, p3}, Li4/p;->e(JLb3/x3;)J

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    :goto_1
    return-wide p1
.end method

.method public f(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Li4/k;->y:Ld4/n0;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ld4/n0;->f(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g(Landroid/net/Uri;Lx4/d0$c;Z)Z
    .locals 5

    .line 1
    iget-object v0, p0, Li4/k;->u:[Li4/p;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v3, v1, :cond_0

    .line 7
    .line 8
    aget-object v4, v0, v3

    .line 9
    .line 10
    invoke-virtual {v4, p1, p2, p3}, Li4/p;->Z(Landroid/net/Uri;Lx4/d0$c;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    and-int/2addr v2, v4

    .line 15
    add-int/lit8 v3, v3, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Li4/k;->r:Ld4/r$a;

    .line 19
    .line 20
    invoke-interface {p1, p0}, Ld4/n0$a;->h(Ld4/n0;)V

    .line 21
    .line 22
    .line 23
    return v2
.end method

.method public i()V
    .locals 4

    .line 1
    iget-object v0, p0, Li4/k;->u:[Li4/p;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-virtual {v3}, Li4/p;->i()V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li4/k;->y:Ld4/n0;

    .line 2
    .line 3
    invoke-interface {v0}, Ld4/n0;->isLoading()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public k(J)J
    .locals 4

    .line 1
    iget-object v0, p0, Li4/k;->v:[Li4/p;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-lez v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    aget-object v0, v0, v1

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, v1}, Li4/p;->h0(JZ)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    :goto_0
    iget-object v2, p0, Li4/k;->v:[Li4/p;

    .line 15
    .line 16
    array-length v3, v2

    .line 17
    if-ge v1, v3, :cond_0

    .line 18
    .line 19
    aget-object v2, v2, v1

    .line 20
    .line 21
    invoke-virtual {v2, p1, p2, v0}, Li4/p;->h0(JZ)Z

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Li4/k;->k:Li4/s;

    .line 30
    .line 31
    invoke-virtual {v0}, Li4/s;->b()V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-wide p1
.end method

.method public m([Lw4/y;[Z[Ld4/m0;[ZJ)J
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    array-length v3, v1

    .line 8
    new-array v3, v3, [I

    .line 9
    .line 10
    array-length v4, v1

    .line 11
    new-array v4, v4, [I

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    :goto_0
    array-length v7, v1

    .line 15
    if-ge v6, v7, :cond_3

    .line 16
    .line 17
    aget-object v7, v2, v6

    .line 18
    .line 19
    const/4 v8, -0x1

    .line 20
    if-nez v7, :cond_0

    .line 21
    .line 22
    move v7, v8

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v9, v0, Li4/k;->j:Ljava/util/IdentityHashMap;

    .line 25
    .line 26
    invoke-virtual {v9, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    check-cast v7, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    :goto_1
    aput v7, v3, v6

    .line 37
    .line 38
    aput v8, v4, v6

    .line 39
    .line 40
    aget-object v7, v1, v6

    .line 41
    .line 42
    if-eqz v7, :cond_2

    .line 43
    .line 44
    invoke-interface {v7}, Lw4/b0;->a()Ld4/s0;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    const/4 v9, 0x0

    .line 49
    :goto_2
    iget-object v10, v0, Li4/k;->u:[Li4/p;

    .line 50
    .line 51
    array-length v11, v10

    .line 52
    if-ge v9, v11, :cond_2

    .line 53
    .line 54
    aget-object v10, v10, v9

    .line 55
    .line 56
    invoke-virtual {v10}, Li4/p;->q()Ld4/u0;

    .line 57
    .line 58
    .line 59
    move-result-object v10

    .line 60
    invoke-virtual {v10, v7}, Ld4/u0;->c(Ld4/s0;)I

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    if-eq v10, v8, :cond_1

    .line 65
    .line 66
    aput v9, v4, v6

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    iget-object v6, v0, Li4/k;->j:Ljava/util/IdentityHashMap;

    .line 76
    .line 77
    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    .line 78
    .line 79
    .line 80
    array-length v6, v1

    .line 81
    new-array v7, v6, [Ld4/m0;

    .line 82
    .line 83
    array-length v8, v1

    .line 84
    new-array v8, v8, [Ld4/m0;

    .line 85
    .line 86
    array-length v9, v1

    .line 87
    new-array v14, v9, [Lw4/y;

    .line 88
    .line 89
    iget-object v9, v0, Li4/k;->u:[Li4/p;

    .line 90
    .line 91
    array-length v9, v9

    .line 92
    new-array v15, v9, [Li4/p;

    .line 93
    .line 94
    const/4 v12, 0x0

    .line 95
    const/4 v13, 0x0

    .line 96
    const/16 v17, 0x0

    .line 97
    .line 98
    :goto_4
    iget-object v9, v0, Li4/k;->u:[Li4/p;

    .line 99
    .line 100
    array-length v9, v9

    .line 101
    if-ge v13, v9, :cond_10

    .line 102
    .line 103
    const/4 v9, 0x0

    .line 104
    :goto_5
    array-length v10, v1

    .line 105
    if-ge v9, v10, :cond_6

    .line 106
    .line 107
    aget v10, v3, v9

    .line 108
    .line 109
    const/4 v11, 0x0

    .line 110
    if-ne v10, v13, :cond_4

    .line 111
    .line 112
    aget-object v10, v2, v9

    .line 113
    .line 114
    goto :goto_6

    .line 115
    :cond_4
    move-object v10, v11

    .line 116
    :goto_6
    aput-object v10, v8, v9

    .line 117
    .line 118
    aget v10, v4, v9

    .line 119
    .line 120
    if-ne v10, v13, :cond_5

    .line 121
    .line 122
    aget-object v11, v1, v9

    .line 123
    .line 124
    :cond_5
    aput-object v11, v14, v9

    .line 125
    .line 126
    add-int/lit8 v9, v9, 0x1

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_6
    iget-object v9, v0, Li4/k;->u:[Li4/p;

    .line 130
    .line 131
    aget-object v11, v9, v13

    .line 132
    .line 133
    move-object v9, v11

    .line 134
    move-object v10, v14

    .line 135
    move-object v5, v11

    .line 136
    move-object/from16 v11, p2

    .line 137
    .line 138
    move v2, v12

    .line 139
    move-object v12, v8

    .line 140
    move/from16 v18, v6

    .line 141
    .line 142
    move v6, v13

    .line 143
    move-object/from16 v13, p4

    .line 144
    .line 145
    move-object/from16 v19, v14

    .line 146
    .line 147
    move-object/from16 v20, v15

    .line 148
    .line 149
    move-wide/from16 v14, p5

    .line 150
    .line 151
    move/from16 v16, v17

    .line 152
    .line 153
    invoke-virtual/range {v9 .. v16}, Li4/p;->i0([Lw4/y;[Z[Ld4/m0;[ZJZ)Z

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    const/4 v10, 0x0

    .line 158
    const/4 v11, 0x0

    .line 159
    :goto_7
    array-length v12, v1

    .line 160
    const/4 v13, 0x1

    .line 161
    if-ge v10, v12, :cond_a

    .line 162
    .line 163
    aget-object v12, v8, v10

    .line 164
    .line 165
    aget v14, v4, v10

    .line 166
    .line 167
    if-ne v14, v6, :cond_7

    .line 168
    .line 169
    invoke-static {v12}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    aput-object v12, v7, v10

    .line 173
    .line 174
    iget-object v11, v0, Li4/k;->j:Ljava/util/IdentityHashMap;

    .line 175
    .line 176
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v14

    .line 180
    invoke-virtual {v11, v12, v14}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move v11, v13

    .line 184
    goto :goto_9

    .line 185
    :cond_7
    aget v14, v3, v10

    .line 186
    .line 187
    if-ne v14, v6, :cond_9

    .line 188
    .line 189
    if-nez v12, :cond_8

    .line 190
    .line 191
    goto :goto_8

    .line 192
    :cond_8
    const/4 v13, 0x0

    .line 193
    :goto_8
    invoke-static {v13}, Ly4/a;->f(Z)V

    .line 194
    .line 195
    .line 196
    :cond_9
    :goto_9
    add-int/lit8 v10, v10, 0x1

    .line 197
    .line 198
    goto :goto_7

    .line 199
    :cond_a
    move-object/from16 v10, v20

    .line 200
    .line 201
    if-eqz v11, :cond_e

    .line 202
    .line 203
    aput-object v5, v10, v2

    .line 204
    .line 205
    add-int/lit8 v12, v2, 0x1

    .line 206
    .line 207
    if-nez v2, :cond_c

    .line 208
    .line 209
    invoke-virtual {v5, v13}, Li4/p;->l0(Z)V

    .line 210
    .line 211
    .line 212
    if-nez v9, :cond_b

    .line 213
    .line 214
    iget-object v2, v0, Li4/k;->v:[Li4/p;

    .line 215
    .line 216
    array-length v9, v2

    .line 217
    if-eqz v9, :cond_b

    .line 218
    .line 219
    const/4 v9, 0x0

    .line 220
    aget-object v2, v2, v9

    .line 221
    .line 222
    if-eq v5, v2, :cond_f

    .line 223
    .line 224
    :cond_b
    iget-object v2, v0, Li4/k;->k:Li4/s;

    .line 225
    .line 226
    invoke-virtual {v2}, Li4/s;->b()V

    .line 227
    .line 228
    .line 229
    move/from16 v17, v13

    .line 230
    .line 231
    goto :goto_b

    .line 232
    :cond_c
    iget v2, v0, Li4/k;->x:I

    .line 233
    .line 234
    if-ge v6, v2, :cond_d

    .line 235
    .line 236
    goto :goto_a

    .line 237
    :cond_d
    const/4 v13, 0x0

    .line 238
    :goto_a
    invoke-virtual {v5, v13}, Li4/p;->l0(Z)V

    .line 239
    .line 240
    .line 241
    goto :goto_b

    .line 242
    :cond_e
    move v12, v2

    .line 243
    :cond_f
    :goto_b
    add-int/lit8 v13, v6, 0x1

    .line 244
    .line 245
    move-object/from16 v2, p3

    .line 246
    .line 247
    move-object v15, v10

    .line 248
    move/from16 v6, v18

    .line 249
    .line 250
    move-object/from16 v14, v19

    .line 251
    .line 252
    goto/16 :goto_4

    .line 253
    .line 254
    :cond_10
    move v5, v6

    .line 255
    move-object v10, v15

    .line 256
    const/4 v6, 0x0

    .line 257
    invoke-static {v7, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    .line 259
    .line 260
    invoke-static {v10, v12}, Ly4/q0;->F0([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    check-cast v1, [Li4/p;

    .line 265
    .line 266
    iput-object v1, v0, Li4/k;->v:[Li4/p;

    .line 267
    .line 268
    iget-object v2, v0, Li4/k;->l:Ld4/h;

    .line 269
    .line 270
    invoke-interface {v2, v1}, Ld4/h;->a([Ld4/n0;)Ld4/n0;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    iput-object v1, v0, Li4/k;->y:Ld4/n0;

    .line 275
    .line 276
    return-wide p5
.end method

.method public p()J
    .locals 2

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public q()Ld4/u0;
    .locals 1

    .line 1
    iget-object v0, p0, Li4/k;->t:Ld4/u0;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ld4/u0;

    .line 8
    .line 9
    return-object v0
.end method

.method public r(JZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Li4/k;->v:[Li4/p;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-virtual {v3, p1, p2, p3}, Li4/p;->r(JZ)V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public t(Ld4/r$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Li4/k;->r:Ld4/r$a;

    .line 2
    .line 3
    iget-object p1, p0, Li4/k;->b:Lj4/l;

    .line 4
    .line 5
    invoke-interface {p1, p0}, Lj4/l;->b(Lj4/l$b;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p2, p3}, Li4/k;->v(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
