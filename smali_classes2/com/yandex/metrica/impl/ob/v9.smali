.class public Lcom/yandex/metrica/impl/ob/v9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/v9$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/v9$a;

.field private final b:Lcom/yandex/metrica/impl/ob/Ql;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/v9$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/v9$a;-><init>()V

    new-instance v1, Lcom/yandex/metrica/impl/ob/Ql;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Ql;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/v9;-><init>(Lcom/yandex/metrica/impl/ob/v9$a;Lcom/yandex/metrica/impl/ob/Ql;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/v9$a;Lcom/yandex/metrica/impl/ob/Ql;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/v9;->a:Lcom/yandex/metrica/impl/ob/v9$a;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/v9;->b:Lcom/yandex/metrica/impl/ob/Ql;

    return-void
.end method


# virtual methods
.method public a([BLjava/lang/String;)[B
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x10

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/v9;->a:Lcom/yandex/metrica/impl/ob/v9$a;

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v3, Lcom/yandex/metrica/impl/ob/wm;

    .line 19
    .line 20
    const-string v4, "AES/CBC/PKCS5Padding"

    .line 21
    .line 22
    invoke-direct {v3, v4, p2, v0}, Lcom/yandex/metrica/impl/ob/wm;-><init>(Ljava/lang/String;[B[B)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/A2;->a([B)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-nez p2, :cond_0

    .line 30
    .line 31
    array-length p2, p1

    .line 32
    sub-int/2addr p2, v1

    .line 33
    invoke-virtual {v3, p1, v1, p2}, Lcom/yandex/metrica/impl/ob/wm;->a([BII)[B

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/v9;->b:Lcom/yandex/metrica/impl/ob/Ql;

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/Ql;->uncompress([B)[B

    .line 40
    .line 41
    .line 42
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :catchall_0
    :cond_0
    return-object v2
.end method
