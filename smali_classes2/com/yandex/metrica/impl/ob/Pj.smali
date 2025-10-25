.class public final Lcom/yandex/metrica/impl/ob/Pj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Mj;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation build Lcom/yandex/metrica/DoNotInline;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/Mj<",
        "Landroid/telephony/CellIdentityLte;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Landroid/telephony/CellIdentityLte;)Ljava/lang/Integer;
    .locals 0

    .line 2
    invoke-virtual {p1}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    .line 1
    check-cast p1, Landroid/telephony/CellIdentityLte;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/Pj;->b(Landroid/telephony/CellIdentityLte;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/telephony/CellIdentityLte;)Ljava/lang/Integer;
    .locals 0

    .line 2
    invoke-virtual {p1}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    .line 1
    check-cast p1, Landroid/telephony/CellIdentityLte;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/Pj;->a(Landroid/telephony/CellIdentityLte;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
