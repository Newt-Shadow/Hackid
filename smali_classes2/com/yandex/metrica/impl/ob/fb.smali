.class public Lcom/yandex/metrica/impl/ob/fb;
.super Lcom/yandex/metrica/impl/ob/in;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/in;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/in;-><init>(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/Sa;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/Sa;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/b;->b(Ljava/lang/String;)[B

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    array-length p1, p1

    .line 14
    add-int/lit8 p1, p1, 0xc

    .line 15
    .line 16
    :goto_0
    return p1
.end method
