.class public final synthetic Lio/sentry/cache/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/sentry/cache/t;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/cache/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/cache/q;->a:Lio/sentry/cache/t;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/cache/q;->a:Lio/sentry/cache/t;

    invoke-static {v0}, Lio/sentry/cache/t;->v(Lio/sentry/cache/t;)V

    return-void
.end method
