.class public final Lne/s$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lne/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lne/s$b;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lne/s$b;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lne/s$b;->d(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic b(Lne/s$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lne/s$b;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c(Lne/s$b;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lne/s$b;->f([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final d(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    move v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v2

    .line 12
    :goto_0
    if-eqz v0, :cond_4

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    move v3, v2

    .line 19
    :goto_1
    if-ge v3, v0, :cond_3

    .line 20
    .line 21
    add-int/lit8 v4, v3, 0x1

    .line 22
    .line 23
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const/16 v6, 0x21

    .line 28
    .line 29
    if-gt v6, v5, :cond_1

    .line 30
    .line 31
    const/16 v6, 0x7f

    .line 32
    .line 33
    if-ge v5, v6, :cond_1

    .line 34
    .line 35
    move v6, v1

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    move v6, v2

    .line 38
    :goto_2
    if-eqz v6, :cond_2

    .line 39
    .line 40
    move v3, v4

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string v0, "Unexpected char %#04x at %d in header name: %s"

    .line 55
    .line 56
    invoke-static {v0, p1}, Loe/d;->s(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :cond_3
    return-void

    .line 71
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 72
    .line 73
    const-string v0, "name is empty"

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1
.end method

.method private final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, v0, :cond_5

    .line 8
    .line 9
    add-int/lit8 v3, v2, 0x1

    .line 10
    .line 11
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    const/16 v5, 0x9

    .line 16
    .line 17
    const/4 v6, 0x1

    .line 18
    if-eq v4, v5, :cond_2

    .line 19
    .line 20
    const/16 v5, 0x20

    .line 21
    .line 22
    if-gt v5, v4, :cond_0

    .line 23
    .line 24
    const/16 v5, 0x7f

    .line 25
    .line 26
    if-ge v4, v5, :cond_0

    .line 27
    .line 28
    move v5, v6

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    move v5, v1

    .line 31
    :goto_1
    if-eqz v5, :cond_1

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_1
    move v6, v1

    .line 35
    :cond_2
    :goto_2
    if-nez v6, :cond_4

    .line 36
    .line 37
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    filled-new-array {v0, v1, p2}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "Unexpected char %#04x at %d in %s value"

    .line 50
    .line 51
    invoke-static {v1, v0}, Loe/d;->s(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {p2}, Loe/d;->F(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_3

    .line 60
    .line 61
    const-string p1, ""

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_3
    const-string p2, ": "

    .line 65
    .line 66
    invoke-static {p2, p1}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    :goto_3
    invoke-static {v0, p1}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p2

    .line 84
    :cond_4
    move v2, v3

    .line 85
    goto :goto_0

    .line 86
    :cond_5
    return-void
.end method

.method private final f([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    add-int/lit8 v0, v0, -0x2

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, -0x2

    .line 6
    invoke-static {v0, v1, v2}, Ldd/c;->c(III)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-gt v1, v0, :cond_2

    .line 11
    .line 12
    :goto_0
    add-int/lit8 v2, v0, -0x2

    .line 13
    .line 14
    aget-object v3, p1, v0

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-static {p2, v3, v4}, Lrd/n;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    add-int/2addr v0, v4

    .line 24
    aget-object p1, p1, v0

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_0
    if-ne v0, v1, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v0, v2

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 33
    return-object p1
.end method


# virtual methods
.method public final varargs g([Ljava/lang/String;)Lne/s;
    .locals 8

    .line 1
    const-string v0, "namesAndValues"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x2

    .line 8
    rem-int/2addr v0, v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    move v0, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v3

    .line 16
    :goto_0
    if-eqz v0, :cond_6

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, [Ljava/lang/String;

    .line 23
    .line 24
    array-length v0, p1

    .line 25
    move v4, v3

    .line 26
    :goto_1
    if-ge v4, v0, :cond_3

    .line 27
    .line 28
    add-int/lit8 v5, v4, 0x1

    .line 29
    .line 30
    aget-object v6, p1, v4

    .line 31
    .line 32
    if-eqz v6, :cond_1

    .line 33
    .line 34
    move v7, v2

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    move v7, v3

    .line 37
    :goto_2
    if-eqz v7, :cond_2

    .line 38
    .line 39
    invoke-static {v6}, Lrd/n;->P0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    aput-object v6, p1, v4

    .line 48
    .line 49
    move v4, v5

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    const-string v0, "Headers cannot be null"

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_3
    array-length v0, p1

    .line 64
    add-int/lit8 v0, v0, -0x1

    .line 65
    .line 66
    invoke-static {v3, v0, v1}, Ldd/c;->c(III)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-ltz v0, :cond_5

    .line 71
    .line 72
    :goto_3
    add-int/lit8 v1, v3, 0x2

    .line 73
    .line 74
    aget-object v2, p1, v3

    .line 75
    .line 76
    add-int/lit8 v4, v3, 0x1

    .line 77
    .line 78
    aget-object v4, p1, v4

    .line 79
    .line 80
    invoke-direct {p0, v2}, Lne/s$b;->d(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, v4, v2}, Lne/s$b;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    if-ne v3, v0, :cond_4

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_4
    move v3, v1

    .line 90
    goto :goto_3

    .line 91
    :cond_5
    :goto_4
    new-instance v0, Lne/s;

    .line 92
    .line 93
    const/4 v1, 0x0

    .line 94
    invoke-direct {v0, p1, v1}, Lne/s;-><init>([Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 95
    .line 96
    .line 97
    return-object v0

    .line 98
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 99
    .line 100
    const-string v0, "Expected alternating header names and values"

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p1
.end method
