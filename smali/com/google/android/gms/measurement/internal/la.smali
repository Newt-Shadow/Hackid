.class public final Lcom/google/android/gms/measurement/internal/la;
.super Lcom/google/android/gms/measurement/internal/e5;
.source "SourceFile"


# instance fields
.field private volatile c:Lcom/google/android/gms/measurement/internal/da;

.field private volatile d:Lcom/google/android/gms/measurement/internal/da;

.field protected e:Lcom/google/android/gms/measurement/internal/da;

.field private final f:Ljava/util/Map;

.field private g:Lcom/google/android/gms/internal/measurement/i2;

.field private volatile h:Z

.field private volatile i:Lcom/google/android/gms/measurement/internal/da;

.field private j:Lcom/google/android/gms/measurement/internal/da;

.field private k:Z

.field private final l:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/w6;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/e5;-><init>(Lcom/google/android/gms/measurement/internal/w6;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/la;->l:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/la;->f:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method private final F(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;Z)V
    .locals 16

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/la;->c:Lcom/google/android/gms/measurement/internal/da;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/la;->d:Lcom/google/android/gms/measurement/internal/da;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/la;->c:Lcom/google/android/gms/measurement/internal/da;

    .line 15
    .line 16
    :goto_0
    move-object v3, v2

    .line 17
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/da;->b:Ljava/lang/String;

    .line 18
    .line 19
    if-nez v2, :cond_2

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const-string v2, "Activity"

    .line 24
    .line 25
    invoke-virtual {v7, v0, v2}, Lcom/google/android/gms/measurement/internal/la;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    :goto_1
    move-object v10, v0

    .line 32
    new-instance v0, Lcom/google/android/gms/measurement/internal/da;

    .line 33
    .line 34
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/da;->a:Ljava/lang/String;

    .line 35
    .line 36
    iget-wide v11, v1, Lcom/google/android/gms/measurement/internal/da;->c:J

    .line 37
    .line 38
    iget-boolean v13, v1, Lcom/google/android/gms/measurement/internal/da;->e:Z

    .line 39
    .line 40
    iget-wide v14, v1, Lcom/google/android/gms/measurement/internal/da;->f:J

    .line 41
    .line 42
    move-object v8, v0

    .line 43
    invoke-direct/range {v8 .. v15}, Lcom/google/android/gms/measurement/internal/da;-><init>(Ljava/lang/String;Ljava/lang/String;JZJ)V

    .line 44
    .line 45
    .line 46
    move-object v2, v0

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move-object v2, v1

    .line 49
    :goto_2
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/la;->c:Lcom/google/android/gms/measurement/internal/da;

    .line 50
    .line 51
    iput-object v0, v7, Lcom/google/android/gms/measurement/internal/la;->d:Lcom/google/android/gms/measurement/internal/da;

    .line 52
    .line 53
    iput-object v2, v7, Lcom/google/android/gms/measurement/internal/la;->c:Lcom/google/android/gms/measurement/internal/da;

    .line 54
    .line 55
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    .line 62
    .line 63
    .line 64
    move-result-wide v4

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    new-instance v9, Lcom/google/android/gms/measurement/internal/fa;

    .line 70
    .line 71
    move-object v0, v9

    .line 72
    move-object/from16 v1, p0

    .line 73
    .line 74
    move/from16 v6, p3

    .line 75
    .line 76
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/fa;-><init>(Lcom/google/android/gms/measurement/internal/la;Lcom/google/android/gms/measurement/internal/da;Lcom/google/android/gms/measurement/internal/da;JZ)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/s6;->t(Ljava/lang/Runnable;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method private final G(Lcom/google/android/gms/measurement/internal/da;Lcom/google/android/gms/measurement/internal/da;JZLandroid/os/Bundle;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    move-object/from16 v2, p2

    .line 5
    .line 6
    move-wide/from16 v3, p3

    .line 7
    .line 8
    move-object/from16 v5, p6

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 11
    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x1

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    iget-wide v8, v1, Lcom/google/android/gms/measurement/internal/da;->c:J

    .line 18
    .line 19
    iget-wide v10, v2, Lcom/google/android/gms/measurement/internal/da;->c:J

    .line 20
    .line 21
    cmp-long v8, v10, v8

    .line 22
    .line 23
    if-nez v8, :cond_1

    .line 24
    .line 25
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/da;->b:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/da;->b:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    if-eqz v8, :cond_1

    .line 34
    .line 35
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/da;->a:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/da;->a:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    if-nez v8, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move v8, v6

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    move v8, v7

    .line 49
    :goto_1
    if-eqz p5, :cond_2

    .line 50
    .line 51
    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/la;->e:Lcom/google/android/gms/measurement/internal/da;

    .line 52
    .line 53
    if-eqz v9, :cond_2

    .line 54
    .line 55
    move v6, v7

    .line 56
    :cond_2
    if-eqz v8, :cond_c

    .line 57
    .line 58
    if-eqz v5, :cond_3

    .line 59
    .line 60
    new-instance v8, Landroid/os/Bundle;

    .line 61
    .line 62
    invoke-direct {v8, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    new-instance v8, Landroid/os/Bundle;

    .line 67
    .line 68
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 69
    .line 70
    .line 71
    :goto_2
    move-object v14, v8

    .line 72
    invoke-static {v1, v14, v7}, Lcom/google/android/gms/measurement/internal/yd;->k0(Lcom/google/android/gms/measurement/internal/da;Landroid/os/Bundle;Z)V

    .line 73
    .line 74
    .line 75
    if-eqz v2, :cond_6

    .line 76
    .line 77
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/da;->a:Ljava/lang/String;

    .line 78
    .line 79
    if-eqz v5, :cond_4

    .line 80
    .line 81
    const-string v8, "_pn"

    .line 82
    .line 83
    invoke-virtual {v14, v8, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_4
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/da;->b:Ljava/lang/String;

    .line 87
    .line 88
    if-eqz v5, :cond_5

    .line 89
    .line 90
    const-string v8, "_pc"

    .line 91
    .line 92
    invoke-virtual {v14, v8, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_5
    iget-wide v8, v2, Lcom/google/android/gms/measurement/internal/da;->c:J

    .line 96
    .line 97
    const-string v2, "_pi"

    .line 98
    .line 99
    invoke-virtual {v14, v2, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 100
    .line 101
    .line 102
    :cond_6
    const-wide/16 v8, 0x0

    .line 103
    .line 104
    if-eqz v6, :cond_7

    .line 105
    .line 106
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 107
    .line 108
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->z()Lcom/google/android/gms/measurement/internal/mc;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/mc;->f:Lcom/google/android/gms/measurement/internal/kc;

    .line 113
    .line 114
    iget-wide v10, v2, Lcom/google/android/gms/measurement/internal/kc;->b:J

    .line 115
    .line 116
    sub-long v10, v3, v10

    .line 117
    .line 118
    iput-wide v3, v2, Lcom/google/android/gms/measurement/internal/kc;->b:J

    .line 119
    .line 120
    cmp-long v2, v10, v8

    .line 121
    .line 122
    if-lez v2, :cond_7

    .line 123
    .line 124
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 125
    .line 126
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v2, v14, v10, v11}, Lcom/google/android/gms/measurement/internal/yd;->Z(Landroid/os/Bundle;J)V

    .line 131
    .line 132
    .line 133
    :cond_7
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 134
    .line 135
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/m;->N()Z

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    if-nez v5, :cond_8

    .line 144
    .line 145
    const-string v5, "_mst"

    .line 146
    .line 147
    const-wide/16 v10, 0x1

    .line 148
    .line 149
    invoke-virtual {v14, v5, v10, v11}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 150
    .line 151
    .line 152
    :cond_8
    iget-boolean v5, v1, Lcom/google/android/gms/measurement/internal/da;->e:Z

    .line 153
    .line 154
    if-eq v7, v5, :cond_9

    .line 155
    .line 156
    const-string v10, "auto"

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_9
    const-string v10, "app"

    .line 160
    .line 161
    :goto_3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-interface {v2}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 166
    .line 167
    .line 168
    move-result-wide v11

    .line 169
    if-eqz v5, :cond_b

    .line 170
    .line 171
    move-wide/from16 p5, v11

    .line 172
    .line 173
    iget-wide v11, v1, Lcom/google/android/gms/measurement/internal/da;->f:J

    .line 174
    .line 175
    cmp-long v2, v11, v8

    .line 176
    .line 177
    if-nez v2, :cond_a

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_a
    move-wide v12, v11

    .line 181
    goto :goto_5

    .line 182
    :cond_b
    move-wide/from16 p5, v11

    .line 183
    .line 184
    :goto_4
    move-wide/from16 v12, p5

    .line 185
    .line 186
    :goto_5
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 187
    .line 188
    const-string v11, "_vs"

    .line 189
    .line 190
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->B()Lcom/google/android/gms/measurement/internal/w9;

    .line 191
    .line 192
    .line 193
    move-result-object v9

    .line 194
    invoke-virtual/range {v9 .. v14}, Lcom/google/android/gms/measurement/internal/w9;->u(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    .line 195
    .line 196
    .line 197
    :cond_c
    if-eqz v6, :cond_d

    .line 198
    .line 199
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/la;->e:Lcom/google/android/gms/measurement/internal/da;

    .line 200
    .line 201
    invoke-direct {p0, v2, v7, v3, v4}, Lcom/google/android/gms/measurement/internal/la;->o(Lcom/google/android/gms/measurement/internal/da;ZJ)V

    .line 202
    .line 203
    .line 204
    :cond_d
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/la;->e:Lcom/google/android/gms/measurement/internal/da;

    .line 205
    .line 206
    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/da;->e:Z

    .line 207
    .line 208
    if-eqz v2, :cond_e

    .line 209
    .line 210
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/la;->j:Lcom/google/android/gms/measurement/internal/da;

    .line 211
    .line 212
    :cond_e
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 213
    .line 214
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->J()Lcom/google/android/gms/measurement/internal/vb;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/vb;->u(Lcom/google/android/gms/measurement/internal/da;)V

    .line 219
    .line 220
    .line 221
    return-void
.end method

.method private final o(Lcom/google/android/gms/measurement/internal/da;ZJ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->M()Lcom/google/android/gms/measurement/internal/b2;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v2}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/b2;->k(J)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-boolean v2, p1, Lcom/google/android/gms/measurement/internal/da;->d:Z

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v2, v1

    .line 28
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->z()Lcom/google/android/gms/measurement/internal/mc;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/mc;->f:Lcom/google/android/gms/measurement/internal/kc;

    .line 33
    .line 34
    invoke-virtual {v0, v2, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/kc;->d(ZZJ)Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    iput-boolean v1, p1, Lcom/google/android/gms/measurement/internal/da;->d:Z

    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method private final p(Lcom/google/android/gms/internal/measurement/i2;)Lcom/google/android/gms/measurement/internal/da;
    .locals 6

    .line 1
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lcom/google/android/gms/internal/measurement/i2;->a:I

    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/la;->f:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/google/android/gms/measurement/internal/da;

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/i2;->b:Ljava/lang/String;

    .line 21
    .line 22
    const-string v2, "Activity"

    .line 23
    .line 24
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/measurement/internal/la;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 29
    .line 30
    new-instance v3, Lcom/google/android/gms/measurement/internal/da;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/yd;->p0()J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-direct {v3, v2, p1, v4, v5}, Lcom/google/android/gms/measurement/internal/da;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-object v2, v3

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/la;->i:Lcom/google/android/gms/measurement/internal/da;

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/la;->i:Lcom/google/android/gms/measurement/internal/da;

    .line 53
    .line 54
    return-object p1

    .line 55
    :cond_1
    return-object v2
.end method


# virtual methods
.method final synthetic A(Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/da;Lcom/google/android/gms/measurement/internal/da;J)V
    .locals 11

    .line 1
    move-object v3, p1

    .line 2
    const-string v0, "screen_name"

    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "screen_class"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "screen_view"

    .line 13
    .line 14
    const/4 v8, 0x1

    .line 15
    move-object v10, p0

    .line 16
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/yd;->t(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    move-object v3, p0

    .line 30
    move-object v4, p2

    .line 31
    move-object v5, p3

    .line 32
    move-wide v6, p4

    .line 33
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/la;->G(Lcom/google/android/gms/measurement/internal/da;Lcom/google/android/gms/measurement/internal/da;JZLandroid/os/Bundle;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method final synthetic B(Lcom/google/android/gms/measurement/internal/da;Lcom/google/android/gms/measurement/internal/da;JZLandroid/os/Bundle;)V
    .locals 7

    .line 1
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/la;->G(Lcom/google/android/gms/measurement/internal/da;Lcom/google/android/gms/measurement/internal/da;JZLandroid/os/Bundle;)V

    return-void
.end method

.method final synthetic C(Lcom/google/android/gms/measurement/internal/da;ZJ)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/la;->o(Lcom/google/android/gms/measurement/internal/da;ZJ)V

    return-void
.end method

.method final synthetic D()Lcom/google/android/gms/measurement/internal/da;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/la;->j:Lcom/google/android/gms/measurement/internal/da;

    return-object v0
.end method

.method final synthetic E(Lcom/google/android/gms/measurement/internal/da;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/la;->j:Lcom/google/android/gms/measurement/internal/da;

    return-void
.end method

.method protected final m()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final q(Z)Lcom/google/android/gms/measurement/internal/da;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 5
    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/la;->e:Lcom/google/android/gms/measurement/internal/da;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/la;->e:Lcom/google/android/gms/measurement/internal/da;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/la;->j:Lcom/google/android/gms/measurement/internal/da;

    .line 18
    .line 19
    return-object p1
.end method

.method final r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "Activity"

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    const-string p2, "\\."

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    array-length p2, p1

    .line 13
    if-lez p2, :cond_1

    .line 14
    .line 15
    add-int/lit8 p2, p2, -0x1

    .line 16
    .line 17
    aget-object p1, p1, p2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const-string p1, ""

    .line 21
    .line 22
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const/4 v2, 0x0

    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/m;->x(Ljava/lang/String;Z)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-le v0, v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/m;->x(Ljava/lang/String;Z)I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :cond_2
    return-object p1
.end method

.method public final s(Landroid/os/Bundle;J)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/la;->l:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/la;->k:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->t()Lcom/google/android/gms/measurement/internal/n5;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string p2, "Cannot log screen view event when the app is in the background."

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :cond_0
    const-string v1, "screen_name"

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const/4 v1, 0x0

    .line 32
    const/4 v2, 0x0

    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-lez v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 46
    .line 47
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {v5, v1, v2}, Lcom/google/android/gms/measurement/internal/m;->x(Ljava/lang/String;Z)I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-le v4, v5, :cond_2

    .line 56
    .line 57
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->t()Lcom/google/android/gms/measurement/internal/n5;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const-string p2, "Invalid screen name length for screen view. Length"

    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    monitor-exit v0

    .line 81
    return-void

    .line 82
    :cond_2
    const-string v4, "screen_class"

    .line 83
    .line 84
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    if-eqz v4, :cond_4

    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-lez v5, :cond_3

    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 101
    .line 102
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-virtual {v6, v1, v2}, Lcom/google/android/gms/measurement/internal/m;->x(Ljava/lang/String;Z)I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-le v5, v1, :cond_4

    .line 111
    .line 112
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->t()Lcom/google/android/gms/measurement/internal/n5;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    const-string p2, "Invalid screen class length for screen view. Length"

    .line 123
    .line 124
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 125
    .line 126
    .line 127
    move-result p3

    .line 128
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object p3

    .line 132
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    monitor-exit v0

    .line 136
    return-void

    .line 137
    :cond_4
    if-nez v4, :cond_6

    .line 138
    .line 139
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/la;->g:Lcom/google/android/gms/internal/measurement/i2;

    .line 140
    .line 141
    if-eqz v1, :cond_5

    .line 142
    .line 143
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/i2;->b:Ljava/lang/String;

    .line 144
    .line 145
    const-string v4, "Activity"

    .line 146
    .line 147
    invoke-virtual {p0, v1, v4}, Lcom/google/android/gms/measurement/internal/la;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    goto :goto_0

    .line 152
    :cond_5
    const-string v1, "Activity"

    .line 153
    .line 154
    :goto_0
    move-object v4, v1

    .line 155
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/la;->c:Lcom/google/android/gms/measurement/internal/da;

    .line 156
    .line 157
    iget-boolean v5, p0, Lcom/google/android/gms/measurement/internal/la;->h:Z

    .line 158
    .line 159
    if-eqz v5, :cond_7

    .line 160
    .line 161
    if-eqz v1, :cond_7

    .line 162
    .line 163
    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/la;->h:Z

    .line 164
    .line 165
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/da;->b:Ljava/lang/String;

    .line 166
    .line 167
    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/da;->a:Ljava/lang/String;

    .line 172
    .line 173
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v2, :cond_7

    .line 178
    .line 179
    if-eqz v1, :cond_7

    .line 180
    .line 181
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->t()Lcom/google/android/gms/measurement/internal/n5;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    const-string p2, "Ignoring call to log screen view event with duplicate parameters."

    .line 192
    .line 193
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    monitor-exit v0

    .line 197
    return-void

    .line 198
    :cond_7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 200
    .line 201
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    if-nez v3, :cond_8

    .line 210
    .line 211
    const-string v2, "null"

    .line 212
    .line 213
    goto :goto_1

    .line 214
    :cond_8
    move-object v2, v3

    .line 215
    :goto_1
    if-nez v4, :cond_9

    .line 216
    .line 217
    const-string v5, "null"

    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_9
    move-object v5, v4

    .line 221
    :goto_2
    const-string v6, "Logging screen view with name, class"

    .line 222
    .line 223
    invoke-virtual {v1, v6, v2, v5}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/la;->c:Lcom/google/android/gms/measurement/internal/da;

    .line 227
    .line 228
    if-nez v1, :cond_a

    .line 229
    .line 230
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/la;->d:Lcom/google/android/gms/measurement/internal/da;

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/la;->c:Lcom/google/android/gms/measurement/internal/da;

    .line 234
    .line 235
    :goto_3
    new-instance v10, Lcom/google/android/gms/measurement/internal/da;

    .line 236
    .line 237
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/yd;->p0()J

    .line 242
    .line 243
    .line 244
    move-result-wide v5

    .line 245
    const/4 v7, 0x1

    .line 246
    move-object v2, v10

    .line 247
    move-wide v8, p2

    .line 248
    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/measurement/internal/da;-><init>(Ljava/lang/String;Ljava/lang/String;JZJ)V

    .line 249
    .line 250
    .line 251
    iput-object v10, p0, Lcom/google/android/gms/measurement/internal/la;->c:Lcom/google/android/gms/measurement/internal/da;

    .line 252
    .line 253
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/la;->d:Lcom/google/android/gms/measurement/internal/da;

    .line 254
    .line 255
    iput-object v10, p0, Lcom/google/android/gms/measurement/internal/la;->i:Lcom/google/android/gms/measurement/internal/da;

    .line 256
    .line 257
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    invoke-interface {p2}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    .line 262
    .line 263
    .line 264
    move-result-wide p2

    .line 265
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    new-instance v2, Lcom/google/android/gms/measurement/internal/ea;

    .line 270
    .line 271
    move-object v5, v2

    .line 272
    move-object v6, p0

    .line 273
    move-object v7, p1

    .line 274
    move-object v8, v10

    .line 275
    move-object v9, v1

    .line 276
    move-wide v10, p2

    .line 277
    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/ea;-><init>(Lcom/google/android/gms/measurement/internal/la;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/da;Lcom/google/android/gms/measurement/internal/da;J)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/s6;->t(Ljava/lang/Runnable;)V

    .line 281
    .line 282
    .line 283
    return-void

    .line 284
    :catchall_0
    move-exception p1

    .line 285
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    throw p1
.end method

.method public final t(Lcom/google/android/gms/internal/measurement/i2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/m;->N()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->t()Lcom/google/android/gms/measurement/internal/n5;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string p2, "setCurrentScreen cannot be called while screen reporting is disabled."

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/la;->c:Lcom/google/android/gms/measurement/internal/da;

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->t()Lcom/google/android/gms/measurement/internal/n5;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string p2, "setCurrentScreen cannot be called while no activity active"

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/la;->f:Ljava/util/Map;

    .line 46
    .line 47
    iget v3, p1, Lcom/google/android/gms/internal/measurement/i2;->a:I

    .line 48
    .line 49
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    if-nez v4, :cond_2

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->t()Lcom/google/android/gms/measurement/internal/n5;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const-string p2, "setCurrentScreen must be called with an activity in the activity lifecycle"

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_2
    if-nez p3, :cond_3

    .line 74
    .line 75
    iget-object p3, p1, Lcom/google/android/gms/internal/measurement/i2;->b:Ljava/lang/String;

    .line 76
    .line 77
    const-string v4, "Activity"

    .line 78
    .line 79
    invoke-virtual {p0, p3, v4}, Lcom/google/android/gms/measurement/internal/la;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    :cond_3
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/da;->b:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/da;->a:Ljava/lang/String;

    .line 86
    .line 87
    invoke-static {v4, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v4, :cond_5

    .line 96
    .line 97
    if-nez v1, :cond_4

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->t()Lcom/google/android/gms/measurement/internal/n5;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    const-string p2, "setCurrentScreen cannot be called with the same class and name"

    .line 109
    .line 110
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_5
    :goto_0
    const/4 v1, 0x0

    .line 115
    const/4 v4, 0x0

    .line 116
    if-eqz p2, :cond_7

    .line 117
    .line 118
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-lez v5, :cond_6

    .line 123
    .line 124
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-virtual {v6, v4, v1}, Lcom/google/android/gms/measurement/internal/m;->x(Ljava/lang/String;Z)I

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    if-gt v5, v6, :cond_6

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->t()Lcom/google/android/gms/measurement/internal/n5;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    const-string p3, "Invalid screen name length in setCurrentScreen. Length"

    .line 152
    .line 153
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_7
    :goto_1
    if-eqz p3, :cond_9

    .line 162
    .line 163
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    if-lez v5, :cond_8

    .line 168
    .line 169
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    invoke-virtual {v6, v4, v1}, Lcom/google/android/gms/measurement/internal/m;->x(Ljava/lang/String;Z)I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-gt v5, v1, :cond_8

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->t()Lcom/google/android/gms/measurement/internal/n5;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 193
    .line 194
    .line 195
    move-result p2

    .line 196
    const-string p3, "Invalid class name length in setCurrentScreen. Length"

    .line 197
    .line 198
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :cond_9
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    if-nez p2, :cond_a

    .line 215
    .line 216
    const-string v4, "null"

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_a
    move-object v4, p2

    .line 220
    :goto_3
    const-string v5, "Setting current screen to name, class"

    .line 221
    .line 222
    invoke-virtual {v1, v5, v4, p3}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    new-instance v1, Lcom/google/android/gms/measurement/internal/da;

    .line 226
    .line 227
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/yd;->p0()J

    .line 232
    .line 233
    .line 234
    move-result-wide v4

    .line 235
    invoke-direct {v1, p2, p3, v4, v5}, Lcom/google/android/gms/measurement/internal/da;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 236
    .line 237
    .line 238
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/i2;->b:Ljava/lang/String;

    .line 242
    .line 243
    const/4 p2, 0x1

    .line 244
    invoke-direct {p0, p1, v1, p2}, Lcom/google/android/gms/measurement/internal/la;->F(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;Z)V

    .line 245
    .line 246
    .line 247
    return-void
.end method

.method public final u()Lcom/google/android/gms/measurement/internal/da;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/la;->c:Lcom/google/android/gms/measurement/internal/da;

    return-object v0
.end method

.method public final v(Lcom/google/android/gms/internal/measurement/i2;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m;->N()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    if-eqz p2, :cond_1

    .line 15
    .line 16
    const-string v0, "com.google.app_measurement.screen_service"

    .line 17
    .line 18
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    new-instance v0, Lcom/google/android/gms/measurement/internal/da;

    .line 25
    .line 26
    const-string v1, "name"

    .line 27
    .line 28
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "referrer_name"

    .line 33
    .line 34
    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string v3, "id"

    .line 39
    .line 40
    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/da;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 45
    .line 46
    .line 47
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/la;->f:Ljava/util/Map;

    .line 48
    .line 49
    iget p1, p1, Lcom/google/android/gms/internal/measurement/i2;->a:I

    .line 50
    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    return-void
.end method

.method public final w(Lcom/google/android/gms/internal/measurement/i2;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/la;->l:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/la;->k:Z

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/la;->g:Lcom/google/android/gms/internal/measurement/i2;

    .line 8
    .line 9
    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/la;->g:Lcom/google/android/gms/internal/measurement/i2;

    .line 18
    .line 19
    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/la;->h:Z

    .line 20
    .line 21
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/m;->N()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/la;->i:Lcom/google/android/gms/measurement/internal/da;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    new-instance v3, Lcom/google/android/gms/measurement/internal/ka;

    .line 42
    .line 43
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/ka;-><init>(Lcom/google/android/gms/measurement/internal/la;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/s6;->t(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 52
    :try_start_4
    throw p1

    .line 53
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/m;->N()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_1

    .line 65
    .line 66
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/la;->i:Lcom/google/android/gms/measurement/internal/da;

    .line 67
    .line 68
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/la;->c:Lcom/google/android/gms/measurement/internal/da;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    new-instance v0, Lcom/google/android/gms/measurement/internal/ga;

    .line 75
    .line 76
    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/ga;-><init>(Lcom/google/android/gms/measurement/internal/la;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/s6;->t(Ljava/lang/Runnable;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/la;->p(Lcom/google/android/gms/internal/measurement/i2;)Lcom/google/android/gms/measurement/internal/da;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/i2;->b:Ljava/lang/String;

    .line 88
    .line 89
    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/gms/measurement/internal/la;->F(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;Z)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->M()Lcom/google/android/gms/measurement/internal/b2;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    .line 105
    .line 106
    .line 107
    move-result-wide v1

    .line 108
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    new-instance v3, Lcom/google/android/gms/measurement/internal/a1;

    .line 113
    .line 114
    invoke-direct {v3, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/a1;-><init>(Lcom/google/android/gms/measurement/internal/b2;J)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/s6;->t(Ljava/lang/Runnable;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :catchall_1
    move-exception p1

    .line 122
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 123
    throw p1
.end method

.method public final x(Lcom/google/android/gms/internal/measurement/i2;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/la;->l:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/la;->k:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/la;->h:Z

    .line 9
    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/m;->N()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x0

    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/la;->c:Lcom/google/android/gms/measurement/internal/da;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-instance v0, Lcom/google/android/gms/measurement/internal/ha;

    .line 39
    .line 40
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/ha;-><init>(Lcom/google/android/gms/measurement/internal/la;J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/s6;->t(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/la;->p(Lcom/google/android/gms/internal/measurement/i2;)Lcom/google/android/gms/measurement/internal/da;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/la;->c:Lcom/google/android/gms/measurement/internal/da;

    .line 52
    .line 53
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/la;->d:Lcom/google/android/gms/measurement/internal/da;

    .line 54
    .line 55
    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/la;->c:Lcom/google/android/gms/measurement/internal/da;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    new-instance v3, Lcom/google/android/gms/measurement/internal/ia;

    .line 62
    .line 63
    invoke-direct {v3, p0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/ia;-><init>(Lcom/google/android/gms/measurement/internal/la;Lcom/google/android/gms/measurement/internal/da;J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/s6;->t(Ljava/lang/Runnable;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    throw p1
.end method

.method public final y(Lcom/google/android/gms/internal/measurement/i2;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m;->N()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    if-eqz p2, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/la;->f:Ljava/util/Map;

    .line 17
    .line 18
    iget p1, p1, Lcom/google/android/gms/internal/measurement/i2;->a:I

    .line 19
    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/google/android/gms/measurement/internal/da;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    new-instance v0, Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v1, "id"

    .line 38
    .line 39
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/da;->c:J

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 42
    .line 43
    .line 44
    const-string v1, "name"

    .line 45
    .line 46
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/da;->a:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v1, "referrer_name"

    .line 52
    .line 53
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/da;->b:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string p1, "com.google.app_measurement.screen_service"

    .line 59
    .line 60
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_0
    return-void
.end method

.method public final z(Lcom/google/android/gms/internal/measurement/i2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/la;->l:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/la;->g:Lcom/google/android/gms/internal/measurement/i2;

    .line 5
    .line 6
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/la;->g:Lcom/google/android/gms/internal/measurement/i2;

    .line 14
    .line 15
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m;->N()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/la;->f:Ljava/util/Map;

    .line 30
    .line 31
    iget p1, p1, Lcom/google/android/gms/internal/measurement/i2;->a:I

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw p1
.end method
