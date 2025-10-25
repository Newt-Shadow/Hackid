.class public Laf/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laf/g$a;
    }
.end annotation


# static fields
.field public static final d:Laf/g$a;

.field public static final e:Laf/g;


# instance fields
.field private final a:[B

.field private transient b:I

.field private transient c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Laf/g$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Laf/g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Laf/g;->d:Laf/g$a;

    .line 8
    .line 9
    new-instance v0, Laf/g;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    new-array v1, v1, [B

    .line 13
    .line 14
    invoke-direct {v0, v1}, Laf/g;-><init>([B)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Laf/g;->e:Laf/g;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Laf/g;->a:[B

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic F(Laf/g;IIILjava/lang/Object;)Laf/g;
    .locals 0

    .line 1
    if-nez p4, :cond_2

    .line 2
    .line 3
    and-int/lit8 p4, p3, 0x1

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 9
    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    invoke-static {}, Laf/b;->c()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    :cond_1
    invoke-virtual {p0, p1, p2}, Laf/g;->E(II)Laf/g;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 22
    .line 23
    const-string p1, "Super calls with default arguments not supported in this target, function: substring"

    .line 24
    .line 25
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0
.end method

.method public static synthetic s(Laf/g;Laf/g;IILjava/lang/Object;)I
    .locals 0

    .line 1
    if-nez p4, :cond_1

    .line 2
    .line 3
    and-int/lit8 p3, p3, 0x2

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Laf/g;->q(Laf/g;I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: indexOf"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public static synthetic x(Laf/g;Laf/g;IILjava/lang/Object;)I
    .locals 0

    .line 1
    if-nez p4, :cond_1

    .line 2
    .line 3
    and-int/lit8 p3, p3, 0x2

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    invoke-static {}, Laf/b;->c()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    :cond_0
    invoke-virtual {p0, p1, p2}, Laf/g;->v(Laf/g;I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 17
    .line 18
    const-string p1, "Super calls with default arguments not supported in this target, function: lastIndexOf"

    .line 19
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method


# virtual methods
.method public final A(I)V
    .locals 0

    .line 1
    iput p1, p0, Laf/g;->b:I

    .line 2
    .line 3
    return-void
.end method

.method public final B(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Laf/g;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final C()Laf/g;
    .locals 1

    .line 1
    const-string v0, "SHA-256"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Laf/g;->f(Ljava/lang/String;)Laf/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final D(Laf/g;)Z
    .locals 2

    .line 1
    const-string v0, "prefix"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Laf/g;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v1, p1, v1, v0}, Laf/g;->y(ILaf/g;II)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public E(II)Laf/g;
    .locals 3

    .line 1
    invoke-static {p0, p2}, Laf/b;->d(Laf/g;I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-ltz p1, :cond_0

    .line 8
    .line 9
    move v2, v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v2, v1

    .line 12
    :goto_0
    if-eqz v2, :cond_6

    .line 13
    .line 14
    invoke-virtual {p0}, Laf/g;->l()[B

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    array-length v2, v2

    .line 19
    if-gt p2, v2, :cond_1

    .line 20
    .line 21
    move v2, v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v2, v1

    .line 24
    :goto_1
    if-eqz v2, :cond_5

    .line 25
    .line 26
    sub-int v2, p2, p1

    .line 27
    .line 28
    if-ltz v2, :cond_2

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    move v0, v1

    .line 32
    :goto_2
    if-eqz v0, :cond_4

    .line 33
    .line 34
    if-nez p1, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0}, Laf/g;->l()[B

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    array-length v0, v0

    .line 41
    if-ne p2, v0, :cond_3

    .line 42
    .line 43
    move-object v0, p0

    .line 44
    goto :goto_3

    .line 45
    :cond_3
    new-instance v0, Laf/g;

    .line 46
    .line 47
    invoke-virtual {p0}, Laf/g;->l()[B

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v1, p1, p2}, Lyc/g;->k([BII)[B

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {v0, p1}, Laf/g;-><init>([B)V

    .line 56
    .line 57
    .line 58
    :goto_3
    return-object v0

    .line 59
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    const-string p2, "endIndex < beginIndex"

    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string p2, "endIndex > length("

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Laf/g;->l()[B

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    array-length p2, p2

    .line 86
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const/16 p2, 0x29

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p2

    .line 108
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 109
    .line 110
    const-string p2, "beginIndex < 0"

    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p1
.end method

.method public G()Laf/g;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Laf/g;->l()[B

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    array-length v1, v1

    .line 7
    if-ge v0, v1, :cond_5

    .line 8
    .line 9
    invoke-virtual {p0}, Laf/g;->l()[B

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    aget-byte v1, v1, v0

    .line 14
    .line 15
    const/16 v2, 0x41

    .line 16
    .line 17
    if-lt v1, v2, :cond_4

    .line 18
    .line 19
    const/16 v3, 0x5a

    .line 20
    .line 21
    if-le v1, v3, :cond_0

    .line 22
    .line 23
    goto :goto_3

    .line 24
    :cond_0
    invoke-virtual {p0}, Laf/g;->l()[B

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    array-length v5, v4

    .line 29
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const-string v5, "copyOf(this, size)"

    .line 34
    .line 35
    invoke-static {v4, v5}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v5, v0, 0x1

    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x20

    .line 41
    .line 42
    int-to-byte v1, v1

    .line 43
    aput-byte v1, v4, v0

    .line 44
    .line 45
    :goto_1
    array-length v0, v4

    .line 46
    if-ge v5, v0, :cond_3

    .line 47
    .line 48
    aget-byte v0, v4, v5

    .line 49
    .line 50
    if-lt v0, v2, :cond_2

    .line 51
    .line 52
    if-le v0, v3, :cond_1

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_1
    add-int/lit8 v0, v0, 0x20

    .line 56
    .line 57
    int-to-byte v0, v0

    .line 58
    aput-byte v0, v4, v5

    .line 59
    .line 60
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    new-instance v0, Laf/g;

    .line 64
    .line 65
    invoke-direct {v0, v4}, Laf/g;-><init>([B)V

    .line 66
    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_5
    move-object v0, p0

    .line 73
    :goto_4
    return-object v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Laf/g;->o()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Laf/g;->t()[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Laf/e1;->c([B)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Laf/g;->B(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-object v0
.end method

.method public I(Laf/d;II)V
    .locals 1

    .line 1
    const-string v0, "buffer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, p2, p3}, Lbf/b;->d(Laf/g;Laf/d;II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public a()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Laf/g;->l()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Laf/a;->b([B[BILjava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public b(Laf/g;)I
    .locals 9

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Laf/g;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1}, Laf/g;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    move v4, v3

    .line 20
    :goto_0
    const/4 v5, -0x1

    .line 21
    const/4 v6, 0x1

    .line 22
    if-ge v4, v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, v4}, Laf/g;->j(I)B

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    and-int/lit16 v7, v7, 0xff

    .line 29
    .line 30
    invoke-virtual {p1, v4}, Laf/g;->j(I)B

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    and-int/lit16 v8, v8, 0xff

    .line 35
    .line 36
    if-ne v7, v8, :cond_0

    .line 37
    .line 38
    add-int/lit8 v4, v4, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    if-ge v7, v8, :cond_3

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    if-ne v0, v1, :cond_2

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    if-ge v0, v1, :cond_3

    .line 48
    .line 49
    :goto_1
    move v3, v5

    .line 50
    goto :goto_2

    .line 51
    :cond_3
    move v3, v6

    .line 52
    :goto_2
    return v3
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Laf/g;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Laf/g;->b(Laf/g;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    instance-of v1, p1, Laf/g;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    check-cast p1, Laf/g;

    .line 11
    .line 12
    invoke-virtual {p1}, Laf/g;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0}, Laf/g;->l()[B

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    array-length v3, v3

    .line 21
    if-ne v1, v3, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Laf/g;->l()[B

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p0}, Laf/g;->l()[B

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    array-length v3, v3

    .line 32
    invoke-virtual {p1, v2, v1, v2, v3}, Laf/g;->z(I[BII)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v0, v2

    .line 40
    :goto_0
    return v0
.end method

.method public f(Ljava/lang/String;)Laf/g;
    .locals 3

    .line 1
    const-string v0, "algorithm"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Laf/g;->a:[B

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0}, Laf/g;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {p1, v0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance v0, Laf/g;

    .line 25
    .line 26
    const-string v1, "digestBytes"

    .line 27
    .line 28
    invoke-static {p1, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p1}, Laf/g;-><init>([B)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Laf/g;->m()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Laf/g;->l()[B

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0, v0}, Laf/g;->A(I)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return v0
.end method

.method public final i(Laf/g;)Z
    .locals 3

    .line 1
    const-string v0, "suffix"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Laf/g;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1}, Laf/g;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p1}, Laf/g;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {p0, v0, p1, v1, v2}, Laf/g;->y(ILaf/g;II)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public final j(I)B
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Laf/g;->u(I)B

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final l()[B
    .locals 1

    .line 1
    iget-object v0, p0, Laf/g;->a:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()I
    .locals 1

    .line 1
    iget v0, p0, Laf/g;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public n()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Laf/g;->l()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    return v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Laf/g;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 9

    .line 1
    invoke-virtual {p0}, Laf/g;->l()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    mul-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    new-array v0, v0, [C

    .line 9
    .line 10
    invoke-virtual {p0}, Laf/g;->l()[B

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    array-length v2, v1

    .line 15
    const/4 v3, 0x0

    .line 16
    move v4, v3

    .line 17
    :goto_0
    if-ge v3, v2, :cond_0

    .line 18
    .line 19
    aget-byte v5, v1, v3

    .line 20
    .line 21
    add-int/lit8 v6, v4, 0x1

    .line 22
    .line 23
    invoke-static {}, Lbf/b;->f()[C

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    shr-int/lit8 v8, v5, 0x4

    .line 28
    .line 29
    and-int/lit8 v8, v8, 0xf

    .line 30
    .line 31
    aget-char v7, v7, v8

    .line 32
    .line 33
    aput-char v7, v0, v4

    .line 34
    .line 35
    add-int/lit8 v4, v6, 0x1

    .line 36
    .line 37
    invoke-static {}, Lbf/b;->f()[C

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    and-int/lit8 v5, v5, 0xf

    .line 42
    .line 43
    aget-char v5, v7, v5

    .line 44
    .line 45
    aput-char v5, v0, v6

    .line 46
    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-static {v0}, Lrd/n;->r([C)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    return-object v0
.end method

.method public final q(Laf/g;I)I
    .locals 1

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Laf/g;->t()[B

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1, p2}, Laf/g;->r([BI)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public r([BI)I
    .locals 4

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Laf/g;->l()[B

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v0, v0

    .line 11
    array-length v1, p1

    .line 12
    sub-int/2addr v0, v1

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-gt p2, v0, :cond_1

    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0}, Laf/g;->l()[B

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    array-length v3, p1

    .line 25
    invoke-static {v2, p2, p1, v1, v3}, Laf/b;->a([BI[BII)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    if-eq p2, v0, :cond_1

    .line 33
    .line 34
    add-int/lit8 p2, p2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 p2, -0x1

    .line 38
    :goto_1
    return p2
.end method

.method public final size()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Laf/g;->n()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public t()[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Laf/g;->l()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 20

    .line 1
    invoke-virtual/range {p0 .. p0}, Laf/g;->l()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    move v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v2

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const-string v0, "[size=0]"

    .line 16
    .line 17
    :goto_1
    move-object/from16 v4, p0

    .line 18
    .line 19
    goto/16 :goto_5

    .line 20
    .line 21
    :cond_1
    invoke-virtual/range {p0 .. p0}, Laf/g;->l()[B

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/16 v3, 0x40

    .line 26
    .line 27
    invoke-static {v0, v3}, Lbf/b;->a([BI)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v4, -0x1

    .line 32
    const-string v5, "\u2026]"

    .line 33
    .line 34
    const-string v6, "[size="

    .line 35
    .line 36
    const/16 v7, 0x5d

    .line 37
    .line 38
    if-ne v0, v4, :cond_8

    .line 39
    .line 40
    invoke-virtual/range {p0 .. p0}, Laf/g;->l()[B

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    array-length v0, v0

    .line 45
    if-gt v0, v3, :cond_2

    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v1, "[hex="

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual/range {p0 .. p0}, Laf/g;->p()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual/range {p0 .. p0}, Laf/g;->l()[B

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    array-length v4, v4

    .line 85
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v4, " hex="

    .line 89
    .line 90
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    move-object/from16 v4, p0

    .line 94
    .line 95
    invoke-static {v4, v3}, Laf/b;->d(Laf/g;I)I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    invoke-virtual/range {p0 .. p0}, Laf/g;->l()[B

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    array-length v6, v6

    .line 104
    if-gt v3, v6, :cond_3

    .line 105
    .line 106
    move v6, v1

    .line 107
    goto :goto_2

    .line 108
    :cond_3
    move v6, v2

    .line 109
    :goto_2
    if-eqz v6, :cond_7

    .line 110
    .line 111
    add-int/lit8 v6, v3, 0x0

    .line 112
    .line 113
    if-ltz v6, :cond_4

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_4
    move v1, v2

    .line 117
    :goto_3
    if-eqz v1, :cond_6

    .line 118
    .line 119
    invoke-virtual/range {p0 .. p0}, Laf/g;->l()[B

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    array-length v1, v1

    .line 124
    if-ne v3, v1, :cond_5

    .line 125
    .line 126
    move-object v1, v4

    .line 127
    goto :goto_4

    .line 128
    :cond_5
    new-instance v1, Laf/g;

    .line 129
    .line 130
    invoke-virtual/range {p0 .. p0}, Laf/g;->l()[B

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    invoke-static {v6, v2, v3}, Lyc/g;->k([BII)[B

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-direct {v1, v2}, Laf/g;-><init>([B)V

    .line 139
    .line 140
    .line 141
    :goto_4
    invoke-virtual {v1}, Laf/g;->p()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    goto/16 :goto_5

    .line 156
    .line 157
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 158
    .line 159
    const-string v1, "endIndex < beginIndex"

    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw v0

    .line 169
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    const-string v1, "endIndex > length("

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual/range {p0 .. p0}, Laf/g;->l()[B

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    array-length v1, v1

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const/16 v1, 0x29

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw v1

    .line 206
    :cond_8
    move-object/from16 v4, p0

    .line 207
    .line 208
    invoke-virtual/range {p0 .. p0}, Laf/g;->H()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v8

    .line 216
    const-string v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 217
    .line 218
    invoke-static {v8, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    const-string v9, "\\"

    .line 222
    .line 223
    const-string v10, "\\\\"

    .line 224
    .line 225
    const/4 v11, 0x0

    .line 226
    const/4 v12, 0x4

    .line 227
    const/4 v13, 0x0

    .line 228
    invoke-static/range {v8 .. v13}, Lrd/n;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v14

    .line 232
    const-string v15, "\n"

    .line 233
    .line 234
    const-string v16, "\\n"

    .line 235
    .line 236
    const/16 v17, 0x0

    .line 237
    .line 238
    const/16 v18, 0x4

    .line 239
    .line 240
    const/16 v19, 0x0

    .line 241
    .line 242
    invoke-static/range {v14 .. v19}, Lrd/n;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v8

    .line 246
    const-string v9, "\r"

    .line 247
    .line 248
    const-string v10, "\\r"

    .line 249
    .line 250
    invoke-static/range {v8 .. v13}, Lrd/n;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    if-ge v0, v1, :cond_9

    .line 259
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual/range {p0 .. p0}, Laf/g;->l()[B

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    array-length v1, v1

    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    const-string v1, " text="

    .line 277
    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    goto :goto_5

    .line 292
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .line 296
    .line 297
    const-string v1, "[text="

    .line 298
    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    :goto_5
    return-object v0
.end method

.method public u(I)B
    .locals 1

    .line 1
    invoke-virtual {p0}, Laf/g;->l()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    aget-byte p1, v0, p1

    .line 6
    .line 7
    return p1
.end method

.method public final v(Laf/g;I)I
    .locals 1

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Laf/g;->t()[B

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1, p2}, Laf/g;->w([BI)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public w([BI)I
    .locals 3

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p2}, Laf/b;->d(Laf/g;I)I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    invoke-virtual {p0}, Laf/g;->l()[B

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    array-length v0, v0

    .line 15
    array-length v1, p1

    .line 16
    sub-int/2addr v0, v1

    .line 17
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    :goto_0
    const/4 v0, -0x1

    .line 22
    if-ge v0, p2, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Laf/g;->l()[B

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    array-length v2, p1

    .line 30
    invoke-static {v0, p2, p1, v1, v2}, Laf/b;->a([BI[BII)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move p2, v0

    .line 41
    :goto_1
    return p2
.end method

.method public y(ILaf/g;II)Z
    .locals 1

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Laf/g;->l()[B

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p2, p3, v0, p1, p4}, Laf/g;->z(I[BII)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public z(I[BII)Z
    .locals 1

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-ltz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Laf/g;->l()[B

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    array-length v0, v0

    .line 13
    sub-int/2addr v0, p4

    .line 14
    if-gt p1, v0, :cond_0

    .line 15
    .line 16
    if-ltz p3, :cond_0

    .line 17
    .line 18
    array-length v0, p2

    .line 19
    sub-int/2addr v0, p4

    .line 20
    if-gt p3, v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Laf/g;->l()[B

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0, p1, p2, p3, p4}, Laf/b;->a([BI[BII)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    :goto_0
    return p1
.end method
