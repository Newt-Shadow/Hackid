.class public final synthetic Lio/flutter/plugins/firebase/analytics/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lm6/l;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Ljava/util/Map;Lm6/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/firebase/analytics/m0;->a:Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;

    iput-object p2, p0, Lio/flutter/plugins/firebase/analytics/m0;->b:Ljava/util/Map;

    iput-object p3, p0, Lio/flutter/plugins/firebase/analytics/m0;->c:Lm6/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/firebase/analytics/m0;->a:Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;

    iget-object v1, p0, Lio/flutter/plugins/firebase/analytics/m0;->b:Ljava/util/Map;

    iget-object v2, p0, Lio/flutter/plugins/firebase/analytics/m0;->c:Lm6/l;

    invoke-static {v0, v1, v2}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->g(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Ljava/util/Map;Lm6/l;)V

    return-void
.end method
