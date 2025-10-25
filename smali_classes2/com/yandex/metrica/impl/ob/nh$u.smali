.class Lcom/yandex/metrica/impl/ob/nh$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/jh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/nh;->reportError(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/plugins/PluginErrorDetails;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/yandex/metrica/plugins/PluginErrorDetails;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/nh;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/plugins/PluginErrorDetails;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/nh$u;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/nh$u;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/nh$u;->c:Lcom/yandex/metrica/plugins/PluginErrorDetails;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/M0;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/yandex/metrica/IReporter;->getPluginExtension()Lcom/yandex/metrica/plugins/IPluginReporter;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/nh$u;->a:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/nh$u;->b:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/nh$u;->c:Lcom/yandex/metrica/plugins/PluginErrorDetails;

    .line 10
    .line 11
    invoke-interface {p1, v0, v1, v2}, Lcom/yandex/metrica/plugins/IPluginReporter;->reportError(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/plugins/PluginErrorDetails;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
