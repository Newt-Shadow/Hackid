.class public final synthetic Lio/flutter/plugins/firebase/analytics/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lm6/l;

.field public final synthetic b:Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;


# direct methods
.method public synthetic constructor <init>(Lm6/l;Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/firebase/analytics/j0;->a:Lm6/l;

    iput-object p2, p0, Lio/flutter/plugins/firebase/analytics/j0;->b:Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/firebase/analytics/j0;->a:Lm6/l;

    iget-object v1, p0, Lio/flutter/plugins/firebase/analytics/j0;->b:Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;

    invoke-static {v0, v1}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->t(Lm6/l;Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;)V

    return-void
.end method
