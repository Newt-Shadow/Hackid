.class public Lcom/yandex/metrica/impl/ob/Uj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Yj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/Yj<",
        "Ljava/util/List<",
        "Lcom/yandex/metrica/impl/ob/Tj;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Ij;

.field private final b:Lcom/yandex/metrica/impl/ob/yd;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Ij;Lcom/yandex/metrica/impl/ob/yd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Uj;->a:Lcom/yandex/metrica/impl/ob/Ij;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Uj;->b:Lcom/yandex/metrica/impl/ob/yd;

    .line 7
    .line 8
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/Uj;)Lcom/yandex/metrica/impl/ob/Ij;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/Uj;->a:Lcom/yandex/metrica/impl/ob/Ij;

    return-object p0
.end method

.method private a()Lcom/yandex/metrica/impl/ob/Tj;
    .locals 8

    .line 2
    new-instance v0, Lcom/yandex/metrica/impl/ob/Tj;

    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Uj;->a:Lcom/yandex/metrica/impl/ob/Ij;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Ij;->f()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 4
    :try_start_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 7
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    :cond_2
    :goto_1
    move-object v1, v3

    .line 8
    :goto_2
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/Uj;->a:Lcom/yandex/metrica/impl/ob/Ij;

    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/Ij;->f()Landroid/telephony/TelephonyManager;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 9
    :try_start_1
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 11
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v3

    .line 12
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    :cond_5
    :goto_4
    move-object v2, v3

    .line 13
    :goto_5
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/Uj;->a:Lcom/yandex/metrica/impl/ob/Ij;

    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/Ij;->f()Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 14
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eqz v4, :cond_6

    .line 15
    :try_start_2
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/Uj;->b(Lcom/yandex/metrica/impl/ob/Uj;)Lcom/yandex/metrica/impl/ob/yd;

    move-result-object v6

    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/Uj;->a(Lcom/yandex/metrica/impl/ob/Uj;)Lcom/yandex/metrica/impl/ob/Ij;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yandex/metrica/impl/ob/Ij;->e()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/yandex/metrica/impl/ob/yd;->b(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 16
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_6

    :catchall_2
    :cond_6
    move-object v4, v3

    :goto_6
    if-nez v4, :cond_7

    goto :goto_7

    :cond_7
    move-object v5, v4

    .line 17
    :goto_7
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 18
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/Uj;->a:Lcom/yandex/metrica/impl/ob/Ij;

    invoke-virtual {v5}, Lcom/yandex/metrica/impl/ob/Ij;->f()Landroid/telephony/TelephonyManager;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 19
    :try_start_3
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 20
    :catchall_3
    :cond_8
    invoke-direct {v0, v1, v2, v4, v3}, Lcom/yandex/metrica/impl/ob/Tj;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/String;)V

    return-object v0
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/Uj;)Lcom/yandex/metrica/impl/ob/yd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/Uj;->b:Lcom/yandex/metrica/impl/ob/yd;

    return-object p0
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 3

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Uj;->a:Lcom/yandex/metrica/impl/ob/Ij;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Ij;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x17

    .line 4
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Uj;->b:Lcom/yandex/metrica/impl/ob/yd;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Uj;->a:Lcom/yandex/metrica/impl/ob/Ij;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Ij;->e()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/yd;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Uj;->a:Lcom/yandex/metrica/impl/ob/Ij;

    .line 7
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Ij;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/Vj;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 10
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/Uj;->a()Lcom/yandex/metrica/impl/ob/Tj;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/Uj;->a()Lcom/yandex/metrica/impl/ob/Tj;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-object v0
.end method
