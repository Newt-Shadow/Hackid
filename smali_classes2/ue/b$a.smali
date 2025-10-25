.class abstract Lue/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laf/a1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lue/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
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
    iput-object p1, p0, Lue/b$a;->c:Lue/b;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Laf/n;

    .line 12
    .line 13
    invoke-static {p1}, Lue/b;->m(Lue/b;)Laf/f;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Laf/a1;->n()Laf/b1;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v0, p1}, Laf/n;-><init>(Laf/b1;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lue/b$a;->a:Laf/n;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public L0(Laf/d;J)J
    .locals 1

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lue/b$a;->c:Lue/b;

    .line 7
    .line 8
    invoke-static {v0}, Lue/b;->m(Lue/b;)Laf/f;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1, p2, p3}, Laf/a1;->L0(Laf/d;J)J

    .line 13
    .line 14
    .line 15
    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-wide p1

    .line 17
    :catch_0
    move-exception p1

    .line 18
    iget-object p2, p0, Lue/b$a;->c:Lue/b;

    .line 19
    .line 20
    invoke-virtual {p2}, Lue/b;->d()Lse/f;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p2}, Lse/f;->y()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lue/b$a;->b()V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method protected final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lue/b$a;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lue/b$a;->c:Lue/b;

    .line 2
    .line 3
    invoke-static {v0}, Lue/b;->n(Lue/b;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x6

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lue/b$a;->c:Lue/b;

    .line 12
    .line 13
    invoke-static {v0}, Lue/b;->n(Lue/b;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x5

    .line 18
    if-ne v0, v2, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lue/b$a;->c:Lue/b;

    .line 21
    .line 22
    iget-object v2, p0, Lue/b$a;->a:Laf/n;

    .line 23
    .line 24
    invoke-static {v0, v2}, Lue/b;->i(Lue/b;Laf/n;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lue/b$a;->c:Lue/b;

    .line 28
    .line 29
    invoke-static {v0, v1}, Lue/b;->p(Lue/b;I)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    iget-object v1, p0, Lue/b$a;->c:Lue/b;

    .line 36
    .line 37
    invoke-static {v1}, Lue/b;->n(Lue/b;)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v2, "state: "

    .line 46
    .line 47
    invoke-static {v2, v1}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0
.end method

.method protected final c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lue/b$a;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public n()Laf/b1;
    .locals 1

    .line 1
    iget-object v0, p0, Lue/b$a;->a:Laf/n;

    .line 2
    .line 3
    return-object v0
.end method
