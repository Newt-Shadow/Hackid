.class final Lue/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laf/y0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lue/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private final a:Laf/n;

.field private b:Z

.field final synthetic c:Lue/b;


# direct methods
.method public constructor <init>(Lue/b;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lue/b$b;->c:Lue/b;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Laf/n;

    .line 12
    .line 13
    invoke-static {p1}, Lue/b;->l(Lue/b;)Laf/e;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Laf/y0;->n()Laf/b1;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v0, p1}, Laf/n;-><init>(Laf/b1;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lue/b$b;->a:Laf/n;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public c0(Laf/d;J)V
    .locals 2

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lue/b$b;->b:Z

    .line 7
    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    cmp-long v0, p2, v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lue/b$b;->c:Lue/b;

    .line 20
    .line 21
    invoke-static {v0}, Lue/b;->l(Lue/b;)Laf/e;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0, p2, p3}, Laf/e;->n0(J)Laf/e;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lue/b$b;->c:Lue/b;

    .line 29
    .line 30
    invoke-static {v0}, Lue/b;->l(Lue/b;)Laf/e;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "\r\n"

    .line 35
    .line 36
    invoke-interface {v0, v1}, Laf/e;->g0(Ljava/lang/String;)Laf/e;

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lue/b$b;->c:Lue/b;

    .line 40
    .line 41
    invoke-static {v0}, Lue/b;->l(Lue/b;)Laf/e;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0, p1, p2, p3}, Laf/y0;->c0(Laf/d;J)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lue/b$b;->c:Lue/b;

    .line 49
    .line 50
    invoke-static {p1}, Lue/b;->l(Lue/b;)Laf/e;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-interface {p1, v1}, Laf/e;->g0(Ljava/lang/String;)Laf/e;

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string p2, "closed"

    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1
.end method

.method public declared-synchronized close()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lue/b$b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    :try_start_1
    iput-boolean v0, p0, Lue/b$b;->b:Z

    .line 10
    .line 11
    iget-object v0, p0, Lue/b$b;->c:Lue/b;

    .line 12
    .line 13
    invoke-static {v0}, Lue/b;->l(Lue/b;)Laf/e;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "0\r\n\r\n"

    .line 18
    .line 19
    invoke-interface {v0, v1}, Laf/e;->g0(Ljava/lang/String;)Laf/e;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lue/b$b;->c:Lue/b;

    .line 23
    .line 24
    iget-object v1, p0, Lue/b$b;->a:Laf/n;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lue/b;->i(Lue/b;Laf/n;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lue/b$b;->c:Lue/b;

    .line 30
    .line 31
    const/4 v1, 0x3

    .line 32
    invoke-static {v0, v1}, Lue/b;->p(Lue/b;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    monitor-exit p0

    .line 39
    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lue/b$b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, p0, Lue/b$b;->c:Lue/b;

    .line 9
    .line 10
    invoke-static {v0}, Lue/b;->l(Lue/b;)Laf/e;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Laf/e;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0

    .line 21
    throw v0
.end method

.method public n()Laf/b1;
    .locals 1

    .line 1
    iget-object v0, p0, Lue/b$b;->a:Laf/n;

    .line 2
    .line 3
    return-object v0
.end method
