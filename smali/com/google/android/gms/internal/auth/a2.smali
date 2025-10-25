.class public abstract Lcom/google/android/gms/internal/auth/a2;
.super Lcom/google/android/gms/internal/auth/z0;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/internal/auth/b2;

.field protected b:Lcom/google/android/gms/internal/auth/b2;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/auth/b2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/z0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/auth/a2;->a:Lcom/google/android/gms/internal/auth/b2;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth/b2;->n()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth/b2;->c()Lcom/google/android/gms/internal/auth/b2;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/auth/a2;->b:Lcom/google/android/gms/internal/auth/b2;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string v0, "Default instance must be immutable."

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/auth/a2;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/a2;->a:Lcom/google/android/gms/internal/auth/b2;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/auth/b2;->o(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/gms/internal/auth/a2;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/a2;->b()Lcom/google/android/gms/internal/auth/b2;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, v0, Lcom/google/android/gms/internal/auth/a2;->b:Lcom/google/android/gms/internal/auth/b2;

    .line 16
    .line 17
    return-object v0
.end method

.method public b()Lcom/google/android/gms/internal/auth/b2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/a2;->b:Lcom/google/android/gms/internal/auth/b2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/b2;->n()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/a2;->b:Lcom/google/android/gms/internal/auth/b2;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/a2;->b:Lcom/google/android/gms/internal/auth/b2;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/b2;->j()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/a2;->b:Lcom/google/android/gms/internal/auth/b2;

    .line 18
    .line 19
    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/a2;->a()Lcom/google/android/gms/internal/auth/a2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic g()Lcom/google/android/gms/internal/auth/y2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/a2;->b()Lcom/google/android/gms/internal/auth/b2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
