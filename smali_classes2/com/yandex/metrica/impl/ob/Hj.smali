.class public Lcom/yandex/metrica/impl/ob/Hj;
.super Lcom/yandex/metrica/impl/ob/pj;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation build Lcom/yandex/metrica/DoNotInline;
.end annotation


# instance fields
.field private final c:Lcom/yandex/metrica/impl/ob/Mj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Mj<",
            "Landroid/telephony/CellIdentityWcdma;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x1c

    .line 1
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/yandex/metrica/impl/ob/Sj;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Sj;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rj;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Rj;-><init>()V

    .line 3
    :goto_0
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/Hj;-><init>(Lcom/yandex/metrica/impl/ob/Mj;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/Mj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/Mj<",
            "Landroid/telephony/CellIdentityWcdma;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/pj;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Hj;->c:Lcom/yandex/metrica/impl/ob/Mj;

    return-void
.end method


# virtual methods
.method protected b(Landroid/telephony/CellInfo;Lcom/yandex/metrica/impl/ob/uj$a;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/telephony/CellInfoWcdma;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v1, 0x3

    .line 12
    invoke-virtual {p2, v1}, Lcom/yandex/metrica/impl/ob/uj$a;->a(I)Lcom/yandex/metrica/impl/ob/uj$a;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p2, v1}, Lcom/yandex/metrica/impl/ob/uj$a;->b(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/uj$a;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p2, v1}, Lcom/yandex/metrica/impl/ob/uj$a;->c(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/uj$a;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p2, v1}, Lcom/yandex/metrica/impl/ob/uj$a;->k(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/uj$a;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/uj$a;->l(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/uj$a;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/Hj;->c:Lcom/yandex/metrica/impl/ob/Mj;

    .line 65
    .line 66
    invoke-interface {p2, v0}, Lcom/yandex/metrica/impl/ob/Mj;->b(Ljava/lang/Object;)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/uj$a;->i(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/uj$a;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/Hj;->c:Lcom/yandex/metrica/impl/ob/Mj;

    .line 75
    .line 76
    invoke-interface {p2, v0}, Lcom/yandex/metrica/impl/ob/Mj;->a(Ljava/lang/Object;)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/uj$a;->j(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/uj$a;

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method protected c(Landroid/telephony/CellInfo;Lcom/yandex/metrica/impl/ob/uj$a;)V
    .locals 1

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Landroid/telephony/CellInfoWcdma;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/Cj;->a(Landroid/telephony/CellIdentityWcdma;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/uj$a;->a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/uj$a;

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
