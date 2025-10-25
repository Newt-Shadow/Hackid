.class public abstract synthetic Lcom/yandex/metrica/impl/ob/ap;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/app/usage/StorageStatsManager;Ljava/util/UUID;)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/usage/StorageStatsManager;->getFreeBytes(Ljava/util/UUID;)J

    move-result-wide p0

    return-wide p0
.end method
