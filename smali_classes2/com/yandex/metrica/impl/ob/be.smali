.class public final Lcom/yandex/metrica/impl/ob/be;
.super Lcom/yandex/metrica/impl/ob/t0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/t0<",
        "Lcom/yandex/metrica/impl/ob/ee;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/t0;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/ee;

    .line 2
    .line 3
    check-cast p2, Lcom/yandex/metrica/impl/ob/ee;

    .line 4
    .line 5
    iget-boolean v0, p1, Lcom/yandex/metrica/impl/ob/ee;->c:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-boolean v0, p2, Lcom/yandex/metrica/impl/ob/ee;->c:Z

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t0;->a()Lcom/yandex/metrica/impl/ob/Zl;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/ee;->e:Lcom/yandex/metrica/impl/ob/u0;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Zl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Ljava/lang/Number;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t0;->a()Lcom/yandex/metrica/impl/ob/Zl;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object p2, p2, Lcom/yandex/metrica/impl/ob/ee;->e:Lcom/yandex/metrica/impl/ob/u0;

    .line 36
    .line 37
    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/Zl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    const-string v0, "priorities[oldData.source]"

    .line 42
    .line 43
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    check-cast p2, Ljava/lang/Number;

    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->f(II)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-lez p1, :cond_2

    .line 57
    .line 58
    :goto_0
    const/4 p1, 0x1

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 61
    :goto_2
    return p1
.end method
