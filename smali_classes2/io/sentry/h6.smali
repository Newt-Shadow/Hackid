.class public final synthetic Lio/sentry/h6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/sentry/o0;

.field public final synthetic b:Lio/sentry/s5;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/o0;Lio/sentry/s5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/h6;->a:Lio/sentry/o0;

    iput-object p2, p0, Lio/sentry/h6;->b:Lio/sentry/s5;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/h6;->a:Lio/sentry/o0;

    iget-object v1, p0, Lio/sentry/h6;->b:Lio/sentry/s5;

    invoke-static {v0, v1}, Lio/sentry/ShutdownHookIntegration;->a(Lio/sentry/o0;Lio/sentry/s5;)V

    return-void
.end method
