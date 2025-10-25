.class public final Lse/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse/c$a;,
        Lse/c$b;
    }
.end annotation


# instance fields
.field private final a:Lse/e;

.field private final b:Lne/q;

.field private final c:Lse/d;

.field private final d:Lte/d;

.field private e:Z

.field private f:Z

.field private final g:Lse/f;


# direct methods
.method public constructor <init>(Lse/e;Lne/q;Lse/d;Lte/d;)V
    .locals 1

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "eventListener"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "finder"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "codec"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lse/c;->a:Lse/e;

    .line 25
    .line 26
    iput-object p2, p0, Lse/c;->b:Lne/q;

    .line 27
    .line 28
    iput-object p3, p0, Lse/c;->c:Lse/d;

    .line 29
    .line 30
    iput-object p4, p0, Lse/c;->d:Lte/d;

    .line 31
    .line 32
    invoke-interface {p4}, Lte/d;->d()Lse/f;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lse/c;->g:Lse/f;

    .line 37
    .line 38
    return-void
.end method

.method private final t(Ljava/io/IOException;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lse/c;->f:Z

    .line 3
    .line 4
    iget-object v0, p0, Lse/c;->c:Lse/d;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lse/d;->h(Ljava/io/IOException;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lse/c;->d:Lte/d;

    .line 10
    .line 11
    invoke-interface {v0}, Lte/d;->d()Lse/f;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lse/c;->a:Lse/e;

    .line 16
    .line 17
    invoke-virtual {v0, v1, p1}, Lse/f;->G(Lse/e;Ljava/io/IOException;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a(JZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 1
    if-eqz p5, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p5}, Lse/c;->t(Ljava/io/IOException;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    if-eqz p4, :cond_2

    .line 7
    .line 8
    if-eqz p5, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lse/c;->b:Lne/q;

    .line 11
    .line 12
    iget-object v1, p0, Lse/c;->a:Lse/e;

    .line 13
    .line 14
    invoke-virtual {v0, v1, p5}, Lne/q;->r(Lne/e;Ljava/io/IOException;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Lse/c;->b:Lne/q;

    .line 19
    .line 20
    iget-object v1, p0, Lse/c;->a:Lse/e;

    .line 21
    .line 22
    invoke-virtual {v0, v1, p1, p2}, Lne/q;->p(Lne/e;J)V

    .line 23
    .line 24
    .line 25
    :cond_2
    :goto_0
    if-eqz p3, :cond_4

    .line 26
    .line 27
    if-eqz p5, :cond_3

    .line 28
    .line 29
    iget-object p1, p0, Lse/c;->b:Lne/q;

    .line 30
    .line 31
    iget-object p2, p0, Lse/c;->a:Lse/e;

    .line 32
    .line 33
    invoke-virtual {p1, p2, p5}, Lne/q;->w(Lne/e;Ljava/io/IOException;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    iget-object v0, p0, Lse/c;->b:Lne/q;

    .line 38
    .line 39
    iget-object v1, p0, Lse/c;->a:Lse/e;

    .line 40
    .line 41
    invoke-virtual {v0, v1, p1, p2}, Lne/q;->u(Lne/e;J)V

    .line 42
    .line 43
    .line 44
    :cond_4
    :goto_1
    iget-object p1, p0, Lse/c;->a:Lse/e;

    .line 45
    .line 46
    invoke-virtual {p1, p0, p4, p3, p5}, Lse/e;->r(Lse/c;ZZLjava/io/IOException;)Ljava/io/IOException;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lse/c;->d:Lte/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lte/d;->cancel()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Lne/y;Z)Laf/y0;
    .locals 3

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-boolean p2, p0, Lse/c;->e:Z

    .line 7
    .line 8
    invoke-virtual {p1}, Lne/y;->a()Lne/z;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-static {p2}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Lne/z;->a()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iget-object p2, p0, Lse/c;->b:Lne/q;

    .line 20
    .line 21
    iget-object v2, p0, Lse/c;->a:Lse/e;

    .line 22
    .line 23
    invoke-virtual {p2, v2}, Lne/q;->q(Lne/e;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lse/c;->d:Lte/d;

    .line 27
    .line 28
    invoke-interface {p2, p1, v0, v1}, Lte/d;->h(Lne/y;J)Laf/y0;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance p2, Lse/c$a;

    .line 33
    .line 34
    invoke-direct {p2, p0, p1, v0, v1}, Lse/c$a;-><init>(Lse/c;Laf/y0;J)V

    .line 35
    .line 36
    .line 37
    return-object p2
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lse/c;->d:Lte/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lte/d;->cancel()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lse/c;->a:Lse/e;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, p0, v1, v1, v2}, Lse/e;->r(Lse/c;ZZLjava/io/IOException;)Ljava/io/IOException;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lse/c;->d:Lte/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lte/d;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception v0

    .line 8
    iget-object v1, p0, Lse/c;->b:Lne/q;

    .line 9
    .line 10
    iget-object v2, p0, Lse/c;->a:Lse/e;

    .line 11
    .line 12
    invoke-virtual {v1, v2, v0}, Lne/q;->r(Lne/e;Ljava/io/IOException;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Lse/c;->t(Ljava/io/IOException;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public final f()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lse/c;->d:Lte/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lte/d;->e()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception v0

    .line 8
    iget-object v1, p0, Lse/c;->b:Lne/q;

    .line 9
    .line 10
    iget-object v2, p0, Lse/c;->a:Lse/e;

    .line 11
    .line 12
    invoke-virtual {v1, v2, v0}, Lne/q;->r(Lne/e;Ljava/io/IOException;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Lse/c;->t(Ljava/io/IOException;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public final g()Lse/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lse/c;->a:Lse/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Lse/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lse/c;->g:Lse/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Lne/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lse/c;->b:Lne/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Lse/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lse/c;->c:Lse/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lse/c;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public final l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lse/c;->c:Lse/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lse/d;->d()Lne/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lne/a;->l()Lne/t;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lne/t;->h()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lse/c;->g:Lse/f;

    .line 16
    .line 17
    invoke-virtual {v1}, Lse/f;->z()Lne/c0;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lne/c0;->a()Lne/a;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lne/a;->l()Lne/t;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lne/t;->h()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    xor-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    return v0
.end method

.method public final m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lse/c;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public final n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lse/c;->d:Lte/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lte/d;->d()Lse/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lse/f;->y()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final o()V
    .locals 4

    .line 1
    iget-object v0, p0, Lse/c;->a:Lse/e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    invoke-virtual {v0, p0, v3, v1, v2}, Lse/e;->r(Lse/c;ZZLjava/io/IOException;)Ljava/io/IOException;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final p(Lne/a0;)Lne/b0;
    .locals 4

    .line 1
    const-string v0, "response"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v0, "Content-Type"

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {p1, v0, v2, v1, v2}, Lne/a0;->k(Lne/a0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lse/c;->d:Lte/d;

    .line 15
    .line 16
    invoke-interface {v1, p1}, Lte/d;->f(Lne/a0;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    iget-object v3, p0, Lse/c;->d:Lte/d;

    .line 21
    .line 22
    invoke-interface {v3, p1}, Lte/d;->g(Lne/a0;)Laf/a1;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance v3, Lse/c$b;

    .line 27
    .line 28
    invoke-direct {v3, p0, p1, v1, v2}, Lse/c$b;-><init>(Lse/c;Laf/a1;J)V

    .line 29
    .line 30
    .line 31
    new-instance p1, Lte/h;

    .line 32
    .line 33
    invoke-static {v3}, Laf/m0;->b(Laf/a1;)Laf/f;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-direct {p1, v0, v1, v2, v3}, Lte/h;-><init>(Ljava/lang/String;JLaf/f;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    return-object p1

    .line 41
    :catch_0
    move-exception p1

    .line 42
    iget-object v0, p0, Lse/c;->b:Lne/q;

    .line 43
    .line 44
    iget-object v1, p0, Lse/c;->a:Lse/e;

    .line 45
    .line 46
    invoke-virtual {v0, v1, p1}, Lne/q;->w(Lne/e;Ljava/io/IOException;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, p1}, Lse/c;->t(Ljava/io/IOException;)V

    .line 50
    .line 51
    .line 52
    throw p1
.end method

.method public final q(Z)Lne/a0$a;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lse/c;->d:Lte/d;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lte/d;->c(Z)Lne/a0$a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1, p0}, Lne/a0$a;->m(Lse/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :goto_0
    return-object p1

    .line 14
    :catch_0
    move-exception p1

    .line 15
    iget-object v0, p0, Lse/c;->b:Lne/q;

    .line 16
    .line 17
    iget-object v1, p0, Lse/c;->a:Lse/e;

    .line 18
    .line 19
    invoke-virtual {v0, v1, p1}, Lne/q;->w(Lne/e;Ljava/io/IOException;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1}, Lse/c;->t(Ljava/io/IOException;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public final r(Lne/a0;)V
    .locals 2

    .line 1
    const-string v0, "response"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lse/c;->b:Lne/q;

    .line 7
    .line 8
    iget-object v1, p0, Lse/c;->a:Lse/e;

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Lne/q;->x(Lne/e;Lne/a0;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lse/c;->b:Lne/q;

    .line 2
    .line 3
    iget-object v1, p0, Lse/c;->a:Lse/e;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lne/q;->y(Lne/e;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final u(Lne/y;)V
    .locals 2

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lse/c;->b:Lne/q;

    .line 7
    .line 8
    iget-object v1, p0, Lse/c;->a:Lse/e;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lne/q;->t(Lne/e;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lse/c;->d:Lte/d;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Lte/d;->a(Lne/y;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lse/c;->b:Lne/q;

    .line 19
    .line 20
    iget-object v1, p0, Lse/c;->a:Lse/e;

    .line 21
    .line 22
    invoke-virtual {v0, v1, p1}, Lne/q;->s(Lne/e;Lne/y;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catch_0
    move-exception p1

    .line 27
    iget-object v0, p0, Lse/c;->b:Lne/q;

    .line 28
    .line 29
    iget-object v1, p0, Lse/c;->a:Lse/e;

    .line 30
    .line 31
    invoke-virtual {v0, v1, p1}, Lne/q;->r(Lne/e;Ljava/io/IOException;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1}, Lse/c;->t(Ljava/io/IOException;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method
