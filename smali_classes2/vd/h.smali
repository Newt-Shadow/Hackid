.class public abstract Lvd/h;
.super Ltd/a;
.source "SourceFile"

# interfaces
.implements Lvd/g;


# instance fields
.field private final d:Lvd/g;


# direct methods
.method public constructor <init>(Lad/i;Lvd/g;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p4}, Ltd/a;-><init>(Lad/i;ZZ)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lvd/h;->d:Lvd/g;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public L(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {p0, p1, v0, v1, v0}, Ltd/z1;->H0(Ltd/z1;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lvd/h;->d:Lvd/g;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lvd/w;->b(Ljava/util/concurrent/CancellationException;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ltd/z1;->J(Ljava/lang/Throwable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method protected final S0()Lvd/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lvd/h;->d:Lvd/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ltd/z1;->isCancelled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    new-instance p1, Ltd/u1;

    .line 11
    .line 12
    invoke-static {p0}, Ltd/z1;->B(Ltd/z1;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-direct {p1, v0, v1, p0}, Ltd/u1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ltd/t1;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {p0, p1}, Lvd/h;->L(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lvd/h;->d:Lvd/g;

    invoke-interface {v0}, Lvd/w;->f()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public h(Lid/l;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lvd/h;->d:Lvd/g;

    invoke-interface {v0, p1}, Lvd/x;->h(Lid/l;)V

    return-void
.end method

.method public iterator()Lvd/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lvd/h;->d:Lvd/g;

    invoke-interface {v0}, Lvd/w;->iterator()Lvd/i;

    move-result-object v0

    return-object v0
.end method

.method public m(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lvd/h;->d:Lvd/g;

    invoke-interface {v0, p1}, Lvd/x;->m(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public p(Lad/e;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lvd/h;->d:Lvd/g;

    invoke-interface {v0, p1}, Lvd/w;->p(Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lvd/h;->d:Lvd/g;

    invoke-interface {v0, p1}, Lvd/x;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public y(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lvd/h;->d:Lvd/g;

    invoke-interface {v0, p1, p2}, Lvd/x;->y(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lvd/h;->d:Lvd/g;

    invoke-interface {v0}, Lvd/x;->z()Z

    move-result v0

    return v0
.end method
