.class public final Lio/appmetrica/analytics/billingv6/impl/a;
.super Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/billingv6/impl/d;

.field public final synthetic b:Lcom/android/billingclient/api/h;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/billingv6/impl/d;Lcom/android/billingclient/api/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/billingv6/impl/a;->a:Lio/appmetrica/analytics/billingv6/impl/d;

    .line 2
    .line 3
    iput-object p2, p0, Lio/appmetrica/analytics/billingv6/impl/a;->b:Lcom/android/billingclient/api/h;

    .line 4
    .line 5
    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final runSafety()V
    .locals 12

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/billingv6/impl/a;->a:Lio/appmetrica/analytics/billingv6/impl/d;

    .line 2
    .line 3
    iget-object v1, p0, Lio/appmetrica/analytics/billingv6/impl/a;->b:Lcom/android/billingclient/api/h;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/android/billingclient/api/h;->b()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v0, v0, Lio/appmetrica/analytics/billingv6/impl/d;->e:Lio/appmetrica/analytics/billingv6/impl/u;

    .line 15
    .line 16
    invoke-interface {v0}, Lio/appmetrica/analytics/billingv6/impl/u;->onUpdateFinished()V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const-string v1, "inapp"

    .line 21
    .line 22
    const-string v2, "subs"

    .line 23
    .line 24
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Lyc/m;->k([Ljava/lang/Object;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Ljava/lang/String;

    .line 47
    .line 48
    new-instance v10, Lio/appmetrica/analytics/billingv6/impl/p;

    .line 49
    .line 50
    iget-object v4, v0, Lio/appmetrica/analytics/billingv6/impl/d;->a:Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

    .line 51
    .line 52
    iget-object v5, v0, Lio/appmetrica/analytics/billingv6/impl/d;->b:Lcom/android/billingclient/api/d;

    .line 53
    .line 54
    iget-object v6, v0, Lio/appmetrica/analytics/billingv6/impl/d;->c:Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;

    .line 55
    .line 56
    iget-object v11, v0, Lio/appmetrica/analytics/billingv6/impl/d;->d:Lio/appmetrica/analytics/billingv6/impl/g;

    .line 57
    .line 58
    iget-object v9, v0, Lio/appmetrica/analytics/billingv6/impl/d;->e:Lio/appmetrica/analytics/billingv6/impl/u;

    .line 59
    .line 60
    move-object v3, v10

    .line 61
    move-object v7, v2

    .line 62
    move-object v8, v11

    .line 63
    invoke-direct/range {v3 .. v9}, Lio/appmetrica/analytics/billingv6/impl/p;-><init>(Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;Lcom/android/billingclient/api/d;Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;Ljava/lang/String;Lio/appmetrica/analytics/billingv6/impl/g;Lio/appmetrica/analytics/billingv6/impl/u;)V

    .line 64
    .line 65
    .line 66
    iget-object v3, v11, Lio/appmetrica/analytics/billingv6/impl/g;->c:Ljava/util/LinkedHashSet;

    .line 67
    .line 68
    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    iget-object v3, v0, Lio/appmetrica/analytics/billingv6/impl/d;->c:Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;

    .line 72
    .line 73
    invoke-interface {v3}, Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;->getUiExecutor()Ljava/util/concurrent/Executor;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    new-instance v4, Lio/appmetrica/analytics/billingv6/impl/c;

    .line 78
    .line 79
    invoke-direct {v4, v0, v2, v10}, Lio/appmetrica/analytics/billingv6/impl/c;-><init>(Lio/appmetrica/analytics/billingv6/impl/d;Ljava/lang/String;Lio/appmetrica/analytics/billingv6/impl/p;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    :goto_1
    return-void
.end method
