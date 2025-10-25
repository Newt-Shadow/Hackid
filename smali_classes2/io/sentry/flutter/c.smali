.class public final synthetic Lio/sentry/flutter/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/q3$a;


# instance fields
.field public final synthetic a:Lio/sentry/flutter/SentryFlutterPlugin;

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/flutter/SentryFlutterPlugin;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/flutter/c;->a:Lio/sentry/flutter/SentryFlutterPlugin;

    iput-object p2, p0, Lio/sentry/flutter/c;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/s5;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/flutter/c;->a:Lio/sentry/flutter/SentryFlutterPlugin;

    iget-object v1, p0, Lio/sentry/flutter/c;->b:Ljava/util/Map;

    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {v0, v1, p1}, Lio/sentry/flutter/SentryFlutterPlugin;->c(Lio/sentry/flutter/SentryFlutterPlugin;Ljava/util/Map;Lio/sentry/android/core/SentryAndroidOptions;)V

    return-void
.end method
