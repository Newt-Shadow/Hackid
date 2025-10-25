.class public Lic/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# instance fields
.field private a:Lio/flutter/plugin/common/MethodChannel;

.field private b:Landroid/content/Context;

.field private c:Landroid/app/Activity;

.field private d:Lcom/google/android/play/core/review/ReviewInfo;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "InAppReviewPlugin"

    .line 5
    .line 6
    iput-object v0, p0, Lic/d;->e:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lio/flutter/plugin/common/MethodChannel$Result;Lm6/Task;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lic/d;->i(Lio/flutter/plugin/common/MethodChannel$Result;Lm6/Task;)V

    return-void
.end method

.method public static synthetic b(Lic/d;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/google/android/play/core/review/ReviewManager;Lm6/Task;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lic/d;->j(Lio/flutter/plugin/common/MethodChannel$Result;Lcom/google/android/play/core/review/ReviewManager;Lm6/Task;)V

    return-void
.end method

.method public static synthetic c(Lic/d;Lio/flutter/plugin/common/MethodChannel$Result;Lm6/Task;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lic/d;->h(Lio/flutter/plugin/common/MethodChannel$Result;Lm6/Task;)V

    return-void
.end method

.method private d(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    const-string v0, "cacheReviewInfo: called"

    .line 2
    .line 3
    const-string v1, "InAppReviewPlugin"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lic/d;->m(Lio/flutter/plugin/common/MethodChannel$Result;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lic/d;->b:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/google/android/play/core/review/ReviewManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/review/ReviewManager;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Lcom/google/android/play/core/review/ReviewManager;->requestReviewFlow()Lm6/Task;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v2, "cacheReviewInfo: Requesting review flow"

    .line 26
    .line 27
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    new-instance v1, Lic/b;

    .line 31
    .line 32
    invoke-direct {v1, p0, p1}, Lic/b;-><init>(Lic/d;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lm6/Task;->c(Lm6/f;)Lm6/Task;

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private e(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 5

    .line 1
    const-string v0, "isAvailable: called"

    .line 2
    .line 3
    const-string v1, "InAppReviewPlugin"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lic/d;->l()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-direct {p0}, Lic/d;->g()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x1

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-direct {p0}, Lic/d;->f()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    move v0, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v4, "isAvailable: playStoreAndPlayServicesAvailable: "

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v4, "isAvailable: lollipopOrLater: "

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    const-string v0, "isAvailable: Play Store, Play Services and Android version requirements met"

    .line 79
    .line 80
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, p1}, Lic/d;->d(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    const-string v0, "isAvailable: The Play Store must be installed, Play Services must be available and Android 5 or later must be used"

    .line 88
    .line 89
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 93
    .line 94
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :goto_1
    return-void
.end method

.method private f()Z
    .locals 2

    .line 1
    invoke-static {}, Ll5/f;->m()Ll5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lic/d;->b:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ll5/f;->g(Landroid/content/Context;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "InAppReviewPlugin"

    .line 14
    .line 15
    const-string v1, "Google Play Services not available"

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    return v0

    .line 22
    :cond_0
    const/4 v0, 0x1

    .line 23
    return v0
.end method

.method private g()Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    .line 4
    const/16 v2, 0x21

    .line 5
    .line 6
    const-string v3, "com.android.vending"

    .line 7
    .line 8
    if-lt v1, v2, :cond_0

    .line 9
    .line 10
    :try_start_1
    iget-object v1, p0, Lic/d;->b:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    invoke-static {v4, v5}, Le2/s;->a(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v1, v3, v2}, Le2/t;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v1, p0, Lic/d;->b:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 33
    .line 34
    .line 35
    :goto_0
    const/4 v0, 0x1

    .line 36
    return v0

    .line 37
    :catch_0
    const-string v1, "InAppReviewPlugin"

    .line 38
    .line 39
    const-string v2, "Play Store not installed."

    .line 40
    .line 41
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return v0
.end method

.method private synthetic h(Lio/flutter/plugin/common/MethodChannel$Result;Lm6/Task;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lm6/Task;->p()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "InAppReviewPlugin"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "onComplete: Successfully requested review flow"

    .line 10
    .line 11
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Lm6/Task;->l()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    check-cast p2, Lcom/google/android/play/core/review/ReviewInfo;

    .line 19
    .line 20
    iput-object p2, p0, Lic/d;->d:Lcom/google/android/play/core/review/ReviewInfo;

    .line 21
    .line 22
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-interface {p1, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string p2, "onComplete: Unsuccessfully requested review flow"

    .line 29
    .line 30
    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-interface {p1, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method private static synthetic i(Lio/flutter/plugin/common/MethodChannel$Result;Lm6/Task;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private synthetic j(Lio/flutter/plugin/common/MethodChannel$Result;Lcom/google/android/play/core/review/ReviewManager;Lm6/Task;)V
    .locals 2

    .line 1
    invoke-virtual {p3}, Lm6/Task;->p()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "InAppReviewPlugin"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "onComplete: Successfully requested review flow"

    .line 10
    .line 11
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3}, Lm6/Task;->l()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    check-cast p3, Lcom/google/android/play/core/review/ReviewInfo;

    .line 19
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lic/d;->k(Lio/flutter/plugin/common/MethodChannel$Result;Lcom/google/android/play/core/review/ReviewManager;Lcom/google/android/play/core/review/ReviewInfo;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string p2, "onComplete: Unsuccessfully requested review flow"

    .line 25
    .line 26
    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const-string p2, "In-App Review API unavailable"

    .line 30
    .line 31
    const/4 p3, 0x0

    .line 32
    const-string v0, "error"

    .line 33
    .line 34
    invoke-interface {p1, v0, p2, p3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method private k(Lio/flutter/plugin/common/MethodChannel$Result;Lcom/google/android/play/core/review/ReviewManager;Lcom/google/android/play/core/review/ReviewInfo;)V
    .locals 2

    .line 1
    const-string v0, "InAppReviewPlugin"

    .line 2
    .line 3
    const-string v1, "launchReviewFlow: called"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lic/d;->m(Lio/flutter/plugin/common/MethodChannel$Result;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lic/d;->c:Landroid/app/Activity;

    .line 16
    .line 17
    invoke-interface {p2, v0, p3}, Lcom/google/android/play/core/review/ReviewManager;->launchReviewFlow(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;)Lm6/Task;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    new-instance p3, Lic/c;

    .line 22
    .line 23
    invoke-direct {p3, p1}, Lic/c;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p3}, Lm6/Task;->c(Lm6/f;)Lm6/Task;

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private l()Z
    .locals 3

    .line 1
    const-string v0, "noContextOrActivity: called"

    .line 2
    .line 3
    const-string v1, "InAppReviewPlugin"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lic/d;->b:Landroid/content/Context;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, "noContextOrActivity: Android context not available"

    .line 14
    .line 15
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return v2

    .line 19
    :cond_0
    iget-object v0, p0, Lic/d;->c:Landroid/app/Activity;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const-string v0, "noContextOrActivity: Android activity not available"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return v2

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    return v0
.end method

.method private m(Lio/flutter/plugin/common/MethodChannel$Result;)Z
    .locals 5

    .line 1
    const-string v0, "noContextOrActivity: called"

    .line 2
    .line 3
    const-string v1, "InAppReviewPlugin"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lic/d;->b:Landroid/content/Context;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    const-string v4, "error"

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string v0, "noContextOrActivity: Android context not available"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    const-string v0, "Android context not available"

    .line 22
    .line 23
    invoke-interface {p1, v4, v0, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return v2

    .line 27
    :cond_0
    iget-object v0, p0, Lic/d;->c:Landroid/app/Activity;

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    const-string v0, "noContextOrActivity: Android activity not available"

    .line 32
    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    const-string v0, "Android activity not available"

    .line 37
    .line 38
    invoke-interface {p1, v4, v0, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return v2

    .line 42
    :cond_1
    const/4 p1, 0x0

    .line 43
    return p1
.end method

.method private n(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    .line 1
    const-string v0, "InAppReviewPlugin"

    .line 2
    .line 3
    const-string v1, "openStoreListing: called"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lic/d;->m(Lio/flutter/plugin/common/MethodChannel$Result;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lic/d;->b:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Landroid/content/Intent;

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v3, "https://play.google.com/store/apps/details?id="

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v2, "android.intent.action.VIEW"

    .line 45
    .line 46
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lic/d;->c:Landroid/app/Activity;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method private o(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    .line 1
    const-string v0, "requestReview: called"

    .line 2
    .line 3
    const-string v1, "InAppReviewPlugin"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lic/d;->m(Lio/flutter/plugin/common/MethodChannel$Result;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lic/d;->b:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/google/android/play/core/review/ReviewManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/review/ReviewManager;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v2, p0, Lic/d;->d:Lcom/google/android/play/core/review/ReviewInfo;

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-direct {p0, p1, v0, v2}, Lic/d;->k(Lio/flutter/plugin/common/MethodChannel$Result;Lcom/google/android/play/core/review/ReviewManager;Lcom/google/android/play/core/review/ReviewInfo;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-interface {v0}, Lcom/google/android/play/core/review/ReviewManager;->requestReviewFlow()Lm6/Task;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "requestReview: Requesting review flow"

    .line 34
    .line 35
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    new-instance v1, Lic/a;

    .line 39
    .line 40
    invoke-direct {v1, p0, p1, v0}, Lic/a;-><init>(Lic/d;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/google/android/play/core/review/ReviewManager;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v1}, Lm6/Task;->c(Lm6/f;)Lm6/Task;

    .line 44
    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lic/d;->c:Landroid/app/Activity;

    .line 6
    .line 7
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 3

    .line 1
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "dev.britannio.in_app_review"

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lic/d;->a:Lio/flutter/plugin/common/MethodChannel;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lic/d;->b:Landroid/content/Context;

    .line 22
    .line 23
    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lic/d;->c:Landroid/app/Activity;

    .line 3
    .line 4
    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lic/d;->onDetachedFromActivity()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lic/d;->a:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 5
    .line 6
    .line 7
    iput-object v0, p0, Lic/d;->b:Landroid/content/Context;

    .line 8
    .line 9
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onMethodCall: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "InAppReviewPlugin"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v1, -0x1

    .line 35
    sparse-switch v0, :sswitch_data_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :sswitch_0
    const-string v0, "requestReview"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v1, 0x2

    .line 49
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v0, "isAvailable"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 v1, 0x1

    .line 60
    goto :goto_0

    .line 61
    :sswitch_2
    const-string v0, "openStoreListing"

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    const/4 v1, 0x0

    .line 71
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 72
    .line 73
    .line 74
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :pswitch_0
    invoke-direct {p0, p2}, Lic/d;->o(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :pswitch_1
    invoke-direct {p0, p2}, Lic/d;->e(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :pswitch_2
    invoke-direct {p0, p2}, Lic/d;->n(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 87
    .line 88
    .line 89
    :goto_1
    return-void

    .line 90
    nop

    .line 91
    :sswitch_data_0
    .sparse-switch
        0x97e25cd -> :sswitch_2
        0x1a7eccbf -> :sswitch_1
        0x51206ec7 -> :sswitch_0
    .end sparse-switch

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lic/d;->onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
