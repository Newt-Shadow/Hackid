.class public final Lm5/a0;
.super Lm5/r1;
.source "SourceFile"


# instance fields
.field private final f:Lr/b;

.field private final g:Lm5/e;


# direct methods
.method constructor <init>(Lm5/i;Lm5/e;Ll5/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lm5/r1;-><init>(Lm5/i;Ll5/f;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lr/b;

    .line 5
    .line 6
    invoke-direct {p1}, Lr/b;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lm5/a0;->f:Lr/b;

    .line 10
    .line 11
    iput-object p2, p0, Lm5/a0;->g:Lm5/e;

    .line 12
    .line 13
    iget-object p1, p0, Lm5/h;->a:Lm5/i;

    .line 14
    .line 15
    const-string p2, "ConnectionlessLifecycleHelper"

    .line 16
    .line 17
    invoke-interface {p1, p2, p0}, Lm5/i;->c(Ljava/lang/String;Lm5/h;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static u(Landroid/app/Activity;Lm5/e;Lm5/b;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lm5/h;->c(Landroid/app/Activity;)Lm5/i;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "ConnectionlessLifecycleHelper"

    .line 6
    .line 7
    const-class v1, Lm5/a0;

    .line 8
    .line 9
    invoke-interface {p0, v0, v1}, Lm5/i;->a(Ljava/lang/String;Ljava/lang/Class;)Lm5/h;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lm5/a0;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Lm5/a0;

    .line 18
    .line 19
    invoke-static {}, Ll5/f;->m()Ll5/f;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, p0, p1, v1}, Lm5/a0;-><init>(Lm5/i;Lm5/e;Ll5/f;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    const-string p0, "ApiKey cannot be null"

    .line 27
    .line 28
    invoke-static {p2, p0}, Ln5/q;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    iget-object p0, v0, Lm5/a0;->f:Lr/b;

    .line 32
    .line 33
    invoke-virtual {p0, p2}, Lr/b;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lm5/e;->b(Lm5/a0;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private final v()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm5/a0;->f:Lr/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lr/b;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lm5/a0;->g:Lm5/e;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lm5/e;->b(Lm5/a0;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public final h()V
    .locals 0

    .line 1
    invoke-super {p0}, Lm5/h;->h()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lm5/a0;->v()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final j()V
    .locals 0

    .line 1
    invoke-super {p0}, Lm5/r1;->j()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lm5/a0;->v()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final k()V
    .locals 1

    .line 1
    invoke-super {p0}, Lm5/r1;->k()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lm5/a0;->g:Lm5/e;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lm5/e;->c(Lm5/a0;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected final m(Ll5/b;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm5/a0;->g:Lm5/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lm5/e;->F(Ll5/b;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected final n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm5/a0;->g:Lm5/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lm5/e;->G()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method final t()Lr/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lm5/a0;->f:Lr/b;

    return-object v0
.end method
