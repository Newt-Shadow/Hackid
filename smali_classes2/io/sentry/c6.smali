.class public final synthetic Lio/sentry/c6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/d3$c;


# instance fields
.field public final synthetic a:Lio/sentry/d6;

.field public final synthetic b:Lio/sentry/u0;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/d6;Lio/sentry/u0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/c6;->a:Lio/sentry/d6;

    iput-object p2, p0, Lio/sentry/c6;->b:Lio/sentry/u0;

    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/a1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/c6;->a:Lio/sentry/d6;

    iget-object v1, p0, Lio/sentry/c6;->b:Lio/sentry/u0;

    invoke-static {v0, v1, p1}, Lio/sentry/d6;->x(Lio/sentry/d6;Lio/sentry/u0;Lio/sentry/a1;)V

    return-void
.end method
