.class public Landroidx/recyclerview/widget/c;
.super Landroidx/recyclerview/widget/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/c$d;,
        Landroidx/recyclerview/widget/c$e;
    }
.end annotation


# instance fields
.field private h:Ljava/util/ArrayList;

.field private i:Ljava/util/ArrayList;

.field private j:Ljava/util/ArrayList;

.field private k:Ljava/util/ArrayList;

.field l:Ljava/util/ArrayList;

.field m:Ljava/util/ArrayList;

.field n:Ljava/util/ArrayList;

.field o:Ljava/util/ArrayList;

.field p:Ljava/util/ArrayList;

.field q:Ljava/util/ArrayList;

.field r:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/k;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/recyclerview/widget/c;->h:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/recyclerview/widget/c;->i:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/recyclerview/widget/c;->j:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroidx/recyclerview/widget/c;->k:Ljava/util/ArrayList;

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Landroidx/recyclerview/widget/c;->l:Ljava/util/ArrayList;

    .line 38
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Landroidx/recyclerview/widget/c;->m:Ljava/util/ArrayList;

    .line 45
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Landroidx/recyclerview/widget/c;->n:Ljava/util/ArrayList;

    .line 52
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Landroidx/recyclerview/widget/c;->o:Ljava/util/ArrayList;

    .line 59
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Landroidx/recyclerview/widget/c;->p:Ljava/util/ArrayList;

    .line 66
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Landroidx/recyclerview/widget/c;->q:Ljava/util/ArrayList;

    .line 73
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Landroidx/recyclerview/widget/c;->r:Ljava/util/ArrayList;

    .line 80
    .line 81
    return-void
.end method

