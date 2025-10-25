.class public final Lcom/yandex/metrica/impl/ob/Oj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Mj;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation

.annotation build Lcom/yandex/metrica/DoNotInline;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/Mj<",
        "Landroid/telephony/CellIdentityGsm;",
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
.method public a(Landroid/telephony/CellIdentityGsm;)Ljava/lang/Integer;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/no;->a(Landroid/telephony/CellIdentityGsm;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    .line 1
    check-cast p1, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/Oj;->b(Landroid/telephony/CellIdentityGsm;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/telephony/CellIdentityGsm;)Ljava/lang/Integer;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/mo;->a(Landroid/telephony/CellIdentityGsm;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    .line 1
    check-cast p1, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/Oj;->a(Landroid/telephony/CellIdentityGsm;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
