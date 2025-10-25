.class final Lio/sentry/f2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/y0;


# static fields
.field private static final a:Lio/sentry/f2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/f2;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/f2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/sentry/f2;->a:Lio/sentry/f2;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static g()Lio/sentry/f2;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/f2;->a:Lio/sentry/f2;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Lio/sentry/a4;Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Ljava/io/InputStream;)Lio/sentry/a4;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public e(Ljava/io/Reader;Ljava/lang/Class;Lio/sentry/g1;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public f(Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p1, ""

    return-object p1
.end method
