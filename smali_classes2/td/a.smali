.class public abstract Ltd/a;
.super Ltd/z1;
.source "SourceFile"

# interfaces
.implements Lad/e;
.implements Ltd/l0;


# instance fields
.field private final c:Lad/i;


# direct methods
.method public constructor <init>(Lad/i;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Ltd/z1;-><init>(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    sget-object p2, Ltd/t1;->t0:Ltd/t1$b;

    .line 7
    .line 8
    invoke-interface {p1, p2}, Lad/i;->a(Lad/i$c;)Lad/i$b;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Ltd/t1;

    .line 13
    .line 14
    invoke-virtual {p0, p2}, Ltd/z1;->m0(Ltd/t1;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-interface {p1, p0}, Lad/i;->e(Lad/i;)Lad/i;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Ltd/a;->c:Lad/i;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method protected O()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Ltd/p0;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " was cancelled"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method protected O0(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ltd/z1;->F(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected P0(Ljava/lang/Throwable;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method protected Q0(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final R0(Ltd/n0;Ljava/lang/Object;Lid/Function2;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p3, p2, p0}, Ltd/n0;->b(Lid/Function2;Ljava/lang/Object;Lad/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final getContext()Lad/i;
    .locals 1

    .line 1
    iget-object v0, p0, Ltd/a;->c:Lad/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 1
    invoke-super {p0}, Ltd/z1;->isActive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final l0(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ltd/a;->c:Lad/i;

    .line 2
    .line 3
    invoke-static {v0, p1}, Ltd/k0;->a(Lad/i;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public n()Lad/i;
    .locals 1

    .line 1
    iget-object v0, p0, Ltd/a;->c:Lad/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ltd/c0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Ltd/z1;->s0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v0, Ltd/a2;->b:Lyd/f0;

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Ltd/a;->O0(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public t0()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Ltd/a;->c:Lad/i;

    .line 2
    .line 3
    invoke-static {v0}, Ltd/g0;->g(Lad/i;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-super {p0}, Ltd/z1;->t0()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const/16 v2, 0x22

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, "\":"

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-super {p0}, Ltd/z1;->t0()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method

.method protected final y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ltd/a0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ltd/a0;

    .line 6
    .line 7
    iget-object v0, p1, Ltd/a0;->a:Ljava/lang/Throwable;

    .line 8
    .line 9
    invoke-virtual {p1}, Ltd/a0;->a()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0, v0, p1}, Ltd/a;->P0(Ljava/lang/Throwable;Z)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Ltd/a;->Q0(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method
