.class abstract synthetic Lwd/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lwd/d;ILvd/a;)Lwd/d;
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, -0x1

    .line 4
    if-gez p1, :cond_1

    .line 5
    .line 6
    const/4 v3, -0x2

    .line 7
    if-eq p1, v3, :cond_1

    .line 8
    .line 9
    if-ne p1, v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v3, v1

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    move v3, v0

    .line 15
    :goto_1
    if-eqz v3, :cond_7

    .line 16
    .line 17
    if-ne p1, v2, :cond_3

    .line 18
    .line 19
    sget-object v3, Lvd/a;->a:Lvd/a;

    .line 20
    .line 21
    if-ne p2, v3, :cond_2

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_2
    move v0, v1

    .line 25
    :cond_3
    :goto_2
    if-eqz v0, :cond_6

    .line 26
    .line 27
    if-ne p1, v2, :cond_4

    .line 28
    .line 29
    sget-object p2, Lvd/a;->b:Lvd/a;

    .line 30
    .line 31
    move-object v6, p2

    .line 32
    move v5, v1

    .line 33
    goto :goto_3

    .line 34
    :cond_4
    move v5, p1

    .line 35
    move-object v6, p2

    .line 36
    :goto_3
    instance-of p1, p0, Lxd/k;

    .line 37
    .line 38
    if-eqz p1, :cond_5

    .line 39
    .line 40
    move-object v2, p0

    .line 41
    check-cast v2, Lxd/k;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    const/4 p0, 0x1

    .line 45
    const/4 v7, 0x0

    .line 46
    move v4, v5

    .line 47
    move-object v5, v6

    .line 48
    move v6, p0

    .line 49
    invoke-static/range {v2 .. v7}, Lxd/k$a;->a(Lxd/k;Lad/i;ILvd/a;ILjava/lang/Object;)Lwd/d;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    goto :goto_4

    .line 54
    :cond_5
    new-instance p1, Lxd/h;

    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    const/4 v7, 0x2

    .line 58
    const/4 v8, 0x0

    .line 59
    move-object v2, p1

    .line 60
    move-object v3, p0

    .line 61
    invoke-direct/range {v2 .. v8}, Lxd/h;-><init>(Lwd/d;Lad/i;ILvd/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 62
    .line 63
    .line 64
    move-object p0, p1

    .line 65
    :goto_4
    return-object p0

    .line 66
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    const-string p1, "CONFLATED capacity cannot be used with non-default onBufferOverflow"

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p0

    .line 78
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string p2, "Buffer size should be non-negative, BUFFERED, or CONFLATED, but was "

    .line 84
    .line 85
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 96
    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p1
.end method

.method public static synthetic b(Lwd/d;ILvd/a;ILjava/lang/Object;)Lwd/d;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p1, -0x2

    .line 6
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 7
    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    sget-object p2, Lvd/a;->a:Lvd/a;

    .line 11
    .line 12
    :cond_1
    invoke-static {p0, p1, p2}, Lwd/f;->b(Lwd/d;ILvd/a;)Lwd/d;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method private static final c(Lad/i;)V
    .locals 2

    .line 1
    sget-object v0, Ltd/t1;->t0:Ltd/t1$b;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lad/i;->a(Lad/i$c;)Lad/i$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "Flow context cannot contain job in it. Had "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0
.end method

.method public static final d(Lwd/d;)Lwd/d;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, -0x1

    .line 4
    invoke-static {p0, v2, v0, v1, v0}, Lwd/f;->c(Lwd/d;ILvd/a;ILjava/lang/Object;)Lwd/d;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public static final e(Lwd/d;Lad/i;)Lwd/d;
    .locals 8

    .line 1
    invoke-static {p1}, Lwd/j;->c(Lad/i;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lad/j;->a:Lad/j;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    instance-of v0, p0, Lxd/k;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    move-object v1, p0

    .line 18
    check-cast v1, Lxd/k;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x6

    .line 23
    const/4 v6, 0x0

    .line 24
    move-object v2, p1

    .line 25
    invoke-static/range {v1 .. v6}, Lxd/k$a;->a(Lxd/k;Lad/i;ILvd/a;ILjava/lang/Object;)Lwd/d;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v7, Lxd/h;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    const/16 v5, 0xc

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    move-object v0, v7

    .line 38
    move-object v1, p0

    .line 39
    move-object v2, p1

    .line 40
    invoke-direct/range {v0 .. v6}, Lxd/h;-><init>(Lwd/d;Lad/i;ILvd/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 41
    .line 42
    .line 43
    move-object p0, v7

    .line 44
    :goto_0
    return-object p0
.end method
