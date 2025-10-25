.class public abstract Lcom/google/android/gms/common/api/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/gms/common/api/k;Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/h;
    .locals 2

    .line 1
    const-string v0, "Result must not be null"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ln5/q;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lcom/google/android/gms/common/api/k;->d()Lcom/google/android/gms/common/api/Status;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->n()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    xor-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    const-string v1, "Status code must not be SUCCESS"

    .line 17
    .line 18
    invoke-static {v0, v1}, Ln5/q;->b(ZLjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/google/android/gms/common/api/o;

    .line 22
    .line 23
    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/common/api/o;-><init>(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/k;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->f(Lcom/google/android/gms/common/api/k;)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public static b(Lcom/google/android/gms/common/api/k;Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/g;
    .locals 1

    .line 1
    const-string v0, "Result must not be null"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ln5/q;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/google/android/gms/common/api/p;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/p;-><init>(Lcom/google/android/gms/common/api/f;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->f(Lcom/google/android/gms/common/api/k;)V

    .line 12
    .line 13
    .line 14
    new-instance p0, Lm5/n;

    .line 15
    .line 16
    invoke-direct {p0, v0}, Lm5/n;-><init>(Lcom/google/android/gms/common/api/h;)V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public static c(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/h;
    .locals 1

    .line 1
    const-string v0, "Result must not be null"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ln5/q;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lm5/t;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lm5/t;-><init>(Lcom/google/android/gms/common/api/f;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->f(Lcom/google/android/gms/common/api/k;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
