.class public final Landroidx/fragment/app/f;
.super Landroidx/fragment/app/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/f$a;,
        Landroidx/fragment/app/f$b;,
        Landroidx/fragment/app/f$c;,
        Landroidx/fragment/app/f$d;,
        Landroidx/fragment/app/f$e;,
        Landroidx/fragment/app/f$f;,
        Landroidx/fragment/app/f$g;,
        Landroidx/fragment/app/f$h;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    const-string v0, "container"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/fragment/app/y0;-><init>(Landroid/view/ViewGroup;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic C(Landroidx/fragment/app/f;Landroidx/fragment/app/y0$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/fragment/app/f;->E(Landroidx/fragment/app/f;Landroidx/fragment/app/y0$d;)V

    return-void
.end method

.method private final D(Ljava/util/List;)V
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    move-object v1, p1

    .line 7
    check-cast v1, Ljava/lang/Iterable;

    .line 8
    .line 9
    new-instance v2, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroidx/fragment/app/f$b;

    .line 29
    .line 30
    invoke-virtual {v3}, Landroidx/fragment/app/f$f;->a()Landroidx/fragment/app/y0$d;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Landroidx/fragment/app/y0$d;->g()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Ljava/lang/Iterable;

    .line 39
    .line 40
    invoke-static {v2, v3}, Lyc/m;->v(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const/4 v2, 0x1

    .line 49
    xor-int/2addr v1, v2

    .line 50
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const/4 v3, 0x0

    .line 55
    move v4, v3

    .line 56
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    const-string v6, "FragmentManager"

    .line 61
    .line 62
    const/4 v7, 0x2

    .line 63
    if-eqz v5, :cond_7

    .line 64
    .line 65
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Landroidx/fragment/app/f$b;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/y0;->t()Landroid/view/ViewGroup;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    invoke-virtual {v5}, Landroidx/fragment/app/f$f;->a()Landroidx/fragment/app/y0$d;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    const-string v10, "context"

    .line 84
    .line 85
    invoke-static {v8, v10}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v8}, Landroidx/fragment/app/f$b;->c(Landroid/content/Context;)Landroidx/fragment/app/v$a;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    if-nez v8, :cond_2

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    iget-object v8, v8, Landroidx/fragment/app/v$a;->b:Landroid/animation/AnimatorSet;

    .line 96
    .line 97
    if-nez v8, :cond_3

    .line 98
    .line 99
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    invoke-virtual {v9}, Landroidx/fragment/app/y0$d;->i()Landroidx/fragment/app/p;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    invoke-virtual {v9}, Landroidx/fragment/app/y0$d;->g()Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    check-cast v10, Ljava/util/Collection;

    .line 112
    .line 113
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v10

    .line 117
    xor-int/2addr v10, v2

    .line 118
    if-eqz v10, :cond_4

    .line 119
    .line 120
    invoke-static {v7}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-eqz v5, :cond_1

    .line 125
    .line 126
    new-instance v5, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v7, "Ignoring Animator set on "

    .line 132
    .line 133
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v7, " as this Fragment was involved in a Transition."

    .line 140
    .line 141
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_4
    invoke-virtual {v9}, Landroidx/fragment/app/y0$d;->h()Landroidx/fragment/app/y0$d$b;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    sget-object v6, Landroidx/fragment/app/y0$d$b;->d:Landroidx/fragment/app/y0$d$b;

    .line 157
    .line 158
    if-ne v4, v6, :cond_5

    .line 159
    .line 160
    move v4, v2

    .line 161
    goto :goto_2

    .line 162
    :cond_5
    move v4, v3

    .line 163
    :goto_2
    if-eqz v4, :cond_6

    .line 164
    .line 165
    invoke-virtual {v9, v3}, Landroidx/fragment/app/y0$d;->r(Z)V

    .line 166
    .line 167
    .line 168
    :cond_6
    new-instance v4, Landroidx/fragment/app/f$c;

    .line 169
    .line 170
    invoke-direct {v4, v5}, Landroidx/fragment/app/f$c;-><init>(Landroidx/fragment/app/f$b;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v9, v4}, Landroidx/fragment/app/y0$d;->b(Landroidx/fragment/app/y0$b;)V

    .line 174
    .line 175
    .line 176
    move v4, v2

    .line 177
    goto :goto_1

    .line 178
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    :cond_8
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_b

    .line 187
    .line 188
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    check-cast v0, Landroidx/fragment/app/f$b;

    .line 193
    .line 194
    invoke-virtual {v0}, Landroidx/fragment/app/f$f;->a()Landroidx/fragment/app/y0$d;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-virtual {v2}, Landroidx/fragment/app/y0$d;->i()Landroidx/fragment/app/p;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    const-string v5, "Ignoring Animation set on "

    .line 203
    .line 204
    if-eqz v1, :cond_9

    .line 205
    .line 206
    invoke-static {v7}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-eqz v0, :cond_8

    .line 211
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string v2, " as Animations cannot run alongside Transitions."

    .line 224
    .line 225
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_9
    if-eqz v4, :cond_a

    .line 237
    .line 238
    invoke-static {v7}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-eqz v0, :cond_8

    .line 243
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string v2, " as Animations cannot run alongside Animators."

    .line 256
    .line 257
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .line 266
    .line 267
    goto :goto_3

    .line 268
    :cond_a
    new-instance v3, Landroidx/fragment/app/f$a;

    .line 269
    .line 270
    invoke-direct {v3, v0}, Landroidx/fragment/app/f$a;-><init>(Landroidx/fragment/app/f$b;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2, v3}, Landroidx/fragment/app/y0$d;->b(Landroidx/fragment/app/y0$b;)V

    .line 274
    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_b
    return-void
.end method

.method private static final E(Landroidx/fragment/app/f;Landroidx/fragment/app/y0$d;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$operation"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/fragment/app/y0;->c(Landroidx/fragment/app/y0$d;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final F(Ljava/util/List;ZLandroidx/fragment/app/y0$d;Landroidx/fragment/app/y0$d;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v3, p3

    .line 4
    .line 5
    move-object/from16 v4, p4

    .line 6
    .line 7
    move-object/from16 v1, p1

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Iterable;

    .line 10
    .line 11
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_1

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    move-object v6, v5

    .line 31
    check-cast v6, Landroidx/fragment/app/f$h;

    .line 32
    .line 33
    invoke-virtual {v6}, Landroidx/fragment/app/f$f;->b()Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-nez v6, :cond_0

    .line 38
    .line 39
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_4

    .line 57
    .line 58
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    move-object v7, v2

    .line 63
    check-cast v7, Landroidx/fragment/app/f$h;

    .line 64
    .line 65
    invoke-virtual {v7}, Landroidx/fragment/app/f$h;->c()Landroidx/fragment/app/t0;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    if-eqz v7, :cond_3

    .line 70
    .line 71
    const/4 v5, 0x1

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    const/4 v5, 0x0

    .line 74
    :goto_2
    if-eqz v5, :cond_2

    .line 75
    .line 76
    invoke-interface {v15, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const/4 v7, 0x0

    .line 85
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    if-eqz v8, :cond_8

    .line 90
    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    check-cast v8, Landroidx/fragment/app/f$h;

    .line 96
    .line 97
    invoke-virtual {v8}, Landroidx/fragment/app/f$h;->c()Landroidx/fragment/app/t0;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    if-eqz v7, :cond_6

    .line 102
    .line 103
    if-ne v9, v7, :cond_5

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_5
    const/4 v7, 0x0

    .line 107
    goto :goto_5

    .line 108
    :cond_6
    :goto_4
    const/4 v7, 0x1

    .line 109
    :goto_5
    if-eqz v7, :cond_7

    .line 110
    .line 111
    move-object v7, v9

    .line 112
    goto :goto_3

    .line 113
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v2, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v8}, Landroidx/fragment/app/f$f;->a()Landroidx/fragment/app/y0$d;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v2}, Landroidx/fragment/app/y0$d;->i()Landroidx/fragment/app/p;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v2, " returned Transition "

    .line 135
    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v8}, Landroidx/fragment/app/f$h;->f()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v2, " which uses a different Transition type than other Fragments."

    .line 147
    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw v2

    .line 165
    :cond_8
    if-nez v7, :cond_9

    .line 166
    .line 167
    return-void

    .line 168
    :cond_9
    new-instance v8, Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .line 172
    .line 173
    new-instance v9, Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .line 177
    .line 178
    new-instance v10, Lr/a;

    .line 179
    .line 180
    invoke-direct {v10}, Lr/a;-><init>()V

    .line 181
    .line 182
    .line 183
    new-instance v1, Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .line 187
    .line 188
    new-instance v11, Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .line 192
    .line 193
    new-instance v12, Lr/a;

    .line 194
    .line 195
    invoke-direct {v12}, Lr/a;-><init>()V

    .line 196
    .line 197
    .line 198
    new-instance v13, Lr/a;

    .line 199
    .line 200
    invoke-direct {v13}, Lr/a;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 204
    .line 205
    .line 206
    move-result-object v14

    .line 207
    move-object/from16 v16, v1

    .line 208
    .line 209
    move-object/from16 v17, v11

    .line 210
    .line 211
    :goto_6
    const/4 v11, 0x0

    .line 212
    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    if-eqz v1, :cond_12

    .line 217
    .line 218
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    check-cast v1, Landroidx/fragment/app/f$h;

    .line 223
    .line 224
    invoke-virtual {v1}, Landroidx/fragment/app/f$h;->g()Z

    .line 225
    .line 226
    .line 227
    move-result v18

    .line 228
    if-eqz v18, :cond_11

    .line 229
    .line 230
    if-eqz v3, :cond_11

    .line 231
    .line 232
    if-eqz v4, :cond_11

    .line 233
    .line 234
    invoke-virtual {v1}, Landroidx/fragment/app/f$h;->e()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-virtual {v7, v1}, Landroidx/fragment/app/t0;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-virtual {v7, v1}, Landroidx/fragment/app/t0;->B(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v11

    .line 246
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/y0$d;->i()Landroidx/fragment/app/p;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-virtual {v1}, Landroidx/fragment/app/p;->getSharedElementSourceNames()Ljava/util/ArrayList;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    const-string v5, "lastIn.fragment.sharedElementSourceNames"

    .line 255
    .line 256
    invoke-static {v1, v5}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual/range {p3 .. p3}, Landroidx/fragment/app/y0$d;->i()Landroidx/fragment/app/p;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    invoke-virtual {v5}, Landroidx/fragment/app/p;->getSharedElementSourceNames()Ljava/util/ArrayList;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    const-string v6, "firstOut.fragment.sharedElementSourceNames"

    .line 268
    .line 269
    invoke-static {v5, v6}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual/range {p3 .. p3}, Landroidx/fragment/app/y0$d;->i()Landroidx/fragment/app/p;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    invoke-virtual {v6}, Landroidx/fragment/app/p;->getSharedElementTargetNames()Ljava/util/ArrayList;

    .line 277
    .line 278
    .line 279
    move-result-object v6

    .line 280
    const-string v2, "firstOut.fragment.sharedElementTargetNames"

    .line 281
    .line 282
    invoke-static {v6, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    move-object/from16 v19, v14

    .line 290
    .line 291
    const/4 v14, 0x0

    .line 292
    :goto_8
    if-ge v14, v2, :cond_b

    .line 293
    .line 294
    move/from16 v16, v2

    .line 295
    .line 296
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    move-object/from16 v17, v6

    .line 305
    .line 306
    const/4 v6, -0x1

    .line 307
    if-eq v2, v6, :cond_a

    .line 308
    .line 309
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v6

    .line 313
    invoke-virtual {v1, v2, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    :cond_a
    add-int/lit8 v14, v14, 0x1

    .line 317
    .line 318
    move/from16 v2, v16

    .line 319
    .line 320
    move-object/from16 v6, v17

    .line 321
    .line 322
    goto :goto_8

    .line 323
    :cond_b
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/y0$d;->i()Landroidx/fragment/app/p;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    invoke-virtual {v2}, Landroidx/fragment/app/p;->getSharedElementTargetNames()Ljava/util/ArrayList;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    const-string v5, "lastIn.fragment.sharedElementTargetNames"

    .line 332
    .line 333
    invoke-static {v2, v5}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    if-nez p2, :cond_c

    .line 337
    .line 338
    invoke-virtual/range {p3 .. p3}, Landroidx/fragment/app/y0$d;->i()Landroidx/fragment/app/p;

    .line 339
    .line 340
    .line 341
    move-result-object v5

    .line 342
    invoke-virtual {v5}, Landroidx/fragment/app/p;->getExitTransitionCallback()Landroidx/core/app/w;

    .line 343
    .line 344
    .line 345
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/y0$d;->i()Landroidx/fragment/app/p;

    .line 346
    .line 347
    .line 348
    move-result-object v5

    .line 349
    invoke-virtual {v5}, Landroidx/fragment/app/p;->getEnterTransitionCallback()Landroidx/core/app/w;

    .line 350
    .line 351
    .line 352
    const/4 v5, 0x0

    .line 353
    invoke-static {v5, v5}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 354
    .line 355
    .line 356
    move-result-object v6

    .line 357
    goto :goto_9

    .line 358
    :cond_c
    const/4 v5, 0x0

    .line 359
    invoke-virtual/range {p3 .. p3}, Landroidx/fragment/app/y0$d;->i()Landroidx/fragment/app/p;

    .line 360
    .line 361
    .line 362
    move-result-object v6

    .line 363
    invoke-virtual {v6}, Landroidx/fragment/app/p;->getEnterTransitionCallback()Landroidx/core/app/w;

    .line 364
    .line 365
    .line 366
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/y0$d;->i()Landroidx/fragment/app/p;

    .line 367
    .line 368
    .line 369
    move-result-object v6

    .line 370
    invoke-virtual {v6}, Landroidx/fragment/app/p;->getExitTransitionCallback()Landroidx/core/app/w;

    .line 371
    .line 372
    .line 373
    invoke-static {v5, v5}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 374
    .line 375
    .line 376
    move-result-object v6

    .line 377
    :goto_9
    invoke-virtual {v6}, Lxc/k;->a()Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v14

    .line 381
    invoke-static {v14}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v6}, Lxc/k;->b()Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v6

    .line 388
    invoke-static {v6}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 392
    .line 393
    .line 394
    move-result v6

    .line 395
    const/4 v14, 0x0

    .line 396
    :goto_a
    if-ge v14, v6, :cond_d

    .line 397
    .line 398
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v5

    .line 402
    move/from16 v16, v6

    .line 403
    .line 404
    const-string v6, "exitingNames[i]"

    .line 405
    .line 406
    invoke-static {v5, v6}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    check-cast v5, Ljava/lang/String;

    .line 410
    .line 411
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v6

    .line 415
    move-object/from16 v20, v7

    .line 416
    .line 417
    const-string v7, "enteringNames[i]"

    .line 418
    .line 419
    invoke-static {v6, v7}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    check-cast v6, Ljava/lang/String;

    .line 423
    .line 424
    invoke-interface {v10, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    add-int/lit8 v14, v14, 0x1

    .line 428
    .line 429
    move/from16 v6, v16

    .line 430
    .line 431
    move-object/from16 v7, v20

    .line 432
    .line 433
    const/4 v5, 0x0

    .line 434
    goto :goto_a

    .line 435
    :cond_d
    move-object/from16 v20, v7

    .line 436
    .line 437
    const/4 v5, 0x2

    .line 438
    invoke-static {v5}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 439
    .line 440
    .line 441
    move-result v5

    .line 442
    const-string v6, "FragmentManager"

    .line 443
    .line 444
    if-eqz v5, :cond_f

    .line 445
    .line 446
    const-string v5, ">>> entering view names <<<"

    .line 447
    .line 448
    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    .line 450
    .line 451
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 452
    .line 453
    .line 454
    move-result-object v5

    .line 455
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 456
    .line 457
    .line 458
    move-result v7

    .line 459
    const-string v14, "Name: "

    .line 460
    .line 461
    if-eqz v7, :cond_e

    .line 462
    .line 463
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v7

    .line 467
    check-cast v7, Ljava/lang/String;

    .line 468
    .line 469
    move-object/from16 v16, v5

    .line 470
    .line 471
    new-instance v5, Ljava/lang/StringBuilder;

    .line 472
    .line 473
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v5

    .line 486
    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    .line 488
    .line 489
    move-object/from16 v5, v16

    .line 490
    .line 491
    goto :goto_b

    .line 492
    :cond_e
    const-string v5, ">>> exiting view names <<<"

    .line 493
    .line 494
    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    .line 496
    .line 497
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 498
    .line 499
    .line 500
    move-result-object v5

    .line 501
    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 502
    .line 503
    .line 504
    move-result v7

    .line 505
    if-eqz v7, :cond_f

    .line 506
    .line 507
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object v7

    .line 511
    check-cast v7, Ljava/lang/String;

    .line 512
    .line 513
    move-object/from16 v16, v5

    .line 514
    .line 515
    new-instance v5, Ljava/lang/StringBuilder;

    .line 516
    .line 517
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v5

    .line 530
    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    .line 532
    .line 533
    move-object/from16 v5, v16

    .line 534
    .line 535
    goto :goto_c

    .line 536
    :cond_f
    invoke-virtual/range {p3 .. p3}, Landroidx/fragment/app/y0$d;->i()Landroidx/fragment/app/p;

    .line 537
    .line 538
    .line 539
    move-result-object v5

    .line 540
    iget-object v5, v5, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 541
    .line 542
    const-string v7, "firstOut.fragment.mView"

    .line 543
    .line 544
    invoke-static {v5, v7}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    invoke-direct {v0, v12, v5}, Landroidx/fragment/app/f;->G(Ljava/util/Map;Landroid/view/View;)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v12, v1}, Lr/a;->o(Ljava/util/Collection;)Z

    .line 551
    .line 552
    .line 553
    invoke-virtual {v12}, Lr/a;->keySet()Ljava/util/Set;

    .line 554
    .line 555
    .line 556
    move-result-object v5

    .line 557
    invoke-virtual {v10, v5}, Lr/a;->o(Ljava/util/Collection;)Z

    .line 558
    .line 559
    .line 560
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/y0$d;->i()Landroidx/fragment/app/p;

    .line 561
    .line 562
    .line 563
    move-result-object v5

    .line 564
    iget-object v5, v5, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 565
    .line 566
    const-string v7, "lastIn.fragment.mView"

    .line 567
    .line 568
    invoke-static {v5, v7}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    invoke-direct {v0, v13, v5}, Landroidx/fragment/app/f;->G(Ljava/util/Map;Landroid/view/View;)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v13, v2}, Lr/a;->o(Ljava/util/Collection;)Z

    .line 575
    .line 576
    .line 577
    invoke-virtual {v10}, Lr/a;->values()Ljava/util/Collection;

    .line 578
    .line 579
    .line 580
    move-result-object v5

    .line 581
    invoke-virtual {v13, v5}, Lr/a;->o(Ljava/util/Collection;)Z

    .line 582
    .line 583
    .line 584
    invoke-static {v10, v13}, Landroidx/fragment/app/r0;->c(Lr/a;Lr/a;)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v10}, Lr/a;->keySet()Ljava/util/Set;

    .line 588
    .line 589
    .line 590
    move-result-object v5

    .line 591
    const-string v7, "sharedElementNameMapping.keys"

    .line 592
    .line 593
    invoke-static {v5, v7}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    invoke-direct {v0, v12, v5}, Landroidx/fragment/app/f;->H(Lr/a;Ljava/util/Collection;)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v10}, Lr/a;->values()Ljava/util/Collection;

    .line 600
    .line 601
    .line 602
    move-result-object v5

    .line 603
    const-string v7, "sharedElementNameMapping.values"

    .line 604
    .line 605
    invoke-static {v5, v7}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    invoke-direct {v0, v13, v5}, Landroidx/fragment/app/f;->H(Lr/a;Ljava/util/Collection;)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v10}, Lr/i;->isEmpty()Z

    .line 612
    .line 613
    .line 614
    move-result v5

    .line 615
    if-eqz v5, :cond_10

    .line 616
    .line 617
    new-instance v5, Ljava/lang/StringBuilder;

    .line 618
    .line 619
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 620
    .line 621
    .line 622
    const-string v7, "Ignoring shared elements transition "

    .line 623
    .line 624
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 628
    .line 629
    .line 630
    const-string v7, " between "

    .line 631
    .line 632
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    const-string v7, " and "

    .line 639
    .line 640
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    .line 642
    .line 643
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 644
    .line 645
    .line 646
    const-string v7, " as there are no matching elements in both the entering and exiting fragment. In order to run a SharedElementTransition, both fragments involved must have the element."

    .line 647
    .line 648
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    .line 650
    .line 651
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v5

    .line 655
    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    .line 657
    .line 658
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 659
    .line 660
    .line 661
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 662
    .line 663
    .line 664
    move-object/from16 v17, v1

    .line 665
    .line 666
    move-object/from16 v16, v2

    .line 667
    .line 668
    move-object/from16 v14, v19

    .line 669
    .line 670
    move-object/from16 v7, v20

    .line 671
    .line 672
    goto/16 :goto_6

    .line 673
    .line 674
    :cond_10
    move-object/from16 v17, v1

    .line 675
    .line 676
    move-object/from16 v16, v2

    .line 677
    .line 678
    goto :goto_d

    .line 679
    :cond_11
    move-object/from16 v20, v7

    .line 680
    .line 681
    move-object/from16 v19, v14

    .line 682
    .line 683
    :goto_d
    move-object/from16 v14, v19

    .line 684
    .line 685
    move-object/from16 v7, v20

    .line 686
    .line 687
    goto/16 :goto_7

    .line 688
    .line 689
    :cond_12
    move-object/from16 v20, v7

    .line 690
    .line 691
    if-nez v11, :cond_17

    .line 692
    .line 693
    invoke-interface {v15}, Ljava/util/Collection;->isEmpty()Z

    .line 694
    .line 695
    .line 696
    move-result v1

    .line 697
    if-eqz v1, :cond_14

    .line 698
    .line 699
    :cond_13
    const/4 v5, 0x1

    .line 700
    goto :goto_f

    .line 701
    :cond_14
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 702
    .line 703
    .line 704
    move-result-object v1

    .line 705
    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 706
    .line 707
    .line 708
    move-result v2

    .line 709
    if-eqz v2, :cond_13

    .line 710
    .line 711
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object v2

    .line 715
    check-cast v2, Landroidx/fragment/app/f$h;

    .line 716
    .line 717
    invoke-virtual {v2}, Landroidx/fragment/app/f$h;->f()Ljava/lang/Object;

    .line 718
    .line 719
    .line 720
    move-result-object v2

    .line 721
    if-nez v2, :cond_16

    .line 722
    .line 723
    const/4 v2, 0x1

    .line 724
    goto :goto_e

    .line 725
    :cond_16
    const/4 v2, 0x0

    .line 726
    :goto_e
    if-nez v2, :cond_15

    .line 727
    .line 728
    const/4 v5, 0x0

    .line 729
    :goto_f
    if-eqz v5, :cond_17

    .line 730
    .line 731
    return-void

    .line 732
    :cond_17
    new-instance v14, Landroidx/fragment/app/f$g;

    .line 733
    .line 734
    move-object v1, v14

    .line 735
    move-object v2, v15

    .line 736
    move-object/from16 v3, p3

    .line 737
    .line 738
    move-object/from16 v4, p4

    .line 739
    .line 740
    move-object/from16 v5, v20

    .line 741
    .line 742
    move-object v6, v11

    .line 743
    move-object v7, v8

    .line 744
    move-object v8, v9

    .line 745
    move-object v9, v10

    .line 746
    move-object/from16 v10, v16

    .line 747
    .line 748
    move-object/from16 v11, v17

    .line 749
    .line 750
    move-object v0, v14

    .line 751
    move/from16 v14, p2

    .line 752
    .line 753
    invoke-direct/range {v1 .. v14}, Landroidx/fragment/app/f$g;-><init>(Ljava/util/List;Landroidx/fragment/app/y0$d;Landroidx/fragment/app/y0$d;Landroidx/fragment/app/t0;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;Lr/a;Ljava/util/ArrayList;Ljava/util/ArrayList;Lr/a;Lr/a;Z)V

    .line 754
    .line 755
    .line 756
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 757
    .line 758
    .line 759
    move-result-object v1

    .line 760
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 761
    .line 762
    .line 763
    move-result v2

    .line 764
    if-eqz v2, :cond_18

    .line 765
    .line 766
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 767
    .line 768
    .line 769
    move-result-object v2

    .line 770
    check-cast v2, Landroidx/fragment/app/f$h;

    .line 771
    .line 772
    invoke-virtual {v2}, Landroidx/fragment/app/f$f;->a()Landroidx/fragment/app/y0$d;

    .line 773
    .line 774
    .line 775
    move-result-object v2

    .line 776
    invoke-virtual {v2, v0}, Landroidx/fragment/app/y0$d;->b(Landroidx/fragment/app/y0$b;)V

    .line 777
    .line 778
    .line 779
    goto :goto_10

    .line 780
    :cond_18
    return-void
