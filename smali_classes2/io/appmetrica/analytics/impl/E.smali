.class public final Lio/appmetrica/analytics/impl/E;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Xe;

.field public final b:Lio/appmetrica/analytics/coreutils/internal/toggle/SavableToggle;

.field public final c:Lio/appmetrica/analytics/coreutils/internal/toggle/OuterStateToggle;

.field public final d:Lio/appmetrica/analytics/coreutils/internal/toggle/OuterStateToggle;

.field public final e:Lio/appmetrica/analytics/coreutils/internal/toggle/ConjunctiveCompositeThreadSafeToggle;

.field public final f:Lio/appmetrica/analytics/coreutils/internal/toggle/ConjunctiveCompositeThreadSafeToggle;

.field public final g:Lio/appmetrica/analytics/coreutils/internal/toggle/SavableToggle;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Ql;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lio/appmetrica/analytics/impl/za;->j()Lio/appmetrica/analytics/impl/za;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/za;->x()Lio/appmetrica/analytics/impl/Xe;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lio/appmetrica/analytics/impl/E;->a:Lio/appmetrica/analytics/impl/Xe;

    .line 13
    .line 14
    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/toggle/SavableToggle;

    .line 15
    .line 16
    new-instance v1, Lio/appmetrica/analytics/impl/D;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/D;-><init>(Lio/appmetrica/analytics/impl/E;)V

    .line 19
    .line 20
    .line 21
    const-string v2, "advIdsFromClientApi"

    .line 22
    .line 23
    invoke-direct {v0, v2, v1}, Lio/appmetrica/analytics/coreutils/internal/toggle/SavableToggle;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/data/Savable;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lio/appmetrica/analytics/impl/E;->b:Lio/appmetrica/analytics/coreutils/internal/toggle/SavableToggle;

    .line 27
    .line 28
    new-instance v1, Lio/appmetrica/analytics/coreutils/internal/toggle/OuterStateToggle;

    .line 29
    .line 30
    const-string v2, "GAID-remote-config"

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-direct {v1, v3, v2}, Lio/appmetrica/analytics/coreutils/internal/toggle/OuterStateToggle;-><init>(ZLjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lio/appmetrica/analytics/impl/E;->c:Lio/appmetrica/analytics/coreutils/internal/toggle/OuterStateToggle;

    .line 37
    .line 38
    new-instance v2, Lio/appmetrica/analytics/coreutils/internal/toggle/OuterStateToggle;

    .line 39
    .line 40
    const-string v4, "HOAID-remote-config"

    .line 41
    .line 42
    invoke-direct {v2, v3, v4}, Lio/appmetrica/analytics/coreutils/internal/toggle/OuterStateToggle;-><init>(ZLjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iput-object v2, p0, Lio/appmetrica/analytics/impl/E;->d:Lio/appmetrica/analytics/coreutils/internal/toggle/OuterStateToggle;

    .line 46
    .line 47
    new-instance v4, Lio/appmetrica/analytics/coreutils/internal/toggle/ConjunctiveCompositeThreadSafeToggle;

    .line 48
    .line 49
    const/4 v5, 0x2

    .line 50
    new-array v6, v5, [Lio/appmetrica/analytics/coreutils/internal/toggle/SimpleThreadSafeToggle;

    .line 51
    .line 52
    aput-object v0, v6, v3

    .line 53
    .line 54
    const/4 v7, 0x1

    .line 55
    aput-object v1, v6, v7

    .line 56
    .line 57
    invoke-static {v6}, Lyc/m;->k([Ljava/lang/Object;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v6, "GAID"

    .line 62
    .line 63
    invoke-direct {v4, v1, v6}, Lio/appmetrica/analytics/coreutils/internal/toggle/ConjunctiveCompositeThreadSafeToggle;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iput-object v4, p0, Lio/appmetrica/analytics/impl/E;->e:Lio/appmetrica/analytics/coreutils/internal/toggle/ConjunctiveCompositeThreadSafeToggle;

    .line 67
    .line 68
    new-instance v1, Lio/appmetrica/analytics/coreutils/internal/toggle/ConjunctiveCompositeThreadSafeToggle;

    .line 69
    .line 70
    new-array v4, v5, [Lio/appmetrica/analytics/coreutils/internal/toggle/SimpleThreadSafeToggle;

    .line 71
    .line 72
    aput-object v0, v4, v3

    .line 73
    .line 74
    aput-object v2, v4, v7

    .line 75
    .line 76
    invoke-static {v4}, Lyc/m;->k([Ljava/lang/Object;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    const-string v3, "HOAID"

    .line 81
    .line 82
    invoke-direct {v1, v2, v3}, Lio/appmetrica/analytics/coreutils/internal/toggle/ConjunctiveCompositeThreadSafeToggle;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iput-object v1, p0, Lio/appmetrica/analytics/impl/E;->f:Lio/appmetrica/analytics/coreutils/internal/toggle/ConjunctiveCompositeThreadSafeToggle;

    .line 86
    .line 87
    iput-object v0, p0, Lio/appmetrica/analytics/impl/E;->g:Lio/appmetrica/analytics/coreutils/internal/toggle/SavableToggle;

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/E;->a(Lio/appmetrica/analytics/impl/Ql;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/B;
    .locals 7

    .line 8
    new-instance v0, Lio/appmetrica/analytics/impl/B;

    .line 9
    iget-object v1, p0, Lio/appmetrica/analytics/impl/E;->e:Lio/appmetrica/analytics/coreutils/internal/toggle/ConjunctiveCompositeThreadSafeToggle;

    invoke-virtual {v1}, Lio/appmetrica/analytics/coreutils/internal/toggle/ConjunctiveCompositeThreadSafeToggle;->getActualState()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/E;->b:Lio/appmetrica/analytics/coreutils/internal/toggle/SavableToggle;

    invoke-virtual {v1}, Lio/appmetrica/analytics/coreutils/internal/toggle/SimpleThreadSafeToggle;->getActualState()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v4

    goto :goto_0

    .line 11
    :cond_1
    iget-object v1, p0, Lio/appmetrica/analytics/impl/E;->c:Lio/appmetrica/analytics/coreutils/internal/toggle/OuterStateToggle;

    invoke-virtual {v1}, Lio/appmetrica/analytics/coreutils/internal/toggle/SimpleThreadSafeToggle;->getActualState()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    .line 12
    :goto_0
    iget-object v6, p0, Lio/appmetrica/analytics/impl/E;->f:Lio/appmetrica/analytics/coreutils/internal/toggle/ConjunctiveCompositeThreadSafeToggle;

    invoke-virtual {v6}, Lio/appmetrica/analytics/coreutils/internal/toggle/ConjunctiveCompositeThreadSafeToggle;->getActualState()Z

    move-result v6

    if-eqz v6, :cond_3

    move v2, v5

    goto :goto_1

    .line 13
    :cond_3
    iget-object v6, p0, Lio/appmetrica/analytics/impl/E;->b:Lio/appmetrica/analytics/coreutils/internal/toggle/SavableToggle;

    invoke-virtual {v6}, Lio/appmetrica/analytics/coreutils/internal/toggle/SimpleThreadSafeToggle;->getActualState()Z

    move-result v6

    if-nez v6, :cond_4

    move v2, v4

    goto :goto_1

    .line 14
    :cond_4
    iget-object v6, p0, Lio/appmetrica/analytics/impl/E;->d:Lio/appmetrica/analytics/coreutils/internal/toggle/OuterStateToggle;

    invoke-virtual {v6}, Lio/appmetrica/analytics/coreutils/internal/toggle/SimpleThreadSafeToggle;->getActualState()Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    move v2, v3

    .line 15
    :goto_1
    iget-object v6, p0, Lio/appmetrica/analytics/impl/E;->g:Lio/appmetrica/analytics/coreutils/internal/toggle/SavableToggle;

    invoke-interface {v6}, Lio/appmetrica/analytics/coreapi/internal/control/Toggle;->getActualState()Z

    move-result v6

    if-eqz v6, :cond_6

    move v3, v5

    goto :goto_2

    .line 16
    :cond_6
    iget-object v5, p0, Lio/appmetrica/analytics/impl/E;->b:Lio/appmetrica/analytics/coreutils/internal/toggle/SavableToggle;

    invoke-virtual {v5}, Lio/appmetrica/analytics/coreutils/internal/toggle/SimpleThreadSafeToggle;->getActualState()Z

    move-result v5

    if-nez v5, :cond_7

    move v3, v4

    .line 17
    :cond_7
    :goto_2
    invoke-direct {v0, v1, v2, v3}, Lio/appmetrica/analytics/impl/B;-><init>(III)V

    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Ql;)V
    .locals 5

    .line 1
    iget-boolean v0, p1, Lio/appmetrica/analytics/impl/Ql;->p:Z

    .line 2
    iget-object v1, p0, Lio/appmetrica/analytics/impl/E;->c:Lio/appmetrica/analytics/coreutils/internal/toggle/OuterStateToggle;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object v4, p1, Lio/appmetrica/analytics/impl/Ql;->n:Lio/appmetrica/analytics/impl/C4;

    .line 4
    iget-boolean v4, v4, Lio/appmetrica/analytics/impl/C4;->c:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Lio/appmetrica/analytics/coreutils/internal/toggle/OuterStateToggle;->update(Z)V

    .line 5
    iget-object v1, p0, Lio/appmetrica/analytics/impl/E;->d:Lio/appmetrica/analytics/coreutils/internal/toggle/OuterStateToggle;

    if-eqz v0, :cond_2

    .line 6
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Ql;->n:Lio/appmetrica/analytics/impl/C4;

    .line 7
    iget-boolean p1, p1, Lio/appmetrica/analytics/impl/C4;->e:Z

    if-eqz p1, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/toggle/OuterStateToggle;->update(Z)V

    return-void
.end method
