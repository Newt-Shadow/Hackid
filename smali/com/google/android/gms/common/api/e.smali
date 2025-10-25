.class public abstract Lcom/google/android/gms/common/api/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/e$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/common/api/a;

.field private final d:Lcom/google/android/gms/common/api/a$d;

.field private final e:Lm5/b;

.field private final f:Landroid/os/Looper;

.field private final g:I

.field private final h:Lcom/google/android/gms/common/api/f;

.field private final i:Lm5/s;

.field protected final j:Lm5/e;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/e$a;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/api/e;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/e$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lm5/s;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/google/android/gms/common/api/e$a$a;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/e$a$a;-><init>()V

    invoke-virtual {v0, p4}, Lcom/google/android/gms/common/api/e$a$a;->c(Lm5/s;)Lcom/google/android/gms/common/api/e$a$a;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/google/android/gms/common/api/e$a$a;->b(Landroid/os/Looper;)Lcom/google/android/gms/common/api/e$a$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/e$a$a;->a()Lcom/google/android/gms/common/api/e$a;

    move-result-object p4

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/e;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/e$a;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/e$a;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Ln5/q;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    .line 5
    invoke-static {p3, v0}, Ln5/q;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    .line 6
    invoke-static {p5, v0}, Ln5/q;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "The provided context did not have an application context."

    .line 8
    invoke-static {v0, v1}, Ln5/q;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/common/api/e;->a:Landroid/content/Context;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/common/api/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/e;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 11
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/common/api/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/common/api/e;->c:Lcom/google/android/gms/common/api/a;

    iput-object p4, p0, Lcom/google/android/gms/common/api/e;->d:Lcom/google/android/gms/common/api/a$d;

    .line 12
    iget-object v1, p5, Lcom/google/android/gms/common/api/e$a;->b:Landroid/os/Looper;

    iput-object v1, p0, Lcom/google/android/gms/common/api/e;->f:Landroid/os/Looper;

    .line 13
    invoke-static {p3, p4, p1}, Lm5/b;->a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)Lm5/b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/e;->e:Lm5/b;

    .line 14
    new-instance p3, Lm5/n0;

    invoke-direct {p3, p0}, Lm5/n0;-><init>(Lcom/google/android/gms/common/api/e;)V

    iput-object p3, p0, Lcom/google/android/gms/common/api/e;->h:Lcom/google/android/gms/common/api/f;

    .line 15
    invoke-static {v0}, Lm5/e;->u(Landroid/content/Context;)Lm5/e;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/common/api/e;->j:Lm5/e;

    .line 16
    invoke-virtual {p3}, Lm5/e;->l()I

    move-result p4

    iput p4, p0, Lcom/google/android/gms/common/api/e;->g:I

    .line 17
    iget-object p4, p5, Lcom/google/android/gms/common/api/e$a;->a:Lm5/s;

    iput-object p4, p0, Lcom/google/android/gms/common/api/e;->i:Lm5/s;

    if-eqz p2, :cond_1

    instance-of p4, p2, Lcom/google/android/gms/common/api/GoogleApiActivity;

    if-nez p4, :cond_1

    .line 18
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p5

    if-ne p4, p5, :cond_1

    .line 19
    invoke-static {p2, p3, p1}, Lm5/a0;->u(Landroid/app/Activity;Lm5/e;Lm5/b;)V

    .line 20
    :cond_1
    invoke-virtual {p3, p0}, Lm5/e;->H(Lcom/google/android/gms/common/api/e;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/e$a;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 21
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/api/e;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/e$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lm5/s;)V
    .locals 1

    .line 22
    new-instance v0, Lcom/google/android/gms/common/api/e$a$a;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/e$a$a;-><init>()V

    invoke-virtual {v0, p4}, Lcom/google/android/gms/common/api/e$a$a;->c(Lm5/s;)Lcom/google/android/gms/common/api/e$a$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/e$a$a;->a()Lcom/google/android/gms/common/api/e$a;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/e;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/e$a;)V

    return-void
.end method

.method private final x(ILcom/google/android/gms/common/api/internal/a;)Lcom/google/android/gms/common/api/internal/a;
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->i()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->j:Lm5/e;

    .line 5
    .line 6
    invoke-virtual {v0, p0, p1, p2}, Lm5/e;->C(Lcom/google/android/gms/common/api/e;ILcom/google/android/gms/common/api/internal/a;)V

    .line 7
    .line 8
    .line 9
    return-object p2
.end method

.method private final y(ILm5/u;)Lm6/Task;
    .locals 7

    .line 1
    new-instance v6, Lm6/l;

    .line 2
    .line 3
    invoke-direct {v6}, Lm6/l;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v5, p0, Lcom/google/android/gms/common/api/e;->i:Lm5/s;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->j:Lm5/e;

    .line 9
    .line 10
    move-object v1, p0

    .line 11
    move v2, p1

    .line 12
    move-object v3, p2

    .line 13
    move-object v4, v6

    .line 14
    invoke-virtual/range {v0 .. v5}, Lm5/e;->D(Lcom/google/android/gms/common/api/e;ILm5/u;Lm6/l;Lm5/s;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v6}, Lm6/l;->a()Lm6/Task;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method


# virtual methods
.method public e()Lcom/google/android/gms/common/api/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->h:Lcom/google/android/gms/common/api/f;

    return-object v0
.end method

