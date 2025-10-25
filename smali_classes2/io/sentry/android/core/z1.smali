.class public final Lio/sentry/android/core/z1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/z3;


# instance fields
.field private a:Lio/sentry/z3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/n5;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/sentry/n5;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/sentry/android/core/z1;->a:Lio/sentry/z3;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a()Lio/sentry/y3;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/z1;->a:Lio/sentry/z3;

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
