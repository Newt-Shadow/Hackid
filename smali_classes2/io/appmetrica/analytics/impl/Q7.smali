.class public final Lio/appmetrica/analytics/impl/Q7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceComponentsInitializer;


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "io.appmetrica.analytics.apphud.internal.ApphudServiceModuleEntryPoint"

    .line 5
    .line 6
    const-string v1, "io.appmetrica.analytics.screenshot.internal.ScreenshotServiceModuleEntryPoint"

    .line 7
    .line 8
    const-string v2, "io.appmetrica.analytics.remotepermissions.internal.RemotePermissionsModuleEntryPoint"

    .line 9
    .line 10
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lyc/m;->k([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Q7;->a:Ljava/util/List;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/content/Context;)V
    .locals 6

    .line 1
    sget-object v0, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 2
    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/za;->s:Lio/appmetrica/analytics/impl/ed;

    .line 4
    .line 5
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Q7;->a:Ljava/util/List;

    .line 6
    .line 7
    new-instance v2, Ljava/util/ArrayList;

    .line 8
    .line 9
    const/16 v3, 0xa

    .line 10
    .line 11
    invoke-static {v1, v3}, Lyc/m;->r(Ljava/lang/Iterable;I)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/String;

    .line 33
    .line 34
    new-instance v4, Lio/appmetrica/analytics/impl/F5;

    .line 35
    .line 36
    invoke-direct {v4, v3}, Lio/appmetrica/analytics/impl/F5;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v1, 0x0

    .line 44
    new-array v3, v1, [Lio/appmetrica/analytics/impl/F5;

    .line 45
    .line 46
    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    check-cast v2, [Lio/appmetrica/analytics/impl/F5;

    .line 53
    .line 54
    array-length v3, v2

    .line 55
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, [Lio/appmetrica/analytics/impl/dd;

    .line 60
    .line 61
    monitor-enter v0

    .line 62
    :try_start_0
    iget-object v3, v0, Lio/appmetrica/analytics/impl/ed;->a:Ljava/util/LinkedHashSet;

    .line 63
    .line 64
    invoke-static {v3, v2}, Lyc/m;->w(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    .line 67
    monitor-exit v0

    .line 68
    sget-object v0, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 69
    .line 70
    iget-object v0, v0, Lio/appmetrica/analytics/impl/za;->s:Lio/appmetrica/analytics/impl/ed;

    .line 71
    .line 72
    const/4 v2, 0x1

    .line 73
    new-array v2, v2, [Lio/appmetrica/analytics/impl/dd;

    .line 74
    .line 75
    new-instance v3, Lio/appmetrica/analytics/impl/Se;

    .line 76
    .line 77
    const-string v4, "io.appmetrica.analytics.modules.ads"

    .line 78
    .line 79
    const-string v5, "lsm"

    .line 80
    .line 81
    invoke-direct {v3, p1, v4, v5}, Lio/appmetrica/analytics/impl/Se;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    aput-object v3, v2, v1

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/ed;->a([Lio/appmetrica/analytics/impl/dd;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :catchall_0
    move-exception p1

    .line 91
    monitor-exit v0

    .line 92
    throw p1

    .line 93
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 94
    .line 95
    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 96
    .line 97
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p1
.end method
