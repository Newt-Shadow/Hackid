.class public Lcom/yandex/metrica/impl/ob/ua;
.super Ljava/lang/Object;
.source "SourceFile"


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


# virtual methods
.method public a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Q0;)Lcom/yandex/metrica/impl/ob/ta;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/metrica/impl/ob/Q0;",
            ")",
            "Lcom/yandex/metrica/impl/ob/ta<",
            "Lcom/yandex/metrica/YandexMetricaConfig;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Xl;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Xl;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v8, Lcom/yandex/metrica/impl/ob/ta;

    .line 7
    .line 8
    new-instance v5, Lcom/yandex/metrica/impl/ob/na;

    .line 9
    .line 10
    new-instance v1, Lcom/yandex/metrica/impl/ob/ya;

    .line 11
    .line 12
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/ya;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-direct {v5, v0, v1}, Lcom/yandex/metrica/impl/ob/na;-><init>(Lcom/yandex/metrica/impl/ob/bm;Lcom/yandex/metrica/impl/ob/ya;)V

    .line 16
    .line 17
    .line 18
    new-instance v6, Lcom/yandex/metrica/impl/ob/ua$a;

    .line 19
    .line 20
    invoke-direct {v6, p0}, Lcom/yandex/metrica/impl/ob/ua$a;-><init>(Lcom/yandex/metrica/impl/ob/ua;)V

    .line 21
    .line 22
    .line 23
    new-instance v7, Lcom/yandex/metrica/impl/ob/oa;

    .line 24
    .line 25
    invoke-direct {v7, v0}, Lcom/yandex/metrica/impl/ob/oa;-><init>(Lcom/yandex/metrica/impl/ob/bm;)V

    .line 26
    .line 27
    .line 28
    const-string v4, "activation"

    .line 29
    .line 30
    move-object v1, v8

    .line 31
    move-object v2, p1

    .line 32
    move-object v3, p2

    .line 33
    invoke-direct/range {v1 .. v7}, Lcom/yandex/metrica/impl/ob/ta;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Q0;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/sa;Lcom/yandex/metrica/impl/ob/nm;Lcom/yandex/metrica/impl/ob/wa;)V

    .line 34
    .line 35
    .line 36
    return-object v8
.end method

.method public b(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Q0;)Lcom/yandex/metrica/impl/ob/ta;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/metrica/impl/ob/Q0;",
            ")",
            "Lcom/yandex/metrica/impl/ob/ta<",
            "Lcom/yandex/metrica/impl/ob/v3;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/yandex/metrica/impl/ob/ta;

    .line 2
    .line 3
    new-instance v4, Lcom/yandex/metrica/impl/ob/pa;

    .line 4
    .line 5
    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/pa;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v5, Lcom/yandex/metrica/impl/ob/ua$d;

    .line 9
    .line 10
    invoke-direct {v5, p0}, Lcom/yandex/metrica/impl/ob/ua$d;-><init>(Lcom/yandex/metrica/impl/ob/ua;)V

    .line 11
    .line 12
    .line 13
    new-instance v6, Lcom/yandex/metrica/impl/ob/ua$e;

    .line 14
    .line 15
    invoke-direct {v6, p0}, Lcom/yandex/metrica/impl/ob/ua$e;-><init>(Lcom/yandex/metrica/impl/ob/ua;)V

    .line 16
    .line 17
    .line 18
    const-string v3, "clids_info"

    .line 19
    .line 20
    move-object v0, v7

    .line 21
    move-object v1, p1

    .line 22
    move-object v2, p2

    .line 23
    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/ta;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Q0;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/sa;Lcom/yandex/metrica/impl/ob/nm;Lcom/yandex/metrica/impl/ob/wa;)V

    .line 24
    .line 25
    .line 26
    return-object v7
.end method

.method public c(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Q0;)Lcom/yandex/metrica/impl/ob/ta;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/metrica/impl/ob/Q0;",
            ")",
            "Lcom/yandex/metrica/impl/ob/ta<",
            "Lcom/yandex/metrica/impl/ob/Ud;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/yandex/metrica/impl/ob/ta;

    .line 2
    .line 3
    new-instance v4, Lcom/yandex/metrica/impl/ob/xa;

    .line 4
    .line 5
    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/xa;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v5, Lcom/yandex/metrica/impl/ob/ua$b;

    .line 9
    .line 10
    invoke-direct {v5, p0}, Lcom/yandex/metrica/impl/ob/ua$b;-><init>(Lcom/yandex/metrica/impl/ob/ua;)V

    .line 11
    .line 12
    .line 13
    new-instance v6, Lcom/yandex/metrica/impl/ob/ua$c;

    .line 14
    .line 15
    invoke-direct {v6, p0}, Lcom/yandex/metrica/impl/ob/ua$c;-><init>(Lcom/yandex/metrica/impl/ob/ua;)V

    .line 16
    .line 17
    .line 18
    const-string v3, "preload_info"

    .line 19
    .line 20
    move-object v0, v7

    .line 21
    move-object v1, p1

    .line 22
    move-object v2, p2

    .line 23
    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/ta;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Q0;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/sa;Lcom/yandex/metrica/impl/ob/nm;Lcom/yandex/metrica/impl/ob/wa;)V

    .line 24
    .line 25
    .line 26
    return-object v7
.end method
