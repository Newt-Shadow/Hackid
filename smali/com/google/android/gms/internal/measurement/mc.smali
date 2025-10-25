.class final Lcom/google/android/gms/internal/measurement/mc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/tc;


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/ic;

.field private final b:Lcom/google/android/gms/internal/measurement/ed;

.field private final c:Z

.field private final d:Lcom/google/android/gms/internal/measurement/va;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/ed;Lcom/google/android/gms/internal/measurement/va;Lcom/google/android/gms/internal/measurement/ic;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/mc;->b:Lcom/google/android/gms/internal/measurement/ed;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/mc;->c:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/mc;->d:Lcom/google/android/gms/internal/measurement/va;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/mc;->a:Lcom/google/android/gms/internal/measurement/ic;

    return-void
.end method

.method static i(Lcom/google/android/gms/internal/measurement/ed;Lcom/google/android/gms/internal/measurement/va;Lcom/google/android/gms/internal/measurement/ic;)Lcom/google/android/gms/internal/measurement/mc;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/mc;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/mc;-><init>(Lcom/google/android/gms/internal/measurement/ed;Lcom/google/android/gms/internal/measurement/va;Lcom/google/android/gms/internal/measurement/ic;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 2

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/hb;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/hb;->zzc:Lcom/google/android/gms/internal/measurement/fd;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fd;->g()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/mc;->c:Z

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    throw p1
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/mc;->b:Lcom/google/android/gms/internal/measurement/ed;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/vc;->d(Lcom/google/android/gms/internal/measurement/ed;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/mc;->c:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/mc;->d:Lcom/google/android/gms/internal/measurement/va;

    .line 11
    .line 12
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/vc;->c(Lcom/google/android/gms/internal/measurement/va;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Object;)I
    .locals 2

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/hb;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/hb;->zzc:Lcom/google/android/gms/internal/measurement/fd;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/mc;->c:Z

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    throw p1
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/mc;->b:Lcom/google/android/gms/internal/measurement/ed;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/ed;->b(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/mc;->d:Lcom/google/android/gms/internal/measurement/va;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/va;->a(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final f(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/y9;)V
    .locals 0

    .line 1
    move-object p2, p1

    .line 2
    check-cast p2, Lcom/google/android/gms/internal/measurement/hb;

    .line 3
    .line 4
    iget-object p3, p2, Lcom/google/android/gms/internal/measurement/hb;->zzc:Lcom/google/android/gms/internal/measurement/fd;

    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/fd;->a()Lcom/google/android/gms/internal/measurement/fd;

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
    invoke-static {}, Lcom/google/android/gms/internal/measurement/fd;->b()Lcom/google/android/gms/internal/measurement/fd;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    iput-object p3, p2, Lcom/google/android/gms/internal/measurement/hb;->zzc:Lcom/google/android/gms/internal/measurement/fd;

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

.method public final g(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/rd;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public final h(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/hb;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/hb;->zzc:Lcom/google/android/gms/internal/measurement/fd;

    .line 5
    .line 6
    check-cast p2, Lcom/google/android/gms/internal/measurement/hb;

    .line 7
    .line 8
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/hb;->zzc:Lcom/google/android/gms/internal/measurement/fd;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return p1

    .line 18
    :cond_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/measurement/mc;->c:Z

    .line 19
    .line 20
    if-nez p2, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    return p1

    .line 24
    :cond_1
    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    throw p1
.end method

.method public final zza()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/mc;->a:Lcom/google/android/gms/internal/measurement/ic;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/hb;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/google/android/gms/internal/measurement/hb;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/hb;->l()Lcom/google/android/gms/internal/measurement/hb;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ic;->b()Lcom/google/android/gms/internal/measurement/hc;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/hc;->q0()Lcom/google/android/gms/internal/measurement/ic;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method
