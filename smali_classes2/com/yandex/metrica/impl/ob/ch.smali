.class Lcom/yandex/metrica/impl/ob/ch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/networktasks/api/CacheControlHttpsConnectionPerformer$Client;


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/eh;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/ah;

.field final synthetic c:Lcom/yandex/metrica/impl/ob/bh;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/bh;Lcom/yandex/metrica/impl/ob/eh;Lcom/yandex/metrica/impl/ob/ah;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ch;->c:Lcom/yandex/metrica/impl/ob/bh;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ch;->a:Lcom/yandex/metrica/impl/ob/eh;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/ch;->b:Lcom/yandex/metrica/impl/ob/ah;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getOldETag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ch;->a:Lcom/yandex/metrica/impl/ob/eh;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/eh;->b:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public onError()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ch;->b:Lcom/yandex/metrica/impl/ob/ah;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ah;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onNotModified()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ch;->b:Lcom/yandex/metrica/impl/ob/ah;

    .line 2
    .line 3
    new-instance v8, Lcom/yandex/metrica/impl/ob/eh;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ch;->a:Lcom/yandex/metrica/impl/ob/eh;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/eh;->a:Ljava/util/List;

    .line 8
    .line 9
    iget-object v3, v1, Lcom/yandex/metrica/impl/ob/eh;->b:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ch;->c:Lcom/yandex/metrica/impl/ob/bh;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/bh;->d(Lcom/yandex/metrica/impl/ob/bh;)Ldc/c;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ldc/c;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    const/4 v6, 0x1

    .line 22
    const/4 v7, 0x0

    .line 23
    move-object v1, v8

    .line 24
    invoke-direct/range {v1 .. v7}, Lcom/yandex/metrica/impl/ob/eh;-><init>(Ljava/util/List;Ljava/lang/String;JZZ)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v8}, Lcom/yandex/metrica/impl/ob/ah;->a(Lcom/yandex/metrica/impl/ob/eh;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onResponse(Ljava/lang/String;[B)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ch;->c:Lcom/yandex/metrica/impl/ob/bh;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/bh;->c(Lcom/yandex/metrica/impl/ob/bh;)Lcom/yandex/metrica/impl/ob/bh$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ch;->c:Lcom/yandex/metrica/impl/ob/bh;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/bh;->b(Lcom/yandex/metrica/impl/ob/bh;)Lcom/yandex/metrica/impl/ob/v9;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "af9202nao18gswqp"

    .line 14
    .line 15
    invoke-virtual {v1, p2, v2}, Lcom/yandex/metrica/impl/ob/v9;->a([BLjava/lang/String;)[B

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/bh$b;->a([B)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/ch;->b:Lcom/yandex/metrica/impl/ob/ah;

    .line 24
    .line 25
    new-instance v0, Lcom/yandex/metrica/impl/ob/eh;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ch;->c:Lcom/yandex/metrica/impl/ob/bh;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/bh;->d(Lcom/yandex/metrica/impl/ob/bh;)Ldc/c;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Ldc/c;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    const/4 v6, 0x1

    .line 38
    const/4 v7, 0x0

    .line 39
    move-object v1, v0

    .line 40
    move-object v3, p1

    .line 41
    invoke-direct/range {v1 .. v7}, Lcom/yandex/metrica/impl/ob/eh;-><init>(Ljava/util/List;Ljava/lang/String;JZZ)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/ah;->a(Lcom/yandex/metrica/impl/ob/eh;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
