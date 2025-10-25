.class final Lyd/w;
.super Ltd/d2;
.source "SourceFile"

# interfaces
.implements Ltd/u0;


# instance fields
.field private final c:Ljava/lang/Throwable;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltd/d2;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lyd/w;->c:Ljava/lang/Throwable;

    .line 5
    .line 6
    iput-object p2, p0, Lyd/w;->d:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method private final V0()Ljava/lang/Void;
    .locals 4

    .line 1
    iget-object v0, p0, Lyd/w;->c:Ljava/lang/Throwable;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "Module with the Main dispatcher had failed to initialize"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lyd/w;->d:Ljava/lang/String;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v3, ". "

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    :cond_0
    const-string v1, ""

    .line 39
    .line 40
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    iget-object v2, p0, Lyd/w;->c:Ljava/lang/Throwable;

    .line 50
    .line 51
    invoke-direct {v1, v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    throw v1

    .line 55
    :cond_2
    invoke-static {}, Lyd/v;->d()Ljava/lang/Void;

    .line 56
    .line 57
    .line 58
    new-instance v0, Lxc/c;

    .line 59
    .line 60
    invoke-direct {v0}, Lxc/c;-><init>()V

    .line 61
    .line 62
    .line 63
    throw v0
.end method


# virtual methods
.method public A0(ILjava/lang/String;)Ltd/i0;
    .locals 0

    .line 1
    invoke-direct {p0}, Lyd/w;->V0()Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    new-instance p1, Lxc/c;

    .line 5
    .line 6
    invoke-direct {p1}, Lxc/c;-><init>()V

    .line 7
    .line 8
    .line 9
    throw p1
.end method

.method public J0()Ltd/d2;
    .locals 0

    .line 1
    return-object p0
.end method

.method public U0(Lad/i;Ljava/lang/Runnable;)Ljava/lang/Void;
    .locals 0

    .line 1
    invoke-direct {p0}, Lyd/w;->V0()Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    new-instance p1, Lxc/c;

    .line 5
    .line 6
    invoke-direct {p1}, Lxc/c;-><init>()V

    .line 7
    .line 8
    .line 9
    throw p1
.end method

.method public W0(JLtd/l;)Ljava/lang/Void;
    .locals 0

    .line 1
    invoke-direct {p0}, Lyd/w;->V0()Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    new-instance p1, Lxc/c;

    .line 5
    .line 6
    invoke-direct {p1}, Lxc/c;-><init>()V

    .line 7
    .line 8
    .line 9
    throw p1
.end method

.method public bridge synthetic h(JLtd/l;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lyd/w;->W0(JLtd/l;)Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic q0(Lad/i;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lyd/w;->U0(Lad/i;Ljava/lang/Runnable;)Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public t0(Lad/i;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lyd/w;->V0()Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    new-instance p1, Lxc/c;

    .line 5
    .line 6
    invoke-direct {p1}, Lxc/c;-><init>()V

    .line 7
    .line 8
    .line 9
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Dispatchers.Main[missing"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lyd/w;->c:Ljava/lang/Throwable;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, ", cause="

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lyd/w;->c:Ljava/lang/Throwable;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string v1, ""

    .line 36
    .line 37
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const/16 v1, 0x5d

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method
