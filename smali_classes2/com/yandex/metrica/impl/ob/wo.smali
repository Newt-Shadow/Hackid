.class public abstract synthetic Lcom/yandex/metrica/impl/ob/wo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/content/pm/InstallSourceInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
