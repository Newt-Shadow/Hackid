.class public final Lj0/q;
.super Lj0/n;
.source "SourceFile"

# interfaces
.implements Lj0/p0;


# direct methods
.method public constructor <init>(Ljava/io/File;Lj0/e0;)V
    .locals 1

    .line 1
    const-string v0, "file"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "serializer"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Lj0/n;-><init>(Ljava/io/File;Lj0/e0;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p2, Lj0/q$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lj0/q$a;

    .line 7
    .line 8
    iget v1, v0, Lj0/q$a;->e:I

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
    iput v1, v0, Lj0/q$a;->e:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lj0/q$a;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lj0/q$a;-><init>(Lj0/q;Lad/e;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lj0/q$a;->c:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lj0/q$a;->e:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Lj0/q$a;->b:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Ljava/io/FileOutputStream;

    .line 41
    .line 42
    iget-object v0, v0, Lj0/q$a;->a:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Ljava/io/Closeable;

    .line 45
    .line 46
    :try_start_0
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_2

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
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lj0/n;->f()V

    .line 64
    .line 65
    .line 66
    new-instance p2, Ljava/io/FileOutputStream;

    .line 67
    .line 68
    invoke-virtual {p0}, Lj0/n;->g()Ljava/io/File;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-direct {p2, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 73
    .line 74
    .line 75
    :try_start_1
    invoke-virtual {p0}, Lj0/n;->h()Lj0/e0;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    new-instance v4, Lj0/n0;

    .line 80
    .line 81
    invoke-direct {v4, p2}, Lj0/n0;-><init>(Ljava/io/FileOutputStream;)V

    .line 82
    .line 83
    .line 84
    iput-object p2, v0, Lj0/q$a;->a:Ljava/lang/Object;

    .line 85
    .line 86
    iput-object p2, v0, Lj0/q$a;->b:Ljava/lang/Object;

    .line 87
    .line 88
    iput v3, v0, Lj0/q$a;->e:I

    .line 89
    .line 90
    invoke-interface {v2, p1, v4, v0}, Lj0/e0;->b(Ljava/lang/Object;Ljava/io/OutputStream;Lad/e;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    if-ne p1, v1, :cond_3

    .line 95
    .line 96
    return-object v1

    .line 97
    :cond_3
    move-object p1, p2

    .line 98
    move-object v0, p1

    .line 99
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V

    .line 104
    .line 105
    .line 106
    sget-object p1, Lxc/t;->a:Lxc/t;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    .line 108
    const/4 p1, 0x0

    .line 109
    invoke-static {v0, p1}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 113
    .line 114
    return-object p1

    .line 115
    :catchall_1
    move-exception p1

    .line 116
    move-object v0, p2

    .line 117
    :goto_2
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 118
    :catchall_2
    move-exception p2

    .line 119
    invoke-static {v0, p1}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    throw p2
.end method
