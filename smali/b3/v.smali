.class final Lb3/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb3/v$a;
    }
.end annotation


# instance fields
.field private final a:Ly4/i0;

.field private final b:Lb3/v$a;

.field private c:Lb3/t3;

.field private d:Ly4/t;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lb3/v$a;Ly4/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb3/v;->b:Lb3/v$a;

    .line 5
    .line 6
    new-instance p1, Ly4/i0;

    .line 7
    .line 8
    invoke-direct {p1, p2}, Ly4/i0;-><init>(Ly4/d;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lb3/v;->a:Ly4/i0;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lb3/v;->e:Z

    .line 15
    .line 16
    return-void
.end method

.method private e(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/v;->c:Lb3/t3;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Lb3/t3;->d()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lb3/v;->c:Lb3/t3;

    .line 12
    .line 13
    invoke-interface {v0}, Lb3/t3;->isReady()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lb3/v;->c:Lb3/t3;

    .line 22
    .line 23
    invoke-interface {p1}, Lb3/t3;->j()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 33
    :goto_1
    return p1
.end method

.method private j(Z)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lb3/v;->e(Z)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lb3/v;->e:Z

    .line 9
    .line 10
    iget-boolean p1, p0, Lb3/v;->f:Z

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lb3/v;->a:Ly4/i0;

    .line 15
    .line 16
    invoke-virtual {p1}, Ly4/i0;->b()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :cond_1
    iget-object p1, p0, Lb3/v;->d:Ly4/t;

    .line 21
    .line 22
    invoke-static {p1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ly4/t;

    .line 27
    .line 28
    invoke-interface {p1}, Ly4/t;->s()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    iget-boolean v2, p0, Lb3/v;->e:Z

    .line 33
    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    iget-object v2, p0, Lb3/v;->a:Ly4/i0;

    .line 37
    .line 38
    invoke-virtual {v2}, Ly4/i0;->s()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    cmp-long v2, v0, v2

    .line 43
    .line 44
    if-gez v2, :cond_2

    .line 45
    .line 46
    iget-object p1, p0, Lb3/v;->a:Ly4/i0;

    .line 47
    .line 48
    invoke-virtual {p1}, Ly4/i0;->d()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    const/4 v2, 0x0

    .line 53
    iput-boolean v2, p0, Lb3/v;->e:Z

    .line 54
    .line 55
    iget-boolean v2, p0, Lb3/v;->f:Z

    .line 56
    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    iget-object v2, p0, Lb3/v;->a:Ly4/i0;

    .line 60
    .line 61
    invoke-virtual {v2}, Ly4/i0;->b()V

    .line 62
    .line 63
    .line 64
    :cond_3
    iget-object v2, p0, Lb3/v;->a:Ly4/i0;

    .line 65
    .line 66
    invoke-virtual {v2, v0, v1}, Ly4/i0;->a(J)V

    .line 67
    .line 68
    .line 69
    invoke-interface {p1}, Ly4/t;->g()Lb3/l3;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iget-object v0, p0, Lb3/v;->a:Ly4/i0;

    .line 74
    .line 75
    invoke-virtual {v0}, Ly4/i0;->g()Lb3/l3;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p1, v0}, Lb3/l3;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_4

    .line 84
    .line 85
    iget-object v0, p0, Lb3/v;->a:Ly4/i0;

    .line 86
    .line 87
    invoke-virtual {v0, p1}, Ly4/i0;->c(Lb3/l3;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lb3/v;->b:Lb3/v$a;

    .line 91
    .line 92
    invoke-interface {v0, p1}, Lb3/v$a;->onPlaybackParametersChanged(Lb3/l3;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    return-void
.end method


# virtual methods
.method public a(Lb3/t3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/v;->c:Lb3/t3;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lb3/v;->d:Ly4/t;

    .line 7
    .line 8
    iput-object p1, p0, Lb3/v;->c:Lb3/t3;

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lb3/v;->e:Z

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public b(Lb3/t3;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lb3/t3;->E()Ly4/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Lb3/v;->d:Ly4/t;

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iput-object v0, p0, Lb3/v;->d:Ly4/t;

    .line 14
    .line 15
    iput-object p1, p0, Lb3/v;->c:Lb3/t3;

    .line 16
    .line 17
    iget-object p1, p0, Lb3/v;->a:Ly4/i0;

    .line 18
    .line 19
    invoke-virtual {p1}, Ly4/i0;->g()Lb3/l3;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {v0, p1}, Ly4/t;->c(Lb3/l3;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v0, "Multiple renderer media clocks enabled."

    .line 30
    .line 31
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lb3/a0;->h(Ljava/lang/RuntimeException;)Lb3/a0;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    throw p1

    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method public c(Lb3/l3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/v;->d:Ly4/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ly4/t;->c(Lb3/l3;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lb3/v;->d:Ly4/t;

    .line 9
    .line 10
    invoke-interface {p1}, Ly4/t;->g()Lb3/l3;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :cond_0
    iget-object v0, p0, Lb3/v;->a:Ly4/i0;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ly4/i0;->c(Lb3/l3;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public d(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/v;->a:Ly4/i0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ly4/i0;->a(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lb3/v;->f:Z

    .line 3
    .line 4
    iget-object v0, p0, Lb3/v;->a:Ly4/i0;

    .line 5
    .line 6
    invoke-virtual {v0}, Ly4/i0;->b()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public g()Lb3/l3;
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/v;->d:Ly4/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ly4/t;->g()Lb3/l3;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lb3/v;->a:Ly4/i0;

    .line 11
    .line 12
    invoke-virtual {v0}, Ly4/i0;->g()Lb3/l3;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    return-object v0
.end method

.method public h()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lb3/v;->f:Z

    .line 3
    .line 4
    iget-object v0, p0, Lb3/v;->a:Ly4/i0;

    .line 5
    .line 6
    invoke-virtual {v0}, Ly4/i0;->d()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public i(Z)J
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lb3/v;->j(Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lb3/v;->s()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    return-wide v0
.end method

.method public s()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lb3/v;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lb3/v;->a:Ly4/i0;

    .line 6
    .line 7
    invoke-virtual {v0}, Ly4/i0;->s()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lb3/v;->d:Ly4/t;

    .line 13
    .line 14
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ly4/t;

    .line 19
    .line 20
    invoke-interface {v0}, Ly4/t;->s()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    :goto_0
    return-wide v0
.end method
