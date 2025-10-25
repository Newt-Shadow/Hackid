.class public final synthetic Lio/sentry/cache/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/sentry/cache/t;

.field public final synthetic b:Lio/sentry/l6;

.field public final synthetic c:Lio/sentry/u0;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/cache/t;Lio/sentry/l6;Lio/sentry/u0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/cache/r;->a:Lio/sentry/cache/t;

    iput-object p2, p0, Lio/sentry/cache/r;->b:Lio/sentry/l6;

    iput-object p3, p0, Lio/sentry/cache/r;->c:Lio/sentry/u0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/cache/r;->a:Lio/sentry/cache/t;

    iget-object v1, p0, Lio/sentry/cache/r;->b:Lio/sentry/l6;

    iget-object v2, p0, Lio/sentry/cache/r;->c:Lio/sentry/u0;

    invoke-static {v0, v1, v2}, Lio/sentry/cache/t;->m(Lio/sentry/cache/t;Lio/sentry/l6;Lio/sentry/u0;)V

    return-void
.end method
