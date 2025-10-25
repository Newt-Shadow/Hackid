.class public abstract Lio/sentry/android/core/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lio/sentry/z3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/android/core/z1;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/android/core/z1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/sentry/android/core/t;->a:Lio/sentry/z3;

    .line 7
    .line 8
    return-void
.end method

.method public static a()Lio/sentry/y3;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/android/core/t;->a:Lio/sentry/z3;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/sentry/z3;->a()Lio/sentry/y3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
