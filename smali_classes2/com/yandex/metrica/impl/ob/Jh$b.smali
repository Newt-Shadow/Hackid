.class Lcom/yandex/metrica/impl/ob/Jh$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/Jh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/Jh;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Jh;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Jh$b;->a:Lcom/yandex/metrica/impl/ob/Jh;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget p1, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    const/16 v0, 0x64

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Jh$b;->a:Lcom/yandex/metrica/impl/ob/Jh;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Jh;->c()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Jh$b;->a:Lcom/yandex/metrica/impl/ob/Jh;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/Jh;->b(Lcom/yandex/metrica/impl/ob/Jh;)Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jh$b;->a:Lcom/yandex/metrica/impl/ob/Jh;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Jh;->a(Lcom/yandex/metrica/impl/ob/Jh;)Landroid/content/ServiceConnection;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Jh$b;->a:Lcom/yandex/metrica/impl/ob/Jh;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/Jh;->c(Lcom/yandex/metrica/impl/ob/Jh;)Lcom/yandex/metrica/impl/ob/M0;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v0, "socket_unbind_has_thrown_exception"

    .line 39
    .line 40
    invoke-interface {p1, v0}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method
