.class public Lcom/yandex/metrica/plugins/PluginErrorDetails$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/plugins/PluginErrorDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public build()Lcom/yandex/metrica/plugins/PluginErrorDetails;
    .locals 9

    .line 1
    new-instance v8, Lcom/yandex/metrica/plugins/PluginErrorDetails;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/plugins/PluginErrorDetails$Builder;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/yandex/metrica/plugins/PluginErrorDetails$Builder;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/yandex/metrica/plugins/PluginErrorDetails$Builder;->c:Ljava/util/List;

    .line 8
    .line 9
    new-instance v3, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v3, v0

    .line 18
    :goto_0
    iget-object v4, p0, Lcom/yandex/metrica/plugins/PluginErrorDetails$Builder;->d:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v5, p0, Lcom/yandex/metrica/plugins/PluginErrorDetails$Builder;->e:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/yandex/metrica/plugins/PluginErrorDetails$Builder;->f:Ljava/util/Map;

    .line 23
    .line 24
    new-instance v6, Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move-object v6, v0

    .line 33
    :goto_1
    const/4 v7, 0x0

    .line 34
    move-object v0, v8

    .line 35
    invoke-direct/range {v0 .. v7}, Lcom/yandex/metrica/plugins/PluginErrorDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/yandex/metrica/plugins/PluginErrorDetails$a;)V

    .line 36
    .line 37
    .line 38
    return-object v8
.end method

.method public withExceptionClass(Ljava/lang/String;)Lcom/yandex/metrica/plugins/PluginErrorDetails$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/plugins/PluginErrorDetails$Builder;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public withMessage(Ljava/lang/String;)Lcom/yandex/metrica/plugins/PluginErrorDetails$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/plugins/PluginErrorDetails$Builder;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public withPlatform(Ljava/lang/String;)Lcom/yandex/metrica/plugins/PluginErrorDetails$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/plugins/PluginErrorDetails$Builder;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public withPluginEnvironment(Ljava/util/Map;)Lcom/yandex/metrica/plugins/PluginErrorDetails$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/yandex/metrica/plugins/PluginErrorDetails$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/plugins/PluginErrorDetails$Builder;->f:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public withStacktrace(Ljava/util/List;)Lcom/yandex/metrica/plugins/PluginErrorDetails$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/plugins/StackTraceItem;",
            ">;)",
            "Lcom/yandex/metrica/plugins/PluginErrorDetails$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/plugins/PluginErrorDetails$Builder;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public withVirtualMachineVersion(Ljava/lang/String;)Lcom/yandex/metrica/plugins/PluginErrorDetails$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/plugins/PluginErrorDetails$Builder;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
