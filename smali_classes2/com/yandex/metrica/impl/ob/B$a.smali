.class Lcom/yandex/metrica/impl/ob/B$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Kn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/Kn<",
        "Lcom/yandex/metrica/impl/ob/vf;",
        ">;"
    }
.end annotation


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
.method public a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/vf;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/vf;->a:[Lcom/yandex/metrica/impl/ob/vf$a;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    array-length p1, p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 14
    :goto_1
    if-eqz p1, :cond_2

    .line 15
    .line 16
    const-string p1, "attributes list is empty"

    .line 17
    .line 18
    invoke-static {p0, p1}, Lcom/yandex/metrica/impl/ob/In;->a(Lcom/yandex/metrica/impl/ob/Kn;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/In;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_2

    .line 23
    :cond_2
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/In;->a(Lcom/yandex/metrica/impl/ob/Kn;)Lcom/yandex/metrica/impl/ob/In;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :goto_2
    return-object p1
.end method
