.class public final Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/billinginterface/internal/monitor/BillingMonitor;
.implements Lio/appmetrica/analytics/billingv6/impl/u;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoSender;

.field private final e:Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoManager;

.field private final f:Lio/appmetrica/analytics/billinginterface/internal/update/UpdatePolicy;

.field private g:Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoStorage;Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoSender;Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoManager;Lio/appmetrica/analytics/billinginterface/internal/update/UpdatePolicy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;->b:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;->c:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p5, p0, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;->d:Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoSender;

    .line 6
    iput-object p6, p0, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;->e:Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoManager;

    .line 7
    iput-object p7, p0, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;->f:Lio/appmetrica/analytics/billinginterface/internal/update/UpdatePolicy;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoStorage;Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoSender;Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoManager;Lio/appmetrica/analytics/billinginterface/internal/update/UpdatePolicy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Lio/appmetrica/analytics/billingv6/impl/e;

    move-object v5, p4

    invoke-direct {v0, p4}, Lio/appmetrica/analytics/billingv6/impl/e;-><init>(Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoStorage;)V

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object v5, p4

    move-object v7, p6

    :goto_0
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_1

    .line 9
    new-instance v0, Lio/appmetrica/analytics/billingv6/impl/v;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lio/appmetrica/analytics/billingv6/impl/v;-><init>(Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v8, v0

    goto :goto_1

    :cond_1
    move-object/from16 v8, p7

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 10
    invoke-direct/range {v1 .. v8}, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoStorage;Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoSender;Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoManager;Lio/appmetrica/analytics/billinginterface/internal/update/UpdatePolicy;)V

    return-void
.end method

.method public static final synthetic access$getBillingInfoManager$p(Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;)Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;->e:Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getBillingInfoSender$p(Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;)Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoSender;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;->d:Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoSender;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getUiExecutor$p(Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;->c:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getUpdatePolicy$p(Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;)Lio/appmetrica/analytics/billinginterface/internal/update/UpdatePolicy;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;->f:Lio/appmetrica/analytics/billinginterface/internal/update/UpdatePolicy;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getWorkerExecutor$p(Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;->b:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public declared-synchronized onBillingConfigChanged(Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;->g:Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

    .line 3
    .line 4
    invoke-static {v0, p1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_1
    iput-object p1, p0, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;->g:Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-boolean v0, p0, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;->h:Z

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;->h:Z

    .line 24
    .line 25
    iget-object v0, p0, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;->c:Ljava/util/concurrent/Executor;

    .line 26
    .line 27
    new-instance v1, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor$updateBilling$1;

    .line 28
    .line 29
    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor$updateBilling$1;-><init>(Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    :goto_0
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    monitor-exit p0

    .line 39
    throw p1
.end method

.method public onSessionResumed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;->g:Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v1, p0, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;->h:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;->h:Z

    .line 13
    .line 14
    iget-object v1, p0, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;->c:Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    new-instance v2, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor$updateBilling$1;

    .line 17
    .line 18
    invoke-direct {v2, p0, v0}, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor$updateBilling$1;-><init>(Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public declared-synchronized onUpdateFinished()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;->h:Z
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
