.class public final Lio/sentry/rrweb/e$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/g1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/rrweb/e$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lio/sentry/l2;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/sentry/rrweb/e$b$a;->b(Lio/sentry/l2;Lio/sentry/ILogger;)Lio/sentry/rrweb/e$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(Lio/sentry/l2;Lio/sentry/ILogger;)Lio/sentry/rrweb/e$b;
    .locals 0

    .line 1
    invoke-static {}, Lio/sentry/rrweb/e$b;->values()[Lio/sentry/rrweb/e$b;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p1}, Lio/sentry/l2;->j0()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    aget-object p1, p2, p1

    .line 10
    .line 11
    return-object p1
.end method
