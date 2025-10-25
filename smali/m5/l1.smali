.class public final Lm5/l1;
.super Lm5/q0;
.source "SourceFile"


# instance fields
.field private final b:Lm5/u;

.field private final c:Lm6/l;

.field private final d:Lm5/s;


# direct methods
.method public constructor <init>(ILm5/u;Lm6/l;Lm5/s;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lm5/q0;-><init>(I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lm5/l1;->c:Lm6/l;

    .line 5
    .line 6
    iput-object p2, p0, Lm5/l1;->b:Lm5/u;

    .line 7
    .line 8
    iput-object p4, p0, Lm5/l1;->d:Lm5/s;

    .line 9
    .line 10
    const/4 p3, 0x2

    .line 11
    if-ne p1, p3, :cond_1

    .line 12
    .line 13
    invoke-virtual {p2}, Lm5/u;->c()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string p2, "Best-effort write calls cannot pass methods that should auto-resolve missing features."

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm5/l1;->d:Lm5/s;

    .line 2
    .line 3
    iget-object v1, p0, Lm5/l1;->c:Lm6/l;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lm5/s;->a(Lcom/google/android/gms/common/api/Status;)Ljava/lang/Exception;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v1, p1}, Lm6/l;->d(Ljava/lang/Exception;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm5/l1;->c:Lm6/l;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lm6/l;->d(Ljava/lang/Exception;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Lm5/i0;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lm5/l1;->b:Lm5/u;

    .line 2
    .line 3
    invoke-virtual {p1}, Lm5/i0;->v()Lcom/google/android/gms/common/api/a$f;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v1, p0, Lm5/l1;->c:Lm6/l;

    .line 8
    .line 9
    invoke-virtual {v0, p1, v1}, Lm5/u;->b(Lcom/google/android/gms/common/api/a$b;Lm6/l;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catch_0
    move-exception p1

    .line 14
    iget-object v0, p0, Lm5/l1;->c:Lm6/l;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lm6/l;->d(Ljava/lang/Exception;)Z

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catch_1
    move-exception p1

    .line 21
    invoke-static {p1}, Lm5/n1;->e(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lm5/l1;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catch_2
    move-exception p1

    .line 30
    throw p1
.end method

.method public final d(Lm5/z;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm5/l1;->c:Lm6/l;

    .line 2
    .line 3
    invoke-virtual {p1, v0, p2}, Lm5/z;->d(Lm6/l;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f(Lm5/i0;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lm5/l1;->b:Lm5/u;

    .line 2
    .line 3
    invoke-virtual {p1}, Lm5/u;->c()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final g(Lm5/i0;)[Ll5/d;
    .locals 0

    .line 1
    iget-object p1, p0, Lm5/l1;->b:Lm5/u;

    .line 2
    .line 3
    invoke-virtual {p1}, Lm5/u;->e()[Ll5/d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
