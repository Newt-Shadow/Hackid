.class public final synthetic Lio/flutter/plugins/firebase/crashlytics/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm6/f;


# instance fields
.field public final synthetic a:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/firebase/crashlytics/m;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    return-void
.end method


# virtual methods
.method public final onComplete(Lm6/Task;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/firebase/crashlytics/m;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-static {v0, p1}, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;->d(Lio/flutter/plugin/common/MethodChannel$Result;Lm6/Task;)V

    return-void
.end method
