.class public interface abstract Lk7/d;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public a(Ljava/lang/Class;)Lk8/b;
    .locals 0

    .line 1
    invoke-static {p1}, Lk7/e0;->b(Ljava/lang/Class;)Lk7/e0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Lk7/d;->e(Lk7/e0;)Lk8/b;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public b(Lk7/e0;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lk7/d;->e(Lk7/e0;)Lk8/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-interface {p1}, Lk8/b;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public c(Lk7/e0;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lk7/d;->d(Lk7/e0;)Lk8/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Lk8/b;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/util/Set;

    .line 10
    .line 11
    return-object p1
.end method

.method public abstract d(Lk7/e0;)Lk8/b;
.end method

.method public abstract e(Lk7/e0;)Lk8/b;
.end method

.method public f(Ljava/lang/Class;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-static {p1}, Lk7/e0;->b(Ljava/lang/Class;)Lk7/e0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Lk7/d;->c(Lk7/e0;)Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public abstract g(Lk7/e0;)Lk8/a;
.end method

.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lk7/e0;->b(Ljava/lang/Class;)Lk7/e0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Lk7/d;->b(Lk7/e0;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public h(Ljava/lang/Class;)Lk8/a;
    .locals 0

    .line 1
    invoke-static {p1}, Lk7/e0;->b(Ljava/lang/Class;)Lk7/e0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Lk7/d;->g(Lk7/e0;)Lk8/a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
