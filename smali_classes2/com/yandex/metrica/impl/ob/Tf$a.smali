.class final Lcom/yandex/metrica/impl/ob/Tf$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/Tf;->a(Lcom/yandex/metrica/plugins/PluginErrorDetails;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/Tf;

.field final synthetic b:Lcom/yandex/metrica/plugins/PluginErrorDetails;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Tf;Lcom/yandex/metrica/plugins/PluginErrorDetails;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Tf$a;->a:Lcom/yandex/metrica/impl/ob/Tf;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Tf$a;->b:Lcom/yandex/metrica/plugins/PluginErrorDetails;

    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Tf$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Tf$a;->a:Lcom/yandex/metrica/impl/ob/Tf;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Tf;->a(Lcom/yandex/metrica/impl/ob/Tf;)Lcom/yandex/metrica/impl/ob/K0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/yandex/metrica/IReporter;->getPluginExtension()Lcom/yandex/metrica/plugins/IPluginReporter;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Tf$a;->b:Lcom/yandex/metrica/plugins/PluginErrorDetails;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Tf$a;->c:Ljava/lang/String;

    .line 14
    .line 15
    invoke-interface {v0, v1, v2}, Lcom/yandex/metrica/plugins/IPluginReporter;->reportError(Lcom/yandex/metrica/plugins/PluginErrorDetails;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
