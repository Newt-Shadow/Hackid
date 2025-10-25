.class Lcom/yandex/metrica/impl/ob/Gl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/Il;

.field final synthetic b:Landroid/webkit/WebView;

.field final synthetic c:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Hl;Lcom/yandex/metrica/impl/ob/Il;Landroid/webkit/WebView;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Gl;->a:Lcom/yandex/metrica/impl/ob/Il;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Gl;->b:Landroid/webkit/WebView;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Gl;->c:Ljava/util/concurrent/CountDownLatch;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Gl;->a:Lcom/yandex/metrica/impl/ob/Il;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Gl;->b:Landroid/webkit/WebView;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/Il;->h:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Gl;->a:Lcom/yandex/metrica/impl/ob/Il;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Gl;->b:Landroid/webkit/WebView;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/Il;->i:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Gl;->c:Ljava/util/concurrent/CountDownLatch;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    :catchall_0
    return-void
.end method
