.class Lcom/yandex/metrica/impl/ob/U2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/f0;)Lcom/yandex/metrica/impl/ob/A3;
    .locals 1

    .line 2
    new-instance v0, Lcom/yandex/metrica/impl/ob/A3;

    invoke-direct {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/A3;-><init>(Landroid/content/Context;Landroid/os/ResultReceiver;)V

    return-object v0
.end method

.method a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/A3;Lcom/yandex/metrica/impl/ob/T1;Landroid/os/Handler;Lcom/yandex/metrica/impl/ob/hi;)Lcom/yandex/metrica/impl/ob/R1;
    .locals 7

    .line 7
    new-instance v6, Lcom/yandex/metrica/impl/ob/R1;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/R1;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/A3;Lcom/yandex/metrica/impl/ob/T1;Landroid/os/Handler;Lcom/yandex/metrica/impl/ob/hi;)V

    return-object v6
.end method

.method a(Lcom/yandex/metrica/impl/ob/A3;Landroid/content/Context;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;)Lcom/yandex/metrica/impl/ob/T1;
    .locals 7

    .line 3
    new-instance v6, Lcom/yandex/metrica/impl/ob/T1;

    .line 4
    new-instance v3, Lcom/yandex/metrica/impl/ob/o1;

    invoke-direct {v3, p2, p3}, Lcom/yandex/metrica/impl/ob/o1;-><init>(Landroid/content/Context;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;)V

    new-instance v4, Lcom/yandex/metrica/impl/ob/P6;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/P6;-><init>()V

    new-instance v5, Lcom/yandex/metrica/impl/ob/v6;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/v6;-><init>()V

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/T1;-><init>(Lcom/yandex/metrica/impl/ob/A3;Landroid/content/Context;Lcom/yandex/metrica/impl/ob/o1;Lcom/yandex/metrica/impl/ob/P6;Lcom/yandex/metrica/impl/ob/v6;)V

    return-object v6
.end method

.method a(Lcom/yandex/metrica/impl/ob/T1;Lcom/yandex/metrica/impl/ob/b9;Landroid/os/Handler;)Lcom/yandex/metrica/impl/ob/bg;
    .locals 1

    .line 6
    new-instance v0, Lcom/yandex/metrica/impl/ob/bg;

    invoke-direct {v0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/bg;-><init>(Lcom/yandex/metrica/impl/ob/T1;Lcom/yandex/metrica/impl/ob/b9;Landroid/os/Handler;)V

    return-object v0
.end method

.method a(Landroid/os/Handler;Lcom/yandex/metrica/impl/ob/T2;)Lcom/yandex/metrica/impl/ob/f0;
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/f0;

    invoke-direct {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/f0;-><init>(Landroid/os/Handler;Lcom/yandex/metrica/impl/ob/f0$a;)V

    return-object v0
.end method

.method a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/T1;Lcom/yandex/metrica/impl/ob/b9;Landroid/os/Handler;)Lcom/yandex/metrica/impl/ob/hi;
    .locals 1

    .line 5
    new-instance v0, Lcom/yandex/metrica/impl/ob/hi;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/yandex/metrica/impl/ob/hi;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/T1;Lcom/yandex/metrica/impl/ob/b9;Landroid/os/Handler;)V

    return-object v0
.end method
