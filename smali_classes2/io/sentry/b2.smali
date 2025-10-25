.class public final Lio/sentry/b2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/y2;


# static fields
.field private static final a:Lio/sentry/b2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/b2;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/b2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/sentry/b2;->a:Lio/sentry/b2;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lio/sentry/b2;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/b2;->a:Lio/sentry/b2;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    return-void
.end method

.method public h()Lio/sentry/x2;
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/a2;->a()Lio/sentry/a2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method
