.class public Lcom/yandex/metrica/impl/ob/je;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Ge;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Dm;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Dm;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Dm;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/je;-><init>(Lcom/yandex/metrica/impl/ob/Dm;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/Dm;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/je;->a:Lcom/yandex/metrica/impl/ob/Dm;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/qe;Lcom/yandex/metrica/impl/ob/Lg;)[B
    .locals 2

    .line 1
    const/4 p2, 0x0

    .line 2
    new-array v0, p2, [B

    .line 3
    .line 4
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/qe;->b:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-static {v1, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 9
    .line 10
    .line 11
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :catchall_0
    :cond_0
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/je;->a:Lcom/yandex/metrica/impl/ob/Dm;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/qe;->r:Lcom/yandex/metrica/impl/ob/Em;

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/Dm;->a(Lcom/yandex/metrica/impl/ob/Em;)Lcom/yandex/metrica/impl/ob/Cm;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1, v0}, Lcom/yandex/metrica/impl/ob/Cm;->a([B)[B

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method
