.class public abstract synthetic Lcom/yandex/metrica/impl/ob/mo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/telephony/CellIdentityGsm;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getMncString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
