.class public final synthetic Lio/sentry/cache/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/sentry/cache/t;

.field public final synthetic b:Lio/sentry/protocol/c;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/cache/t;Lio/sentry/protocol/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/cache/n;->a:Lio/sentry/cache/t;

    iput-object p2, p0, Lio/sentry/cache/n;->b:Lio/sentry/protocol/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/cache/n;->a:Lio/sentry/cache/t;

    iget-object v1, p0, Lio/sentry/cache/n;->b:Lio/sentry/protocol/c;

    invoke-static {v0, v1}, Lio/sentry/cache/t;->l(Lio/sentry/cache/t;Lio/sentry/protocol/c;)V

    return-void
.end method
