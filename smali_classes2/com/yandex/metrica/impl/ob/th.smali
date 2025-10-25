.class Lcom/yandex/metrica/impl/ob/th;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/networktasks/api/CacheControlHttpsConnectionPerformer$Client;


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/di;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Lcom/yandex/metrica/impl/ob/Eh;

.field final synthetic d:Lcom/yandex/metrica/impl/ob/uh;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/uh;Lcom/yandex/metrica/impl/ob/di;Ljava/io/File;Lcom/yandex/metrica/impl/ob/Eh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/th;->d:Lcom/yandex/metrica/impl/ob/uh;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/th;->a:Lcom/yandex/metrica/impl/ob/di;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/th;->b:Ljava/io/File;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/th;->c:Lcom/yandex/metrica/impl/ob/Eh;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getOldETag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/th;->d:Lcom/yandex/metrica/impl/ob/uh;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/uh;->b(Lcom/yandex/metrica/impl/ob/uh;)Lcom/yandex/metrica/impl/ob/ph;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/ph;->b()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public onError()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/th;->d:Lcom/yandex/metrica/impl/ob/uh;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/th;->a:Lcom/yandex/metrica/impl/ob/di;

    .line 4
    .line 5
    iget-wide v1, v1, Lcom/yandex/metrica/impl/ob/di;->h:J

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/uh;->a(Lcom/yandex/metrica/impl/ob/uh;J)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/th;->d:Lcom/yandex/metrica/impl/ob/uh;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/uh;->c(Lcom/yandex/metrica/impl/ob/uh;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onNotModified()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/th;->d:Lcom/yandex/metrica/impl/ob/uh;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/th;->a:Lcom/yandex/metrica/impl/ob/di;

    .line 4
    .line 5
    iget-wide v1, v1, Lcom/yandex/metrica/impl/ob/di;->i:J

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/uh;->a(Lcom/yandex/metrica/impl/ob/uh;J)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/th;->d:Lcom/yandex/metrica/impl/ob/uh;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/uh;->c(Lcom/yandex/metrica/impl/ob/uh;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/th;->c:Lcom/yandex/metrica/impl/ob/Eh;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/th;->b:Ljava/io/File;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Eh;->a(Ljava/io/File;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onResponse(Ljava/lang/String;[B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/th;->d:Lcom/yandex/metrica/impl/ob/uh;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/th;->a:Lcom/yandex/metrica/impl/ob/di;

    .line 4
    .line 5
    iget-wide v1, v1, Lcom/yandex/metrica/impl/ob/di;->i:J

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/uh;->a(Lcom/yandex/metrica/impl/ob/uh;J)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/th;->d:Lcom/yandex/metrica/impl/ob/uh;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/uh;->c(Lcom/yandex/metrica/impl/ob/uh;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/th;->d:Lcom/yandex/metrica/impl/ob/uh;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/uh;->b(Lcom/yandex/metrica/impl/ob/uh;)Lcom/yandex/metrica/impl/ob/ph;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/ph;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ph;

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/th;->d:Lcom/yandex/metrica/impl/ob/uh;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/th;->b:Ljava/io/File;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    .line 32
    .line 33
    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    :try_start_1
    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    const/4 p1, 0x0

    .line 44
    :catchall_1
    :goto_0
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/io/Closeable;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/th;->c:Lcom/yandex/metrica/impl/ob/Eh;

    .line 48
    .line 49
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/th;->b:Ljava/io/File;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/Eh;->a(Ljava/io/File;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