.end method

.method private final G(Ljava/util/Map;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {p2}, Ld0/p0;->z(Landroid/view/View;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    :cond_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    check-cast p2, Landroid/view/ViewGroup;

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-ge v1, v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    const-string v3, "child"

    .line 34
    .line 35
    invoke-static {v2, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, p1, v2}, Landroidx/fragment/app/f;->G(Ljava/util/Map;Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    return-void
.end method

.method private final H(Lr/a;Ljava/util/Collection;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lr/a;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "entries"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroidx/fragment/app/f$i;

    .line 11
    .line 12
    invoke-direct {v0, p2}, Landroidx/fragment/app/f$i;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0}, Lyc/m;->F(Ljava/lang/Iterable;Lid/l;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final I(Ljava/util/List;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lyc/m;->Z(Ljava/util/List;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/fragment/app/y0$d;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/y0$d;->i()Landroidx/fragment/app/p;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroidx/fragment/app/y0$d;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/fragment/app/y0$d;->i()Landroidx/fragment/app/p;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v2, v2, Landroidx/fragment/app/p;->mAnimationInfo:Landroidx/fragment/app/p$k;

    .line 32
    .line 33
    iget-object v3, v0, Landroidx/fragment/app/p;->mAnimationInfo:Landroidx/fragment/app/p$k;

    .line 34
    .line 35
    iget v3, v3, Landroidx/fragment/app/p$k;->c:I

    .line 36
    .line 37
    iput v3, v2, Landroidx/fragment/app/p$k;->c:I

    .line 38
    .line 39
    invoke-virtual {v1}, Landroidx/fragment/app/y0$d;->i()Landroidx/fragment/app/p;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v2, v2, Landroidx/fragment/app/p;->mAnimationInfo:Landroidx/fragment/app/p$k;

    .line 44
    .line 45
    iget-object v3, v0, Landroidx/fragment/app/p;->mAnimationInfo:Landroidx/fragment/app/p$k;

    .line 46
    .line 47
    iget v3, v3, Landroidx/fragment/app/p$k;->d:I

    .line 48
    .line 49
    iput v3, v2, Landroidx/fragment/app/p$k;->d:I

    .line 50
    .line 51
    invoke-virtual {v1}, Landroidx/fragment/app/y0$d;->i()Landroidx/fragment/app/p;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    iget-object v2, v2, Landroidx/fragment/app/p;->mAnimationInfo:Landroidx/fragment/app/p$k;

    .line 56
    .line 57
    iget-object v3, v0, Landroidx/fragment/app/p;->mAnimationInfo:Landroidx/fragment/app/p$k;

    .line 58
    .line 59
    iget v3, v3, Landroidx/fragment/app/p$k;->e:I

    .line 60
    .line 61
    iput v3, v2, Landroidx/fragment/app/p$k;->e:I

    .line 62
    .line 63
    invoke-virtual {v1}, Landroidx/fragment/app/y0$d;->i()Landroidx/fragment/app/p;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iget-object v1, v1, Landroidx/fragment/app/p;->mAnimationInfo:Landroidx/fragment/app/p$k;

    .line 68
    .line 69
    iget-object v2, v0, Landroidx/fragment/app/p;->mAnimationInfo:Landroidx/fragment/app/p$k;

    .line 70
    .line 71
    iget v2, v2, Landroidx/fragment/app/p$k;->f:I

    .line 72
    .line 73
    iput v2, v1, Landroidx/fragment/app/p$k;->f:I

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method


# virtual methods
.method public d(Ljava/util/List;Z)V
    .locals 10

    .line 1
    const-string v0, "operations"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Ljava/lang/Iterable;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const-string v2, "operation.fragment.mView"

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x1

    .line 21
    const/4 v5, 0x0

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    move-object v6, v1

    .line 29
    check-cast v6, Landroidx/fragment/app/y0$d;

    .line 30
    .line 31
    sget-object v7, Landroidx/fragment/app/y0$d$b;->a:Landroidx/fragment/app/y0$d$b$a;

    .line 32
    .line 33
    invoke-virtual {v6}, Landroidx/fragment/app/y0$d;->i()Landroidx/fragment/app/p;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    iget-object v8, v8, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 38
    .line 39
    invoke-static {v8, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v7, v8}, Landroidx/fragment/app/y0$d$b$a;->a(Landroid/view/View;)Landroidx/fragment/app/y0$d$b;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    sget-object v8, Landroidx/fragment/app/y0$d$b;->c:Landroidx/fragment/app/y0$d$b;

    .line 47
    .line 48
    if-ne v7, v8, :cond_1

    .line 49
    .line 50
    invoke-virtual {v6}, Landroidx/fragment/app/y0$d;->h()Landroidx/fragment/app/y0$d$b;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    if-eq v6, v8, :cond_1

    .line 55
    .line 56
    move v6, v4

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    move v6, v5

    .line 59
    :goto_0
    if-eqz v6, :cond_0

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    move-object v1, v3

    .line 63
    :goto_1
    check-cast v1, Landroidx/fragment/app/y0$d;

    .line 64
    .line 65
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-interface {p1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    :cond_3
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-eqz v6, :cond_5

    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    move-object v7, v6

    .line 84
    check-cast v7, Landroidx/fragment/app/y0$d;

    .line 85
    .line 86
    sget-object v8, Landroidx/fragment/app/y0$d$b;->a:Landroidx/fragment/app/y0$d$b$a;

    .line 87
    .line 88
    invoke-virtual {v7}, Landroidx/fragment/app/y0$d;->i()Landroidx/fragment/app/p;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    iget-object v9, v9, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 93
    .line 94
    invoke-static {v9, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8, v9}, Landroidx/fragment/app/y0$d$b$a;->a(Landroid/view/View;)Landroidx/fragment/app/y0$d$b;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    sget-object v9, Landroidx/fragment/app/y0$d$b;->c:Landroidx/fragment/app/y0$d$b;

    .line 102
    .line 103
    if-eq v8, v9, :cond_4

    .line 104
    .line 105
    invoke-virtual {v7}, Landroidx/fragment/app/y0$d;->h()Landroidx/fragment/app/y0$d$b;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    if-ne v7, v9, :cond_4

    .line 110
    .line 111
    move v7, v4

    .line 112
    goto :goto_2

    .line 113
    :cond_4
    move v7, v5

    .line 114
    :goto_2
    if-eqz v7, :cond_3

    .line 115
    .line 116
    move-object v3, v6

    .line 117
    :cond_5
    check-cast v3, Landroidx/fragment/app/y0$d;

    .line 118
    .line 119
    const/4 v0, 0x2

    .line 120
    invoke-static {v0}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_6

    .line 125
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v2, "Executing operations from "

    .line 132
    .line 133
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v2, " to "

    .line 140
    .line 141
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    const-string v2, "FragmentManager"

    .line 152
    .line 153
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .line 160
    .line 161
    new-instance v2, Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-direct {p0, p1}, Landroidx/fragment/app/f;->I(Ljava/util/List;)V

    .line 167
    .line 168
    .line 169
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    if-eqz v6, :cond_9

    .line 178
    .line 179
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    check-cast v6, Landroidx/fragment/app/y0$d;

    .line 184
    .line 185
    new-instance v7, Landroidx/fragment/app/f$b;

    .line 186
    .line 187
    invoke-direct {v7, v6, p2}, Landroidx/fragment/app/f$b;-><init>(Landroidx/fragment/app/y0$d;Z)V

    .line 188
    .line 189
    .line 190
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    new-instance v7, Landroidx/fragment/app/f$h;

    .line 194
    .line 195
    if-eqz p2, :cond_7

    .line 196
    .line 197
    if-ne v6, v1, :cond_8

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_7
    if-ne v6, v3, :cond_8

    .line 201
    .line 202
    :goto_4
    move v8, v4

    .line 203
    goto :goto_5

    .line 204
    :cond_8
    move v8, v5

    .line 205
    :goto_5
    invoke-direct {v7, v6, p2, v8}, Landroidx/fragment/app/f$h;-><init>(Landroidx/fragment/app/y0$d;ZZ)V

    .line 206
    .line 207
    .line 208
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    new-instance v7, Landroidx/fragment/app/d;

    .line 212
    .line 213
    invoke-direct {v7, p0, v6}, Landroidx/fragment/app/d;-><init>(Landroidx/fragment/app/f;Landroidx/fragment/app/y0$d;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v6, v7}, Landroidx/fragment/app/y0$d;->a(Ljava/lang/Runnable;)V

    .line 217
    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_9
    invoke-direct {p0, v2, p2, v1, v3}, Landroidx/fragment/app/f;->F(Ljava/util/List;ZLandroidx/fragment/app/y0$d;Landroidx/fragment/app/y0$d;)V

    .line 221
    .line 222
    .line 223
    invoke-direct {p0, v0}, Landroidx/fragment/app/f;->D(Ljava/util/List;)V

    .line 224
    .line 225
    .line 226
    return-void
.end method
