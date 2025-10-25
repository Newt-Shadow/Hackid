.class Lcom/yandex/metrica/impl/ob/w7$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/w7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/w7;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/w7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/w7$a;->a:Lcom/yandex/metrica/impl/ob/w7;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :catchall_0
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/w7$a;->a:Lcom/yandex/metrica/impl/ob/w7;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/w7;->a(Lcom/yandex/metrica/impl/ob/w7;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/w7$a;->a:Lcom/yandex/metrica/impl/ob/w7;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/w7;->b(Lcom/yandex/metrica/impl/ob/w7;)Landroid/net/LocalServerSocket;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/16 v1, 0x100

    .line 20
    .line 21
    new-array v1, v1, [B

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    .line 32
    .line 33
    .line 34
    new-array v0, v2, [B

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/w7$a;->a:Lcom/yandex/metrica/impl/ob/w7;

    .line 41
    .line 42
    new-instance v2, Ljava/lang/String;

    .line 43
    .line 44
    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 45
    .line 46
    .line 47
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/w7;->a(Lcom/yandex/metrica/impl/ob/w7;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method
