.class public Lke/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lke/l;

.field private b:Z


# direct methods
.method public constructor <init>(Lke/l;)V
    .locals 1

    .line 1
    const-string v0, "writer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lke/g;->a:Lke/l;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lke/g;->b:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lke/g;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public b()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lke/g;->b:Z

    .line 3
    .line 4
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lke/g;->b:Z

    .line 3
    .line 4
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lke/g;->b:Z

    .line 3
    .line 4
    return-void
.end method

.method public final e(C)V
    .locals 1

    .line 1
    iget-object v0, p0, Lke/g;->a:Lke/l;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lke/l;->a(C)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lke/g;->a:Lke/l;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Lke/l;->d(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public g(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lke/g;->a:Lke/l;

    .line 2
    .line 3
    int-to-long v1, p1

    .line 4
    invoke-interface {v0, v1, v2}, Lke/l;->c(J)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public h(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lke/g;->a:Lke/l;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lke/l;->c(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lke/g;->a:Lke/l;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lke/l;->d(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public j(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lke/g;->a:Lke/l;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Lke/l;->d(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lke/g;->a:Lke/l;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lke/l;->b(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected final l(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lke/g;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public m()V
    .locals 0

    .line 1
    return-void
.end method

.method public n()V
    .locals 0

    .line 1
    return-void
.end method
