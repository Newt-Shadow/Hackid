.class Lcom/yandex/metrica/impl/ob/nh$t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/jh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/nh;->reportError(Lcom/yandex/metrica/plugins/PluginErrorDetails;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/plugins/PluginErrorDetails;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/nh;Lcom/yandex/metrica/plugins/PluginErrorDetails;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/nh$t;->a:Lcom/yandex/metrica/plugins/PluginErrorDetails;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/nh$t;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/M0;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/yandex/metrica/IReporter;->getPluginExtension()Lcom/yandex/metrica/plugins/IPluginReporter;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/nh$t;->a:Lcom/yandex/metrica/plugins/PluginErrorDetails;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/nh$t;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {p1, v0, v1}, Lcom/yandex/metrica/plugins/IPluginReporter;->reportError(Lcom/yandex/metrica/plugins/PluginErrorDetails;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
