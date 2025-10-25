.class public final synthetic Lio/sentry/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/sentry/j0;

.field public final synthetic b:Lio/sentry/x0;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/j0;Lio/sentry/x0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/h0;->a:Lio/sentry/j0;

    iput-object p2, p0, Lio/sentry/h0;->b:Lio/sentry/x0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/h0;->a:Lio/sentry/j0;

    iget-object v1, p0, Lio/sentry/h0;->b:Lio/sentry/x0;

    invoke-static {v0, v1}, Lio/sentry/j0;->h(Lio/sentry/j0;Lio/sentry/x0;)V

    return-void
.end method
