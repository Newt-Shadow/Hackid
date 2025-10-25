.class public final Lcom/google/android/gms/measurement/internal/sd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:Lcom/google/android/gms/internal/measurement/d7;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/Map;

.field private final e:Li6/d0;

.field private final f:J

.field private final g:J

.field private final h:J

.field private final i:I


# direct methods
.method synthetic constructor <init>(JLcom/google/android/gms/internal/measurement/d7;Ljava/lang/String;Ljava/util/Map;Li6/d0;JJJI[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/sd;->a:J

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/sd;->b:Lcom/google/android/gms/internal/measurement/d7;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/sd;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/sd;->d:Ljava/util/Map;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/sd;->e:Li6/d0;

    iput-wide p7, p0, Lcom/google/android/gms/measurement/internal/sd;->f:J

    iput-wide p9, p0, Lcom/google/android/gms/measurement/internal/sd;->g:J

    iput-wide p11, p0, Lcom/google/android/gms/measurement/internal/sd;->h:J

    iput p13, p0, Lcom/google/android/gms/measurement/internal/sd;->i:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/measurement/internal/bd;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/measurement/internal/bd;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/sd;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/sd;->d:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/sd;->e:Li6/d0;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/bd;-><init>(Ljava/lang/String;Ljava/util/Map;Li6/d0;Lcom/google/android/gms/internal/measurement/u7;)V

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/measurement/internal/wc;
    .locals 12

    .line 1
    new-instance v5, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/sd;->d:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/util/Map$Entry;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/String;

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v5, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/sd;->a:J

    .line 45
    .line 46
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/sd;->b:Lcom/google/android/gms/internal/measurement/d7;

    .line 47
    .line 48
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/sd;->c:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/sd;->e:Li6/d0;

    .line 51
    .line 52
    iget-wide v7, p0, Lcom/google/android/gms/measurement/internal/sd;->g:J

    .line 53
    .line 54
    new-instance v10, Lcom/google/android/gms/measurement/internal/wc;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/v9;->e()[B

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-virtual {v3}, Li6/d0;->zza()I

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    const-string v11, ""

    .line 65
    .line 66
    move-object v0, v10

    .line 67
    move-object v3, v6

    .line 68
    move v6, v9

    .line 69
    move-object v9, v11

    .line 70
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/wc;-><init>(J[BLjava/lang/String;Landroid/os/Bundle;IJLjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-object v10
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/sd;->a:J

    return-wide v0
.end method

.method public final d()Lcom/google/android/gms/internal/measurement/d7;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/sd;->b:Lcom/google/android/gms/internal/measurement/d7;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/sd;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Li6/d0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/sd;->e:Li6/d0;

    return-object v0
.end method

.method public final g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/sd;->f:J

    return-wide v0
.end method

.method public final h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/sd;->h:J

    return-wide v0
.end method

.method public final i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/measurement/internal/sd;->i:I

    return v0
.end method
