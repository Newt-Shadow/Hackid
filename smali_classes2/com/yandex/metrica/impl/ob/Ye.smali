.class public Lcom/yandex/metrica/impl/ob/Ye;
.super Lcom/yandex/metrica/impl/ob/Ne;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/Ne<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final g:Lcom/yandex/metrica/impl/ob/fn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/fn<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/fn;Lcom/yandex/metrica/impl/ob/Kn;Lcom/yandex/metrica/impl/ob/Ke;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/fn<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/Ke;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v1, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v2, p1

    .line 4
    move-object v3, p2

    .line 5
    move-object v4, p4

    .line 6
    move-object v5, p5

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/Ne;-><init>(ILjava/lang/String;Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/Kn;Lcom/yandex/metrica/impl/ob/Ke;)V

    .line 8
    .line 9
    .line 10
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Ye;->g:Lcom/yandex/metrica/impl/ob/fn;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method protected a(Lcom/yandex/metrica/impl/ob/vf$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ye;->g:Lcom/yandex/metrica/impl/ob/fn;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Ne;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/fn;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/vf$a;->d:Lcom/yandex/metrica/impl/ob/vf$c;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    new-array v0, v0, [B

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    iput-object v0, p1, Lcom/yandex/metrica/impl/ob/vf$c;->a:[B

    .line 26
    .line 27
    return-void
.end method
