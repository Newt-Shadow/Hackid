.class public final Lj0/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/t;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lce/a;

.field private final c:Lj0/b;

.field private final d:Lwd/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "filePath"

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
    iput-object p1, p0, Lj0/h0;->a:Ljava/lang/String;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    const/4 v0, 0x1

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {p1, v0, v1}, Lce/g;->b(ZILjava/lang/Object;)Lce/a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lj0/h0;->b:Lce/a;

    .line 19
    .line 20
    new-instance v0, Lj0/b;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lj0/b;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lj0/h0;->c:Lj0/b;

    .line 26
    .line 27
    new-instance p1, Lj0/h0$c;

    .line 28
    .line 29
    invoke-direct {p1, v1}, Lj0/h0$c;-><init>(Lad/e;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lwd/f;->o(Lid/Function2;)Lwd/d;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lj0/h0;->d:Lwd/d;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public a(Lid/l;Lad/e;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p2, Lj0/h0$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lj0/h0$a;

    .line 7
    .line 8
    iget v1, v0, Lj0/h0$a;->e:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lj0/h0$a;->e:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lj0/h0$a;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lj0/h0$a;-><init>(Lj0/h0;Lad/e;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lj0/h0$a;->c:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lj0/h0$a;->e:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    const/4 v5, 0x0

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v4, :cond_2

    .line 39
    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    iget-object p1, v0, Lj0/h0$a;->a:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p1, Lce/a;

    .line 45
    .line 46
    :try_start_0
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :catchall_0
    move-exception p2

    .line 51
    goto :goto_3

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_2
    iget-object p1, v0, Lj0/h0$a;->b:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p1, Lce/a;

    .line 63
    .line 64
    iget-object v2, v0, Lj0/h0$a;->a:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v2, Lid/l;

    .line 67
    .line 68
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    move-object p2, p1

    .line 72
    move-object p1, v2

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget-object p2, p0, Lj0/h0;->b:Lce/a;

    .line 78
    .line 79
    iput-object p1, v0, Lj0/h0$a;->a:Ljava/lang/Object;

    .line 80
    .line 81
    iput-object p2, v0, Lj0/h0$a;->b:Ljava/lang/Object;

    .line 82
    .line 83
    iput v4, v0, Lj0/h0$a;->e:I

    .line 84
    .line 85
    invoke-interface {p2, v5, v0}, Lce/a;->b(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    if-ne v2, v1, :cond_4

    .line 90
    .line 91
    return-object v1

    .line 92
    :cond_4
    :goto_1
    :try_start_1
    iput-object p2, v0, Lj0/h0$a;->a:Ljava/lang/Object;

    .line 93
    .line 94
    iput-object v5, v0, Lj0/h0$a;->b:Ljava/lang/Object;

    .line 95
    .line 96
    iput v3, v0, Lj0/h0$a;->e:I

    .line 97
    .line 98
    invoke-interface {p1, v0}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    if-ne p1, v1, :cond_5

    .line 103
    .line 104
    return-object v1

    .line 105
    :cond_5
    move-object v6, p2

    .line 106
    move-object p2, p1

    .line 107
    move-object p1, v6

    .line 108
    :goto_2
    invoke-interface {p1, v5}, Lce/a;->d(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    return-object p2

    .line 112
    :catchall_1
    move-exception p1

    .line 113
    move-object v6, p2

    .line 114
    move-object p2, p1

    .line 115
    move-object p1, v6

    .line 116
    :goto_3
    invoke-interface {p1, v5}, Lce/a;->d(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    throw p2
.end method

.method public b(Lid/Function2;Lad/e;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p2, Lj0/h0$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lj0/h0$b;

    .line 7
    .line 8
    iget v1, v0, Lj0/h0$b;->e:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lj0/h0$b;->e:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lj0/h0$b;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lj0/h0$b;-><init>(Lj0/h0;Lad/e;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lj0/h0$b;->c:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lj0/h0$b;->e:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v4, :cond_1

    .line 38
    .line 39
    iget-boolean p1, v0, Lj0/h0$b;->b:Z

    .line 40
    .line 41
    iget-object v0, v0, Lj0/h0$b;->a:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Lce/a;

    .line 44
    .line 45
    :try_start_0
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :catchall_0
    move-exception p2

    .line 50
    goto :goto_3

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_2
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object p2, p0, Lj0/h0;->b:Lce/a;

    .line 63
    .line 64
    invoke-interface {p2, v3}, Lce/a;->a(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    move v5, v4

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    const/4 v5, 0x0

    .line 73
    :goto_1
    :try_start_1
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    iput-object p2, v0, Lj0/h0$b;->a:Ljava/lang/Object;

    .line 78
    .line 79
    iput-boolean v2, v0, Lj0/h0$b;->b:Z

    .line 80
    .line 81
    iput v4, v0, Lj0/h0$b;->e:I

    .line 82
    .line 83
    invoke-interface {p1, v5, v0}, Lid/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 87
    if-ne p1, v1, :cond_4

    .line 88
    .line 89
    return-object v1

    .line 90
    :cond_4
    move-object v0, p2

    .line 91
    move-object p2, p1

    .line 92
    move p1, v2

    .line 93
    :goto_2
    if-eqz p1, :cond_5

    .line 94
    .line 95
    invoke-interface {v0, v3}, Lce/a;->d(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :cond_5
    return-object p2

    .line 99
    :catchall_1
    move-exception p1

    .line 100
    move-object v0, p2

    .line 101
    move-object p2, p1

    .line 102
    move p1, v2

    .line 103
    :goto_3
    if-eqz p1, :cond_6

    .line 104
    .line 105
    invoke-interface {v0, v3}, Lce/a;->d(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :cond_6
    throw p2
.end method

.method public c(Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p1, p0, Lj0/h0;->c:Lj0/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Lj0/b;->b()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public d()Lwd/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lj0/h0;->d:Lwd/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public e(Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p1, p0, Lj0/h0;->c:Lj0/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Lj0/b;->d()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
