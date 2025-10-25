.class public final Lfa/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfa/d0$c;,
        Lfa/d0$a;,
        Lfa/d0$b;
    }
.end annotation


# instance fields
.field a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lfa/d0;->a:Z

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic a(Lfa/d0;Lfa/d0$c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lfa/d0;->d(Lfa/d0$c;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    const-string v0, "android.permission.RECORD_AUDIO"

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method private c(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    const-string v0, "android.permission.CAMERA"

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method private synthetic d(Lfa/d0$c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lfa/d0;->a:Z

    .line 3
    .line 4
    invoke-interface {p1, p2, p3}, Lfa/d0$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method e(Landroid/app/Activity;Lfa/d0$b;ZLfa/d0$c;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lfa/d0;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p1, "CameraPermissionsRequestOngoing"

    .line 6
    .line 7
    const-string p2, "Another request is ongoing and multiple requests cannot be handled at once."

    .line 8
    .line 9
    invoke-interface {p4, p1, p2}, Lfa/d0$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-direct {p0, p1}, Lfa/d0;->c(Landroid/app/Activity;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    if-eqz p3, :cond_1

    .line 20
    .line 21
    invoke-direct {p0, p1}, Lfa/d0;->b(Landroid/app/Activity;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p1, 0x0

    .line 29
    invoke-interface {p4, p1, p1}, Lfa/d0$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    :goto_0
    new-instance v0, Lfa/d0$a;

    .line 34
    .line 35
    new-instance v1, Lfa/c0;

    .line 36
    .line 37
    invoke-direct {v1, p0, p4}, Lfa/c0;-><init>(Lfa/d0;Lfa/d0$c;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v1}, Lfa/d0$a;-><init>(Lfa/d0$c;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p2, v0}, Lfa/d0$b;->a(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V

    .line 44
    .line 45
    .line 46
    const/4 p2, 0x1

    .line 47
    iput-boolean p2, p0, Lfa/d0;->a:Z

    .line 48
    .line 49
    const-string p2, "android.permission.CAMERA"

    .line 50
    .line 51
    if-eqz p3, :cond_3

    .line 52
    .line 53
    const-string p3, "android.permission.RECORD_AUDIO"

    .line 54
    .line 55
    filled-new-array {p2, p3}, [Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    filled-new-array {p2}, [Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    :goto_1
    const/16 p3, 0x2644

    .line 65
    .line 66
    invoke-static {p1, p2, p3}, Landroidx/core/app/b;->v(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    :goto_2
    return-void
.end method
