.class public Lcom/yandex/metrica/impl/ob/yj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/S;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Jj;

.field private final b:Lcom/yandex/metrica/impl/ob/pj;

.field private final c:Lcom/yandex/metrica/impl/ob/pj;

.field private final d:Lcom/yandex/metrica/impl/ob/pj;

.field private final e:Lcom/yandex/metrica/impl/ob/pj;

.field private final f:[Lcom/yandex/metrica/impl/ob/S;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Aj;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Aj;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/yj;-><init>(Lcom/yandex/metrica/impl/ob/pj;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/Jj;Lcom/yandex/metrica/impl/ob/pj;Lcom/yandex/metrica/impl/ob/pj;Lcom/yandex/metrica/impl/ob/pj;Lcom/yandex/metrica/impl/ob/pj;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/yj;->a:Lcom/yandex/metrica/impl/ob/Jj;

    .line 8
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/yj;->b:Lcom/yandex/metrica/impl/ob/pj;

    .line 9
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/yj;->c:Lcom/yandex/metrica/impl/ob/pj;

    .line 10
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/yj;->d:Lcom/yandex/metrica/impl/ob/pj;

    .line 11
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/yj;->e:Lcom/yandex/metrica/impl/ob/pj;

    const/4 p1, 0x4

    new-array p1, p1, [Lcom/yandex/metrica/impl/ob/S;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const/4 p2, 0x1

    aput-object p3, p1, p2

    const/4 p2, 0x2

    aput-object p5, p1, p2

    const/4 p2, 0x3

    aput-object p4, p1, p2

    .line 12
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/yj;->f:[Lcom/yandex/metrica/impl/ob/S;

    return-void
.end method

.method private constructor <init>(Lcom/yandex/metrica/impl/ob/pj;)V
    .locals 6

    .line 2
    new-instance v1, Lcom/yandex/metrica/impl/ob/Jj;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Jj;-><init>()V

    new-instance v2, Lcom/yandex/metrica/impl/ob/Bj;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/Bj;-><init>()V

    new-instance v3, Lcom/yandex/metrica/impl/ob/zj;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/zj;-><init>()V

    new-instance v4, Lcom/yandex/metrica/impl/ob/Gj;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/Gj;-><init>()V

    const/16 v0, 0x12

    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance p1, Lcom/yandex/metrica/impl/ob/Hj;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/Hj;-><init>()V

    :cond_0
    move-object v5, p1

    move-object v0, p0

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/yj;-><init>(Lcom/yandex/metrica/impl/ob/Jj;Lcom/yandex/metrica/impl/ob/pj;Lcom/yandex/metrica/impl/ob/pj;Lcom/yandex/metrica/impl/ob/pj;Lcom/yandex/metrica/impl/ob/pj;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/telephony/CellInfo;Lcom/yandex/metrica/impl/ob/uj$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/yj;->a:Lcom/yandex/metrica/impl/ob/Jj;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/Jj;->a(Landroid/telephony/CellInfo;Lcom/yandex/metrica/impl/ob/uj$a;)V

    .line 2
    instance-of v0, p1, Landroid/telephony/CellInfoGsm;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/yj;->b:Lcom/yandex/metrica/impl/ob/pj;

    check-cast p1, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/pj;->a(Landroid/telephony/CellInfo;Lcom/yandex/metrica/impl/ob/uj$a;)V

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Landroid/telephony/CellInfoCdma;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/yj;->c:Lcom/yandex/metrica/impl/ob/pj;

    check-cast p1, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/pj;->a(Landroid/telephony/CellInfo;Lcom/yandex/metrica/impl/ob/uj$a;)V

    goto :goto_0

    .line 6
    :cond_1
    instance-of v0, p1, Landroid/telephony/CellInfoLte;

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/yj;->d:Lcom/yandex/metrica/impl/ob/pj;

    check-cast p1, Landroid/telephony/CellInfoLte;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/pj;->a(Landroid/telephony/CellInfo;Lcom/yandex/metrica/impl/ob/uj$a;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x12

    .line 8
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p1, Landroid/telephony/CellInfoWcdma;

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/yj;->e:Lcom/yandex/metrica/impl/ob/pj;

    check-cast p1, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/pj;->a(Landroid/telephony/CellInfo;Lcom/yandex/metrica/impl/ob/uj$a;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/Sh;)V
    .locals 4

    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/yj;->f:[Lcom/yandex/metrica/impl/ob/S;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 11
    invoke-interface {v3, p1}, Lcom/yandex/metrica/impl/ob/S;->a(Lcom/yandex/metrica/impl/ob/Sh;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
