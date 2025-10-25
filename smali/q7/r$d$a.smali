.class Lq7/r$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm6/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq7/r$d;->b(Ljava/lang/Boolean;)Lm6/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lq7/r$d;


# direct methods
.method constructor <init>(Lq7/r$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq7/r$d$a;->a:Lq7/r$d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lm6/Task;
    .locals 0

    .line 1
    check-cast p1, Ly7/d;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lq7/r$d$a;->b(Ly7/d;)Lm6/Task;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public b(Ly7/d;)Lm6/Task;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v1, "Received null app settings at app startup. Cannot send cached reports"

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Ln7/g;->k(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lm6/n;->e(Ljava/lang/Object;)Lm6/Task;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_0
    iget-object p1, p0, Lq7/r$d$a;->a:Lq7/r$d;

    .line 19
    .line 20
    iget-object p1, p1, Lq7/r$d;->b:Lq7/r;

    .line 21
    .line 22
    invoke-static {p1}, Lq7/r;->l(Lq7/r;)Lm6/Task;

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lq7/r$d$a;->a:Lq7/r$d;

    .line 26
    .line 27
    iget-object p1, p1, Lq7/r$d;->b:Lq7/r;

    .line 28
    .line 29
    invoke-static {p1}, Lq7/r;->g(Lq7/r;)Lq7/h1;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v1, p0, Lq7/r$d$a;->a:Lq7/r$d;

    .line 34
    .line 35
    iget-object v1, v1, Lq7/r$d;->b:Lq7/r;

    .line 36
    .line 37
    invoke-static {v1}, Lq7/r;->k(Lq7/r;)Lr7/i;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v1, v1, Lr7/i;->a:Lr7/e;

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Lq7/h1;->A(Ljava/util/concurrent/Executor;)Lm6/Task;

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lq7/r$d$a;->a:Lq7/r$d;

    .line 47
    .line 48
    iget-object p1, p1, Lq7/r$d;->b:Lq7/r;

    .line 49
    .line 50
    iget-object p1, p1, Lq7/r;->r:Lm6/l;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lm6/l;->e(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lm6/n;->e(Ljava/lang/Object;)Lm6/Task;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1
.end method
