.class public final Lcom/yandex/metrica/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/p$Ucc;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "yandex_mobile_metrica_get_ad_url"

    .line 2
    .line 3
    const-string v1, "yandex_mobile_metrica_report_ad_url"

    .line 4
    .line 5
    const-string v2, "yandex_mobile_metrica_uuid"

    .line 6
    .line 7
    const-string v3, "yandex_mobile_metrica_device_id"

    .line 8
    .line 9
    const-string v4, "appmetrica_device_id_hash"

    .line 10
    .line 11
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/yandex/metrica/p;->a:Ljava/util/List;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yandex/metrica/IIdentifierCallback;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/yandex/metrica/p;->a:Ljava/util/List;

    invoke-static {p0, p1, v0}, Lcom/yandex/metrica/p;->a(Landroid/content/Context;Lcom/yandex/metrica/IIdentifierCallback;Ljava/util/List;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yandex/metrica/IIdentifierCallback;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/metrica/IIdentifierCallback;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/L2;->a(Landroid/content/Context;Lcom/yandex/metrica/IIdentifierCallback;Ljava/util/List;)V

    return-void
.end method

.method public static varargs a(Landroid/content/Context;Lcom/yandex/metrica/IIdentifierCallback;[Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/yandex/metrica/p;->a(Landroid/content/Context;Lcom/yandex/metrica/IIdentifierCallback;Ljava/util/List;)V

    return-void
.end method

.method public static cpcwh(Lcom/yandex/metrica/YandexMetricaConfig;Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/yandex/metrica/impl/ob/L2;->a(Lcom/yandex/metrica/YandexMetricaConfig;Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static gcni(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/L2;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static gdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/L2;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static gmsvn(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/L2;->a(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static guc(Lcom/yandex/metrica/p$Ucc;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/yandex/metrica/impl/ob/L2;->a(Lcom/yandex/metrica/p$Ucc;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static guid(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/L2;->d(Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static iifa()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
        since = "Use ModulesFacade.isActivatedForApp"
    .end annotation

    .line 1
    invoke-static {}, Lcom/yandex/metrica/ModulesFacade;->isActivatedForApp()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static mpn(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/L2;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static pgai()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/yandex/metrica/impl/ob/L2;->a()Ljava/util/concurrent/Future;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :catchall_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public static plat()Ljava/lang/Boolean;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/yandex/metrica/impl/ob/L2;->b()Ljava/util/concurrent/Future;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :catchall_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public static rce(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        since = "Use ModulesFacade.reportEvent"
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/yandex/metrica/ModulesFacade;->reportEvent(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static rlse(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/yandex/metrica/impl/ob/L2;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static seb()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
        since = "Use ModulesFacade.sendEventsBuffer"
    .end annotation

    .line 1
    invoke-static {}, Lcom/yandex/metrica/ModulesFacade;->sendEventsBuffer()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static slte(Landroid/content/Context;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
        since = "Will be removed in next major release"
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/yandex/metrica/impl/ob/L2;->a(Landroid/content/Context;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static u(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/L2;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
