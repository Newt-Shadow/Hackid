.class public Lio/sentry/o6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/sentry/o6;->a:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lio/sentry/o6;->b:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lio/sentry/o6;->c:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/o6;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/o6;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/o6;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public d(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/o6;->b:Z

    .line 2
    .line 3
    return-void
.end method
