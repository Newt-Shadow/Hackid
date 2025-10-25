.class public final Lio/appmetrica/analytics/impl/mm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/nm;

.field public volatile b:Lio/appmetrica/analytics/networktasks/internal/NetworkTask;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/nm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/mm;->a:Lio/appmetrica/analytics/impl/nm;

    .line 5
    .line 6
    return-void
.end method

.method public static final synthetic a(Lio/appmetrica/analytics/impl/mm;)Lio/appmetrica/analytics/impl/nm;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/mm;->a:Lio/appmetrica/analytics/impl/nm;

    return-object p0
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Ol;Lio/appmetrica/analytics/impl/Ml;J)Lio/appmetrica/analytics/impl/Ql;
    .locals 9

    .line 6
    iget-object v0, p2, Lio/appmetrica/analytics/impl/Ml;->h:Ljava/util/Map;

    .line 7
    invoke-static {v0}, Lio/appmetrica/analytics/impl/rm;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p2, Lio/appmetrica/analytics/impl/Ml;->i:Lio/appmetrica/analytics/impl/J3;

    .line 9
    iget-object v1, v1, Lio/appmetrica/analytics/impl/J3;->a:Ljava/util/Map;

    .line 10
    iget-object v2, p1, Lio/appmetrica/analytics/impl/Ol;->j:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/mm;->e()Lio/appmetrica/analytics/impl/Ql;

    move-result-object v3

    .line 12
    iget-object v3, v3, Lio/appmetrica/analytics/impl/Ql;->k:Ljava/lang/String;

    .line 13
    invoke-static {v2}, Lio/appmetrica/analytics/impl/rm;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 14
    invoke-static {v4}, Lio/appmetrica/analytics/impl/rm;->a(Ljava/util/HashMap;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {v3}, Lio/appmetrica/analytics/impl/rm;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 16
    invoke-static {v2}, Lio/appmetrica/analytics/impl/rm;->a(Ljava/util/HashMap;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    move-object v2, v5

    .line 17
    :goto_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/mm;->e()Lio/appmetrica/analytics/impl/Ql;

    move-result-object v3

    .line 18
    iget-object v3, v3, Lio/appmetrica/analytics/impl/Ql;->a:Ljava/lang/String;

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 19
    invoke-static {v3}, Lrd/n;->b0(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v4

    if-eqz v6, :cond_2

    move-object v5, v3

    :cond_2
    if-nez v5, :cond_4

    .line 20
    :cond_3
    iget-object v5, p1, Lio/appmetrica/analytics/impl/Ol;->h:Ljava/lang/String;

    .line 21
    :cond_4
    new-instance v3, Lio/appmetrica/analytics/impl/Tl;

    .line 22
    iget-object v6, p1, Lio/appmetrica/analytics/impl/Ol;->b:Lio/appmetrica/analytics/impl/C4;

    .line 23
    invoke-direct {v3, v6}, Lio/appmetrica/analytics/impl/Tl;-><init>(Lio/appmetrica/analytics/impl/C4;)V

    .line 24
    iget-object v6, p1, Lio/appmetrica/analytics/impl/Ol;->i:Ljava/lang/String;

    .line 25
    iget-object v7, p0, Lio/appmetrica/analytics/impl/mm;->a:Lio/appmetrica/analytics/impl/nm;

    .line 26
    iget-object v7, v7, Lio/appmetrica/analytics/impl/nm;->i:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    .line 27
    invoke-virtual {v7}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;->currentTimeSeconds()J

    move-result-wide v7

    .line 28
    iput-wide v7, v3, Lio/appmetrica/analytics/impl/Tl;->o:J

    .line 29
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/mm;->e()Lio/appmetrica/analytics/impl/Ql;

    move-result-object v7

    .line 30
    iget-object v7, v7, Lio/appmetrica/analytics/impl/Ql;->d:Ljava/lang/String;

    .line 31
    iput-object v7, v3, Lio/appmetrica/analytics/impl/Tl;->a:Ljava/lang/String;

    .line 32
    iget-object v7, p1, Lio/appmetrica/analytics/impl/Ol;->d:Ljava/lang/String;

    .line 33
    iput-object v7, v3, Lio/appmetrica/analytics/impl/Tl;->c:Ljava/lang/String;

    .line 34
    iget-object v7, p1, Lio/appmetrica/analytics/impl/Ol;->c:Ljava/util/List;

    .line 35
    iput-object v7, v3, Lio/appmetrica/analytics/impl/Tl;->f:Ljava/util/List;

    .line 36
    iget-object p2, p2, Lio/appmetrica/analytics/impl/Ml;->e:Ljava/util/List;

    .line 37
    iput-object p2, v3, Lio/appmetrica/analytics/impl/Tl;->g:Ljava/util/List;

    .line 38
    iget-object p2, p1, Lio/appmetrica/analytics/impl/Ol;->e:Ljava/util/List;

    .line 39
    iput-object p2, v3, Lio/appmetrica/analytics/impl/Tl;->b:Ljava/util/List;

    .line 40
    iget-object p2, p1, Lio/appmetrica/analytics/impl/Ol;->f:Ljava/lang/String;

    .line 41
    iput-object p2, v3, Lio/appmetrica/analytics/impl/Tl;->d:Ljava/lang/String;

    .line 42
    iget-object p2, p1, Lio/appmetrica/analytics/impl/Ol;->g:Ljava/lang/String;

    .line 43
    iput-object p2, v3, Lio/appmetrica/analytics/impl/Tl;->e:Ljava/lang/String;

    .line 44
    iget-object p2, p1, Lio/appmetrica/analytics/impl/Ol;->n:Ljava/util/List;

    .line 45
    iput-object p2, v3, Lio/appmetrica/analytics/impl/Tl;->h:Ljava/util/List;

    .line 46
    iget-object p2, p1, Lio/appmetrica/analytics/impl/Ol;->o:Ljava/util/Map;

    .line 47
    iput-object p2, v3, Lio/appmetrica/analytics/impl/Tl;->i:Ljava/util/Map;

    .line 48
    iput-object v2, v3, Lio/appmetrica/analytics/impl/Tl;->j:Ljava/lang/String;

    .line 49
    iput-object v0, v3, Lio/appmetrica/analytics/impl/Tl;->k:Ljava/lang/String;

    .line 50
    iget-object p2, p0, Lio/appmetrica/analytics/impl/mm;->a:Lio/appmetrica/analytics/impl/nm;

    .line 51
    iget-object p2, p2, Lio/appmetrica/analytics/impl/nm;->k:Lio/appmetrica/analytics/impl/U3;

    .line 52
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    invoke-static {v2}, Lio/appmetrica/analytics/impl/rm;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    .line 54
    invoke-static {v1}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 55
    invoke-static {p2}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/util/Map;)Z

    move-result p2

    goto :goto_1

    .line 56
    :cond_5
    invoke-interface {p2, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 57
    :goto_1
    iput-boolean p2, v3, Lio/appmetrica/analytics/impl/Tl;->q:Z

    .line 58
    invoke-static {v1}, Lio/appmetrica/analytics/impl/rm;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 59
    iput-object p2, v3, Lio/appmetrica/analytics/impl/Tl;->l:Ljava/lang/String;

    .line 60
    iget-object p2, p1, Lio/appmetrica/analytics/impl/Ol;->m:Ljava/lang/String;

    .line 61
    iput-object p2, v3, Lio/appmetrica/analytics/impl/Tl;->r:Ljava/lang/String;

    .line 62
    iget-object p2, p1, Lio/appmetrica/analytics/impl/Ol;->k:Lio/appmetrica/analytics/impl/ve;

    .line 63
    iput-object p2, v3, Lio/appmetrica/analytics/impl/Tl;->n:Lio/appmetrica/analytics/impl/ve;

    .line 64
    iget-object p2, p1, Lio/appmetrica/analytics/impl/Ol;->p:Lio/appmetrica/analytics/impl/sm;

    .line 65
    iput-object p2, v3, Lio/appmetrica/analytics/impl/Tl;->s:Lio/appmetrica/analytics/impl/sm;

    .line 66
    iput-boolean v4, v3, Lio/appmetrica/analytics/impl/Tl;->p:Z

    .line 67
    iput-wide p3, v3, Lio/appmetrica/analytics/impl/Tl;->t:J

    .line 68
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/mm;->d()Lio/appmetrica/analytics/impl/Ml;

    move-result-object p2

    .line 69
    iget-wide v0, p2, Lio/appmetrica/analytics/impl/Ml;->n:J

    const-wide/16 v7, 0x0

    cmp-long v0, v0, v7

    if-nez v0, :cond_6

    .line 70
    iput-wide p3, p2, Lio/appmetrica/analytics/impl/Ml;->n:J

    .line 71
    :cond_6
    iget-wide p2, p2, Lio/appmetrica/analytics/impl/Ml;->n:J

    .line 72
    iput-wide p2, v3, Lio/appmetrica/analytics/impl/Tl;->u:J

    const/4 p2, 0x0

    .line 73
    iput-boolean p2, v3, Lio/appmetrica/analytics/impl/Tl;->v:Z

    .line 74
    iget-object p2, p1, Lio/appmetrica/analytics/impl/Ol;->q:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    .line 75
    iput-object p2, v3, Lio/appmetrica/analytics/impl/Tl;->w:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    .line 76
    iget-object p2, p1, Lio/appmetrica/analytics/impl/Ol;->s:Lio/appmetrica/analytics/impl/v3;

    .line 77
    iput-object p2, v3, Lio/appmetrica/analytics/impl/Tl;->y:Lio/appmetrica/analytics/impl/v3;

    .line 78
    iget-object p2, p1, Lio/appmetrica/analytics/impl/Ol;->r:Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

    .line 79
    iput-object p2, v3, Lio/appmetrica/analytics/impl/Tl;->x:Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

    .line 80
    iget-object p2, p1, Lio/appmetrica/analytics/impl/Ol;->t:Lio/appmetrica/analytics/impl/n2;

    .line 81
    iput-object p2, v3, Lio/appmetrica/analytics/impl/Tl;->z:Lio/appmetrica/analytics/impl/n2;

    .line 82
    iget-object p2, p1, Lio/appmetrica/analytics/impl/Ol;->u:Lio/appmetrica/analytics/impl/om;

    .line 83
    iput-object p2, v3, Lio/appmetrica/analytics/impl/Tl;->A:Lio/appmetrica/analytics/impl/om;

    .line 84
    iget-object p2, p1, Lio/appmetrica/analytics/impl/Ol;->v:Ljava/util/Map;

    .line 85
    iput-object p2, v3, Lio/appmetrica/analytics/impl/Tl;->B:Ljava/util/Map;

    .line 86
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Ol;->w:Lio/appmetrica/analytics/impl/N9;

    .line 87
    iput-object p1, v3, Lio/appmetrica/analytics/impl/Tl;->C:Lio/appmetrica/analytics/impl/N9;

    .line 88
    new-instance p1, Lio/appmetrica/analytics/impl/Ql;

    .line 89
    new-instance p2, Lio/appmetrica/analytics/impl/Ul;

    .line 90
    invoke-direct {p2, v3}, Lio/appmetrica/analytics/impl/Ul;-><init>(Lio/appmetrica/analytics/impl/Tl;)V

    .line 91
    invoke-direct {p1, v5, v6, p2}, Lio/appmetrica/analytics/impl/Ql;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/impl/Ul;)V

    return-object p1
.end method

.method public final a()Lio/appmetrica/analytics/impl/h5;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/mm;->a:Lio/appmetrica/analytics/impl/nm;

    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/nm;->f:Lio/appmetrica/analytics/impl/M4;

    return-object v0
.end method

.method public final declared-synchronized a(Lio/appmetrica/analytics/impl/Kl;)V
    .locals 4

    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/mm;->a:Lio/appmetrica/analytics/impl/nm;

    .line 136
    iget-object v0, v0, Lio/appmetrica/analytics/impl/nm;->l:Lio/appmetrica/analytics/impl/tl;

    .line 137
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/tl;->a(Lio/appmetrica/analytics/impl/Kl;)V

    .line 138
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/mm;->d()Lio/appmetrica/analytics/impl/Ml;

    move-result-object p1

    .line 139
    iget-boolean v0, p1, Lio/appmetrica/analytics/impl/Ml;->k:Z

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p1, Lio/appmetrica/analytics/impl/Ml;->j:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 141
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Ml;->e:Ljava/util/List;

    .line 143
    invoke-static {v0, p1}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 144
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/mm;->e()Lio/appmetrica/analytics/impl/Ql;

    move-result-object p1

    .line 145
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ql;->c:Lio/appmetrica/analytics/impl/Ul;

    .line 146
    iget-object v2, v1, Lio/appmetrica/analytics/impl/Ul;->m:Lio/appmetrica/analytics/impl/C4;

    .line 147
    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/Ul;->a(Lio/appmetrica/analytics/impl/C4;)Lio/appmetrica/analytics/impl/Tl;

    move-result-object v1

    .line 148
    iget-object v2, p1, Lio/appmetrica/analytics/impl/Ql;->a:Ljava/lang/String;

    .line 149
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Ql;->b:Ljava/lang/String;

    .line 150
    iput-object v0, v1, Lio/appmetrica/analytics/impl/Tl;->g:Ljava/util/List;

    .line 151
    new-instance v0, Lio/appmetrica/analytics/impl/Ql;

    .line 152
    new-instance v3, Lio/appmetrica/analytics/impl/Ul;

    .line 153
    invoke-direct {v3, v1}, Lio/appmetrica/analytics/impl/Ul;-><init>(Lio/appmetrica/analytics/impl/Tl;)V

    .line 154
    invoke-direct {v0, v2, p1, v3}, Lio/appmetrica/analytics/impl/Ql;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/impl/Ul;)V

    .line 155
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/mm;->b(Lio/appmetrica/analytics/impl/Ql;)V

    .line 156
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/mm;->a(Lio/appmetrica/analytics/impl/Ql;)V

    goto :goto_1

    .line 157
    :cond_1
    :goto_0
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Ml;->e:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 158
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-ne p1, v0, :cond_2

    .line 159
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/mm;->e()Lio/appmetrica/analytics/impl/Ql;

    move-result-object p1

    .line 160
    iget-object v0, p1, Lio/appmetrica/analytics/impl/Ql;->c:Lio/appmetrica/analytics/impl/Ul;

    .line 161
    iget-object v1, v0, Lio/appmetrica/analytics/impl/Ul;->m:Lio/appmetrica/analytics/impl/C4;

    .line 162
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Ul;->a(Lio/appmetrica/analytics/impl/C4;)Lio/appmetrica/analytics/impl/Tl;

    move-result-object v0

    .line 163
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ql;->a:Ljava/lang/String;

    .line 164
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Ql;->b:Ljava/lang/String;

    const/4 v2, 0x0

    .line 165
    iput-object v2, v0, Lio/appmetrica/analytics/impl/Tl;->g:Ljava/util/List;

    .line 166
    new-instance v2, Lio/appmetrica/analytics/impl/Ql;

    .line 167
    new-instance v3, Lio/appmetrica/analytics/impl/Ul;

    .line 168
    invoke-direct {v3, v0}, Lio/appmetrica/analytics/impl/Ul;-><init>(Lio/appmetrica/analytics/impl/Tl;)V

    .line 169
    invoke-direct {v2, v1, p1, v3}, Lio/appmetrica/analytics/impl/Ql;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/impl/Ul;)V

    .line 170
    invoke-virtual {p0, v2}, Lio/appmetrica/analytics/impl/mm;->b(Lio/appmetrica/analytics/impl/Ql;)V

    .line 171
    invoke-virtual {p0, v2}, Lio/appmetrica/analytics/impl/mm;->a(Lio/appmetrica/analytics/impl/Ql;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/Ol;Lio/appmetrica/analytics/impl/Ml;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/Ol;",
            "Lio/appmetrica/analytics/impl/Ml;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    invoke-static {p3}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Date"

    .line 94
    invoke-static {p3, v0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->getFromMapIgnoreCase(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    .line 95
    invoke-static {p3}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/util/Collection;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 96
    :try_start_1
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "E, d MMM yyyy HH:mm:ss z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 98
    invoke-virtual {v0, p3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    .line 99
    :try_start_2
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    .line 100
    :goto_1
    iget-object p3, p1, Lio/appmetrica/analytics/impl/Ol;->l:Ljava/lang/Long;

    .line 101
    sget-object v2, Lio/appmetrica/analytics/impl/Sj;->a:Lio/appmetrica/analytics/impl/Tj;

    .line 102
    invoke-virtual {v2, v0, v1, p3}, Lio/appmetrica/analytics/impl/Tj;->a(JLjava/lang/Long;)V

    .line 103
    invoke-virtual {p0, p1, p2, v0, v1}, Lio/appmetrica/analytics/impl/mm;->a(Lio/appmetrica/analytics/impl/Ol;Lio/appmetrica/analytics/impl/Ml;J)Lio/appmetrica/analytics/impl/Ql;

    move-result-object p1

    .line 104
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/mm;->h()V

    .line 105
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/mm;->b(Lio/appmetrica/analytics/impl/Ql;)V

    .line 106
    sget-object p2, Lxc/t;->a:Lxc/t;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 107
    monitor-exit p0

    .line 108
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/mm;->a(Lio/appmetrica/analytics/impl/Ql;)V

    return-void

    :catchall_1
    move-exception p1

    .line 109
    monitor-exit p0

    throw p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/Ql;)V
    .locals 3

    .line 110
    iget-object v0, p0, Lio/appmetrica/analytics/impl/mm;->a:Lio/appmetrica/analytics/impl/nm;

    .line 111
    iget-object v1, v0, Lio/appmetrica/analytics/impl/nm;->d:Lio/appmetrica/analytics/impl/ql;

    .line 112
    iget-object v0, v0, Lio/appmetrica/analytics/impl/nm;->b:Ljava/lang/String;

    .line 113
    iget-object v2, v1, Lio/appmetrica/analytics/impl/ql;->a:Lio/appmetrica/analytics/impl/sl;

    .line 114
    iget-object v2, v2, Lio/appmetrica/analytics/impl/sl;->b:Ljava/util/HashMap;

    .line 115
    monitor-enter v2

    .line 116
    :try_start_0
    iget-object v1, v1, Lio/appmetrica/analytics/impl/ql;->a:Lio/appmetrica/analytics/impl/sl;

    .line 117
    iput-object p1, v1, Lio/appmetrica/analytics/impl/sl;->c:Lio/appmetrica/analytics/impl/Ql;

    .line 118
    iget-object v1, v1, Lio/appmetrica/analytics/impl/sl;->a:Lio/appmetrica/analytics/impl/Ba;

    .line 119
    iget-object v1, v1, Lio/appmetrica/analytics/impl/Ba;->a:Ljava/util/HashMap;

    .line 120
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 122
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 123
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/Bl;

    .line 125
    invoke-interface {v1, p1}, Lio/appmetrica/analytics/impl/Bl;->a(Lio/appmetrica/analytics/impl/Ql;)V

    goto :goto_1

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 126
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/ul;)V
    .locals 3

    .line 127
    monitor-enter p0

    const/4 v0, 0x0

    .line 128
    :try_start_0
    iput-object v0, p0, Lio/appmetrica/analytics/impl/mm;->b:Lio/appmetrica/analytics/networktasks/internal/NetworkTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 129
    iget-object v0, p0, Lio/appmetrica/analytics/impl/mm;->a:Lio/appmetrica/analytics/impl/nm;

    .line 130
    iget-object v1, v0, Lio/appmetrica/analytics/impl/nm;->d:Lio/appmetrica/analytics/impl/ql;

    .line 131
    iget-object v0, v0, Lio/appmetrica/analytics/impl/nm;->f:Lio/appmetrica/analytics/impl/M4;

    .line 132
    iget-object v0, v0, Lio/appmetrica/analytics/impl/h5;->a:Ljava/lang/String;

    .line 133
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/mm;->e()Lio/appmetrica/analytics/impl/Ql;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lio/appmetrica/analytics/impl/ql;->a(Ljava/lang/String;Lio/appmetrica/analytics/impl/ul;Lio/appmetrica/analytics/impl/Ql;)V

    return-void

    :catchall_0
    move-exception p1

    .line 134
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/util/List;Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/mm;->e()Lio/appmetrica/analytics/impl/Ql;

    move-result-object v0

    .line 5
    new-instance v1, Lio/appmetrica/analytics/impl/lm;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/lm;-><init>(Lio/appmetrica/analytics/impl/mm;)V

    invoke-static {v0, p1, p2, v1}, Lio/appmetrica/analytics/impl/Nl;->a(Lio/appmetrica/analytics/impl/Ql;Ljava/util/Collection;Ljava/util/Map;Lid/a;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 p1, p1, 0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/mm;->a:Lio/appmetrica/analytics/impl/nm;

    .line 2
    iget-object v0, v0, Lio/appmetrica/analytics/impl/nm;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final declared-synchronized b(Lio/appmetrica/analytics/impl/Ql;)V
    .locals 3

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/mm;->a:Lio/appmetrica/analytics/impl/nm;

    .line 4
    iget-object v0, v0, Lio/appmetrica/analytics/impl/nm;->l:Lio/appmetrica/analytics/impl/tl;

    .line 5
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/D5;->a(Lio/appmetrica/analytics/impl/Ql;)V

    .line 6
    iget-object v0, p0, Lio/appmetrica/analytics/impl/mm;->a:Lio/appmetrica/analytics/impl/nm;

    .line 7
    iget-object v0, v0, Lio/appmetrica/analytics/impl/nm;->g:Lio/appmetrica/analytics/impl/Pl;

    .line 8
    iget-object v1, v0, Lio/appmetrica/analytics/impl/Pl;->b:Lio/appmetrica/analytics/impl/co;

    .line 9
    iget-object v2, p1, Lio/appmetrica/analytics/impl/Ql;->a:Ljava/lang/String;

    .line 10
    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/co;->a(Ljava/lang/String;)V

    .line 11
    iget-object v1, v0, Lio/appmetrica/analytics/impl/Pl;->b:Lio/appmetrica/analytics/impl/co;

    .line 12
    iget-object v2, p1, Lio/appmetrica/analytics/impl/Ql;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/co;->b(Ljava/lang/String;)V

    .line 14
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Pl;->a:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    .line 15
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ql;->c:Lio/appmetrica/analytics/impl/Ul;

    .line 16
    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;->save(Ljava/lang/Object;)V

    .line 17
    iget-object v0, p0, Lio/appmetrica/analytics/impl/mm;->a:Lio/appmetrica/analytics/impl/nm;

    .line 18
    iget-object v0, v0, Lio/appmetrica/analytics/impl/nm;->e:Lio/appmetrica/analytics/impl/Sl;

    .line 19
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Sl;->a(Lio/appmetrica/analytics/impl/Ql;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c()Lio/appmetrica/analytics/networktasks/internal/NetworkTask;
    .locals 14

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/mm;->g()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lio/appmetrica/analytics/impl/mm;->b:Lio/appmetrica/analytics/networktasks/internal/NetworkTask;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lio/appmetrica/analytics/networktasks/internal/NetworkTask;->isRemoved()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/mm;->d()Lio/appmetrica/analytics/impl/Ml;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lio/appmetrica/analytics/impl/Ud;->a:Lio/appmetrica/analytics/impl/Ud;

    .line 23
    .line 24
    new-instance v1, Lio/appmetrica/analytics/impl/Il;

    .line 25
    .line 26
    new-instance v2, Lio/appmetrica/analytics/impl/fe;

    .line 27
    .line 28
    invoke-direct {v2}, Lio/appmetrica/analytics/impl/fe;-><init>()V

    .line 29
    .line 30
    .line 31
    sget-object v3, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 32
    .line 33
    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/za;->o()Lio/appmetrica/analytics/impl/kk;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-direct {v1, v2, v3}, Lio/appmetrica/analytics/impl/Il;-><init>(Lio/appmetrica/analytics/impl/fe;Lio/appmetrica/analytics/impl/vd;)V

    .line 38
    .line 39
    .line 40
    new-instance v10, Lio/appmetrica/analytics/networktasks/internal/FinalConfigProvider;

    .line 41
    .line 42
    invoke-direct {v10, v0}, Lio/appmetrica/analytics/networktasks/internal/FinalConfigProvider;-><init>(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Lio/appmetrica/analytics/networktasks/internal/NetworkTask;

    .line 46
    .line 47
    new-instance v3, Lio/appmetrica/analytics/coreutils/internal/executors/SynchronizedBlockingExecutor;

    .line 48
    .line 49
    invoke-direct {v3}, Lio/appmetrica/analytics/coreutils/internal/executors/SynchronizedBlockingExecutor;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v11, Lio/appmetrica/analytics/impl/J9;

    .line 53
    .line 54
    iget-object v2, p0, Lio/appmetrica/analytics/impl/mm;->a:Lio/appmetrica/analytics/impl/nm;

    .line 55
    .line 56
    iget-object v2, v2, Lio/appmetrica/analytics/impl/nm;->a:Landroid/content/Context;

    .line 57
    .line 58
    invoke-direct {v11, v2}, Lio/appmetrica/analytics/impl/J9;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    new-instance v12, Lio/appmetrica/analytics/networktasks/internal/AllHostsExponentialBackoffPolicy;

    .line 62
    .line 63
    sget-object v2, Lio/appmetrica/analytics/impl/Ud;->a:Lio/appmetrica/analytics/impl/Ud;

    .line 64
    .line 65
    sget-object v4, Lio/appmetrica/analytics/impl/Sd;->b:Lio/appmetrica/analytics/impl/Sd;

    .line 66
    .line 67
    invoke-virtual {v2, v4}, Lio/appmetrica/analytics/impl/Ud;->a(Lio/appmetrica/analytics/impl/Sd;)Lio/appmetrica/analytics/networktasks/internal/ExponentialBackoffDataHolder;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-direct {v12, v2}, Lio/appmetrica/analytics/networktasks/internal/AllHostsExponentialBackoffPolicy;-><init>(Lio/appmetrica/analytics/networktasks/internal/ExponentialBackoffDataHolder;)V

    .line 72
    .line 73
    .line 74
    new-instance v13, Lio/appmetrica/analytics/impl/km;

    .line 75
    .line 76
    new-instance v7, Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;

    .line 77
    .line 78
    invoke-direct {v7, v1, v10}, Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;-><init>(Lio/appmetrica/analytics/networktasks/internal/IParamsAppender;Lio/appmetrica/analytics/networktasks/internal/ConfigProvider;)V

    .line 79
    .line 80
    .line 81
    new-instance v8, Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;

    .line 82
    .line 83
    invoke-direct {v8}, Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;-><init>()V

    .line 84
    .line 85
    .line 86
    new-instance v9, Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;

    .line 87
    .line 88
    new-instance v1, Lio/appmetrica/analytics/networktasks/internal/DefaultResponseValidityChecker;

    .line 89
    .line 90
    invoke-direct {v1}, Lio/appmetrica/analytics/networktasks/internal/DefaultResponseValidityChecker;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-direct {v9, v1}, Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;-><init>(Lio/appmetrica/analytics/networktasks/internal/ResponseValidityChecker;)V

    .line 94
    .line 95
    .line 96
    new-instance v6, Lio/appmetrica/analytics/impl/Cl;

    .line 97
    .line 98
    invoke-direct {v6}, Lio/appmetrica/analytics/impl/Cl;-><init>()V

    .line 99
    .line 100
    .line 101
    move-object v4, v13

    .line 102
    move-object v5, p0

    .line 103
    invoke-direct/range {v4 .. v10}, Lio/appmetrica/analytics/impl/km;-><init>(Lio/appmetrica/analytics/impl/mm;Lio/appmetrica/analytics/impl/Cl;Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;Lio/appmetrica/analytics/networktasks/internal/ConfigProvider;)V

    .line 104
    .line 105
    .line 106
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    sget-object v8, Lio/appmetrica/analytics/impl/Ud;->c:Ljava/lang/String;

    .line 111
    .line 112
    move-object v2, v0

    .line 113
    move-object v4, v11

    .line 114
    move-object v5, v12

    .line 115
    move-object v6, v13

    .line 116
    invoke-direct/range {v2 .. v8}, Lio/appmetrica/analytics/networktasks/internal/NetworkTask;-><init>(Ljava/util/concurrent/Executor;Lio/appmetrica/analytics/coreapi/internal/io/IExecutionPolicy;Lio/appmetrica/analytics/networktasks/internal/ExponentialBackoffPolicy;Lio/appmetrica/analytics/networktasks/internal/UnderlyingNetworkTask;Ljava/util/List;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iput-object v0, p0, Lio/appmetrica/analytics/impl/mm;->b:Lio/appmetrica/analytics/networktasks/internal/NetworkTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_1
    const/4 v0, 0x0

    .line 123
    :cond_2
    :goto_0
    monitor-exit p0

    .line 124
    return-object v0

    .line 125
    :catchall_0
    move-exception v0

    .line 126
    monitor-exit p0

    .line 127
    throw v0
.end method

.method public final d()Lio/appmetrica/analytics/impl/Ml;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/mm;->a:Lio/appmetrica/analytics/impl/nm;

    .line 2
    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/nm;->l:Lio/appmetrica/analytics/impl/tl;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/D5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lio/appmetrica/analytics/impl/Ml;

    .line 10
    .line 11
    return-object v0
.end method

.method public final e()Lio/appmetrica/analytics/impl/Ql;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/mm;->a:Lio/appmetrica/analytics/impl/nm;

    .line 2
    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/nm;->l:Lio/appmetrica/analytics/impl/tl;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, v0, Lio/appmetrica/analytics/impl/D5;->c:Lio/appmetrica/analytics/impl/a6;

    .line 7
    .line 8
    iget-object v1, v1, Lio/appmetrica/analytics/impl/a6;->a:Lio/appmetrica/analytics/impl/Ql;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-object v1

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0

    .line 14
    throw v1
.end method

.method public final f()V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/mm;->a:Lio/appmetrica/analytics/impl/nm;

    .line 2
    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/nm;->l:Lio/appmetrica/analytics/impl/tl;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, v0, Lio/appmetrica/analytics/impl/D5;->c:Lio/appmetrica/analytics/impl/a6;

    .line 7
    .line 8
    iget-object v1, v1, Lio/appmetrica/analytics/impl/a6;->a:Lio/appmetrica/analytics/impl/Ql;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    iget-object v0, v1, Lio/appmetrica/analytics/impl/Ql;->c:Lio/appmetrica/analytics/impl/Ul;

    .line 12
    .line 13
    iget-object v2, v0, Lio/appmetrica/analytics/impl/Ul;->m:Lio/appmetrica/analytics/impl/C4;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/Ul;->a(Lio/appmetrica/analytics/impl/C4;)Lio/appmetrica/analytics/impl/Tl;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v2, v1, Lio/appmetrica/analytics/impl/Ql;->a:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v3, v1, Lio/appmetrica/analytics/impl/Ql;->b:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v4, p0, Lio/appmetrica/analytics/impl/mm;->a:Lio/appmetrica/analytics/impl/nm;

    .line 24
    .line 25
    iget-object v4, v4, Lio/appmetrica/analytics/impl/nm;->n:Lio/appmetrica/analytics/impl/Vn;

    .line 26
    .line 27
    iget-object v5, v1, Lio/appmetrica/analytics/impl/Ql;->d:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {v5}, Lio/appmetrica/analytics/impl/Vn;->a(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_0

    .line 37
    .line 38
    iget-object v4, p0, Lio/appmetrica/analytics/impl/mm;->a:Lio/appmetrica/analytics/impl/nm;

    .line 39
    .line 40
    iget-object v4, v4, Lio/appmetrica/analytics/impl/nm;->m:Lio/appmetrica/analytics/impl/Bd;

    .line 41
    .line 42
    invoke-virtual {v4}, Lio/appmetrica/analytics/impl/Bd;->a()Lio/appmetrica/analytics/internal/IdentifiersResult;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    iget-object v4, v4, Lio/appmetrica/analytics/internal/IdentifiersResult;->id:Ljava/lang/String;

    .line 47
    .line 48
    iput-object v4, v0, Lio/appmetrica/analytics/impl/Tl;->a:Ljava/lang/String;

    .line 49
    .line 50
    :cond_0
    iget-object v1, v1, Lio/appmetrica/analytics/impl/Ql;->a:Ljava/lang/String;

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    :cond_1
    iget-object v1, p0, Lio/appmetrica/analytics/impl/mm;->a:Lio/appmetrica/analytics/impl/nm;

    .line 61
    .line 62
    iget-object v1, v1, Lio/appmetrica/analytics/impl/nm;->h:Lio/appmetrica/analytics/impl/W7;

    .line 63
    .line 64
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/W7;->a()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const-string v3, ""

    .line 69
    .line 70
    :cond_2
    iget-object v1, p0, Lio/appmetrica/analytics/impl/mm;->a:Lio/appmetrica/analytics/impl/nm;

    .line 71
    .line 72
    iget-object v1, v1, Lio/appmetrica/analytics/impl/nm;->c:Lio/appmetrica/analytics/impl/Kl;

    .line 73
    .line 74
    iget-object v1, v1, Lio/appmetrica/analytics/impl/Kl;->e:Ljava/util/List;

    .line 75
    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    xor-int/lit8 v4, v4, 0x1

    .line 83
    .line 84
    if-eqz v4, :cond_3

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    const/4 v1, 0x0

    .line 88
    :goto_0
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Tl;->g:Ljava/util/List;

    .line 89
    .line 90
    new-instance v1, Lio/appmetrica/analytics/impl/Ql;

    .line 91
    .line 92
    new-instance v4, Lio/appmetrica/analytics/impl/Ul;

    .line 93
    .line 94
    invoke-direct {v4, v0}, Lio/appmetrica/analytics/impl/Ul;-><init>(Lio/appmetrica/analytics/impl/Tl;)V

    .line 95
    .line 96
    .line 97
    invoke-direct {v1, v2, v3, v4}, Lio/appmetrica/analytics/impl/Ql;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/impl/Ul;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/impl/mm;->b(Lio/appmetrica/analytics/impl/Ql;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/impl/mm;->a(Lio/appmetrica/analytics/impl/Ql;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :catchall_0
    move-exception v1

    .line 108
    monitor-exit v0

    .line 109
    throw v1
.end method

.method public final declared-synchronized g()Z
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/mm;->e()Lio/appmetrica/analytics/impl/Ql;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sget-object v1, Lio/appmetrica/analytics/impl/Nl;->a:Ljava/util/Set;

    .line 7
    .line 8
    iget-boolean v1, v0, Lio/appmetrica/analytics/impl/Ql;->w:Z

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    iget-wide v4, v0, Lio/appmetrica/analytics/impl/Ql;->o:J

    .line 15
    .line 16
    iget-object v1, v0, Lio/appmetrica/analytics/impl/Ql;->A:Lio/appmetrica/analytics/impl/om;

    .line 17
    .line 18
    iget v1, v1, Lio/appmetrica/analytics/impl/om;->a:I

    .line 19
    .line 20
    int-to-long v6, v1

    .line 21
    add-long/2addr v4, v6

    .line 22
    sget-object v1, Lio/appmetrica/analytics/impl/Nl;->b:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    .line 23
    .line 24
    invoke-virtual {v1}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;->currentTimeSeconds()J

    .line 25
    .line 26
    .line 27
    move-result-wide v6

    .line 28
    cmp-long v1, v6, v4

    .line 29
    .line 30
    if-lez v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v1, v2

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    move v1, v3

    .line 36
    :goto_1
    if-nez v1, :cond_3

    .line 37
    .line 38
    iget-object v1, v0, Lio/appmetrica/analytics/impl/Ql;->d:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v1}, Lio/appmetrica/analytics/impl/Nl;->a(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    iget-object v1, v0, Lio/appmetrica/analytics/impl/Ql;->a:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v1}, Lio/appmetrica/analytics/impl/Nl;->a(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    iget-object v1, v0, Lio/appmetrica/analytics/impl/Ql;->b:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v1}, Lio/appmetrica/analytics/impl/Nl;->a(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    move v2, v3

    .line 63
    :cond_2
    xor-int/lit8 v1, v2, 0x1

    .line 64
    .line 65
    iget-object v2, p0, Lio/appmetrica/analytics/impl/mm;->a:Lio/appmetrica/analytics/impl/nm;

    .line 66
    .line 67
    iget-object v2, v2, Lio/appmetrica/analytics/impl/nm;->k:Lio/appmetrica/analytics/impl/U3;

    .line 68
    .line 69
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/mm;->d()Lio/appmetrica/analytics/impl/Ml;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    iget-object v4, v4, Lio/appmetrica/analytics/impl/Ml;->h:Ljava/util/Map;

    .line 74
    .line 75
    iget-object v5, p0, Lio/appmetrica/analytics/impl/mm;->a:Lio/appmetrica/analytics/impl/nm;

    .line 76
    .line 77
    iget-object v5, v5, Lio/appmetrica/analytics/impl/nm;->j:Lio/appmetrica/analytics/impl/R3;

    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-static {v4, v0, v5}, Lio/appmetrica/analytics/impl/U3;->a(Ljava/util/Map;Lio/appmetrica/analytics/impl/Ql;Lio/appmetrica/analytics/impl/R3;)Z

    .line 83
    .line 84
    .line 85
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    if-nez v1, :cond_3

    .line 87
    .line 88
    if-nez v0, :cond_3

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_3
    move v3, v1

    .line 92
    :goto_2
    monitor-exit p0

    .line 93
    return v3

    .line 94
    :catchall_0
    move-exception v0

    .line 95
    monitor-exit p0

    .line 96
    throw v0
.end method

.method public final declared-synchronized h()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-object v0, p0, Lio/appmetrica/analytics/impl/mm;->b:Lio/appmetrica/analytics/networktasks/internal/NetworkTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    monitor-exit p0

    .line 9
    throw v0
.end method
