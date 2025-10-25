.class public Lcom/google/android/gms/auth/api/signin/b;
.super Lcom/google/android/gms/common/api/e;
.source "SourceFile"


# static fields
.field private static final k:Lcom/google/android/gms/auth/api/signin/f;

.field static l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/auth/api/signin/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/f;-><init>(Lh5/e;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/android/gms/auth/api/signin/b;->k:Lcom/google/android/gms/auth/api/signin/f;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    sput v0, Lcom/google/android/gms/auth/api/signin/b;->l:I

    .line 11
    .line 12
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 2

    .line 1
    sget-object v0, Le5/a;->b:Lcom/google/android/gms/common/api/a;

    new-instance v1, Lm5/a;

    invoke-direct {v1}, Lm5/a;-><init>()V

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/e;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lm5/s;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 3

    .line 2
    sget-object v0, Le5/a;->b:Lcom/google/android/gms/common/api/a;

    new-instance v1, Lcom/google/android/gms/common/api/e$a$a;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/e$a$a;-><init>()V

    new-instance v2, Lm5/a;

    invoke-direct {v2}, Lm5/a;-><init>()V

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/e$a$a;->c(Lm5/s;)Lcom/google/android/gms/common/api/e$a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/e$a$a;->a()Lcom/google/android/gms/common/api/e$a;

    move-result-object v1

    .line 4
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/e;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/e$a;)V

    return-void
.end method

.method private final declared-synchronized D()I
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget v0, Lcom/google/android/gms/auth/api/signin/b;->l:I

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-ne v0, v1, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->r()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Ll5/f;->m()Ll5/f;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const v2, 0xbdfcb8

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0, v2}, Ll5/f;->h(Landroid/content/Context;I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x4

    .line 25
    sput v0, Lcom/google/android/gms/auth/api/signin/b;->l:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v3, 0x0

    .line 29
    invoke-virtual {v1, v0, v2, v3}, Ll5/f;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    const-string v1, "com.google.android.gms.auth.api.fallback"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    const/4 v0, 0x3

    .line 44
    sput v0, Lcom/google/android/gms/auth/api/signin/b;->l:I

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x2

    .line 48
    sput v0, Lcom/google/android/gms/auth/api/signin/b;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    :cond_2
    :goto_0
    monitor-exit p0

    .line 51
    return v0

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    monitor-exit p0

    .line 54
    throw v0
.end method


# virtual methods
.method public A()Lm6/Task;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->e()Lcom/google/android/gms/common/api/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->r()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/b;->D()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x3

    .line 14
    if-ne v2, v3, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    :goto_0
    invoke-static {v0, v1, v2}, Li5/q;->f(Lcom/google/android/gms/common/api/f;Landroid/content/Context;Z)Lcom/google/android/gms/common/api/h;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Ln5/p;->b(Lcom/google/android/gms/common/api/h;)Lm6/Task;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public B()Lm6/Task;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->e()Lcom/google/android/gms/common/api/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->r()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/b;->D()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x3

    .line 14
    if-ne v2, v3, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    :goto_0
    invoke-static {v0, v1, v2}, Li5/q;->g(Lcom/google/android/gms/common/api/f;Landroid/content/Context;Z)Lcom/google/android/gms/common/api/h;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Ln5/p;->b(Lcom/google/android/gms/common/api/h;)Lm6/Task;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public C()Lm6/Task;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->e()Lcom/google/android/gms/common/api/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->r()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->q()Lcom/google/android/gms/common/api/a$d;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/b;->D()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x3

    .line 20
    if-ne v3, v4, :cond_0

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v3, 0x0

    .line 25
    :goto_0
    invoke-static {v0, v1, v2, v3}, Li5/q;->e(Lcom/google/android/gms/common/api/f;Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Z)Lcom/google/android/gms/common/api/g;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget-object v1, Lcom/google/android/gms/auth/api/signin/b;->k:Lcom/google/android/gms/auth/api/signin/f;

    .line 30
    .line 31
    invoke-static {v0, v1}, Ln5/p;->a(Lcom/google/android/gms/common/api/h;Ln5/p$a;)Lm6/Task;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method public z()Landroid/content/Intent;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->r()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/b;->D()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit8 v2, v1, -0x1

    .line 10
    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-eq v2, v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    if-eq v2, v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->q()Lcom/google/android/gms/common/api/a$d;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 24
    .line 25
    invoke-static {v0, v1}, Li5/q;->b(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->q()Lcom/google/android/gms/common/api/a$d;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 35
    .line 36
    invoke-static {v0, v1}, Li5/q;->c(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->q()Lcom/google/android/gms/common/api/a$d;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 46
    .line 47
    invoke-static {v0, v1}, Li5/q;->a(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0

    .line 52
    :cond_2
    const/4 v0, 0x0

    .line 53
    throw v0
.end method
