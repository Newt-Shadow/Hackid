.class public Lcom/yandex/metrica/impl/ob/mc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:F

.field public final c:I

.field public final d:I

.field public final e:J

.field public final f:I

.field public final g:Z

.field public final h:J

.field public final i:Z

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:Lcom/yandex/metrica/impl/ob/Xb;

.field public final n:Lcom/yandex/metrica/impl/ob/Xb;

.field public final o:Lcom/yandex/metrica/impl/ob/Xb;

.field public final p:Lcom/yandex/metrica/impl/ob/Xb;

.field public final q:Lcom/yandex/metrica/impl/ob/cc;


# direct methods
.method public constructor <init>(JFIIJIZJZZZZLcom/yandex/metrica/impl/ob/Xb;Lcom/yandex/metrica/impl/ob/Xb;Lcom/yandex/metrica/impl/ob/Xb;Lcom/yandex/metrica/impl/ob/Xb;Lcom/yandex/metrica/impl/ob/cc;)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 2
    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/mc;->a:J

    move v1, p3

    .line 3
    iput v1, v0, Lcom/yandex/metrica/impl/ob/mc;->b:F

    move v1, p4

    .line 4
    iput v1, v0, Lcom/yandex/metrica/impl/ob/mc;->c:I

    move v1, p5

    .line 5
    iput v1, v0, Lcom/yandex/metrica/impl/ob/mc;->d:I

    move-wide v1, p6

    .line 6
    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/mc;->e:J

    move v1, p8

    .line 7
    iput v1, v0, Lcom/yandex/metrica/impl/ob/mc;->f:I

    move v1, p9

    .line 8
    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/mc;->g:Z

    move-wide v1, p10

    .line 9
    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/mc;->h:J

    move v1, p12

    .line 10
    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/mc;->i:Z

    move/from16 v1, p13

    .line 11
    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/mc;->j:Z

    move/from16 v1, p14

    .line 12
    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/mc;->k:Z

    move/from16 v1, p15

    .line 13
    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/mc;->l:Z

    move-object/from16 v1, p16

    .line 14
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/mc;->m:Lcom/yandex/metrica/impl/ob/Xb;

    move-object/from16 v1, p17

    .line 15
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/mc;->n:Lcom/yandex/metrica/impl/ob/Xb;

    move-object/from16 v1, p18

    .line 16
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/mc;->o:Lcom/yandex/metrica/impl/ob/Xb;

    move-object/from16 v1, p19

    .line 17
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/mc;->p:Lcom/yandex/metrica/impl/ob/Xb;

    move-object/from16 v1, p20

    .line 18
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/mc;->q:Lcom/yandex/metrica/impl/ob/cc;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_18

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lcom/yandex/metrica/impl/ob/mc;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto/16 :goto_5

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lcom/yandex/metrica/impl/ob/mc;

    .line 19
    .line 20
    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/mc;->a:J

    .line 21
    .line 22
    iget-wide v4, p1, Lcom/yandex/metrica/impl/ob/mc;->a:J

    .line 23
    .line 24
    cmp-long v2, v2, v4

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    return v1

    .line 29
    :cond_2
    iget v2, p1, Lcom/yandex/metrica/impl/ob/mc;->b:F

    .line 30
    .line 31
    iget v3, p0, Lcom/yandex/metrica/impl/ob/mc;->b:F

    .line 32
    .line 33
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    return v1

    .line 40
    :cond_3
    iget v2, p0, Lcom/yandex/metrica/impl/ob/mc;->c:I

    .line 41
    .line 42
    iget v3, p1, Lcom/yandex/metrica/impl/ob/mc;->c:I

    .line 43
    .line 44
    if-eq v2, v3, :cond_4

    .line 45
    .line 46
    return v1

    .line 47
    :cond_4
    iget v2, p0, Lcom/yandex/metrica/impl/ob/mc;->d:I

    .line 48
    .line 49
    iget v3, p1, Lcom/yandex/metrica/impl/ob/mc;->d:I

    .line 50
    .line 51
    if-eq v2, v3, :cond_5

    .line 52
    .line 53
    return v1

    .line 54
    :cond_5
    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/mc;->e:J

    .line 55
    .line 56
    iget-wide v4, p1, Lcom/yandex/metrica/impl/ob/mc;->e:J

    .line 57
    .line 58
    cmp-long v2, v2, v4

    .line 59
    .line 60
    if-eqz v2, :cond_6

    .line 61
    .line 62
    return v1

    .line 63
    :cond_6
    iget v2, p0, Lcom/yandex/metrica/impl/ob/mc;->f:I

    .line 64
    .line 65
    iget v3, p1, Lcom/yandex/metrica/impl/ob/mc;->f:I

    .line 66
    .line 67
    if-eq v2, v3, :cond_7

    .line 68
    .line 69
    return v1

    .line 70
    :cond_7
    iget-boolean v2, p0, Lcom/yandex/metrica/impl/ob/mc;->g:Z

    .line 71
    .line 72
    iget-boolean v3, p1, Lcom/yandex/metrica/impl/ob/mc;->g:Z

    .line 73
    .line 74
    if-eq v2, v3, :cond_8

    .line 75
    .line 76
    return v1

    .line 77
    :cond_8
    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/mc;->h:J

    .line 78
    .line 79
    iget-wide v4, p1, Lcom/yandex/metrica/impl/ob/mc;->h:J

    .line 80
    .line 81
    cmp-long v2, v2, v4

    .line 82
    .line 83
    if-eqz v2, :cond_9

    .line 84
    .line 85
    return v1

    .line 86
    :cond_9
    iget-boolean v2, p0, Lcom/yandex/metrica/impl/ob/mc;->i:Z

    .line 87
    .line 88
    iget-boolean v3, p1, Lcom/yandex/metrica/impl/ob/mc;->i:Z

    .line 89
    .line 90
    if-eq v2, v3, :cond_a

    .line 91
    .line 92
    return v1

    .line 93
    :cond_a
    iget-boolean v2, p0, Lcom/yandex/metrica/impl/ob/mc;->j:Z

    .line 94
    .line 95
    iget-boolean v3, p1, Lcom/yandex/metrica/impl/ob/mc;->j:Z

    .line 96
    .line 97
    if-eq v2, v3, :cond_b

    .line 98
    .line 99
    return v1

    .line 100
    :cond_b
    iget-boolean v2, p0, Lcom/yandex/metrica/impl/ob/mc;->k:Z

    .line 101
    .line 102
    iget-boolean v3, p1, Lcom/yandex/metrica/impl/ob/mc;->k:Z

    .line 103
    .line 104
    if-eq v2, v3, :cond_c

    .line 105
    .line 106
    return v1

    .line 107
    :cond_c
    iget-boolean v2, p0, Lcom/yandex/metrica/impl/ob/mc;->l:Z

    .line 108
    .line 109
    iget-boolean v3, p1, Lcom/yandex/metrica/impl/ob/mc;->l:Z

    .line 110
    .line 111
    if-eq v2, v3, :cond_d

    .line 112
    .line 113
    return v1

    .line 114
    :cond_d
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/mc;->m:Lcom/yandex/metrica/impl/ob/Xb;

    .line 115
    .line 116
    if-eqz v2, :cond_e

    .line 117
    .line 118
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/mc;->m:Lcom/yandex/metrica/impl/ob/Xb;

    .line 119
    .line 120
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/Xb;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-nez v2, :cond_f

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_e
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/mc;->m:Lcom/yandex/metrica/impl/ob/Xb;

    .line 128
    .line 129
    if-eqz v2, :cond_f

    .line 130
    .line 131
    :goto_0
    return v1

    .line 132
    :cond_f
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/mc;->n:Lcom/yandex/metrica/impl/ob/Xb;

    .line 133
    .line 134
    if-eqz v2, :cond_10

    .line 135
    .line 136
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/mc;->n:Lcom/yandex/metrica/impl/ob/Xb;

    .line 137
    .line 138
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/Xb;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-nez v2, :cond_11

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_10
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/mc;->n:Lcom/yandex/metrica/impl/ob/Xb;

    .line 146
    .line 147
    if-eqz v2, :cond_11

    .line 148
    .line 149
    :goto_1
    return v1

    .line 150
    :cond_11
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/mc;->o:Lcom/yandex/metrica/impl/ob/Xb;

    .line 151
    .line 152
    if-eqz v2, :cond_12

    .line 153
    .line 154
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/mc;->o:Lcom/yandex/metrica/impl/ob/Xb;

    .line 155
    .line 156
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/Xb;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-nez v2, :cond_13

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_12
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/mc;->o:Lcom/yandex/metrica/impl/ob/Xb;

    .line 164
    .line 165
    if-eqz v2, :cond_13

    .line 166
    .line 167
    :goto_2
    return v1

    .line 168
    :cond_13
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/mc;->p:Lcom/yandex/metrica/impl/ob/Xb;

    .line 169
    .line 170
    if-eqz v2, :cond_14

    .line 171
    .line 172
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/mc;->p:Lcom/yandex/metrica/impl/ob/Xb;

    .line 173
    .line 174
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/Xb;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-nez v2, :cond_15

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_14
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/mc;->p:Lcom/yandex/metrica/impl/ob/Xb;

    .line 182
    .line 183
    if-eqz v2, :cond_15

    .line 184
    .line 185
    :goto_3
    return v1

    .line 186
    :cond_15
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/mc;->q:Lcom/yandex/metrica/impl/ob/cc;

    .line 187
    .line 188
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/mc;->q:Lcom/yandex/metrica/impl/ob/cc;

    .line 189
    .line 190
    if-eqz v2, :cond_16

    .line 191
    .line 192
    invoke-virtual {v2, p1}, Lcom/yandex/metrica/impl/ob/cc;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    goto :goto_4

    .line 197
    :cond_16
    if-nez p1, :cond_17

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_17
    move v0, v1

    .line 201
    :goto_4
    return v0

    .line 202
    :cond_18
    :goto_5
    return v1
