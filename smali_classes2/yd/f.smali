.class public abstract Lyd/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lad/i;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-static {}, Lyd/e;->a()Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ltd/j0;

    .line 20
    .line 21
    :try_start_0
    invoke-interface {v1, p0, p1}, Ltd/j0;->k0(Lad/i;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    invoke-static {p1, v1}, Ltd/k0;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Lyd/e;->b(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    :try_start_1
    new-instance v0, Lyd/g;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lyd/g;-><init>(Lad/i;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v0}, Lxc/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    .line 41
    .line 42
    :catchall_1
    invoke-static {p1}, Lyd/e;->b(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
