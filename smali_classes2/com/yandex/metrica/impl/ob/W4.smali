.class public Lcom/yandex/metrica/impl/ob/W4;
.super Lcom/yandex/metrica/impl/ob/X4;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/L3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/X4;-><init>(Lcom/yandex/metrica/impl/ob/L3;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 10

    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 14
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "referrer"

    .line 15
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 17
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/X4;->a()Lcom/yandex/metrica/impl/ob/L3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L3;->w()Lcom/yandex/metrica/impl/ob/pi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/pi;->b()Lcom/yandex/metrica/impl/ob/Oh;

    move-result-object v0

    const-string v2, "&"

    .line 18
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 19
    array-length v2, p1

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, p1, v3

    const-string v5, "="

    .line 20
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_4

    .line 21
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    .line 22
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "reattribution"

    .line 23
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_3

    .line 24
    iget-object v5, v0, Lcom/yandex/metrica/impl/ob/Oh;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 25
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v9, v6}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 26
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v8, :cond_2

    check-cast v8, Lcom/yandex/metrica/impl/ob/Oh$a;

    iget-object v8, v8, Lcom/yandex/metrica/impl/ob/Oh$a;->a:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_1

    :cond_2
    :goto_1
    move v4, v7

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    if-eqz v4, :cond_4

    return v7

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    :cond_5
    return v1
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/c0;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c0;->q()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "type"

    .line 4
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "open"

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/X4;->a()Lcom/yandex/metrica/impl/ob/L3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L3;->x()Lcom/yandex/metrica/impl/ob/b8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/b8;->j()V

    const-string v0, "link"

    .line 7
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/W4;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/c0;->a(Ljava/lang/Boolean;)Lcom/yandex/metrica/impl/ob/c0;

    .line 10
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/X4;->a()Lcom/yandex/metrica/impl/ob/L3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/L3;->x()Lcom/yandex/metrica/impl/ob/b8;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/b8;->i()V

    .line 11
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/X4;->a()Lcom/yandex/metrica/impl/ob/L3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/L3;->D()V

    .line 12
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/X4;->a()Lcom/yandex/metrica/impl/ob/L3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/L3;->j()Lcom/yandex/metrica/impl/ob/M5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/M5;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
