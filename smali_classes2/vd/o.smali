.class abstract synthetic Lvd/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lvd/x;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-interface {p0, p1}, Lvd/x;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lvd/k$c;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lxc/t;

    .line 10
    .line 11
    sget-object p0, Lvd/k;->b:Lvd/k$b;

    .line 12
    .line 13
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lvd/k$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    new-instance v0, Lvd/o$a;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {v0, p0, p1, v1}, Lvd/o$a;-><init>(Lvd/x;Ljava/lang/Object;Lad/e;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    invoke-static {v1, v0, p0, v1}, Ltd/g;->f(Lad/i;Lid/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lvd/k;

    .line 32
    .line 33
    invoke-virtual {p0}, Lvd/k;->k()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method
