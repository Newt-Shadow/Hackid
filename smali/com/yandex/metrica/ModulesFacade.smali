.class public final Lcom/yandex/metrica/ModulesFacade;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/yandex/metrica/impl/ob/Mf;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Mf;

    .line 2
    .line 3
    invoke-static {}, Lcom/yandex/metrica/impl/ob/P;->g()Lcom/yandex/metrica/impl/ob/P;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "ClientServiceLocator.getInstance()"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/P;->c()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "ClientServiceLocator.get\u2026stance().apiProxyExecutor"

    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Mf;-><init>(Lcom/yandex/metrica/core/api/executors/ICommonExecutor;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/yandex/metrica/ModulesFacade;->a:Lcom/yandex/metrica/impl/ob/Mf;

    .line 25
    .line 26
    return-void
.end method

.method public static final isActivatedForApp()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/ModulesFacade;->a:Lcom/yandex/metrica/impl/ob/Mf;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Mf;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static final reportEvent(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
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

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/yandex/metrica/ModulesFacade;->reportEvent(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static final reportEvent(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/yandex/metrica/ModulesFacade;->a:Lcom/yandex/metrica/impl/ob/Mf;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/Mf;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static final sendEventsBuffer()V
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/ModulesFacade;->a:Lcom/yandex/metrica/impl/ob/Mf;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/yandex/metrica/YandexMetrica;->sendEventsBuffer()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final setSessionExtra(Ljava/lang/String;[B)V
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/ModulesFacade;->a:Lcom/yandex/metrica/impl/ob/Mf;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/yandex/metrica/impl/ob/Mf;->a(Ljava/lang/String;[B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final setProxy(Lcom/yandex/metrica/impl/ob/Mf;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/yandex/metrica/ModulesFacade;->a:Lcom/yandex/metrica/impl/ob/Mf;

    .line 2
    .line 3
    return-void
.end method
