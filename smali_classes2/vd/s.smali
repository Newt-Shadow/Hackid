.class public Lvd/s;
.super Lvd/e;
.source "SourceFile"


# instance fields
.field private final m:I

.field private final n:Lvd/a;


# direct methods
.method public constructor <init>(ILvd/a;Lid/l;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p3}, Lvd/e;-><init>(ILid/l;)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lvd/s;->m:I

    .line 5
    .line 6
    iput-object p2, p0, Lvd/s;->n:Lvd/a;

    .line 7
    .line 8
    sget-object p3, Lvd/a;->a:Lvd/a;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq p2, p3, :cond_0

    .line 13
    .line 14
    move p2, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move p2, v0

    .line 17
    :goto_0
    if-eqz p2, :cond_3

    .line 18
    .line 19
    if-lt p1, v1, :cond_1

    .line 20
    .line 21
    move v0, v1

    .line 22
    :cond_1
    if-eqz v0, :cond_2

    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string p3, "Buffered channel capacity must be at least 1, but "

    .line 31
    .line 32
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, " was specified"

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p2

    .line 57
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string p2, "This implementation does not support suspension for senders, use "

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-class p2, Lvd/e;

    .line 68
    .line 69
    invoke-static {p2}, Lkotlin/jvm/internal/d0;->b(Ljava/lang/Class;)Lpd/c;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-interface {p2}, Lpd/c;->b()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p2, " instead"

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p2
.end method

.method static synthetic d1(Lvd/s;Ljava/lang/Object;Lad/e;)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 p2, 0x1

    .line 2
    invoke-direct {p0, p1, p2}, Lvd/s;->f1(Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    instance-of v0, p2, Lvd/k$a;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-static {p2}, Lvd/k;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Lvd/e;->b:Lid/l;

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {p2, p1, v1, v0, v1}, Lyd/y;->c(Lid/l;Ljava/lang/Object;Lyd/r0;ILjava/lang/Object;)Lyd/r0;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lvd/e;->c0()Ljava/lang/Throwable;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p1, p0}, Lxc/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_0
    invoke-virtual {p0}, Lvd/e;->c0()Ljava/lang/Throwable;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    throw p0

    .line 38
    :cond_1
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 39
    .line 40
    return-object p0
.end method

.method private final e1(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lvd/e;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lvd/k;->i(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_3

    .line 10
    .line 11
    invoke-static {v0}, Lvd/k;->h(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    if-eqz p2, :cond_2

    .line 19
    .line 20
    iget-object p2, p0, Lvd/e;->b:Lid/l;

    .line 21
    .line 22
    if-eqz p2, :cond_2

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-static {p2, p1, v1, v0, v1}, Lyd/y;->c(Lid/l;Ljava/lang/Object;Lyd/r0;ILjava/lang/Object;)Lyd/r0;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    throw p1

    .line 34
    :cond_2
    :goto_0
    sget-object p1, Lvd/k;->b:Lvd/k$b;

    .line 35
    .line 36
    sget-object p2, Lxc/t;->a:Lxc/t;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lvd/k$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    :cond_3
    :goto_1
    return-object v0
.end method

.method private final f1(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lvd/s;->n:Lvd/a;

    .line 2
    .line 3
    sget-object v1, Lvd/a;->c:Lvd/a;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lvd/s;->e1(Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lvd/e;->T0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    return-object p1
.end method


# virtual methods
.method protected q0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lvd/s;->n:Lvd/a;

    .line 2
    .line 3
    sget-object v1, Lvd/a;->b:Lvd/a;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lvd/s;->f1(Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public y(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lvd/s;->d1(Lvd/s;Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
