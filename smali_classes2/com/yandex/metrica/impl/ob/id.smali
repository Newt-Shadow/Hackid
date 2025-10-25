.class public final Lcom/yandex/metrica/impl/ob/id;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/modules/api/CommonIdentifiers;

.field private final b:Lcom/yandex/metrica/modules/api/RemoteConfigMetaInfo;

.field private final c:Lcom/yandex/metrica/impl/ob/pi;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/pi;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/id;->c:Lcom/yandex/metrica/impl/ob/pi;

    .line 5
    .line 6
    new-instance v0, Lcom/yandex/metrica/modules/api/CommonIdentifiers;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi;->V()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi;->i()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/modules/api/CommonIdentifiers;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/id;->a:Lcom/yandex/metrica/modules/api/CommonIdentifiers;

    .line 20
    .line 21
    new-instance v0, Lcom/yandex/metrica/modules/api/RemoteConfigMetaInfo;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi;->o()J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi;->B()J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yandex/metrica/modules/api/RemoteConfigMetaInfo;-><init>(JJ)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/id;->b:Lcom/yandex/metrica/modules/api/RemoteConfigMetaInfo;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/yandex/metrica/modules/api/ModuleFullRemoteConfig;
    .locals 4

    .line 1
    new-instance v0, Lcom/yandex/metrica/modules/api/ModuleFullRemoteConfig;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/id;->a:Lcom/yandex/metrica/modules/api/CommonIdentifiers;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/id;->b:Lcom/yandex/metrica/modules/api/RemoteConfigMetaInfo;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/id;->c:Lcom/yandex/metrica/impl/ob/pi;

    .line 8
    .line 9
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/pi;->A()Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {v0, v1, v2, p1}, Lcom/yandex/metrica/modules/api/ModuleFullRemoteConfig;-><init>(Lcom/yandex/metrica/modules/api/CommonIdentifiers;Lcom/yandex/metrica/modules/api/RemoteConfigMetaInfo;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method
