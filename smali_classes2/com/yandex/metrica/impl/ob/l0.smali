.class public Lcom/yandex/metrica/impl/ob/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/n1;


# instance fields
.field private a:Landroid/location/Location;

.field private b:Ljava/lang/Boolean;

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Lcom/yandex/metrica/impl/ob/T1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/l0;->e:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/l0;->f:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method private a(Ljava/util/Map;Lcom/yandex/metrica/j$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/metrica/j$b;",
            ")V"
        }
    .end annotation

    .line 73
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Lcom/yandex/metrica/j$b;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/j$b;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private b()V
    .locals 4

    .line 6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/l0;->i:Lcom/yandex/metrica/impl/ob/T1;

    if-eqz v0, :cond_0

    .line 7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/l0;->b:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/l0;->d:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/l0;->c:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/T1;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method private b(Ljava/util/Map;Lcom/yandex/metrica/j$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/metrica/j$b;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Lcom/yandex/metrica/j$b;->o(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/j$b;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/j;)Lcom/yandex/metrica/j;
    .locals 4

    .line 5
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/l0;->h:Z

    if-eqz v0, :cond_0

    return-object p1

    .line 6
    :cond_0
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->apiKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/yandex/metrica/j;->b(Ljava/lang/String;)Lcom/yandex/metrica/j$b;

    move-result-object v0

    .line 7
    iget-object v1, p1, Lcom/yandex/metrica/j;->b:Ljava/util/Map;

    iget-object v2, p1, Lcom/yandex/metrica/j;->i:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/j$b;->i(Ljava/util/Map;Ljava/lang/Boolean;)Lcom/yandex/metrica/j$b;

    .line 8
    iget-object v1, p1, Lcom/yandex/metrica/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/j$b;->n(Ljava/lang/String;)Lcom/yandex/metrica/j$b;

    .line 9
    iget-object v1, p1, Lcom/yandex/metrica/YandexMetricaConfig;->preloadInfo:Lcom/yandex/metrica/PreloadInfo;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/j$b;->d(Lcom/yandex/metrica/PreloadInfo;)Lcom/yandex/metrica/j$b;

    .line 10
    iget-object v1, p1, Lcom/yandex/metrica/YandexMetricaConfig;->location:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/j$b;->c(Landroid/location/Location;)Lcom/yandex/metrica/j$b;

    .line 11
    iget-object v1, p1, Lcom/yandex/metrica/j;->d:Ljava/util/List;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    iget-object v1, p1, Lcom/yandex/metrica/j;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/j$b;->h(Ljava/util/List;)Lcom/yandex/metrica/j$b;

    .line 13
    :cond_1
    iget-object v1, p1, Lcom/yandex/metrica/YandexMetricaConfig;->appVersion:Ljava/lang/String;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    iget-object v1, p1, Lcom/yandex/metrica/YandexMetricaConfig;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/j$b;->f(Ljava/lang/String;)Lcom/yandex/metrica/j$b;

    .line 15
    :cond_2
    iget-object v1, p1, Lcom/yandex/metrica/j;->f:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    iget-object v1, p1, Lcom/yandex/metrica/j;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/j$b;->m(I)Lcom/yandex/metrica/j$b;

    .line 17
    :cond_3
    iget-object v1, p1, Lcom/yandex/metrica/j;->e:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 18
    iget-object v1, p1, Lcom/yandex/metrica/j;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/j$b;->b(I)Lcom/yandex/metrica/j$b;

    .line 19
    :cond_4
    iget-object v1, p1, Lcom/yandex/metrica/j;->g:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 20
    iget-object v1, p1, Lcom/yandex/metrica/j;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/j$b;->r(I)Lcom/yandex/metrica/j$b;

    .line 21
    :cond_5
    iget-object v1, p1, Lcom/yandex/metrica/YandexMetricaConfig;->logs:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/yandex/metrica/YandexMetricaConfig;->logs:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 22
    invoke-virtual {v0}, Lcom/yandex/metrica/j$b;->l()Lcom/yandex/metrica/j$b;

    .line 23
    :cond_6
    iget-object v1, p1, Lcom/yandex/metrica/YandexMetricaConfig;->sessionTimeout:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 24
    iget-object v1, p1, Lcom/yandex/metrica/YandexMetricaConfig;->sessionTimeout:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/j$b;->z(I)Lcom/yandex/metrica/j$b;

    .line 25
    :cond_7
    iget-object v1, p1, Lcom/yandex/metrica/YandexMetricaConfig;->crashReporting:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 26
    iget-object v1, p1, Lcom/yandex/metrica/YandexMetricaConfig;->crashReporting:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/j$b;->w(Z)Lcom/yandex/metrica/j$b;

    .line 27
    :cond_8
    iget-object v1, p1, Lcom/yandex/metrica/YandexMetricaConfig;->nativeCrashReporting:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 28
    iget-object v1, p1, Lcom/yandex/metrica/YandexMetricaConfig;->nativeCrashReporting:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/j$b;->B(Z)Lcom/yandex/metrica/j$b;

    .line 29
    :cond_9
    iget-object v1, p1, Lcom/yandex/metrica/YandexMetricaConfig;->locationTracking:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 30
    iget-object v1, p1, Lcom/yandex/metrica/YandexMetricaConfig;->locationTracking:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/j$b;->A(Z)Lcom/yandex/metrica/j$b;

    .line 31
    :cond_a
    iget-object v1, p1, Lcom/yandex/metrica/j;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 32
    iget-object v1, p1, Lcom/yandex/metrica/j;->c:Ljava/lang/String;

    .line 33
    iput-object v1, v0, Lcom/yandex/metrica/j$b;->f:Ljava/lang/String;

    .line 34
    :cond_b
    iget-object v1, p1, Lcom/yandex/metrica/YandexMetricaConfig;->firstActivationAsUpdate:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 35
    iget-object v1, p1, Lcom/yandex/metrica/YandexMetricaConfig;->firstActivationAsUpdate:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/j$b;->j(Z)Lcom/yandex/metrica/j$b;

    .line 36
    :cond_c
    iget-object v1, p1, Lcom/yandex/metrica/YandexMetricaConfig;->statisticsSending:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 37
    iget-object v1, p1, Lcom/yandex/metrica/YandexMetricaConfig;->statisticsSending:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/j$b;->J(Z)Lcom/yandex/metrica/j$b;

    .line 38
    :cond_d
    iget-object v1, p1, Lcom/yandex/metrica/j;->k:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 39
    iget-object v1, p1, Lcom/yandex/metrica/j;->k:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/j$b;->p(Z)Lcom/yandex/metrica/j$b;

    .line 40
    :cond_e
    iget-object v1, p1, Lcom/yandex/metrica/YandexMetricaConfig;->maxReportsInDatabaseCount:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 41
    iget-object v1, p1, Lcom/yandex/metrica/YandexMetricaConfig;->maxReportsInDatabaseCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/j$b;->v(I)Lcom/yandex/metrica/j$b;

    :cond_f
    const/4 v1, 0x0

    .line 42
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 43
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/j$b;->e(Lcom/yandex/metrica/d;)Lcom/yandex/metrica/j$b;

    .line 44
    :cond_10
    iget-object v2, p1, Lcom/yandex/metrica/YandexMetricaConfig;->userProfileID:Ljava/lang/String;

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 45
    iget-object v2, p1, Lcom/yandex/metrica/YandexMetricaConfig;->userProfileID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/j$b;->s(Ljava/lang/String;)Lcom/yandex/metrica/j$b;

    .line 46
    :cond_11
    iget-object v2, p1, Lcom/yandex/metrica/YandexMetricaConfig;->revenueAutoTrackingEnabled:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 47
    iget-object v2, p1, Lcom/yandex/metrica/YandexMetricaConfig;->revenueAutoTrackingEnabled:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/j$b;->F(Z)Lcom/yandex/metrica/j$b;

    .line 48
    :cond_12
    iget-object v2, p1, Lcom/yandex/metrica/YandexMetricaConfig;->appOpenTrackingEnabled:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 49
    iget-object v2, p1, Lcom/yandex/metrica/YandexMetricaConfig;->appOpenTrackingEnabled:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/j$b;->t(Z)Lcom/yandex/metrica/j$b;

    .line 50
    :cond_13
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/l0;->e:Ljava/util/Map;

    invoke-direct {p0, v2, v0}, Lcom/yandex/metrica/impl/ob/l0;->a(Ljava/util/Map;Lcom/yandex/metrica/j$b;)V

    .line 51
    iget-object v2, p1, Lcom/yandex/metrica/j;->h:Ljava/util/Map;

    invoke-direct {p0, v2, v0}, Lcom/yandex/metrica/impl/ob/l0;->a(Ljava/util/Map;Lcom/yandex/metrica/j$b;)V

    .line 52
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/l0;->f:Ljava/util/Map;

    invoke-direct {p0, v2, v0}, Lcom/yandex/metrica/impl/ob/l0;->b(Ljava/util/Map;Lcom/yandex/metrica/j$b;)V

    .line 53
    iget-object v2, p1, Lcom/yandex/metrica/YandexMetricaConfig;->errorEnvironment:Ljava/util/Map;

    invoke-direct {p0, v2, v0}, Lcom/yandex/metrica/impl/ob/l0;->b(Ljava/util/Map;Lcom/yandex/metrica/j$b;)V

    .line 54
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/l0;->b:Ljava/lang/Boolean;

    .line 55
    iget-object v3, p1, Lcom/yandex/metrica/YandexMetricaConfig;->locationTracking:Ljava/lang/Boolean;

    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/l0;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 56
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/j$b;->A(Z)Lcom/yandex/metrica/j$b;

    .line 57
    :cond_14
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/l0;->a:Landroid/location/Location;

    .line 58
    iget-object v3, p1, Lcom/yandex/metrica/YandexMetricaConfig;->location:Landroid/location/Location;

    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/l0;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 59
    invoke-virtual {v0, v2}, Lcom/yandex/metrica/j$b;->c(Landroid/location/Location;)Lcom/yandex/metrica/j$b;

    .line 60
    :cond_15
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/l0;->d:Ljava/lang/Boolean;

    .line 61
    iget-object v3, p1, Lcom/yandex/metrica/YandexMetricaConfig;->statisticsSending:Ljava/lang/Boolean;

    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/l0;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 62
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/j$b;->J(Z)Lcom/yandex/metrica/j$b;

    .line 63
    :cond_16
    iget-object p1, p1, Lcom/yandex/metrica/YandexMetricaConfig;->userProfileID:Ljava/lang/String;

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/l0;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 64
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/l0;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/j$b;->s(Ljava/lang/String;)Lcom/yandex/metrica/j$b;

    :cond_17
    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/l0;->h:Z

    .line 66
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/l0;->a:Landroid/location/Location;

    .line 67
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/l0;->b:Ljava/lang/Boolean;

    .line 68
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/l0;->d:Ljava/lang/Boolean;

    .line 69
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/l0;->e:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 70
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/l0;->f:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 71
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/l0;->g:Ljava/lang/String;

    .line 72
    invoke-virtual {v0}, Lcom/yandex/metrica/j$b;->k()Lcom/yandex/metrica/j;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/location/Location;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/l0;->a:Landroid/location/Location;

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/T1;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/l0;->i:Lcom/yandex/metrica/impl/ob/T1;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/l0;->c:Ljava/lang/Boolean;

    .line 3
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/l0;->b()V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/l0;->b:Ljava/lang/Boolean;

    .line 2
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/l0;->b()V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/l0;->f:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setStatisticsSending(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/l0;->d:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/l0;->b()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setUserProfileID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/l0;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