.end method

.method public hashCode()I
    .locals 9

    .line 1
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/mc;->a:J

    .line 2
    .line 3
    const/16 v2, 0x20

    .line 4
    .line 5
    ushr-long v3, v0, v2

    .line 6
    .line 7
    xor-long/2addr v0, v3

    .line 8
    long-to-int v0, v0

    .line 9
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    .line 11
    iget v1, p0, Lcom/yandex/metrica/impl/ob/mc;->b:F

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    cmpl-float v3, v1, v3

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v1, v4

    .line 25
    :goto_0
    add-int/2addr v0, v1

    .line 26
    mul-int/lit8 v0, v0, 0x1f

    .line 27
    .line 28
    iget v1, p0, Lcom/yandex/metrica/impl/ob/mc;->c:I

    .line 29
    .line 30
    add-int/2addr v0, v1

    .line 31
    mul-int/lit8 v0, v0, 0x1f

    .line 32
    .line 33
    iget v1, p0, Lcom/yandex/metrica/impl/ob/mc;->d:I

    .line 34
    .line 35
    add-int/2addr v0, v1

    .line 36
    mul-int/lit8 v0, v0, 0x1f

    .line 37
    .line 38
    iget-wide v5, p0, Lcom/yandex/metrica/impl/ob/mc;->e:J

    .line 39
    .line 40
    ushr-long v7, v5, v2

    .line 41
    .line 42
    xor-long/2addr v5, v7

    .line 43
    long-to-int v1, v5

    .line 44
    add-int/2addr v0, v1

    .line 45
    mul-int/lit8 v0, v0, 0x1f

    .line 46
    .line 47
    iget v1, p0, Lcom/yandex/metrica/impl/ob/mc;->f:I

    .line 48
    .line 49
    add-int/2addr v0, v1

    .line 50
    mul-int/lit8 v0, v0, 0x1f

    .line 51
    .line 52
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/mc;->g:Z

    .line 53
    .line 54
    add-int/2addr v0, v1

    .line 55
    mul-int/lit8 v0, v0, 0x1f

    .line 56
    .line 57
    iget-wide v5, p0, Lcom/yandex/metrica/impl/ob/mc;->h:J

    .line 58
    .line 59
    ushr-long v1, v5, v2

    .line 60
    .line 61
    xor-long/2addr v1, v5

    .line 62
    long-to-int v1, v1

    .line 63
    add-int/2addr v0, v1

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    .line 65
    .line 66
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/mc;->i:Z

    .line 67
    .line 68
    add-int/2addr v0, v1

    .line 69
    mul-int/lit8 v0, v0, 0x1f

    .line 70
    .line 71
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/mc;->j:Z

    .line 72
    .line 73
    add-int/2addr v0, v1

    .line 74
    mul-int/lit8 v0, v0, 0x1f

    .line 75
    .line 76
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/mc;->k:Z

    .line 77
    .line 78
    add-int/2addr v0, v1

    .line 79
    mul-int/lit8 v0, v0, 0x1f

    .line 80
    .line 81
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/mc;->l:Z

    .line 82
    .line 83
    add-int/2addr v0, v1

    .line 84
    mul-int/lit8 v0, v0, 0x1f

    .line 85
    .line 86
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mc;->m:Lcom/yandex/metrica/impl/ob/Xb;

    .line 87
    .line 88
    if-eqz v1, :cond_1

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Xb;->hashCode()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    move v1, v4

    .line 96
    :goto_1
    add-int/2addr v0, v1

    .line 97
    mul-int/lit8 v0, v0, 0x1f

    .line 98
    .line 99
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mc;->n:Lcom/yandex/metrica/impl/ob/Xb;

    .line 100
    .line 101
    if-eqz v1, :cond_2

    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Xb;->hashCode()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    goto :goto_2

    .line 108
    :cond_2
    move v1, v4

    .line 109
    :goto_2
    add-int/2addr v0, v1

    .line 110
    mul-int/lit8 v0, v0, 0x1f

    .line 111
    .line 112
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mc;->o:Lcom/yandex/metrica/impl/ob/Xb;

    .line 113
    .line 114
    if-eqz v1, :cond_3

    .line 115
    .line 116
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Xb;->hashCode()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    goto :goto_3

    .line 121
    :cond_3
    move v1, v4

    .line 122
    :goto_3
    add-int/2addr v0, v1

    .line 123
    mul-int/lit8 v0, v0, 0x1f

    .line 124
    .line 125
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mc;->p:Lcom/yandex/metrica/impl/ob/Xb;

    .line 126
    .line 127
    if-eqz v1, :cond_4

    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Xb;->hashCode()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    goto :goto_4

    .line 134
    :cond_4
    move v1, v4

    .line 135
    :goto_4
    add-int/2addr v0, v1

    .line 136
    mul-int/lit8 v0, v0, 0x1f

    .line 137
    .line 138
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mc;->q:Lcom/yandex/metrica/impl/ob/cc;

    .line 139
    .line 140
    if-eqz v1, :cond_5

    .line 141
    .line 142
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cc;->hashCode()I

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    :cond_5
    add-int/2addr v0, v4

    .line 147
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "LocationArguments{updateTimeInterval="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/mc;->a:J

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", updateDistanceInterval="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/yandex/metrica/impl/ob/mc;->b:F

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", recordsCountToForceFlush="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/yandex/metrica/impl/ob/mc;->c:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", maxBatchSize="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/yandex/metrica/impl/ob/mc;->d:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", maxAgeToForceFlush="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/mc;->e:J

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", maxRecordsToStoreLocally="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget v1, p0, Lcom/yandex/metrica/impl/ob/mc;->f:I

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", collectionEnabled="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/mc;->g:Z

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", lbsUpdateTimeInterval="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/mc;->h:J

    .line 82
    .line 83
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", lbsCollectionEnabled="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/mc;->i:Z

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", passiveCollectionEnabled="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/mc;->j:Z

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", allCellsCollectingEnabled="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/mc;->k:Z

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, ", connectedCellCollectingEnabled="

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/mc;->l:Z

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v1, ", wifiAccessConfig="

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mc;->m:Lcom/yandex/metrica/impl/ob/Xb;

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v1, ", lbsAccessConfig="

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mc;->n:Lcom/yandex/metrica/impl/ob/Xb;

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v1, ", gpsAccessConfig="

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mc;->o:Lcom/yandex/metrica/impl/ob/Xb;

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v1, ", passiveAccessConfig="

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mc;->p:Lcom/yandex/metrica/impl/ob/Xb;

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v1, ", gplConfig="

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mc;->q:Lcom/yandex/metrica/impl/ob/cc;

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const/16 v1, 0x7d

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    return-object v0
.end method
