.class public Lcom/yandex/metrica/impl/ob/T2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/T0;


# static fields
.field private static final n:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/yandex/metrica/IIdentifierCallback$Reason;",
            "Lcom/yandex/metrica/AppMetricaDeviceIDListener$Reason;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/metrica/impl/ob/b9;

.field private final c:Lcom/yandex/metrica/impl/ob/hi;

.field private final d:Lcom/yandex/metrica/impl/ob/bg;

.field private final e:Lcom/yandex/metrica/impl/ob/A3;

.field private final f:Lcom/yandex/metrica/impl/ob/R1;

.field private final g:Lcom/yandex/metrica/impl/ob/T1;

.field private final h:Lcom/yandex/metrica/impl/ob/l0;

.field private final i:Lcom/yandex/metrica/impl/ob/ua;

.field private final j:Lcom/yandex/metrica/impl/ob/u;

.field private final k:Lcom/yandex/metrica/impl/ob/o2;

.field private volatile l:Lcom/yandex/metrica/impl/ob/k1;

.field private m:Lcom/yandex/metrica/IIdentifierCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/EnumMap;

    .line 2
    .line 3
    const-class v1, Lcom/yandex/metrica/IIdentifierCallback$Reason;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/yandex/metrica/impl/ob/T2;->n:Ljava/util/EnumMap;

    .line 9
    .line 10
    sget-object v1, Lcom/yandex/metrica/IIdentifierCallback$Reason;->UNKNOWN:Lcom/yandex/metrica/IIdentifierCallback$Reason;

    .line 11
    .line 12
    sget-object v2, Lcom/yandex/metrica/AppMetricaDeviceIDListener$Reason;->UNKNOWN:Lcom/yandex/metrica/AppMetricaDeviceIDListener$Reason;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    sget-object v1, Lcom/yandex/metrica/IIdentifierCallback$Reason;->INVALID_RESPONSE:Lcom/yandex/metrica/IIdentifierCallback$Reason;

    .line 18
    .line 19
    sget-object v2, Lcom/yandex/metrica/AppMetricaDeviceIDListener$Reason;->INVALID_RESPONSE:Lcom/yandex/metrica/AppMetricaDeviceIDListener$Reason;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    sget-object v1, Lcom/yandex/metrica/IIdentifierCallback$Reason;->NETWORK:Lcom/yandex/metrica/IIdentifierCallback$Reason;

    .line 25
    .line 26
    sget-object v2, Lcom/yandex/metrica/AppMetricaDeviceIDListener$Reason;->NETWORK:Lcom/yandex/metrica/AppMetricaDeviceIDListener$Reason;

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/S0;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/b9;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ja;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ja;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ja;->c()Lcom/yandex/metrica/impl/ob/S7;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/b9;-><init>(Lcom/yandex/metrica/impl/ob/S7;)V

    .line 3
    invoke-direct {p0, v0, p2, v1}, Lcom/yandex/metrica/impl/ob/T2;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/S0;Lcom/yandex/metrica/impl/ob/b9;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/S0;Lcom/yandex/metrica/impl/ob/b9;)V
    .locals 8

    .line 4
    new-instance v4, Lcom/yandex/metrica/impl/ob/O;

    invoke-direct {v4, p1}, Lcom/yandex/metrica/impl/ob/O;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/yandex/metrica/impl/ob/U2;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/U2;-><init>()V

    .line 5
    invoke-static {}, Lcom/yandex/metrica/impl/ob/P;->g()Lcom/yandex/metrica/impl/ob/P;

    move-result-object v6

    new-instance v7, Lcom/yandex/metrica/impl/ob/ua;

    invoke-direct {v7}, Lcom/yandex/metrica/impl/ob/ua;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 6
    invoke-direct/range {v0 .. v7}, Lcom/yandex/metrica/impl/ob/T2;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/S0;Lcom/yandex/metrica/impl/ob/b9;Lcom/yandex/metrica/impl/ob/O;Lcom/yandex/metrica/impl/ob/U2;Lcom/yandex/metrica/impl/ob/P;Lcom/yandex/metrica/impl/ob/ua;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/S0;Lcom/yandex/metrica/impl/ob/b9;Lcom/yandex/metrica/impl/ob/O;Lcom/yandex/metrica/impl/ob/U2;Lcom/yandex/metrica/impl/ob/P;Lcom/yandex/metrica/impl/ob/ua;)V
    .locals 6

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/T2;->a:Landroid/content/Context;

    .line 9
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/T2;->b:Lcom/yandex/metrica/impl/ob/b9;

    .line 10
    invoke-interface {p2}, Lcom/yandex/metrica/impl/ob/S0;->c()Landroid/os/Handler;

    move-result-object v4

    .line 11
    invoke-virtual {p5, v4, p0}, Lcom/yandex/metrica/impl/ob/U2;->a(Landroid/os/Handler;Lcom/yandex/metrica/impl/ob/T2;)Lcom/yandex/metrica/impl/ob/f0;

    move-result-object v0

    .line 12
    invoke-virtual {p5, p1, v0}, Lcom/yandex/metrica/impl/ob/U2;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/f0;)Lcom/yandex/metrica/impl/ob/A3;

    move-result-object v2

    iput-object v2, p0, Lcom/yandex/metrica/impl/ob/T2;->e:Lcom/yandex/metrica/impl/ob/A3;

    .line 13
    invoke-virtual {p6}, Lcom/yandex/metrica/impl/ob/P;->f()Lcom/yandex/metrica/impl/ob/l0;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/T2;->h:Lcom/yandex/metrica/impl/ob/l0;

    .line 14
    invoke-interface {p2}, Lcom/yandex/metrica/impl/ob/S0;->b()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v1

    .line 15
    invoke-virtual {p5, v2, p1, v1}, Lcom/yandex/metrica/impl/ob/U2;->a(Lcom/yandex/metrica/impl/ob/A3;Landroid/content/Context;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;)Lcom/yandex/metrica/impl/ob/T1;

    move-result-object v3

    iput-object v3, p0, Lcom/yandex/metrica/impl/ob/T2;->g:Lcom/yandex/metrica/impl/ob/T1;

    .line 16
    invoke-virtual {v0, v3}, Lcom/yandex/metrica/impl/ob/l0;->a(Lcom/yandex/metrica/impl/ob/T1;)V

    .line 17
    invoke-virtual {p4, p1}, Lcom/yandex/metrica/impl/ob/D1;->a(Landroid/content/Context;)V

    .line 18
    invoke-virtual {p5, p1, v3, p3, v4}, Lcom/yandex/metrica/impl/ob/U2;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/T1;Lcom/yandex/metrica/impl/ob/b9;Landroid/os/Handler;)Lcom/yandex/metrica/impl/ob/hi;

    move-result-object v5

    iput-object v5, p0, Lcom/yandex/metrica/impl/ob/T2;->c:Lcom/yandex/metrica/impl/ob/hi;

    .line 19
    invoke-interface {p2}, Lcom/yandex/metrica/impl/ob/S0;->a()Lcom/yandex/metrica/impl/ob/u;

    move-result-object p2

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/T2;->j:Lcom/yandex/metrica/impl/ob/u;

    .line 20
    iput-object p7, p0, Lcom/yandex/metrica/impl/ob/T2;->i:Lcom/yandex/metrica/impl/ob/ua;

    .line 21
    invoke-virtual {v3, v5}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/ji;)V

    .line 22
    invoke-virtual {p5, v3, p3, v4}, Lcom/yandex/metrica/impl/ob/U2;->a(Lcom/yandex/metrica/impl/ob/T1;Lcom/yandex/metrica/impl/ob/b9;Landroid/os/Handler;)Lcom/yandex/metrica/impl/ob/bg;

    move-result-object p2

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/T2;->d:Lcom/yandex/metrica/impl/ob/bg;

    move-object v0, p5

    move-object v1, p1

    .line 23
    invoke-virtual/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/U2;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/A3;Lcom/yandex/metrica/impl/ob/T1;Landroid/os/Handler;Lcom/yandex/metrica/impl/ob/hi;)Lcom/yandex/metrica/impl/ob/R1;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/T2;->f:Lcom/yandex/metrica/impl/ob/R1;

    .line 24
    invoke-virtual {p6}, Lcom/yandex/metrica/impl/ob/P;->l()Lcom/yandex/metrica/impl/ob/o2;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/T2;->k:Lcom/yandex/metrica/impl/ob/o2;

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/T2;Lcom/yandex/metrica/IIdentifierCallback;)Lcom/yandex/metrica/IIdentifierCallback;
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/T2;->m:Lcom/yandex/metrica/IIdentifierCallback;

    return-object p1
