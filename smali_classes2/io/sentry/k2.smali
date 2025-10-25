.class public final Lio/sentry/k2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/c1;


# static fields
.field private static final a:Lio/sentry/k2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/k2;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/k2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/sentry/k2;->a:Lio/sentry/k2;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lio/sentry/k2;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/k2;->a:Lio/sentry/k2;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public a(Lio/sentry/s5;Lio/sentry/a3;)Lio/sentry/transport/q;
    .locals 0

    .line 1
    invoke-static {}, Lio/sentry/transport/t;->a()Lio/sentry/transport/t;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
