.class public final synthetic Lio/sentry/flutter/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/sentry/flutter/SentryFlutterReplayRecorder;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/flutter/SentryFlutterReplayRecorder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/flutter/f;->a:Lio/sentry/flutter/SentryFlutterReplayRecorder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/flutter/f;->a:Lio/sentry/flutter/SentryFlutterReplayRecorder;

    invoke-static {v0}, Lio/sentry/flutter/SentryFlutterReplayRecorder;->a(Lio/sentry/flutter/SentryFlutterReplayRecorder;)V

    return-void
.end method
