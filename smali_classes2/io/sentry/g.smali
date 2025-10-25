.class public final Lio/sentry/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:J

.field final b:D


# direct methods
.method public constructor <init>(JD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lio/sentry/g;->a:J

    .line 5
    .line 6
    iput-wide p3, p0, Lio/sentry/g;->b:D

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/sentry/g;->b:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/sentry/g;->a:J

    .line 2
    .line 3
    return-wide v0
.end method
