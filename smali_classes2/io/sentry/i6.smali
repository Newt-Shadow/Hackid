.class public final synthetic Lio/sentry/i6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/sentry/ShutdownHookIntegration;

.field public final synthetic b:Lio/sentry/s5;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/ShutdownHookIntegration;Lio/sentry/s5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/i6;->a:Lio/sentry/ShutdownHookIntegration;

    iput-object p2, p0, Lio/sentry/i6;->b:Lio/sentry/s5;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/i6;->a:Lio/sentry/ShutdownHookIntegration;

    iget-object v1, p0, Lio/sentry/i6;->b:Lio/sentry/s5;

    invoke-static {v0, v1}, Lio/sentry/ShutdownHookIntegration;->b(Lio/sentry/ShutdownHookIntegration;Lio/sentry/s5;)V

    return-void
.end method