.method private p(Landroidx/recyclerview/widget/RecyclerView$a0;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method private r(Landroidx/recyclerview/widget/c$d;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->j:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-gez v0, :cond_b

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->h:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 19
    .line 20
    :goto_0
    if-ltz v0, :cond_0

    .line 21
    .line 22
    iget-object v2, p0, Landroidx/recyclerview/widget/c;->h:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v2}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/k;->k(Landroidx/recyclerview/widget/RecyclerView$a0;)V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Landroidx/recyclerview/widget/c;->h:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    add-int/lit8 v0, v0, -0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->i:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    add-int/lit8 v0, v0, -0x1

    .line 49
    .line 50
    if-gez v0, :cond_a

    .line 51
    .line 52
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->k:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    add-int/lit8 v0, v0, -0x1

    .line 59
    .line 60
    :goto_1
    if-ltz v0, :cond_1

    .line 61
    .line 62
    iget-object v2, p0, Landroidx/recyclerview/widget/c;->k:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Landroidx/recyclerview/widget/c$d;

    .line 69
    .line 70
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/c;->r(Landroidx/recyclerview/widget/c$d;)V

    .line 71
    .line 72
    .line 73
    add-int/lit8 v0, v0, -0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->k:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/recyclerview/widget/c;->g()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_2

    .line 86
    .line 87
    return-void

    .line 88
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->m:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    add-int/lit8 v0, v0, -0x1

    .line 95
    .line 96
    :goto_2
    if-ltz v0, :cond_4

    .line 97
    .line 98
    iget-object v2, p0, Landroidx/recyclerview/widget/c;->m:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    add-int/lit8 v3, v3, -0x1

    .line 111
    .line 112
    if-gez v3, :cond_3

    .line 113
    .line 114
    add-int/lit8 v0, v0, -0x1

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_3
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Landroidx/recyclerview/widget/c$e;

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    throw v1

    .line 127
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->l:Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    add-int/lit8 v0, v0, -0x1

    .line 134
    .line 135
    :goto_3
    if-ltz v0, :cond_6

    .line 136
    .line 137
    iget-object v2, p0, Landroidx/recyclerview/widget/c;->l:Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    check-cast v2, Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    add-int/lit8 v3, v3, -0x1

    .line 150
    .line 151
    if-gez v3, :cond_5

    .line 152
    .line 153
    add-int/lit8 v0, v0, -0x1

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_5
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-static {v0}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    throw v1

    .line 164
    :cond_6
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->n:Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    add-int/lit8 v0, v0, -0x1

    .line 171
    .line 172
    :goto_4
    if-ltz v0, :cond_9

    .line 173
    .line 174
    iget-object v1, p0, Landroidx/recyclerview/widget/c;->n:Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    check-cast v1, Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    add-int/lit8 v2, v2, -0x1

    .line 187
    .line 188
    :goto_5
    if-ltz v2, :cond_8

    .line 189
    .line 190
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    check-cast v3, Landroidx/recyclerview/widget/c$d;

    .line 195
    .line 196
    invoke-direct {p0, v3}, Landroidx/recyclerview/widget/c;->r(Landroidx/recyclerview/widget/c$d;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    if-eqz v3, :cond_7

    .line 204
    .line 205
    iget-object v3, p0, Landroidx/recyclerview/widget/c;->n:Ljava/util/ArrayList;

    .line 206
    .line 207
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    :cond_7
    add-int/lit8 v2, v2, -0x1

    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_8
    add-int/lit8 v0, v0, -0x1

    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_9
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->q:Ljava/util/ArrayList;

    .line 217
    .line 218
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/c;->q(Ljava/util/List;)V

    .line 219
    .line 220
    .line 221
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->p:Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/c;->q(Ljava/util/List;)V

    .line 224
    .line 225
    .line 226
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->o:Ljava/util/ArrayList;

    .line 227
    .line 228
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/c;->q(Ljava/util/List;)V

    .line 229
    .line 230
    .line 231
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->r:Ljava/util/ArrayList;

    .line 232
    .line 233
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/c;->q(Ljava/util/List;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$k;->b()V

    .line 237
    .line 238
    .line 239
    return-void

    .line 240
    :cond_a
    iget-object v2, p0, Landroidx/recyclerview/widget/c;->i:Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-static {v0}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    throw v1

    .line 250
    :cond_b
    iget-object v2, p0, Landroidx/recyclerview/widget/c;->j:Ljava/util/ArrayList;

    .line 251
    .line 252
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    check-cast v0, Landroidx/recyclerview/widget/c$e;

    .line 257
    .line 258
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    throw v1
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->k:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->j:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->h:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->p:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->q:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->o:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->r:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->m:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->l:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    .line 81
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->n:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_0

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    const/4 v0, 0x0

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 93
    :goto_1
    return v0
.end method

.method public i()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/c;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/c;->j:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    xor-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/recyclerview/widget/c;->k:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    xor-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    iget-object v3, p0, Landroidx/recyclerview/widget/c;->i:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    xor-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    if-nez v3, :cond_0

    .line 38
    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    iget-object v4, p0, Landroidx/recyclerview/widget/c;->h:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    const/4 v6, 0x0

    .line 53
    if-eqz v5, :cond_1

    .line 54
    .line 55
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-static {v5}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, v6}, Landroidx/recyclerview/widget/c;->p(Landroidx/recyclerview/widget/RecyclerView$a0;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object v4, p0, Landroidx/recyclerview/widget/c;->h:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 69
    .line 70
    .line 71
    const/4 v4, 0x0

    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    new-instance v5, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    iget-object v7, p0, Landroidx/recyclerview/widget/c;->j:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 82
    .line 83
    .line 84
    iget-object v7, p0, Landroidx/recyclerview/widget/c;->m:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    iget-object v7, p0, Landroidx/recyclerview/widget/c;->j:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 92
    .line 93
    .line 94
    new-instance v7, Landroidx/recyclerview/widget/c$a;

    .line 95
    .line 96
    invoke-direct {v7, p0, v5}, Landroidx/recyclerview/widget/c$a;-><init>(Landroidx/recyclerview/widget/c;Ljava/util/ArrayList;)V

    .line 97
    .line 98
    .line 99
    if-nez v0, :cond_2

    .line 100
    .line 101
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Landroidx/recyclerview/widget/c$e;

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    throw v6

    .line 115
    :cond_3
    :goto_1
    if-eqz v2, :cond_5

    .line 116
    .line 117
    new-instance v5, Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .line 121
    .line 122
    iget-object v7, p0, Landroidx/recyclerview/widget/c;->k:Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 125
    .line 126
    .line 127
    iget-object v7, p0, Landroidx/recyclerview/widget/c;->n:Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    iget-object v7, p0, Landroidx/recyclerview/widget/c;->k:Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 135
    .line 136
    .line 137
    new-instance v7, Landroidx/recyclerview/widget/c$b;

    .line 138
    .line 139
    invoke-direct {v7, p0, v5}, Landroidx/recyclerview/widget/c$b;-><init>(Landroidx/recyclerview/widget/c;Ljava/util/ArrayList;)V

    .line 140
    .line 141
    .line 142
    if-nez v0, :cond_4

    .line 143
    .line 144
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_4
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Landroidx/recyclerview/widget/c$d;

    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    throw v6

    .line 158
    :cond_5
    :goto_2
    if-eqz v3, :cond_b

    .line 159
    .line 160
    new-instance v3, Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .line 164
    .line 165
    iget-object v5, p0, Landroidx/recyclerview/widget/c;->i:Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 168
    .line 169
    .line 170
    iget-object v5, p0, Landroidx/recyclerview/widget/c;->l:Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    iget-object v5, p0, Landroidx/recyclerview/widget/c;->i:Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 178
    .line 179
    .line 180
    new-instance v5, Landroidx/recyclerview/widget/c$c;

    .line 181
    .line 182
    invoke-direct {v5, p0, v3}, Landroidx/recyclerview/widget/c$c;-><init>(Landroidx/recyclerview/widget/c;Ljava/util/ArrayList;)V

    .line 183
    .line 184
    .line 185
    if-nez v0, :cond_7

    .line 186
    .line 187
    if-nez v1, :cond_7

    .line 188
    .line 189
    if-eqz v2, :cond_6

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_6
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 193
    .line 194
    .line 195
    goto :goto_5

    .line 196
    :cond_7
    :goto_3
    if-eqz v0, :cond_8

    .line 197
    .line 198
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$k;->f()J

    .line 199
    .line 200
    .line 201
    :cond_8
    const-wide/16 v7, 0x0

    .line 202
    .line 203
    if-eqz v1, :cond_9

    .line 204
    .line 205
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$k;->e()J

    .line 206
    .line 207
    .line 208
    move-result-wide v0

    .line 209
    goto :goto_4

    .line 210
    :cond_9
    move-wide v0, v7

    .line 211
    :goto_4
    if-eqz v2, :cond_a

    .line 212
    .line 213
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$k;->d()J

    .line 214
    .line 215
    .line 216
    move-result-wide v7

    .line 217
    :cond_a
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-static {v0}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    throw v6

    .line 228
    :cond_b
    :goto_5
    return-void
.end method

.method m(Landroidx/recyclerview/widget/RecyclerView$a0;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method n(Landroidx/recyclerview/widget/c$d;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method o(Landroidx/recyclerview/widget/RecyclerView$a0;IIII)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method q(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    throw p1
.end method
