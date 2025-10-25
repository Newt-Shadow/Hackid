.class public abstract Lbf/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "0123456789abcdef"

    .line 2
    .line 3
    invoke-static {v0}, Laf/e1;->a(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lbf/a;->a:[B

    .line 8
    .line 9
    return-void
.end method

.method public static final a()[B
    .locals 1

    .line 1
    sget-object v0, Lbf/a;->a:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public static final b(Laf/d;J)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v0, p1, v0

    .line 9
    .line 10
    const-wide/16 v1, 0x1

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    sub-long v3, p1, v1

    .line 15
    .line 16
    invoke-virtual {p0, v3, v4}, Laf/d;->k(J)B

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/16 v5, 0xd

    .line 21
    .line 22
    if-ne v0, v5, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, v3, v4}, Laf/d;->A(J)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-wide/16 v0, 0x2

    .line 29
    .line 30
    invoke-virtual {p0, v0, v1}, Laf/d;->skip(J)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0, p1, p2}, Laf/d;->A(J)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, v1, v2}, Laf/d;->skip(J)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-object p1
.end method

.method public static final c(Laf/d;Laf/p0;Z)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "<this>"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "options"

    .line 9
    .line 10
    move-object/from16 v2, p1

    .line 11
    .line 12
    invoke-static {v2, v1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, Laf/d;->a:Laf/v0;

    .line 16
    .line 17
    const/4 v1, -0x2

    .line 18
    const/4 v3, -0x1

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v1, v3

    .line 25
    :goto_0
    return v1

    .line 26
    :cond_1
    iget-object v4, v0, Laf/v0;->a:[B

    .line 27
    .line 28
    iget v5, v0, Laf/v0;->b:I

    .line 29
    .line 30
    iget v6, v0, Laf/v0;->c:I

    .line 31
    .line 32
    invoke-virtual/range {p1 .. p1}, Laf/p0;->p()[I

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const/4 v7, 0x0

    .line 37
    move-object v9, v0

    .line 38
    move v10, v3

    .line 39
    move v8, v7

    .line 40
    :goto_1
    add-int/lit8 v11, v8, 0x1

    .line 41
    .line 42
    aget v8, v2, v8

    .line 43
    .line 44
    add-int/lit8 v12, v11, 0x1

    .line 45
    .line 46
    aget v11, v2, v11

    .line 47
    .line 48
    if-eq v11, v3, :cond_2

    .line 49
    .line 50
    move v10, v11

    .line 51
    :cond_2
    if-nez v9, :cond_3

    .line 52
    .line 53
    goto :goto_4

    .line 54
    :cond_3
    const/4 v11, 0x0

    .line 55
    if-gez v8, :cond_b

    .line 56
    .line 57
    mul-int/lit8 v8, v8, -0x1

    .line 58
    .line 59
    add-int v13, v12, v8

    .line 60
    .line 61
    :goto_2
    add-int/lit8 v8, v5, 0x1

    .line 62
    .line 63
    aget-byte v5, v4, v5

    .line 64
    .line 65
    and-int/lit16 v5, v5, 0xff

    .line 66
    .line 67
    add-int/lit8 v14, v12, 0x1

    .line 68
    .line 69
    aget v12, v2, v12

    .line 70
    .line 71
    if-eq v5, v12, :cond_4

    .line 72
    .line 73
    return v10

    .line 74
    :cond_4
    if-ne v14, v13, :cond_5

    .line 75
    .line 76
    const/4 v5, 0x1

    .line 77
    goto :goto_3

    .line 78
    :cond_5
    move v5, v7

    .line 79
    :goto_3
    if-ne v8, v6, :cond_9

    .line 80
    .line 81
    invoke-static {v9}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iget-object v4, v9, Laf/v0;->f:Laf/v0;

    .line 85
    .line 86
    invoke-static {v4}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iget v6, v4, Laf/v0;->b:I

    .line 90
    .line 91
    iget-object v8, v4, Laf/v0;->a:[B

    .line 92
    .line 93
    iget v9, v4, Laf/v0;->c:I

    .line 94
    .line 95
    if-ne v4, v0, :cond_8

    .line 96
    .line 97
    if-eqz v5, :cond_6

    .line 98
    .line 99
    move-object v4, v8

    .line 100
    move-object v8, v11

    .line 101
    goto :goto_5

    .line 102
    :cond_6
    :goto_4
    if-eqz p2, :cond_7

    .line 103
    .line 104
    return v1

    .line 105
    :cond_7
    return v10

    .line 106
    :cond_8
    move-object/from16 v16, v8

    .line 107
    .line 108
    move-object v8, v4

    .line 109
    move-object/from16 v4, v16

    .line 110
    .line 111
    goto :goto_5

    .line 112
    :cond_9
    move-object/from16 v16, v9

    .line 113
    .line 114
    move v9, v6

    .line 115
    move v6, v8

    .line 116
    move-object/from16 v8, v16

    .line 117
    .line 118
    :goto_5
    if-eqz v5, :cond_a

    .line 119
    .line 120
    aget v5, v2, v14

    .line 121
    .line 122
    move v13, v6

    .line 123
    move v6, v9

    .line 124
    move-object v9, v8

    .line 125
    goto :goto_7

    .line 126
    :cond_a
    move v5, v6

    .line 127
    move v6, v9

    .line 128
    move v12, v14

    .line 129
    move-object v9, v8

    .line 130
    goto :goto_2

    .line 131
    :cond_b
    add-int/lit8 v13, v5, 0x1

    .line 132
    .line 133
    aget-byte v5, v4, v5

    .line 134
    .line 135
    and-int/lit16 v5, v5, 0xff

    .line 136
    .line 137
    add-int v14, v12, v8

    .line 138
    .line 139
    :goto_6
    if-ne v12, v14, :cond_c

    .line 140
    .line 141
    return v10

    .line 142
    :cond_c
    aget v15, v2, v12

    .line 143
    .line 144
    if-ne v5, v15, :cond_f

    .line 145
    .line 146
    add-int/2addr v12, v8

    .line 147
    aget v5, v2, v12

    .line 148
    .line 149
    if-ne v13, v6, :cond_d

    .line 150
    .line 151
    iget-object v9, v9, Laf/v0;->f:Laf/v0;

    .line 152
    .line 153
    invoke-static {v9}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    iget v4, v9, Laf/v0;->b:I

    .line 157
    .line 158
    iget-object v6, v9, Laf/v0;->a:[B

    .line 159
    .line 160
    iget v8, v9, Laf/v0;->c:I

    .line 161
    .line 162
    move v13, v4

    .line 163
    move-object v4, v6

    .line 164
    move v6, v8

    .line 165
    if-ne v9, v0, :cond_d

    .line 166
    .line 167
    move-object v9, v11

    .line 168
    :cond_d
    :goto_7
    if-ltz v5, :cond_e

    .line 169
    .line 170
    return v5

    .line 171
    :cond_e
    neg-int v8, v5

    .line 172
    move v5, v13

    .line 173
    goto/16 :goto_1

    .line 174
    .line 175
    :cond_f
    add-int/lit8 v12, v12, 0x1

    .line 176
    .line 177
    goto :goto_6
.end method

.method public static synthetic d(Laf/d;Laf/p0;ZILjava/lang/Object;)I
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1, p2}, Lbf/a;->c(Laf/d;Laf/p0;Z)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method
