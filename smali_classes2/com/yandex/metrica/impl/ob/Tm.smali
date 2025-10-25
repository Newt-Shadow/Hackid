.class public Lcom/yandex/metrica/impl/ob/Tm;
.super Lcom/yandex/metrica/impl/ob/Sm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/Sm<",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/yandex/metrica/impl/ob/cm;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/Sm;-><init>(ILjava/lang/String;Lcom/yandex/metrica/impl/ob/cm;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, [B

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    array-length v0, p1

    .line 6
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/Sm;->b()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-le v0, v1, :cond_1

    .line 11
    .line 12
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/Sm;->b()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    new-array v0, v0, [B

    .line 17
    .line 18
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/Sm;->b()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Sm;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/yandex/metrica/coreutils/logger/a;->isEnabled()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Sm;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 35
    .line 36
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/Sm;->a()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/Sm;->b()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    filled-new-array {v2, p1, v3}, [Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v2, "\"%s\" %s exceeded limit of %d bytes"

    .line 53
    .line 54
    invoke-virtual {v1, v2, p1}, Lcom/yandex/metrica/coreutils/logger/a;->fw(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    move-object p1, v0

    .line 58
    :cond_1
    return-object p1
.end method
