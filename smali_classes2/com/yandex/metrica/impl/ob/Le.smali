.class public Lcom/yandex/metrica/impl/ob/Le;
.super Lcom/yandex/metrica/impl/ob/Ne;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/Ne<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/yandex/metrica/impl/ob/Kn;Lcom/yandex/metrica/impl/ob/Ke;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/Ke;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v3

    .line 5
    const/4 v1, 0x3

    .line 6
    move-object v0, p0

    .line 7
    move-object v2, p1

    .line 8
    move-object v4, p3

    .line 9
    move-object v5, p4

    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/Ne;-><init>(ILjava/lang/String;Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/Kn;Lcom/yandex/metrica/impl/ob/Ke;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method protected a(Lcom/yandex/metrica/impl/ob/vf$a;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/vf$a;->d:Lcom/yandex/metrica/impl/ob/vf$c;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Ne;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput-boolean v0, p1, Lcom/yandex/metrica/impl/ob/vf$c;->d:Z

    .line 14
    .line 15
    return-void
.end method
