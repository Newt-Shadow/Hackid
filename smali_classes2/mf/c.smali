.class public interface abstract Lmf/c;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract b(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract c()Z
.end method

.method public abstract d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract e()Z
.end method

.method public abstract f(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract g(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract i()Z
.end method

.method public varargs abstract j(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract k()Z
.end method

.method public abstract l(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract m(Ljava/lang/String;)V
.end method

.method public abstract n()Z
.end method

.method public abstract o(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public varargs abstract p(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract q(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract r(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public s(Lnf/b;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lnf/b;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    if-eq v0, v1, :cond_3

    .line 10
    .line 11
    const/16 v1, 0x14

    .line 12
    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/16 v1, 0x1e

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const/16 v1, 0x28

    .line 20
    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    invoke-interface {p0}, Lmf/c;->i()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "Level ["

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, "] not recognized."

    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0

    .line 56
    :cond_1
    invoke-interface {p0}, Lmf/c;->c()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    return p1

    .line 61
    :cond_2
    invoke-interface {p0}, Lmf/c;->k()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    return p1

    .line 66
    :cond_3
    invoke-interface {p0}, Lmf/c;->e()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    return p1

    .line 71
    :cond_4
    invoke-interface {p0}, Lmf/c;->n()Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    return p1
.end method

.method public varargs abstract t(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract u(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract v(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract w(Ljava/lang/String;)V
.end method

.method public abstract x(Ljava/lang/String;)V
.end method

.method public abstract y(Ljava/lang/String;)V
.end method

.method public abstract z(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
.end method
