.class public final Lio/appmetrica/analytics/coreutils/internal/services/ContextPermissionChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lio/appmetrica/analytics/coreutils/internal/services/ContextPermissionChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/services/ContextPermissionChecker;

    invoke-direct {v0}, Lio/appmetrica/analytics/coreutils/internal/services/ContextPermissionChecker;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/coreutils/internal/services/ContextPermissionChecker;->INSTANCE:Lio/appmetrica/analytics/coreutils/internal/services/ContextPermissionChecker;

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

.method public static final hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method
