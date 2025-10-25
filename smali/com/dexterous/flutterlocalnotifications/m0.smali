.class public abstract synthetic Lcom/dexterous/flutterlocalnotifications/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/app/NotificationChannel;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result p0

    return p0
.end method
