.class public Lcom/yandex/metrica/impl/ob/Yf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/plugins/IPluginReporter;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Lcom/yandex/metrica/plugins/PluginErrorDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Ljava/util/Collection<",
            "Lcom/yandex/metrica/plugins/StackTraceItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/yandex/metrica/impl/ob/Hn;

    .line 5
    .line 6
    new-instance v1, Lcom/yandex/metrica/impl/ob/Gn;

    .line 7
    .line 8
    const-string v2, "Error details"

    .line 9
    .line 10
    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/Gn;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;-><init>(Lcom/yandex/metrica/impl/ob/Kn;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Yf;->a:Lcom/yandex/metrica/impl/ob/Kn;

    .line 17
    .line 18
    new-instance v0, Lcom/yandex/metrica/impl/ob/Hn;

    .line 19
    .line 20
    new-instance v1, Lcom/yandex/metrica/impl/ob/Fn;

    .line 21
    .line 22
    const-string v2, "Error identifier"

    .line 23
    .line 24
    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/Fn;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;-><init>(Lcom/yandex/metrica/impl/ob/Kn;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Yf;->b:Lcom/yandex/metrica/impl/ob/Kn;

    .line 31
    .line 32
    new-instance v0, Lcom/yandex/metrica/impl/ob/En;

    .line 33
    .line 34
    const-string v1, "Stacktrace"

    .line 35
    .line 36
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/En;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Yf;->c:Lcom/yandex/metrica/impl/ob/Kn;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/plugins/PluginErrorDetails;Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/Yf;->a:Lcom/yandex/metrica/impl/ob/Kn;

    .line 2
    .line 3
    invoke-interface {p2, p1}, Lcom/yandex/metrica/impl/ob/Kn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/Yf;->c:Lcom/yandex/metrica/impl/ob/Kn;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/yandex/metrica/plugins/PluginErrorDetails;->getStacktrace()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p2, p1}, Lcom/yandex/metrica/impl/ob/Kn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/In;->b()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public reportError(Lcom/yandex/metrica/plugins/PluginErrorDetails;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/Yf;->a:Lcom/yandex/metrica/impl/ob/Kn;

    invoke-interface {p2, p1}, Lcom/yandex/metrica/impl/ob/Kn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    return-void
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/plugins/PluginErrorDetails;)V
    .locals 0

    .line 2
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/Yf;->b:Lcom/yandex/metrica/impl/ob/Kn;

    invoke-interface {p2, p1}, Lcom/yandex/metrica/impl/ob/Kn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    return-void
.end method

.method public reportUnhandledException(Lcom/yandex/metrica/plugins/PluginErrorDetails;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Yf;->a:Lcom/yandex/metrica/impl/ob/Kn;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/Kn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 4
    .line 5
    .line 6
    return-void
.end method
