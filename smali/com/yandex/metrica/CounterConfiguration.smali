.class public Lcom/yandex/metrica/CounterConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/CounterConfiguration$b;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/yandex/metrica/CounterConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/CounterConfiguration$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/CounterConfiguration$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/yandex/metrica/CounterConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    return-void
.end method

.method constructor <init>(Landroid/content/ContentValues;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 40
    invoke-direct {p0}, Lcom/yandex/metrica/CounterConfiguration;->T()V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/CounterConfiguration;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    monitor-enter p1

    .line 3
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    iget-object v1, p1, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    iput-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 4
    invoke-direct {p0}, Lcom/yandex/metrica/CounterConfiguration;->T()V

    .line 5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public constructor <init>(Lcom/yandex/metrica/f;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/yandex/metrica/CounterConfiguration;-><init>()V

    .line 28
    monitor-enter p0

    .line 29
    :try_start_0
    iget-object v0, p1, Lcom/yandex/metrica/ReporterConfig;->apiKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->h(Ljava/lang/String;)V

    .line 30
    iget-object v0, p1, Lcom/yandex/metrica/ReporterConfig;->sessionTimeout:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->x(Ljava/lang/Integer;)V

    .line 31
    iget-object v0, p1, Lcom/yandex/metrica/f;->a:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->g(Ljava/lang/Integer;)V

    .line 32
    iget-object v0, p1, Lcom/yandex/metrica/f;->b:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->m(Ljava/lang/Integer;)V

    .line 33
    iget-object v0, p1, Lcom/yandex/metrica/ReporterConfig;->logs:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->f(Ljava/lang/Boolean;)V

    .line 34
    iget-object v0, p1, Lcom/yandex/metrica/ReporterConfig;->statisticsSending:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->r(Ljava/lang/Boolean;)V

    .line 35
    iget-object v0, p1, Lcom/yandex/metrica/ReporterConfig;->maxReportsInDatabaseCount:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->s(Ljava/lang/Integer;)V

    .line 36
    iget-object p1, p1, Lcom/yandex/metrica/ReporterConfig;->apiKey:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/yandex/metrica/CounterConfiguration;->t(Ljava/lang/String;)V

    .line 37
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public constructor <init>(Lcom/yandex/metrica/j;Lcom/yandex/metrica/CounterConfiguration$b;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/yandex/metrica/CounterConfiguration;-><init>()V

    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->apiKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->h(Ljava/lang/String;)V

    .line 11
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->sessionTimeout:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->x(Ljava/lang/Integer;)V

    .line 12
    invoke-direct {p0, p1}, Lcom/yandex/metrica/CounterConfiguration;->F(Lcom/yandex/metrica/j;)V

    .line 13
    invoke-direct {p0, p1}, Lcom/yandex/metrica/CounterConfiguration;->D(Lcom/yandex/metrica/j;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/yandex/metrica/CounterConfiguration;->q(Lcom/yandex/metrica/j;)V

    .line 15
    iget-object v0, p1, Lcom/yandex/metrica/j;->f:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->g(Ljava/lang/Integer;)V

    .line 16
    iget-object v0, p1, Lcom/yandex/metrica/j;->g:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->m(Ljava/lang/Integer;)V

    .line 17
    invoke-direct {p0, p1}, Lcom/yandex/metrica/CounterConfiguration;->k(Lcom/yandex/metrica/j;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/yandex/metrica/CounterConfiguration;->e(Lcom/yandex/metrica/j;)V

    .line 19
    invoke-direct {p0, p1}, Lcom/yandex/metrica/CounterConfiguration;->H(Lcom/yandex/metrica/j;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/yandex/metrica/CounterConfiguration;->w(Lcom/yandex/metrica/j;)V

    .line 21
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->statisticsSending:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->r(Ljava/lang/Boolean;)V

    .line 22
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->maxReportsInDatabaseCount:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->s(Ljava/lang/Integer;)V

    .line 23
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->nativeCrashReporting:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->l(Ljava/lang/Boolean;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/yandex/metrica/CounterConfiguration;->J(Lcom/yandex/metrica/j;)V

    .line 25
    invoke-virtual {p0, p2}, Lcom/yandex/metrica/CounterConfiguration;->d(Lcom/yandex/metrica/CounterConfiguration$b;)V

    .line 26
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private D(Lcom/yandex/metrica/j;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->locationTracking:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, Lcom/yandex/metrica/YandexMetricaConfig;->locationTracking:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/CounterConfiguration;->o(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private F(Lcom/yandex/metrica/j;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->location:Landroid/location/Location;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, Lcom/yandex/metrica/YandexMetricaConfig;->location:Landroid/location/Location;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/CounterConfiguration;->c(Landroid/location/Location;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private H(Lcom/yandex/metrica/j;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/yandex/metrica/j;->j:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, Lcom/yandex/metrica/j;->j:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    monitor-enter p0

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v1, "CFG_PERMISSIONS_COLLECTING"

    .line 23
    .line 24
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    monitor-exit p0

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit p0

    .line 31
    throw p1

    .line 32
    :cond_0
    :goto_0
    return-void
.end method

.method private J(Lcom/yandex/metrica/j;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->revenueAutoTrackingEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, Lcom/yandex/metrica/YandexMetricaConfig;->revenueAutoTrackingEnabled:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    monitor-enter p0

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v1, "CFG_REVENUE_AUTO_TRACKING_ENABLED"

    .line 23
    .line 24
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    monitor-exit p0

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit p0

    .line 31
    throw p1

    .line 32
    :cond_0
    :goto_0
    return-void
.end method

.method private T()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 2
    .line 3
    const-string v1, "CFG_REPORTER_TYPE"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 13
    .line 14
    const-string v1, "CFG_MAIN_REPORTER"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 23
    .line 24
    const-string v1, "CFG_MAIN_REPORTER"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    sget-object v0, Lcom/yandex/metrica/CounterConfiguration$b;->b:Lcom/yandex/metrica/CounterConfiguration$b;

    .line 37
    .line 38
    monitor-enter p0

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration$b;->b()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v2, "CFG_REPORTER_TYPE"

    .line 46
    .line 47
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    monitor-exit p0

    .line 53
    throw v0

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/yandex/metrica/CounterConfiguration;->b()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-direct {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->t(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 63
    .line 64
    const-string v1, "CFG_COMMUTATION_REPORTER"

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 73
    .line 74
    const-string v1, "CFG_COMMUTATION_REPORTER"

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    sget-object v0, Lcom/yandex/metrica/CounterConfiguration$b;->e:Lcom/yandex/metrica/CounterConfiguration$b;

    .line 87
    .line 88
    monitor-enter p0

    .line 89
    :try_start_1
    iget-object v1, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration$b;->b()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const-string v2, "CFG_REPORTER_TYPE"

    .line 96
    .line 97
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    .line 99
    .line 100
    :goto_0
    monitor-exit p0

    .line 101
    goto :goto_1

    .line 102
    :catchall_1
    move-exception v0

    .line 103
    monitor-exit p0

    .line 104
    throw v0

    .line 105
    :cond_3
    :goto_1
    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/yandex/metrica/CounterConfiguration;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    :try_start_0
    const-string v1, "COUNTER_CFG_OBJ"

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/yandex/metrica/CounterConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    move-object v0, v1

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    return-object v0

    .line 15
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 16
    .line 17
    new-instance v0, Lcom/yandex/metrica/CounterConfiguration;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/yandex/metrica/CounterConfiguration;-><init>()V

    .line 20
    .line 21
    .line 22
    :cond_1
    monitor-enter v0

    .line 23
    if-nez p0, :cond_2

    .line 24
    .line 25
    goto/16 :goto_4

    .line 26
    .line 27
    :cond_2
    :try_start_1
    const-string v1, "CFG_DISPATCH_PERIOD"

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    const-string v1, "CFG_DISPATCH_PERIOD"

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 42
    :try_start_2
    iget-object v2, v0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 43
    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v3, "CFG_DISPATCH_PERIOD"

    .line 49
    .line 50
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 51
    .line 52
    .line 53
    :try_start_3
    monitor-exit v0

    .line 54
    goto :goto_1

    .line 55
    :catchall_1
    move-exception p0

    .line 56
    monitor-exit v0

    .line 57
    throw p0

    .line 58
    :cond_3
    :goto_1
    const-string v1, "CFG_SESSION_TIMEOUT"

    .line 59
    .line 60
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    const-string v1, "CFG_SESSION_TIMEOUT"

    .line 67
    .line 68
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 73
    :try_start_4
    iget-object v2, v0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 74
    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const-string v3, "CFG_SESSION_TIMEOUT"

    .line 80
    .line 81
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 82
    .line 83
    .line 84
    :try_start_5
    monitor-exit v0

    .line 85
    goto :goto_2

    .line 86
    :catchall_2
    move-exception p0

    .line 87
    monitor-exit v0

    .line 88
    throw p0

    .line 89
    :cond_4
    :goto_2
    const-string v1, "CFG_MAX_REPORTS_COUNT"

    .line 90
    .line 91
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_6

    .line 96
    .line 97
    const-string v1, "CFG_MAX_REPORTS_COUNT"

    .line 98
    .line 99
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    monitor-enter v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 104
    :try_start_6
    iget-object v2, v0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 105
    .line 106
    const-string v3, "CFG_MAX_REPORTS_COUNT"

    .line 107
    .line 108
    if-gtz v1, :cond_5

    .line 109
    .line 110
    const v1, 0x7fffffff

    .line 111
    .line 112
    .line 113
    :cond_5
    :try_start_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 118
    .line 119
    .line 120
    :try_start_8
    monitor-exit v0

    .line 121
    goto :goto_3

    .line 122
    :catchall_3
    move-exception p0

    .line 123
    monitor-exit v0

    .line 124
    throw p0

    .line 125
    :cond_6
    :goto_3
    const-string v1, "CFG_API_KEY"

    .line 126
    .line 127
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    if-eqz v1, :cond_7

    .line 132
    .line 133
    const-string v1, "CFG_API_KEY"

    .line 134
    .line 135
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    const-string v2, "-1"

    .line 140
    .line 141
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-nez v1, :cond_7

    .line 146
    .line 147
    const-string v1, "CFG_API_KEY"

    .line 148
    .line 149
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-virtual {v0, p0}, Lcom/yandex/metrica/CounterConfiguration;->n(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 154
    .line 155
    .line 156
    :cond_7
    :goto_4
    monitor-exit v0

    .line 157
    return-object v0

    .line 158
    :catchall_4
    move-exception p0

    .line 159
    monitor-exit v0

    .line 160
    throw p0
.end method

.method private e(Lcom/yandex/metrica/j;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/yandex/metrica/j;->e:Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, Lcom/yandex/metrica/j;->e:Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    monitor-enter p0

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v1, "CFG_APP_VERSION_CODE"

    .line 23
    .line 24
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    monitor-exit p0

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit p0

    .line 31
    throw p1

    .line 32
    :cond_0
    :goto_0
    return-void
.end method

.method private f(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v1, "CFG_IS_LOG_ENABLED"

    .line 19
    .line 20
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    monitor-exit p0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    monitor-exit p0

    .line 27
    throw p1

    .line 28
    :cond_0
    :goto_0
    return-void
.end method

.method private g(Ljava/lang/Integer;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v1, "CFG_DISPATCH_PERIOD"

    .line 19
    .line 20
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    monitor-exit p0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    monitor-exit p0

    .line 27
    throw p1

    .line 28
    :cond_0
    :goto_0
    return-void
.end method

.method private h(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 9
    .line 10
    const-string v1, "CFG_API_KEY"

    .line 11
    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0

    .line 19
    throw p1

    .line 20
    :cond_0
    :goto_0
    return-void
.end method

.method private k(Lcom/yandex/metrica/j;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->appVersion:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, Lcom/yandex/metrica/YandexMetricaConfig;->appVersion:Ljava/lang/String;

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 13
    .line 14
    const-string v1, "CFG_APP_VERSION"

    .line 15
    .line 16
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    monitor-exit p0

    .line 23
    throw p1

    .line 24
    :cond_0
    :goto_0
    return-void
.end method

.method private l(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 8
    .line 9
    const-string v1, "CFG_NATIVE_CRASHES_ENABLED"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private m(Ljava/lang/Integer;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    const-string v1, "CFG_MAX_REPORTS_COUNT"

    .line 15
    .line 16
    if-gtz p1, :cond_0

    .line 17
    .line 18
    const p1, 0x7fffffff

    .line 19
    .line 20
    .line 21
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    monitor-exit p0

    .line 32
    throw p1

    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method private q(Lcom/yandex/metrica/j;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/yandex/metrica/j;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object p1, p1, Lcom/yandex/metrica/j;->a:Ljava/lang/String;

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    const-string v1, "CFG_DEVICE_SIZE_TYPE"

    .line 15
    .line 16
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    .line 26
    monitor-exit p0

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    monitor-exit p0

    .line 30
    throw p1

    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method private r(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/CounterConfiguration;->u(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private s(Ljava/lang/Integer;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 8
    .line 9
    const-string v1, "MAX_REPORTS_IN_DB_COUNT"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private t(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "20799a27-fa80-4b36-b2db-0f8141f24180"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    sget-object p1, Lcom/yandex/metrica/CounterConfiguration$b;->d:Lcom/yandex/metrica/CounterConfiguration$b;

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/yandex/metrica/CounterConfiguration$b;->b()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v1, "CFG_REPORTER_TYPE"

    .line 19
    .line 20
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    monitor-exit p0

    .line 26
    throw p1

    .line 27
    :cond_0
    sget-object p1, Lcom/yandex/metrica/CounterConfiguration$b;->c:Lcom/yandex/metrica/CounterConfiguration$b;

    .line 28
    .line 29
    monitor-enter p0

    .line 30
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/yandex/metrica/CounterConfiguration$b;->b()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v1, "CFG_REPORTER_TYPE"

    .line 37
    .line 38
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    .line 40
    .line 41
    :goto_0
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :catchall_1
    move-exception p1

    .line 44
    monitor-exit p0

    .line 45
    throw p1
.end method

.method private w(Lcom/yandex/metrica/j;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->firstActivationAsUpdate:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, Lcom/yandex/metrica/YandexMetricaConfig;->firstActivationAsUpdate:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    monitor-enter p0

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v1, "CFG_IS_FIRST_ACTIVATION_AS_UPDATE"

    .line 23
    .line 24
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    monitor-exit p0

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit p0

    .line 31
    throw p1

    .line 32
    :cond_0
    :goto_0
    return-void
.end method

.method private x(Ljava/lang/Integer;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v1, "CFG_SESSION_TIMEOUT"

    .line 19
    .line 20
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    monitor-exit p0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    monitor-exit p0

    .line 27
    throw p1

    .line 28
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public C()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 2
    .line 3
    const-string v1, "CFG_DISPATCH_PERIOD"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public E()Ljava/lang/Boolean;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 2
    .line 3
    const-string v1, "CFG_LOCATION_ALLOWED_BY_BRIDGE"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public G()Landroid/location/Location;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 2
    .line 3
    const-string v1, "CFG_MANUAL_LOCATION"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget v1, Lcom/yandex/metrica/impl/ob/vc;->q:I

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :try_start_0
    array-length v3, v0

    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-virtual {v1, v0, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 32
    .line 33
    .line 34
    const-class v0, Landroid/location/Location;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/location/Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 47
    .line 48
    .line 49
    move-object v2, v0

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 52
    .line 53
    .line 54
    :cond_0
    :goto_0
    return-object v2
.end method

.method public I()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 2
    .line 3
    const-string v1, "CFG_MAX_REPORTS_COUNT"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public K()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 2
    .line 3
    const-string v1, "MAX_REPORTS_IN_DB_COUNT"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public L()Ljava/lang/Boolean;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 2
    .line 3
    const-string v1, "CFG_NATIVE_CRASHES_ENABLED"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public M()Lcom/yandex/metrica/CounterConfiguration$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 2
    .line 3
    const-string v1, "CFG_REPORTER_TYPE"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/yandex/metrica/CounterConfiguration$b;->a(Ljava/lang/String;)Lcom/yandex/metrica/CounterConfiguration$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public N()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 2
    .line 3
    const-string v1, "CFG_SESSION_TIMEOUT"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public O()Ljava/lang/Boolean;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 2
    .line 3
    const-string v1, "CFG_STATISTICS_SENDING"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public P()Ljava/lang/Boolean;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 2
    .line 3
    const-string v1, "CFG_IS_FIRST_ACTIVATION_AS_UPDATE"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public Q()Ljava/lang/Boolean;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 2
    .line 3
    const-string v1, "CFG_LOCATION_TRACKING"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public R()Ljava/lang/Boolean;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 2
    .line 3
    const-string v1, "CFG_IS_LOG_ENABLED"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public declared-synchronized S()Ljava/lang/Boolean;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 3
    .line 4
    const-string v1, "CFG_REVENUE_AUTO_TRACKING_ENABLED"

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p0

    .line 14
    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 2
    .line 3
    const-string v1, "CFG_API_KEY"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final declared-synchronized c(Landroid/location/Location;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 3
    .line 4
    const-string v1, "CFG_MANUAL_LOCATION"

    .line 5
    .line 6
    sget v2, Lcom/yandex/metrica/impl/ob/vc;->q:I

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 11
    .line 12
    .line 13
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    .line 18
    .line 19
    .line 20
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 30
    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_1
    move-exception p1

    .line 35
    monitor-exit p0

    .line 36
    throw p1
.end method

.method public declared-synchronized d(Lcom/yandex/metrica/CounterConfiguration$b;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/yandex/metrica/CounterConfiguration$b;->b()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v1, "CFG_REPORTER_TYPE"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized i(Z)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v1, "CFG_LOCATION_ALLOWED_BY_BRIDGE"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
.end method

.method public j()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 2
    .line 3
    const-string v1, "CFG_APP_VERSION_CODE"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public declared-synchronized n(Ljava/lang/String;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 3
    .line 4
    const-string v1, "CFG_API_KEY"

    .line 5
    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0

    .line 13
    throw p1
.end method

.method public declared-synchronized o(Z)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v1, "CFG_LOCATION_TRACKING"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
.end method

.method public p()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 2
    .line 3
    const-string v1, "CFG_APP_VERSION"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v1, "CounterConfiguration{mParamsMapping="

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x7d

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit p0

    .line 27
    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    monitor-exit p0

    .line 30
    throw v0
.end method

.method public final declared-synchronized u(Z)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v1, "CFG_STATISTICS_SENDING"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
.end method

.method public v()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 2
    .line 3
    const-string v1, "CFG_DEVICE_SIZE_TYPE"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public declared-synchronized writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance p2, Landroid/os/Bundle;

    .line 3
    .line 4
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 8
    .line 9
    const-string v1, "com.yandex.metrica.CounterConfiguration.data"

    .line 10
    .line 11
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit p0

    .line 21
    throw p1
.end method

.method public declared-synchronized z(Ljava/lang/String;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 3
    .line 4
    const-string v1, "CFG_UUID"

    .line 5
    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0

    .line 13
    throw p1
.end method
