.class Lcom/yandex/metrica/impl/ob/Ek;
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
.method a(Lcom/yandex/metrica/impl/ob/mm;)Lfc/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/mm<",
            "Landroid/app/Activity;",
            ">;)",
            "Lfc/a;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/yandex/metrica/uiaccessor/a;

    .line 2
    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/Ek$a;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/Ek$a;-><init>(Lcom/yandex/metrica/impl/ob/Ek;Lcom/yandex/metrica/impl/ob/mm;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/yandex/metrica/uiaccessor/a;-><init>(Lcom/yandex/metrica/uiaccessor/a$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/yandex/metrica/impl/ob/Ek$b;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/Ek$b;-><init>(Lcom/yandex/metrica/impl/ob/Ek;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-object v0
.end method
