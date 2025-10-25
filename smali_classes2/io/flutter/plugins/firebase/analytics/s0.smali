.class public final synthetic Lio/flutter/plugins/firebase/analytics/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lm6/l;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Ljava/lang/String;Ljava/lang/String;Lm6/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/firebase/analytics/s0;->a:Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;

    iput-object p2, p0, Lio/flutter/plugins/firebase/analytics/s0;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/flutter/plugins/firebase/analytics/s0;->c:Ljava/lang/String;

    iput-object p4, p0, Lio/flutter/plugins/firebase/analytics/s0;->d:Lm6/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/firebase/analytics/s0;->a:Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;

    iget-object v1, p0, Lio/flutter/plugins/firebase/analytics/s0;->b:Ljava/lang/String;

    iget-object v2, p0, Lio/flutter/plugins/firebase/analytics/s0;->c:Ljava/lang/String;

    iget-object v3, p0, Lio/flutter/plugins/firebase/analytics/s0;->d:Lm6/l;

    invoke-static {v0, v1, v2, v3}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->d(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;Ljava/lang/String;Ljava/lang/String;Lm6/l;)V

    return-void
.end method
