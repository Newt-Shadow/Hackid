.class public Lcom/yandex/metrica/impl/ob/Gj;
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


# instance fields
.field private final c:Lcom/yandex/metrica/impl/ob/Mj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Mj<",
            "Landroid/telephony/CellIdentityLte;",
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
    new-instance v0, Lcom/yandex/metrica/impl/ob/Qj;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Qj;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/Pj;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Pj;-><init>()V

    .line 3
    :goto_0
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/Gj;-><init>(Lcom/yandex/metrica/impl/ob/Mj;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/Mj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/Mj<",
            "Landroid/telephony/CellIdentityLte;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/pj;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Gj;->c:Lcom/yandex/metrica/impl/ob/Mj;

    return-void
.end method


# virtual methods
.method protected b(Landroid/telephony/CellInfo;Lcom/yandex/metrica/impl/ob/uj$a;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/telephony/CellInfoLte;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v1, 0x4

    .line 12
    invoke-virtual {p2, v1}, Lcom/yandex/metrica/impl/ob/uj$a;->a(I)Lcom/yandex/metrica/impl/ob/uj$a;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getCi()I

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
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getTac()I

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
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getPci()I

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
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

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
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/Gj;->c:Lcom/yandex/metrica/impl/ob/Mj;

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
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/Gj;->c:Lcom/yandex/metrica/impl/ob/Mj;

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
    check-cast p1, Landroid/telephony/CellInfoLte;

    .line 2
    .line 3
    const/16 v0, 0x18

    .line 4
    .line 5
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Cj;->a(Landroid/telephony/CellIdentityLte;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/uj$a;->a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/uj$a;

    .line 24
    .line 25
    .line 26
    :cond_0
    const/16 v0, 0x1a

    .line 27
    .line 28
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Dj;->b(Landroid/telephony/CellSignalStrengthLte;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/uj$a;->f(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/uj$a;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Dj;->c(Landroid/telephony/CellSignalStrengthLte;)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/uj$a;->h(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/uj$a;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Dj;->a(Landroid/telephony/CellSignalStrengthLte;)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/uj$a;->e(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/uj$a;

    .line 77
    .line 78
    .line 79
    :cond_1
    const/16 v0, 0x1c

    .line 80
    .line 81
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Ej;->a(Landroid/telephony/CellIdentityLte;)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/uj$a;->d(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/uj$a;

    .line 100
    .line 101
    .line 102
    :cond_2
    const/16 v0, 0x1d

    .line 103
    .line 104
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_3

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/Fj;->a(Landroid/telephony/CellSignalStrengthLte;)I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/uj$a;->g(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/uj$a;

    .line 123
    .line 124
    .line 125
    :cond_3
    return-void
.end method
