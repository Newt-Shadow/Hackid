.class Lcom/yandex/metrica/impl/ob/sh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldc/a$c;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Lcom/yandex/metrica/impl/ob/Eh;

.field final synthetic d:Lcom/yandex/metrica/impl/ob/di;

.field final synthetic e:Lcom/yandex/metrica/impl/ob/uh;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/uh;Ljava/lang/String;Ljava/io/File;Lcom/yandex/metrica/impl/ob/Eh;Lcom/yandex/metrica/impl/ob/di;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/sh;->e:Lcom/yandex/metrica/impl/ob/uh;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/sh;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/sh;->b:Ljava/io/File;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/sh;->c:Lcom/yandex/metrica/impl/ob/Eh;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/sh;->d:Lcom/yandex/metrica/impl/ob/di;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onWaitFinished()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/sh;->e:Lcom/yandex/metrica/impl/ob/uh;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/uh;->a(Lcom/yandex/metrica/impl/ob/uh;)Lcom/yandex/metrica/networktasks/api/CacheControlHttpsConnectionPerformer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/sh;->a:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/sh;->e:Lcom/yandex/metrica/impl/ob/uh;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/sh;->b:Ljava/io/File;

    .line 12
    .line 13
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/sh;->c:Lcom/yandex/metrica/impl/ob/Eh;

    .line 14
    .line 15
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/sh;->d:Lcom/yandex/metrica/impl/ob/di;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance v6, Lcom/yandex/metrica/impl/ob/th;

    .line 21
    .line 22
    invoke-direct {v6, v2, v5, v3, v4}, Lcom/yandex/metrica/impl/ob/th;-><init>(Lcom/yandex/metrica/impl/ob/uh;Lcom/yandex/metrica/impl/ob/di;Ljava/io/File;Lcom/yandex/metrica/impl/ob/Eh;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v6}, Lcom/yandex/metrica/networktasks/api/CacheControlHttpsConnectionPerformer;->a(Ljava/lang/String;Lcom/yandex/metrica/networktasks/api/CacheControlHttpsConnectionPerformer$Client;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
