.class final Lcom/android/billingclient/api/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/i0;


# instance fields
.field private final b:Lcom/google/android/gms/internal/play_billing/k5;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/android/billingclient/api/l0;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/k5;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/billingclient/api/l0;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/android/billingclient/api/l0;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/billingclient/api/k0;->d:Lcom/android/billingclient/api/l0;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/billingclient/api/k0;->b:Lcom/google/android/gms/internal/play_billing/k5;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/billingclient/api/k0;->c:Landroid/content/Context;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/q1;->a()Lcom/google/android/gms/internal/play_billing/q1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/g5;->C([BLcom/google/android/gms/internal/play_billing/q1;)Lcom/google/android/gms/internal/play_billing/g5;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/k0;->g(Lcom/google/android/gms/internal/play_billing/g5;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    const-string v0, "BillingLogger"

    .line 15
    .line 16
    const-string v1, "Unable to log."

    .line 17
    .line 18
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/b0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final b(ILjava/util/List;Ljava/util/List;Lcom/android/billingclient/api/h;ZZ)V
    .locals 1

    .line 1
    const-string p1, "BillingLogger"

    .line 2
    .line 3
    :try_start_0
    sget p5, Lcom/android/billingclient/api/h0;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/g5;->J()Lcom/google/android/gms/internal/play_billing/e5;

    .line 6
    .line 7
    .line 8
    move-result-object p5

    .line 9
    const/4 v0, 0x4

    .line 10
    invoke-virtual {p5, v0}, Lcom/google/android/gms/internal/play_billing/e5;->q(I)Lcom/google/android/gms/internal/play_billing/e5;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p5, p2}, Lcom/google/android/gms/internal/play_billing/e5;->j(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/play_billing/e5;

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-virtual {p5, p2}, Lcom/google/android/gms/internal/play_billing/e5;->p(Z)Lcom/google/android/gms/internal/play_billing/e5;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p5, p6}, Lcom/google/android/gms/internal/play_billing/e5;->o(Z)Lcom/google/android/gms/internal/play_billing/e5;

    .line 21
    .line 22
    .line 23
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    if-eqz p3, :cond_0

    .line 32
    .line 33
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    check-cast p3, Lcom/android/billingclient/api/Purchase;

    .line 38
    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/x5;->F()Lcom/google/android/gms/internal/play_billing/w5;

    .line 40
    .line 41
    .line 42
    move-result-object p6

    .line 43
    invoke-virtual {p3}, Lcom/android/billingclient/api/Purchase;->f()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p6, v0}, Lcom/google/android/gms/internal/play_billing/w5;->j(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/play_billing/w5;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3}, Lcom/android/billingclient/api/Purchase;->g()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-virtual {p6, v0}, Lcom/google/android/gms/internal/play_billing/w5;->n(I)Lcom/google/android/gms/internal/play_billing/w5;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3}, Lcom/android/billingclient/api/Purchase;->e()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    invoke-virtual {p6, p3}, Lcom/google/android/gms/internal/play_billing/w5;->m(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/w5;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p5, p6}, Lcom/google/android/gms/internal/play_billing/e5;->m(Lcom/google/android/gms/internal/play_billing/w5;)Lcom/google/android/gms/internal/play_billing/e5;

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/z4;->G()Lcom/google/android/gms/internal/play_billing/v4;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p4}, Lcom/android/billingclient/api/h;->b()I

    .line 73
    .line 74
    .line 75
    move-result p3

    .line 76
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/v4;->n(I)Lcom/google/android/gms/internal/play_billing/v4;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p4}, Lcom/android/billingclient/api/h;->a()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/v4;->m(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/v4;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p5, p2}, Lcom/google/android/gms/internal/play_billing/e5;->n(Lcom/google/android/gms/internal/play_billing/v4;)Lcom/google/android/gms/internal/play_billing/e5;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p5}, Lcom/google/android/gms/internal/play_billing/y1;->c()Lcom/google/android/gms/internal/play_billing/b2;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    check-cast p2, Lcom/google/android/gms/internal/play_billing/g5;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :catch_0
    move-exception p2

    .line 97
    :try_start_2
    const-string p3, "Unable to create logging payload"

    .line 98
    .line 99
    invoke-static {p1, p3, p2}, Lcom/google/android/gms/internal/play_billing/b0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    const/4 p2, 0x0

    .line 103
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/billingclient/api/k0;->g(Lcom/google/android/gms/internal/play_billing/g5;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :catchall_0
    move-exception p2

    .line 108
    const-string p3, "Unable to log."

    .line 109
    .line 110
    invoke-static {p1, p3, p2}, Lcom/google/android/gms/internal/play_billing/b0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/play_billing/t4;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/u5;->I()Lcom/google/android/gms/internal/play_billing/t5;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/billingclient/api/k0;->b:Lcom/google/android/gms/internal/play_billing/k5;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/t5;->o(Lcom/google/android/gms/internal/play_billing/k5;)Lcom/google/android/gms/internal/play_billing/t5;

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/t5;->m(Lcom/google/android/gms/internal/play_billing/t4;)Lcom/google/android/gms/internal/play_billing/t5;

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/billingclient/api/k0;->d:Lcom/android/billingclient/api/l0;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/y1;->c()Lcom/google/android/gms/internal/play_billing/b2;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/google/android/gms/internal/play_billing/u5;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/l0;->a(Lcom/google/android/gms/internal/play_billing/u5;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    const-string v0, "BillingLogger"

    .line 32
    .line 33
    const-string v1, "Unable to log."

    .line 34
    .line 35
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/b0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final d(ILjava/util/List;ZZ)V
    .locals 1

    .line 1
    const-string p3, "BillingLogger"

    .line 2
    .line 3
    :try_start_0
    sget v0, Lcom/android/billingclient/api/h0;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/g5;->J()Lcom/google/android/gms/internal/play_billing/e5;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/e5;->q(I)Lcom/google/android/gms/internal/play_billing/e5;

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/e5;->p(Z)Lcom/google/android/gms/internal/play_billing/e5;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/play_billing/e5;->o(Z)Lcom/google/android/gms/internal/play_billing/e5;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/play_billing/e5;->j(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/play_billing/e5;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/y1;->c()Lcom/google/android/gms/internal/play_billing/b2;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/google/android/gms/internal/play_billing/g5;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p1

    .line 30
    :try_start_2
    const-string p2, "Unable to create logging payload"

    .line 31
    .line 32
    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/play_billing/b0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/k0;->g(Lcom/google/android/gms/internal/play_billing/g5;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    const-string p2, "Unable to log."

    .line 42
    .line 43
    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/play_billing/b0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/play_billing/p4;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/u5;->I()Lcom/google/android/gms/internal/play_billing/t5;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/billingclient/api/k0;->b:Lcom/google/android/gms/internal/play_billing/k5;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/t5;->o(Lcom/google/android/gms/internal/play_billing/k5;)Lcom/google/android/gms/internal/play_billing/t5;

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/t5;->j(Lcom/google/android/gms/internal/play_billing/p4;)Lcom/google/android/gms/internal/play_billing/t5;

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/billingclient/api/k0;->d:Lcom/android/billingclient/api/l0;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/y1;->c()Lcom/google/android/gms/internal/play_billing/b2;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/google/android/gms/internal/play_billing/u5;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/l0;->a(Lcom/google/android/gms/internal/play_billing/u5;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    const-string v0, "BillingLogger"

    .line 32
    .line 33
    const-string v1, "Unable to log."

    .line 34
    .line 35
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/b0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/play_billing/b6;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/u5;->I()Lcom/google/android/gms/internal/play_billing/t5;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/billingclient/api/k0;->b:Lcom/google/android/gms/internal/play_billing/k5;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/t5;->o(Lcom/google/android/gms/internal/play_billing/k5;)Lcom/google/android/gms/internal/play_billing/t5;

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/t5;->q(Lcom/google/android/gms/internal/play_billing/b6;)Lcom/google/android/gms/internal/play_billing/t5;

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/billingclient/api/k0;->d:Lcom/android/billingclient/api/l0;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/y1;->c()Lcom/google/android/gms/internal/play_billing/b2;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/google/android/gms/internal/play_billing/u5;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/l0;->a(Lcom/google/android/gms/internal/play_billing/u5;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    const-string v0, "BillingLogger"

    .line 32
    .line 33
    const-string v1, "Unable to log."

    .line 34
    .line 35
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/b0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method final g(Lcom/google/android/gms/internal/play_billing/g5;)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_4

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/k0;->b:Lcom/google/android/gms/internal/play_billing/k5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v0, :cond_6

    .line 7
    .line 8
    :try_start_1
    iget-object v0, p0, Lcom/android/billingclient/api/k0;->c:Landroid/content/Context;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    move-object v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_2
    const-string v1, "android_id"

    .line 23
    .line 24
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :goto_1
    const/4 v0, 0x0

    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    move v1, v0

    .line 32
    goto :goto_2

    .line 33
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/i0;->a()Lcom/google/android/gms/internal/play_billing/f0;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/play_billing/f0;->a(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/play_billing/e0;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/e0;->a()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    :goto_2
    rem-int/lit8 v1, v1, 0x64

    .line 46
    .line 47
    int-to-long v1, v1

    .line 48
    sget v3, Lcom/google/android/gms/internal/play_billing/m0;->b:I

    .line 49
    .line 50
    const-wide/16 v3, 0x64

    .line 51
    .line 52
    rem-long/2addr v1, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    const-wide/16 v5, 0x0

    .line 54
    .line 55
    cmp-long v7, v1, v5

    .line 56
    .line 57
    if-ltz v7, :cond_4

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_4
    add-long/2addr v1, v3

    .line 61
    :goto_3
    long-to-int v1, v1

    .line 62
    int-to-long v1, v1

    .line 63
    cmp-long v1, v1, v5

    .line 64
    .line 65
    if-gez v1, :cond_6

    .line 66
    .line 67
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/u5;->I()Lcom/google/android/gms/internal/play_billing/t5;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iget-object v2, p0, Lcom/android/billingclient/api/k0;->b:Lcom/google/android/gms/internal/play_billing/k5;

    .line 72
    .line 73
    if-eqz v2, :cond_5

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/t5;->o(Lcom/google/android/gms/internal/play_billing/k5;)Lcom/google/android/gms/internal/play_billing/t5;

    .line 76
    .line 77
    .line 78
    :cond_5
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/play_billing/t5;->n(Lcom/google/android/gms/internal/play_billing/g5;)Lcom/google/android/gms/internal/play_billing/t5;

    .line 79
    .line 80
    .line 81
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/n5;->D()Lcom/google/android/gms/internal/play_billing/m5;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object v2, p0, Lcom/android/billingclient/api/k0;->c:Landroid/content/Context;

    .line 86
    .line 87
    invoke-static {v2}, Lcom/android/billingclient/api/z0;->a(Landroid/content/Context;)Z

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/play_billing/m5;->j(Z)Lcom/google/android/gms/internal/play_billing/m5;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/play_billing/t5;->p(Lcom/google/android/gms/internal/play_billing/m5;)Lcom/google/android/gms/internal/play_billing/t5;

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/android/billingclient/api/k0;->d:Lcom/android/billingclient/api/l0;

    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/y1;->c()Lcom/google/android/gms/internal/play_billing/b2;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Lcom/google/android/gms/internal/play_billing/u5;

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/l0;->a(Lcom/google/android/gms/internal/play_billing/u5;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    .line 106
    .line 107
    :catch_0
    :cond_6
    :goto_4
    return-void

    .line 108
    :catchall_0
    move-exception p1

    .line 109
    const-string v0, "BillingLogger"

    .line 110
    .line 111
    const-string v1, "Unable to log."

    .line 112
    .line 113
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/b0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method
