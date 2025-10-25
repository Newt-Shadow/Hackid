.class public final Lcom/yandex/metrica/impl/ob/Oe;
.super Lcom/yandex/metrica/impl/ob/Ne;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/Ne<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 6

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 2
    .line 3
    .line 4
    move-result-object v3

    .line 5
    new-instance v4, Lcom/yandex/metrica/impl/ob/Qe;

    .line 6
    .line 7
    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/Qe;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v5, Lcom/yandex/metrica/impl/ob/Me;

    .line 11
    .line 12
    new-instance p2, Lcom/yandex/metrica/impl/ob/Re;

    .line 13
    .line 14
    new-instance p3, Lcom/yandex/metrica/impl/ob/Wm;

    .line 15
    .line 16
    const/16 v0, 0x64

    .line 17
    .line 18
    invoke-direct {p3, v0}, Lcom/yandex/metrica/impl/ob/Wm;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p2, p3}, Lcom/yandex/metrica/impl/ob/Re;-><init>(Lcom/yandex/metrica/impl/ob/Wm;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v5, p2}, Lcom/yandex/metrica/impl/ob/Me;-><init>(Lcom/yandex/metrica/impl/ob/Je;)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    move-object v0, p0

    .line 29
    move-object v2, p1

    .line 30
    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/Ne;-><init>(ILjava/lang/String;Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/Kn;Lcom/yandex/metrica/impl/ob/Ke;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method protected a(Lcom/yandex/metrica/impl/ob/vf$a;)V
    .locals 4

    .line 1
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/vf$a;->d:Lcom/yandex/metrica/impl/ob/vf$c;

    .line 2
    .line 3
    iget-wide v0, p1, Lcom/yandex/metrica/impl/ob/vf$c;->c:D

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Ne;->f()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Ljava/lang/Double;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    add-double/2addr v0, v2

    .line 16
    iput-wide v0, p1, Lcom/yandex/metrica/impl/ob/vf$c;->c:D

    .line 17
    .line 18
    return-void
.end method
