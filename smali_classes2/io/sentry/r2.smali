.class public final Lio/sentry/r2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lio/sentry/u1;

.field private b:Lio/sentry/g;


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
    iput-object v0, p0, Lio/sentry/r2;->a:Lio/sentry/u1;

    .line 6
    .line 7
    iput-object v0, p0, Lio/sentry/r2;->b:Lio/sentry/g;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public a(Lio/sentry/g;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/sentry/r2;->b:Lio/sentry/g;

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public b(Lio/sentry/u1;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/sentry/r2;->a:Lio/sentry/u1;

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public c()Lio/sentry/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/r2;->b:Lio/sentry/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Lio/sentry/u1;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/r2;->a:Lio/sentry/u1;

    .line 2
    .line 3
    return-object v0
.end method
