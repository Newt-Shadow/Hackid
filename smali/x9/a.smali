.class public final Lx9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lx9/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lx9/b;->f:Lx9/b;

    .line 5
    .line 6
    iput-object v0, p0, Lx9/a;->a:Lx9/b;

    .line 7
    .line 8
    return-void
.end method

.method private b(Lx9/c;)[I
    .locals 5

    .line 1
    invoke-virtual {p1}, Lx9/c;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    :goto_0
    iget-object v4, p0, Lx9/a;->a:Lx9/b;

    .line 10
    .line 11
    invoke-virtual {v4}, Lx9/b;->e()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-ge v3, v4, :cond_1

    .line 16
    .line 17
    if-ge v2, v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1, v3}, Lx9/c;->b(I)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    iget-object v4, p0, Lx9/a;->a:Lx9/b;

    .line 26
    .line 27
    invoke-virtual {v4, v3}, Lx9/b;->g(I)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    aput v4, v1, v2

    .line 32
    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    if-ne v2, v0, :cond_2

    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_2
    invoke-static {}, Ld9/d;->a()Ld9/d;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    throw p1
.end method

.method private c(Lx9/c;Lx9/c;[I)[I
    .locals 7

    .line 1
    invoke-virtual {p2}, Lx9/c;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ge v0, v2, :cond_0

    .line 8
    .line 9
    new-array p1, v1, [I

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    new-array v3, v0, [I

    .line 13
    .line 14
    :goto_0
    if-gt v2, v0, :cond_1

    .line 15
    .line 16
    sub-int v4, v0, v2

    .line 17
    .line 18
    iget-object v5, p0, Lx9/a;->a:Lx9/b;

    .line 19
    .line 20
    invoke-virtual {p2, v2}, Lx9/c;->c(I)I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    invoke-virtual {v5, v2, v6}, Lx9/b;->i(II)I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    aput v5, v3, v4

    .line 29
    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance p2, Lx9/c;

    .line 34
    .line 35
    iget-object v0, p0, Lx9/a;->a:Lx9/b;

    .line 36
    .line 37
    invoke-direct {p2, v0, v3}, Lx9/c;-><init>(Lx9/b;[I)V

    .line 38
    .line 39
    .line 40
    array-length v0, p3

    .line 41
    new-array v2, v0, [I

    .line 42
    .line 43
    move v3, v1

    .line 44
    :goto_1
    if-ge v3, v0, :cond_2

    .line 45
    .line 46
    iget-object v4, p0, Lx9/a;->a:Lx9/b;

    .line 47
    .line 48
    aget v5, p3, v3

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Lx9/b;->g(I)I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    iget-object v5, p0, Lx9/a;->a:Lx9/b;

    .line 55
    .line 56
    invoke-virtual {p1, v4}, Lx9/c;->b(I)I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    invoke-virtual {v5, v1, v6}, Lx9/b;->j(II)I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    iget-object v6, p0, Lx9/a;->a:Lx9/b;

    .line 65
    .line 66
    invoke-virtual {p2, v4}, Lx9/c;->b(I)I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    invoke-virtual {v6, v4}, Lx9/b;->g(I)I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    iget-object v6, p0, Lx9/a;->a:Lx9/b;

    .line 75
    .line 76
    invoke-virtual {v6, v5, v4}, Lx9/b;->i(II)I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    aput v4, v2, v3

    .line 81
    .line 82
    add-int/lit8 v3, v3, 0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    return-object v2
.end method

.method private d(Lx9/c;Lx9/c;I)[Lx9/c;
    .locals 9

    .line 1
    invoke-virtual {p1}, Lx9/c;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2}, Lx9/c;->d()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    move-object v7, p2

    .line 12
    move-object p2, p1

    .line 13
    move-object p1, v7

    .line 14
    :cond_0
    iget-object v0, p0, Lx9/a;->a:Lx9/b;

    .line 15
    .line 16
    invoke-virtual {v0}, Lx9/b;->f()Lx9/c;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lx9/a;->a:Lx9/b;

    .line 21
    .line 22
    invoke-virtual {v1}, Lx9/b;->d()Lx9/c;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :goto_0
    move-object v7, p2

    .line 27
    move-object p2, p1

    .line 28
    move-object p1, v7

    .line 29
    move-object v8, v1

    .line 30
    move-object v1, v0

    .line 31
    move-object v0, v8

    .line 32
    invoke-virtual {p1}, Lx9/c;->d()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    div-int/lit8 v3, p3, 0x2

    .line 37
    .line 38
    if-lt v2, v3, :cond_3

    .line 39
    .line 40
    invoke-virtual {p1}, Lx9/c;->e()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_2

    .line 45
    .line 46
    iget-object v2, p0, Lx9/a;->a:Lx9/b;

    .line 47
    .line 48
    invoke-virtual {v2}, Lx9/b;->f()Lx9/c;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {p1}, Lx9/c;->d()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-virtual {p1, v3}, Lx9/c;->c(I)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    iget-object v4, p0, Lx9/a;->a:Lx9/b;

    .line 61
    .line 62
    invoke-virtual {v4, v3}, Lx9/b;->g(I)I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    :goto_1
    invoke-virtual {p2}, Lx9/c;->d()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    invoke-virtual {p1}, Lx9/c;->d()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-lt v4, v5, :cond_1

    .line 75
    .line 76
    invoke-virtual {p2}, Lx9/c;->e()Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-nez v4, :cond_1

    .line 81
    .line 82
    invoke-virtual {p2}, Lx9/c;->d()I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    invoke-virtual {p1}, Lx9/c;->d()I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    sub-int/2addr v4, v5

    .line 91
    iget-object v5, p0, Lx9/a;->a:Lx9/b;

    .line 92
    .line 93
    invoke-virtual {p2}, Lx9/c;->d()I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    invoke-virtual {p2, v6}, Lx9/c;->c(I)I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    invoke-virtual {v5, v6, v3}, Lx9/b;->i(II)I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    iget-object v6, p0, Lx9/a;->a:Lx9/b;

    .line 106
    .line 107
    invoke-virtual {v6, v4, v5}, Lx9/b;->b(II)Lx9/c;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-virtual {v2, v6}, Lx9/c;->a(Lx9/c;)Lx9/c;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {p1, v4, v5}, Lx9/c;->h(II)Lx9/c;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {p2, v4}, Lx9/c;->j(Lx9/c;)Lx9/c;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    goto :goto_1

    .line 124
    :cond_1
    invoke-virtual {v2, v0}, Lx9/c;->g(Lx9/c;)Lx9/c;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v2, v1}, Lx9/c;->j(Lx9/c;)Lx9/c;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v1}, Lx9/c;->i()Lx9/c;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    goto :goto_0

    .line 137
    :cond_2
    invoke-static {}, Ld9/d;->a()Ld9/d;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    throw p1

    .line 142
    :cond_3
    const/4 p2, 0x0

    .line 143
    invoke-virtual {v0, p2}, Lx9/c;->c(I)I

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    if-eqz p2, :cond_4

    .line 148
    .line 149
    iget-object p3, p0, Lx9/a;->a:Lx9/b;

    .line 150
    .line 151
    invoke-virtual {p3, p2}, Lx9/b;->g(I)I

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    invoke-virtual {v0, p2}, Lx9/c;->f(I)Lx9/c;

    .line 156
    .line 157
    .line 158
    move-result-object p3

    .line 159
    invoke-virtual {p1, p2}, Lx9/c;->f(I)Lx9/c;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    filled-new-array {p3, p1}, [Lx9/c;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    return-object p1

    .line 168
    :cond_4
    invoke-static {}, Ld9/d;->a()Ld9/d;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    throw p1
.end method


# virtual methods
.method public a([II[I)I
    .locals 9

    .line 1
    new-instance v0, Lx9/c;

    .line 2
    .line 3
    iget-object v1, p0, Lx9/a;->a:Lx9/b;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Lx9/c;-><init>(Lx9/b;[I)V

    .line 6
    .line 7
    .line 8
    new-array v1, p2, [I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, p2

    .line 12
    move v4, v2

    .line 13
    :goto_0
    const/4 v5, 0x1

    .line 14
    if-lez v3, :cond_1

    .line 15
    .line 16
    iget-object v6, p0, Lx9/a;->a:Lx9/b;

    .line 17
    .line 18
    invoke-virtual {v6, v3}, Lx9/b;->c(I)I

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    invoke-virtual {v0, v6}, Lx9/c;->b(I)I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    sub-int v7, p2, v3

    .line 27
    .line 28
    aput v6, v1, v7

    .line 29
    .line 30
    if-eqz v6, :cond_0

    .line 31
    .line 32
    move v4, v5

    .line 33
    :cond_0
    add-int/lit8 v3, v3, -0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    if-nez v4, :cond_2

    .line 37
    .line 38
    return v2

    .line 39
    :cond_2
    iget-object v0, p0, Lx9/a;->a:Lx9/b;

    .line 40
    .line 41
    invoke-virtual {v0}, Lx9/b;->d()Lx9/c;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz p3, :cond_3

    .line 46
    .line 47
    array-length v3, p3

    .line 48
    move v4, v2

    .line 49
    :goto_1
    if-ge v4, v3, :cond_3

    .line 50
    .line 51
    aget v6, p3, v4

    .line 52
    .line 53
    iget-object v7, p0, Lx9/a;->a:Lx9/b;

    .line 54
    .line 55
    array-length v8, p1

    .line 56
    sub-int/2addr v8, v5

    .line 57
    sub-int/2addr v8, v6

    .line 58
    invoke-virtual {v7, v8}, Lx9/b;->c(I)I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    new-instance v7, Lx9/c;

    .line 63
    .line 64
    iget-object v8, p0, Lx9/a;->a:Lx9/b;

    .line 65
    .line 66
    invoke-virtual {v8, v2, v6}, Lx9/b;->j(II)I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    filled-new-array {v6, v5}, [I

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-direct {v7, v8, v6}, Lx9/c;-><init>(Lx9/b;[I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v7}, Lx9/c;->g(Lx9/c;)Lx9/c;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    add-int/lit8 v4, v4, 0x1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    new-instance p3, Lx9/c;

    .line 85
    .line 86
    iget-object v0, p0, Lx9/a;->a:Lx9/b;

    .line 87
    .line 88
    invoke-direct {p3, v0, v1}, Lx9/c;-><init>(Lx9/b;[I)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lx9/a;->a:Lx9/b;

    .line 92
    .line 93
    invoke-virtual {v0, p2, v5}, Lx9/b;->b(II)Lx9/c;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-direct {p0, v0, p3, p2}, Lx9/a;->d(Lx9/c;Lx9/c;I)[Lx9/c;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    aget-object p3, p2, v2

    .line 102
    .line 103
    aget-object p2, p2, v5

    .line 104
    .line 105
    invoke-direct {p0, p3}, Lx9/a;->b(Lx9/c;)[I

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-direct {p0, p2, p3, v0}, Lx9/a;->c(Lx9/c;Lx9/c;[I)[I

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    :goto_2
    array-length p3, v0

    .line 114
    if-ge v2, p3, :cond_5

    .line 115
    .line 116
    array-length p3, p1

    .line 117
    sub-int/2addr p3, v5

    .line 118
    iget-object v1, p0, Lx9/a;->a:Lx9/b;

    .line 119
    .line 120
    aget v3, v0, v2

    .line 121
    .line 122
    invoke-virtual {v1, v3}, Lx9/b;->h(I)I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    sub-int/2addr p3, v1

    .line 127
    if-ltz p3, :cond_4

    .line 128
    .line 129
    iget-object v1, p0, Lx9/a;->a:Lx9/b;

    .line 130
    .line 131
    aget v3, p1, p3

    .line 132
    .line 133
    aget v4, p2, v2

    .line 134
    .line 135
    invoke-virtual {v1, v3, v4}, Lx9/b;->j(II)I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    aput v1, p1, p3

    .line 140
    .line 141
    add-int/lit8 v2, v2, 0x1

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_4
    invoke-static {}, Ld9/d;->a()Ld9/d;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    throw p1

    .line 149
    :cond_5
    array-length p1, v0

    .line 150
    return p1
.end method
