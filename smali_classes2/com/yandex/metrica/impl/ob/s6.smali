.class public final Lcom/yandex/metrica/impl/ob/s6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/A0;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/A0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/s6;->a:Lcom/yandex/metrica/impl/ob/A0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/metrica/plugins/PluginErrorDetails;)Lcom/yandex/metrica/impl/ob/H6;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/yandex/metrica/plugins/PluginErrorDetails;->getExceptionClass()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/yandex/metrica/plugins/PluginErrorDetails;->getMessage()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/yandex/metrica/plugins/PluginErrorDetails;->getStacktrace()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p1}, Lcom/yandex/metrica/plugins/PluginErrorDetails;->getPlatform()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p1}, Lcom/yandex/metrica/plugins/PluginErrorDetails;->getVirtualMachineVersion()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {p1}, Lcom/yandex/metrica/plugins/PluginErrorDetails;->getPluginEnvironment()Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/s6;->a:Lcom/yandex/metrica/impl/ob/A0;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/A0;->a()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/s6;->a:Lcom/yandex/metrica/impl/ob/A0;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/A0;->b()Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-static/range {v0 .. v7}, Lcom/yandex/metrica/impl/ob/I6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/yandex/metrica/impl/ob/H6;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1
.end method
