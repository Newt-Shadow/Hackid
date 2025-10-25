.class public final Lcom/google/android/gms/internal/play_billing/w3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:Lcom/google/android/gms/internal/play_billing/w3;


# instance fields
.field private a:I

.field private b:[I

.field private c:[Ljava/lang/Object;

.field private d:I

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/play_billing/w3;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/google/android/gms/internal/play_billing/w3;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/w3;->f:Lcom/google/android/gms/internal/play_billing/w3;

    return-void
.end method

.method private constructor <init>(I[I[Ljava/lang/Object;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/w3;->d:I

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/w3;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/w3;->b:[I

    iput-object p3, p0, Lcom/google/android/gms/internal/play_billing/w3;->c:[Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/play_billing/w3;->e:Z

    return-void
.end method

.method public static c()Lcom/google/android/gms/internal/play_billing/w3;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/w3;->f:Lcom/google/android/gms/internal/play_billing/w3;

    return-object v0
.end method

.method static e(Lcom/google/android/gms/internal/play_billing/w3;Lcom/google/android/gms/internal/play_billing/w3;)Lcom/google/android/gms/internal/play_billing/w3;
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/w3;->a:I

    .line 2
    .line 3
    iget v1, p1, Lcom/google/android/gms/internal/play_billing/w3;->a:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/w3;->b:[I

    .line 7
    .line 8
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p1, Lcom/google/android/gms/internal/play_billing/w3;->b:[I

    .line 13
    .line 14
    iget v3, p0, Lcom/google/android/gms/internal/play_billing/w3;->a:I

    .line 15
    .line 16
    iget v4, p1, Lcom/google/android/gms/internal/play_billing/w3;->a:I

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/w3;->c:[Ljava/lang/Object;

    .line 23
    .line 24
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object v3, p1, Lcom/google/android/gms/internal/play_billing/w3;->c:[Ljava/lang/Object;

    .line 29
    .line 30
    iget p0, p0, Lcom/google/android/gms/internal/play_billing/w3;->a:I

    .line 31
    .line 32
    iget p1, p1, Lcom/google/android/gms/internal/play_billing/w3;->a:I

    .line 33
    .line 34
    invoke-static {v3, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    .line 36
    .line 37
    new-instance p0, Lcom/google/android/gms/internal/play_billing/w3;

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/gms/internal/play_billing/w3;-><init>(I[I[Ljava/lang/Object;Z)V

    .line 41
    .line 42
    .line 43
    return-object p0
.end method

.method static f()Lcom/google/android/gms/internal/play_billing/w3;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/w3;

    const/16 v1, 0x8

    new-array v2, v1, [I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v4, v2, v1, v3}, Lcom/google/android/gms/internal/play_billing/w3;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object v0
.end method

.method private final l(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/w3;->b:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-le p1, v1, :cond_2

    .line 5
    .line 6
    iget v1, p0, Lcom/google/android/gms/internal/play_billing/w3;->a:I

    .line 7
    .line 8
    div-int/lit8 v2, v1, 0x2

    .line 9
    .line 10
    add-int/2addr v1, v2

    .line 11
    if-lt v1, p1, :cond_0

    .line 12
    .line 13
    move p1, v1

    .line 14
    :cond_0
    const/16 v1, 0x8

    .line 15
    .line 16
    if-ge p1, v1, :cond_1

    .line 17
    .line 18
    move p1, v1

    .line 19
    :cond_1
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/w3;->b:[I

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/w3;->c:[Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/w3;->c:[Ljava/lang/Object;

    .line 32
    .line 33
    :cond_2
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/w3;->d:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_6

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    move v1, v0

    .line 8
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/play_billing/w3;->a:I

    .line 9
    .line 10
    if-ge v0, v2, :cond_5

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/w3;->b:[I

    .line 13
    .line 14
    aget v2, v2, v0

    .line 15
    .line 16
    ushr-int/lit8 v3, v2, 0x3

    .line 17
    .line 18
    and-int/lit8 v2, v2, 0x7

    .line 19
    .line 20
    if-eqz v2, :cond_4

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    if-eq v2, v4, :cond_3

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    if-eq v2, v4, :cond_2

    .line 27
    .line 28
    const/4 v4, 0x3

    .line 29
    if-eq v2, v4, :cond_1

    .line 30
    .line 31
    const/4 v4, 0x5

    .line 32
    if-ne v2, v4, :cond_0

    .line 33
    .line 34
    shl-int/lit8 v2, v3, 0x3

    .line 35
    .line 36
    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/w3;->c:[Ljava/lang/Object;

    .line 37
    .line 38
    aget-object v3, v3, v0

    .line 39
    .line 40
    check-cast v3, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    add-int/lit8 v2, v2, 0x4

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/l2;->a()Lcom/google/android/gms/internal/play_billing/k2;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    throw v0

    .line 62
    :cond_1
    shl-int/lit8 v2, v3, 0x3

    .line 63
    .line 64
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    add-int/2addr v2, v2

    .line 69
    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/w3;->c:[Ljava/lang/Object;

    .line 70
    .line 71
    aget-object v3, v3, v0

    .line 72
    .line 73
    check-cast v3, Lcom/google/android/gms/internal/play_billing/w3;

    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/w3;->a()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    shl-int/lit8 v2, v3, 0x3

    .line 81
    .line 82
    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/w3;->c:[Ljava/lang/Object;

    .line 83
    .line 84
    aget-object v3, v3, v0

    .line 85
    .line 86
    check-cast v3, Lcom/google/android/gms/internal/play_billing/e1;

    .line 87
    .line 88
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/e1;->i()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    add-int/2addr v4, v3

    .line 101
    add-int/2addr v2, v4

    .line 102
    goto :goto_2

    .line 103
    :cond_3
    shl-int/lit8 v2, v3, 0x3

    .line 104
    .line 105
    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/w3;->c:[Ljava/lang/Object;

    .line 106
    .line 107
    aget-object v3, v3, v0

    .line 108
    .line 109
    check-cast v3, Ljava/lang/Long;

    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 112
    .line 113
    .line 114
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    add-int/lit8 v2, v2, 0x8

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_4
    shl-int/lit8 v2, v3, 0x3

    .line 122
    .line 123
    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/w3;->c:[Ljava/lang/Object;

    .line 124
    .line 125
    aget-object v3, v3, v0

    .line 126
    .line 127
    check-cast v3, Ljava/lang/Long;

    .line 128
    .line 129
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 130
    .line 131
    .line 132
    move-result-wide v3

    .line 133
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/m1;->x(J)I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    :goto_1
    add-int/2addr v2, v3

    .line 142
    :goto_2
    add-int/2addr v1, v2

    .line 143
    add-int/lit8 v0, v0, 0x1

    .line 144
    .line 145
    goto/16 :goto_0

    .line 146
    .line 147
    :cond_5
    iput v1, p0, Lcom/google/android/gms/internal/play_billing/w3;->d:I

    .line 148
    .line 149
    return v1

    .line 150
    :cond_6
    return v0
.end method

.method public final b()I
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/w3;->d:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    move v1, v0

    .line 8
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/play_billing/w3;->a:I

    .line 9
    .line 10
    if-ge v0, v2, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/w3;->b:[I

    .line 13
    .line 14
    aget v2, v2, v0

    .line 15
    .line 16
    ushr-int/lit8 v2, v2, 0x3

    .line 17
    .line 18
    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/w3;->c:[Ljava/lang/Object;

    .line 19
    .line 20
    aget-object v3, v3, v0

    .line 21
    .line 22
    check-cast v3, Lcom/google/android/gms/internal/play_billing/e1;

    .line 23
    .line 24
    const/16 v4, 0x8

    .line 25
    .line 26
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    add-int/2addr v4, v4

    .line 31
    const/16 v5, 0x10

    .line 32
    .line 33
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    add-int/2addr v5, v2

    .line 42
    const/16 v2, 0x18

    .line 43
    .line 44
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/e1;->i()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/m1;->w(I)I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    add-int/2addr v6, v3

    .line 57
    add-int/2addr v2, v6

    .line 58
    add-int/2addr v4, v5

    .line 59
    add-int/2addr v4, v2

    .line 60
    add-int/2addr v1, v4

    .line 61
    add-int/lit8 v0, v0, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/play_billing/w3;->d:I

    .line 65
    .line 66
    return v1

    .line 67
    :cond_1
    return v0
.end method

.method final d(Lcom/google/android/gms/internal/play_billing/w3;)Lcom/google/android/gms/internal/play_billing/w3;
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/w3;->f:Lcom/google/android/gms/internal/play_billing/w3;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/play_billing/w3;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/w3;->g()V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/w3;->a:I

    .line 14
    .line 15
    iget v1, p1, Lcom/google/android/gms/internal/play_billing/w3;->a:I

    .line 16
    .line 17
    add-int/2addr v0, v1

    .line 18
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/w3;->l(I)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p1, Lcom/google/android/gms/internal/play_billing/w3;->b:[I

    .line 22
    .line 23
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/w3;->b:[I

    .line 24
    .line 25
    iget v3, p0, Lcom/google/android/gms/internal/play_billing/w3;->a:I

    .line 26
    .line 27
    iget v4, p1, Lcom/google/android/gms/internal/play_billing/w3;->a:I

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p1, Lcom/google/android/gms/internal/play_billing/w3;->c:[Ljava/lang/Object;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/w3;->c:[Ljava/lang/Object;

    .line 36
    .line 37
    iget v3, p0, Lcom/google/android/gms/internal/play_billing/w3;->a:I

    .line 38
    .line 39
    iget p1, p1, Lcom/google/android/gms/internal/play_billing/w3;->a:I

    .line 40
    .line 41
    invoke-static {v1, v5, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    .line 43
    .line 44
    iput v0, p0, Lcom/google/android/gms/internal/play_billing/w3;->a:I

    .line 45
    .line 46
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

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
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/play_billing/w3;

    .line 10
    .line 11
    if-nez v2, :cond_2

    .line 12
    .line 13
    return v1

    .line 14
    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/play_billing/w3;

    .line 15
    .line 16
    iget v2, p0, Lcom/google/android/gms/internal/play_billing/w3;->a:I

    .line 17
    .line 18
    iget v3, p1, Lcom/google/android/gms/internal/play_billing/w3;->a:I

    .line 19
    .line 20
    if-ne v2, v3, :cond_6

    .line 21
    .line 22
    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/w3;->b:[I

    .line 23
    .line 24
    iget-object v4, p1, Lcom/google/android/gms/internal/play_billing/w3;->b:[I

    .line 25
    .line 26
    move v5, v1

    .line 27
    :goto_0
    if-ge v5, v2, :cond_4

    .line 28
    .line 29
    aget v6, v3, v5

    .line 30
    .line 31
    aget v7, v4, v5

    .line 32
    .line 33
    if-eq v6, v7, :cond_3

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/w3;->c:[Ljava/lang/Object;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/w3;->c:[Ljava/lang/Object;

    .line 42
    .line 43
    iget v3, p0, Lcom/google/android/gms/internal/play_billing/w3;->a:I

    .line 44
    .line 45
    move v4, v1

    .line 46
    :goto_1
    if-ge v4, v3, :cond_5

    .line 47
    .line 48
    aget-object v5, v2, v4

    .line 49
    .line 50
    aget-object v6, p1, v4

    .line 51
    .line 52
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_6

    .line 57
    .line 58
    add-int/lit8 v4, v4, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_5
    return v0

    .line 62
    :cond_6
    :goto_2
    return v1
.end method

.method final g()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/w3;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 9
    .line 10
    .line 11
    throw v0
.end method

.method public final h()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/w3;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/w3;->e:Z

    :cond_0
    return-void
.end method

.method public final hashCode()I
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/w3;->a:I

    .line 2
    .line 3
    add-int/lit16 v1, v0, 0x20f

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/w3;->b:[I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/16 v4, 0x11

    .line 9
    .line 10
    move v5, v3

    .line 11
    move v6, v4

    .line 12
    :goto_0
    if-ge v5, v0, :cond_0

    .line 13
    .line 14
    mul-int/lit8 v6, v6, 0x1f

    .line 15
    .line 16
    aget v7, v2, v5

    .line 17
    .line 18
    add-int/2addr v6, v7

    .line 19
    add-int/lit8 v5, v5, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    .line 23
    .line 24
    add-int/2addr v1, v6

    .line 25
    mul-int/lit8 v1, v1, 0x1f

    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/w3;->c:[Ljava/lang/Object;

    .line 28
    .line 29
    iget v2, p0, Lcom/google/android/gms/internal/play_billing/w3;->a:I

    .line 30
    .line 31
    :goto_1
    if-ge v3, v2, :cond_1

    .line 32
    .line 33
    mul-int/lit8 v4, v4, 0x1f

    .line 34
    .line 35
    aget-object v5, v0, v3

    .line 36
    .line 37
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    add-int/2addr v4, v5

    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    add-int/2addr v1, v4

    .line 46
    return v1
.end method

.method final i(Ljava/lang/StringBuilder;I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/play_billing/w3;->a:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/w3;->b:[I

    .line 7
    .line 8
    aget v1, v1, v0

    .line 9
    .line 10
    ushr-int/lit8 v1, v1, 0x3

    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/w3;->c:[Ljava/lang/Object;

    .line 17
    .line 18
    aget-object v2, v2, v0

    .line 19
    .line 20
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/play_billing/h3;->b(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method final j(ILjava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/w3;->g()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/w3;->a:I

    .line 5
    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/w3;->l(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/w3;->b:[I

    .line 12
    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/play_billing/w3;->a:I

    .line 14
    .line 15
    aput p1, v0, v1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/w3;->c:[Ljava/lang/Object;

    .line 18
    .line 19
    aput-object p2, p1, v1

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    iput v1, p0, Lcom/google/android/gms/internal/play_billing/w3;->a:I

    .line 24
    .line 25
    return-void
.end method

.method public final k(Lcom/google/android/gms/internal/play_billing/m4;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/w3;->a:I

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/play_billing/w3;->a:I

    .line 7
    .line 8
    if-ge v0, v1, :cond_5

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/w3;->b:[I

    .line 11
    .line 12
    aget v1, v1, v0

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/w3;->c:[Ljava/lang/Object;

    .line 15
    .line 16
    aget-object v2, v2, v0

    .line 17
    .line 18
    and-int/lit8 v3, v1, 0x7

    .line 19
    .line 20
    const/4 v4, 0x3

    .line 21
    ushr-int/2addr v1, v4

    .line 22
    if-eqz v3, :cond_4

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    if-eq v3, v5, :cond_3

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    if-eq v3, v5, :cond_2

    .line 29
    .line 30
    if-eq v3, v4, :cond_1

    .line 31
    .line 32
    const/4 v4, 0x5

    .line 33
    if-ne v3, v4, :cond_0

    .line 34
    .line 35
    check-cast v2, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/play_billing/m4;->b(II)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 46
    .line 47
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/l2;->a()Lcom/google/android/gms/internal/play_billing/k2;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_1
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/play_billing/m4;->F(I)V

    .line 56
    .line 57
    .line 58
    check-cast v2, Lcom/google/android/gms/internal/play_billing/w3;

    .line 59
    .line 60
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/play_billing/w3;->k(Lcom/google/android/gms/internal/play_billing/m4;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/play_billing/m4;->x(I)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    check-cast v2, Lcom/google/android/gms/internal/play_billing/e1;

    .line 68
    .line 69
    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/play_billing/m4;->n(ILcom/google/android/gms/internal/play_billing/e1;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    check-cast v2, Ljava/lang/Long;

    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 76
    .line 77
    .line 78
    move-result-wide v2

    .line 79
    invoke-interface {p1, v1, v2, v3}, Lcom/google/android/gms/internal/play_billing/m4;->H(IJ)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    check-cast v2, Ljava/lang/Long;

    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 86
    .line 87
    .line 88
    move-result-wide v2

    .line 89
    invoke-interface {p1, v1, v2, v3}, Lcom/google/android/gms/internal/play_billing/m4;->q(IJ)V

    .line 90
    .line 91
    .line 92
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_5
    return-void
.end method
