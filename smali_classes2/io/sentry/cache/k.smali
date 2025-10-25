.class public final synthetic Lio/sentry/cache/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/sentry/cache/t;

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/cache/t;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/cache/k;->a:Lio/sentry/cache/t;

    iput-object p2, p0, Lio/sentry/cache/k;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/cache/k;->a:Lio/sentry/cache/t;

    iget-object v1, p0, Lio/sentry/cache/k;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lio/sentry/cache/t;->s(Lio/sentry/cache/t;Ljava/util/Map;)V

    return-void
.end method
