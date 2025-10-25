.class public final Lio/appmetrica/analytics/impl/a3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/ChargeTypeProvider;


# static fields
.field public static final d:Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/ChargeType;


# instance fields
.field public final a:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

.field public volatile b:Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/BatteryInfo;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/ChargeType;->UNKNOWN:Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/ChargeType;

    .line 2
    .line 3
    sput-object v0, Lio/appmetrica/analytics/impl/a3;->d:Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/ChargeType;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;Lio/appmetrica/analytics/impl/X2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/appmetrica/analytics/impl/a3;->c:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Lio/appmetrica/analytics/impl/Z2;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/Z2;-><init>(Lio/appmetrica/analytics/impl/a3;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lio/appmetrica/analytics/impl/a3;->a:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    .line 17
    .line 18
    invoke-virtual {p2, v0}, Lio/appmetrica/analytics/impl/X2;->a(Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lio/appmetrica/analytics/impl/a3;->a(Landroid/content/Intent;)Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/BatteryInfo;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lio/appmetrica/analytics/impl/a3;->b:Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/BatteryInfo;

    .line 27
    .line 28
    return-void
.end method

.method public static a(Landroid/content/Intent;)Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/BatteryInfo;
    .locals 4

    .line 1
    sget-object v0, Lio/appmetrica/analytics/impl/a3;->d:Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/ChargeType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p0, :cond_4

    .line 5
    .line 6
    const-string v0, "level"

    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v3, "scale"

    .line 14
    .line 15
    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-lez v0, :cond_0

    .line 20
    .line 21
    if-lez v3, :cond_0

    .line 22
    .line 23
    mul-int/lit8 v0, v0, 0x64

    .line 24
    .line 25
    div-int/2addr v0, v3

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    move-object v1, v0

    .line 31
    :cond_0
    const-string v0, "plugged"

    .line 32
    .line 33
    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    sget-object v0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/ChargeType;->NONE:Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/ChargeType;

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    if-eq p0, v2, :cond_3

    .line 41
    .line 42
    const/4 v2, 0x2

    .line 43
    if-eq p0, v2, :cond_2

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    if-eq p0, v2, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    sget-object v0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/ChargeType;->WIRELESS:Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/ChargeType;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    sget-object v0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/ChargeType;->USB:Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/ChargeType;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    sget-object v0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/ChargeType;->AC:Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/ChargeType;

    .line 56
    .line 57
    :cond_4
    :goto_0
    new-instance p0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/BatteryInfo;

    .line 58
    .line 59
    invoke-direct {p0, v1, v0}, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/BatteryInfo;-><init>(Ljava/lang/Integer;Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/ChargeType;)V

    .line 60
    .line 61
    .line 62
    return-object p0
.end method


# virtual methods
.method public final getBatteryLevel()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/a3;->b:Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/BatteryInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/BatteryInfo;->batteryLevel:Ljava/lang/Integer;

    .line 8
    .line 9
    :goto_0
    return-object v0
.end method

.method public final getChargeType()Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/ChargeType;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/a3;->b:Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/BatteryInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/ChargeType;->UNKNOWN:Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/ChargeType;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, v0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/BatteryInfo;->chargeType:Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/ChargeType;

    .line 9
    .line 10
    :goto_0
    return-object v0
.end method

.method public final declared-synchronized registerChargeTypeListener(Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/ChargeTypeChangeListener;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/a3;->c:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/a3;->getChargeType()Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/ChargeType;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p1, v0}, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/ChargeTypeChangeListener;->onChargeTypeChanged(Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/ChargeType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method
