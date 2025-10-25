.class public Lcom/yandex/metrica/impl/ob/Qe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Kn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/Kn<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


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
.method public a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p1, "key is null"

    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/yandex/metrica/impl/ob/In;->a(Lcom/yandex/metrica/impl/ob/Kn;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/In;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, "appmetrica"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const-string p1, "key starts with appmetrica"

    .line 21
    .line 22
    invoke-static {p0, p1}, Lcom/yandex/metrica/impl/ob/In;->a(Lcom/yandex/metrica/impl/ob/Kn;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/In;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/16 v0, 0xc8

    .line 32
    .line 33
    if-le p1, v0, :cond_2

    .line 34
    .line 35
    const-string p1, "key length more then 200 characters"

    .line 36
    .line 37
    invoke-static {p0, p1}, Lcom/yandex/metrica/impl/ob/In;->a(Lcom/yandex/metrica/impl/ob/Kn;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/In;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/In;->a(Lcom/yandex/metrica/impl/ob/Kn;)Lcom/yandex/metrica/impl/ob/In;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    :goto_0
    return-object p1
.end method
