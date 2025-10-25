.class Lq7/r$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm6/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq7/r$b;->a()Lm6/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lq7/r$b;


# direct methods
.method constructor <init>(Lq7/r$b;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq7/r$b$a;->b:Lq7/r$b;

    .line 2
    .line 3
    iput-object p2, p0, Lq7/r$b$a;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lm6/Task;
    .locals 0

    .line 1
    check-cast p1, Ly7/d;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lq7/r$b$a;->b(Ly7/d;)Lm6/Task;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public b(Ly7/d;)Lm6/Task;
    .locals 4

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
    const-string v1, "Received null app settings, cannot send reports at crash time."

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
    const/4 p1, 0x2

    .line 19
    new-array p1, p1, [Lm6/Task;

    .line 20
    .line 21
    iget-object v1, p0, Lq7/r$b$a;->b:Lq7/r$b;

    .line 22
    .line 23
    iget-object v1, v1, Lq7/r$b;->f:Lq7/r;

    .line 24
    .line 25
    invoke-static {v1}, Lq7/r;->l(Lq7/r;)Lm6/Task;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    aput-object v1, p1, v2

    .line 31
    .line 32
    iget-object v1, p0, Lq7/r$b$a;->b:Lq7/r$b;

    .line 33
    .line 34
    iget-object v1, v1, Lq7/r$b;->f:Lq7/r;

    .line 35
    .line 36
    invoke-static {v1}, Lq7/r;->g(Lq7/r;)Lq7/h1;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v2, p0, Lq7/r$b$a;->b:Lq7/r$b;

    .line 41
    .line 42
    iget-object v2, v2, Lq7/r$b;->f:Lq7/r;

    .line 43
    .line 44
    invoke-static {v2}, Lq7/r;->k(Lq7/r;)Lr7/i;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iget-object v2, v2, Lr7/i;->a:Lr7/e;

    .line 49
    .line 50
    iget-object v3, p0, Lq7/r$b$a;->b:Lq7/r$b;

    .line 51
    .line 52
    iget-boolean v3, v3, Lq7/r$b;->e:Z

    .line 53
    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    iget-object v0, p0, Lq7/r$b$a;->a:Ljava/lang/String;

    .line 57
    .line 58
    :cond_1
    invoke-virtual {v1, v2, v0}, Lq7/h1;->B(Ljava/util/concurrent/Executor;Ljava/lang/String;)Lm6/Task;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const/4 v1, 0x1

    .line 63
    aput-object v0, p1, v1

    .line 64
    .line 65
    invoke-static {p1}, Lm6/n;->g([Lm6/Task;)Lm6/Task;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1
.end method
