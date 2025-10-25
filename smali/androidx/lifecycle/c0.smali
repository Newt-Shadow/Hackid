.class public final Landroidx/lifecycle/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/k;
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroidx/lifecycle/a0;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/lifecycle/a0;)V
    .locals 1

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "handle"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/lifecycle/c0;->a:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p2, p0, Landroidx/lifecycle/c0;->b:Landroidx/lifecycle/a0;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a(Landroidx/lifecycle/m;Landroidx/lifecycle/i$a;)V
    .locals 1

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "event"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Landroidx/lifecycle/i$a;->ON_DESTROY:Landroidx/lifecycle/i$a;

    .line 12
    .line 13
    if-ne p2, v0, :cond_0

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    iput-boolean p2, p0, Landroidx/lifecycle/c0;->c:Z

    .line 17
    .line 18
    invoke-interface {p1}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/i;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p0}, Landroidx/lifecycle/i;->c(Landroidx/lifecycle/l;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final b(Lh1/d;Landroidx/lifecycle/i;)V
    .locals 2

    .line 1
    const-string v0, "registry"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "lifecycle"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Landroidx/lifecycle/c0;->c:Z

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    xor-int/2addr v0, v1

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iput-boolean v1, p0, Landroidx/lifecycle/c0;->c:Z

    .line 18
    .line 19
    invoke-virtual {p2, p0}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/l;)V

    .line 20
    .line 21
    .line 22
    iget-object p2, p0, Landroidx/lifecycle/c0;->a:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/lifecycle/c0;->b:Landroidx/lifecycle/a0;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/lifecycle/a0;->c()Lh1/d$c;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, p2, v0}, Lh1/d;->h(Ljava/lang/String;Lh1/d$c;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string p2, "Already attached to lifecycleOwner"

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public final c()Landroidx/lifecycle/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/c0;->b:Landroidx/lifecycle/a0;

    .line 2
    .line 3
    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/c0;->c:Z

    .line 2
    .line 3
    return v0
.end method
