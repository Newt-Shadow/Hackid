.class public final synthetic Lio/flutter/plugins/firebase/analytics/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;

.field public final synthetic b:J

.field public final synthetic c:Lm6/l;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;JLm6/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/firebase/analytics/y;->a:Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;

    iput-wide p2, p0, Lio/flutter/plugins/firebase/analytics/y;->b:J

    iput-object p4, p0, Lio/flutter/plugins/firebase/analytics/y;->c:Lm6/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/firebase/analytics/y;->a:Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;

    iget-wide v1, p0, Lio/flutter/plugins/firebase/analytics/y;->b:J

    iget-object v3, p0, Lio/flutter/plugins/firebase/analytics/y;->c:Lm6/l;

    invoke-static {v0, v1, v2, v3}, Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;->u(Lio/flutter/plugins/firebase/analytics/FlutterFirebaseAnalyticsPlugin;JLm6/l;)V

    return-void
.end method
