.class public Lcom/yandex/metrica/impl/ob/t5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/E5;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/E5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/t5;->a:Lcom/yandex/metrica/impl/ob/E5;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/a1;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/a1;",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/X4;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/z0;->b(Lcom/yandex/metrica/impl/ob/a1;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t5;->a:Lcom/yandex/metrica/impl/ob/E5;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/E5;->w()Lcom/yandex/metrica/impl/ob/m5;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/z0;->a(Lcom/yandex/metrica/impl/ob/a1;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/t5;->a:Lcom/yandex/metrica/impl/ob/E5;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/E5;->p()Lcom/yandex/metrica/impl/ob/k5;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method
