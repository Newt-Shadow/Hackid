.class public Lcom/yandex/metrica/impl/ob/r4;
.super Lcom/yandex/metrica/impl/ob/g4;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/X3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/g4;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/X3;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected b(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/D3;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lcom/yandex/metrica/impl/ob/D3;->b:Lcom/yandex/metrica/impl/ob/D3$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/D3$a;->e:Ljava/lang/Boolean;

    .line 4
    .line 5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    move-object v0, v1

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/g4;->c()Lcom/yandex/metrica/impl/ob/Vc;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/Vc;->a(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/g4;->b()Lcom/yandex/metrica/impl/ob/X3;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/X3;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/D3;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
