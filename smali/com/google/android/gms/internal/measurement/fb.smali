.class public abstract Lcom/google/android/gms/internal/measurement/fb;
.super Lcom/google/android/gms/internal/measurement/u9;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/hb;

.field protected b:Lcom/google/android/gms/internal/measurement/hb;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/measurement/hb;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/u9;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/fb;->a:Lcom/google/android/gms/internal/measurement/hb;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/hb;->j()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/hb;->l()Lcom/google/android/gms/internal/measurement/hb;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/fb;->b:Lcom/google/android/gms/internal/measurement/hb;

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

.method private static k(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/qc;->a()Lcom/google/android/gms/internal/measurement/qc;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/qc;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/tc;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/tc;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fb;->n()Lcom/google/android/gms/internal/measurement/fb;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic f([BII)Lcom/google/android/gms/internal/measurement/u9;
    .locals 1

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/measurement/ua;->c:Lcom/google/android/gms/internal/measurement/ua;

    .line 2
    .line 3
    sget p2, Lcom/google/android/gms/internal/measurement/qc;->d:I

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/measurement/ua;->c:Lcom/google/android/gms/internal/measurement/ua;

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/measurement/fb;->r([BIILcom/google/android/gms/internal/measurement/ua;)Lcom/google/android/gms/internal/measurement/fb;

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public final bridge synthetic i([BIILcom/google/android/gms/internal/measurement/ua;)Lcom/google/android/gms/internal/measurement/u9;
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/fb;->r([BIILcom/google/android/gms/internal/measurement/ua;)Lcom/google/android/gms/internal/measurement/fb;

    .line 3
    .line 4
    .line 5
    return-object p0
.end method

.method protected final l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fb;->b:Lcom/google/android/gms/internal/measurement/hb;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/hb;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fb;->m()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method protected m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fb;->a:Lcom/google/android/gms/internal/measurement/hb;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/hb;->l()Lcom/google/android/gms/internal/measurement/hb;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fb;->b:Lcom/google/android/gms/internal/measurement/hb;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/fb;->k(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fb;->b:Lcom/google/android/gms/internal/measurement/hb;

    .line 13
    .line 14
    return-void
.end method

.method public final n()Lcom/google/android/gms/internal/measurement/fb;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fb;->a:Lcom/google/android/gms/internal/measurement/hb;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/hb;->B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/gms/internal/measurement/fb;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fb;->o()Lcom/google/android/gms/internal/measurement/hb;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/fb;->b:Lcom/google/android/gms/internal/measurement/hb;

    .line 16
    .line 17
    return-object v0
.end method

.method public o()Lcom/google/android/gms/internal/measurement/hb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fb;->b:Lcom/google/android/gms/internal/measurement/hb;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/hb;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fb;->b:Lcom/google/android/gms/internal/measurement/hb;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fb;->b:Lcom/google/android/gms/internal/measurement/hb;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/hb;->n()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fb;->b:Lcom/google/android/gms/internal/measurement/hb;

    .line 18
    .line 19
    return-object v0
.end method

.method public final p()Lcom/google/android/gms/internal/measurement/hb;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fb;->o()Lcom/google/android/gms/internal/measurement/hb;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/hb;->i()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/measurement/dd;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/dd;-><init>(Lcom/google/android/gms/internal/measurement/ic;)V

    .line 15
    .line 16
    .line 17
    throw v1
.end method

.method public final q(Lcom/google/android/gms/internal/measurement/hb;)Lcom/google/android/gms/internal/measurement/fb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fb;->a:Lcom/google/android/gms/internal/measurement/hb;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/hb;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fb;->b:Lcom/google/android/gms/internal/measurement/hb;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/hb;->j()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fb;->m()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fb;->b:Lcom/google/android/gms/internal/measurement/hb;

    .line 21
    .line 22
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/fb;->k(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-object p0
.end method

.method public bridge synthetic q0()Lcom/google/android/gms/internal/measurement/ic;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fb;->o()Lcom/google/android/gms/internal/measurement/hb;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final r([BIILcom/google/android/gms/internal/measurement/ua;)Lcom/google/android/gms/internal/measurement/fb;
    .locals 7

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/fb;->b:Lcom/google/android/gms/internal/measurement/hb;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/hb;->j()Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fb;->m()V

    .line 10
    .line 11
    .line 12
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/qc;->a()Lcom/google/android/gms/internal/measurement/qc;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fb;->b:Lcom/google/android/gms/internal/measurement/hb;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/qc;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/tc;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/fb;->b:Lcom/google/android/gms/internal/measurement/hb;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    new-instance v6, Lcom/google/android/gms/internal/measurement/y9;

    .line 30
    .line 31
    invoke-direct {v6, p4}, Lcom/google/android/gms/internal/measurement/y9;-><init>(Lcom/google/android/gms/internal/measurement/ua;)V

    .line 32
    .line 33
    .line 34
    move-object v3, p1

    .line 35
    move v5, p3

    .line 36
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/tc;->f(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/y9;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/qb; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    return-object p0

    .line 40
    :catch_0
    move-exception p1

    .line 41
    new-instance p2, Ljava/lang/RuntimeException;

    .line 42
    .line 43
    const-string p3, "Reading from byte array should not throw IOException."

    .line 44
    .line 45
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    throw p2

    .line 49
    :catch_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/qb;

    .line 50
    .line 51
    const-string p2, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 52
    .line 53
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/qb;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :catch_2
    move-exception p1

    .line 58
    throw p1
.end method
