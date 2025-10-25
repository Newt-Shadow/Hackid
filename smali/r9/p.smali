.class public abstract Lr9/p;
.super Lr9/k;
.source "SourceFile"


# static fields
.field static final d:[I

.field static final e:[I

.field static final f:[I

.field static final g:[[I

.field static final h:[[I


# instance fields
.field private final a:Ljava/lang/StringBuilder;

.field private final b:Lr9/o;

.field private final c:Lr9/g;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    filled-new-array {v0, v0, v0}, [I

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    sput-object v1, Lr9/p;->d:[I

    .line 7
    .line 8
    filled-new-array {v0, v0, v0, v0, v0}, [I

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sput-object v1, Lr9/p;->e:[I

    .line 13
    .line 14
    const/4 v1, 0x6

    .line 15
    new-array v1, v1, [I

    .line 16
    .line 17
    fill-array-data v1, :array_0

    .line 18
    .line 19
    .line 20
    sput-object v1, Lr9/p;->f:[I

    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    const/4 v2, 0x2

    .line 24
    filled-new-array {v1, v2, v0, v0}, [I

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    filled-new-array {v2, v2, v2, v0}, [I

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    filled-new-array {v2, v0, v2, v2}, [I

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    const/4 v6, 0x4

    .line 37
    filled-new-array {v0, v6, v0, v0}, [I

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    filled-new-array {v0, v0, v1, v2}, [I

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    filled-new-array {v0, v2, v1, v0}, [I

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    filled-new-array {v0, v0, v0, v6}, [I

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    filled-new-array {v0, v1, v0, v2}, [I

    .line 54
    .line 55
    .line 56
    move-result-object v11

    .line 57
    filled-new-array {v0, v2, v0, v1}, [I

    .line 58
    .line 59
    .line 60
    move-result-object v12

    .line 61
    filled-new-array {v1, v0, v0, v2}, [I

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    move-object v6, v7

    .line 66
    move-object v7, v8

    .line 67
    move-object v8, v9

    .line 68
    move-object v9, v10

    .line 69
    move-object v10, v11

    .line 70
    move-object v11, v12

    .line 71
    move-object v12, v1

    .line 72
    filled-new-array/range {v3 .. v12}, [[I

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    sput-object v1, Lr9/p;->g:[[I

    .line 77
    .line 78
    const/16 v2, 0x14

    .line 79
    .line 80
    new-array v3, v2, [[I

    .line 81
    .line 82
    sput-object v3, Lr9/p;->h:[[I

    .line 83
    .line 84
    const/4 v4, 0x0

    .line 85
    const/16 v5, 0xa

    .line 86
    .line 87
    invoke-static {v1, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    .line 89
    .line 90
    :goto_0
    if-ge v5, v2, :cond_1

    .line 91
    .line 92
    sget-object v1, Lr9/p;->g:[[I

    .line 93
    .line 94
    add-int/lit8 v3, v5, -0xa

    .line 95
    .line 96
    aget-object v1, v1, v3

    .line 97
    .line 98
    array-length v3, v1

    .line 99
    new-array v3, v3, [I

    .line 100
    .line 101
    move v6, v4

    .line 102
    :goto_1
    array-length v7, v1

    .line 103
    if-ge v6, v7, :cond_0

    .line 104
    .line 105
    array-length v7, v1

    .line 106
    sub-int/2addr v7, v6

    .line 107
    sub-int/2addr v7, v0

    .line 108
    aget v7, v1, v7

    .line 109
    .line 110
    aput v7, v3, v6

    .line 111
    .line 112
    add-int/lit8 v6, v6, 0x1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_0
    sget-object v1, Lr9/p;->h:[[I

    .line 116
    .line 117
    aput-object v3, v1, v5

    .line 118
    .line 119
    add-int/lit8 v5, v5, 0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_1
    return-void

    .line 123
    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lr9/k;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const/16 v1, 0x14

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lr9/p;->a:Ljava/lang/StringBuilder;

    .line 12
    .line 13
    new-instance v0, Lr9/o;

    .line 14
    .line 15
    invoke-direct {v0}, Lr9/o;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lr9/p;->b:Lr9/o;

    .line 19
    .line 20
    new-instance v0, Lr9/g;

    .line 21
    .line 22
    invoke-direct {v0}, Lr9/g;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lr9/p;->c:Lr9/g;

    .line 26
    .line 27
    return-void
.end method

.method static j(Ljava/lang/CharSequence;)Z
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const/4 v2, 0x1

    .line 10
    sub-int/2addr v0, v2

    .line 11
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/16 v4, 0xa

    .line 16
    .line 17
    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Lr9/p;->s(Ljava/lang/CharSequence;)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-ne p0, v3, :cond_1

    .line 30
    .line 31
    move v1, v2

    .line 32
    :cond_1
    return v1
.end method

.method static k(Lj9/a;[II[[I)I
    .locals 4

    .line 1
    invoke-static {p0, p2, p1}, Lr9/k;->g(Lj9/a;I[I)V

    .line 2
    .line 3
    .line 4
    array-length p0, p3

    .line 5
    const p2, 0x3ef5c28f    # 0.48f

    .line 6
    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, p0, :cond_1

    .line 11
    .line 12
    aget-object v2, p3, v1

    .line 13
    .line 14
    const v3, 0x3f333333    # 0.7f

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v2, v3}, Lr9/k;->f([I[IF)F

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    cmpg-float v3, v2, p2

    .line 22
    .line 23
    if-gez v3, :cond_0

    .line 24
    .line 25
    move v0, v1

    .line 26
    move p2, v2

    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    if-ltz v0, :cond_2

    .line 31
    .line 32
    return v0

    .line 33
    :cond_2
    invoke-static {}, Ld9/j;->a()Ld9/j;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    throw p0
.end method

.method static o(Lj9/a;IZ[I)[I
    .locals 1

    .line 1
    array-length v0, p3

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    invoke-static {p0, p1, p2, p3, v0}, Lr9/p;->p(Lj9/a;IZ[I[I)[I

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method private static p(Lj9/a;IZ[I[I)[I
    .locals 8

    .line 1
    invoke-virtual {p0}, Lj9/a;->i()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lj9/a;->f(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lj9/a;->e(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    :goto_0
    array-length v1, p3

    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, p2

    .line 19
    move v4, v2

    .line 20
    move p2, p1

    .line 21
    :goto_1
    if-ge p1, v0, :cond_4

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lj9/a;->c(I)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const/4 v6, 0x1

    .line 28
    if-eq v5, v3, :cond_1

    .line 29
    .line 30
    aget v5, p4, v4

    .line 31
    .line 32
    add-int/2addr v5, v6

    .line 33
    aput v5, p4, v4

    .line 34
    .line 35
    goto :goto_3

    .line 36
    :cond_1
    add-int/lit8 v5, v1, -0x1

    .line 37
    .line 38
    if-ne v4, v5, :cond_3

    .line 39
    .line 40
    const v5, 0x3f333333    # 0.7f

    .line 41
    .line 42
    .line 43
    invoke-static {p4, p3, v5}, Lr9/k;->f([I[IF)F

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    const v7, 0x3ef5c28f    # 0.48f

    .line 48
    .line 49
    .line 50
    cmpg-float v5, v5, v7

    .line 51
    .line 52
    if-gez v5, :cond_2

    .line 53
    .line 54
    filled-new-array {p2, p1}, [I

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    :cond_2
    aget v5, p4, v2

    .line 60
    .line 61
    aget v7, p4, v6

    .line 62
    .line 63
    add-int/2addr v5, v7

    .line 64
    add-int/2addr p2, v5

    .line 65
    add-int/lit8 v5, v4, -0x1

    .line 66
    .line 67
    const/4 v7, 0x2

    .line 68
    invoke-static {p4, v7, p4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    .line 70
    .line 71
    aput v2, p4, v5

    .line 72
    .line 73
    aput v2, p4, v4

    .line 74
    .line 75
    add-int/lit8 v4, v4, -0x1

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 79
    .line 80
    :goto_2
    aput v6, p4, v4

    .line 81
    .line 82
    xor-int/lit8 v3, v3, 0x1

    .line 83
    .line 84
    :goto_3
    add-int/lit8 p1, p1, 0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    invoke-static {}, Ld9/j;->a()Ld9/j;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    throw p0
.end method

.method static q(Lj9/a;)[I
    .locals 7

    .line 1
    sget-object v0, Lr9/p;->d:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    new-array v0, v0, [I

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v1

    .line 9
    move v4, v3

    .line 10
    :goto_0
    if-nez v3, :cond_1

    .line 11
    .line 12
    sget-object v2, Lr9/p;->d:[I

    .line 13
    .line 14
    array-length v5, v2

    .line 15
    invoke-static {v0, v1, v5, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v4, v1, v2, v0}, Lr9/p;->p(Lj9/a;IZ[I[I)[I

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    aget v4, v2, v1

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    aget v5, v2, v5

    .line 26
    .line 27
    sub-int v6, v5, v4

    .line 28
    .line 29
    sub-int v6, v4, v6

    .line 30
    .line 31
    if-ltz v6, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, v6, v4, v1}, Lj9/a;->j(IIZ)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    :cond_0
    move v4, v5

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-object v2
.end method

.method static s(Ljava/lang/CharSequence;)I
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, v0, -0x1

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    const/16 v3, 0x9

    .line 9
    .line 10
    if-ltz v1, :cond_1

    .line 11
    .line 12
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    add-int/lit8 v4, v4, -0x30

    .line 17
    .line 18
    if-ltz v4, :cond_0

    .line 19
    .line 20
    if-gt v4, v3, :cond_0

    .line 21
    .line 22
    add-int/2addr v2, v4

    .line 23
    add-int/lit8 v1, v1, -0x2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Ld9/f;->a()Ld9/f;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    throw p0

    .line 31
    :cond_1
    mul-int/lit8 v2, v2, 0x3

    .line 32
    .line 33
    add-int/lit8 v0, v0, -0x2

    .line 34
    .line 35
    :goto_1
    if-ltz v0, :cond_3

    .line 36
    .line 37
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    add-int/lit8 v1, v1, -0x30

    .line 42
    .line 43
    if-ltz v1, :cond_2

    .line 44
    .line 45
    if-gt v1, v3, :cond_2

    .line 46
    .line 47
    add-int/2addr v2, v1

    .line 48
    add-int/lit8 v0, v0, -0x2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-static {}, Ld9/f;->a()Ld9/f;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    throw p0

    .line 56
    :cond_3
    rsub-int p0, v2, 0x3e8

    .line 57
    .line 58
    rem-int/lit8 p0, p0, 0xa

    .line 59
    .line 60
    return p0
.end method


# virtual methods
.method public d(ILj9/a;Ljava/util/Map;)Ld9/n;
    .locals 1

    .line 1
    invoke-static {p2}, Lr9/p;->q(Lj9/a;)[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, p2, v0, p3}, Lr9/p;->n(ILj9/a;[ILjava/util/Map;)Ld9/n;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method i(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lr9/p;->j(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method l(Lj9/a;I)[I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-object v1, Lr9/p;->d:[I

    .line 3
    .line 4
    invoke-static {p1, p2, v0, v1}, Lr9/p;->o(Lj9/a;IZ[I)[I

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method protected abstract m(Lj9/a;[ILjava/lang/StringBuilder;)I
.end method

.method public n(ILj9/a;[ILjava/util/Map;)Ld9/n;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p4, :cond_0

    .line 3
    .line 4
    move-object v1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Ld9/e;->k:Ld9/e;

    .line 7
    .line 8
    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ld9/q;

    .line 13
    .line 14
    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    new-instance v5, Ld9/p;

    .line 21
    .line 22
    aget v6, p3, v4

    .line 23
    .line 24
    aget v7, p3, v3

    .line 25
    .line 26
    add-int/2addr v6, v7

    .line 27
    int-to-float v6, v6

    .line 28
    div-float/2addr v6, v2

    .line 29
    int-to-float v7, p1

    .line 30
    invoke-direct {v5, v6, v7}, Ld9/p;-><init>(FF)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v1, v5}, Ld9/q;->a(Ld9/p;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v5, p0, Lr9/p;->a:Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p2, p3, v5}, Lr9/p;->m(Lj9/a;[ILjava/lang/StringBuilder;)I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    new-instance v7, Ld9/p;

    .line 48
    .line 49
    int-to-float v8, v6

    .line 50
    int-to-float v9, p1

    .line 51
    invoke-direct {v7, v8, v9}, Ld9/p;-><init>(FF)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v1, v7}, Ld9/q;->a(Ld9/p;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-virtual {p0, p2, v6}, Lr9/p;->l(Lj9/a;I)[I

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    new-instance v7, Ld9/p;

    .line 64
    .line 65
    aget v8, v6, v4

    .line 66
    .line 67
    aget v9, v6, v3

    .line 68
    .line 69
    add-int/2addr v8, v9

    .line 70
    int-to-float v8, v8

    .line 71
    div-float/2addr v8, v2

    .line 72
    int-to-float v9, p1

    .line 73
    invoke-direct {v7, v8, v9}, Ld9/p;-><init>(FF)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v1, v7}, Ld9/q;->a(Ld9/p;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    aget v1, v6, v3

    .line 80
    .line 81
    aget v7, v6, v4

    .line 82
    .line 83
    sub-int v7, v1, v7

    .line 84
    .line 85
    add-int/2addr v7, v1

    .line 86
    invoke-virtual {p2}, Lj9/a;->i()I

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    if-ge v7, v8, :cond_e

    .line 91
    .line 92
    invoke-virtual {p2, v1, v7, v4}, Lj9/a;->j(IIZ)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_e

    .line 97
    .line 98
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    const/16 v7, 0x8

    .line 107
    .line 108
    if-lt v5, v7, :cond_d

    .line 109
    .line 110
    invoke-virtual {p0, v1}, Lr9/p;->i(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-eqz v5, :cond_c

    .line 115
    .line 116
    aget v5, p3, v3

    .line 117
    .line 118
    aget p3, p3, v4

    .line 119
    .line 120
    add-int/2addr v5, p3

    .line 121
    int-to-float p3, v5

    .line 122
    div-float/2addr p3, v2

    .line 123
    aget v5, v6, v3

    .line 124
    .line 125
    aget v7, v6, v4

    .line 126
    .line 127
    add-int/2addr v5, v7

    .line 128
    int-to-float v5, v5

    .line 129
    div-float/2addr v5, v2

    .line 130
    invoke-virtual {p0}, Lr9/p;->r()Ld9/a;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    new-instance v7, Ld9/n;

    .line 135
    .line 136
    new-instance v8, Ld9/p;

    .line 137
    .line 138
    int-to-float v9, p1

    .line 139
    invoke-direct {v8, p3, v9}, Ld9/p;-><init>(FF)V

    .line 140
    .line 141
    .line 142
    new-instance p3, Ld9/p;

    .line 143
    .line 144
    invoke-direct {p3, v5, v9}, Ld9/p;-><init>(FF)V

    .line 145
    .line 146
    .line 147
    filled-new-array {v8, p3}, [Ld9/p;

    .line 148
    .line 149
    .line 150
    move-result-object p3

    .line 151
    invoke-direct {v7, v1, v0, p3, v2}, Ld9/n;-><init>(Ljava/lang/String;[B[Ld9/p;Ld9/a;)V

    .line 152
    .line 153
    .line 154
    :try_start_0
    iget-object p3, p0, Lr9/p;->b:Lr9/o;

    .line 155
    .line 156
    aget v5, v6, v3

    .line 157
    .line 158
    invoke-virtual {p3, p1, p2, v5}, Lr9/o;->a(ILj9/a;I)Ld9/n;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    sget-object p2, Ld9/o;->j:Ld9/o;

    .line 163
    .line 164
    invoke-virtual {p1}, Ld9/n;->f()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p3

    .line 168
    invoke-virtual {v7, p2, p3}, Ld9/n;->h(Ld9/o;Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Ld9/n;->d()Ljava/util/Map;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    invoke-virtual {v7, p2}, Ld9/n;->g(Ljava/util/Map;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Ld9/n;->e()[Ld9/p;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    invoke-virtual {v7, p2}, Ld9/n;->a([Ld9/p;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Ld9/n;->f()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 190
    .line 191
    .line 192
    move-result p1
    :try_end_0
    .catch Ld9/m; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    goto :goto_1

    .line 194
    :catch_0
    move p1, v4

    .line 195
    :goto_1
    if-nez p4, :cond_4

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_4
    sget-object p2, Ld9/e;->l:Ld9/e;

    .line 199
    .line 200
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    move-object v0, p2

    .line 205
    check-cast v0, [I

    .line 206
    .line 207
    :goto_2
    if-eqz v0, :cond_8

    .line 208
    .line 209
    array-length p2, v0

    .line 210
    move p3, v4

    .line 211
    :goto_3
    if-ge p3, p2, :cond_6

    .line 212
    .line 213
    aget p4, v0, p3

    .line 214
    .line 215
    if-ne p1, p4, :cond_5

    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_5
    add-int/lit8 p3, p3, 0x1

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_6
    move v3, v4

    .line 222
    :goto_4
    if-eqz v3, :cond_7

    .line 223
    .line 224
    goto :goto_5

    .line 225
    :cond_7
    invoke-static {}, Ld9/j;->a()Ld9/j;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    throw p1

    .line 230
    :cond_8
    :goto_5
    sget-object p1, Ld9/a;->h:Ld9/a;

    .line 231
    .line 232
    if-eq v2, p1, :cond_9

    .line 233
    .line 234
    sget-object p1, Ld9/a;->o:Ld9/a;

    .line 235
    .line 236
    if-ne v2, p1, :cond_a

    .line 237
    .line 238
    :cond_9
    iget-object p1, p0, Lr9/p;->c:Lr9/g;

    .line 239
    .line 240
    invoke-virtual {p1, v1}, Lr9/g;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    if-eqz p1, :cond_a

    .line 245
    .line 246
    sget-object p2, Ld9/o;->i:Ld9/o;

    .line 247
    .line 248
    invoke-virtual {v7, p2, p1}, Ld9/n;->h(Ld9/o;Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    :cond_a
    sget-object p1, Ld9/a;->g:Ld9/a;

    .line 252
    .line 253
    if-ne v2, p1, :cond_b

    .line 254
    .line 255
    const/4 v4, 0x4

    .line 256
    :cond_b
    sget-object p1, Ld9/o;->n:Ld9/o;

    .line 257
    .line 258
    new-instance p2, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    const-string p3, "]E"

    .line 264
    .line 265
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p2

    .line 275
    invoke-virtual {v7, p1, p2}, Ld9/n;->h(Ld9/o;Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    return-object v7

    .line 279
    :cond_c
    invoke-static {}, Ld9/d;->a()Ld9/d;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    throw p1

    .line 284
    :cond_d
    invoke-static {}, Ld9/f;->a()Ld9/f;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    throw p1

    .line 289
    :cond_e
    invoke-static {}, Ld9/j;->a()Ld9/j;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    throw p1
.end method

.method abstract r()Ld9/a;
.end method
