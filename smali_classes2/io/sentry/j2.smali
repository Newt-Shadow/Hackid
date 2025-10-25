.class public final Lio/sentry/j2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/b1;


# static fields
.field private static final a:Lio/sentry/j2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/j2;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/j2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/sentry/j2;->a:Lio/sentry/j2;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lio/sentry/j2;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/j2;->a:Lio/sentry/j2;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public a(Lio/sentry/a1;Ljava/util/List;Lio/sentry/s5;)Lio/sentry/u2;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lio/sentry/a1;)V
    .locals 0

    .line 1
    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public isRunning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public start()V
    .locals 0

    return-void
.end method
