.class public Lcom/yandex/metrica/impl/ob/Ng;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/networktasks/api/IParamsAppender;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/tb;)V
    .locals 2

    const-string v0, ""

    if-nez p4, :cond_0

    .line 7
    invoke-virtual {p1, p2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 8
    invoke-virtual {p1, p3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 9
    :cond_0
    iget-object v1, p4, Lcom/yandex/metrica/impl/ob/tb;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    move-object v1, v0

    :cond_1
    invoke-virtual {p1, p2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 10
    iget-object p2, p4, Lcom/yandex/metrica/impl/ob/tb;->c:Ljava/lang/Boolean;

    if-nez p2, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string v0, "1"

    goto :goto_0

    :cond_3
    const-string v0, "0"

    .line 12
    :goto_0
    invoke-virtual {p1, p3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :goto_1
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri$Builder;Lcom/yandex/metrica/impl/ob/zb;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/zb;->a()Lcom/yandex/metrica/impl/ob/ub;

    move-result-object v0

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ub;->a:Lcom/yandex/metrica/impl/ob/tb;

    const-string v1, "adv_id"

    const-string v2, "limit_ad_tracking"

    .line 2
    invoke-direct {p0, p1, v1, v2, v0}, Lcom/yandex/metrica/impl/ob/Ng;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/tb;)V

    .line 3
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/zb;->b()Lcom/yandex/metrica/impl/ob/ub;

    move-result-object v0

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ub;->a:Lcom/yandex/metrica/impl/ob/tb;

    const-string v1, "oaid"

    const-string v2, "limit_oaid_tracking"

    .line 4
    invoke-direct {p0, p1, v1, v2, v0}, Lcom/yandex/metrica/impl/ob/Ng;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/tb;)V

    .line 5
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/zb;->c()Lcom/yandex/metrica/impl/ob/ub;

    move-result-object p2

    iget-object p2, p2, Lcom/yandex/metrica/impl/ob/ub;->a:Lcom/yandex/metrica/impl/ob/tb;

    const-string v0, "yandex_adv_id"

    const-string v1, "limit_yandex_adv_id_tracking"

    .line 6
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/yandex/metrica/impl/ob/Ng;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/tb;)V

    return-void
.end method

.method public bridge synthetic appendParams(Landroid/net/Uri$Builder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/yandex/metrica/impl/ob/zb;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/Ng;->a(Landroid/net/Uri$Builder;Lcom/yandex/metrica/impl/ob/zb;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
