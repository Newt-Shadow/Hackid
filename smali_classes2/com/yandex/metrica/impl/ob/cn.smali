.class public Lcom/yandex/metrica/impl/ob/cn;
.super Lcom/yandex/metrica/impl/ob/Sm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/Sm<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/Ul;->a()Lcom/yandex/metrica/impl/ob/cm;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/metrica/impl/ob/cn;-><init>(ILjava/lang/String;Lcom/yandex/metrica/impl/ob/cm;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/yandex/metrica/impl/ob/cm;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/Sm;-><init>(ILjava/lang/String;Lcom/yandex/metrica/impl/ob/cm;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/cn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "UTF-8"

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 4
    array-length v2, v1

    .line 5
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/Sm;->b()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 6
    new-instance v2, Ljava/lang/String;

    .line 7
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/Sm;->b()I

    move-result v3

    const/4 v4, 0x0

    .line 8
    invoke-direct {v2, v1, v4, v3, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Sm;->c:Lcom/yandex/metrica/impl/ob/cm;

    invoke-virtual {v0}, Lcom/yandex/metrica/coreutils/logger/a;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Sm;->c:Lcom/yandex/metrica/impl/ob/cm;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "\"%s\" %s exceeded limit of %d bytes"

    const/4 v3, 0x3

    :try_start_2
    new-array v3, v3, [Ljava/lang/Object;

    .line 11
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/Sm;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 12
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/Sm;->b()I

    move-result p1

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x2

    aput-object p1, v3, v4

    .line 14
    invoke-virtual {v0, v1, v3}, Lcom/yandex/metrica/coreutils/logger/a;->fw(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    move-object p1, v2

    :catch_1
    :cond_1
    return-object p1
.end method
