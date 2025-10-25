.class public Lcom/yandex/metrica/impl/ob/Re;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Je;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Wm;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/Wm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Re;->a:Lcom/yandex/metrica/impl/ob/Wm;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/af;Lcom/yandex/metrica/impl/ob/vf$a;)Lcom/yandex/metrica/impl/ob/vf$a;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/af;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Re;->a:Lcom/yandex/metrica/impl/ob/Wm;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Wm;->a()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget v0, p2, Lcom/yandex/metrica/impl/ob/vf$a;->b:I

    .line 14
    .line 15
    new-instance v1, Ljava/lang/String;

    .line 16
    .line 17
    iget-object v2, p2, Lcom/yandex/metrica/impl/ob/vf$a;->a:[B

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/af;->a(ILjava/lang/String;)Lcom/yandex/metrica/impl/ob/vf$a;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/af;->a(Lcom/yandex/metrica/impl/ob/vf$a;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/af;->a()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Re;->a:Lcom/yandex/metrica/impl/ob/Wm;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Wm;->a()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-ge v0, v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/af;->a(Lcom/yandex/metrica/impl/ob/vf$a;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/af;->b()V

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    return-object p2
.end method
