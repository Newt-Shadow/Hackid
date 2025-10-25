.class public Li7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li7/a;


# static fields
.field private static volatile c:Li7/a;


# instance fields
.field final a:Lh6/a;

.field final b:Ljava/util/Map;


# direct methods
.method constructor <init>(Lh6/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Li7/b;->a:Lh6/a;

    .line 8
    .line 9
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Li7/b;->b:Ljava/util/Map;

    .line 15
    .line 16
    return-void
.end method

.method public static d(Lh7/f;Landroid/content/Context;Lh8/d;)Li7/a;
    .locals 5

    .line 1
    invoke-static {p0}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    sget-object v0, Li7/b;->c:Li7/a;

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    const-class v0, Li7/b;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Li7/b;->c:Li7/a;

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    new-instance v1, Landroid/os/Bundle;

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lh7/f;->y()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    const-class v2, Lh7/b;

    .line 41
    .line 42
    sget-object v3, Li7/d;->a:Li7/d;

    .line 43
    .line 44
    sget-object v4, Li7/c;->a:Li7/c;

    .line 45
    .line 46
    invoke-interface {p2, v2, v3, v4}, Lh8/d;->c(Ljava/lang/Class;Ljava/util/concurrent/Executor;Lh8/b;)V

    .line 47
    .line 48
    .line 49
    const-string p2, "dataCollectionDefaultEnabled"

    .line 50
    .line 51
    invoke-virtual {p0}, Lh7/f;->x()Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    invoke-virtual {v1, p2, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    :cond_0
    new-instance p0, Li7/b;

    .line 59
    .line 60
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/a4;->s(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/a4;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/a4;->t()Lh6/a;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {p0, p1}, Li7/b;-><init>(Lh6/a;)V

    .line 69
    .line 70
    .line 71
    sput-object p0, Li7/b;->c:Li7/a;

    .line 72
    .line 73
    :cond_1
    monitor-exit v0

    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw p0

    .line 78
    :cond_2
    :goto_0
    sget-object p0, Li7/b;->c:Li7/a;

    .line 79
    .line 80
    return-object p0
.end method

.method static synthetic e(Lh8/a;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lh8/a;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lh7/b;

    .line 6
    .line 7
    iget-boolean p0, p0, Lh7/b;->a:Z

    .line 8
    .line 9
    const-class v0, Li7/b;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    sget-object v1, Li7/b;->c:Li7/a;

    .line 13
    .line 14
    invoke-static {v1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Li7/b;

    .line 19
    .line 20
    iget-object v1, v1, Li7/b;->a:Lh6/a;

    .line 21
    .line 22
    invoke-virtual {v1, p0}, Lh6/a;->d(Z)V

    .line 23
    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method private final f(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Li7/b;->b:Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Li7/a$b;)Li7/a$a;
    .locals 3

    .line 1
    invoke-static {p2}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/firebase/analytics/connector/internal/b;->a(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-direct {p0, p1}, Li7/b;->f(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_3

    .line 17
    .line 18
    iget-object v0, p0, Li7/b;->a:Lh6/a;

    .line 19
    .line 20
    const-string v2, "fiam"

    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    new-instance v2, Lcom/google/firebase/analytics/connector/internal/d;

    .line 29
    .line 30
    invoke-direct {v2, v0, p2}, Lcom/google/firebase/analytics/connector/internal/d;-><init>(Lh6/a;Li7/a$b;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-string v2, "clx"

    .line 35
    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    new-instance v2, Lcom/google/firebase/analytics/connector/internal/f;

    .line 43
    .line 44
    invoke-direct {v2, v0, p2}, Lcom/google/firebase/analytics/connector/internal/f;-><init>(Lh6/a;Li7/a$b;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move-object v2, v1

    .line 49
    :goto_0
    if-eqz v2, :cond_3

    .line 50
    .line 51
    iget-object p2, p0, Li7/b;->b:Ljava/util/Map;

    .line 52
    .line 53
    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    new-instance p2, Li7/b$a;

    .line 57
    .line 58
    invoke-direct {p2, p0, p1}, Li7/b$a;-><init>(Li7/b;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object p2

    .line 62
    :cond_3
    :goto_1
    return-object v1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    new-instance p3, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p1}, Lcom/google/firebase/analytics/connector/internal/b;->a(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-static {p2, p3}, Lcom/google/firebase/analytics/connector/internal/b;->b(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    invoke-static {p1, p2, p3}, Lcom/google/firebase/analytics/connector/internal/b;->e(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    const-string v0, "clx"

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    const-string v0, "_ae"

    .line 36
    .line 37
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    const-string v0, "_r"

    .line 44
    .line 45
    const-wide/16 v1, 0x1

    .line 46
    .line 47
    invoke-virtual {p3, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object v0, p0, Li7/b;->a:Lh6/a;

    .line 51
    .line 52
    invoke-virtual {v0, p1, p2, p3}, Lh6/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/firebase/analytics/connector/internal/b;->a(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1, p2}, Lcom/google/firebase/analytics/connector/internal/b;->d(Ljava/lang/String;Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Li7/b;->a:Lh6/a;

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2, p3}, Lh6/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    return-void
.end method
