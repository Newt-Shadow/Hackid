.class public abstract Lio/sentry/android/core/x0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/x0$a;
    }
.end annotation


# static fields
.field private static final a:Lio/sentry/android/core/util/a;

.field private static final b:Lio/sentry/util/m;

.field private static final c:Lio/sentry/android/core/util/a;

.field private static final d:Lio/sentry/android/core/util/a;

.field private static final e:Lio/sentry/android/core/util/a;

.field private static final f:Lio/sentry/android/core/util/a;

.field private static final g:Lio/sentry/android/core/util/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/sentry/android/core/util/a;

    .line 2
    .line 3
    new-instance v1, Lio/sentry/android/core/q0;

    .line 4
    .line 5
    invoke-direct {v1}, Lio/sentry/android/core/q0;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lio/sentry/android/core/util/a;-><init>(Lio/sentry/android/core/util/a$a;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lio/sentry/android/core/x0;->a:Lio/sentry/android/core/util/a;

    .line 12
    .line 13
    new-instance v0, Lio/sentry/util/m;

    .line 14
    .line 15
    new-instance v1, Lio/sentry/android/core/r0;

    .line 16
    .line 17
    invoke-direct {v1}, Lio/sentry/android/core/r0;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Lio/sentry/util/m;-><init>(Lio/sentry/util/m$a;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lio/sentry/android/core/x0;->b:Lio/sentry/util/m;

    .line 24
    .line 25
    new-instance v0, Lio/sentry/android/core/util/a;

    .line 26
    .line 27
    new-instance v1, Lio/sentry/android/core/s0;

    .line 28
    .line 29
    invoke-direct {v1}, Lio/sentry/android/core/s0;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Lio/sentry/android/core/util/a;-><init>(Lio/sentry/android/core/util/a$a;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lio/sentry/android/core/x0;->c:Lio/sentry/android/core/util/a;

    .line 36
    .line 37
    new-instance v0, Lio/sentry/android/core/util/a;

    .line 38
    .line 39
    new-instance v1, Lio/sentry/android/core/t0;

    .line 40
    .line 41
    invoke-direct {v1}, Lio/sentry/android/core/t0;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v1}, Lio/sentry/android/core/util/a;-><init>(Lio/sentry/android/core/util/a$a;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lio/sentry/android/core/x0;->d:Lio/sentry/android/core/util/a;

    .line 48
    .line 49
    new-instance v0, Lio/sentry/android/core/util/a;

    .line 50
    .line 51
    new-instance v1, Lio/sentry/android/core/u0;

    .line 52
    .line 53
    invoke-direct {v1}, Lio/sentry/android/core/u0;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, v1}, Lio/sentry/android/core/util/a;-><init>(Lio/sentry/android/core/util/a$a;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lio/sentry/android/core/x0;->e:Lio/sentry/android/core/util/a;

    .line 60
    .line 61
    new-instance v0, Lio/sentry/android/core/util/a;

    .line 62
    .line 63
    new-instance v1, Lio/sentry/android/core/v0;

    .line 64
    .line 65
    invoke-direct {v1}, Lio/sentry/android/core/v0;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, v1}, Lio/sentry/android/core/util/a;-><init>(Lio/sentry/android/core/util/a$a;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lio/sentry/android/core/x0;->f:Lio/sentry/android/core/util/a;

    .line 72
    .line 73
    new-instance v0, Lio/sentry/android/core/util/a;

    .line 74
    .line 75
    new-instance v1, Lio/sentry/android/core/w0;

    .line 76
    .line 77
    invoke-direct {v1}, Lio/sentry/android/core/w0;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, v1}, Lio/sentry/android/core/util/a;-><init>(Lio/sentry/android/core/util/a$a;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lio/sentry/android/core/x0;->g:Lio/sentry/android/core/util/a;

    .line 84
    .line 85
    return-void
.end method

.method private static synthetic A(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-wide/16 v1, 0x80

    .line 10
    .line 11
    invoke-static {v1, v2}, Lgb/k;->a(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, p0, v1}, Lgb/l;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    return-object p0

    .line 20
    :catchall_0
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method private static synthetic B(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/16 v1, 0x80

    .line 10
    .line 11
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method static C(Landroid/content/Context;Lio/sentry/s5;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/android/core/p0;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lio/sentry/android/core/p0;-><init>(Lio/sentry/ILogger;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, p2, p3}, Lio/sentry/android/core/x0;->D(Landroid/content/Context;Lio/sentry/android/core/p0;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method static D(Landroid/content/Context;Lio/sentry/android/core/p0;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lio/sentry/android/core/p0;->d()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/16 v0, 0x21

    .line 6
    .line 7
    if-lt p1, v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x4

    .line 10
    invoke-static {p0, p2, p3, p1}, Lc2/b1;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method static E(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/p0;)Lio/sentry/android/core/x0$a;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p0, p2}, Lio/sentry/android/core/x0;->r(Landroid/content/Context;Lio/sentry/android/core/p0;)Landroid/content/pm/PackageInfo;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    :try_start_1
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    new-instance v1, Lio/sentry/android/core/x0$a;

    .line 21
    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v2, 0x0

    .line 27
    :goto_0
    invoke-direct {v1, v2, p0}, Lio/sentry/android/core/x0$a;-><init>(ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 28
    .line 29
    .line 30
    return-object v1

    .line 31
    :catch_0
    move-object p2, v0

    .line 32
    :catch_1
    sget-object p0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 33
    .line 34
    const-string v1, "%s package isn\'t installed."

    .line 35
    .line 36
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-interface {p1, p0, v1, p2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-object v0
.end method

.method static F(Landroid/content/pm/PackageInfo;Lio/sentry/android/core/p0;Lio/sentry/protocol/a;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lio/sentry/protocol/a;->m(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Lio/sentry/protocol/a;->p(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1}, Lio/sentry/android/core/x0;->s(Landroid/content/pm/PackageInfo;Lio/sentry/android/core/p0;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p2, p1}, Lio/sentry/protocol/a;->l(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 24
    .line 25
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    array-length v1, v0

    .line 30
    if-lez v1, :cond_2

    .line 31
    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    array-length v1, p0

    .line 35
    if-lez v1, :cond_2

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    move v2, v1

    .line 39
    :goto_0
    array-length v3, v0

    .line 40
    if-ge v2, v3, :cond_2

    .line 41
    .line 42
    aget-object v3, v0, v2

    .line 43
    .line 44
    const/16 v4, 0x2e

    .line 45
    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    const/4 v5, 0x1

    .line 51
    add-int/2addr v4, v5

    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    aget v4, p0, v2

    .line 57
    .line 58
    const/4 v6, 0x2

    .line 59
    and-int/2addr v4, v6

    .line 60
    if-ne v4, v6, :cond_0

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_0
    move v5, v1

    .line 64
    :goto_1
    if-eqz v5, :cond_1

    .line 65
    .line 66
    const-string v4, "granted"

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_1
    const-string v4, "not_granted"

    .line 70
    .line 71
    :goto_2
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    add-int/lit8 v2, v2, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p2, p1}, Lio/sentry/protocol/a;->r(Ljava/util/Map;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/android/core/x0;->A(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/android/core/x0;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/android/core/x0;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/android/core/x0;->x(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/android/core/x0;->B(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/android/core/x0;->y(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g()Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/android/core/x0;->w()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static h(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    return-object p0
.end method

.method static i(Landroid/content/Context;Lio/sentry/android/core/p0;)Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lio/sentry/android/core/p0;->d()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/16 v0, 0x21

    .line 6
    .line 7
    if-lt p1, v0, :cond_0

    .line 8
    .line 9
    sget-object p1, Lio/sentry/android/core/x0;->f:Lio/sentry/android/core/util/a;

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Lio/sentry/android/core/util/a;->a(Landroid/content/Context;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/content/pm/ApplicationInfo;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    sget-object p1, Lio/sentry/android/core/x0;->g:Lio/sentry/android/core/util/a;

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Lio/sentry/android/core/util/a;->a(Landroid/content/Context;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Landroid/content/pm/ApplicationInfo;

    .line 25
    .line 26
    return-object p0
.end method

.method static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/android/core/x0;->e:Lio/sentry/android/core/util/a;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lio/sentry/android/core/util/a;->a(Landroid/content/Context;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    return-object p0
.end method

.method static k(Lio/sentry/android/core/p0;)[Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/android/core/p0;->d()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 v0, 0x15

    .line 6
    .line 7
    if-lt p0, v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object p0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 13
    .line 14
    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    .line 15
    .line 16
    filled-new-array {p0, v0}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    return-object p0
.end method

.method static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/android/core/x0;->a:Lio/sentry/android/core/util/a;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lio/sentry/android/core/util/a;->a(Landroid/content/Context;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    return-object p0
.end method

.method static m(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/util/DisplayMetrics;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    return-object p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    sget-object v0, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 12
    .line 13
    const-string v1, "Error getting DisplayMetrics."

    .line 14
    .line 15
    invoke-interface {p1, v0, v1, p0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method static n(Lio/sentry/ILogger;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, " "

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    aget-object p0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 16
    .line 17
    const-string v2, "Error getting device family."

    .line 18
    .line 19
    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method static o(Lio/sentry/ILogger;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "os.version"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/io/File;

    .line 8
    .line 9
    const-string v2, "/proc/version"

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    .line 22
    .line 23
    new-instance v3, Ljava/io/FileReader;

    .line 24
    .line 25
    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 36
    .line 37
    .line 38
    return-object v1

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_1
    move-exception v2

    .line 45
    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 49
    :catch_0
    move-exception v1

    .line 50
    sget-object v2, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 51
    .line 52
    const-string v3, "Exception while attempting to read kernel information"

    .line 53
    .line 54
    invoke-interface {p0, v2, v3, v1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    return-object v0
.end method

.method static p(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/app/ActivityManager$MemoryInfo;
    .locals 3

    .line 1
    const-string v0, "Error getting MemoryInfo."

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string v2, "activity"

    .line 5
    .line 6
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/app/ActivityManager;

    .line 11
    .line 12
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    .line 13
    .line 14
    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 15
    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 20
    .line 21
    .line 22
    return-object v2

    .line 23
    :cond_0
    sget-object p0, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    new-array v2, v2, [Ljava/lang/Object;

    .line 27
    .line 28
    invoke-interface {p1, p0, v0, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    sget-object v2, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 34
    .line 35
    invoke-interface {p1, v2, v0, p0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    return-object v1
.end method

.method static q(Landroid/content/Context;ILio/sentry/ILogger;Lio/sentry/android/core/p0;)Landroid/content/pm/PackageInfo;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p3}, Lio/sentry/android/core/p0;->d()I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const/16 v0, 0x21

    .line 6
    .line 7
    if-lt p3, v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    int-to-long v0, p1

    .line 18
    invoke-static {v0, v1}, Le2/s;->a(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p3, p0, p1}, Le2/t;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p3, p0, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 36
    .line 37
    .line 38
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    return-object p0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    sget-object p1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 42
    .line 43
    const-string p3, "Error getting package info."

    .line 44
    .line 45
    invoke-interface {p2, p1, p3, p0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x0

    .line 49
    return-object p0
.end method

.method static r(Landroid/content/Context;Lio/sentry/android/core/p0;)Landroid/content/pm/PackageInfo;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lio/sentry/android/core/p0;->d()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/16 v0, 0x21

    .line 6
    .line 7
    if-lt p1, v0, :cond_0

    .line 8
    .line 9
    sget-object p1, Lio/sentry/android/core/x0;->c:Lio/sentry/android/core/util/a;

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Lio/sentry/android/core/util/a;->a(Landroid/content/Context;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/content/pm/PackageInfo;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    sget-object p1, Lio/sentry/android/core/x0;->d:Lio/sentry/android/core/util/a;

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Lio/sentry/android/core/util/a;->a(Landroid/content/Context;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Landroid/content/pm/PackageInfo;

    .line 25
    .line 26
    return-object p0
.end method

.method static s(Landroid/content/pm/PackageInfo;Lio/sentry/android/core/p0;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lio/sentry/android/core/p0;->d()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/16 v0, 0x1c

    .line 6
    .line 7
    if-lt p1, v0, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, Lq7/a;->a(Landroid/content/pm/PackageInfo;)J

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    invoke-static {p0}, Lio/sentry/android/core/x0;->t(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method private static t(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static u()Z
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/android/core/x0;->b:Lio/sentry/util/m;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/util/m;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private static synthetic v(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "device_name"

    .line 6
    .line 7
    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static synthetic w()Ljava/lang/Boolean;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 7
    .line 8
    .line 9
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 10
    .line 11
    const/16 v1, 0x64

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    return-object v0

    .line 23
    :catchall_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 24
    .line 25
    return-object v0
.end method

.method private static synthetic x(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    invoke-static {v1, v2}, Le2/s;->a(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, p0, v1}, Le2/t;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    return-object p0

    .line 20
    :catchall_0
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method private static synthetic y(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    return-object p0

    .line 15
    :catchall_0
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method private static synthetic z(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    return-object p0

    .line 36
    :catchall_0
    const/4 p0, 0x0

    .line 37
    return-object p0
.end method
