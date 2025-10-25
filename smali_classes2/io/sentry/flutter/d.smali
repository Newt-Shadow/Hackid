.class public final synthetic Lio/sentry/flutter/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/e3;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/flutter/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/sentry/flutter/d;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/u0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/flutter/d;->a:Ljava/lang/String;

    iget-object v1, p0, Lio/sentry/flutter/d;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-static {v0, v1, p1}, Lio/sentry/flutter/SentryFlutterPlugin;->b(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Lio/sentry/u0;)V

    return-void
.end method
