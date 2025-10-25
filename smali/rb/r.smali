.class public final Lrb/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lrb/q;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lrb/r;->a:Landroid/app/Activity;

    .line 3
    .line 4
    iput-object v0, p0, Lrb/r;->b:Lrb/q;

    .line 5
    .line 6
    return-void
.end method

.method private final c(Landroid/content/Context;Ljava/lang/String;)Lqb/j;
    .locals 2

    .line 1
    const-string v0, "com.pravera.flutter_foreground_task.prefs.NOTIFICATION_PERMISSION_STATUS"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    invoke-static {p1}, Lqb/j;->valueOf(Ljava/lang/String;)Lqb/j;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method private final d(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method private final f(Landroid/content/Context;Ljava/lang/String;Lqb/j;)V
    .locals 2

    .line 1
    const-string v0, "com.pravera.flutter_foreground_task.prefs.NOTIFICATION_PERMISSION_STATUS"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)Lqb/j;
    .locals 3

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x21

    .line 9
    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    sget-object p1, Lqb/j;->a:Lqb/j;

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_0
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 16
    .line 17
    invoke-direct {p0, p1, v0}, Lrb/r;->d(Landroid/content/Context;Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    sget-object p1, Lqb/j;->a:Lqb/j;

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_1
    invoke-direct {p0, p1, v0}, Lrb/r;->c(Landroid/content/Context;Ljava/lang/String;)Lqb/j;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    sget-object v2, Lqb/j;->c:Lqb/j;

    .line 33
    .line 34
    if-ne v1, v2, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    return-object v2

    .line 43
    :cond_2
    sget-object p1, Lqb/j;->b:Lqb/j;

    .line 44
    .line 45
    return-object p1
.end method

.method public final e(Landroid/app/Activity;Lrb/q;)V
    .locals 2

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v1, 0x21

    .line 14
    .line 15
    if-ge v0, v1, :cond_0

    .line 16
    .line 17
    sget-object p1, Lqb/j;->a:Lqb/j;

    .line 18
    .line 19
    invoke-interface {p2, p1}, Lrb/q;->b(Lqb/j;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iput-object p1, p0, Lrb/r;->a:Landroid/app/Activity;

    .line 24
    .line 25
    iput-object p2, p0, Lrb/r;->b:Lrb/q;

    .line 26
    .line 27
    const-string p2, "android.permission.POST_NOTIFICATIONS"

    .line 28
    .line 29
    filled-new-array {p2}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const/16 v0, 0x64

    .line 34
    .line 35
    invoke-static {p1, p2, v0}, Landroidx/core/app/b;->v(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 4

    .line 1
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "grantResults"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    array-length v0, p3

    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    move v0, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v2

    .line 19
    :goto_0
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object p1, p0, Lrb/r;->b:Lrb/q;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    new-instance p2, Lpb/c;

    .line 26
    .line 27
    invoke-direct {p2}, Lpb/c;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, p2}, Lrb/q;->a(Ljava/lang/Exception;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-direct {p0}, Lrb/r;->b()V

    .line 34
    .line 35
    .line 36
    return v2

    .line 37
    :cond_2
    sget-object v0, Lqb/j;->b:Lqb/j;

    .line 38
    .line 39
    const/16 v3, 0x64

    .line 40
    .line 41
    if-ne p1, v3, :cond_8

    .line 42
    .line 43
    const-string p1, "android.permission.POST_NOTIFICATIONS"

    .line 44
    .line 45
    invoke-static {p2, p1}, Lyc/g;->B([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-ltz p2, :cond_3

    .line 50
    .line 51
    aget p2, p3, p2

    .line 52
    .line 53
    if-nez p2, :cond_3

    .line 54
    .line 55
    sget-object v0, Lqb/j;->a:Lqb/j;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    iget-object p2, p0, Lrb/r;->a:Landroid/app/Activity;

    .line 59
    .line 60
    if-eqz p2, :cond_4

    .line 61
    .line 62
    invoke-virtual {p2, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-nez p2, :cond_4

    .line 67
    .line 68
    move v2, v1

    .line 69
    :cond_4
    if-eqz v2, :cond_5

    .line 70
    .line 71
    sget-object v0, Lqb/j;->c:Lqb/j;

    .line 72
    .line 73
    :cond_5
    :goto_1
    iget-object p2, p0, Lrb/r;->a:Landroid/app/Activity;

    .line 74
    .line 75
    if-eqz p2, :cond_6

    .line 76
    .line 77
    invoke-direct {p0, p2, p1, v0}, Lrb/r;->f(Landroid/content/Context;Ljava/lang/String;Lqb/j;)V

    .line 78
    .line 79
    .line 80
    :cond_6
    iget-object p1, p0, Lrb/r;->b:Lrb/q;

    .line 81
    .line 82
    if-eqz p1, :cond_7

    .line 83
    .line 84
    invoke-interface {p1, v0}, Lrb/q;->b(Lqb/j;)V

    .line 85
    .line 86
    .line 87
    :cond_7
    invoke-direct {p0}, Lrb/r;->b()V

    .line 88
    .line 89
    .line 90
    return v1

    .line 91
    :cond_8
    return v2
.end method
