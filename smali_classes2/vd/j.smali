.class public abstract Lvd/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(ILvd/a;Lid/l;)Lvd/g;
    .locals 3

    .line 1
    const/4 v0, -0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p0, v0, :cond_7

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eq p0, v0, :cond_4

    .line 8
    .line 9
    if-eqz p0, :cond_2

    .line 10
    .line 11
    const v0, 0x7fffffff

    .line 12
    .line 13
    .line 14
    if-eq p0, v0, :cond_1

    .line 15
    .line 16
    sget-object v0, Lvd/a;->a:Lvd/a;

    .line 17
    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    new-instance p1, Lvd/e;

    .line 21
    .line 22
    invoke-direct {p1, p0, p2}, Lvd/e;-><init>(ILid/l;)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    new-instance v0, Lvd/s;

    .line 27
    .line 28
    invoke-direct {v0, p0, p1, p2}, Lvd/s;-><init>(ILvd/a;Lid/l;)V

    .line 29
    .line 30
    .line 31
    move-object p1, v0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    new-instance p1, Lvd/e;

    .line 34
    .line 35
    invoke-direct {p1, v0, p2}, Lvd/e;-><init>(ILid/l;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    sget-object p0, Lvd/a;->a:Lvd/a;

    .line 40
    .line 41
    if-ne p1, p0, :cond_3

    .line 42
    .line 43
    new-instance p0, Lvd/e;

    .line 44
    .line 45
    invoke-direct {p0, v2, p2}, Lvd/e;-><init>(ILid/l;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    new-instance p0, Lvd/s;

    .line 50
    .line 51
    invoke-direct {p0, v1, p1, p2}, Lvd/s;-><init>(ILvd/a;Lid/l;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    move-object p1, p0

    .line 55
    goto :goto_1

    .line 56
    :cond_4
    sget-object p0, Lvd/a;->a:Lvd/a;

    .line 57
    .line 58
    if-ne p1, p0, :cond_5

    .line 59
    .line 60
    move v2, v1

    .line 61
    :cond_5
    if-eqz v2, :cond_6

    .line 62
    .line 63
    new-instance p1, Lvd/s;

    .line 64
    .line 65
    sget-object p0, Lvd/a;->b:Lvd/a;

    .line 66
    .line 67
    invoke-direct {p1, v1, p0, p2}, Lvd/s;-><init>(ILvd/a;Lid/l;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 72
    .line 73
    const-string p1, "CONFLATED capacity cannot be used with non-default onBufferOverflow"

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :cond_7
    sget-object p0, Lvd/a;->a:Lvd/a;

    .line 84
    .line 85
    if-ne p1, p0, :cond_8

    .line 86
    .line 87
    new-instance p0, Lvd/e;

    .line 88
    .line 89
    sget-object p1, Lvd/g;->u0:Lvd/g$a;

    .line 90
    .line 91
    invoke-virtual {p1}, Lvd/g$a;->a()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    invoke-direct {p0, p1, p2}, Lvd/e;-><init>(ILid/l;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_8
    new-instance p0, Lvd/s;

    .line 100
    .line 101
    invoke-direct {p0, v1, p1, p2}, Lvd/s;-><init>(ILvd/a;Lid/l;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :goto_1
    return-object p1
.end method

.method public static synthetic b(ILvd/a;Lid/l;ILjava/lang/Object;)Lvd/g;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    :cond_0
    and-int/lit8 p4, p3, 0x2

    .line 7
    .line 8
    if-eqz p4, :cond_1

    .line 9
    .line 10
    sget-object p1, Lvd/a;->a:Lvd/a;

    .line 11
    .line 12
    :cond_1
    and-int/lit8 p3, p3, 0x4

    .line 13
    .line 14
    if-eqz p3, :cond_2

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    :cond_2
    invoke-static {p0, p1, p2}, Lvd/j;->a(ILvd/a;Lid/l;)Lvd/g;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method
