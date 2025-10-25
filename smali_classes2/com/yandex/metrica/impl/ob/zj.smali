.class public Lcom/yandex/metrica/impl/ob/zj;
.super Lcom/yandex/metrica/impl/ob/pj;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/pj;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/pj;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected b(Landroid/telephony/CellInfo;Lcom/yandex/metrica/impl/ob/uj$a;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/telephony/CellInfoCdma;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthCdma;->getDbm()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/uj$a;->l(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/uj$a;

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x2

    .line 19
    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/uj$a;->a(I)Lcom/yandex/metrica/impl/ob/uj$a;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method protected c(Landroid/telephony/CellInfo;Lcom/yandex/metrica/impl/ob/uj$a;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/telephony/CellInfoCdma;

    .line 2
    .line 3
    return-void
.end method
