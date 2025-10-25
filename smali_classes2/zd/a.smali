.class public abstract Lzd/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static final a(Lad/e;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Lxc/l;->b:Lxc/l$a;

    .line 2
    .line 3
    invoke-static {p1}, Lxc/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lxc/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p0, v0}, Lad/e;->resumeWith(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    throw p1
.end method

.method public static final b(Lad/e;Lad/e;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lbd/b;->c(Lad/e;)Lad/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lxc/l;->b:Lxc/l$a;

    .line 6
    .line 7
    sget-object v0, Lxc/t;->a:Lxc/t;

    .line 8
    .line 9
    invoke-static {v0}, Lxc/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p0, v0}, Lyd/i;->b(Lad/e;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-static {p1, p0}, Lzd/a;->a(Lad/e;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public static final c(Lid/Function2;Ljava/lang/Object;Lad/e;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Lbd/b;->a(Lid/Function2;Ljava/lang/Object;Lad/e;)Lad/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lbd/b;->c(Lad/e;)Lad/e;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    sget-object p1, Lxc/l;->b:Lxc/l$a;

    .line 10
    .line 11
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 12
    .line 13
    invoke-static {p1}, Lxc/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p0, p1}, Lyd/i;->b(Lad/e;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    invoke-static {p2, p0}, Lzd/a;->a(Lad/e;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method