.method protected f()Ln5/e$a;
    .locals 2

    .line 1
    new-instance v0, Ln5/e$a;

    .line 2
    .line 3
    invoke-direct {v0}, Ln5/e$a;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Ln5/e$a;->d(Landroid/accounts/Account;)Ln5/e$a;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ln5/e$a;->c(Ljava/util/Collection;)Ln5/e$a;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/gms/common/api/e;->a:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ln5/e$a;->e(Ljava/lang/String;)Ln5/e$a;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/google/android/gms/common/api/e;->a:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ln5/e$a;->b(Ljava/lang/String;)Ln5/e$a;

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method public g(Lm5/u;)Lm6/Task;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/e;->y(ILm5/u;)Lm6/Task;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public h(Lcom/google/android/gms/common/api/internal/a;)Lcom/google/android/gms/common/api/internal/a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/e;->x(ILcom/google/android/gms/common/api/internal/a;)Lcom/google/android/gms/common/api/internal/a;

    .line 3
    .line 4
    .line 5
    return-object p1
.end method

.method public i(Lm5/u;)Lm6/Task;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/e;->y(ILm5/u;)Lm6/Task;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public j(Lm5/p;)Lm6/Task;
    .locals 3

    .line 1
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lm5/p;->a:Lm5/o;

    .line 5
    .line 6
    invoke-virtual {v0}, Lm5/o;->b()Lm5/j$a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "Listener has already been released."

    .line 11
    .line 12
    invoke-static {v0, v1}, Ln5/q;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iget-object v0, p1, Lm5/p;->b:Lm5/w;

    .line 16
    .line 17
    invoke-virtual {v0}, Lm5/w;->a()Lm5/j$a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0, v1}, Ln5/q;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iget-object v0, p1, Lm5/p;->a:Lm5/o;

    .line 25
    .line 26
    iget-object v1, p1, Lm5/p;->b:Lm5/w;

    .line 27
    .line 28
    iget-object p1, p1, Lm5/p;->c:Ljava/lang/Runnable;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/google/android/gms/common/api/e;->j:Lm5/e;

    .line 31
    .line 32
    invoke-virtual {v2, p0, v0, v1, p1}, Lm5/e;->w(Lcom/google/android/gms/common/api/e;Lm5/o;Lm5/w;Ljava/lang/Runnable;)Lm6/Task;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method

.method public k(Lm5/j$a;)Lm6/Task;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/e;->l(Lm5/j$a;I)Lm6/Task;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public l(Lm5/j$a;I)Lm6/Task;
    .locals 1

    .line 1
    const-string v0, "Listener key cannot be null."

    .line 2
    .line 3
    invoke-static {p1, v0}, Ln5/q;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->j:Lm5/e;

    .line 7
    .line 8
    invoke-virtual {v0, p0, p1, p2}, Lm5/e;->x(Lcom/google/android/gms/common/api/e;Lm5/j$a;I)Lm6/Task;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public m(Lcom/google/android/gms/common/api/internal/a;)Lcom/google/android/gms/common/api/internal/a;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/e;->x(ILcom/google/android/gms/common/api/internal/a;)Lcom/google/android/gms/common/api/internal/a;

    .line 3
    .line 4
    .line 5
    return-object p1
.end method

.method public n(Lm5/u;)Lm6/Task;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/e;->y(ILm5/u;)Lm6/Task;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method protected o(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final p()Lm5/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->e:Lm5/b;

    return-object v0
.end method

.method public q()Lcom/google/android/gms/common/api/a$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->d:Lcom/google/android/gms/common/api/a$d;

    return-object v0
.end method

.method public r()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->a:Landroid/content/Context;

    return-object v0
.end method

.method protected s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public t()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->f:Landroid/os/Looper;

    return-object v0
.end method

.method public final u()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/common/api/e;->g:I

    return v0
.end method

.method public final v(Landroid/os/Looper;Lm5/i0;)Lcom/google/android/gms/common/api/a$f;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->f()Ln5/e$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ln5/e$a;->a()Ln5/e;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->c:Lcom/google/android/gms/common/api/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->a()Lcom/google/android/gms/common/api/a$a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    move-object v1, v0

    .line 20
    check-cast v1, Lcom/google/android/gms/common/api/a$a;

    .line 21
    .line 22
    iget-object v5, p0, Lcom/google/android/gms/common/api/e;->d:Lcom/google/android/gms/common/api/a$d;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/google/android/gms/common/api/e;->a:Landroid/content/Context;

    .line 25
    .line 26
    move-object v3, p1

    .line 27
    move-object v6, p2

    .line 28
    move-object v7, p2

    .line 29
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/common/api/a$a;->a(Landroid/content/Context;Landroid/os/Looper;Ln5/e;Ljava/lang/Object;Lcom/google/android/gms/common/api/f$a;Lcom/google/android/gms/common/api/f$b;)Lcom/google/android/gms/common/api/a$f;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->s()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    if-eqz p2, :cond_0

    .line 38
    .line 39
    instance-of v0, p1, Ln5/c;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    move-object v0, p1

    .line 44
    check-cast v0, Ln5/c;

    .line 45
    .line 46
    invoke-virtual {v0, p2}, Ln5/c;->P(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    if-eqz p2, :cond_2

    .line 50
    .line 51
    instance-of p2, p1, Lm5/l;

    .line 52
    .line 53
    if-nez p2, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    check-cast p1, Lm5/l;

    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    throw p1

    .line 60
    :cond_2
    :goto_0
    return-object p1
.end method

.method public final w(Landroid/content/Context;Landroid/os/Handler;)Lm5/e1;
    .locals 2

    .line 1
    new-instance v0, Lm5/e1;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->f()Ln5/e$a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ln5/e$a;->a()Ln5/e;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, p1, p2, v1}, Lm5/e1;-><init>(Landroid/content/Context;Landroid/os/Handler;Ln5/e;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
