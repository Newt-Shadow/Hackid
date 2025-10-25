.class public abstract Lke/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Lke/t;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lke/t;

    .line 5
    .line 6
    invoke-direct {v0}, Lke/t;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lke/a;->b:Lke/t;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lke/a;->d:Ljava/lang/StringBuilder;

    .line 17
    .line 18
    return-void
.end method

.method private final I()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lke/a;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lke/a;->c:Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic L(Lke/a;ZILjava/lang/Object;)Z
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    const/4 p3, 0x1

    .line 4
    and-int/2addr p2, p3

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    move p1, p3

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lke/a;->K(Z)Z

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
    const-string p1, "Super calls with default arguments not supported in this target, function: tryConsumeNull"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method private final N()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lke/a;->A()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lke/a;->a:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v1, v2

    .line 9
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x22

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    :goto_0
    return v2
.end method

.method private final a(I)I
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lke/a;->E(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    if-eq p1, v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0}, Lke/a;->A()Ljava/lang/CharSequence;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    add-int/lit8 v1, p1, 0x1

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/16 v0, 0x75

    .line 19
    .line 20
    if-ne p1, v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lke/a;->A()Ljava/lang/CharSequence;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p0, p1, v1}, Lke/a;->c(Ljava/lang/CharSequence;I)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    :cond_0
    invoke-static {p1}, Lke/b;->b(I)C

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lke/a;->d:Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    return v1

    .line 43
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v1, "Invalid escaped char \'"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const/16 p1, 0x27

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    const/4 v3, 0x0

    .line 66
    const/4 v4, 0x0

    .line 67
    const/4 v5, 0x6

    .line 68
    const/4 v6, 0x0

    .line 69
    move-object v1, p0

    .line 70
    invoke-static/range {v1 .. v6}, Lke/a;->v(Lke/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 71
    .line 72
    .line 73
    new-instance p1, Lxc/c;

    .line 74
    .line 75
    invoke-direct {p1}, Lxc/c;-><init>()V

    .line 76
    .line 77
    .line 78
    throw p1

    .line 79
    :cond_2
    const-string v1, "Expected escape sequence to continue, got EOF"

    .line 80
    .line 81
    const/4 v2, 0x0

    .line 82
    const/4 v3, 0x0

    .line 83
    const/4 v4, 0x6

    .line 84
    const/4 v5, 0x0

    .line 85
    move-object v0, p0

    .line 86
    invoke-static/range {v0 .. v5}, Lke/a;->v(Lke/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 87
    .line 88
    .line 89
    new-instance p1, Lxc/c;

    .line 90
    .line 91
    invoke-direct {p1}, Lxc/c;-><init>()V

    .line 92
    .line 93
    .line 94
    throw p1
.end method

.method private final b(II)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lke/a;->d(II)V

    .line 2
    .line 3
    .line 4
    add-int/lit8 p2, p2, 0x1

    .line 5
    .line 6
    invoke-direct {p0, p2}, Lke/a;->a(I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method private final c(Ljava/lang/CharSequence;I)I
    .locals 6

    .line 1
    add-int/lit8 v0, p2, 0x4

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lt v0, v1, :cond_1

    .line 8
    .line 9
    iput p2, p0, Lke/a;->a:I

    .line 10
    .line 11
    invoke-virtual {p0}, Lke/a;->s()V

    .line 12
    .line 13
    .line 14
    iget p2, p0, Lke/a;->a:I

    .line 15
    .line 16
    add-int/lit8 p2, p2, 0x4

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-ge p2, v0, :cond_0

    .line 23
    .line 24
    iget p2, p0, Lke/a;->a:I

    .line 25
    .line 26
    invoke-direct {p0, p1, p2}, Lke/a;->c(Ljava/lang/CharSequence;I)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    :cond_0
    const-string v1, "Unexpected EOF during unicode escape"

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v4, 0x6

    .line 36
    const/4 v5, 0x0

    .line 37
    move-object v0, p0

    .line 38
    invoke-static/range {v0 .. v5}, Lke/a;->v(Lke/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 39
    .line 40
    .line 41
    new-instance p1, Lxc/c;

    .line 42
    .line 43
    invoke-direct {p1}, Lxc/c;-><init>()V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :cond_1
    iget-object v1, p0, Lke/a;->d:Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p0, p1, p2}, Lke/a;->z(Ljava/lang/CharSequence;I)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    shl-int/lit8 v2, v2, 0xc

    .line 54
    .line 55
    add-int/lit8 v3, p2, 0x1

    .line 56
    .line 57
    invoke-direct {p0, p1, v3}, Lke/a;->z(Ljava/lang/CharSequence;I)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    shl-int/lit8 v3, v3, 0x8

    .line 62
    .line 63
    add-int/2addr v2, v3

    .line 64
    add-int/lit8 v3, p2, 0x2

    .line 65
    .line 66
    invoke-direct {p0, p1, v3}, Lke/a;->z(Ljava/lang/CharSequence;I)I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    shl-int/lit8 v3, v3, 0x4

    .line 71
    .line 72
    add-int/2addr v2, v3

    .line 73
    add-int/lit8 p2, p2, 0x3

    .line 74
    .line 75
    invoke-direct {p0, p1, p2}, Lke/a;->z(Ljava/lang/CharSequence;I)I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    add-int/2addr v2, p1

    .line 80
    int-to-char p1, v2

    .line 81
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    return v0
.end method

.method private final f(I)Z
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lke/a;->E(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Lke/a;->A()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ge p1, v0, :cond_2

    .line 14
    .line 15
    const/4 v0, -0x1

    .line 16
    if-eq p1, v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Lke/a;->A()Ljava/lang/CharSequence;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    add-int/lit8 v1, p1, 0x1

    .line 23
    .line 24
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    or-int/lit8 p1, p1, 0x20

    .line 29
    .line 30
    const/16 v0, 0x66

    .line 31
    .line 32
    if-eq p1, v0, :cond_1

    .line 33
    .line 34
    const/16 v0, 0x74

    .line 35
    .line 36
    if-ne p1, v0, :cond_0

    .line 37
    .line 38
    const-string p1, "rue"

    .line 39
    .line 40
    invoke-direct {p0, p1, v1}, Lke/a;->h(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v0, "Expected valid boolean literal prefix, but had \'"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lke/a;->p()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const/16 v0, 0x27

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const/4 v3, 0x0

    .line 72
    const/4 v4, 0x0

    .line 73
    const/4 v5, 0x6

    .line 74
    const/4 v6, 0x0

    .line 75
    move-object v1, p0

    .line 76
    invoke-static/range {v1 .. v6}, Lke/a;->v(Lke/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 77
    .line 78
    .line 79
    new-instance p1, Lxc/c;

    .line 80
    .line 81
    invoke-direct {p1}, Lxc/c;-><init>()V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :cond_1
    const-string p1, "alse"

    .line 86
    .line 87
    invoke-direct {p0, p1, v1}, Lke/a;->h(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    const/4 p1, 0x0

    .line 91
    :goto_0
    return p1

    .line 92
    :cond_2
    const-string v1, "EOF"

    .line 93
    .line 94
    const/4 v2, 0x0

    .line 95
    const/4 v3, 0x0

    .line 96
    const/4 v4, 0x6

    .line 97
    const/4 v5, 0x0

    .line 98
    move-object v0, p0

    .line 99
    invoke-static/range {v0 .. v5}, Lke/a;->v(Lke/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 100
    .line 101
    .line 102
    new-instance p1, Lxc/c;

    .line 103
    .line 104
    invoke-direct {p1}, Lxc/c;-><init>()V

    .line 105
    .line 106
    .line 107
    throw p1
.end method

.method private final h(Ljava/lang/String;I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lke/a;->A()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sub-int/2addr v0, p2

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-lt v0, v1, :cond_2

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-ge v1, v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {p0}, Lke/a;->A()Ljava/lang/CharSequence;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    add-int v4, p2, v1

    .line 32
    .line 33
    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    or-int/lit8 v3, v3, 0x20

    .line 38
    .line 39
    if-ne v2, v3, :cond_0

    .line 40
    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string p2, "Expected valid boolean literal prefix, but had \'"

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lke/a;->p()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const/16 p2, 0x27

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const/4 v2, 0x0

    .line 71
    const/4 v3, 0x0

    .line 72
    const/4 v4, 0x6

    .line 73
    const/4 v5, 0x0

    .line 74
    move-object v0, p0

    .line 75
    invoke-static/range {v0 .. v5}, Lke/a;->v(Lke/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 76
    .line 77
    .line 78
    new-instance p1, Lxc/c;

    .line 79
    .line 80
    invoke-direct {p1}, Lxc/c;-><init>()V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    add-int/2addr p2, p1

    .line 89
    iput p2, p0, Lke/a;->a:I

    .line 90
    .line 91
    return-void

    .line 92
    :cond_2
    const-string v1, "Unexpected end of boolean literal"

    .line 93
    .line 94
    const/4 v2, 0x0

    .line 95
    const/4 v3, 0x0

    .line 96
    const/4 v4, 0x6

    .line 97
    const/4 v5, 0x0

    .line 98
    move-object v0, p0

    .line 99
    invoke-static/range {v0 .. v5}, Lke/a;->v(Lke/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 100
    .line 101
    .line 102
    new-instance p1, Lxc/c;

    .line 103
    .line 104
    invoke-direct {p1}, Lxc/c;-><init>()V

    .line 105
    .line 106
    .line 107
    throw p1
.end method

.method private static final m(JZ)D
    .locals 3

    .line 1
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    long-to-double p0, p0

    .line 6
    neg-double p0, p0

    .line 7
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v2, 0x1

    .line 13
    if-ne p2, v2, :cond_1

    .line 14
    .line 15
    long-to-double p0, p0

    .line 16
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    .line 17
    .line 18
    .line 19
    move-result-wide p0

    .line 20
    :goto_0
    return-wide p0

    .line 21
    :cond_1
    new-instance p0, Lxc/i;

    .line 22
    .line 23
    invoke-direct {p0}, Lxc/i;-><init>()V

    .line 24
    .line 25
    .line 26
    throw p0
.end method

.method private final r(II)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lke/a;->d(II)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lke/a;->d:Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string p2, "toString(...)"

    .line 11
    .line 12
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lke/a;->d:Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 19
    .line 20
    .line 21
    return-object p1
.end method

.method public static synthetic v(Lke/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;
    .locals 0

    .line 1
    if-nez p5, :cond_2

    .line 2
    .line 3
    and-int/lit8 p5, p4, 0x2

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    iget p2, p0, Lke/a;->a:I

    .line 8
    .line 9
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 10
    .line 11
    if-eqz p4, :cond_1

    .line 12
    .line 13
    const-string p3, ""

    .line 14
    .line 15
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lke/a;->u(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Void;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 21
    .line 22
    const-string p1, "Super calls with default arguments not supported in this target, function: fail"

    .line 23
    .line 24
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0
.end method

.method public static synthetic x(Lke/a;BZILjava/lang/Object;)Ljava/lang/Void;
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
    const/4 p2, 0x1

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lke/a;->w(BZ)Ljava/lang/Void;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: fail"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method private final z(Ljava/lang/CharSequence;I)I
    .locals 6

    .line 1
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x1

    .line 6
    const/4 v0, 0x0

    .line 7
    const/16 v1, 0x30

    .line 8
    .line 9
    if-gt v1, p1, :cond_0

    .line 10
    .line 11
    const/16 v2, 0x3a

    .line 12
    .line 13
    if-ge p1, v2, :cond_0

    .line 14
    .line 15
    move v2, p2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v2, v0

    .line 18
    :goto_0
    if-eqz v2, :cond_1

    .line 19
    .line 20
    sub-int/2addr p1, v1

    .line 21
    goto :goto_4

    .line 22
    :cond_1
    const/16 v1, 0x61

    .line 23
    .line 24
    if-gt v1, p1, :cond_2

    .line 25
    .line 26
    const/16 v2, 0x67

    .line 27
    .line 28
    if-ge p1, v2, :cond_2

    .line 29
    .line 30
    move v2, p2

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    move v2, v0

    .line 33
    :goto_1
    if-eqz v2, :cond_3

    .line 34
    .line 35
    :goto_2
    sub-int/2addr p1, v1

    .line 36
    add-int/lit8 p1, p1, 0xa

    .line 37
    .line 38
    goto :goto_4

    .line 39
    :cond_3
    const/16 v1, 0x41

    .line 40
    .line 41
    if-gt v1, p1, :cond_4

    .line 42
    .line 43
    const/16 v2, 0x47

    .line 44
    .line 45
    if-ge p1, v2, :cond_4

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_4
    move p2, v0

    .line 49
    :goto_3
    if-eqz p2, :cond_5

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :goto_4
    return p1

    .line 53
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v0, "Invalid toHexChar char \'"

    .line 59
    .line 60
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p1, "\' in unicode escape"

    .line 67
    .line 68
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const/4 v2, 0x0

    .line 76
    const/4 v3, 0x0

    .line 77
    const/4 v4, 0x6

    .line 78
    const/4 v5, 0x0

    .line 79
    move-object v0, p0

    .line 80
    invoke-static/range {v0 .. v5}, Lke/a;->v(Lke/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 81
    .line 82
    .line 83
    new-instance p1, Lxc/c;

    .line 84
    .line 85
    invoke-direct {p1}, Lxc/c;-><init>()V

    .line 86
    .line 87
    .line 88
    throw p1
.end method


# virtual methods
.method protected abstract A()Ljava/lang/CharSequence;
.end method

.method protected final B(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x2c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public C()B
    .locals 5

    .line 1
    invoke-virtual {p0}, Lke/a;->A()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lke/a;->a:I

    .line 6
    .line 7
    :goto_0
    invoke-virtual {p0, v1}, Lke/a;->E(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, -0x1

    .line 12
    const/16 v3, 0xa

    .line 13
    .line 14
    if-eq v1, v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/16 v4, 0x9

    .line 21
    .line 22
    if-eq v2, v4, :cond_0

    .line 23
    .line 24
    if-eq v2, v3, :cond_0

    .line 25
    .line 26
    const/16 v3, 0xd

    .line 27
    .line 28
    if-eq v2, v3, :cond_0

    .line 29
    .line 30
    const/16 v3, 0x20

    .line 31
    .line 32
    if-eq v2, v3, :cond_0

    .line 33
    .line 34
    iput v1, p0, Lke/a;->a:I

    .line 35
    .line 36
    invoke-static {v2}, Lke/b;->a(C)B

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    return v0

    .line 41
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iput v1, p0, Lke/a;->a:I

    .line 45
    .line 46
    return v3
.end method

.method public final D(Z)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lke/a;->C()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    if-eq v0, v2, :cond_0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    invoke-virtual {p0}, Lke/a;->p()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    if-eq v0, v2, :cond_2

    .line 20
    .line 21
    return-object v1

    .line 22
    :cond_2
    invoke-virtual {p0}, Lke/a;->n()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_0
    iput-object p1, p0, Lke/a;->c:Ljava/lang/String;

    .line 27
    .line 28
    return-object p1
.end method

.method public abstract E(I)I
.end method

.method public final F(Z)V
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lke/a;->C()B

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x6

    .line 11
    const/16 v3, 0x8

    .line 12
    .line 13
    if-eq v1, v3, :cond_0

    .line 14
    .line 15
    if-eq v1, v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lke/a;->p()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lke/a;->C()B

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v4, 0x1

    .line 26
    if-ne v1, v4, :cond_2

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lke/a;->p()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0}, Lke/a;->i()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    if-eq v1, v3, :cond_9

    .line 39
    .line 40
    if-ne v1, v2, :cond_3

    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :cond_3
    const/16 v4, 0x9

    .line 45
    .line 46
    if-ne v1, v4, :cond_5

    .line 47
    .line 48
    invoke-static {v0}, Lyc/m;->Z(Ljava/util/List;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Ljava/lang/Number;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Number;->byteValue()B

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-ne v1, v3, :cond_4

    .line 59
    .line 60
    invoke-static {v0}, Lyc/m;->D(Ljava/util/List;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_4
    iget p1, p0, Lke/a;->a:I

    .line 65
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v1, "found ] instead of } at path: "

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lke/a;->b:Lke/t;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p0}, Lke/a;->A()Ljava/lang/CharSequence;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-static {p1, v0, v1}, Lke/q;->d(ILjava/lang/String;Ljava/lang/CharSequence;)Lke/m;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    throw p1

    .line 94
    :cond_5
    const/4 v4, 0x7

    .line 95
    if-ne v1, v4, :cond_7

    .line 96
    .line 97
    invoke-static {v0}, Lyc/m;->Z(Ljava/util/List;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Ljava/lang/Number;

    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/Number;->byteValue()B

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-ne v1, v2, :cond_6

    .line 108
    .line 109
    invoke-static {v0}, Lyc/m;->D(Ljava/util/List;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_6
    iget p1, p0, Lke/a;->a:I

    .line 114
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string v1, "found } instead of ] at path: "

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget-object v1, p0, Lke/a;->b:Lke/t;

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {p0}, Lke/a;->A()Ljava/lang/CharSequence;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-static {p1, v0, v1}, Lke/q;->d(ILjava/lang/String;Ljava/lang/CharSequence;)Lke/m;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    throw p1

    .line 143
    :cond_7
    const/16 v4, 0xa

    .line 144
    .line 145
    if-eq v1, v4, :cond_8

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_8
    const-string v6, "Unexpected end of input due to malformed JSON during ignoring unknown keys"

    .line 149
    .line 150
    const/4 v7, 0x0

    .line 151
    const/4 v8, 0x0

    .line 152
    const/4 v9, 0x6

    .line 153
    const/4 v10, 0x0

    .line 154
    move-object v5, p0

    .line 155
    invoke-static/range {v5 .. v10}, Lke/a;->v(Lke/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 156
    .line 157
    .line 158
    new-instance p1, Lxc/c;

    .line 159
    .line 160
    invoke-direct {p1}, Lxc/c;-><init>()V

    .line 161
    .line 162
    .line 163
    throw p1

    .line 164
    :cond_9
    :goto_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    :goto_2
    invoke-virtual {p0}, Lke/a;->j()B

    .line 172
    .line 173
    .line 174
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-nez v1, :cond_0

    .line 179
    .line 180
    return-void
.end method

.method public abstract G()I
.end method

.method public H(II)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lke/a;->A()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final J()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lke/a;->G()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lke/a;->A()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-ge v0, v2, :cond_1

    .line 15
    .line 16
    const/4 v2, -0x1

    .line 17
    if-ne v0, v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/16 v1, 0x2c

    .line 25
    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    iget v0, p0, Lke/a;->a:I

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    add-int/2addr v0, v1

    .line 32
    iput v0, p0, Lke/a;->a:I

    .line 33
    .line 34
    return v1

    .line 35
    :cond_1
    :goto_0
    return v3
.end method

.method public final K(Z)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lke/a;->G()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lke/a;->E(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Lke/a;->A()Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    sub-int/2addr v1, v0

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x4

    .line 20
    if-lt v1, v3, :cond_5

    .line 21
    .line 22
    const/4 v4, -0x1

    .line 23
    if-ne v0, v4, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    move v4, v2

    .line 27
    :goto_0
    if-ge v4, v3, :cond_2

    .line 28
    .line 29
    const-string v5, "null"

    .line 30
    .line 31
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    invoke-virtual {p0}, Lke/a;->A()Ljava/lang/CharSequence;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    add-int v7, v0, v4

    .line 40
    .line 41
    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eq v5, v6, :cond_1

    .line 46
    .line 47
    return v2

    .line 48
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    if-le v1, v3, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0}, Lke/a;->A()Ljava/lang/CharSequence;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    add-int/lit8 v4, v0, 0x4

    .line 58
    .line 59
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-static {v1}, Lke/b;->a(C)B

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_3

    .line 68
    .line 69
    return v2

    .line 70
    :cond_3
    if-eqz p1, :cond_4

    .line 71
    .line 72
    add-int/2addr v0, v3

    .line 73
    iput v0, p0, Lke/a;->a:I

    .line 74
    .line 75
    :cond_4
    const/4 p1, 0x1

    .line 76
    return p1

    .line 77
    :cond_5
    :goto_1
    return v2
.end method

.method protected final M(C)V
    .locals 3

    .line 1
    iget v0, p0, Lke/a;->a:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x22

    .line 6
    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    add-int/lit8 v1, v0, -0x1

    .line 10
    .line 11
    :try_start_0
    iput v1, p0, Lke/a;->a:I

    .line 12
    .line 13
    invoke-virtual {p0}, Lke/a;->p()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    iput v0, p0, Lke/a;->a:I

    .line 18
    .line 19
    const-string v0, "null"

    .line 20
    .line 21
    invoke-static {v1, v0}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget p1, p0, Lke/a;->a:I

    .line 28
    .line 29
    add-int/lit8 p1, p1, -0x1

    .line 30
    .line 31
    const-string v0, "Use \'coerceInputValues = true\' in \'Json {}\' builder to coerce nulls if property has a default value."

    .line 32
    .line 33
    const-string v1, "Expected string literal but \'null\' literal was found"

    .line 34
    .line 35
    invoke-virtual {p0, v1, p1, v0}, Lke/a;->u(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Void;

    .line 36
    .line 37
    .line 38
    new-instance p1, Lxc/c;

    .line 39
    .line 40
    invoke-direct {p1}, Lxc/c;-><init>()V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    iput v0, p0, Lke/a;->a:I

    .line 46
    .line 47
    throw p1

    .line 48
    :cond_0
    invoke-static {p1}, Lke/b;->a(C)B

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    const/4 v0, 0x2

    .line 53
    const/4 v1, 0x0

    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-static {p0, p1, v2, v0, v1}, Lke/a;->x(Lke/a;BZILjava/lang/Object;)Ljava/lang/Void;

    .line 56
    .line 57
    .line 58
    new-instance p1, Lxc/c;

    .line 59
    .line 60
    invoke-direct {p1}, Lxc/c;-><init>()V

    .line 61
    .line 62
    .line 63
    throw p1
.end method

.method protected d(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lke/a;->d:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lke/a;->A()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1, p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public abstract e()Z
.end method

.method public final g()Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lke/a;->G()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lke/a;->A()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eq v0, v1, :cond_4

    .line 14
    .line 15
    invoke-virtual {p0}, Lke/a;->A()Ljava/lang/CharSequence;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/16 v2, 0x22

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    if-ne v1, v2, :cond_0

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    move v1, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    :goto_0
    invoke-direct {p0, v0}, Lke/a;->f(I)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    iget v1, p0, Lke/a;->a:I

    .line 40
    .line 41
    invoke-virtual {p0}, Lke/a;->A()Ljava/lang/CharSequence;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eq v1, v4, :cond_2

    .line 50
    .line 51
    invoke-virtual {p0}, Lke/a;->A()Ljava/lang/CharSequence;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget v4, p0, Lke/a;->a:I

    .line 56
    .line 57
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-ne v1, v2, :cond_1

    .line 62
    .line 63
    iget v1, p0, Lke/a;->a:I

    .line 64
    .line 65
    add-int/2addr v1, v3

    .line 66
    iput v1, p0, Lke/a;->a:I

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    const-string v3, "Expected closing quotation mark"

    .line 70
    .line 71
    const/4 v4, 0x0

    .line 72
    const/4 v5, 0x0

    .line 73
    const/4 v6, 0x6

    .line 74
    const/4 v7, 0x0

    .line 75
    move-object v2, p0

    .line 76
    invoke-static/range {v2 .. v7}, Lke/a;->v(Lke/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 77
    .line 78
    .line 79
    new-instance v0, Lxc/c;

    .line 80
    .line 81
    invoke-direct {v0}, Lxc/c;-><init>()V

    .line 82
    .line 83
    .line 84
    throw v0

    .line 85
    :cond_2
    const-string v2, "EOF"

    .line 86
    .line 87
    const/4 v3, 0x0

    .line 88
    const/4 v4, 0x0

    .line 89
    const/4 v5, 0x6

    .line 90
    const/4 v6, 0x0

    .line 91
    move-object v1, p0

    .line 92
    invoke-static/range {v1 .. v6}, Lke/a;->v(Lke/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 93
    .line 94
    .line 95
    new-instance v0, Lxc/c;

    .line 96
    .line 97
    invoke-direct {v0}, Lxc/c;-><init>()V

    .line 98
    .line 99
    .line 100
    throw v0

    .line 101
    :cond_3
    :goto_1
    return v0

    .line 102
    :cond_4
    const-string v2, "EOF"

    .line 103
    .line 104
    const/4 v3, 0x0

    .line 105
    const/4 v4, 0x0

    .line 106
    const/4 v5, 0x6

    .line 107
    const/4 v6, 0x0

    .line 108
    move-object v1, p0

    .line 109
    invoke-static/range {v1 .. v6}, Lke/a;->v(Lke/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 110
    .line 111
    .line 112
    new-instance v0, Lxc/c;

    .line 113
    .line 114
    invoke-direct {v0}, Lxc/c;-><init>()V

    .line 115
    .line 116
    .line 117
    throw v0
.end method

.method public abstract i()Ljava/lang/String;
.end method

.method public abstract j()B
.end method

.method public abstract k(C)V
.end method

.method public final l()J
    .locals 18

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lke/a;->G()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {v6, v0}, Lke/a;->E(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual/range {p0 .. p0}, Lke/a;->A()Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ge v0, v1, :cond_1c

    .line 20
    .line 21
    const/4 v1, -0x1

    .line 22
    if-eq v0, v1, :cond_1c

    .line 23
    .line 24
    invoke-virtual/range {p0 .. p0}, Lke/a;->A()Ljava/lang/CharSequence;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/16 v2, 0x22

    .line 33
    .line 34
    if-ne v1, v2, :cond_1

    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Lke/a;->A()Ljava/lang/CharSequence;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eq v0, v1, :cond_0

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-string v1, "EOF"

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    const/4 v3, 0x0

    .line 54
    const/4 v4, 0x6

    .line 55
    const/4 v5, 0x0

    .line 56
    move-object/from16 v0, p0

    .line 57
    .line 58
    invoke-static/range {v0 .. v5}, Lke/a;->v(Lke/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 59
    .line 60
    .line 61
    new-instance v0, Lxc/c;

    .line 62
    .line 63
    invoke-direct {v0}, Lxc/c;-><init>()V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :cond_1
    const/4 v1, 0x0

    .line 68
    :goto_0
    const-wide/16 v7, 0x0

    .line 69
    .line 70
    move v5, v0

    .line 71
    move-wide v11, v7

    .line 72
    move-wide v13, v11

    .line 73
    const/4 v9, 0x0

    .line 74
    const/4 v10, 0x0

    .line 75
    :goto_1
    const/4 v15, 0x0

    .line 76
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lke/a;->A()Ljava/lang/CharSequence;

    .line 77
    .line 78
    .line 79
    move-result-object v16

    .line 80
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eq v5, v3, :cond_f

    .line 85
    .line 86
    invoke-virtual/range {p0 .. p0}, Lke/a;->A()Ljava/lang/CharSequence;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    const/16 v4, 0x65

    .line 95
    .line 96
    if-eq v3, v4, :cond_2

    .line 97
    .line 98
    const/16 v4, 0x45

    .line 99
    .line 100
    if-ne v3, v4, :cond_4

    .line 101
    .line 102
    :cond_2
    if-nez v9, :cond_4

    .line 103
    .line 104
    if-eq v5, v0, :cond_3

    .line 105
    .line 106
    add-int/lit8 v5, v5, 0x1

    .line 107
    .line 108
    const/4 v9, 0x1

    .line 109
    :goto_3
    const/4 v15, 0x1

    .line 110
    goto :goto_2

    .line 111
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v1, "Unexpected symbol "

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v1, " in numeric literal"

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    const/4 v2, 0x0

    .line 134
    const/4 v3, 0x0

    .line 135
    const/4 v4, 0x6

    .line 136
    const/4 v5, 0x0

    .line 137
    move-object/from16 v0, p0

    .line 138
    .line 139
    invoke-static/range {v0 .. v5}, Lke/a;->v(Lke/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 140
    .line 141
    .line 142
    new-instance v0, Lxc/c;

    .line 143
    .line 144
    invoke-direct {v0}, Lxc/c;-><init>()V

    .line 145
    .line 146
    .line 147
    throw v0

    .line 148
    :cond_4
    const/16 v4, 0x2d

    .line 149
    .line 150
    if-ne v3, v4, :cond_6

    .line 151
    .line 152
    if-eqz v9, :cond_6

    .line 153
    .line 154
    if-eq v5, v0, :cond_5

    .line 155
    .line 156
    add-int/lit8 v5, v5, 0x1

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_5
    const-string v1, "Unexpected symbol \'-\' in numeric literal"

    .line 160
    .line 161
    const/4 v2, 0x0

    .line 162
    const/4 v3, 0x0

    .line 163
    const/4 v4, 0x6

    .line 164
    const/4 v5, 0x0

    .line 165
    move-object/from16 v0, p0

    .line 166
    .line 167
    invoke-static/range {v0 .. v5}, Lke/a;->v(Lke/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 168
    .line 169
    .line 170
    new-instance v0, Lxc/c;

    .line 171
    .line 172
    invoke-direct {v0}, Lxc/c;-><init>()V

    .line 173
    .line 174
    .line 175
    throw v0

    .line 176
    :cond_6
    const/16 v2, 0x2b

    .line 177
    .line 178
    if-ne v3, v2, :cond_8

    .line 179
    .line 180
    if-eqz v9, :cond_8

    .line 181
    .line 182
    if-eq v5, v0, :cond_7

    .line 183
    .line 184
    add-int/lit8 v5, v5, 0x1

    .line 185
    .line 186
    const/16 v2, 0x22

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_7
    const-string v1, "Unexpected symbol \'+\' in numeric literal"

    .line 190
    .line 191
    const/4 v2, 0x0

    .line 192
    const/4 v3, 0x0

    .line 193
    const/4 v4, 0x6

    .line 194
    const/4 v5, 0x0

    .line 195
    move-object/from16 v0, p0

    .line 196
    .line 197
    invoke-static/range {v0 .. v5}, Lke/a;->v(Lke/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 198
    .line 199
    .line 200
    new-instance v0, Lxc/c;

    .line 201
    .line 202
    invoke-direct {v0}, Lxc/c;-><init>()V

    .line 203
    .line 204
    .line 205
    throw v0

    .line 206
    :cond_8
    if-ne v3, v4, :cond_a

    .line 207
    .line 208
    if-ne v5, v0, :cond_9

    .line 209
    .line 210
    add-int/lit8 v5, v5, 0x1

    .line 211
    .line 212
    const/16 v2, 0x22

    .line 213
    .line 214
    const/4 v10, 0x1

    .line 215
    goto/16 :goto_2

    .line 216
    .line 217
    :cond_9
    const-string v1, "Unexpected symbol \'-\' in numeric literal"

    .line 218
    .line 219
    const/4 v2, 0x0

    .line 220
    const/4 v3, 0x0

    .line 221
    const/4 v4, 0x6

    .line 222
    const/4 v5, 0x0

    .line 223
    move-object/from16 v0, p0

    .line 224
    .line 225
    invoke-static/range {v0 .. v5}, Lke/a;->v(Lke/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 226
    .line 227
    .line 228
    new-instance v0, Lxc/c;

    .line 229
    .line 230
    invoke-direct {v0}, Lxc/c;-><init>()V

    .line 231
    .line 232
    .line 233
    throw v0

    .line 234
    :cond_a
    invoke-static {v3}, Lke/b;->a(C)B

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-nez v2, :cond_f

    .line 239
    .line 240
    add-int/lit8 v5, v5, 0x1

    .line 241
    .line 242
    add-int/lit8 v2, v3, -0x30

    .line 243
    .line 244
    const/16 v4, 0xa

    .line 245
    .line 246
    if-ltz v2, :cond_b

    .line 247
    .line 248
    if-ge v2, v4, :cond_b

    .line 249
    .line 250
    const/16 v17, 0x1

    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_b
    const/16 v17, 0x0

    .line 254
    .line 255
    :goto_4
    if-eqz v17, :cond_e

    .line 256
    .line 257
    if-eqz v9, :cond_c

    .line 258
    .line 259
    int-to-long v3, v4

    .line 260
    mul-long/2addr v13, v3

    .line 261
    int-to-long v2, v2

    .line 262
    add-long/2addr v13, v2

    .line 263
    goto :goto_5

    .line 264
    :cond_c
    int-to-long v3, v4

    .line 265
    mul-long/2addr v11, v3

    .line 266
    int-to-long v2, v2

    .line 267
    sub-long/2addr v11, v2

    .line 268
    cmp-long v2, v11, v7

    .line 269
    .line 270
    if-gtz v2, :cond_d

    .line 271
    .line 272
    :goto_5
    const/16 v2, 0x22

    .line 273
    .line 274
    goto/16 :goto_2

    .line 275
    .line 276
    :cond_d
    const-string v1, "Numeric value overflow"

    .line 277
    .line 278
    const/4 v2, 0x0

    .line 279
    const/4 v3, 0x0

    .line 280
    const/4 v4, 0x6

    .line 281
    const/4 v5, 0x0

    .line 282
    move-object/from16 v0, p0

    .line 283
    .line 284
    invoke-static/range {v0 .. v5}, Lke/a;->v(Lke/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 285
    .line 286
    .line 287
    new-instance v0, Lxc/c;

    .line 288
    .line 289
    invoke-direct {v0}, Lxc/c;-><init>()V

    .line 290
    .line 291
    .line 292
    throw v0

    .line 293
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .line 297
    .line 298
    const-string v1, "Unexpected symbol \'"

    .line 299
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string v1, "\' in numeric literal"

    .line 307
    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    const/4 v2, 0x0

    .line 316
    const/4 v3, 0x0

    .line 317
    const/4 v4, 0x6

    .line 318
    const/4 v5, 0x0

    .line 319
    move-object/from16 v0, p0

    .line 320
    .line 321
    invoke-static/range {v0 .. v5}, Lke/a;->v(Lke/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 322
    .line 323
    .line 324
    new-instance v0, Lxc/c;

    .line 325
    .line 326
    invoke-direct {v0}, Lxc/c;-><init>()V

    .line 327
    .line 328
    .line 329
    throw v0

    .line 330
    :cond_f
    if-eq v5, v0, :cond_10

    .line 331
    .line 332
    const/4 v2, 0x1

    .line 333
    goto :goto_6

    .line 334
    :cond_10
    const/4 v2, 0x0

    .line 335
    :goto_6
    if-eq v0, v5, :cond_1b

    .line 336
    .line 337
    if-eqz v10, :cond_11

    .line 338
    .line 339
    add-int/lit8 v3, v5, -0x1

    .line 340
    .line 341
    if-eq v0, v3, :cond_1b

    .line 342
    .line 343
    :cond_11
    if-eqz v1, :cond_14

    .line 344
    .line 345
    if-eqz v2, :cond_13

    .line 346
    .line 347
    invoke-virtual/range {p0 .. p0}, Lke/a;->A()Ljava/lang/CharSequence;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 352
    .line 353
    .line 354
    move-result v0

    .line 355
    const/16 v1, 0x22

    .line 356
    .line 357
    if-ne v0, v1, :cond_12

    .line 358
    .line 359
    add-int/lit8 v5, v5, 0x1

    .line 360
    .line 361
    goto :goto_7

    .line 362
    :cond_12
    const-string v1, "Expected closing quotation mark"

    .line 363
    .line 364
    const/4 v2, 0x0

    .line 365
    const/4 v3, 0x0

    .line 366
    const/4 v4, 0x6

    .line 367
    const/4 v5, 0x0

    .line 368
    move-object/from16 v0, p0

    .line 369
    .line 370
    invoke-static/range {v0 .. v5}, Lke/a;->v(Lke/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 371
    .line 372
    .line 373
    new-instance v0, Lxc/c;

    .line 374
    .line 375
    invoke-direct {v0}, Lxc/c;-><init>()V

    .line 376
    .line 377
    .line 378
    throw v0

    .line 379
    :cond_13
    const-string v1, "EOF"

    .line 380
    .line 381
    const/4 v2, 0x0

    .line 382
    const/4 v3, 0x0

    .line 383
    const/4 v4, 0x6

    .line 384
    const/4 v5, 0x0

    .line 385
    move-object/from16 v0, p0

    .line 386
    .line 387
    invoke-static/range {v0 .. v5}, Lke/a;->v(Lke/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 388
    .line 389
    .line 390
    new-instance v0, Lxc/c;

    .line 391
    .line 392
    invoke-direct {v0}, Lxc/c;-><init>()V

    .line 393
    .line 394
    .line 395
    throw v0

    .line 396
    :cond_14
    :goto_7
    iput v5, v6, Lke/a;->a:I

    .line 397
    .line 398
    if-eqz v9, :cond_18

    .line 399
    .line 400
    long-to-double v0, v11

    .line 401
    invoke-static {v13, v14, v15}, Lke/a;->m(JZ)D

    .line 402
    .line 403
    .line 404
    move-result-wide v2

    .line 405
    mul-double/2addr v0, v2

    .line 406
    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    .line 407
    .line 408
    cmpl-double v2, v0, v2

    .line 409
    .line 410
    if-gtz v2, :cond_17

    .line 411
    .line 412
    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    .line 413
    .line 414
    cmpg-double v2, v0, v2

    .line 415
    .line 416
    if-ltz v2, :cond_17

    .line 417
    .line 418
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 419
    .line 420
    .line 421
    move-result-wide v2

    .line 422
    cmpg-double v2, v2, v0

    .line 423
    .line 424
    if-nez v2, :cond_15

    .line 425
    .line 426
    const/4 v3, 0x1

    .line 427
    goto :goto_8

    .line 428
    :cond_15
    const/4 v3, 0x0

    .line 429
    :goto_8
    if-eqz v3, :cond_16

    .line 430
    .line 431
    double-to-long v11, v0

    .line 432
    goto :goto_9

    .line 433
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 434
    .line 435
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    .line 437
    .line 438
    const-string v3, "Can\'t convert "

    .line 439
    .line 440
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    const-string v0, " to Long"

    .line 447
    .line 448
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    const/4 v2, 0x0

    .line 456
    const/4 v3, 0x0

    .line 457
    const/4 v4, 0x6

    .line 458
    const/4 v5, 0x0

    .line 459
    move-object/from16 v0, p0

    .line 460
    .line 461
    invoke-static/range {v0 .. v5}, Lke/a;->v(Lke/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 462
    .line 463
    .line 464
    new-instance v0, Lxc/c;

    .line 465
    .line 466
    invoke-direct {v0}, Lxc/c;-><init>()V

    .line 467
    .line 468
    .line 469
    throw v0

    .line 470
    :cond_17
    const-string v1, "Numeric value overflow"

    .line 471
    .line 472
    const/4 v2, 0x0

    .line 473
    const/4 v3, 0x0

    .line 474
    const/4 v4, 0x6

    .line 475
    const/4 v5, 0x0

    .line 476
    move-object/from16 v0, p0

    .line 477
    .line 478
    invoke-static/range {v0 .. v5}, Lke/a;->v(Lke/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 479
    .line 480
    .line 481
    new-instance v0, Lxc/c;

    .line 482
    .line 483
    invoke-direct {v0}, Lxc/c;-><init>()V

    .line 484
    .line 485
    .line 486
    throw v0

    .line 487
    :cond_18
    :goto_9
    if-eqz v10, :cond_19

    .line 488
    .line 489
    goto :goto_a

    .line 490
    :cond_19
    const-wide/high16 v0, -0x8000000000000000L

    .line 491
    .line 492
    cmp-long v0, v11, v0

    .line 493
    .line 494
    if-eqz v0, :cond_1a

    .line 495
    .line 496
    neg-long v11, v11

    .line 497
    :goto_a
    return-wide v11

    .line 498
    :cond_1a
    const-string v1, "Numeric value overflow"

    .line 499
    .line 500
    const/4 v2, 0x0

    .line 501
    const/4 v3, 0x0

    .line 502
    const/4 v4, 0x6

    .line 503
    const/4 v5, 0x0

    .line 504
    move-object/from16 v0, p0

    .line 505
    .line 506
    invoke-static/range {v0 .. v5}, Lke/a;->v(Lke/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 507
    .line 508
    .line 509
    new-instance v0, Lxc/c;

    .line 510
    .line 511
    invoke-direct {v0}, Lxc/c;-><init>()V

    .line 512
    .line 513
    .line 514
    throw v0

    .line 515
    :cond_1b
    const-string v1, "Expected numeric literal"

    .line 516
    .line 517
    const/4 v2, 0x0

    .line 518
    const/4 v3, 0x0

    .line 519
    const/4 v4, 0x6

    .line 520
    const/4 v5, 0x0

    .line 521
    move-object/from16 v0, p0

    .line 522
    .line 523
    invoke-static/range {v0 .. v5}, Lke/a;->v(Lke/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 524
    .line 525
    .line 526
    new-instance v0, Lxc/c;

    .line 527
    .line 528
    invoke-direct {v0}, Lxc/c;-><init>()V

    .line 529
    .line 530
    .line 531
    throw v0

    .line 532
    :cond_1c
    const-string v1, "EOF"

    .line 533
    .line 534
    const/4 v2, 0x0

    .line 535
    const/4 v3, 0x0

    .line 536
    const/4 v4, 0x6

    .line 537
    const/4 v5, 0x0

    .line 538
    move-object/from16 v0, p0

    .line 539
    .line 540
    invoke-static/range {v0 .. v5}, Lke/a;->v(Lke/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 541
    .line 542
    .line 543
    new-instance v0, Lxc/c;

    .line 544
    .line 545
    invoke-direct {v0}, Lxc/c;-><init>()V

    .line 546
    .line 547
    .line 548
    throw v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lke/a;->c:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lke/a;->I()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lke/a;->i()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method protected final o(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 11

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    const/16 v2, 0x22

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-eq v0, v2, :cond_4

    .line 15
    .line 16
    const/16 v2, 0x5c

    .line 17
    .line 18
    const/4 v4, -0x1

    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    .line 21
    invoke-direct {p0, p2, p3}, Lke/a;->b(II)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-virtual {p0, p2}, Lke/a;->E(I)I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    if-eq v7, v4, :cond_0

    .line 30
    .line 31
    :goto_1
    move v1, v3

    .line 32
    move p2, v7

    .line 33
    move p3, p2

    .line 34
    goto :goto_2

    .line 35
    :cond_0
    const-string v6, "Unexpected EOF"

    .line 36
    .line 37
    const/4 v8, 0x0

    .line 38
    const/4 v9, 0x4

    .line 39
    const/4 v10, 0x0

    .line 40
    move-object v5, p0

    .line 41
    invoke-static/range {v5 .. v10}, Lke/a;->v(Lke/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 42
    .line 43
    .line 44
    new-instance p1, Lxc/c;

    .line 45
    .line 46
    invoke-direct {p1}, Lxc/c;-><init>()V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_1
    add-int/lit8 p3, p3, 0x1

    .line 51
    .line 52
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-lt p3, v0, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0, p2, p3}, Lke/a;->d(II)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p3}, Lke/a;->E(I)I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-eq v7, v4, :cond_2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    const-string v6, "Unexpected EOF"

    .line 69
    .line 70
    const/4 v8, 0x0

    .line 71
    const/4 v9, 0x4

    .line 72
    const/4 v10, 0x0

    .line 73
    move-object v5, p0

    .line 74
    invoke-static/range {v5 .. v10}, Lke/a;->v(Lke/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 75
    .line 76
    .line 77
    new-instance p1, Lxc/c;

    .line 78
    .line 79
    invoke-direct {p1}, Lxc/c;-><init>()V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :cond_3
    :goto_2
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    goto :goto_0

    .line 88
    :cond_4
    if-nez v1, :cond_5

    .line 89
    .line 90
    invoke-virtual {p0, p2, p3}, Lke/a;->H(II)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    goto :goto_3

    .line 95
    :cond_5
    invoke-direct {p0, p2, p3}, Lke/a;->r(II)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    :goto_3
    add-int/2addr p3, v3

    .line 100
    iput p3, p0, Lke/a;->a:I

    .line 101
    .line 102
    return-object p1
.end method

.method public final p()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lke/a;->c:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lke/a;->I()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lke/a;->G()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    invoke-virtual {p0}, Lke/a;->A()Ljava/lang/CharSequence;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-ge v3, v0, :cond_7

    .line 23
    .line 24
    const/4 v0, -0x1

    .line 25
    if-eq v3, v0, :cond_7

    .line 26
    .line 27
    invoke-virtual {p0}, Lke/a;->A()Ljava/lang/CharSequence;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-static {v1}, Lke/b;->a(C)B

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x1

    .line 40
    if-ne v1, v2, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0}, Lke/a;->n()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0

    .line 47
    :cond_1
    if-nez v1, :cond_6

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    move v4, v1

    .line 51
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lke/a;->A()Ljava/lang/CharSequence;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-interface {v5, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    invoke-static {v5}, Lke/b;->a(C)B

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-nez v5, :cond_4

    .line 64
    .line 65
    add-int/lit8 v3, v3, 0x1

    .line 66
    .line 67
    invoke-virtual {p0}, Lke/a;->A()Ljava/lang/CharSequence;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-lt v3, v5, :cond_2

    .line 76
    .line 77
    iget v4, p0, Lke/a;->a:I

    .line 78
    .line 79
    invoke-virtual {p0, v4, v3}, Lke/a;->d(II)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v3}, Lke/a;->E(I)I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-ne v4, v0, :cond_3

    .line 87
    .line 88
    iput v3, p0, Lke/a;->a:I

    .line 89
    .line 90
    invoke-direct {p0, v1, v1}, Lke/a;->r(II)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    return-object v0

    .line 95
    :cond_3
    move v3, v4

    .line 96
    move v4, v2

    .line 97
    goto :goto_0

    .line 98
    :cond_4
    if-nez v4, :cond_5

    .line 99
    .line 100
    iget v0, p0, Lke/a;->a:I

    .line 101
    .line 102
    invoke-virtual {p0, v0, v3}, Lke/a;->H(II)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    goto :goto_1

    .line 107
    :cond_5
    iget v0, p0, Lke/a;->a:I

    .line 108
    .line 109
    invoke-direct {p0, v0, v3}, Lke/a;->r(II)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    :goto_1
    iput v3, p0, Lke/a;->a:I

    .line 114
    .line 115
    return-object v0

    .line 116
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v1, "Expected beginning of the string, but got "

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lke/a;->A()Ljava/lang/CharSequence;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    const/4 v4, 0x0

    .line 142
    const/4 v5, 0x0

    .line 143
    const/4 v6, 0x6

    .line 144
    const/4 v7, 0x0

    .line 145
    move-object v2, p0

    .line 146
    invoke-static/range {v2 .. v7}, Lke/a;->v(Lke/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 147
    .line 148
    .line 149
    new-instance v0, Lxc/c;

    .line 150
    .line 151
    invoke-direct {v0}, Lxc/c;-><init>()V

    .line 152
    .line 153
    .line 154
    throw v0

    .line 155
    :cond_7
    const-string v2, "EOF"

    .line 156
    .line 157
    const/4 v4, 0x0

    .line 158
    const/4 v5, 0x4

    .line 159
    const/4 v6, 0x0

    .line 160
    move-object v1, p0

    .line 161
    invoke-static/range {v1 .. v6}, Lke/a;->v(Lke/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 162
    .line 163
    .line 164
    new-instance v0, Lxc/c;

    .line 165
    .line 166
    invoke-direct {v0}, Lxc/c;-><init>()V

    .line 167
    .line 168
    .line 169
    throw v0
.end method

.method public final q()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lke/a;->p()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "null"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lke/a;->N()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v3, "Unexpected \'null\' value instead of string literal"

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x6

    .line 25
    const/4 v7, 0x0

    .line 26
    move-object v2, p0

    .line 27
    invoke-static/range {v2 .. v7}, Lke/a;->v(Lke/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 28
    .line 29
    .line 30
    new-instance v0, Lxc/c;

    .line 31
    .line 32
    invoke-direct {v0}, Lxc/c;-><init>()V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_1
    :goto_0
    return-object v0
.end method

.method public s()V
    .locals 0

    .line 1
    return-void
.end method

.method public final t()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lke/a;->j()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xa

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "Expected EOF after parsing, but had "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lke/a;->A()Ljava/lang/CharSequence;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget v2, p0, Lke/a;->a:I

    .line 25
    .line 26
    add-int/lit8 v2, v2, -0x1

    .line 27
    .line 28
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, " instead"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const/4 v4, 0x0

    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v6, 0x6

    .line 47
    const/4 v7, 0x0

    .line 48
    move-object v2, p0

    .line 49
    invoke-static/range {v2 .. v7}, Lke/a;->v(Lke/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 50
    .line 51
    .line 52
    new-instance v0, Lxc/c;

    .line 53
    .line 54
    invoke-direct {v0}, Lxc/c;-><init>()V

    .line 55
    .line 56
    .line 57
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "JsonReader(source=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lke/a;->A()Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "\', currentPosition="

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget v1, p0, Lke/a;->a:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const/16 v1, 0x29

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method public final u(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Void;
    .locals 2

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "hint"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const-string p3, ""

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const/16 v1, 0xa

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, " at path: "

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lke/a;->b:Lke/t;

    .line 56
    .line 57
    invoke-virtual {p1}, Lke/t;->a()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p0}, Lke/a;->A()Ljava/lang/CharSequence;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    invoke-static {p2, p1, p3}, Lke/q;->d(ILjava/lang/String;Ljava/lang/CharSequence;)Lke/m;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    throw p1
.end method

.method public final w(BZ)Ljava/lang/Void;
    .locals 6

    .line 1
    invoke-static {p1}, Lke/b;->c(B)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iget p2, p0, Lke/a;->a:I

    .line 8
    .line 9
    add-int/lit8 p2, p2, -0x1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget p2, p0, Lke/a;->a:I

    .line 13
    .line 14
    :goto_0
    move v2, p2

    .line 15
    iget p2, p0, Lke/a;->a:I

    .line 16
    .line 17
    invoke-virtual {p0}, Lke/a;->A()Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eq p2, v0, :cond_2

    .line 26
    .line 27
    if-gez v2, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {p0}, Lke/a;->A()Ljava/lang/CharSequence;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    :goto_1
    const-string p2, "EOF"

    .line 44
    .line 45
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v1, "Expected "

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p1, ", but had \'"

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p1, "\' instead"

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const/4 v3, 0x0

    .line 76
    const/4 v4, 0x4

    .line 77
    const/4 v5, 0x0

    .line 78
    move-object v0, p0

    .line 79
    invoke-static/range {v0 .. v5}, Lke/a;->v(Lke/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 80
    .line 81
    .line 82
    new-instance p1, Lxc/c;

    .line 83
    .line 84
    invoke-direct {p1}, Lxc/c;-><init>()V

    .line 85
    .line 86
    .line 87
    throw p1
.end method

.method public final y(Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iget v1, p0, Lke/a;->a:I

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Lke/a;->H(II)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x6

    .line 16
    const/4 v7, 0x0

    .line 17
    move-object v3, p1

    .line 18
    invoke-static/range {v2 .. v7}, Lrd/n;->f0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "Encountered an unknown key \'"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const/16 p1, 0x27

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string v1, "Use \'ignoreUnknownKeys = true\' in \'Json {}\' builder to ignore unknown keys."

    .line 45
    .line 46
    invoke-virtual {p0, p1, v0, v1}, Lke/a;->u(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Void;

    .line 47
    .line 48
    .line 49
    new-instance p1, Lxc/c;

    .line 50
    .line 51
    invoke-direct {p1}, Lxc/c;-><init>()V

    .line 52
    .line 53
    .line 54
    throw p1
.end method
