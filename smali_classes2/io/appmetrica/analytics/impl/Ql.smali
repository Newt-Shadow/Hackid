.class public final Lio/appmetrica/analytics/impl/Ql;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final A:Lio/appmetrica/analytics/impl/om;

.field public final B:Ljava/util/Map;

.field public final C:Lio/appmetrica/analytics/impl/N9;

.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lio/appmetrica/analytics/impl/Ul;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/List;

.field public final f:Ljava/util/List;

.field public final g:Ljava/util/List;

.field public final h:Ljava/util/Map;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Lio/appmetrica/analytics/impl/C4;

.field public final o:J

.field public final p:Z

.field public final q:Z

.field public final r:Ljava/lang/String;

.field public final s:Lio/appmetrica/analytics/impl/ve;

.field public final t:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

.field public final u:J

.field public final v:J

.field public final w:Z

.field public final x:Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

.field public final y:Lio/appmetrica/analytics/impl/v3;

.field public final z:Lio/appmetrica/analytics/impl/n2;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/impl/Ul;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ql;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Ql;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lio/appmetrica/analytics/impl/Ql;->c:Lio/appmetrica/analytics/impl/Ul;

    .line 9
    .line 10
    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ul;->a:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ql;->d:Ljava/lang/String;

    .line 13
    .line 14
    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ul;->b:Ljava/util/List;

    .line 15
    .line 16
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ql;->e:Ljava/util/List;

    .line 17
    .line 18
    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ul;->f:Ljava/util/List;

    .line 19
    .line 20
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ql;->f:Ljava/util/List;

    .line 21
    .line 22
    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ul;->g:Ljava/util/List;

    .line 23
    .line 24
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ql;->g:Ljava/util/List;

    .line 25
    .line 26
    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ul;->i:Ljava/util/Map;

    .line 27
    .line 28
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ql;->h:Ljava/util/Map;

    .line 29
    .line 30
    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ul;->c:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ql;->i:Ljava/lang/String;

    .line 33
    .line 34
    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ul;->d:Ljava/lang/String;

    .line 35
    .line 36
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ql;->j:Ljava/lang/String;

    .line 37
    .line 38
    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ul;->j:Ljava/lang/String;

    .line 39
    .line 40
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ql;->k:Ljava/lang/String;

    .line 41
    .line 42
    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ul;->k:Ljava/lang/String;

    .line 43
    .line 44
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ql;->l:Ljava/lang/String;

    .line 45
    .line 46
    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ul;->l:Ljava/lang/String;

    .line 47
    .line 48
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ql;->m:Ljava/lang/String;

    .line 49
    .line 50
    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ul;->m:Lio/appmetrica/analytics/impl/C4;

    .line 51
    .line 52
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ql;->n:Lio/appmetrica/analytics/impl/C4;

    .line 53
    .line 54
    iget-wide p1, p3, Lio/appmetrica/analytics/impl/Ul;->n:J

    .line 55
    .line 56
    iput-wide p1, p0, Lio/appmetrica/analytics/impl/Ql;->o:J

    .line 57
    .line 58
    iget-boolean p1, p3, Lio/appmetrica/analytics/impl/Ul;->o:Z

    .line 59
    .line 60
    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/Ql;->p:Z

    .line 61
    .line 62
    iget-boolean p1, p3, Lio/appmetrica/analytics/impl/Ul;->p:Z

    .line 63
    .line 64
    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/Ql;->q:Z

    .line 65
    .line 66
    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ul;->q:Ljava/lang/String;

    .line 67
    .line 68
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ql;->r:Ljava/lang/String;

    .line 69
    .line 70
    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ul;->s:Lio/appmetrica/analytics/impl/ve;

    .line 71
    .line 72
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ql;->s:Lio/appmetrica/analytics/impl/ve;

    .line 73
    .line 74
    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ul;->t:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    .line 75
    .line 76
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ql;->t:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    .line 77
    .line 78
    iget-wide p1, p3, Lio/appmetrica/analytics/impl/Ul;->u:J

    .line 79
    .line 80
    iput-wide p1, p0, Lio/appmetrica/analytics/impl/Ql;->u:J

    .line 81
    .line 82
    iget-wide p1, p3, Lio/appmetrica/analytics/impl/Ul;->v:J

    .line 83
    .line 84
    iput-wide p1, p0, Lio/appmetrica/analytics/impl/Ql;->v:J

    .line 85
    .line 86
    iget-boolean p1, p3, Lio/appmetrica/analytics/impl/Ul;->w:Z

    .line 87
    .line 88
    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/Ql;->w:Z

    .line 89
    .line 90
    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ul;->x:Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

    .line 91
    .line 92
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ql;->x:Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

    .line 93
    .line 94
    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ul;->y:Lio/appmetrica/analytics/impl/v3;

    .line 95
    .line 96
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ql;->y:Lio/appmetrica/analytics/impl/v3;

    .line 97
    .line 98
    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ul;->z:Lio/appmetrica/analytics/impl/n2;

    .line 99
    .line 100
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ql;->z:Lio/appmetrica/analytics/impl/n2;

    .line 101
    .line 102
    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ul;->A:Lio/appmetrica/analytics/impl/om;

    .line 103
    .line 104
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ql;->A:Lio/appmetrica/analytics/impl/om;

    .line 105
    .line 106
    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ul;->B:Ljava/util/Map;

    .line 107
    .line 108
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ql;->B:Ljava/util/Map;

    .line 109
    .line 110
    iget-object p1, p3, Lio/appmetrica/analytics/impl/Ul;->C:Lio/appmetrica/analytics/impl/N9;

    .line 111
    .line 112
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ql;->C:Lio/appmetrica/analytics/impl/N9;

    .line 113
    .line 114
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ql;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ql;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/appmetrica/analytics/impl/Ql;->v:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/appmetrica/analytics/impl/Ql;->u:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ql;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "StartupState(deviceId="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ql;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", deviceIdHash="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ql;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", startupStateModel="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ql;->c:Lio/appmetrica/analytics/impl/Ul;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 v1, 0x29

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method
