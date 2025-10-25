.class public final Lio/sentry/android/core/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lio/sentry/android/core/o0;


# instance fields
.field private a:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/android/core/o0;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/android/core/o0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/sentry/android/core/o0;->b:Lio/sentry/android/core/o0;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/sentry/android/core/o0;->a:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-void
.end method

.method public static a()Lio/sentry/android/core/o0;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/android/core/o0;->b:Lio/sentry/android/core/o0;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/o0;->a:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method declared-synchronized c(Z)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iput-object p1, p0, Lio/sentry/android/core/o0;->a:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0

    .line 12
    throw p1
.end method
