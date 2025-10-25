.class final Lcom/google/android/gms/internal/auth/s3;
.super Lcom/google/android/gms/internal/auth/p3;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/p3;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/auth/b2;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/auth/b2;->zzc:Lcom/google/android/gms/internal/auth/r3;

    .line 4
    .line 5
    return-object p1
.end method

.method final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/auth/r3;->a()Lcom/google/android/gms/internal/auth/r3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/auth/r3;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/auth/r3;->a()Lcom/google/android/gms/internal/auth/r3;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/r3;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    check-cast p2, Lcom/google/android/gms/internal/auth/r3;

    .line 22
    .line 23
    check-cast p1, Lcom/google/android/gms/internal/auth/r3;

    .line 24
    .line 25
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/auth/r3;->c(Lcom/google/android/gms/internal/auth/r3;Lcom/google/android/gms/internal/auth/r3;)Lcom/google/android/gms/internal/auth/r3;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    check-cast p2, Lcom/google/android/gms/internal/auth/r3;

    .line 31
    .line 32
    move-object v0, p1

    .line 33
    check-cast v0, Lcom/google/android/gms/internal/auth/r3;

    .line 34
    .line 35
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/auth/r3;->b(Lcom/google/android/gms/internal/auth/r3;)Lcom/google/android/gms/internal/auth/r3;

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-object p1
.end method

.method final c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/auth/b2;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/auth/b2;->zzc:Lcom/google/android/gms/internal/auth/r3;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth/r3;->f()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method final synthetic d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/auth/b2;

    .line 2
    .line 3
    check-cast p2, Lcom/google/android/gms/internal/auth/r3;

    .line 4
    .line 5
    iput-object p2, p1, Lcom/google/android/gms/internal/auth/b2;->zzc:Lcom/google/android/gms/internal/auth/r3;

    .line 6
    .line 7
    return-void
.end method
