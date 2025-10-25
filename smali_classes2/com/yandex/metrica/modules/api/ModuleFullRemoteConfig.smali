.class public final Lcom/yandex/metrica/modules/api/ModuleFullRemoteConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/modules/api/CommonIdentifiers;

.field private final b:Lcom/yandex/metrica/modules/api/RemoteConfigMetaInfo;

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/modules/api/CommonIdentifiers;Lcom/yandex/metrica/modules/api/RemoteConfigMetaInfo;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "commonIdentifiers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteConfigMetaInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/modules/api/ModuleFullRemoteConfig;->a:Lcom/yandex/metrica/modules/api/CommonIdentifiers;

    iput-object p2, p0, Lcom/yandex/metrica/modules/api/ModuleFullRemoteConfig;->b:Lcom/yandex/metrica/modules/api/RemoteConfigMetaInfo;

    iput-object p3, p0, Lcom/yandex/metrica/modules/api/ModuleFullRemoteConfig;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/yandex/metrica/modules/api/ModuleFullRemoteConfig;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/yandex/metrica/modules/api/ModuleFullRemoteConfig;

    iget-object v0, p0, Lcom/yandex/metrica/modules/api/ModuleFullRemoteConfig;->a:Lcom/yandex/metrica/modules/api/CommonIdentifiers;

    iget-object v1, p1, Lcom/yandex/metrica/modules/api/ModuleFullRemoteConfig;->a:Lcom/yandex/metrica/modules/api/CommonIdentifiers;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/modules/api/ModuleFullRemoteConfig;->b:Lcom/yandex/metrica/modules/api/RemoteConfigMetaInfo;

    iget-object v1, p1, Lcom/yandex/metrica/modules/api/ModuleFullRemoteConfig;->b:Lcom/yandex/metrica/modules/api/RemoteConfigMetaInfo;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/modules/api/ModuleFullRemoteConfig;->c:Ljava/lang/Object;

    iget-object p1, p1, Lcom/yandex/metrica/modules/api/ModuleFullRemoteConfig;->c:Ljava/lang/Object;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/yandex/metrica/modules/api/ModuleFullRemoteConfig;->a:Lcom/yandex/metrica/modules/api/CommonIdentifiers;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/metrica/modules/api/CommonIdentifiers;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/yandex/metrica/modules/api/ModuleFullRemoteConfig;->b:Lcom/yandex/metrica/modules/api/RemoteConfigMetaInfo;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/yandex/metrica/modules/api/RemoteConfigMetaInfo;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/yandex/metrica/modules/api/ModuleFullRemoteConfig;->c:Ljava/lang/Object;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModuleFullRemoteConfig(commonIdentifiers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/metrica/modules/api/ModuleFullRemoteConfig;->a:Lcom/yandex/metrica/modules/api/CommonIdentifiers;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", remoteConfigMetaInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/metrica/modules/api/ModuleFullRemoteConfig;->b:Lcom/yandex/metrica/modules/api/RemoteConfigMetaInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", moduleConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/metrica/modules/api/ModuleFullRemoteConfig;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
