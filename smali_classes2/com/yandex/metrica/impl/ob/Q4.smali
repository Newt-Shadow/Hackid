.class public Lcom/yandex/metrica/impl/ob/Q4;
.super Lcom/yandex/metrica/impl/ob/M4;
.source "SourceFile"


# instance fields
.field private final b:Lcom/yandex/metrica/impl/ob/s2;

.field private final c:Lcom/yandex/metrica/impl/ob/Vc;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/F3;Lcom/yandex/metrica/impl/ob/s2;Lcom/yandex/metrica/impl/ob/Vc;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/M4;-><init>(Lcom/yandex/metrica/impl/ob/F3;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Q4;->b:Lcom/yandex/metrica/impl/ob/s2;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Q4;->c:Lcom/yandex/metrica/impl/ob/Vc;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/n4;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/n4;->b()Lcom/yandex/metrica/impl/ob/F3;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/F3;->a()Lcom/yandex/metrica/impl/ob/D3$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/Q4;->b:Lcom/yandex/metrica/impl/ob/s2;

    .line 10
    .line 11
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/D3$a;->l:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/s2;->a(Ljava/lang/Boolean;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p1, Lcom/yandex/metrica/impl/ob/D3$a;->e:Ljava/lang/Boolean;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/D3$a;->p:Ljava/lang/Boolean;

    .line 19
    .line 20
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x0

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    if-nez p2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Q4;->c:Lcom/yandex/metrica/impl/ob/Vc;

    .line 47
    .line 48
    invoke-virtual {p1, v2}, Lcom/yandex/metrica/impl/ob/Vc;->a(Z)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Q4;->c:Lcom/yandex/metrica/impl/ob/Vc;

    .line 53
    .line 54
    const/4 p2, 0x1

    .line 55
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/Vc;->a(Z)V

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_1
    return v2
.end method
