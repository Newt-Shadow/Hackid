.class abstract Lm5/i1;
.super Lm5/q0;
.source "SourceFile"


# instance fields
.field protected final b:Lm6/l;


# direct methods
.method public constructor <init>(ILm6/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lm5/q0;-><init>(I)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lm5/i1;->b:Lm6/l;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/b;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lm5/i1;->b:Lm6/l;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lm6/l;->d(Ljava/lang/Exception;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm5/i1;->b:Lm6/l;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lm6/l;->d(Ljava/lang/Exception;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Lm5/i0;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lm5/i1;->h(Lm5/i0;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    move-exception p1

    .line 6
    iget-object v0, p0, Lm5/i1;->b:Lm6/l;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lm6/l;->d(Ljava/lang/Exception;)Z

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_1
    move-exception p1

    .line 13
    invoke-static {p1}, Lm5/n1;->e(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Lm5/i1;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catch_2
    move-exception p1

    .line 22
    invoke-static {p1}, Lm5/n1;->e(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0, v0}, Lm5/i1;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method protected abstract h(Lm5/i0;)V
.end method
