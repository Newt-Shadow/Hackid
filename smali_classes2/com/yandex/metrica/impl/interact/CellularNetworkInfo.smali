.class public Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;->a:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Lcom/yandex/metrica/impl/ob/Xj;

    .line 9
    .line 10
    invoke-static {}, Lcom/yandex/metrica/impl/ob/P;->g()Lcom/yandex/metrica/impl/ob/P;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/P;->d()Lcom/yandex/metrica/impl/ob/Im;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Im;->b()Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/Xj;-><init>(Landroid/content/Context;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;)V

    .line 23
    .line 24
    .line 25
    new-instance p1, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo$a;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo$a;-><init>(Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Xj;->a(Lcom/yandex/metrica/impl/ob/ak;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method


# virtual methods
.method public getCelluralInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
