.class public final Lio/appmetrica/analytics/impl/Ml;
.super Lio/appmetrica/analytics/impl/c6;
.source "SourceFile"


# instance fields
.field public d:Ljava/util/List;

.field public e:Ljava/util/List;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/Map;

.field public i:Lio/appmetrica/analytics/impl/J3;

.field public j:Ljava/util/List;

.field public k:Z

.field public l:Z

.field public m:Ljava/lang/String;

.field public n:J

.field public final o:Lio/appmetrica/analytics/impl/jg;

.field public final p:Lio/appmetrica/analytics/impl/R7;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-static {}, Lio/appmetrica/analytics/impl/za;->j()Lio/appmetrica/analytics/impl/za;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/za;->t()Lio/appmetrica/analytics/impl/jg;

    move-result-object v0

    new-instance v1, Lio/appmetrica/analytics/impl/R7;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/R7;-><init>()V

    .line 2
    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/Ml;-><init>(Lio/appmetrica/analytics/impl/jg;Lio/appmetrica/analytics/impl/R7;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/jg;Lio/appmetrica/analytics/impl/R7;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Lio/appmetrica/analytics/impl/c6;-><init>()V

    .line 4
    new-instance v0, Lio/appmetrica/analytics/impl/J3;

    sget-object v1, Lio/appmetrica/analytics/impl/b8;->c:Lio/appmetrica/analytics/impl/b8;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lio/appmetrica/analytics/impl/J3;-><init>(Ljava/util/Map;Lio/appmetrica/analytics/impl/b8;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ml;->i:Lio/appmetrica/analytics/impl/J3;

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lio/appmetrica/analytics/impl/Ml;->n:J

    .line 6
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ml;->o:Lio/appmetrica/analytics/impl/jg;

    .line 7
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Ml;->p:Lio/appmetrica/analytics/impl/R7;

    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lio/appmetrica/analytics/impl/Ml;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    iput-wide p1, p0, Lio/appmetrica/analytics/impl/Ml;->n:J

    .line 3
    :cond_0
    iget-wide p1, p0, Lio/appmetrica/analytics/impl/Ml;->n:J

    return-wide p1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ml;->m:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ml;->j:Ljava/util/List;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/Ml;->k:Z

    return-void
.end method

.method public final c()Lio/appmetrica/analytics/impl/J3;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ml;->i:Lio/appmetrica/analytics/impl/J3;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ml;->h:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ml;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ml;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/appmetrica/analytics/impl/Ml;->n:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ml;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ml;->j:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Lio/appmetrica/analytics/impl/jg;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ml;->o:Lio/appmetrica/analytics/impl/jg;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ml;->d:Ljava/util/List;

    .line 7
    .line 8
    invoke-static {v1}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ml;->d:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ml;->e:Ljava/util/List;

    .line 20
    .line 21
    invoke-static {v1}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ml;->e:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ml;->p:Lio/appmetrica/analytics/impl/R7;

    .line 33
    .line 34
    iget-object v1, v1, Lio/appmetrica/analytics/impl/R7;->a:Lio/appmetrica/analytics/impl/Em;

    .line 35
    .line 36
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Bi;->a()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, [Ljava/lang/String;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    const/4 v3, 0x0

    .line 44
    if-eqz v1, :cond_6

    .line 45
    .line 46
    new-instance v4, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    array-length v5, v1

    .line 52
    move v6, v2

    .line 53
    :goto_0
    if-ge v6, v5, :cond_4

    .line 54
    .line 55
    aget-object v7, v1, v6

    .line 56
    .line 57
    if-eqz v7, :cond_2

    .line 58
    .line 59
    invoke-static {v7}, Lrd/n;->b0(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    xor-int/lit8 v8, v8, 0x1

    .line 64
    .line 65
    if-eqz v8, :cond_2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    move-object v7, v3

    .line 69
    :goto_1
    if-eqz v7, :cond_3

    .line 70
    .line 71
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    xor-int/lit8 v1, v1, 0x1

    .line 82
    .line 83
    if-eqz v1, :cond_5

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_5
    move-object v4, v3

    .line 87
    :goto_2
    if-eqz v4, :cond_6

    .line 88
    .line 89
    goto :goto_5

    .line 90
    :cond_6
    sget-object v1, Lio/appmetrica/analytics/BuildConfig;->DEFAULT_HOSTS:[Ljava/lang/String;

    .line 91
    .line 92
    new-instance v4, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .line 96
    .line 97
    array-length v5, v1

    .line 98
    :goto_3
    if-ge v2, v5, :cond_9

    .line 99
    .line 100
    aget-object v6, v1, v2

    .line 101
    .line 102
    if-eqz v6, :cond_7

    .line 103
    .line 104
    invoke-static {v6}, Lrd/n;->b0(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    xor-int/lit8 v7, v7, 0x1

    .line 109
    .line 110
    if-eqz v7, :cond_7

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_7
    move-object v6, v3

    .line 114
    :goto_4
    if-eqz v6, :cond_8

    .line 115
    .line 116
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_9
    :goto_5
    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 123
    .line 124
    .line 125
    new-instance v1, Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 128
    .line 129
    .line 130
    return-object v1
.end method

.method public final l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ml;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ml;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/Ml;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public final o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/Ml;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "StartupRequestConfig{mStartupHostsFromStartup="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ml;->d:Ljava/util/List;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mStartupHostsFromClient="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ml;->e:Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mDistributionReferrer=\'"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ml;->f:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "\', mInstallReferrerSource=\'"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ml;->g:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "\', mClidsFromClient="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ml;->h:Ljava/util/Map;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", mNewCustomHosts="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ml;->j:Ljava/util/List;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", mHasNewCustomHosts="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-boolean v1, p0, Lio/appmetrica/analytics/impl/Ml;->k:Z

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", mSuccessfulStartup="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-boolean v1, p0, Lio/appmetrica/analytics/impl/Ml;->l:Z

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", mCountryInit=\'"

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ml;->m:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, "\', mFirstStartupTime="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-wide v1, p0, Lio/appmetrica/analytics/impl/Ml;->n:J

    .line 99
    .line 100
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, "} "

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-super {p0}, Lio/appmetrica/analytics/impl/c6;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    return-object v0
.end method
