.class public final Lio/sentry/x1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/m0;


# static fields
.field private static final a:Lio/sentry/x1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/x1;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/x1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/sentry/x1;->a:Lio/sentry/x1;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lio/sentry/x1;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/x1;->a:Lio/sentry/x1;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lio/sentry/a4;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method
