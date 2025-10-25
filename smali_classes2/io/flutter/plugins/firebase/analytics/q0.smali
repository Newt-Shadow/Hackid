.class public final synthetic Lio/flutter/plugins/firebase/analytics/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm6/f;


# instance fields
.field public final synthetic a:Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;

.field public final synthetic b:Lid/l;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/firebase/analytics/q0;->a:Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;

    iput-object p2, p0, Lio/flutter/plugins/firebase/analytics/q0;->b:Lid/l;

    return-void
.end method


# virtual methods
.method public final onComplete(Lm6/Task;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/firebase/analytics/q0;->a:Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;

    iget-object v1, p0, Lio/flutter/plugins/firebase/analytics/q0;->b:Lid/l;

    invoke-static {v0, v1, p1}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->j(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Lid/l;Lm6/Task;)V

    return-void
.end method
