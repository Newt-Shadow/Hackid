.class final Lcom/google/android/gms/internal/play_billing/j3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/q3;


# instance fields
.field private final a:Lcom/google/android/gms/internal/play_billing/f3;

.field private final b:Lcom/google/android/gms/internal/play_billing/v3;

.field private final c:Z

.field private final d:Lcom/google/android/gms/internal/play_billing/r1;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/play_billing/v3;Lcom/google/android/gms/internal/play_billing/r1;Lcom/google/android/gms/internal/play_billing/f3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/j3;->b:Lcom/google/android/gms/internal/play_billing/v3;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/r1;->c(Lcom/google/android/gms/internal/play_billing/f3;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/j3;->c:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/j3;->d:Lcom/google/android/gms/internal/play_billing/r1;

    iput-object p3, p0, Lcom/google/android/gms/internal/play_billing/j3;->a:Lcom/google/android/gms/internal/play_billing/f3;

    return-void
.end method

.method static j(Lcom/google/android/gms/internal/play_billing/v3;Lcom/google/android/gms/internal/play_billing/r1;Lcom/google/android/gms/internal/play_billing/f3;)Lcom/google/android/gms/internal/play_billing/j3;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/j3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/j3;-><init>(Lcom/google/android/gms/internal/play_billing/v3;Lcom/google/android/gms/internal/play_billing/r1;Lcom/google/android/gms/internal/play_billing/f3;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/j3;->b:Lcom/google/android/gms/internal/play_billing/v3;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/v3;->g(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/j3;->d:Lcom/google/android/gms/internal/play_billing/r1;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/r1;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/j3;->d:Lcom/google/android/gms/internal/play_billing/r1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/r1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/u1;

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    throw p1
.end method

.method public final c(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/j3;->b:Lcom/google/android/gms/internal/play_billing/v3;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/v3;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/v3;->b(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-boolean v1, p0, Lcom/google/android/gms/internal/play_billing/j3;->c:Z

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/j3;->d:Lcom/google/android/gms/internal/play_billing/r1;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/r1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/u1;

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    throw p1
.end method

.method public final d(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/j3;->b:Lcom/google/android/gms/internal/play_billing/v3;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/v3;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-boolean v1, p0, Lcom/google/android/gms/internal/play_billing/j3;->c:Z

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/j3;->d:Lcom/google/android/gms/internal/play_billing/r1;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/r1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/u1;

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    throw p1
.end method

.method public final e(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/m4;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/play_billing/j3;->d:Lcom/google/android/gms/internal/play_billing/r1;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/r1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/u1;

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    throw p1
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/j3;->b:Lcom/google/android/gms/internal/play_billing/v3;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/s3;->v(Lcom/google/android/gms/internal/play_billing/v3;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/j3;->c:Z

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/j3;->d:Lcom/google/android/gms/internal/play_billing/r1;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/r1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/u1;

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    throw p1
.end method

.method public final g(Ljava/lang/Object;[BIILcom/google/android/gms/internal/play_billing/r0;)V
    .locals 0

    .line 1
    move-object p2, p1

    .line 2
    check-cast p2, Lcom/google/android/gms/internal/play_billing/b2;

    .line 3
    .line 4
    iget-object p3, p2, Lcom/google/android/gms/internal/play_billing/b2;->zzc:Lcom/google/android/gms/internal/play_billing/w3;

    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/w3;->c()Lcom/google/android/gms/internal/play_billing/w3;

    .line 7
    .line 8
    .line 9
    move-result-object p4

    .line 10
    if-eq p3, p4, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/w3;->f()Lcom/google/android/gms/internal/play_billing/w3;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    iput-object p3, p2, Lcom/google/android/gms/internal/play_billing/b2;->zzc:Lcom/google/android/gms/internal/play_billing/w3;

    .line 18
    .line 19
    :goto_0
    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    throw p1
.end method

.method public final h()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/j3;->a:Lcom/google/android/gms/internal/play_billing/f3;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/b2;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/google/android/gms/internal/play_billing/b2;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/b2;->m()Lcom/google/android/gms/internal/play_billing/b2;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/f3;->l()Lcom/google/android/gms/internal/play_billing/e3;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/e3;->h()Lcom/google/android/gms/internal/play_billing/f3;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public final i(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/j3;->b:Lcom/google/android/gms/internal/play_billing/v3;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/v3;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/play_billing/v3;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/j3;->c:Z

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/j3;->d:Lcom/google/android/gms/internal/play_billing/r1;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/r1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/u1;

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/j3;->d:Lcom/google/android/gms/internal/play_billing/r1;

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/r1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/u1;

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    throw p1
.end method
