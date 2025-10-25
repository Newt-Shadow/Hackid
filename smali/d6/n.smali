.class public final Ld6/n;
.super Ld6/y;
.source "SourceFile"


# instance fields
.field private final K:Ld6/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/f$a;Lcom/google/android/gms/common/api/f$b;Ljava/lang/String;Ln5/e;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Ld6/y;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/f$a;Lcom/google/android/gms/common/api/f$b;Ljava/lang/String;Ln5/e;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Ld6/m;

    .line 5
    .line 6
    iget-object p3, p0, Ld6/y;->J:Ld6/t;

    .line 7
    .line 8
    invoke-direct {p2, p1, p3}, Ld6/m;-><init>(Landroid/content/Context;Ld6/t;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Ld6/n;->K:Ld6/m;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final S()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final g()V
    .locals 4

    .line 1
    iget-object v0, p0, Ld6/n;->K:Ld6/m;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Ln5/c;->a()Z

    .line 5
    .line 6
    .line 7
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    :try_start_1
    iget-object v1, p0, Ld6/n;->K:Ld6/m;

    .line 11
    .line 12
    invoke-virtual {v1}, Ld6/m;->f()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Ld6/n;->K:Ld6/m;

    .line 16
    .line 17
    invoke-virtual {v1}, Ld6/m;->g()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v1

    .line 22
    :try_start_2
    const-string v2, "LocationClientImpl"

    .line 23
    .line 24
    const-string v3, "Client disconnected before listeners could be cleaned up"

    .line 25
    .line 26
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    :goto_0
    invoke-super {p0}, Ln5/c;->g()V

    .line 30
    .line 31
    .line 32
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    throw v1
.end method

.method public final n0(Ld6/p;Lm5/j;Ld6/g;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld6/n;->K:Ld6/m;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Ld6/n;->K:Ld6/m;

    .line 5
    .line 6
    invoke-virtual {v1, p1, p2, p3}, Ld6/m;->c(Ld6/p;Lm5/j;Ld6/g;)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public final o0(Lm5/j$a;Ld6/g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld6/n;->K:Ld6/m;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ld6/m;->d(Lm5/j$a;Ld6/g;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final p0(Ljava/lang/String;)Landroid/location/Location;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln5/c;->l()[Ll5/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lg6/v;->c:Ll5/d;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/common/util/b;->b([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Ld6/n;->K:Ld6/m;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ld6/m;->a(Ljava/lang/String;)Landroid/location/Location;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    iget-object p1, p0, Ld6/n;->K:Ld6/m;

    .line 21
    .line 22
    invoke-virtual {p1}, Ld6/m;->b()Landroid/location/Location;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method
