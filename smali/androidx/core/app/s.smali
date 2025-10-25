.class public abstract Landroidx/core/app/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(ZI)I
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v0, 0x1f

    .line 6
    .line 7
    if-lt p0, v0, :cond_1

    .line 8
    .line 9
    const/high16 p0, 0x2000000

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/high16 p0, 0x4000000

    .line 13
    .line 14
    :goto_0
    or-int/2addr p1, p0

    .line 15
    :cond_1
    return p1
.end method

.method public static b(Landroid/content/Context;ILandroid/content/Intent;IZ)Landroid/app/PendingIntent;
    .locals 0

    .line 1
    invoke-static {p4, p3}, Landroidx/core/app/s;->a(ZI)I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    invoke-static {p0, p1, p2, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
