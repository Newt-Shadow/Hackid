.class public Lcom/yandex/metrica/impl/ob/c5;
.super Lcom/yandex/metrica/impl/ob/X4;
.source "SourceFile"


# instance fields
.field private final b:Lcom/yandex/metrica/impl/ob/b8;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/L3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/X4;-><init>(Lcom/yandex/metrica/impl/ob/L3;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/L3;->x()Lcom/yandex/metrica/impl/ob/b8;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/c5;->b:Lcom/yandex/metrica/impl/ob/b8;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/c0;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/X4;->a()Lcom/yandex/metrica/impl/ob/L3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L3;->e()Lcom/yandex/metrica/impl/ob/I3;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/I3;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/c5;->b:Lcom/yandex/metrica/impl/ob/b8;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/b8;->k()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L3;->B()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/c0;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/L3;)Lcom/yandex/metrica/impl/ob/c0;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L3;->r()Lcom/yandex/metrica/impl/ob/a4;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/a4;->d(Lcom/yandex/metrica/impl/ob/c0;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    return p1
.end method