.end method

.method static synthetic e()Ljava/util/EnumMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/T2;->n:Ljava/util/EnumMap;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/f;)Lcom/yandex/metrica/impl/ob/M0;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T2;->f:Lcom/yandex/metrica/impl/ob/R1;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/R1;->b(Lcom/yandex/metrica/f;)Lcom/yandex/metrica/impl/ob/M0;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T2;->c:Lcom/yandex/metrica/impl/ob/hi;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/hi;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 1

    .line 43
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/T2;->c:Lcom/yandex/metrica/impl/ob/hi;

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, p2, v0}, Lcom/yandex/metrica/impl/ob/hi;->a(Landroid/os/Bundle;Lcom/yandex/metrica/impl/ob/Yh;)V

    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T2;->l:Lcom/yandex/metrica/impl/ob/k1;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/k1;->b()Lcom/yandex/metrica/impl/ob/K0;

    move-result-object v0

    .line 56
    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/n1;->a(Landroid/location/Location;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/AppMetricaDeviceIDListener;)V
    .locals 3

    .line 47
    new-instance v0, Lcom/yandex/metrica/impl/ob/T2$a;

    invoke-direct {v0, p0, p1}, Lcom/yandex/metrica/impl/ob/T2$a;-><init>(Lcom/yandex/metrica/impl/ob/T2;Lcom/yandex/metrica/AppMetricaDeviceIDListener;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/T2;->m:Lcom/yandex/metrica/IIdentifierCallback;

    .line 48
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/T2;->c:Lcom/yandex/metrica/impl/ob/hi;

    const-string v1, "appmetrica_device_id_hash"

    .line 49
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/T2;->e:Lcom/yandex/metrica/impl/ob/A3;

    .line 50
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/A3;->a()Ljava/util/Map;

    move-result-object v2

    .line 51
    invoke-virtual {p1, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/hi;->a(Lcom/yandex/metrica/IIdentifierCallback;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/DeferredDeeplinkListener;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T2;->d:Lcom/yandex/metrica/impl/ob/bg;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/bg;->a(Lcom/yandex/metrica/DeferredDeeplinkListener;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/DeferredDeeplinkParametersListener;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T2;->d:Lcom/yandex/metrica/impl/ob/bg;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/bg;->a(Lcom/yandex/metrica/DeferredDeeplinkParametersListener;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/IIdentifierCallback;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/IIdentifierCallback;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T2;->c:Lcom/yandex/metrica/impl/ob/hi;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/T2;->e:Lcom/yandex/metrica/impl/ob/A3;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/A3;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/yandex/metrica/impl/ob/hi;->a(Lcom/yandex/metrica/IIdentifierCallback;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/YandexMetricaConfig;Lcom/yandex/metrica/j;)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T2;->i:Lcom/yandex/metrica/impl/ob/ua;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/T2;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/T2;->c:Lcom/yandex/metrica/impl/ob/hi;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/ua;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Q0;)Lcom/yandex/metrica/impl/ob/ta;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/T2;->c:Lcom/yandex/metrica/impl/ob/hi;

    .line 3
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/hi;->c()Lcom/yandex/metrica/impl/ob/ra;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/ta;->a(Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/ra;)V

    .line 4
    iget-object p1, p2, Lcom/yandex/metrica/YandexMetricaConfig;->apiKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/Ul;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cm;

    move-result-object p1

    .line 5
    iget-object v0, p2, Lcom/yandex/metrica/YandexMetricaConfig;->apiKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Ul;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/Sl;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/T2;->h:Lcom/yandex/metrica/impl/ob/l0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/T2;->l:Lcom/yandex/metrica/impl/ob/k1;

    if-nez v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/T2;->d:Lcom/yandex/metrica/impl/ob/bg;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bg;->a()V

    .line 9
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/T2;->c:Lcom/yandex/metrica/impl/ob/hi;

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/hi;->a(Lcom/yandex/metrica/impl/ob/cm;)V

    .line 10
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/T2;->c:Lcom/yandex/metrica/impl/ob/hi;

    iget-object v2, p2, Lcom/yandex/metrica/j;->d:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/hi;->a(Ljava/util/List;)V

    .line 11
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/T2;->c:Lcom/yandex/metrica/impl/ob/hi;

    iget-object v2, p2, Lcom/yandex/metrica/j;->b:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/hi;->a(Ljava/util/Map;)V

    .line 12
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/T2;->c:Lcom/yandex/metrica/impl/ob/hi;

    iget-object v2, p2, Lcom/yandex/metrica/j;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/hi;->a(Ljava/lang/String;)V

    .line 13
    iget-object v1, p2, Lcom/yandex/metrica/j;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/T2;->c:Lcom/yandex/metrica/impl/ob/hi;

    const-string v2, "api"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/hi;->b(Ljava/lang/String;)V

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/T2;->e:Lcom/yandex/metrica/impl/ob/A3;

    invoke-virtual {v1, p2}, Lcom/yandex/metrica/impl/ob/A3;->b(Lcom/yandex/metrica/j;)V

    .line 16
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/T2;->g:Lcom/yandex/metrica/impl/ob/T1;

    iget-object v2, p2, Lcom/yandex/metrica/YandexMetricaConfig;->locationTracking:Ljava/lang/Boolean;

    iget-object v3, p2, Lcom/yandex/metrica/YandexMetricaConfig;->statisticsSending:Ljava/lang/Boolean;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/T1;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 17
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/T2;->f:Lcom/yandex/metrica/impl/ob/R1;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/T2;->b:Lcom/yandex/metrica/impl/ob/b9;

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3, v2}, Lcom/yandex/metrica/impl/ob/R1;->a(Lcom/yandex/metrica/j;ZLcom/yandex/metrica/impl/ob/b9;)Lcom/yandex/metrica/impl/ob/j1;

    move-result-object v1

    .line 18
    new-instance v2, Lcom/yandex/metrica/impl/ob/k1;

    .line 19
    new-instance v3, Lcom/yandex/metrica/impl/ob/j0;

    invoke-direct {v3, v1}, Lcom/yandex/metrica/impl/ob/j0;-><init>(Lcom/yandex/metrica/impl/ob/K0;)V

    invoke-direct {v2, v1, v3}, Lcom/yandex/metrica/impl/ob/k1;-><init>(Lcom/yandex/metrica/impl/ob/K0;Lcom/yandex/metrica/impl/ob/j0;)V

    .line 20
    iput-object v2, p0, Lcom/yandex/metrica/impl/ob/T2;->l:Lcom/yandex/metrica/impl/ob/k1;

    .line 21
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/T2;->j:Lcom/yandex/metrica/impl/ob/u;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/T2;->l:Lcom/yandex/metrica/impl/ob/k1;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/k1;->a()Lcom/yandex/metrica/impl/ob/j0;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/u;->a(Lcom/yandex/metrica/impl/ob/j0;)V

    .line 22
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/T2;->k:Lcom/yandex/metrica/impl/ob/o2;

    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/o2;->a(Lcom/yandex/metrica/impl/ob/j1;)V

    .line 23
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/T2;->c:Lcom/yandex/metrica/impl/ob/hi;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/hi;->g()V

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activate AppMetrica with APIKey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/yandex/metrica/YandexMetricaConfig;->apiKey:Ljava/lang/String;

    .line 25
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppMetrica"

    .line 26
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object p2, p2, Lcom/yandex/metrica/YandexMetricaConfig;->logs:Ljava/lang/Boolean;

    .line 28
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 29
    invoke-virtual {p1}, Lcom/yandex/metrica/coreutils/logger/a;->setEnabled()V

    .line 30
    invoke-virtual {v0}, Lcom/yandex/metrica/coreutils/logger/a;->setEnabled()V

    .line 31
    invoke-static {}, Lcom/yandex/metrica/impl/ob/cm;->a()Lcom/yandex/metrica/impl/ob/cm;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/yandex/metrica/coreutils/logger/a;->setEnabled()V

    .line 33
    invoke-static {}, Lcom/yandex/metrica/impl/ob/Sl;->a()Lcom/yandex/metrica/impl/ob/Sl;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/yandex/metrica/coreutils/logger/a;->setEnabled()V

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p1}, Lcom/yandex/metrica/coreutils/logger/a;->setDisabled()V

    .line 36
    invoke-virtual {v0}, Lcom/yandex/metrica/coreutils/logger/a;->setDisabled()V

    .line 37
    invoke-static {}, Lcom/yandex/metrica/impl/ob/cm;->a()Lcom/yandex/metrica/impl/ob/cm;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/yandex/metrica/coreutils/logger/a;->setDisabled()V

    .line 39
    invoke-static {}, Lcom/yandex/metrica/impl/ob/Sl;->a()Lcom/yandex/metrica/impl/ob/Sl;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/yandex/metrica/coreutils/logger/a;->setDisabled()V

    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {p1}, Lcom/yandex/metrica/coreutils/logger/a;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "Appmetrica already has been activated!"

    .line 42
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/coreutils/logger/a;->w(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T2;->l:Lcom/yandex/metrica/impl/ob/k1;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/k1;->b()Lcom/yandex/metrica/impl/ob/K0;

    move-result-object v0

    .line 58
    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/n1;->a(Z)V

    return-void
.end method

.method public b()Lcom/yandex/metrica/impl/ob/N0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T2;->f:Lcom/yandex/metrica/impl/ob/R1;

    return-object v0
.end method

.method public b(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T2;->l:Lcom/yandex/metrica/impl/ob/k1;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/k1;->b()Lcom/yandex/metrica/impl/ob/K0;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/n1;->b(Z)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T2;->c:Lcom/yandex/metrica/impl/ob/hi;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/hi;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/yandex/metrica/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T2;->f:Lcom/yandex/metrica/impl/ob/R1;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/R1;->c(Lcom/yandex/metrica/f;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T2;->l:Lcom/yandex/metrica/impl/ob/k1;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/k1;->b()Lcom/yandex/metrica/impl/ob/K0;

    move-result-object v0

    .line 4
    invoke-interface {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/n1;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()Lcom/yandex/metrica/impl/ob/k1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T2;->l:Lcom/yandex/metrica/impl/ob/k1;

    .line 2
    .line 3
    return-object v0
.end method

.method public setStatisticsSending(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T2;->l:Lcom/yandex/metrica/impl/ob/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/k1;->b()Lcom/yandex/metrica/impl/ob/K0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lcom/yandex/metrica/IReporter;->setStatisticsSending(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setUserProfileID(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T2;->l:Lcom/yandex/metrica/impl/ob/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/k1;->b()Lcom/yandex/metrica/impl/ob/K0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lcom/yandex/metrica/IReporter;->setUserProfileID(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
