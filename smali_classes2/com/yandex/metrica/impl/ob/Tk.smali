.class Lcom/yandex/metrica/impl/ob/Tk;
.super Lcom/yandex/metrica/impl/ob/yk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/yk<",
        "Lcom/yandex/metrica/impl/ob/wl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/wl;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/vk;

    const v1, 0x19000

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/vk;-><init>(II)V

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/Tk;-><init>(Lcom/yandex/metrica/impl/ob/wl;Lcom/yandex/metrica/impl/ob/vk;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/wl;Lcom/yandex/metrica/impl/ob/vk;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/yk;-><init>(Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/vk;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/wl;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/wl;->h:Ljava/util/List;

    .line 4
    .line 5
    return-object p1
.end method

.method b(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/wl;

    .line 2
    .line 3
    iget p1, p1, Lcom/yandex/metrica/impl/ob/wl;->a:I

    .line 4
    .line 5
    return p1
.end method
