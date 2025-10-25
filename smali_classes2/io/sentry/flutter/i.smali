.class public final synthetic Lio/sentry/flutter/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/sentry/flutter/SentryFlutterReplayRecorder;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lio/sentry/android/replay/u;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/flutter/SentryFlutterReplayRecorder;Ljava/lang/String;Lio/sentry/android/replay/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/flutter/i;->a:Lio/sentry/flutter/SentryFlutterReplayRecorder;

    iput-object p2, p0, Lio/sentry/flutter/i;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/sentry/flutter/i;->c:Lio/sentry/android/replay/u;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/flutter/i;->a:Lio/sentry/flutter/SentryFlutterReplayRecorder;

    iget-object v1, p0, Lio/sentry/flutter/i;->b:Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/flutter/i;->c:Lio/sentry/android/replay/u;

    invoke-static {v0, v1, v2}, Lio/sentry/flutter/SentryFlutterReplayRecorder;->e(Lio/sentry/flutter/SentryFlutterReplayRecorder;Ljava/lang/String;Lio/sentry/android/replay/u;)V

    return-void
.end method
