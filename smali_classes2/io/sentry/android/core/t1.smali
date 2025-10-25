.class final Lio/sentry/android/core/t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/android/core/f1;


# static fields
.field private static final a:Lio/sentry/android/core/t1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/android/core/t1;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/android/core/t1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/sentry/android/core/t1;->a:Lio/sentry/android/core/t1;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lio/sentry/android/core/t1;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/android/core/t1;->a:Lio/sentry/android/core/t1;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Ljava/util/List;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method
