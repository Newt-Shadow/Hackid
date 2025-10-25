.class public Lzb/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lzb/e;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:J

.field public final e:Ljava/lang/String;

.field public final f:J

.field public final g:Lzb/c;

.field public final h:I

.field public final i:Lzb/c;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:J

.field public final m:Z

.field public final n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lzb/e;Ljava/lang/String;IJLjava/lang/String;JLzb/c;ILzb/c;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    move-object v1, p1

    .line 6
    iput-object v1, v0, Lzb/d;->a:Lzb/e;

    .line 7
    .line 8
    move-object v1, p2

    .line 9
    iput-object v1, v0, Lzb/d;->b:Ljava/lang/String;

    .line 10
    .line 11
    move v1, p3

    .line 12
    iput v1, v0, Lzb/d;->c:I

    .line 13
    .line 14
    move-wide v1, p4

    .line 15
    iput-wide v1, v0, Lzb/d;->d:J

    .line 16
    .line 17
    move-object v1, p6

    .line 18
    iput-object v1, v0, Lzb/d;->e:Ljava/lang/String;

    .line 19
    .line 20
    move-wide v1, p7

    .line 21
    iput-wide v1, v0, Lzb/d;->f:J

    .line 22
    .line 23
    move-object v1, p9

    .line 24
    iput-object v1, v0, Lzb/d;->g:Lzb/c;

    .line 25
    .line 26
    move v1, p10

    .line 27
    iput v1, v0, Lzb/d;->h:I

    .line 28
    .line 29
    move-object v1, p11

    .line 30
    iput-object v1, v0, Lzb/d;->i:Lzb/c;

    .line 31
    .line 32
    move-object v1, p12

    .line 33
    iput-object v1, v0, Lzb/d;->j:Ljava/lang/String;

    .line 34
    .line 35
    move-object/from16 v1, p13

    .line 36
    .line 37
    iput-object v1, v0, Lzb/d;->k:Ljava/lang/String;

    .line 38
    .line 39
    move-wide/from16 v1, p14

    .line 40
    .line 41
    iput-wide v1, v0, Lzb/d;->l:J

    .line 42
    .line 43
    move/from16 v1, p16

    .line 44
    .line 45
    iput-boolean v1, v0, Lzb/d;->m:Z

    .line 46
    .line 47
    move-object/from16 v1, p17

    .line 48
    .line 49
    iput-object v1, v0, Lzb/d;->n:Ljava/lang/String;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_11

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-class v2, Lzb/d;

    .line 13
    .line 14
    if-eq v2, v1, :cond_1

    .line 15
    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lzb/d;

    .line 19
    .line 20
    iget v1, p0, Lzb/d;->c:I

    .line 21
    .line 22
    iget v2, p1, Lzb/d;->c:I

    .line 23
    .line 24
    if-eq v1, v2, :cond_2

    .line 25
    .line 26
    return v0

    .line 27
    :cond_2
    iget-wide v1, p0, Lzb/d;->d:J

    .line 28
    .line 29
    iget-wide v3, p1, Lzb/d;->d:J

    .line 30
    .line 31
    cmp-long v1, v1, v3

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    return v0

    .line 36
    :cond_3
    iget-wide v1, p0, Lzb/d;->f:J

    .line 37
    .line 38
    iget-wide v3, p1, Lzb/d;->f:J

    .line 39
    .line 40
    cmp-long v1, v1, v3

    .line 41
    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    return v0

    .line 45
    :cond_4
    iget v1, p0, Lzb/d;->h:I

    .line 46
    .line 47
    iget v2, p1, Lzb/d;->h:I

    .line 48
    .line 49
    if-eq v1, v2, :cond_5

    .line 50
    .line 51
    return v0

    .line 52
    :cond_5
    iget-wide v1, p0, Lzb/d;->l:J

    .line 53
    .line 54
    iget-wide v3, p1, Lzb/d;->l:J

    .line 55
    .line 56
    cmp-long v1, v1, v3

    .line 57
    .line 58
    if-eqz v1, :cond_6

    .line 59
    .line 60
    return v0

    .line 61
    :cond_6
    iget-boolean v1, p0, Lzb/d;->m:Z

    .line 62
    .line 63
    iget-boolean v2, p1, Lzb/d;->m:Z

    .line 64
    .line 65
    if-eq v1, v2, :cond_7

    .line 66
    .line 67
    return v0

    .line 68
    :cond_7
    iget-object v1, p0, Lzb/d;->a:Lzb/e;

    .line 69
    .line 70
    iget-object v2, p1, Lzb/d;->a:Lzb/e;

    .line 71
    .line 72
    if-eq v1, v2, :cond_8

    .line 73
    .line 74
    return v0

    .line 75
    :cond_8
    iget-object v1, p0, Lzb/d;->b:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v2, p1, Lzb/d;->b:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_9

    .line 84
    .line 85
    return v0

    .line 86
    :cond_9
    iget-object v1, p0, Lzb/d;->e:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v2, p1, Lzb/d;->e:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_a

    .line 95
    .line 96
    return v0

    .line 97
    :cond_a
    iget-object v1, p0, Lzb/d;->g:Lzb/c;

    .line 98
    .line 99
    if-eqz v1, :cond_b

    .line 100
    .line 101
    iget-object v2, p1, Lzb/d;->g:Lzb/c;

    .line 102
    .line 103
    invoke-virtual {v1, v2}, Lzb/c;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-nez v1, :cond_c

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_b
    iget-object v1, p1, Lzb/d;->g:Lzb/c;

    .line 111
    .line 112
    if-eqz v1, :cond_c

    .line 113
    .line 114
    :goto_0
    return v0

    .line 115
    :cond_c
    iget-object v1, p0, Lzb/d;->i:Lzb/c;

    .line 116
    .line 117
    if-eqz v1, :cond_d

    .line 118
    .line 119
    iget-object v2, p1, Lzb/d;->i:Lzb/c;

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Lzb/c;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-nez v1, :cond_e

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_d
    iget-object v1, p1, Lzb/d;->i:Lzb/c;

    .line 129
    .line 130
    if-eqz v1, :cond_e

    .line 131
    .line 132
    :goto_1
    return v0

    .line 133
    :cond_e
    iget-object v1, p0, Lzb/d;->j:Ljava/lang/String;

    .line 134
    .line 135
    iget-object v2, p1, Lzb/d;->j:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-nez v1, :cond_f

    .line 142
    .line 143
    return v0

    .line 144
    :cond_f
    iget-object v1, p0, Lzb/d;->k:Ljava/lang/String;

    .line 145
    .line 146
    iget-object v2, p1, Lzb/d;->k:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-nez v1, :cond_10

    .line 153
    .line 154
    return v0

    .line 155
    :cond_10
    iget-object v0, p0, Lzb/d;->n:Ljava/lang/String;

    .line 156
    .line 157
    iget-object p1, p1, Lzb/d;->n:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    return p1

    .line 164
    :cond_11
    :goto_2
    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lzb/d;->a:Lzb/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lzb/d;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget v1, p0, Lzb/d;->c:I

    .line 19
    .line 20
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-wide v1, p0, Lzb/d;->d:J

    .line 24
    .line 25
    const/16 v3, 0x20

    .line 26
    .line 27
    ushr-long v4, v1, v3

    .line 28
    .line 29
    xor-long/2addr v1, v4

    .line 30
    long-to-int v1, v1

    .line 31
    add-int/2addr v0, v1

    .line 32
    mul-int/lit8 v0, v0, 0x1f

    .line 33
    .line 34
    iget-object v1, p0, Lzb/d;->e:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    add-int/2addr v0, v1

    .line 41
    mul-int/lit8 v0, v0, 0x1f

    .line 42
    .line 43
    iget-wide v1, p0, Lzb/d;->f:J

    .line 44
    .line 45
    ushr-long v4, v1, v3

    .line 46
    .line 47
    xor-long/2addr v1, v4

    .line 48
    long-to-int v1, v1

    .line 49
    add-int/2addr v0, v1

    .line 50
    mul-int/lit8 v0, v0, 0x1f

    .line 51
    .line 52
    iget-object v1, p0, Lzb/d;->g:Lzb/c;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    invoke-virtual {v1}, Lzb/c;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    move v1, v2

    .line 63
    :goto_0
    add-int/2addr v0, v1

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    .line 65
    .line 66
    iget v1, p0, Lzb/d;->h:I

    .line 67
    .line 68
    add-int/2addr v0, v1

    .line 69
    mul-int/lit8 v0, v0, 0x1f

    .line 70
    .line 71
    iget-object v1, p0, Lzb/d;->i:Lzb/c;

    .line 72
    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    invoke-virtual {v1}, Lzb/c;->hashCode()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    :cond_1
    add-int/2addr v0, v2

    .line 80
    mul-int/lit8 v0, v0, 0x1f

    .line 81
    .line 82
    iget-object v1, p0, Lzb/d;->j:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    add-int/2addr v0, v1

    .line 89
    mul-int/lit8 v0, v0, 0x1f

    .line 90
    .line 91
    iget-object v1, p0, Lzb/d;->k:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    add-int/2addr v0, v1

    .line 98
    mul-int/lit8 v0, v0, 0x1f

    .line 99
    .line 100
    iget-wide v1, p0, Lzb/d;->l:J

    .line 101
    .line 102
    ushr-long v3, v1, v3

    .line 103
    .line 104
    xor-long/2addr v1, v3

    .line 105
    long-to-int v1, v1

    .line 106
    add-int/2addr v0, v1

    .line 107
    mul-int/lit8 v0, v0, 0x1f

    .line 108
    .line 109
    iget-boolean v1, p0, Lzb/d;->m:Z

    .line 110
    .line 111
    add-int/2addr v0, v1

    .line 112
    mul-int/lit8 v0, v0, 0x1f

    .line 113
    .line 114
    iget-object v1, p0, Lzb/d;->n:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    add-int/2addr v0, v1

    .line 121
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ProductInfo{type="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lzb/d;->a:Lzb/e;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", sku=\'"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lzb/d;->b:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x27

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, ", quantity="

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v2, p0, Lzb/d;->c:I

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, ", priceMicros="

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-wide v2, p0, Lzb/d;->d:J

    .line 47
    .line 48
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v2, ", priceCurrency=\'"

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lzb/d;->e:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, ", introductoryPriceMicros="

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-wide v2, p0, Lzb/d;->f:J

    .line 70
    .line 71
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v2, ", introductoryPricePeriod="

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Lzb/d;->g:Lzb/c;

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v2, ", introductoryPriceCycles="

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget v2, p0, Lzb/d;->h:I

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v2, ", subscriptionPeriod="

    .line 95
    .line 96
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object v2, p0, Lzb/d;->i:Lzb/c;

    .line 100
    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v2, ", signature=\'"

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget-object v2, p0, Lzb/d;->j:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v2, ", purchaseToken=\'"

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-object v2, p0, Lzb/d;->k:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v2, ", purchaseTime="

    .line 131
    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget-wide v2, p0, Lzb/d;->l:J

    .line 136
    .line 137
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v2, ", autoRenewing="

    .line 141
    .line 142
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    iget-boolean v2, p0, Lzb/d;->m:Z

    .line 146
    .line 147
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v2, ", purchaseOriginalJson=\'"

    .line 151
    .line 152
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget-object v2, p0, Lzb/d;->n:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const/16 v1, 0x7d

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    return-object v0
.end method
