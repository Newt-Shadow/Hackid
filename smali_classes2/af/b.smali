.class public abstract Laf/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Laf/d$a;

.field private static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Laf/d$a;

    .line 2
    .line 3
    invoke-direct {v0}, Laf/d$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Laf/b;->a:Laf/d$a;

    .line 7
    .line 8
    const v0, -0x499602d2

    .line 9
    .line 10
    .line 11
    sput v0, Laf/b;->b:I

    .line 12
    .line 13
    return-void
.end method

.method public static final a([BI[BII)Z
    .locals 4

    .line 1
    const-string v0, "a"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "b"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    :goto_0
    if-ge v1, p4, :cond_1

    .line 14
    .line 15
    add-int v2, v1, p1

    .line 16
    .line 17
    aget-byte v2, p0, v2

    .line 18
    .line 19
    add-int v3, v1, p3

    .line 20
    .line 21
    aget-byte v3, p2, v3

    .line 22
    .line 23
    if-eq v2, v3, :cond_0

    .line 24
    .line 25
    return v0

    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x1

    .line 30
    return p0
.end method

.method public static final b(JJJ)V
    .locals 4

    .line 1
    or-long v0, p2, p4

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    cmp-long v0, p2, p0

    .line 10
    .line 11
    if-gtz v0, :cond_0

    .line 12
    .line 13
    sub-long v0, p0, p2

    .line 14
    .line 15
    cmp-long v0, v0, p4

    .line 16
    .line 17
    if-ltz v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "size="

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p0, " offset="

    .line 36
    .line 37
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p0, " byteCount="

    .line 44
    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0
.end method

.method public static final c()I
    .locals 1

    .line 1
    sget v0, Laf/b;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public static final d(Laf/g;I)I
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Laf/b;->b:I

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Laf/g;->size()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    return p1
.end method

.method public static final e([BI)I
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Laf/b;->b:I

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    array-length p0, p0

    .line 11
    return p0

    .line 12
    :cond_0
    return p1
.end method

.method public static final f(I)I
    .locals 2

    .line 1
    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x18

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, p0

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static final g(J)J
    .locals 8

    .line 1
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    const/16 v2, 0x38

    ushr-long/2addr v0, v2

    const-wide/high16 v3, 0xff000000000000L

    and-long/2addr v3, p0

    const/16 v5, 0x28

    ushr-long/2addr v3, v5

    or-long/2addr v0, v3

    const-wide v3, 0xff0000000000L

    and-long/2addr v3, p0

    const/16 v6, 0x18

    ushr-long/2addr v3, v6

    or-long/2addr v0, v3

    const-wide v3, 0xff00000000L

    and-long/2addr v3, p0

    const/16 v7, 0x8

    ushr-long/2addr v3, v7

    or-long/2addr v0, v3

    const-wide v3, 0xff000000L

    and-long/2addr v3, p0

    shl-long/2addr v3, v7

    or-long/2addr v0, v3

    const-wide/32 v3, 0xff0000

    and-long/2addr v3, p0

    shl-long/2addr v3, v6

    or-long/2addr v0, v3

    const-wide/32 v3, 0xff00

    and-long/2addr v3, p0

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    const-wide/16 v3, 0xff

    and-long/2addr p0, v3

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static final h(S)S
    .locals 1

    .line 1
    const v0, 0xffff

    and-int/2addr p0, v0

    const v0, 0xff00

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static final i(B)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [C

    .line 3
    .line 4
    invoke-static {}, Lbf/b;->f()[C

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    shr-int/lit8 v2, p0, 0x4

    .line 9
    .line 10
    and-int/lit8 v2, v2, 0xf

    .line 11
    .line 12
    aget-char v1, v1, v2

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aput-char v1, v0, v2

    .line 16
    .line 17
    invoke-static {}, Lbf/b;->f()[C

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    and-int/lit8 p0, p0, 0xf

    .line 22
    .line 23
    aget-char p0, v1, p0

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    aput-char p0, v0, v1

    .line 27
    .line 28
    invoke-static {v0}, Lrd/n;->r([C)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public static final j(I)Ljava/lang/String;
    .locals 5

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "0"

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/16 v0, 0x8

    .line 7
    .line 8
    new-array v1, v0, [C

    .line 9
    .line 10
    invoke-static {}, Lbf/b;->f()[C

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    shr-int/lit8 v3, p0, 0x1c

    .line 15
    .line 16
    and-int/lit8 v3, v3, 0xf

    .line 17
    .line 18
    aget-char v2, v2, v3

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    aput-char v2, v1, v3

    .line 22
    .line 23
    invoke-static {}, Lbf/b;->f()[C

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    shr-int/lit8 v4, p0, 0x18

    .line 28
    .line 29
    and-int/lit8 v4, v4, 0xf

    .line 30
    .line 31
    aget-char v2, v2, v4

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    aput-char v2, v1, v4

    .line 35
    .line 36
    invoke-static {}, Lbf/b;->f()[C

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    shr-int/lit8 v4, p0, 0x14

    .line 41
    .line 42
    and-int/lit8 v4, v4, 0xf

    .line 43
    .line 44
    aget-char v2, v2, v4

    .line 45
    .line 46
    const/4 v4, 0x2

    .line 47
    aput-char v2, v1, v4

    .line 48
    .line 49
    invoke-static {}, Lbf/b;->f()[C

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    shr-int/lit8 v4, p0, 0x10

    .line 54
    .line 55
    and-int/lit8 v4, v4, 0xf

    .line 56
    .line 57
    aget-char v2, v2, v4

    .line 58
    .line 59
    const/4 v4, 0x3

    .line 60
    aput-char v2, v1, v4

    .line 61
    .line 62
    invoke-static {}, Lbf/b;->f()[C

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    shr-int/lit8 v4, p0, 0xc

    .line 67
    .line 68
    and-int/lit8 v4, v4, 0xf

    .line 69
    .line 70
    aget-char v2, v2, v4

    .line 71
    .line 72
    const/4 v4, 0x4

    .line 73
    aput-char v2, v1, v4

    .line 74
    .line 75
    invoke-static {}, Lbf/b;->f()[C

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    shr-int/lit8 v4, p0, 0x8

    .line 80
    .line 81
    and-int/lit8 v4, v4, 0xf

    .line 82
    .line 83
    aget-char v2, v2, v4

    .line 84
    .line 85
    const/4 v4, 0x5

    .line 86
    aput-char v2, v1, v4

    .line 87
    .line 88
    invoke-static {}, Lbf/b;->f()[C

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    shr-int/lit8 v4, p0, 0x4

    .line 93
    .line 94
    and-int/lit8 v4, v4, 0xf

    .line 95
    .line 96
    aget-char v2, v2, v4

    .line 97
    .line 98
    const/4 v4, 0x6

    .line 99
    aput-char v2, v1, v4

    .line 100
    .line 101
    invoke-static {}, Lbf/b;->f()[C

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    and-int/lit8 p0, p0, 0xf

    .line 106
    .line 107
    aget-char p0, v2, p0

    .line 108
    .line 109
    const/4 v2, 0x7

    .line 110
    aput-char p0, v1, v2

    .line 111
    .line 112
    :goto_0
    if-ge v3, v0, :cond_1

    .line 113
    .line 114
    aget-char p0, v1, v3

    .line 115
    .line 116
    const/16 v2, 0x30

    .line 117
    .line 118
    if-ne p0, v2, :cond_1

    .line 119
    .line 120
    add-int/lit8 v3, v3, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_1
    invoke-static {v1, v3, v0}, Lrd/n;->s([CII)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    return-object p0
.end method
