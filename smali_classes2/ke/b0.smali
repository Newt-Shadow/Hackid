.class public final Lke/b0;
.super Lke/z;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lke/z;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public C()B
    .locals 3

    .line 1
    invoke-virtual {p0}, Lke/z;->O()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lke/b0;->G()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_1

    .line 14
    .line 15
    const/4 v2, -0x1

    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iput v1, p0, Lke/a;->a:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-static {v0}, Lke/b;->a(C)B

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    return v0

    .line 30
    :cond_1
    :goto_0
    const/16 v0, 0xa

    .line 31
    .line 32
    return v0
.end method

.method public G()I
    .locals 9

    .line 1
    iget v0, p0, Lke/a;->a:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lke/z;->O()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v8

    .line 11
    :goto_0
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-ge v0, v2, :cond_8

    .line 16
    .line 17
    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/16 v3, 0x20

    .line 22
    .line 23
    if-eq v2, v3, :cond_2

    .line 24
    .line 25
    const/16 v3, 0xa

    .line 26
    .line 27
    if-eq v2, v3, :cond_2

    .line 28
    .line 29
    const/16 v3, 0xd

    .line 30
    .line 31
    if-eq v2, v3, :cond_2

    .line 32
    .line 33
    const/16 v3, 0x9

    .line 34
    .line 35
    if-ne v2, v3, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v3, 0x0

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    :goto_1
    const/4 v3, 0x1

    .line 41
    :goto_2
    if-eqz v3, :cond_4

    .line 42
    .line 43
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    const/16 v3, 0x2f

    .line 47
    .line 48
    if-ne v2, v3, :cond_8

    .line 49
    .line 50
    add-int/lit8 v2, v0, 0x1

    .line 51
    .line 52
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-ge v2, v4, :cond_8

    .line 57
    .line 58
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    const/16 v4, 0x2a

    .line 63
    .line 64
    if-eq v2, v4, :cond_6

    .line 65
    .line 66
    if-eq v2, v3, :cond_5

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_5
    const/16 v3, 0xa

    .line 70
    .line 71
    add-int/lit8 v4, v0, 0x2

    .line 72
    .line 73
    const/4 v5, 0x0

    .line 74
    const/4 v6, 0x4

    .line 75
    const/4 v7, 0x0

    .line 76
    move-object v2, v8

    .line 77
    invoke-static/range {v2 .. v7}, Lrd/n;->Y(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-ne v0, v1, :cond_3

    .line 82
    .line 83
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    goto :goto_0

    .line 88
    :cond_6
    const-string v3, "*/"

    .line 89
    .line 90
    add-int/lit8 v4, v0, 0x2

    .line 91
    .line 92
    const/4 v5, 0x0

    .line 93
    const/4 v6, 0x4

    .line 94
    const/4 v7, 0x0

    .line 95
    move-object v2, v8

    .line 96
    invoke-static/range {v2 .. v7}, Lrd/n;->Z(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eq v0, v1, :cond_7

    .line 101
    .line 102
    add-int/lit8 v0, v0, 0x2

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_7
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    iput v0, p0, Lke/a;->a:I

    .line 110
    .line 111
    const-string v2, "Expected end of the block comment: \"*/\", but had EOF instead"

    .line 112
    .line 113
    const/4 v3, 0x0

    .line 114
    const/4 v4, 0x0

    .line 115
    const/4 v5, 0x6

    .line 116
    const/4 v6, 0x0

    .line 117
    move-object v1, p0

    .line 118
    invoke-static/range {v1 .. v6}, Lke/a;->v(Lke/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 119
    .line 120
    .line 121
    new-instance v0, Lxc/c;

    .line 122
    .line 123
    invoke-direct {v0}, Lxc/c;-><init>()V

    .line 124
    .line 125
    .line 126
    throw v0

    .line 127
    :cond_8
    :goto_3
    iput v0, p0, Lke/a;->a:I

    .line 128
    .line 129
    return v0
.end method

.method public e()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lke/b0;->G()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lke/z;->O()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lke/z;->O()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0, v0}, Lke/a;->B(C)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    return v0

    .line 32
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 33
    return v0
.end method

.method public j()B
    .locals 3

    .line 1
    invoke-virtual {p0}, Lke/z;->O()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lke/b0;->G()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_1

    .line 14
    .line 15
    const/4 v2, -0x1

    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 20
    .line 21
    iput v2, p0, Lke/a;->a:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Lke/b;->a(C)B

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    return v0

    .line 32
    :cond_1
    :goto_0
    const/16 v0, 0xa

    .line 33
    .line 34
    return v0
.end method

.method public k(C)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lke/z;->O()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lke/b0;->G()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, -0x1

    .line 14
    if-ge v1, v2, :cond_0

    .line 15
    .line 16
    if-ne v1, v3, :cond_1

    .line 17
    .line 18
    :cond_0
    iput v3, p0, Lke/a;->a:I

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lke/a;->M(C)V

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    iput v1, p0, Lke/a;->a:I

    .line 30
    .line 31
    if-ne v0, p1, :cond_2

    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    invoke-virtual {p0, p1}, Lke/a;->M(C)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
