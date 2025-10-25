.class public final synthetic Lio/sentry/flutter/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/s5$e;


# instance fields
.field public final synthetic a:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/flutter/a;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/t5;Lio/sentry/c0;)Lio/sentry/t5;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/flutter/a;->a:Ljava/util/Map;

    invoke-static {v0, p1, p2}, Lio/sentry/flutter/SentryFlutter;->a(Ljava/util/Map;Lio/sentry/t5;Lio/sentry/c0;)Lio/sentry/t5;

    move-result-object p1

    return-object p1
.end method
