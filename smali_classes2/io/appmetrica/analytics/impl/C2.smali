.class public final Lio/appmetrica/analytics/impl/C2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation

.annotation build Lio/appmetrica/analytics/coreapi/internal/annotations/DoNotInline;
.end annotation


# static fields
.field public static final a:Lio/appmetrica/analytics/impl/C2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/C2;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/C2;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/impl/C2;->a:Lio/appmetrica/analytics/impl/C2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final a(Lio/appmetrica/analytics/impl/e2;Landroid/app/usage/UsageStatsManager;)Lio/appmetrica/analytics/impl/E2;
    .locals 1

    .line 6
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/bp;->a(Landroid/app/usage/UsageStatsManager;)I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0x1c

    .line 7
    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/AndroidUtils;->isApiAchieved(I)Z

    move-result p0

    if-eqz p0, :cond_6

    const/16 p0, 0x1e

    .line 8
    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/AndroidUtils;->isApiAchieved(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_0

    .line 9
    sget-object p0, Lio/appmetrica/analytics/impl/E2;->f:Lio/appmetrica/analytics/impl/E2;

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 10
    sget-object p0, Lio/appmetrica/analytics/impl/E2;->a:Lio/appmetrica/analytics/impl/E2;

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 11
    sget-object p0, Lio/appmetrica/analytics/impl/E2;->b:Lio/appmetrica/analytics/impl/E2;

    goto :goto_0

    :cond_2
    if-ne p1, p0, :cond_3

    .line 12
    sget-object p0, Lio/appmetrica/analytics/impl/E2;->d:Lio/appmetrica/analytics/impl/E2;

    goto :goto_0

    :cond_3
    const/16 p0, 0x14

    if-ne p1, p0, :cond_4

    .line 13
    sget-object p0, Lio/appmetrica/analytics/impl/E2;->c:Lio/appmetrica/analytics/impl/E2;

    goto :goto_0

    :cond_4
    const/16 p0, 0x28

    if-ne p1, p0, :cond_5

    .line 14
    sget-object p0, Lio/appmetrica/analytics/impl/E2;->e:Lio/appmetrica/analytics/impl/E2;

    goto :goto_0

    .line 15
    :cond_5
    sget-object p0, Lio/appmetrica/analytics/impl/E2;->g:Lio/appmetrica/analytics/impl/E2;

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final a(Landroid/content/Context;Lio/appmetrica/analytics/impl/e2;)Lio/appmetrica/analytics/impl/F2;
    .locals 5

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/F2;

    .line 2
    new-instance v1, Lio/appmetrica/analytics/impl/ro;

    invoke-direct {v1, p1}, Lio/appmetrica/analytics/impl/ro;-><init>(Lio/appmetrica/analytics/impl/e2;)V

    const-string p1, "getting app standby bucket"

    const-string v2, "usageStatsManager"

    const-string v3, "usagestats"

    invoke-static {p0, v3, p1, v2, v1}, Lio/appmetrica/analytics/coreutils/internal/system/SystemServiceUtils;->accessSystemServiceByNameSafely(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/backport/FunctionWithThrowable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/impl/E2;

    .line 3
    new-instance v1, Lio/appmetrica/analytics/impl/so;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/so;-><init>()V

    const-string v2, "getting is background restricted"

    const-string v3, "activityManager"

    const-string v4, "activity"

    .line 4
    invoke-static {p0, v4, v2, v3, v1}, Lio/appmetrica/analytics/coreutils/internal/system/SystemServiceUtils;->accessSystemServiceByNameSafely(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/backport/FunctionWithThrowable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 5
    invoke-direct {v0, p1, p0}, Lio/appmetrica/analytics/impl/F2;-><init>(Lio/appmetrica/analytics/impl/E2;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method private static final a(Landroid/app/ActivityManager;)Ljava/lang/Boolean;
    .locals 0

    .line 16
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/cp;->a(Landroid/app/ActivityManager;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lio/appmetrica/analytics/impl/e2;Landroid/app/usage/UsageStatsManager;)Lio/appmetrica/analytics/impl/E2;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/appmetrica/analytics/impl/C2;->a(Lio/appmetrica/analytics/impl/e2;Landroid/app/usage/UsageStatsManager;)Lio/appmetrica/analytics/impl/E2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroid/app/ActivityManager;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/appmetrica/analytics/impl/C2;->a(Landroid/app/ActivityManager;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
